<?php

namespace App\Models;

//use App\Models\Arabic\Product;
//use App\Models\English\Product;
use App\Models\Video;
use Illuminate\Database\Eloquent\Model;

class Product extends Model  {

    /**
     * The database table used by the model.
     * @pro
     * @var string
     */
    protected $connection = 'mysql';
    protected $table = 'product';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['category_id','image_id','icon','price','size','url','video_id','open_graph_id','page_id','created_by'];

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

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id')->withDefault();
    }

    //--------------------- added new -----------------------
    public function images()
    {
        return $this->belongsToMany(Image::class, 'product_images','product_id','image_id')->withTimestamps();
    }
    //------------------ ----------------------- ------------------------ --------------------

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


    public function product_ar()
    {
        return $this->hasOne(\App\Models\Arabic\Product::class, 'product_id', 'id')->withDefault();
    }

    public function product_en()
    {
        return $this->hasOne(\App\Models\English\Product::class, 'product_id', 'id')->withDefault();
    }

    public function lang()
    {
        if (currentLang() == 'en')
            return $this->product_en();
        return $this->product_ar();
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
