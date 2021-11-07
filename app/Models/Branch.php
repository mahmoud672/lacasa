<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Branch extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $connection = 'mysql';
    protected $table = 'branch';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['image_id','url','phone', 'phone_alt','email'];

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

    public function branch_ar()
    {
        return $this->hasOne(\App\Models\Arabic\Branch::class, 'branch_id', 'id')->withDefault();
    }

    public function branch_en()
    {
        return $this->hasOne(\App\Models\English\Branch::class, 'branch_id', 'id')->withDefault();
    }

    public function lang()
    {
        if (currentLang() == 'en')
            return $this->branch_en();
        return $this->branch_ar();
    }



    public function working_day()
    {
        return $this->hasOne(Working_day::class, 'branch_id', 'id')->withDefault();
    }


    public function clientImages()
    {
        return $this->belongsToMany(Image::class, 'branch_client_images','branch_id','image_id')->withTimestamps();
    }

    public function images()
    {
        return $this->belongsToMany(Image::class, 'branch_client_images','branch_id','image_id')->withTimestamps();
    }

    public function projects()
    {
        return $this->hasMany(Project::class,'branch_id','id');
    }

    public function image()
    {
        return $this->belongsTo(Image::class, 'image_id', 'id')->withDefault();
    }


}
