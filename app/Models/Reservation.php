<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    protected $connection = 'mysql';
    protected $table = 'reservation';

    protected $fillable = ['name','email','phone','message','product_id','service_id','from_date','to_date','from_city','to_city','reservation_degree','persons_count','adults_count','children_count','age','came_from','address','reservation_date','from_address','to_address','shipments_count','item','company_name','website_url','location','description1','description2','description3','requirements','budget'];


    public function fromCity()
    {
        return $this->hasOne(City::class,'id','from_city')->withDefault();
    }
    public function toCity()
    {
        return $this->hasOne(City::class,'id','to_city')->withDefault();
    }

    public function product()
    {
        return $this->belongsTo(Product::class,'product_id','id')->withDefault();
    }

    public function service()
    {
        return $this->belongsTo(Service::class,'service_id','id')->withDefault();
    }
}
