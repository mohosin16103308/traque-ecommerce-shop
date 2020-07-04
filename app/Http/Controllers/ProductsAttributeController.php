<?php

namespace App\Http\Controllers;

use App\Product_attribute;
use Illuminate\Http\Request;


class ProductsAttributeController extends Controller
{



  public function product_store_attribute(Request $request,$id){
      foreach ($request['sku'] as $key => $val){


        //Prevent duplicate SKU check
        $attrCountSKU = Product_attribute::where(['sku' => $val])->count();
        if ($attrCountSKU > 0) {
          return back()->with('error', 'SKU already exists. Please add another SKU.');
        }

        //Prevent duplicate size check

        $attrCountSizes = Product_attribute::where(['product_id' => $id, 'size' => $request['size'][$key]])->count();
        if ($attrCountSizes > 0) {
          return back()->with('error', '"' . $request['size'][$key] . '" Size already exists. Please add another Size.Thank You');
        }


        $attributes =new Product_attribute;
          $attributes->product_id=$id;
          $attributes->sku = $request['sku'][$key];
          $attributes->size = $request['size'][$key];
          $attributes->price = $request['price'][$key];
          $attributes->stock = $request['stock'][$key];
          $attributes->save();
          }
        return back()->with('success', 'Product Attribute has been Added ');
     }


     public  function product_view_attribute(){
        $attributes = Product_attribute::where('$product_id')->first();
       return redirect()->route('product_store_attribute',compact('attributes'));

     }


    public function deleteattribute($id){
        $attribute=Product_attribute::where('id',$id)->first();
        $attribute->delete();
        return back()->with('error', 'Product Attribute Deleted Successfully ');

       }

   public  function updateattribute(Request $request,$id){
     $attribute=Product_attribute::where('id',$id)->first();
     $attribute->price = $request['price'];
     $attribute->stock = $request['stock'];
     $attribute->save();
     return back();

   }








}
