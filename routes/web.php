
<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//
// Route::get('/', function () {
//    return view('welcome');
// });

 Auth::routes();

 Route::get('/home', 'HomeController@index')->name('home');

    //Check button , jquery.uniform.js->654 line,diseble

/*
|--------------------------------------------------------------------------
| Admin Register,Login,Admin Dashboard part
|--------------------------------------------------------------------------
*/
    //Admin Register
    Route::view('admin/register','auth.admin-register');
    Route::post('admin/registration','AdminController@adminregistration')->name('admin.registration');

    //admin Login
    Route::get('admin/login','AdminController@loginform');
    Route::post('admin/dashboard','AdminController@adminLogin');

        //Admin Dashboard after login
        Route::group(['middleware'=>['CheckRole']], function (){
        Route::get('admin/dashboard','AdminController@dashboard')->name('admin.dashboard');
        Route::get('admin/settings','AdminController@settings')->name('admin.settings');
        Route::get('/admin/check-pwd','AdminController@chkPassword');
        Route::post('/admin/update-pwd','AdminController@updatePassword');
        // Admin Category
        Route::get('admin/add-category','CategoryController@category')->name('category');
        Route::post('admin/add-category','CategoryController@addcategory')->name('add.category');
        Route::get('admin/view-category','CategoryController@viewcategory')->name('view.category');
        Route::get('admin/{id}/edit-category','CategoryController@editcategory')->name('edit.category');
        Route::post('admin/{id}/update-category','CategoryController@updatecategory')->name('update.category');
        Route::get('admin/{id}/delete-category','CategoryController@deletecategory')->name('delete.category');

           //Products
            Route::get('admin/add-product','ProductsController@product')->name('product');
            Route::post('admin/add-product','ProductsController@addproduct')->name('add.product');
            Route::get('admin/view-product','ProductsController@viewproduct')->name('view.product');
            Route::get('admin/{id}/edit-product','ProductsController@editproduct')->name('edit.product');
            Route::post('admin/{id}/update-product','ProductsController@updateproduct')->name('update.product');
            Route::get('admin/{id}/delete-product','ProductsController@deleteproduct')->name('delete.product');
            Route::get('/admin/delete-product-image/{id}','ProductsController@deleteProductImage')->name('deleteimage');


            //Products Attribute
            Route::get('admin/{id}/attribute','ProductsController@product_attribute')->name('product_attribute');
            Route::post('admin/{id}/add_attribute','ProductsAttributeController@product_store_attribute')->name('product_store_attribute');
            Route::get('admin/view/attribute','ProductsAttributeController@product_view_attribute')->name('product_view_attribute');
            Route::get('/admin/{id}/delete-attribute','ProductsAttributeController@deleteattribute')->name('deleteattribute');
            Route::post('/admin/{id}/update-attribute','ProductsAttributeController@updateattribute')->name('updateattribute');

            //Products Multiple Image Add
            Route::get('admin/{id}/multiple-images','ProductsController@add_multiple_images')->name('add_multiple_images');
            Route::post('admin/{id}/multiple-images','Product_image_Controller@image_store')->name('image_store');
            Route::get('admin/view/images','Product_image_Controller@Product_view_images')->name('product_view_images');
            Route::get('admin/{id}/delete-image','Product_image_Controller@delete_image')->name('delete_image');



            });
           Route::get('/logout', 'AdminController@logout')->name('admin.logout');





          /*
           |--------------------------------------------------------------------------
           | frontend  part
           |--------------------------------------------------------------------------
           */

        Route::get('/','IndexController@index')->name('home');

        //Listing Page
       Route::get('/{url}','IndexController@listing')->name('listing');
       //products Details
       Route::get('product/{slug}','IndexController@productsdetails')->name('productsdetails');



     //Product Price
     Route::post('product/price/display_on_size','IndexController@price_display_on_size')->name('price_display_on_size');




























