<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product_image;
use Illuminate\Support\Facades\Input;
use Image;

class Product_image_Controller extends Controller
{

    public function image_store(Request $request , $id){


        if ($request->hasFile('image')) {
            $files = $request->file('image');

            foreach ($files as $file) {
                $images = new Product_image();
                $images->product_id = $id;

                $extension = $file->getClientOriginalExtension();
                $filename = rand(111, 99999) . '.' . $extension;

                $large_image_path = 'images/backend_images/products/large/' . $filename;
                $medium_image_path = 'images/backend_images/products/medium' . '/' . $filename;
                $small_image_path = 'images/backend_images/products/small' . '/' . $filename;

                Image::make($file)->save($large_image_path);
                Image::make($file)->resize(600, 600)->save($medium_image_path);
                Image::make($file)->resize(300, 300)->save($small_image_path);

                $images->image = $filename;
                $images->save();
            }

            return back()->with('success', 'Images Added Successfully');

        }


    }



    public function Product_view_images(){
        $images = Product_image::where('$product_id')->first();
        return redirect()->route('image_store',compact('images'));

    }


    public function delete_image($id){
        $image = Product_image::where('id',$id)->first();

        //get product Image Path

        $large_image_path = 'images/backend_images/products/large/';
        $medium_image_path = 'images/backend_images/products/medium/';
        $small_image_path = 'images/backend_images/products/small/';


        // Delete Large Image if not exists in Folder

        if (file_exists($large_image_path . $image->image)) {
            unlink($large_image_path . $image->image);
        }

        // Delete Medium Image if not exists in Folder
        if (file_exists($medium_image_path . $image->image)) {
            unlink($medium_image_path . $image->image);
        }

        // Delete Small Image if not exists in Folder
        if (file_exists($small_image_path . $image->image)) {
            unlink($small_image_path . $image->image);
        }

        $image->delete();
        return back()->with('error', 'Image Deleted Successfully ');

    }







}
