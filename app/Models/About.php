<?php

namespace App\Models;

use App\Models\Arabic\AboutArabic;
use App\Models\English\AboutEnglish;
use Illuminate\Database\Eloquent\Model;

class About extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $connection = 'mysql';
    protected $table = 'about';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['image_id', 'mission_image_id', 'vision_image_id', 'values_image_id','goal_image_id','approach_image_id','career_image_id','video_id'];

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


    public function about_en()
    {
        return $this->hasOne(AboutEnglish::class, 'about_id', 'id')->withDefault();
    }

    public function about_ar()
    {
        return $this->hasOne(AboutArabic::class, 'about_id', 'id')->withDefault();
    }

    public function aboutImage()
    {
        return $this->belongsTo(Image::class, 'image_id', 'id')->withDefault();
    }

    public function missionImage()
    {
        return $this->belongsTo(Image::class, 'mission_image_id', 'id')->withDefault();
    }

    public function visionImage()
    {
        return $this->belongsTo(Image::class, 'vision_image_id', 'id')->withDefault();
    }

    public function valuesImage()
    {
        return $this->belongsTo(Image::class, 'values_image_id', 'id')->withDefault();
    }

    public function approachImage()
    {
        return $this->belongsTo(Image::class, 'approach_image_id', 'id')->withDefault();
    }

    public function goalsImage()
    {
        return $this->belongsTo(Image::class, 'goals_image_id', 'id')->withDefault();
    }

    public function bioImage()
    {
        return $this->belongsTo(Image::class, 'bio_image_id', 'id')->withDefault();
    }

    public function video()
    {
        return $this->belongsTo(Video::class, 'video_id', 'id')->withDefault();
    }

    public function bioVideo()
    {
        return $this->belongsTo(Video::class, 'bio_video_id', 'id')->withDefault();
    }
    public function lang()
    {
        if (currentLang() == 'en')
            return $this->about_en();
        return $this->about_ar();

    }




}
