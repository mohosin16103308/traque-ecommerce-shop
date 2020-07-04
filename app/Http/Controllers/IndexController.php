<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use App\Product_attribute;



use Illuminate\Http\Request;

class IndexController extends Controller
{

  public  function index(){

   //$productsAll = Product::where(['feature_item'=> 1,'status'=>1])->get();
   $productsAll = Product::all();
   $categories = Category::with('categories')->where(['parent_id'=> 0])->get();
        //  dd($categories);
   return view('index',compact('productsAll','categories'));

  }


  public function listing($url){

    $listing_categories = Category::where(['url'=>$url,'status'=>1])->first();

    if($listing_categories){
      $products_listing = Product::where(['category_id'=>$listing_categories->id])->get();
    }
    else{
      $categories = Category::with('categories')->where(['parent_id'=> 0,'status'=>1])->get();
      return view('error',compact('categories'));
    }
    $categories = Category::with('categories')->where(['parent_id'=> 0])->get();
    return view('products.listing',compact('categories','products_listing','listing_categories'));
  }




    public function productsdetails(Product $product)
    {
        // Product Detail Page | Recommended/Related Items/YOU MAY ALSO LIKE/Related Products
        $recommended_products = Product::where(['category_id' => $product->category_id])->get();
        // Product Detail Page | Recommended/Related Items/YOU MAY ALSO LIKE/Related Products End


        $categories = Category::with('categories')->where(['parent_id'=> 0,'status'=>1])->get();
        $productAltImages =Product::with('images')->get();
        $prices = Product_attribute::where(['product_id' => $product->id])->get();
        $first_attr_price = Product_attribute::where(['product_id' => $product->id])->first();

        return view('products.detail',compact('categories','product','productAltImages','recommended_products','prices','first_attr_price'));

    }




    public function price_display_on_size(Request $request){

        $product_id = $request->product_id;
        $product_size = $request->product_size;

    //    return  response()->json([
    //         'product_att_price' => $product_size
    //     ]);

        $product_att_price = Product_attribute::where('size' , $product_size)
                                              ->where('product_id' , $product_id)->first();

            if(!empty($product_att_price)){
                return response()->json([
                    'product_att_price' => $product_att_price
                ]);
            }else{
                return response()->json([
                    'product_att_price' => null
                ]);
            }
    }









}
