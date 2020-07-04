<?php

use App\Banner;
use App\User;
use App\Admin;
use App\Category;

use App\Cms_page;
use App\cod_pincode;
use App\Country;
use App\Coupon;
use App\Currencies;
use App\Delivery;
use App\Order;
use App\Order_product;
use App\Pincode;
use App\Prepaid_pincode;
use App\Product;
use App\Product_attribute;
use App\Product_image;
use App\Shipping_charge;
use App\Profile;



use Faker\Generator as Faker;
use Illuminate\Support\Str;



/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(User::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'user_type'=>'seeker',
        'email' => $faker->unique()->safeEmail,
        'email_verified_at' =>now(),
        'password' => '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', // secret
        'admin'=>rand(0,1),
        'status'=>rand(0,1),
        'remember_token' => str_random(10),
    ];
});



$factory->define(Admin::class, function (Faker $faker) {
    return [
        'username' =>$faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', // secret
        'status'=>rand(0,1),
        'remember_token' => str_random(10),

    ];
});






$factory->define(Category::class, function (Faker $faker) {
    return [
        'parent_id' =>rand(0,10),
//        'name' => $faker->name,
        'name' => $name =$faker->word,
        'description'=>$faker->paragraph(rand(2,5)),
        'url' => $name =$faker->word,
       // 'url' => $faker->text,
       'meta_title' => $name =$faker->text,
       // 'meta_title' => $faker->text,
        'meta_description' => $faker->paragraph(rand(2,5)),
        'meta_keywords' => $faker->word,
        'status'=>rand(0,1),
        'remember_token' => str_random(10),

    ];
});











$factory->define(App\Cms_page::class, function (Faker $faker) {
    return [
        'title'=>$name =$faker->text,
        'description'=>$faker->paragraph(rand(2,5)),
        'url' => $name =$faker->text,
        'meta_title' => $name =$faker->text,
        'meta_description' => $faker->paragraph(rand(2,5)),
        'meta_keywords' => $faker->word,
        'status'=>rand(0,1),

    ];
});



$factory->define(App\cod_pincode::class, function (Faker $faker) {
    return [
        'pincode' =>$faker->postcode,
        'city' =>$faker->city,
        'state' =>$faker->state,

    ];
});



$factory->define(App\Country::class, function (Faker $faker) {
    return [
        'country_code' =>$faker->countryCode,
        'country_name' =>$faker->country,
    ];
});





$factory->define(App\Coupon::class, function (Faker $faker) {
    return [

        'coupon_code' =>'qwerty',
        'amount' =>rand(1,7),
        'amount_type' =>'Percentage',
        'expiry_date'=>$faker->DateTime,
        'status'=>rand(0,1),

    ];
});





$factory->define(App\Currencies::class, function (Faker $faker) {
    return [
        'currency_code' =>$faker->currencyCode,
        'exchange_rate' =>rand(80,90),
        'status'=>rand(0,1),

    ];
});







$factory->define(App\Delivery::class, function (Faker $faker) {
    return [
        'user_id' =>User::all()->random()->id,
        'user_email' =>User::all()->random()->email,
        'name' => $faker->name,
        'address' =>$faker->address,
        'city' =>$faker->city,
        'state' =>$faker->state,
        'country' =>$faker->country,
        'pincode' =>$faker->postcode,
        'mobile' =>$faker->phoneNumber,
    ];
});








$factory->define(App\Order::class, function (Faker $faker) {
    return [
        'user_id' =>User::all()->random()->id,
        'user_email' =>User::all()->random()->email,
        'name' => $faker->name,
        'address' =>$faker->address,
        'city' =>$faker->city,
        'state' =>$faker->state,
        'pincode' =>$faker->postcode,
        'country' =>$faker->country,
        'mobile' =>$faker->phoneNumber,
        'shipping_charges'=>rand(0,100),
        'coupon_code'=>Coupon::all()->random()->coupon_code,
        'coupon_amount'=>rand(50,100),
        'order_status'=>'Paid',
        'payment_method'=>'COD',
        'grand_total'=>rand(500,1500),


    ];
});






$factory->define(App\Product::class, function (Faker $faker) {
    return [

        'category_id' =>Category::all()->random()->id,
//        'product_name'=> $faker->name,
        'product_name' => $name =$faker->name,
        'slug'=>str_slug($name),
        'product_code'=> $faker->word,
        'product_color'=> $faker->colorName,
        'description'=> $faker->paragraph(rand(2,7)),
        'care'=> $faker->paragraph(rand(2,5)),
        'sleeve'=>'100% Cotton',
        'pattern'=>'Not washable',
        'price'=>rand(500,2000),
        'weight'=>rand(100.00,200.00),
        'image'=>'fake_avatar/p6.jpg',
        'video'=>'videos/tareq.mp4',
        'feature_item'=>rand(0,1),
        'status'=>rand(0,1),
    ];
});





$factory->define(App\Product_attribute::class, function (Faker $faker) {
    return [

        'product_id' =>Product::all()->random()->id,
        'sku'=>$faker->word,
        'size'=> 'small',
        'stock'=> rand(0,50),

    ];
});





$factory->define(App\Order_product::class, function (Faker $faker) {
    return [
        'order_id' =>Order::all()->random()->id,
        'user_id' =>User::all()->random()->id,
        'product_id' =>Product::all()->random()->id,
        'product_code' =>Product::all()->random()->product_code,
        'product_name' =>Product::all()->random()->product_name,
        'product_size' =>Product_attribute::all()->random()->size,
        'product_color' =>Product::all()->random()->product_color,
        'product_price' =>Product::all()->random()->price,
        'product_qty' =>rand(1,7),

    ];
});





$factory->define(App\Pincode::class, function (Faker $faker) {
    return [

        'pincode' =>$faker->postcode,
        'city' =>$faker->city,
        'state' =>$faker->state,

    ];
});





$factory->define(App\Prepaid_pincode::class, function (Faker $faker) {
    return [

        'pincode' =>$faker->postcode,
        'city' =>$faker->city,
        'state' =>$faker->state,

    ];
});









$factory->define(App\Product_image::class, function (Faker $faker) {
    return [

        'product_id' =>Product::all()->random()->id,
        'image'=>'fake_avatar/p6.jpg',

    ];
});



$factory->define(Profile::class, function (Faker $faker) {
    return [
        'user_id' =>User::all()->random()->id,
        'address' =>$faker->address,
        'city' =>$faker->city,
        'state' =>$faker->state,
        'country' =>$faker->country,
        'pincode' =>$faker->postcode,
        'mobile' =>$faker->phoneNumber,

    ];
});









$factory->define(App\Shipping_charge::class, function (Faker $faker) {
    return [

        'country' =>$faker->country,
        'shipping_charges0_500g' =>500.00,
        'shipping_charges501_1000g' =>1000.00,
        'shipping_charges1001_2000g' =>1500.00,
        'shipping_charges2001_5000g' =>2000.00,

    ];
});





$factory->define(App\Banner::class, function (Faker $faker) {
    return [

        'image'=>'fake_banner/cat-banner-1.jpg',
        'title'=>$name =$faker->text,
        'link' =>$name =$faker->text,
        'status' =>rand(0,1),

    ];
});






$factory->define(App\Cart::class, function (Faker $faker) {
    return [

        'product_id' =>Product::all()->random()->id,
        'product_name' =>Product::all()->random()->product_name,
        'product_code' =>Product::all()->random()->product_code,
        'product_color' =>Product::all()->random()->product_color,
        'size' =>Product_attribute::all()->random()->size,
        'price' =>Product::all()->random()->price,
        'quantity' =>Order_product::all()->random()->product_qty,
        'user_email' =>User::all()->random()->email,
        'session_id' =>str_random(10),


    ];
});






