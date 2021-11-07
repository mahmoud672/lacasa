<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class City  extends Model{

    protected $connection='mysql';

    protected $table='city';

    protected $fillable=['created_by','parent_city_id','location'];


    public function city_ar(){
        return $this->hasOne(\App\Models\Arabic\City::class,'city_id','id')->withDefault();
    }

    public function city_en(){
        return $this->hasOne(\App\Models\English\City::class,'city_id','id')->withDefault();
    }

    public function createdBy(){
        return $this->belongsTo(\App\Models\User::class,'created_by','id')->withDefault();
    }

    public function parentCity(){
        return $this->belongsTo(\App\Models\City::class,'parent_city_id','id');
    }
    public function childCities(){
        return $this->hasMany(\App\Models\City::class,'parent_city_id','id');
    }
    public function hotels(){
        return $this->hasMany(\App\Models\Hotel::class,'city_id','id');
    }
}
