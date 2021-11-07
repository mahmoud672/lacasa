<?php

namespace App\Models\SEO;

use Illuminate\Database\Eloquent\Model;

class Page extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'pages';
    protected $connection = 'mysql';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['is_main_page','url', 'name', 'description', 'key_words', 'open_graph_id','header_code'];

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

    public function Page(){
        return $this->belongsTo(\App\Models\SEO\Page::class,'id')->withDefault();
    }

    public function blog()
    {
        return $this->hasOne(\App\Models\Blog::class,'page_id', 'id')->withDefault();
    }

    public function open_graph()
    {
        return $this->belongsTo(\App\Models\SEO\Open_graph::class, 'open_graph_id', 'id')->withDefault();
    }

    public function service()
    {
        return $this->hasOne(\App\Models\Service::class, 'page_id', 'id')->withDefault();
    }
    /*public function createdBy(){
        return $this->hasOne("App\User",'id','created_by');
    }*/


}
