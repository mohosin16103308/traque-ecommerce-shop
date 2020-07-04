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

              <form class="form-horizontal" method="post" enctype = "multipart/form-data"
                 action="{{route('product_store_attribute',$product->id)}}" name="product-attribute"
                 id="product-attribute" novalidate="novalidate">
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



                <div class="control-group">
                  <label class="control-label"></label>
                  <div class="controls field_wrapper">
                    <input required title="Required" type="text" name="sku[]" id="sku" placeholder="SKU" style="width:120px;">
                    <input required title="Required" type="text" name="size[]" id="size" placeholder="Size" style="width:120px;">
                    <input required title="Required" type="text" name="price[]" id="price" placeholder="Price" style="width:120px;">
                    <input required title="Required" type="text" name="stock[]" id="stock" placeholder="Stock(Number)" style="width:120px;">
                    <a href="javascript:void(0);" class="add_button" title="Add field">Add</a>
                  </div>
                </div>

                <div class="form-actions">
                  <input type="submit" value="Add" class="btn btn-success">
                </div>
              </form>


            </div>
          </div>
        </div>
      </div>




        {{--Product Attribue view--}}

      <div class="row-fluid">
        <div class="span12">
          <div class="widget-box">
            <div class="widget-title"><span class="icon"> <i class="icon-info-sign"></i> </span>
              <h5>Product-Attribute</h5>


            </div>
            <div class="widget-content nopadding">

              <table class="table table-bordered data-table">
                <thead>
                <tr>
                  <th>Attribute ID</th>
                  <th>Product Id</th>
                  <th>SKU</th>
                  <th>size</th>
                  <th>price</th>
                  <th>stock</th>
                  <th>Action</th>
                </tr>
                </thead>

                <tbody>


                @foreach ($product->product_attribute as $attribute)

                  <tr class="gradeX">
                    <td><p>{{$attribute->id}}</td>
                    <td><p>{{$attribute->product_id}}</p></td>
                    <td><p>{{$attribute->sku}}</p></td>
                    <td><p>{{$attribute->size}}</p></td>
                    <td><p>{{$attribute->price}}</p></td>
                    <td><p>{{$attribute->stock}}</p></td>
                    <td class="center">

                      {{-- sweetalert--}}
                      <a href="#exampleModal{{$attribute->id}}" data-toggle="modal" data-target="#exampleModal{{$attribute->id}}" class="btn btn-success btn-mini" title="Update Attribute">Edit</a>
                      <a rel="{{$attribute->id}}" rel1="delete-attribute"  href="javascript:" class="btn btn-danger btn-mini deleteRecord">Delete</a>
                      {{-- sweetalert End --}}&nbsp;

                    </td>

                  </tr>

                  <div class="modal fade" id="exampleModal{{$attribute->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">{{$attribute->id}}</h5>

                        </div>
                        <div class="modal-body">

                          <form action="{{route('updateattribute',$attribute->id)}}" method="post">
                              @csrf

                              <div class="control-group">
                                <label class="control-label">Attribute Price</label>
                                <div class="controls">
                                  <input name="price" value="{{$attribute->price}}" type="number" >
                                </div>
                              </div>

                              <div class="control-group">
                                <label class="control-label">Attribute stock</label>
                                <div class="controls">
                                  <input name="stock" value="{{$attribute->stock}}" type="number" >
                                </div>
                              </div>

                                <input type="submit" value="submit" class="btn btn-success">
                            </form>

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

@endsection
