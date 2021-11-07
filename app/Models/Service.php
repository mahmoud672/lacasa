<?php

namespace App\Models;

use App\Models\Arabic\ServiceArabic;
use App\Models\English\ServiceEnglish;
use App\Models\Video;
use Illuminate\Database\Eloquent\Model;

class Service extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $connection = 'mysql';
    protected $table = 'service';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['type','image_id', 'video_id', 'created_by'];

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

    //--------------------- added new -----------------------
    public function images()
    {
        return $this->belongsToMany(Image::class, 'service_images','service_id','image_id')->withTimestamps();
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


    public function service_ar()
    {
        return $this->hasOne(ServiceArabic::class, 'service_id', 'id')->withDefault();
    }

    public function service_en()
    {
        return $this->hasOne(ServiceEnglish::class, 'service_id', 'id')->withDefault();
    }

    public function lang()
    {
        if (currentLang() == 'ar')
            return $this->service_ar();
        return $this->service_en();
    }

    public function parentService()
    {
        return $this->belongsTo(Service::class, 'parent_service_id', 'id')->withDefault();
    }

    public function childService()
    {
        return $this->hasMany(Service::class, 'parent_service_id', 'id');
    }

    public function team()
    {
        return $this->hasMany(Team::class, 'service_id', 'id');
    }

    public function serviceLang()
    {
        if(currentLang() == 'ar') return $this->service_ar();
        return $this->service_en();
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
    }*/

    public function form()
    {
        return $this->belongsTo(Form::class, 'form_id', 'id')->withDefault();
    }

    public function open_graph()
    {
        return $this->belongsTo(\App\Models\SEO\Open_graph::class, 'open_graph_id', 'id')->withDefault();
    }

    public function page()
    {
        return $this->hasOne(\App\Models\SEO\Page::class, 'id', 'page_id')->withDefault();
    }

}
