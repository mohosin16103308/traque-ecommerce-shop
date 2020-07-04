<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $guarded=[];

    public function category(){
        return $this->belongsTo('App\Category');
    }

    public function getBodyHtmlAttribute(){
        return \Parsedown::instance()->text($this->description);
    }

    public function product_attribute()
    {
        return $this->hasMany('App\Product_attribute');
    }



    //One To Many

    public function images(){
        return $this->hasMany('App\Product_image');

    }


    // slug
    public function setProductNameAttribute($value)
    {
        $this->attributes['product_name'] = $value;
        $this->attributes['slug'] = str_slug($value);
    }


    public function getUrlAttribute($value)
    {
        return route('productsdetails',$this->slug);
    }



}
