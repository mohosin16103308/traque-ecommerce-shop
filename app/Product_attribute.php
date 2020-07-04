<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product_attribute extends Model
{
    public function product()
    {
        return $this->belongsTo('App\Product', 'id', 'product_id');
    }










}
