<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function category(){

        return view('admin.categories.categories');
    }



    public  function addcategory(Request $request){

        $category=New Category();
        $category->parent_id=$request['parent_id'];
        $category->name=$request['category_name'];
        $category->description=$request['description'];
        $category->url=$request['url'];
        $category->meta_title = $request['meta_title'];
        $category->meta_description = $request['meta_description'];
        $category->meta_keywords = $request['meta_keywords'];
        $category->status=$request['status'];

        if (!empty($request['meta_title'])) {
            $category->meta_title = $request['meta_title'];
        } else {

            $category->meta_title = '';
        }

        if (!empty($request['meta_description'])) {
            $category->meta_description = $request['meta_description'];
        } else {

            $category->meta_description = '';
        }

        if (!empty($request['meta_keywords'])) {
            $category->meta_keywords = $request['meta_keywords'];
        } else {

            $category->meta_keywords = '';
        }

        if (empty($request['status'])) {
            $category->status = '0';
        } else {
            $category->status = '1';
        }

        $category->save();
        return back()->with('success','Category Upload Successfully!');


    }


    public  function viewcategory(){

        $categories = Category::all();
        return view('admin.categories.view_categories',compact('categories'));
    }

    public function editcategory($id){
          $category =Category::find($id);
         $categoryDetails = Category::where(['id'=>$id])->first();
        return view('admin.categories.editcategory',compact('category','categoryDetails'));
    }


    public function updatecategory(Request $request,$id){

        $category=Category::where('id',$id)->first();
        //$category->parent_id=$category->id;
        $category->parent_id=$request['parent_id'];
        $category->name=$request['category_name'];
        $category->description=$request['description'];
        $category->url=$request['url'];
        $category->meta_title = $request['meta_title'];
        $category->meta_description = $request['meta_description'];
        $category->meta_keywords = $request['meta_keywords'];
        $category->status=$request['status'];

        if (!empty($request['meta_title'])){
            $category->meta_title = $request['meta_title'];
        } else {

            $category->meta_title = '';
        }

        if (!empty($request['meta_description'])) {
            $category->meta_description = $request['meta_description'];
        } else {

            $category->meta_description = '';
        }

        if (!empty($request['meta_keywords'])) {
            $category->meta_keywords = $request['meta_keywords'];
        } else {

            $category->meta_keywords = '';
        }

        if(empty($request['status'])){
            $status='0';
        }else{
            $status='1';
        }

        $category->save();
        return back()->with('success','Category Update Successfully!');
    }






     public function  deletecategory($id){
         $category=Category::where('id',$id)->first();
         $category->delete();
         //return back();
         return back()->with('success','Category Delete Successfully!');

     }



}
