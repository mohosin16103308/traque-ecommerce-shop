<?php

namespace App;

use Illuminate\Database\Eloquent\Model;



class Category extends Model { protected $guarded=[];

    public function products(){
        return $this->hasMany('App\Product');
    }

    public function parent(){
        return $this->belongsTo('App\Category','parent_id');
    }


    //display category and sub-category in frontend page
    public function  categories(){
        return $this->hasMany('App\Category','parent_id');
    }




}













