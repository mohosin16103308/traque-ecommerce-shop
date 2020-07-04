<?php

namespace App\Http\Controllers;


use App\Product;
use Illuminate\Support\Facades\Auth;
use Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Image;
use App\Category;

class ProductsController extends Controller
{
     public  function product(){
         return view('admin.products.product');
     }

     public function addproduct(Request $request){

         $product=New Product();
         if (empty($request['category_id'])) {

             return redirect()->back()->with('error', 'Under Category is missing!');
         }

         $product->category_id=$request['category_id'];
         $product->product_name=$request['product_name'];

      //   $product->slug=str_slug($request['product_name']);

//         return  $product->product_name;
//         die();

         $product->product_code=$request['product_code'];
         $product->product_color=$request['product_color'];
         $product->description=$request['description'];
         $product->care=$request['care'];
         $product->price=$request['price'];
         $product->weight=$request['weight'];
         $product->feature_item=$request['feature_item'];
         $product->status=$request['status'];

         if (!empty($request['description'])) {
             $product->description = $request['description'];
         } else {

             $product->description = '';
         }

         if (!empty($request['care'])) {
             $product->care = $request['care'];
         } else {

             $product->care = '';
         }

         if (empty($request['feature_item'])){
             $product->feature_item = '0';
         } else {
             $product->feature_item = '1';
         }

         if (empty($request['status'])) {
             $product->status = '0';
         } else {
             $product->status = '1';
         }


         //upload Image
         if ($request->hasFile('image')) {
             $image_tmp = Input::file('image');
             if ($image_tmp->isValid()) {
                 $extension = $image_tmp->getClientOriginalExtension();
                 //$filename = rand(111, 99999) . '.' . $extension;
                 $filename =time().'.'.$extension;
                 $large_image_path = 'images/backend_images/products/large/' . $filename;
                 $medium_image_path = 'images/backend_images/products/medium/' . $filename;
                 $small_image_path = 'images/backend_images/products/small/' . $filename;
                 // Resize Images
                 Image::make($image_tmp)->save($large_image_path);
                 Image::make($image_tmp)->resize(600, 600)->save($medium_image_path);
                 Image::make($image_tmp)->resize(300, 300)->save($small_image_path);
                 // Resize Images end
                 // Store image name in products table
                 $product->image = $filename;
             }
         }
         //upload Image end


         $product->save();
         return back()->with('success','product Upload Successfully!');
         }




         public function viewproduct(){
             $products=Product::all();
             return view('admin.products.view_products',compact('products'));
         }



         public function editproduct(Request $request ,$id){
             $product =Product::find($id);
             $productDetails = Product::where(['id'=>$id])->first();
             return view('admin.products.editproduct',compact('product','productDetails'));
         }


         public function updateproduct(Request $request,$id){

             $product=Product::where('id',$id)->first();
             $product->category_id=$request['category_id'];
             $product->product_name=$request['product_name'];
             $product->product_code=$request['product_code'];
             $product->product_color=$request['product_color'];
             $product->description=$request['description'];
             $product->care=$request['care'];
             $product->price=$request['price'];
             $product->weight=$request['weight'];
             $product->feature_item = request('feature_item');
             $product->status = request('status');

             if (!empty($request['description'])) {
                 $product->description = $request['description'];
             } else {

                 $product->description = '';
             }

             if (!empty($request['care'])) {
                 $product->care = $request['care'];
             } else {

                 $product->care = '';
             }

             if (empty($request['feature_item'])){
                 $product->feature_item = '0';
             } else {
                 $product->feature_item = '1';
             }

             if (empty($request['status'])) {
                 $product->status = '0';
             } else {
                 $product->status = '1';
             }

             //upload Image
             if ($request->hasFile('image')) {
                 $image_tmp = Input::file('image');
                 if ($image_tmp->isValid()) {
                     $extension = $image_tmp->getClientOriginalExtension();
                     //$filename = rand(111, 99999) . '.' . $extension;
                     $filename =time().'.'.$extension;
                     $large_image_path = 'images/backend_images/products/large/' . $filename;
                     $medium_image_path = 'images/backend_images/products/medium/' . $filename;
                     $small_image_path = 'images/backend_images/products/small/' . $filename;
                     // Resize Images
                     Image::make($image_tmp)->save($large_image_path);
                     Image::make($image_tmp)->resize(600, 600)->save($medium_image_path);
                     Image::make($image_tmp)->resize(300, 300)->save($small_image_path);
                     // Resize Images end
                     // Store image name in products table
                   $product->image = $filename;

                 }
             }


             //upload Image end


             $product->save();
             return back()->with('success','product Update Successfully!');

         }


    public function deleteproduct($id){
        $product=Product::where('id',$id)->first();


        //get product Image Path

        $large_image_path = 'images/backend_images/products/large/';
        $medium_image_path = 'images/backend_images/products/medium/';
        $small_image_path = 'images/backend_images/products/small/';


        // Delete Large Image if not exists in Folder

        if (file_exists($large_image_path . $product->image)) {
            unlink($large_image_path . $product->image);
        }

        // Delete Medium Image if not exists in Folder
        if (file_exists($medium_image_path . $product->image)) {
            unlink($medium_image_path . $product->image);
        }

        // Delete Small Image if not exists in Folder
        if (file_exists($small_image_path . $product->image)) {
            unlink($small_image_path . $product->image);
        }


        $product->delete();
        return back()->with('success','Product Deleted Successfully!');

    }






    public function deleteProductImage($id )
    {

       //get product Image Name

        $product = Product::where(['id' => $id])->first();

        //get product Image Path
        $large_image_path = 'images/backend_images/products/large/';
        $medium_image_path = 'images/backend_images/products/medium/';
        $small_image_path = 'images/backend_images/products/small/';

        // Delete Large Image if not exists in Folder

       if (file_exists($large_image_path . $product->image)) {
           unlink($large_image_path . $product->image);
       }

        // Delete Medium Image if not exists in Folder
        if (file_exists($medium_image_path . $product->image)) {
            unlink($medium_image_path . $product->image);
        }

        // Delete Small Image if not exists in Folder
        if (file_exists($small_image_path . $product->image)) {
            unlink($small_image_path . $product->image);
        }

        // Delete Image from Products table
       Product::where(['id' => $id])->update(['image' => '']);
        return redirect()->back()->with('success', 'Product image has been deleted successfully');

    }






       public function product_attribute($id){
           $product =Product::find($id);
           return view('admin.products.product_attribute',compact('product'));

       }



    public function add_multiple_images($id){
        $product =Product::find($id);
        return view('admin.multiple_images.view',compact('product'));
     }










}
