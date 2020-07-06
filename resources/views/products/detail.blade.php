@extends('layouts.frontLayout.front_design')
@section('content')


    <section>
        <div class="container">
            <div class="row">


                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Category</h2>

                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                            <div class="panel panel-default">
                                @foreach($categories as $cat)
                                    @if($cat->status=='1')
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordian" href="#{{$cat->id}}">
                                                    <span class="badge pull-right"><i class="fa fa-plus"></i></span>

                                                    <a>{{$cat->name}}</a>

                                                </a>
                                            </h4>
                                        </div>
                                    @endif
                                    <div id="{{$cat->id}}" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                @foreach($cat->categories as $subcat)
                                                    @if($subcat->status=='1')
                                                        <li>
                                                            <a href="{{route('listing',$cat->url)}}">{{$subcat->name}} </a>
                                                        </li>
                                                    @endif
                                                @endforeach

                                            </ul>
                                        </div>
                                    </div>

                                @endforeach

                            </div>

                        </div>


                        <div class="brands_products"><!--brands_products-->
                            <h2>Brands</h2>
                            <div class="brands-name">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href=""> <span class="pull-right">(50)</span>Acne</a></li>
                                    <li><a href=""> <span class="pull-right">(56)</span>Grüne Erde</a></li>
                                    <li><a href=""> <span class="pull-right">(27)</span>Albiro</a></li>
                                    <li><a href=""> <span class="pull-right">(32)</span>Ronhill</a></li>
                                    <li><a href=""> <span class="pull-right">(5)</span>Oddmolly</a></li>
                                    <li><a href=""> <span class="pull-right">(9)</span>Boudestijn</a></li>
                                    <li><a href=""> <span class="pull-right">(4)</span>Rösch creative culture</a></li>
                                </ul>
                            </div>
                        </div><!--/brands_products-->

                        <div class="price-range"><!--price-range-->
                            <h2>Price Range</h2>
                            <div class="well">
                                <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600"
                                       data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br/>
                                <b>$ 0</b> <b class="pull-right">$ 600</b>
                            </div>
                        </div><!--/price-range-->

                        <div class="shipping text-center"><!--shipping-->
                            <img src="{{asset('images/frontend_images/home/shipping.jpg')}}" alt=""/>
                        </div><!--/shipping-->

                    </div>
                </div>


                <div class="col-sm-9 padding-right">
                    <div class="product-details">

                        <div class="col-sm-5">

                            {{-- Main Image and zoom --}}
                            <div class="view-product">
                                <div class="easyzoom easyzoom--overlay easyzoom--with-thumbnails">
                                    @if(empty($product->image))
                                        <a href="{{ asset('images/backend_images/products/large//small/fake_avatar/p6.jpg') }}">
                                            <img style="width: 350px;" class="mainImage"
                                                 src="{{ asset('images/backend_images/products/large//small/fake_avatar/p6.jpg') }}"
                                                 alt=""/>
                                        </a>
                                    @else

                                        <a href="{{ asset('images/backend_images/products/large/'.$product->image) }}">
                                            <img style="width: 350px;" class="mainImage"
                                                 src="{{ asset('images/backend_images/products/small/'.$product->image) }}"
                                                 alt=""/>
                                        </a>
                                    @endif

                                </div>

                            </div>
                            {{--   Main Image End--}}


                            <div id="similar-product" class="carousel slide" data-ride="carousel">

                                <div class="carousel-inner">

                                    <div class="item active thumbnails ">
                                        @foreach($product->images as $altimage)


                                            <a href="{{asset('images/backend_images/products/large/'.$altimage->image)}}"
                                               data-standard="{{asset('images/backend_images/products/small/'.$altimage->image)}}">

                                                <img class="changeImage" style="width: 80px; cursor: pointer;"
                                                     src="{{asset('images/backend_images/products/small/'.$altimage->image)}}"
                                                     alt="">

                                            </a>


                                        @endforeach

                                    </div>


                                </div>

                            </div>

                        </div>


                        <div class="col-sm-7">
                            <div class="product-information"><!--/product-information-->


                                <h2>{{$product->product_name}}</h2>
                                <p>code: {{$product->product_code}}</p>


                <p>
                  <select style="width:150px;" id="product_size">
                    <option>Select Size</option>
                    @foreach($prices as $price)

                          <option value="{{ $price->size }}">{{ $price->size }}</option>

                          @endforeach
                  </select>

                </p>

                <span>
         <span>



                $  <span id="attr_price_on_size" >{{ $product->price }} </span><br>


           </span>



    <label>Quantity:</label>
    <input type="text" value="1"/>

    <button type="button" id="cart_btn" class="btn btn-fefault cart">
     <i class="fa fa-shopping-cart"></i>
     Add to cart
    </button>

    </span>


                                <p>
                                    <b>Availability:</b> @if($first_attr_price->stock > 0) <span class="product_stock">In Stock</span>@else <span class="product_stock">Sold Out</span>@endif
                                </p>
                                <p><b>Condition:</b> New</p>
                                <p><b>Brand:</b> E-SHOPPER</p>

                            </div>
                        </div>
                    </div>


                    <div class="category-tab shop-details-tab"><!--category-tab-->
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#description" data-toggle="tab">Description</a></li>

                                <li><a href="#care" data-toggle="tab">Material & Care</a></li>
                                <li><a href="#delivery" data-toggle="tab">Delivery Options</a></li>
                                @if(!empty($product->video))
                                    <li>
                                        <a href="#video" data-toggle="tab">Product Video</a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                        <div class="tab-content">

                            <div class="tab-pane active" id="description">

                                <div class="col-sm-12">
                                    <p>

                                        {{$product->description}}
                                    </p>

                                </div>

                            </div>


                            <div class="tab-pane fade" id="care">
                                <div class="col-sm-12">
                                    <p>
                                        {{$product->care}}
                                    </p>

                                </div>

                            </div>


                            <div class="tab-pane fade" id="delivery">
                                <div class="col-sm-12">
                                    <p>
                                        Paypal,Country wise(shipping),Cash on Delivary<br>
                                        Made In Japan
                                    </p>

                                </div>

                            </div>

                            @if(!empty($product->video))
                                <div class="tab-pane fade" id="video">
                                    <div class="col-sm-12">
                                        <video controls width="640" height="480">
                                            <source src="{{ url('videos/'.$product->video)}}" type="video/mp4">
                                        </video>
                                    </div>
                                </div>
                            @endif


                        </div>
                    </div>


                    <div class="recommended_items">
                        <h2 class="title text-center">recommended items</h2>

                        <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">

                            <div class="carousel-inner">
                                <div class="item active">

                                    @foreach($recommended_products as $recommended_product)
                                        <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">

                                                        @if(empty($recommended_product->image))

                                                            <img style="width:150px;"
                                                                 src="{{ asset('images/backend_images/products/small/fake_avatar/p6.jpg')}}">

                                                        @else
                                                            <img style="width:150px;"
                                                                 src="{{ asset('images/backend_images/products/small/'.$recommended_product->image) }}">

                                                        @endif

                                                        <h2>${{$recommended_product->price}}</h2>
                                                        <p>{{$recommended_product->product_name}}</p>
                                                        <a href="{{route('productsdetails',$recommended_product->slug)}}"
                                                           class="btn btn-default add-to-cart"><i
                                                                class="fa fa-shopping-cart"></i>Add to cart</a>
                                                        {{--                                                    <button type="button" class="btn btn-default add-to-cart">--}}
                                                        {{--                                                        <i class="fa fa-shopping-cart"></i>--}}
                                                        {{--                                                        Add to cart</button>--}}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach

                                </div>
                            </div>

                            <a class="left recommended-item-control" href="#recommended-item-carousel"
                               data-slide="prev">
                                <i class="fa fa-angle-left"></i>
                            </a>
                            <a class="right recommended-item-control" href="#recommended-item-carousel"
                               data-slide="next">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </section>



@endsection

@section('js')

<script type="text/javascript">


// **************   Display Product Price Based On Prouct_id and size   ********************************

$('#product_size').on('change',function(e) {

var product_size = e.target.value;
var product_id = {{ $product->id }};


console.log(product_size);
$.ajaxSetup({
  headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
  }
});

$.ajax({

      url:"{{ route('price_display_on_size') }}",
      type:"POST",
      data: {
        product_id : product_id,
        product_size: product_size

       },

      success:function (data) {
          // Below two line is used for testing
        console.log(data.product_att_price.price);
        console.log(data.product_att_price.stock);

      // Checking empty or not
        $("#attr_price_on_size").text(data.product_att_price.price);

           if(data.product_att_price.stock > 0){
            $('.product_stock').text("In Stock");

           }else{
            $('.product_stock').text("Sold Out");
            $("#cart_btn").addClass('disabled');

           }
      }
  });


    });



    </script>


@endsection
