@extends('layouts.adminLayout.admin_design')
@section('content')

    <div id="content">
        <div id="content-header">
            <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Product</a> <a href="#" class="current">View Product</a> </div>
            <h1>View Product</h1>
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
                        <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                            <h5>View Product</h5>
                        </div>
                        <div class="widget-content nopadding">
                            <table class="table table-bordered data-table">
                                <thead>
                                <tr>
                                    <th>Product ID</th>
                                    <th>Category Id</th>
                                    <th>Category Name</th>
                                    <th>Product Name</th>
                                   <th>Product Code</th>
                                   <th>Product Color</th>
                                    <th>Product Price</th>
                                   <th>Product image</th>
                                   <th>Feature item</th>
                                  <th>Status(0 or 1)</th>
                                   <th>Action</th>
                                </tr>
                                </thead>

                                <tbody>
                                @foreach($products as $product)

                                    <tr class="gradeX">
                                        <td>{{$product->id}}</td>
                                        <td>{{$product->category_id}}</td>
                                        <td>{{$product->category->name}}</td>
                                        <td>{{$product->product_name}}</td>
                                        <td>{{$product->product_code}}</td>
                                        <td>{{$product->product_color}}</td>
                                        <td>{{$product->price}}</td>
                                        <td>
{{--                          <img src="{{ asset('images/backend_images/products/small/'.$product->image) }}" style="width:60px;">--}}

                                            @if(empty($product->image))

                                               <img style="width:60px;" src="{{ asset('images/backend_images/products/small/fake_avatar/p6.jpg')}}">

                                            @else
                                                <img style="width:60px;" src="{{ asset('images/backend_images/products/small/'.$product->image) }}">

                                            @endif


                                        </td>

                                       <td>
                                           @if($product->feature_item===1)
                                              <h6 class="text-success font-weight-bold">True</h6>

                                               @else
                                               <h6 class="text-warning font-weight-bold">False</h6>
                                               @endif
                                       </td>
                                       <td>
                                           @if($product->status===1)
                                               <h6 class="text-success font-weight-bold">1</h6>

                                           @else
                                               <h6 class="text-warning font-weight-bold">0</h6>
                                           @endif

                                       </td>

                                        <td class="center">
                                            <a href="#exampleModal{{$product->id}}" data-toggle="modal" data-target="#exampleModal{{$product->id}}" class="btn btn-success btn-mini" title="View Product">View</a>
                                            <a href="{{route('edit.product',$product->id)}}" class="btn btn-primary btn-mini ">Edit</a> &nbsp;
                                            <a href="{{route('product_attribute',$product->id)}}" class="btn btn-mini btn-warning">Add Attribute</a> &nbsp;
                                            <a href="{{route('add_multiple_images',$product->id)}}" class="btn btn-mini btn-info">Multiple Image</a> &nbsp;
                                            {{-- sweetalert--}}
                                            <a rel="{{$product->id}}" rel1="delete-product"  href="javascript:" class="btn btn-danger btn-mini deleteRecord">Delete</a>
                                            {{-- sweetalert End --}}

                                        </td>

                                    </tr>


                                    <div class="modal fade" id="exampleModal{{$product->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">{{$product->product_name}}</h5>
{{--                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
{{--                                                                            <span aria-hidden="true">&times;</span>--}}
{{--                                                                        </button>--}}
                                                </div>
                                                <div class="modal-body">

                                                    <p>Product ID : <b>{{$product->id}} </b></p>
                                                    <p>Category ID : <b>{{$product->category_id}}</b> </p>
                                                    <p>Product Code : <b>{{$product->product_code}}</b> </p>
                                                    <p>Product Color : <b>{{$product->product_color}}</b> </p>
                                                    <p>PRICE :<b>$ {{$product->price}}</b> </p>
                                                    <p>Fabric: </p>
                                                    <p>Material: </p>
                                                    Description :  {!! $product->body_html !!}

                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger btn-mini" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                @endforeach
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>







@stop





