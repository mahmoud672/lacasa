<?php

namespace App\Models\Arabic;

use Illuminate\Database\Eloquent\Model;

class Offer extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'offer';
    protected $connection = 'mysql2';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['offer_id', 'title', 'sub_title', 'body'];

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

}
