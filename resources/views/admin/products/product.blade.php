@extends('layouts.adminLayout.admin_design')
@section('content')

    <div id="content">
        <div id="content-header">
            <div id="breadcrumb"><a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>
                    Home</a> <a href="#">Product</a> <a href="#" class="current">Add Product</a></div>
            <h1>Add-Product</h1>
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
                            <h5>Add-Product</h5>

                        </div>
                        <div class="widget-content nopadding">

                            <form enctype = "multipart/form-data" class="form-horizontal" method="post" action="{{route('add.product')}}"
                                  name="add_product" id="add_product" novalidate="novalidate">
                                @csrf


                                <div class="control-group">
                                    <label class="control-label">Under Category </label>
                                    <div class="controls">
                                        <select name="category_id" id="category_id" style="width:220px;">
                                            <option value='' selected disabled>Select</option>
                                            @foreach(App\Category::all() as $cat)
                                                <option value="{{$cat->id}}">
                                                    {{ $cat->parent ? '--' . $cat->name : $cat->name }}
                                                </option>
                                            @endforeach
                                        </select>

                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Product Name</label>
                                    <div class="controls">
                                        <input type="text" name="product_name" id="product_name">
                                    </div>
                                </div>




                                <div class="control-group">
                                    <label class="control-label">Product Code</label>
                                    <div class="controls">
                                        <input type="text" name="product_code" id="product_code">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Product Color</label>
                                    <div class="controls">
                                        <input type="text" name="product_color" id="product_color">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Description</label>
                                    <div class="controls">
                                        <textarea name="description"></textarea>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Care</label>
                                    <div class="controls">
                                        <input type="text" name="care" id="care">
                                    </div>
                                </div>


                                {{--                                <div class="control-group">--}}
                                {{--                                    <label class="control-label">sleeve</label>--}}
                                {{--                                    <div class="controls">--}}
                                {{--                                        <input type="text" name="sleeve" id="sleeve">--}}
                                {{--                                    </div>--}}
                                {{--                                </div>--}}



                                {{--                                <div class="control-group">--}}
                                {{--                                    <label class="control-label">pattern</label>--}}
                                {{--                                    <div class="controls">--}}
                                {{--                                        <input type="text" name="pattern" id="pattern">--}}
                                {{--                                    </div>--}}
                                {{--                                </div>--}}


                                <div class="control-group">
                                    <label class="control-label">price</label>
                                    <div class="controls">
                                        <input type="text" name="price" id="price">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Weight (g)</label>
                                    <div class="controls">
                                        <input type="text" name="weight" id="weight">
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label">Image</label>
                                    <div class="controls">
                                        <input type="file" name="image" id="image">
                                    </div>
                                </div>






   {{-- form-common.html ar uniform.min.css admin_design.blade.php ta add korbo--}}
   {{-- uniform.min.css add korbo bootstrap-responsive.min.css ar niche--}}



                                {{--                                <div class="control-group">--}}
                                {{--                                    <label class="control-label">Video</label>--}}
                                {{--                                    <div class="controls">--}}
                                {{--                                        <div id="uniform-undefined"><input name="video" id="video" type="file"></div>--}}
                                {{--                                    </div>--}}
                                {{--                                </div>--}}


                                <div class="control-group">
                                    <label class="control-label">Feature Item</label>
                                    <div class="controls">
                                        <input type="checkbox" name="feature_item" id="feature_item" value="1">
                                    </div>
                                </div>
                                {{-- jquery.uniform.js->654 line,diseble --}}

                                <div class="control-group">
                                    <label class="control-label">Status</label>
                                    <div class="controls">
                                        <input type="checkbox" name="status" id="status" value="1">
                                    </div>
                                </div>

                                {{-- jquery.uniform.js->654 line,diseble --}}

                                <div class="form-actions">
                                    <input type="submit" value="submit" class="btn btn-success">
                                </div>
                            </form>


                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


@stop
