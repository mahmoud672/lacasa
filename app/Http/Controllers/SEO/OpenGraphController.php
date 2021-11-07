<?php
namespace App\Http\Controllers\SEO;
use App\Http\Controllers\Controller;

use App\Models\Album;
use App\Models\Blog;
use App\Models\Category;
use App\Models\Image;
use App\Models\SEO\Open_graph;
use App\Models\SEO\Page;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;

class OpenGraphController extends Controller{
    public function __construct()
    {

    }

    public function index()
    {
        $type=\request('type');
        if($type=='main'){
            $pages=Page::where("is_main_page",1)->get();
            //dd($pages);
             return view('dashboard.seo.open_graph.index',compact(['pages']));
        }elseif($type=='blog'){
            $pages=Blog::all();
            return view('dashboard.seo.open_graph.index',compact(['pages']));
            //return 'blog';
        }elseif($type=='album'){
            $pages=Album::all();
            return view('dashboard.seo.open_graph.index',compact(['pages']));
        }elseif ($type=='product'){
            $pages=Product::all();
            return view('dashboard.seo.open_graph.index',compact(['pages']));
        }elseif ($type=='category'){
            $pages=Category::all();

            return view('dashboard.seo.open_graph.index',compact(['pages']));
        }
    }
    public function show($id)
    {

    }
    public function edit($id)
    {
        $og=Open_graph::find($id);
        //dd($og->open_graph_image);
        return view("dashboard.seo.open_graph.edit",compact(['og']));
    }
    public function update(Request $request,$id)
    {
        $og=Open_graph::find($id);
        $request->validate([
            //'og_url'=>'unique:open_graph',
            'og_type'=>'',
            'og_site_name'=>'',
            //'og_title'=>'required',
            //'og_description'=>'required',
            'og_image'=>'image|mimes:jpeg,png',
            'og_main_image'=>'image|mimes:jpeg,png',
            'image_url'=>'',
            //'alt'=>'required'
        ]);
        //$url= $og->page->is_main_page==1 ? $og->og_url : $request->og_url;
        if($request->og_image){
            $image_name=time()."_".$request->og_image->getClientOriginalName();
            //$request->og_image->move("dashboardImages/open_graph",$image_name);

            if($og->og_image==null){
                $request->og_image->move("dashboardImages/open_graph",$image_name);
                $filePath='dashboardImages/open_graph/'.$image_name;
                $image=Image::create(['name'=>$image_name,'path'=>$filePath,'alt'=>$request->alt]);
                $og->update(['og_image'=>$image->id]);
            }else{

                $request->og_image->move("dashboardImages/open_graph",$image_name);
                $filePath='dashboardImages/open_graph/'.$image_name;
                $image=Image::create(['name'=>$image_name,'path'=>$filePath,'alt'=>$request->alt]);
                $og->update(['og_image'=>$image->id]);
            }
        }

        //-- to update just the alt attribute in images table
        Image::where('id',$og->og_image)->update(['alt'=>$request->alt]);
        //-----------

        if($request->og_main_image){
            $image_name=time()."_".$request->og_main_image->getClientOriginalName();
            $request->og_main_image->move("dashboardImages/open_graph",$image_name);
            $og->update(['main_image'=>$image_name]);
        }
        $og->update(['og_title'=>$request->og_title,'og_description'=>$request->og_description,
            'og_type'=>$request->og_type,'image_url'=>$request->image_url,
            'og_site_name'=>$request->og_site_name,'created_by'=>auth()->user()->id
        ]);
        return back()->with('create','changes are done successfully.');
    }
}
