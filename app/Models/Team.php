<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Team extends Model  {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'team';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['manager_id','image_id', 'service_id', 'created_by'];

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
    protected $dates = ['birth_date'];


    public function createdBy()
    {
        return $this->belongsTo(User::class, 'created_by', 'id');
    }

    public function team_ar()
    {
        return $this->hasOne(\App\Models\Arabic\Team::class, 'member_id', 'id');
    }

    public function team_en()
    {
        return $this->hasOne(\App\Models\English\Team::class, 'member_id', 'id');
    }

    public function image()
    {
        return $this->belongsTo(Image::class, 'image_id', 'id');
    }

    public function manager()
    {
        return $this->belongsTo(Team::class,'manager_id','id')->withDefault();
    }

    public function members()
    {
        return $this->hasMany(Team::class,'manager_id','id');
    }

    public function lang()
    {
        if (currentLang() == 'en')
            return $this->team_en();
        return $this->team_ar();
    }

}
