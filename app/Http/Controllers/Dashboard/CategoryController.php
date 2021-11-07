<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\City;
use App\Models\Form;
use App\Models\Image;
use App\Models\Open_graph;
use App\Models\Page;
use App\Models\Category;
use App\Models\Product;
use App\Models\Video;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($category_id=$request->route('id')){
            $categories=Category::with('category_en')->where('parent_category_id',$category_id)->get();
            return view('dashboard.category.index', compact('categories'));
        }else{
            $categories = Category::with('category_en', 'createdBy', 'image')->where('parent_category_id',null)->get();
            return view('dashboard.category.index', compact('categories'));
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        /*if($category_id=$request->route('id')){
            $category=Category::with('category_en')->where('id',$category_id)->first();
        }*/
        $parent_category=$request->route('id')?Category::with('category_en','category_ar')->where('id',$request->route('id'))->first():'';
        $cities = City::with('city_en')->where('parent_city_id',null)->get();
        return view('dashboard.category.create',compact('parent_category','cities'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //$parent_category=$request->route('id')?Category::where('id',$request->route('id'))->first():'';
        //dd($parent_category);
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            //'slug_en'           => 'bail|required|max:1000',
            'url'               => 'bail|unique:category|max:190',
            'title_ar'          => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            //'slug_ar'           => 'bail|required|max:1000',
            'image_id'          => 'bail|required|mimes:jpeg,jpg,png,gif',
            'icon'              => 'bail|required|mimes:jpeg,jpg,png,gif',
            'img_alt'           => 'required',
            'icon_alt'          => 'required',
        ], [], [
            'title_en'          => ' Title in English',
            'description_en'    => ' Description in English',
            //'slug_en'           => ' Slug in English',
            'title_ar'          => ' Title in Arabic',
            'description_ar'    => ' Description in Arabic',
            //'slug_ar'           => ' Slug in Arabic',
            'image_id'          => ' Image',
            'img_alt'           => ' Image Alt Text',
            'icon_alt'          => ' Icon Alt Text',
        ]);


        //Upload Slide Image
        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/category', $fileName);
            $filePath = 'dashboardImages/category/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['img_alt']]);
            $input['image_id'] = $image->id;
        }

        //Upload Slide Image
        if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/category', $fileName);
            $filePath = 'dashboardImages/category/'.$fileName;
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

        $form = new Form();
        $form->name = $input['title_en'];
        //$form->page_id = $page->id;
        $form->save();

        $category = new Category();
        $category->image_id = $input['image_id'];
        $category->icon = $input['icon'];
        //$category->video_id = $input['video_id'];
        $category->parent_category_id = $request->route('id') ? $request->route('id'):null;
        //----------- location and city_id --------------\\
       // $category->location = $request->location ? $request->location:null;
        //$category->city_id = $request->city_id ? $request->city_id :null;
        //----------- -------------- ----------- ---------\\
        $category->url = $input['url'];
        $category->page_id = $page->id;
        $category->open_graph_id = $open_graph->id;
        $category->form_id = $form->id;
        $category->created_by = $input['created_by'];
        $category->save();

        $category->category_ar()->create(['category_id' => $category->id, 'title' => $input['title_ar'], 'description' => $input['description_ar']/*, 'slug' => $input['slug_ar']*/]);
        $category->category_en()->create(['category_id' => $category->id, 'title' => $input['title_en'], 'description' => $input['description_en']/*, 'slug' => $input['slug_en']*/]);

        //-------------- added new ---------------------------
        if($uploadedFiles =$request->images){
            //return $uploadedFiles;
            $images_ids=array();
            foreach($uploadedFiles as $uploadedFile):
                $fileName=$uploadedFile->getClientOriginalName();
                $filePath='dashboardImages/category/'.$fileName;
                $uploadedFile->move('dashboardImages/category',$fileName);
                $image=Image::create(['name'=>$fileName,'path'=>$filePath,'alt'=>$request->alt]);
                array_push($images_ids,$image->id);
            endforeach;
            $category->images()->attach($images_ids);
        }

        //----------------------------- ---------------------------------- ------------------------------
        Session::flash('create', 'Category  Has Been Created Successfully');
        return redirect(adminUrl('category'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   /* public function show($id)
    {
        $category =  Category::with('image', 'category_en', 'createdBy')->find($id);
        $categories = Category::with('image', 'category_en', 'createdBy')->where('category_id', $id)->get();
        return view('dashboard.category', compact('categories', 'category'));
    }*/

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::with('image', 'category_en', 'createdBy')->find($id);
        return view('dashboard.category.edit', compact('category'));
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
        $category = Category::with('category_en', 'createdBy', 'image')->find($id);
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            //'url'               => 'bail|unique:category,url,'. $id .'|max:200',
            //'slug_en'           => 'bail|required|max:1000',
            'title_ar'          => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            //'slug_ar'           => 'bail|required|max:1000',
            'image_id'          => 'mimes:jpeg,jpg,png,gif',
            'icon'              => 'mimes:jpeg,jpg,png,gif',
            'img_alt'           => 'required',
            'icon_alt'          => 'required',
        ], [], [
            'title_en'          => ' Title in English',
            'description_en'    => ' Description in English',
            //'slug_en'           => ' Slug in English',
            'title_ar'          => ' Title in Arabic',
            'description_ar'    => ' Description in Arabic',
            //'slug_ar'           => ' Slug in Arabic',
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
            $category->image_id = $input['image_id'];
        }

        //Upload Slide Image
        if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/category', $fileName);
            $filePath = 'dashboardImages/category/'.$fileName;
            $icon = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['icon_alt']]);
            $input['icon'] = $icon->id;
            $category->icon = $input['icon'];
        }

        if (empty($input['url']))
        {
            $input['url'] = Str::slug($request->title_en).'-'.date('his');
        }
        //=================================== added new =============================
       /* if($input['video_id']){
            $service_video=$category->video_id;
            if($service_video){
                Video::where('id',$category->video_id)->update(['url'=>$input['video_id']]);
            }else{
                $video = new Video();
                $video->url = $input['video_id'];
                $video->created_by=auth()->user()->id;
                $video->save();
                $input['video_id']=$video->id;
                $category->video_id =$input['video_id'];
            }
        }*/

        //============================ ================================== ================================


        $category->url = $input['url'];
        $category->created_by = $input['created_by'];
        $category->save();

        $category->category_ar()->update(['category_id' => $category->id, 'title' => $input['title_ar'], 'description' => $input['description_ar']/*, 'slug' => $input['slug_ar']*/]);
        $category->category_en()->update(['category_id' => $category->id, 'title' => $input['title_en'], 'description' => $input['description_en']/*, 'slug' => $input['slug_en']*/]);
        $category->page()->update(['url' => $input['url'], 'name' => $input['title_en']]);
        $category->open_graph()->update(['og_title' => $input['title_en'], 'og_image' =>  $category->image_id, 'og_description' => $input['description_en'], 'og_url' => $input['url']]);
        $category->image()->update(['alt' => $input['img_alt']]);
        $category->iconImg()->update(['alt' => $input['icon_alt']]);


        //-------------- added new ---------------------------
        if($uploadedFiles =$request->images){
            //return $uploadedFiles;
            $images_ids=array();
            foreach($uploadedFiles as $uploadedFile):
                $fileName=$uploadedFile->getClientOriginalName();
                $filePath='dashboardImages/category/'.$fileName;
                $uploadedFile->move('dashboardImages/category',$fileName);
                $image=Image::create(['name'=>$fileName,'path'=>$filePath,'alt'=>$request->alt]);
                array_push($images_ids,$image->id);
            endforeach;
            $category->images()->attach($images_ids);
        }

        //----------------------------- ---------------------------------- ------------------------------
        Session::flash('update', 'Category Has Been Updated Successfully');
        return redirect(adminUrl('category'));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::with('category_en', 'category_ar')->find($id);

       if($category->childCategories->count() >= 1){
           Session::flash('exception', 'Error, Can\'t Delete Category Because It`s related to another category');
           return redirect()->back();
       }else{

            $category->page()->delete();

            $category->open_graph()->delete();

            $category->delete();
       }

        //$category->images()->detach();

        try
        {
            if ($category->image_id)
            {
                unlink(public_path() . '/' . $category->image->path);
                DB::table('image')->where('id', $category->image_id)->delete();
            }
        }
        catch (\Exception $e)
        {
            Session::flash('exception', 'Error, Can\'t Delete Slide Because The Slide is related to another table');
            return redirect()->back();
        }

        Session::flash('delete', 'Category ' . $category->id . ' Has Been Deleted Successfully');
        return redirect(adminUrl('category'));
    }

    public function showImages($id){
        $category=Category::find($id);
        return view("dashboard.category.show",compact('category'));
    }
    public function destroyCategoryImage(Request $request, $id)
    {
        $category=Category::find($id);
        $image = $request->image;
        $image_id = $request->image_id;
        $image_path = public_path("/dashboardImages/category/" . $image);
        if (\File::exists($image_path)) {
            unlink($image_path);
        } else {
        }
        //$image_id=$category->images[0]->pivot->image_id;
        //$imageData=Image::where("id",$image_id)->where("name", $image)->first();
        $imageData=Image::where("id",$image_id)->where("name", $image)->delete();
        //return $imageData;
        return back();
    }

    public function storeCategoryImage(Request $request, $id)
    {
        $category=Category::find($id);
        $request->validate([
            'service_image' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($request->product_image) {
            $image_name = time() . "_" . $request->service_image->getClientOriginalName();
            $filePath = 'dashboardImages/category/'.$image_name;
            $request->service_image->move("dashboardImages/category", $image_name);
            $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$category->category_en->title]);
            $image_id=array();
            array_push($image_id,$image->id);
            $category->images()->attach($image_id);
            return back();
        }
        //dd($request->file('product_im'));

    }

    public function storeCategoryImages(Request $request, $id)
    {
        $category=Category::find($id);
        $request->validate([
            'category_image.*' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($uploadFiles=$request->category_image) {
            $images_ids=array();
            foreach ($uploadFiles as $uploadFile){
                $image_name = time() . "_" .$uploadFile->getClientOriginalName();
                $filePath = 'dashboardImages/category/'.$image_name;
                $uploadFile->move("dashboardImages/category", $image_name);
                $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$category->category_en->title]);
                array_push($images_ids,$image->id);
            }
            $category->images()->attach($images_ids);

            return back();
        }
        //dd($request->file('product_im'));

    }

    //======================================== product part ================================================\\

    public function create_product($id){
        $category=Category::find($id);
        return view("dashboard.category.create-product",compact('category'));
    }

    public function store_product(Request $request,$id){
        $category=Category::find($id);
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            'slug_en'           => 'bail|required|max:1000',
            'url'               => 'bail|unique:product|max:190',
            'title_ar'          => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            'slug_ar'           => 'bail|required|max:1000',
            'image_id'          => 'bail|required|mimes:jpeg,jpg,png,gif',
            'icon'              => 'bail|required|mimes:jpeg,jpg,png,gif',
            'img_alt'           => 'required',
            'icon_alt'          => 'required',
            //'material_en'       => 'required',
            //'material_ar'       => 'required',
            //'price'             => 'required',
            //'size'              => 'required',
            //'origin_country_en' => 'required',
            //'origin_country_ar' => 'required',
            //'category_id'       => 'required',
        ], [], [
            'title_en'          => ' Title in English',
            'description_en'    => ' Description in English',
            'slug_en'           => ' Slug in English',
            'title_ar'          => ' Title in Arabic',
            'description_ar'    => ' Description in Arabic',
            'slug_ar'           => ' Slug in Arabic',
            'image_id'          => ' Image',
            'img_alt'           => ' Image Alt Text',
            'icon_alt'          => ' Icon Alt Text',
        ]);


        //Upload Slide Image
        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/product', $fileName);
            $filePath = 'dashboardImages/product/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['img_alt']]);
            $input['image_id'] = $image->id;
        }

        //Upload Slide Image
        if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/product', $fileName);
            $filePath = 'dashboardImages/product/'.$fileName;
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

        $form = new Form();
        $form->name = $input['title_en'];
        //$form->page_id = $page->id;
        $form->save();

        $product = new Product();
        $product->image_id = $input['image_id'];
        $product->icon = $input['icon'];
        //$product->price = $input['price'];
        //$product->size = $input['size'];
        //$product->video_id = $input['video_id'];
        $product->url = $input['url'];
        $product->category_id = /*$input['category_id'];*/ $category->id;
        $product->page_id = $page->id;
        $product->open_graph_id = $open_graph->id;
        $product->form_id = $form->id;
        $product->created_by = $input['created_by'];
        $product->save();

        $product->product_ar()->create(['product_id' => $product->id, 'title' => $input['title_ar'], 'description' => $input['description_ar'], 'slug' => $input['slug_ar'],
           /* 'material'=>$input['material_ar'],'origin_country'=>$input['origin_country_ar']*/]);
        $product->product_en()->create(['product_id' => $product->id, 'title' => $input['title_en'], 'description' => $input['description_en'], 'slug' => $input['slug_en'],
           /* 'material'=>$input['material_en'],'origin_country'=>$input['origin_country_en']*/]);

        //-------------- added new ---------------------------
        if($uploadedFiles =$request->images){
            //return $uploadedFiles;
            $images_ids=array();
            foreach($uploadedFiles as $uploadedFile):
                $fileName=$uploadedFile->getClientOriginalName();
                $filePath='dashboardImages/product/'.$fileName;
                $uploadedFile->move('dashboardImages/product',$fileName);
                $image=Image::create(['name'=>$fileName,'path'=>$filePath,'alt'=>$request->alt]);
                array_push($images_ids,$image->id);
            endforeach;
            $product->images()->attach($images_ids);
        }

        //----------------------------- ---------------------------------- ------------------------------
        Session::flash('create', 'Product  Has Been Created Successfully');
        //return redirect(adminUrl('product'));
        return back();
    }

    public function show_product($id){
        $category=Category::find($id);

        $products=$category->products()->get();

        return view("dashboard.category.show-products",compact('products'));
    }
}
