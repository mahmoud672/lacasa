<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Category;
use App\Models\Form;
use App\Models\Image;
use App\Models\Open_graph;
use App\Models\Page;
use App\Models\Product;
use App\Models\Video;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return\Illuminate\Http\Response
     */
    public function index()
    {
        /*$type = Input::get('type');
        if ($type == 'main')
        {

        }
        else if ($type == 'sub')
        {
            $products = Product::with('product_en', 'createdBy', 'image')->where('parent_service_id', '!=', null)->get();
            return view('dashboard.product.subService', compact('products'));
        }*/
        //$products = Product::with('product_en', 'createdBy', 'image')->where('category_id', null)->get();
        $products = Product::with('product_en', 'createdBy', 'image')->get();
        return view('dashboard.product.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return\Illuminate\Http\Response
     */
    public function create()
    {
        $main_categories = Category::with('category_ar','category_en','image')->where('parent_category_id',null)->get();

        return view('dashboard.product.create',compact('main_categories'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param\Illuminate\Http\Request  $request
     * @return\Illuminate\Http\Response
     */
    public function get_subCategory(Request $request){
        $category_id=$request->category_id;
        $request=$request->send_category;
        if($request && $category_id !=null){
            $sub_categories= Category::with('image','parentCategory','products','category_en')->where('parent_category_id',$category_id)->get();
            return $sub_categories;
        }

    }
    public function store(Request $request)
    {
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
            //'sub_category_id'   => 'required|numeric',
            //'category_id'        => 'required|numeric',
            //'sub_category_id'    => 'required|numeric',
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
            //'sub_category_id'   => 'sub category',
            //'category_id'       => 'Category',
            //'sub_category_id'   => 'Sub-Category',
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

        $product = new Product();
        $product->image_id = $input['image_id'];
        $product->icon = $input['icon'];
       // $product->price = $input['price'];
        //$product->size = $input['size'];
        $product->video_id = $request->video_id;
        $product->url = $input['url'];
        $product->page_id = $page->id;
        $product->open_graph_id = $open_graph->id;
        $product->form_id = $form->id;
        $product->created_by = $input['created_by'];
        //$product->category_id = $request->category_id ? $request->category_id : null;
        $product->save();

        $product->product_ar()->create(['product_id' => $product->id, 'title' => $input['title_ar'], 'description' => $input['description_ar'], 'slug' => $input['slug_ar'],
            /*'material'=>$input['material_ar'],'origin_country'=>$input['origin_country_ar']*/]);
        $product->product_en()->create(['product_id' => $product->id, 'title' => $input['title_en'], 'description' => $input['description_en'], 'slug' => $input['slug_en'],
            /*'material'=>$input['material_en'],'origin_country'=>$input['origin_country_en']*/]);

        //-------------- added new ---------------------------
        if($uploadedFiles = $request->images){
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
        return redirect(adminUrl('product'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   /* public function show($id)
    {
        $category =  Product::with('image', 'product_en', 'createdBy')->find($id);
        $products = Product::with('image', 'product_en', 'createdBy')->where('category_id', $id)->get();
        return view('dashboard.product', compact('products', 'category'));
    }*/

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::with('image', 'product_en', 'createdBy','category')->find($id);
        $main_categories = Category::with('category_ar','category_en','image')->where('parent_category_id',null)->get();
        $sub_categories = Category::with('category_ar','category_en','image','products')->where('parent_category_id','!=',null)->get();
        return view('dashboard.product.edit', compact('product','main_categories','sub_categories'));
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
        $product = Product::with('product_en', 'createdBy', 'image')->find($id);
        $input['created_by'] = Auth::user()->id;
        $request->validate([
            'title_en'          => 'bail|required|max:200',
            'description_en'    => 'bail|required',
            //'url'               => 'bail|unique:product,url,'. $id .'|max:200',
            'slug_en'           => 'bail|required|max:1000',
            'title_ar'          => 'bail|required|max:200',
            'description_ar'    => 'bail|required',
            'slug_ar'           => 'bail|required|max:1000',
            'image_id'          => 'mimes:jpeg,jpg,png,gif',
            'icon'              => 'mimes:jpeg,jpg,png,gif',
            'img_alt'           => 'required',
            'icon_alt'          => 'required',
            //'material_en'       => '',
            //'material_ar'       => '',
            //'price'             => '',
            //'size'              => '',
            //'origin_country_en' => '',
            //'origin_country_ar' => '',
            //'sub_category_id'  => 'required'
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
            //'sub_category_id'   => ' Sub-Category',

        ]);

        //Upload Slide Image
        if ($uploadedFile = $request->file('image_id'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/slider', $fileName);
            $filePath = 'dashboardImages/slider/'.$fileName;
            $image = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['img_alt']]);
            $input['image_id'] = $image->id;
            $product->image_id = $input['image_id'];
        }

        //Upload Slide Image
        if ($uploadedFile = $request->file('icon'))
        {
            $fileName = time() . $uploadedFile->getClientOriginalName();
            $uploadedFile->move('dashboardImages/product', $fileName);
            $filePath = 'dashboardImages/product/'.$fileName;
            $icon = Image::create(['name' => $fileName, 'path' => $filePath, 'alt' => $input['icon_alt']]);
            $input['icon'] = $icon->id;
            $product->icon = $input['icon'];
        }

        if (empty($input['url']))
        {
            $input['url'] = Str::slug($request->title_en).'-'.date('his');
        }
        //=================================== added new =============================

        if($request->video_id)
        {
            $product_video = $product->video_id;
            if($product_video)
            {
                Video::where('id',$product->video_id)->update(['url'=>$request->video_id]);
            }
            else
            {
                $video = new Video();
                $video->url = $request->video_id;
                $video->created_by = auth()->user()->id;
                $video->save();
                $request->video_id = $video->id;
                $product->video_id = $request->video_id;
            }
        }

        //============================ ================================== ================================

        $product->category_id= $request->sub_category_id ? $request->sub_category_id : $product->category_id;
        $product->url = $input['url'];
        $product->created_by = $input['created_by'];
        $product->save();

        $product->product_ar()->update(['product_id' => $product->id, 'title' => $input['title_ar'], 'description' => $input['description_ar'], 'slug' => $input['slug_ar'],
            /*'material'=>$input['material_ar'],'origin_country'=>$input['origin_country_ar']*/]);
        $product->product_en()->update(['product_id' => $product->id, 'title' => $input['title_en'], 'description' => $input['description_en'], 'slug' => $input['slug_en'],
            /*'material'=>$input['material_en'],'origin_country'=>$input['origin_country_en']*/]);
        $product->page()->update(['url' => $input['url'], 'name' => $input['title_en']]);
        $product->open_graph()->update(['og_title' => $input['title_en'], 'og_image' =>  $product->image_id, 'og_description' => $input['description_en'], 'og_url' => $input['url']]);
        $product->image()->update(['alt' => $input['img_alt']]);
        $product->iconImg()->update(['alt' => $input['icon_alt']]);


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
        Session::flash('update', 'Product Has Been Updated Successfully');
        //return redirect(adminUrl('product'));
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
        $product = Product::with('product_en', 'product_ar')->find($id);

        $product->delete();

        $product->page()->delete();

        $product->open_graph()->delete();

        $product->images()->detach();

        try
        {
            if ($product->image_id)
            {
                unlink(public_path() . '/' . $product->image->path);
                DB::table('image')->where('id', $product->image_id)->delete();
            }
        }
        catch (\Exception $e)
        {
            Session::flash('exception', 'Error, Can\'t Delete Slide Because The Slide is related to another table');
            return redirect()->back();
        }

        Session::flash('delete', 'Product ' . $product->id . ' Has Been Deleted Successfully');
        //return redirect(adminUrl('product'));
        return back();
    }

    public function showImages($id){
        $product=Product::find($id);
        return view("dashboard.product.show",compact('product'));
    }
    public function destroyProductImage(Request $request, $id)
    {
        $product=Product::find($id);
        $image = $request->image;
        $image_id = $request->image_id;
        $image_path = public_path("/dashboardImages/product/" . $image);
        if (\File::exists($image_path)) {
            unlink($image_path);
        } else {
        }
        //$image_id=$product->images[0]->pivot->image_id;
        //$imageData=Image::where("id",$image_id)->where("name", $image)->first();
        $imageData=Image::where("id",$image_id)->where("name", $image)->delete();
        //return $imageData;
        return back();
    }

    public function storeProductImage(Request $request, $id)
    {
        $product=Product::find($id);
        $request->validate([
            'service_image' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($request->product_image) {
            $image_name = time() . "_" . $request->service_image->getClientOriginalName();
            $filePath = 'dashboardImages/product/'.$image_name;
            $request->service_image->move("dashboardImages/product", $image_name);
            $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$product->product_en->title]);
            $image_id=array();
            array_push($image_id,$image->id);
            $product->images()->attach($image_id);
            return back();
        }
        //dd($request->file('product_im'));

    }

    public function storeProductImages(Request $request, $id)
    {
        $product=Product::find($id);
        $request->validate([
            'service_image.*' => 'bail:required|image|mimes:jpeg,png'
        ]);
        if ($uploadFiles=$request->product_image) {
            $images_ids=array();
            foreach ($uploadFiles as $uploadFile){
                $image_name = time() . "_" .$uploadFile->getClientOriginalName();
                $filePath = 'dashboardImages/product/'.$image_name;
                $uploadFile->move("dashboardImages/product", $image_name);
                $image=Image::create(['name' => $image_name,'path'=>$filePath,'alt'=>$product->product_en->title]);
                array_push($images_ids,$image->id);
            }
            $product->images()->attach($images_ids);

            return back();
        }
        //dd($request->file('product_im'));

    }
}
