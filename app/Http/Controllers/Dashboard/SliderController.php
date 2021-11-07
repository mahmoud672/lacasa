<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Image;
use App\Models\Slider;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $slides = Slider::with('image', 'slider_en', 'createdBy')->get();
        return view('dashboard.slider.index', compact('slides'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.slider.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'url'               => 'bail|max:200',
            'title_en'          => 'bail|required|max:200',
            //'sub_title_en'      => 'bail|required|max:200',
            //'sub_title_ar'      => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            'button_en'         => 'bail|required|max:50',
            'title_ar'          => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            'button_ar'         => 'bail|required|max:200',
            'image_id'          => 'bail|required|mimes:jpeg,jpg,png,gif',
            //'images*'           => 'bail|required|mimes:jpeg,jpg,png,gif',
            'alt'               => 'bail|required|max:200',
            //'type'              => 'bail|required',
        ], [], [
            'url'               => ' URL',
            'title_en'          => ' Title in English',
            'title_ar'          => ' Title in Arabic',
            'sub_title_en'      => ' Sub Title in English',
            'sub_title_ar'      => ' Sub Title in Arabic',
            'description_en'    => ' Description in English',
            'description_ar'    => ' Description in Arabic',
            'button_en'         => ' Button in English',
            'button_ar'         => ' Button in Arabic',
            'image_id'          => ' Image',
            'alt'               => ' Alt Text',
            //'type'              => ' Slider Type',

        ]);


        //Upload Slide Image
        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/slider', $fileName);
            $filePath = uploadedImagePath() . '/slider/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['alt']]);
            $request->image_id = $image->id;
        }

        //Add Slide in Slider Table in Main Database
        $slide = new Slider();
        $slide->image_id = $request->image_id;
        $slide->url = $input['url'];
        $slide->type = $request->type;
        $slide->created_by = $input['created_by'];
        $slide->save();

        $slide->slider_ar()->create(['slide_id' => $slide->id, 'title' => $input['title_ar'],'sub_title'=>$request->sub_title_ar,'description' => $input['description_ar'], 'button' => $input['button_ar']]);
        $slide->slider_en()->create(['slide_id' => $slide->id, 'title' => $input['title_en'],'sub_title'=>$request->sub_title_en, 'description' => $input['description_en'], 'button' => $input['button_en']]);

        if ($uploadedFiles = $request->images)
        {
            $image_ids = array();
            foreach ($uploadedFiles as $uploadedFile):
                $fileName = date("ymd-his") . $uploadedFile->getClientOriginalName();
                $uploadedFile->move('dashboardImages/slider', $fileName);
                $filePath = uploadedImagePath() . '/slider/'.$fileName;
                $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['alt']]);

                array_push($image_ids,$image->id);
           endforeach;
           $slide->images()->attach($image_ids);
        }

        Session::flash('create', 'Slide  Has Been Created Successfully');
        return redirect(adminUrl('slider'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $slide = Slider::with('image', 'slider_ar', 'slider_en')->find($id);
        return view('dashboard.slider.edit', compact('slide'));
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
        $slide = Slider::with('image', 'slider_ar', 'slider_en')->find($id);
        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'url'               => 'bail|max:200',
            'title_en'          => 'bail|required|max:200',
            //'sub_title_en'      => 'bail|required|max:200',
            //'sub_title_ar'      => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            'button_en'         => 'bail|required|max:50',
            'title_ar'          => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            'button_ar'         => 'bail|required|max:200',
            'image_id'          => 'mimes:jpeg,jpg,png,gif',
            //'images*'           => 'bail|required|mimes:jpeg,jpg,png,gif',
            'alt'               => 'bail|required|max:200',
            //'type'              => 'bail|required',
        ], [], [
            'url'               => ' URL',
            'title_en'          => ' Title in English',
            'sub_title_en'      => ' Sub Title in English',
            'sub_title_ar'      => ' Sub Title in Arabic',
            'description_en'    => ' Description in English',
            'button_en'         => ' Button in English',
            'title_ar'          => ' Title in Arabic',
            'description_ar'    => ' Description in Arabic',
            'button_ar'         => ' Button in Arabic',
            'image_id'          => ' Image',
            'alt'               => 'Alt Text',
            //'type'              => 'Slider Type',
        ]);


        //Upload Slide Image
        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/slider', $fileName);
            $filePath = uploadedImagePath() . '/slider/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $request->alt]);
            $slide->image_id =  $image->id;
        }

        //Update Slide in Slider Table in Main Database
        $slide->url = $input['url'];
        $slide->type = $request->type;
        $slide->created_by = $input['created_by'];
        $slide->save();

        $slide->slider_ar()->update(['slide_id' => $slide->id, 'title' => $input['title_ar'],'sub_title'=>$request->sub_title_ar,'description' => $input['description_ar'], 'button' => $input['button_ar']]);
        $slide->slider_en()->update(['slide_id' => $slide->id, 'title' => $input['title_en'],'sub_title'=>$request->sub_title_en,'description' => $input['description_en'], 'button' => $input['button_en']]);
        $slide->image()->update(['alt' => $input['alt']]);

        if ($uploadedFiles = $request->images)
        {
            $image_ids = array();
            foreach ($uploadedFiles as $uploadedFile):
                $fileName = date("ymd-his") . $uploadedFile->getClientOriginalName();
                $uploadedFile->move('dashboardImages/slider', $fileName);
                $filePath = uploadedImagePath() . '/slider/'.$fileName;
                $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['alt']]);
                array_push($image_ids,$image->id);
            endforeach;
            $slide->images()->attach($image_ids);
        }

        Session::flash('create', 'Slide  Has Been Updated Successfully');
        return redirect(adminUrl('slider'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $slide = Slider::find($id);

        $slide->delete();

        try
        {
            if ($slide->image_id)
            {
                unlink(public_path() . '/' . $slide->image->path);
                DB::table('image')->where('id', $slide->image_id)->delete();
            }
        }
        catch (\Exception $e)
        {
            Session::flash('exception', 'Error, Can\'t Delete Slide Because The Slide is related to another table');
            return redirect()->back();
        }

        Session::flash('delete', 'Slide ' . $slide->id . ' Has Been Deleted Successfully');
        return redirect(adminUrl('slider'));
    }


    public function showImages($id){
        $slider=Slider::find($id);
        return view("dashboard.slider.show",compact('slider'));
    }
    public function destroyImage(Request $request, $id)
    {
        $slider = Slider::find($id);
        $image = $request->image;
        $image_id = $request->image_id;
        $image_path = public_path("/dashboardImages/sldier/" . $image);
        if (\File::exists($image_path)) {
            unlink($image_path);
        } else {
        }
        //$image_id=$service->images[0]->pivot->image_id;
        //$imageData=Image::where("id",$image_id)->where("name", $image)->first();
        $imageData=Image::where("id",$image_id)->where("name", $image)->delete();
        //return $imageData;
        return back();
    }

    public function storeImage(Request $request, $id)
    {
        $slider=Slider::find($id);
        $request->validate([
            'image' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($request->image) {
            $image_name = date('ymd-his') . "_" . $request->image->getClientOriginalName();
            $filePath = 'dashboardImages/slider/'.$image_name;
            $request->image->move("dashboardImages/slider", $image_name);
            $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$slider->slider_en->title]);
            $image_id=array();
            array_push($image_id,$image->id);
            $slider->images()->attach($image_id);
            return back();
        }
        //dd($request->file('product_im'));

    }

    public function storeImages(Request $request, $id)
    {
        $slider = Slider::find($id);
        $request->validate([
            'image.*' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($uploadFiles=$request->image) {
            $images_ids=array();
            foreach ($uploadFiles as $uploadFile){
                $image_name = time() . "_" .$uploadFile->getClientOriginalName();
                $filePath = 'dashboardImages/slider/'.$image_name;
                $uploadFile->move("dashboardImages/slider", $image_name);
                $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$slider->slider_en->title]);
                array_push($images_ids,$image->id);
            }
            $slider->images()->attach($images_ids);

            return back();
        }
        //dd($request->file('product_im'));

    }

}
