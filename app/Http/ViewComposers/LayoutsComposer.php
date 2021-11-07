<?php

namespace App\Http\ViewComposers;

use App\Models\Album;
use App\Models\Blog;
use App\Models\Branch;
use App\Models\Category;
use App\Models\Contact;
use App\Models\About;
use App\Models\Page;
use App\Models\Product;
use App\Models\Same_a;
use App\Models\Service;
use App\Models\Setting;
use Illuminate\Support\Facades\DB;
use  Illuminate\View\View;

class LayoutsComposer
{
    public function compose(View $view)
    {


        // Return Projects In the footer of all pages

        //retrieve Projects in footer
        $contact = Contact::orderby('id', 'desc')->first();
        $about = About::with('about_'.currentLang())->orderBy('created_at', 'desc')->first();
        $setting = Setting::with('setting_'.currentLang(), 'image')->orderBy('created_at', 'desc')->first();
        $sameAs = Same_a::all();
        //$mainServices = Service::with('service_'.currentLang(), 'parentService')->where('parent_service_id', null)->get();
        $mainServices = Service::with('service_'.currentLang(), 'parentService')->where('parent_service_id', null)
            ->where('type',null)->get();

        $subServices = Service::with('service_'.currentLang(), 'parentService')->where('parent_service_id',"<>",null)
            ->where('type',null)->get();

        $staticService = Service::with('service_'.currentLang(), 'parentService')->where('type','static')->first();
        $productServices = Service::with('service_'.currentLang(), 'parentService')->where('type','products')->get();
        $profileServices = Service::with('service_'.currentLang(), 'parentService')->where('type','profiles')->get();

        //$mainServices = DB::select("SELECT * FROM service WHERE parent_service_id is NULL AND type is NULL");
        //dd($mainServices);
        $mainOpenGraph = Page::with('open_graph')->where('url', '/')->first();
        $albums = Album::with('album_en', 'album_ar')->get();
        $categories=Category::with('category_'.currentLang(),'image')->get();
        $main_categories=Category::with('category_'.currentLang(),'image','childCategories')->where('parent_category_id','=',null)->orderBy('created_at','DESC')->get();
        $sub_categories=Category::with('category_'.currentLang(),'image','parentCategory')->where('parent_category_id','!=',null)->get();
        $products = Product::with('product_'.currentLang(),'images','image','category')->get();
        $albums = Album::with("images",'album_'.currentLang())->where('type',1)->get();
        $albumsHaveVideos = Album::with('album_en')->has('videos')->where('type', 1)->get();
        //$albums = Album::with("images",'album_'.currentLang())->get();
        $branches = Branch::with('branch_'.currentLang())->get();
        $latestArticles = Blog::with('blog_'.currentLang())->where("status",null)->orderBy('created_at','DESC')->limit(3)->get();

        $view->with('contact', $contact)
                ->with('about', $about)
                ->with('setting', $setting)
                ->with('sameAs', $sameAs)
                ->with('mainServices', $mainServices)
                ->with('subServices', $subServices)
                ->with('staticService', $staticService)
                ->with('productServices', $productServices)
                ->with('profileServices', $profileServices)
                //->with('albums', $albums)
                ->with('mainOpenGraph', $mainOpenGraph)
                ->with('categories', $categories)
                ->with('main_categories', $main_categories)
                ->with('sub_categories', $sub_categories)
                ->with('products', $products)
                ->with('albums', $albums)
                ->with('branches', $branches)
                ->with('latestArticles', $latestArticles)
                ->with('albumsHaveVideos', $albumsHaveVideos)
        ;
    }
}
