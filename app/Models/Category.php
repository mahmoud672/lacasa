<?php

namespace App\Models;

use App\Models\Video;
use Illuminate\Database\Eloquent\Model;

class Category extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $connection = 'mysql';
    protected $table = 'category';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['image_id','icon','url','video_id','parent_category_id','city_id','location','open_graph_id','page_id','created_by'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [];

    public function image()
    {
        return $this->belongsTo(Image::class, 'image_id', 'id')->withDefault();
    }

    public function products()
    {
        return $this->hasMany(Product::class, 'category_id', 'id');
    }


    public function images()
    {
        return $this->belongsToMany(Image::class, 'category_images','category_id','image_id')->withTimestamps();
    }


    public function iconImg()
    {
        return $this->belongsTo(Image::class, 'icon', 'id')->withDefault();
    }

    public function video()
    {
        return $this->belongsTo(Video::class, 'video_id', 'id')->withDefault();
    }

    public function createdBy()
    {
        return $this->belongsTo(User::class, 'created_by', 'id')->withDefault();
    }


    public function category_ar()
    {
        return $this->hasOne(\App\Models\Arabic\Category::class, 'category_id', 'id')->withDefault();
    }

    public function category_en()
    {
        return $this->hasOne(\App\Models\English\Category::class, 'category_id', 'id')->withDefault();
    }

    public function parentCategory(){
        return $this->belongsTo(Category::class,'parent_category_id','id')->withDefault();
    }

    public function childCategories(){
        return $this->hasMany(Category::class,'parent_category_id','id');
    }

    public function hotels(){
        return $this->hasMany(Hotel::class,'category_id','id');
    }

    /**
     * SEO Modules---------------------------
     */
    /*public function page()
    {
        return $this->belongsTo(Page::class, 'page_id', 'id')->withDefault();
    }

    public function openGraph()
    {
        return $this->belongsTo(Open_graph::class, 'open_graph_id', 'id')->withDefault();
    }

    public function form()
    {
        return $this->belongsTo(Form::class, 'form_id', 'id')->withDefault();
    }*/

    //============================== added new ================================\\

    public function open_graph()
    {
        return $this->belongsTo(\App\Models\SEO\Open_graph::class, 'open_graph_id', 'id')->withDefault();
    }

    public function page()
    {
        return $this->hasOne(\App\Models\SEO\Page::class, 'id', 'page_id')->withDefault();
    }

    //========================= ============================= =====================\\
}
