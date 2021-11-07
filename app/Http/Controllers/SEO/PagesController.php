<?php
namespace App\Http\Controllers\SEO;
use App\Http\Controllers\Controller;

use App\Models\Album;
use App\Models\Blog;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Models\SEO\Page;
use Illuminate\Support\Facades\Input;

class PagesController extends Controller{
    public function index(){
        $type=\request('type');
        if($type=='main'){
            $pages=Page::where("is_main_page",1)->get();
            //dd($pages[11]->page->id);
            return view('dashboard.seo.website_pages.index',compact(['pages']));
        }elseif($type=='blog'){
            $pages=Blog::all();
            return view('dashboard.seo.website_pages.index',compact(['pages']));
        }elseif($type=='album'){
            $pages=Album::all();
            return view('dashboard.seo.website_pages.index',compact(['pages']));
        }elseif ($type=='product'){
            $pages=Product::all();
            return view('dashboard.seo.website_pages.index',compact(['pages']));
        }elseif ($type=='category'){
            $pages=Category::all();
            //dd($pages[0]->page);
            return view('dashboard.seo.website_pages.index',compact(['pages']));
        }
    }
    public function edit($id){
        $page=Page::find($id);
        return view("dashboard.seo.website_pages.edit",compact(['page']));
    }
    public function update(Request $request,$id){
        $page=Page::find($id);
        $request->validate([
            //'name'=>'required',
            //'url'=>'required|unique:pages',
            //'description'=>'required',
            'keywords'=>'',
            'header_code'=>'',
        ]);
        $page->update(['description'=>$request->description,
            'key_words'=>$request->keywords,
            'header_code'=>$request->header_code,
            'created_by'=>auth()->user()->id
        ]);
        return back()->with('create','changes are done successfully.');
    }
}
