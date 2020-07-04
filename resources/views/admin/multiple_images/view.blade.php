
@extends('layouts.adminLayout.admin_design')
{{--@section('title') Admin Category @endsection--}}
@section('content')


    <div id="content">
        <div id="content-header">
            <div id="breadcrumb"><a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>
                    Home</a> <a href="#">Products</a> <a href="#" class="current">Product-Attribute</a></div>
            <h1>Product-Attribute</h1>
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
                            <h5>Product-Attribute</h5>


                        </div>
                        <div class="widget-content nopadding">

                            <form action="{{route('image_store',$product->id)}}" class="form-horizontal" method="post" enctype = "multipart/form-data"
                                   name="product-image"
                                  id="product-image" novalidate="novalidate">
                                @csrf


                                <input name="product_id" type="hidden" value="{{$product->id}}">

                                <div class="control-group">
                                    <label class="control-label">Product Name</label>
                                    <div class="controls">
                                        <input value="{{$product->product_name}}" type="text" disabled>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Product Code</label>
                                    <div class="controls">
                                        <input value="{{$product->product_code}}" type="text" disabled>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Product color</label>
                                    <div class="controls">
                                        <input value="{{$product->product_color}}" type="text" disabled>
                                    </div>
                                </div>





                                {{-- Multiple Images --}}
                                <div class="control-group">
                                    <label class="control-label"> Alternate Image(s)</label>
                                    <div class="controls">
                                        <input type="file" name="image[]" id="image" multiple="multiple">
                                    </div>
                                </div>
                                {{-- Multiple Images End --}}


                                <div class="form-actions">
                                    <input type="submit" value="Add" class="btn btn-success">
                                </div>
                            </form>


                        </div>
                    </div>
                </div>
            </div>




            {{--Product Image view--}}

            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title"><span class="icon"> <i class="icon-info-sign"></i> </span>
                            <h5>Product-Multiple Image</h5>


                        </div>
                        <div class="widget-content nopadding">

                            <table class="table table-bordered data-table">
                                <thead>
                                <tr>
                                    <th>Image ID</th>
                                    <th>Product Id</th>
                                    <th>Image</th>
                                    <th>Action</th>
                                </tr>
                                </thead>

                                <tbody>


                                @foreach ($product->images as $image)

                                    <tr class="gradeX">
                                        <td><p>{{$image->id}}</td>
                                        <td><p>{{$image->product_id}}</p></td>
                                        <td>
                                            @if(empty($image->image))

                                                <img style="width:60px;" src="{{ asset('images/backend_images/products/small/fake_avatar/p6.jpg')}}">

                                            @else
                                                <img style="width:60px;" src="{{ asset('images/backend_images/products/small/'.$image->image) }}">

                                            @endif
                                        </td>
                                        <td class="center">

{{--                                                <a href="{{route('delete_image',$image->id)}}" class="btn btn-danger btn-mini">Delete</a>--}}
                                            <a rel="{{$image->id}}" rel1="delete-image"  href="javascript:" class="btn btn-danger btn-mini deleteRecord">Delete</a>
                                             &nbsp;

                                        </td>

                                    </tr>





                                @endforeach

                                </tbody>



                            </table>


                        </div>
                    </div>
                </div>
            </div>




        </div>
    </div>

@endsection


