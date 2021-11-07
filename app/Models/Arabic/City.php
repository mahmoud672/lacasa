<?php

namespace App\Models\Arabic;

use Illuminate\Database\Eloquent\Model;

class City  extends Model{

    protected $connection='mysql2';

    protected $table='city';

    protected $fillable=['city_id','city_name','country_name','region'];

    public function main_city(){
        return $this->belongsTo(\App\Models\City::class,'city_id','id');
    }

}
