<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Form;
use App\Models\Image;
use App\Models\Open_graph;
use App\Models\Page;
use App\Models\Service;
use App\Models\Video;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $type = \request('type');
        /*if ($type == 'main')
        {

        }
        else if ($type == 'sub')
        {
            $services = Service::with('service_en', 'createdBy', 'image')->where('parent_service_id', '!=', null)->get();
            return view('dashboard.service.subService', compact('services'));
        }*/
        if ($type == 'products')
        {
            $services = Service::with('service_en', 'createdBy', 'image')->where('parent_service_id', null)
                ->where("type",'products')->get();
            return view('dashboard.service.index', compact('services'));
        }

        $services = Service::with('service_en', 'createdBy', 'image')->where('parent_service_id', null)
            ->where("type",null)->get();
        return view('dashboard.service.index', compact('services'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.service.create');
    }

    public function storeSub(Request $request)
    {

        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'service_id'        => 'bail|required|int|max:200',
            'video_url'         => 'bail|max:300',
            'url'               => 'bail|unique:service|max:190',
            'description_en'    => 'bail|required',
            'slug_en'           => 'bail|required|max:1000',
            'title_ar'          => 'bail|required|max:1000',
            'description_ar'    => 'bail|required',
            'slug_ar'           => 'bail|required|max:300',
            'image_id'          => 'bail|required|mimes:jpeg,jpg,png,gif',
            'icon'              => 'bail|required|mimes:jpeg,jpg,png,gif',
            'img_alt'           => 'required',
            'icon_alt'          => 'required',
        ], [], [
            'title_en'          => ' Title in English',
            'description_en'    => ' Description in English',
            'slug_en'           => ' Slug in English',
            'title_ar'          => ' Title in Arabic',
            'description_ar'    => ' Description in Arabic',
            'slug_ar'           => ' Slug in Arabic',
            'image_id'          => ' Image',
            'video_url'         => ' Video Url',
            'img_alt'           => ' Image Alt Text',
            'icon_alt'          => ' Icon Alt Text',
        ]);


        //Upload Slide Image
        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/service', $fileName);
            $filePath = 'dashboardImages/service/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['img_alt']]);
            $input['image_id'] = $image->id;
        }

        //Upload Slide Image
        if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/service', $fileName);
            $filePath = 'dashboardImages/service/'.$fileName;
            $icon = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['icon_alt']]);
            $input['icon'] = $icon->id;
        }

        if (empty($request->url))
        {
            //$request->url =  Str::slug($request->title_en).sha1(date("s"));
            $request->url = Str::slug($request->title_en).'-'.date('his');
        }

        $open_graph = new Open_graph();
        $open_graph->og_title = $input['title_en'];
        $open_graph->og_image = $input['image_id'];
        $open_graph->og_description = $input['description_en'];
        $open_graph->og_url =  $input['url'];
        $open_graph->save();

        $page = new Page();
        $page->url = $request->url;
        $page->name = $input['title_en'];
        $page->open_graph_id = $open_graph->id;
        $page->save();

        $form = new Form();
        $form->name = $input['title_en'];
        //$form->page_id = $page->id;
        $form->save();


        $service = new Service();
        $service->image_id = $input['image_id'];
        $service->icon = $input['icon'];
        $service->created_by = $input['created_by'];
        $service->url = $request->url;
        //$service->video_id = $video->id;
        $service->page_id = $page->id;
        $service->open_graph_id = $open_graph->id;
        $service->form_id = $form->id;
        $service->parent_service_id = $input['service_id'];
        $service->save();

        $service->service_ar()->create(['service_id' => $service->id, 'title' => $input['title_ar'], 'description' => $input['description_ar'], 'slug' => $input['slug_ar']]);
        $service->service_en()->create(['service_id' => $service->id, 'title' => $input['title_en'], 'description' => $input['description_en'], 'slug' => $input['slug_en']]);

        //$service->video()->create(['url' => $input['url']]);

        Session::flash('create', 'Service  Has Been Created Successfully');
        return redirect(adminUrl('service/'.$input['service_id']));
    }


    public function createSubService($id)
    {
        $service = Service::with('image', 'service_en', 'createdBy')->find($id);
        return view('dashboard.service.createSub', compact('service'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $type = request('type');

        $input = $request->all();
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            'slug_en'           => 'bail|required|max:1000',
            'url'               => 'bail|unique:service|max:190',
            'title_ar'          => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            'slug_ar'           => 'bail|required|max:1000',
            'image_id'          => 'bail|required|mimes:jpeg,jpg,png,gif',
            'icon'              => 'bail|required|mimes:jpeg,jpg,png,gif',
            'img_alt'           => 'required',
            'icon_alt'          => 'required',
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
            $uploadedFile->move('dashboardImages/service', $fileName);
            $filePath = 'dashboardImages/service/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['img_alt']]);
            $input['image_id'] = $image->id;
        }

        //Upload Slide Image
        if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/service', $fileName);
            $filePath = 'dashboardImages/service/'.$fileName;
            $icon = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['icon_alt']]);
            $input['icon'] = $icon->id;
        }

        if (empty($input['url']))
        {
            //$input['url'] = Str::slug($request->title_en).sha1(date("s"));
            //$input['url'] = Str::slug($request->title_en,'-');
            $input['url'] = Str::slug($request->title_en).'-'.date('his');
        }

        if ($request->video_id)
        {
            $video = new Video();
            $video->url = $request->video_id;
            $video->created_by=auth()->user()->id;
            $video->save();
            $request->video_id = $video->id;
        }

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

        $service = new Service();
        $service->type = $type;
        $service->image_id = $input['image_id'];
        $service->icon = $input['icon'];
        $service->video_id = $request->video_id;
        $service->url = $input['url'];
        $service->page_id = $page->id;
        $service->open_graph_id = $open_graph->id;
        $service->form_id = $form->id;
        $service->created_by = $input['created_by'];
        $service->save();

        $service->service_ar()->create(['service_id' => $service->id, 'title' => $input['title_ar'], 'description' => $input['description_ar'], 'slug' => $input['slug_ar']]);
        $service->service_en()->create(['service_id' => $service->id, 'title' => $input['title_en'], 'description' => $input['description_en'], 'slug' => $input['slug_en']]);

        //-------------- added new ---------------------------
        if($uploadedFiles =$request->images){
            //return $uploadedFiles;
            $images_ids=array();
            foreach($uploadedFiles as $uploadedFile):
                $fileName=$uploadedFile->getClientOriginalName();
                $filePath='dashboardImages/service/'.$fileName;
                $uploadedFile->move('dashboardImages/service',$fileName);
                $image=Image::create(['name'=>$fileName,'path'=>$filePath,'alt'=>$request->alt]);
                array_push($images_ids,$image->id);
            endforeach;
            $service->images()->attach($images_ids);
        }

        //----------------------------- ---------------------------------- ------------------------------
        Session::flash('create', 'Service  Has Been Created Successfully');
        return redirect(adminUrl('service?type='.$service->type));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $mainService =  Service::with('image', 'service_en', 'createdBy')->find($id);
        $services = Service::with('image', 'service_en', 'createdBy')->where('parent_service_id', $id)->get();
        return view('dashboard.service.subService', compact('services', 'mainService'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $service = Service::with('image', 'service_en', 'createdBy')->find($id);

        return view('dashboard.service.edit', compact('service'));
    }


    public function devicePage()
    {
        $type = \request('type');
        if($type == 'cad_cam')
        {
            $property = 'جهاز السيريك';
            $service = Service::with('service_en', 'createdBy', 'image')->where('type', $type)->first();
        }
        elseif ($type == 'digital_x_rays')
        {
            $property = 'جهاز الأشعة السينية';
            $service = Service::with('service_en', 'createdBy', 'image')->where('type', $type)->first();
        }
        elseif ($type == 'vita_easy_shade_v')
        {
            $property = 'جهاز تحديد اللون';
            $service = Service::with('service_en', 'createdBy', 'image')->where('type', $type)->first();
        }
        elseif ($type == 'panoramic_x_rays')
        {
            $property = 'جهاز البانوراما';
            $service = Service::with('service_en', 'createdBy', 'image')->where('type', $type)->first();
        }
        return view('dashboard.service.device-page', compact('service','property'));
    }

    public function updateDevicePage(Request $request, $id)
    {
        $input = $request->all();
        $service = Service::with('service_en', 'createdBy', 'image')->find($id);
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            'url'               => 'bail|unique:service,url,'. $id .'|max:200',
            'slug_en'           => 'bail',
            'title_ar'          => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            'slug_ar'           => 'bail',
            'image_id'          => 'mimes:jpeg,jpg,png,gif',
            'icon'              => 'mimes:jpeg,jpg,png,gif',
            'img_alt'           => 'required',
            'icon_alt'          => '',
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
            $uploadedFile->move('dashboardImages/service', $fileName);
            $filePath = 'dashboardImages/service/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['img_alt']]);
            $request->image_id = $image->id;
            $service->image_id = $request->image_id;
        }

        //Upload Slide Image
        if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/service', $fileName);
            $filePath = 'dashboardImages/service/'.$fileName;
            $icon = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['icon_alt']]);
            $request->icon = $icon->id;
            $service->icon = $request->icon;
        }

        if (empty($request->url))
        {
            $request->url = Str::slug($request->title_en).'-'.date('his');
        }
        //=================================== added new =============================
        /* if($input['video_id']){
             $service_video=$service->video_id;
             if($service_video){
                 Video::where('id',$service->video_id)->update(['url'=>$input['video_id']]);
             }else{
                 $video = new Video();
                 $video->url = $input['video_id'];
                 $video->created_by=auth()->user()->id;
                 $video->save();
                 $input['video_id']=$video->id;
                 $service->video_id =$input['video_id'];
             }
         }*/

        //============================ ================================== ================================


        //$service->url = $request->url;
        $service->created_by = \auth()->user()->id;
        $service->save();

        $service->service_ar()->update(['service_id' => $service->id, 'title' => $request->title_ar, 'description' => $request->description_ar, 'slug' => $request->slug_ar]);
        $service->service_en()->update(['service_id' => $service->id, 'title' => $request->title_en, 'description' => $request->description_en, 'slug' => $request->slug_en]);
        $service->page()->update(['url' => $request->url, 'name' => $request->title_en]);
        $service->open_graph()->update(['og_title' => $request->title_en, 'og_image' =>  $service->image_id, 'og_description' => $request->description_en, 'og_url' => $request->url]);
        $service->image()->update(['alt' => $request->img_alt]);
        //$service->iconImg()->update(['alt' => $request->icon_alt]);
        $service->iconImg()->update(['alt' => $request->img_alt]);


        //-------------- added new ---------------------------
        if($uploadedFiles =$request->images){
            //return $uploadedFiles;
            $images_ids=array();
            foreach($uploadedFiles as $uploadedFile):
                $fileName=$uploadedFile->getClientOriginalName();
                $filePath='dashboardImages/service/'.$fileName;
                $uploadedFile->move('dashboardImages/service',$fileName);
                $image=Image::create(['name'=>$fileName,'path'=>$filePath,'alt'=>$request->alt]);
                array_push($images_ids,$image->id);
            endforeach;
            $service->images()->attach($images_ids);
        }


        //----------------------------- ---------------------------------- ------------------------------
        Session::flash('update', 'Section Has Been Updated Successfully');
        return back();

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
        $service = Service::with('service_en', 'createdBy', 'image')->find($id);
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            'url'               => 'bail|unique:service,url,'. $id .'|max:200',
            //'slug_en'           => 'bail|required',
            'title_ar'          => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            //'slug_ar'           => 'bail|required',
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
            $uploadedFile->move('dashboardImages/service', $fileName);
            $filePath = 'dashboardImages/service/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['img_alt']]);
            $service->image_id = $image->id;
            //$service->image_id = $input['image_id'];
        }

        //Upload Slide Image
        if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/service', $fileName);
            $filePath = 'dashboardImages/service/'.$fileName;
            $icon = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['icon_alt']]);
            $input['icon'] = $icon->id;
            $service->icon = $input['icon'];
        }

        if (empty($request->url))
        {
            $request->url = Str::slug($request->title_en).'-'.date('his');
        }
        //=================================== added new =============================
        if($request->video_id)
        {
            $service_video=$service->video_id;
            if($service_video)
            {
                Video::where('id',$service->video_id)->update(['url'=>$request->video_id]);
            }
            else
            {
                $video = new Video();
                $video->url = $input['video_id'];
                $video->created_by=auth()->user()->id;
                $video->save();
                $request->video_id = $video->id;
                $service->video_id = $request->video_id;
            }
        }

        //============================ ================================== ================================
        $service->url = $request->url;
        $service->created_by = $input['created_by'];
        $service->save();

        $service->service_ar()->update(['service_id' => $service->id, 'title' => $request->title_ar, 'description' => $request->description_ar, 'slug' => $request->slug_ar]);
        $service->service_en()->update(['service_id' => $service->id, 'title' => $request->title_en, 'description' => $request->description_en, 'slug' => $request->slug_en]);
        $service->page()->update(['url' => $request->url, 'name' => $request->title_en]);
        $service->open_graph()->update(['og_title' => $request->title_en, 'og_image' =>  $service->image_id, 'og_description' => $request->description_en, 'og_url' => $request->url]);
        $service->image()->update(['alt' => $input['img_alt']]);
        $service->iconImg()->update(['alt' => $input['icon_alt']]);


        //-------------- added new ---------------------------
        if($uploadedFiles =$request->images)
        {
            //return $uploadedFiles;
            $images_ids=array();
            foreach($uploadedFiles as $uploadedFile):
                $fileName=$uploadedFile->getClientOriginalName();
                $filePath='dashboardImages/service/'.$fileName;
                $uploadedFile->move('dashboardImages/service',$fileName);
                $image=Image::create(['name'=>$fileName,'path'=>$filePath,'alt'=>$request->alt]);
                array_push($images_ids,$image->id);
            endforeach;
            $service->images()->attach($images_ids);
        }

        //dd($service->image->path);
        //----------------------------- ---------------------------------- ------------------------------
        Session::flash('update', 'Service Has Been Updated Successfully');
        //return redirect(adminUrl('service'));
        return redirect(adminUrl('service?type='.$service->type));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $service = Service::with('service_en', 'service_ar')->find($id);

        $service->delete();

        $service->page()->delete();

        $service->open_graph()->delete();

        $service->images()->detach();

        try
        {
            if ($service->image_id)
            {
                unlink(public_path() . '/' . $service->image->path);
                DB::table('image')->where('id', $service->image_id)->delete();
            }
        }
        catch (\Exception $e)
        {
            Session::flash('exception', 'Error, Can\'t Delete Slide Because The Slide is related to another table');
            return redirect()->back();
        }

        Session::flash('delete', 'Service ' . $service->id . ' Has Been Deleted Successfully');
        return redirect(adminUrl('service'));
    }

    public function showImages($id){
        $service=Service::find($id);
        return view("dashboard.service.show",compact('service'));
    }
    public function destroyServiceImage(Request $request, $id)
    {
        $service=Service::find($id);
        $image = $request->image;
        $image_id = $request->image_id;
        $image_path = public_path("/storage/uploads/service/" . $image);
        if (\File::exists($image_path))
        {
            unlink($image_path);
        }
        else
        {

        }
        //$image_id=$service->images[0]->pivot->image_id;
        //$imageData=Image::where("id",$image_id)->where("name", $image)->first();
        $imageData=Image::where("id",$image_id)->where("name", $image)->delete();
        //return $imageData;
        return back();
    }

    public function storeServiceImage(Request $request, $id)
    {
        $service=Service::find($id);
        $request->validate([
            'service_image' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($request->service_image) {
            $image_name = time() . "_" . $request->service_image->getClientOriginalName();
            $filePath = 'dashboardImages/service/'.$image_name;
            $request->service_image->move("dashboardImages/service", $image_name);
            $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$service->service_en->title]);
            $image_id=array();
            array_push($image_id,$image->id);
            $service->images()->attach($image_id);
            return back();
        }
        //dd($request->file('product_im'));

    }

    public function storeServiceImages(Request $request, $id)
    {
        $service=Service::find($id);
        $request->validate([
            'service_image.*' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($uploadFiles=$request->service_image) {
            $images_ids=array();
            foreach ($uploadFiles as $uploadFile){
                $image_name = time() . "_" .$uploadFile->getClientOriginalName();
                $filePath = 'dashboardImages/service/'.$image_name;
                $uploadFile->move("dashboardImages/service", $image_name);
                $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$service->service_en->title]);
                array_push($images_ids,$image->id);
            }
            $service->images()->attach($images_ids);

            return back();
        }
        //dd($request->file('product_im'));

    }
}
