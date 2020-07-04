

@extends('layouts.adminLayout.admin_design')
{{--@section('title') Admin Category @endsection--}}
@section('content')


    <div id="content">
        <div id="content-header">
            <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Category</a> <a href="#" class="current">Edit Category</a> </div>
            <h1>Update-Category</h1>
        </div>

        @if(Session::has('error'))
            <div class="alert alert-error alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>{!! session('error') !!}</strong>
            </div>
        @endif
        @if(Session::has('success'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>{!! session('success') !!}</strong>
            </div>
        @endif

        <div class="container-fluid"><hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
                            <h5>Update-Category</h5>



                        </div>
                        <div class="widget-content nopadding">

                            <form class="form-horizontal" method="post" action="{{route('update.category',$category->id)}}" name="edit_category" id="edit_category" novalidate="novalidate">
                                @csrf



                                <div class="control-group">
                                    <label class="control-label">Category Name</label>
                                    <div class="controls">
                                        <input value="{{$category->name}}" type="text" name="category_name" id="category_name">
                                    </div>
                                </div>



                                <div class="control-group">
                                    <label class="control-label">Category Level</label>
                                    <div class="controls">
                                        <select name="parent_id" style="width:220px;">
                                            <option value="0">Main Category</option>
                                            @foreach(App\Category::all() as $cat)

                                                <option value="{{ $cat->id }}"
                                                        @if($cat->id == $categoryDetails->parent_id)
                                                        selected @endif>{{ $cat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>



                                <div class="control-group">
                                    <label class="control-label">Description</label>
                                    <div class="controls">
                                        <textarea name="description">{{$category->description}}</textarea>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">URL</label>
                                    <div class="controls">
                                        <input value="{{$category->url}}" type="text" name="url" id="url">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Meta Title</label>
                                    <div class="controls">
                                        <input value="{{$category->meta_title}}" type="text" name="meta_title" id="meta_title">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Meta Description</label>
                                    <div class="controls">
                                        <input value="{{$category->description}}" type="text" name="meta_description" id="meta_description">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Meta Keywords</label>
                                    <div class="controls">
                                        <input value="{{$category->meta_keywords}}" type="text" name="meta_keywords" id="meta_keywords">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Enable</label>
                                    <div class="controls">
                                        <input type="checkbox" name="status" id="status" @if($categoryDetails->status == "1") checked @endif value="1">
                                    </div>
                                </div>
                                {{-- jquery.uniform.js->654 line,diseble --}}

                                <div class="form-actions">
                                    <input type="submit" value="Update" class="btn btn-success">
                                </div>
                            </form>


                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>






@endsection
