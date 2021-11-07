<?php


namespace App\Http\ViewComposers;


use App\Models\Album;
use App\Models\Category;
use Illuminate\View\View;

class DashboardComposer
{
    public function compose(View $view){
        /*$categories = Category::with('childCategories','parentCategory','image')->get();
        $sub_categories = Category::with('hotels','image')->where('parent_category_id',"!=",null)->get();
        $view->with('sub_categories',$sub_categories);*/
        $albumsHaveVideos = Album::with('album_en')->has('videos')->where('type', 1)->get();
        $view->with(
            'albumsHaveVideos',$albumsHaveVideos
        );
    }
}
