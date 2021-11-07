<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Category;
use App\Models\City;
use App\Models\Form;
use App\Models\Image;
use App\Models\Open_graph;
use App\Models\Page;
use App\Models\Hotel;
use App\Models\Video;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class HotelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return\Illuminate\Http\Response
     */
    public function index()
    {
        $hotels = Hotel::with('hotel_en', 'createdBy', 'image')->get();
        return view('dashboard.hotel.index', compact('hotels'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return\Illuminate\Http\Response
     */
    public function create()
    {
        $cities = City::with('city_en','createdBy')->where("parent_city_id",null)->get();
        $main_categories = Category::with('category_ar','category_en','image')->where('parent_category_id',null)->get();

        return view('dashboard.hotel.create',compact('main_categories','cities'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param\Illuminate\Http\Request  $request
     * @return\Illuminate\Http\Response
     */
    public function get_subCategory(Request $request){
        $category_id=$request->category_id;
        //return $category_id;
        $request_name=$request->send_category;
        //echo  Input::get('category_id');;
        if($category_id !=null){

            $sub_categories= Category::with('image','parentCategory','category_en')->where('parent_category_id',$category_id)->get();
            if($sub_categories->count() > 0){
                return $sub_categories;
            }else{
                $category= Category::with('image','category_en')->where('id',$category_id)->first();
                return $category;
            }
        }
    }
    public function store(Request $request)
    {
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'title_ar'          => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            'description_ar'    => 'bail|required',
            'slug_en'           => 'bail|required|max:1000',
            'slug_ar'           => 'bail|required|max:1000',
            'url'               => 'bail|unique:hotel|max:190',
            'image_id'          => 'bail|required|mimes:jpeg,jpg,png,gif',
            //'icon'              => 'bail|required|mimes:jpeg,jpg,png,gif',
            'img_alt'           => 'required',
            //'icon_alt'          => 'required',
            'price'             => 'required',
            'details_en' => 'required',
            'details_ar' => 'required',
            //'rate' => 'max:5|min:1',
            'sub_category_id'   => 'required|numeric',
            'sub_city_id'       => 'required|numeric',
            'location'          => 'required',
        ], [], [
            'title_en'          => ' Title in English',
            'description_en'    => ' Description in English',
            //'slug_en'           => ' Slug in English',
            'title_ar'          => ' Title in Arabic',
            'description_ar'    => ' Description in Arabic',
            //'slug_ar'           => ' Slug in Arabic',
            'image_id'          => ' Image',
            'img_alt'           => ' Image Alt Text',
            //'icon_alt'          => ' Icon Alt Text',
            'sub_category_id'   => 'Sub Journey',
            'sub_city_id'       => 'City',
        ]);


        //Upload Slide Image
        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/hotel', $fileName);
            $filePath = 'dashboardImages/hotel/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['img_alt']]);
            $input['image_id'] = $image->id;
        }

        //Upload Slide Image
        if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/hotel', $fileName);
            $filePath = 'dashboardImages/hotel/'.$fileName;
            $icon = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['icon_alt']]);
            $input['icon'] = $icon->id;
        }

        if (empty($input['url']))
        {
            $input['url'] = Str::slug($request->title_en).'-'.date('his');
        }

       /* if ($input['video_id'])
        {
            $video = new Video();
            $video->url = $input['video_id'];
            $video->created_by=auth()->user()->id;
            $video->save();
            $input['video_id']=$video->id;
        }*/

        $open_graph = new Open_graph();
        $open_graph->og_title = $input['title_en'];
        $open_graph->og_image = $input['image_id'];
        $open_graph->og_description = $input['description_en'];
        $open_graph->og_url =  $input['url'];
        $open_graph->save();

        $page = new Page();
        $page->url = $input['url'];
        $page->name = $input['title_en'];
        $page->open_graph_id = $open_graph->id;
        $page->save();


        $hotel = new Hotel();
        $hotel->image_id = $input['image_id'];
        //$hotel->icon = $input['icon'];
        $hotel->price = $input['price'];
        $hotel->city_id = $request->sub_city_id;
        $hotel->location = $request->location;
        //$hotel->rate =$input['rate'];
        //$hotel->video_id = $input['video_id'];
        $hotel->url = $input['url'];
        $hotel->page_id = $page->id;
        $hotel->open_graph_id = $open_graph->id;

        $hotel->is_offer = $request->is_offer ? $request->is_offer:null;

        $hotel->created_by = $input['created_by'];
        $hotel->category_id = $request->sub_category_id ? $request->sub_category_id : null;
        $hotel->save();

        $hotel->hotel_ar()->create(['hotel_id' => $hotel->id, 'title' => $input['title_ar'], 'description' => $input['description_ar']
            , 'slug' => $input['slug_ar'],'details'=> $input['details_ar']]);
        $hotel->hotel_en()->create(['hotel_id' => $hotel->id, 'title' => $input['title_en'], 'description' => $input['description_en'],
            'slug' => $input['slug_en'],'details'=> $input['details_en']]);

        //-------------- added new ---------------------------
        if($uploadedFiles =$request->images){
            //return $uploadedFiles;
            $images_ids=array();
            foreach($uploadedFiles as $uploadedFile):
                $fileName=$uploadedFile->getClientOriginalName();
                $filePath='dashboardImages/hotel/'.$fileName;
                $uploadedFile->move('dashboardImages/hotel',$fileName);
                $image=Image::create(['name'=>$fileName,'path'=>$filePath,'alt'=>$request->alt]);
                array_push($images_ids,$image->id);
            endforeach;
            $hotel->images()->attach($images_ids);
        }

        //----------------------------- ---------------------------------- ------------------------------
        Session::flash('create', 'Hotel  Has Been Created Successfully');
        return redirect(adminUrl('hotel'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   /* public function show($id)
    {
        $category =  Hotel::with('image', 'hotel_en', 'createdBy')->find($id);
        $hotels = Hotel::with('image', 'hotel_en', 'createdBy')->where('category_id', $id)->get();
        return view('dashboard.hotel', compact('hotels', 'category'));
    }*/

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $hotel = Hotel::with('image', 'hotel_en', 'createdBy','category')->find($id);
       // dd($hotel->city->parentCity);
        $main_categories = Category::with('category_ar','category_en','image')->where('parent_category_id',null)->get();
        $sub_categories = Category::with('category_ar','category_en','image')->where('parent_category_id','!=',null)->get();
        $cities = City::with('city_en','createdBy')->where("parent_city_id",null)->get();
        $sub_cities = City::with('city_en','createdBy')->where('parent_city_id','!=',null)->get();
        return view('dashboard.hotel.edit', compact('hotel','main_categories','sub_categories','cities','sub_cities'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();
        $hotel = Hotel::with('hotel_en', 'createdBy', 'image')->find($id);
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'title_ar'          => 'bail|required|max:200',
            //'url'               => 'bail|unique:hotel,url,'. $id .'|max:200',
            'slug_en'           => 'bail|required|max:1000',
            'slug_ar'           => 'bail|required|max:1000',
            'description_en'    => 'bail|required',
            'description_ar'    => 'bail|required',
            'details_en' => 'required',
            'details_ar' => 'required',
            'image_id'          => 'mimes:jpeg,jpg,png,gif',
            //'icon'              => 'mimes:jpeg,jpg,png,gif',
            'img_alt'           => 'required',
            //'icon_alt'        => 'required',
            'price'             => '',
            'rate'              => 'max:5|min:1',
            'sub_city_id'       => 'required|numeric',
            'location'          => 'required',

        ], [], [
            'title_en'          => ' Name in English',
            'title_ar'          => ' Name in Arabic',
            'description_en'    => ' Description in English',
            'description_ar'    => ' Description in Arabic',
            'slug_en'           => ' Slug in English',
            'slug_ar'           => ' Slug in Arabic',
            'details_en'        => ' Details in English',
            'details_ar'        => ' Details in Arabic',
            'image_id'          => ' Image',
            'img_alt'           => ' Image Alt Text',
            'icon_alt'          => ' Icon Alt Text',
        ]);

        //Upload Slide Image
        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/slider', $fileName);
            $filePath = 'dashboardImages/slider/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['img_alt']]);
            $input['image_id'] = $image->id;
            $hotel->image_id = $input['image_id'];
        }

        //Upload Slide Image
        /*if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/hotel', $fileName);
            $filePath = 'dashboardImages/hotel/'.$fileName;
            $icon = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['icon_alt']]);
            $input['icon'] = $icon->id;
            $hotel->icon = $input['icon'];
        }*/

        if (empty($input['url']))
        {
            $input['url'] = Str::slug($request->title_en).'-'.date('his');
        }
        //=================================== added new =============================
       /* if($input['video_id']){
            $hotel_video=$hotel->video_id;
            if($service_video){
                Video::where('id',$hotel->video_id)->update(['url'=>$input['video_id']]);
            }else{
                $video = new Video();
                $video->url = $input['video_id'];
                $video->created_by=auth()->user()->id;
                $video->save();
                $input['video_id']=$video->id;
                $hotel->video_id =$input['video_id'];
            }
        }*/

        //============================ ================================== ================================

        $hotel->category_id= $request->sub_category_id ? $request->sub_category_id : $hotel->category_id;
        $hotel->url = $input['url'];
        $hotel->price = $input['price'];
        $hotel->city_id = $request->sub_city_id;
        $hotel->location = $request->location;

        $hotel->is_offer = $request->is_offer ? $request->is_offer:null;
        //$hotel->rate = $input['rate'];
        $hotel->created_by = $input['created_by'];
        $hotel->save();

        $hotel->hotel_ar()->update(['hotel_id' => $hotel->id, 'title' => $input['title_ar'], 'description' => $input['description_ar'],
            'slug' => $input['slug_ar'],'details'=> $input['details_ar'],]);
        $hotel->hotel_en()->update(['hotel_id' => $hotel->id, 'title' => $input['title_en'], 'description' => $input['description_en'],
            'slug' => $input['slug_en'],'details'=> $input['details_en'],]);
        $hotel->page()->update(['url' => $input['url'], 'name' => $input['title_en']]);
        $hotel->open_graph()->update(['og_title' => $input['title_en'], 'og_image' =>  $hotel->image_id, 'og_description' => $input['description_en'], 'og_url' => $input['url']]);
        $hotel->image()->update(['alt' => $input['img_alt']]);
        //$hotel->iconImg()->update(['alt' => $input['icon_alt']]);


        //-------------- added new ---------------------------
        if($uploadedFiles =$request->images){
            //return $uploadedFiles;
            $images_ids=array();
            foreach($uploadedFiles as $uploadedFile):
                $fileName=$uploadedFile->getClientOriginalName();
                $filePath='dashboardImages/hotel/'.$fileName;
                $uploadedFile->move('dashboardImages/hotel',$fileName);
                $image=Image::create(['name'=>$fileName,'path'=>$filePath,'alt'=>$request->alt]);
                array_push($images_ids,$image->id);
            endforeach;
            $hotel->images()->attach($images_ids);
        }

        //----------------------------- ---------------------------------- ------------------------------
        Session::flash('update', 'Hotel Has Been Updated Successfully');
        //return redirect(adminUrl('hotel'));
        return back();

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $hotel = Hotel::with('hotel_en', 'hotel_ar')->find($id);

        $hotel->delete();

        $hotel->page()->delete();

        $hotel->open_graph()->delete();

        $hotel->images()->detach();

        try
        {
            if ($hotel->image_id)
            {
                unlink(public_path() . '/' . $hotel->image->path);
                DB::table('image')->where('id', $hotel->image_id)->delete();
            }
        }
        catch (\Exception $e)
        {
            Session::flash('exception', 'Error, Can\'t Delete Slide Because The Slide is related to another table');
            return redirect()->back();
        }

        Session::flash('delete', 'Hotel ' . $hotel->id . ' Has Been Deleted Successfully');
        //return redirect(adminUrl('hotel'));
        return back();
    }

    public function showImages($id){
        $hotel=Hotel::find($id);
        return view("dashboard.hotel.show",compact('hotel'));
    }
    public function destroyHotelImage(Request $request, $id)
    {
        $hotel=Hotel::find($id);
        $image = $request->image;
        $image_id = $request->image_id;
        $image_path = public_path("/dashboardImages/hotel/" . $image);
        if (\File::exists($image_path)) {
            unlink($image_path);
        } else {
        }
        //$image_id=$hotel->images[0]->pivot->image_id;
        //$imageData=Image::where("id",$image_id)->where("name", $image)->first();
        $imageData=Image::where("id",$image_id)->where("name", $image)->delete();
        //return $imageData;
        return back();
    }

    public function storeHotelImage(Request $request, $id)
    {
        $hotel=Hotel::find($id);
        $request->validate([
            'service_image' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($request->hotel_image) {
            $image_name = time() . "_" . $request->service_image->getClientOriginalName();
            $filePath = 'dashboardImages/hotel/'.$image_name;
            $request->hotel_image->move("dashboardImages/hotel", $image_name);
            $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$hotel->hotel_en->title]);
            $image_id=array();
            array_push($image_id,$image->id);
            $hotel->images()->attach($image_id);
            return back();
        }
        //dd($request->file('product_im'));

    }

    public function storeHotelImages(Request $request, $id)
    {
        $hotel=Hotel::find($id);
        $request->validate([
            'hotel_image.*' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($uploadFiles=$request->hotel_image) {
            $images_ids=array();
            foreach ($uploadFiles as $uploadFile){
                $image_name = time() . "_" .$uploadFile->getClientOriginalName();
                $filePath = 'dashboardImages/hotel/'.$image_name;
                $uploadFile->move("dashboardImages/hotel", $image_name);
                $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$hotel->hotel_en->title]);
                array_push($images_ids,$image->id);
            }
            $hotel->images()->attach($images_ids);

            return back();
        }
        //dd($request->file('product_im'));

    }
}
