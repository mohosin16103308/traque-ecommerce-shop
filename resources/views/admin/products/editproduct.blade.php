@extends('layouts.adminLayout.admin_design')
{{--@section('title') Admin Category @endsection--}}
@section('content')


    <div id="content">
        <div id="content-header">
            <div id="breadcrumb"><a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>
                    Home</a> <a href="#">Products</a> <a href="#" class="current">Edit Product</a></div>
            <h1>Update-Product</h1>
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

        <div class="container-fluid">
            <hr>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title"><span class="icon"> <i class="icon-info-sign"></i> </span>
                            <h5>Update-Product</h5>


                        </div>
                        <div class="widget-content nopadding">

                            <form class="form-horizontal" method="post" enctype = "multipart/form-data"
                                  action="{{route('update.product',$product->id)}}" name="edit_category"
                                  id="edit_category" novalidate="novalidate">
                                @csrf

                                  {{--  {{dump($product)}}--}}
                                <div class="control-group">
                                    <label class="control-label">Under Category </label>
                                    <div class="controls">
                                        <select name="category_id" id="category_id" style="width:220px;">
                                            @foreach(App\Category::all() as $cat)
                                                <option @if($product->category_id==$cat->id) selected @endif value="{{$cat->id}}">

                                                    {{ $cat->parent ? '-- ' . $cat->name : $cat->name }}
                                                </option>
                                            @endforeach
                                        </select>

                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Product Name</label>
                                    <div class="controls">
                                        <input value="{{$product->product_name}}" type="text" name="product_name"
                                               id="product_name">
                                    </div>
                                </div>




                                <div class="control-group">
                                    <label class="control-label">Product Code</label>
                                    <div class="controls">
                                        <input value="{{$product->product_code}}" type="text" name="product_code"
                                               id="product_code">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Product color</label>
                                    <div class="controls">
                                        <input value="{{$product->product_color}}" type="text" name="product_color"
                                               id="product_color">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Description</label>
                                    <div class="controls">
                                        <textarea rows="6" name="description">{{$product->description}}</textarea>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Product Care</label>
                                    <div class="controls">
                                        <input value="{{$product->care}}" type="text" name="care" id="care">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Product Price</label>
                                    <div class="controls">
                                        <input value="{{$product->price}}" type="text" name="price" id="price">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Product weight</label>
                                    <div class="controls">
                                        <input value="{{$product->weight}}" type="text" name="weight" id="weight">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Image</label>
                                    <div class="controls">
                                        <input type="file" name="image" id="image">



                                        @if(empty($product->image))

                                            <img style="width:60px;" src="{{ asset('images/backend_images/products/small/fake_avatar/p6.jpg')}}">

                                        @else
                                            <img style="width:60px;" src="{{ asset('images/backend_images/products/small/'.$product->image) }}">|

                                            <a href="{{route('deleteimage',$productDetails->id)}}">Delete</a>

                                        @endif


                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Feature item</label>
                                    <div class="controls">
                                        <input type="checkbox" name="feature_item" id="feature_item"
                                               @if($productDetails->feature_item == "1") checked @endif value="1">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Enable</label>
                                    <div class="controls">
                                        <input type="checkbox" name="status" id="status"
                                               @if($productDetails->status == "1") checked @endif value="1">
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
