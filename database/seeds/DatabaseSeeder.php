<?php

use Illuminate\Database\Seeder;
use App\Category;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory('App\User',5)->create();
        factory('App\Admin',5)->create();
       factory('App\Category',20)->create();
        factory('App\Cms_page',20)->create();
        factory('App\cod_pincode',20)->create();
        factory('App\Country',20)->create();
        factory('App\Coupon',20)->create();
        factory('App\Currencies',20)->create();
        factory('App\Delivery',20)->create();
        factory('App\Order',20)->create();
        factory('App\Product',7)->create();
        factory('App\Product_attribute',7)->create();
        factory('App\Order_product',20)->create();
        factory('App\Pincode',20)->create();
        factory('App\Prepaid_pincode',20)->create();
        factory('App\Product_image',5)->create();
        factory('App\Shipping_charge',20)->create();
        factory('App\Banner',2)->create();
        factory('App\Profile',20)->create();
        factory('App\Cart',20)->create();


    }
}
