<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Home | E-Shopper</title>


  <link href="{{ asset('css/frontend_css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('css/frontend_css/font-awesome.min.css') }}" rel="stylesheet">
  <link href="{{ asset('css/frontend_css/prettyPhoto.css') }}" rel="stylesheet">
  <link href="{{ asset('css/frontend_css/price-range.css') }}" rel="stylesheet">
  <link href="{{ asset('css/frontend_css/animate.css') }}" rel="stylesheet">
  <link href="{{ asset('css/frontend_css/main.css') }}" rel="stylesheet">
  <link href="{{ asset('css/frontend_css/responsive.css') }}" rel="stylesheet">
  <script src="{{ asset('js/frontend_js/jquery.js') }}"></script>
  <link href="{{ asset('css/frontend_css/easyzoom.css') }}" rel="stylesheet">













  <!--   <script src="js/html5shiv.js"></script> -->
  <!--   <script src="js/respond.min.js"></script> -->





  <link rel="shortcut icon" href="images/ico/favicon.ico">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">







</head>

<body>



{{--    header--}}

@include('layouts.frontLayout.front_header')

{{--   heder End--}}



{{--    content--}}

@yield('content')

{{--    content End--}}



{{--  Footer--}}

@include('layouts.frontLayout.front_footer')

{{--  Footer End--}}



<script src="{{ asset('js/frontend_js/jquery.js') }}"></script>
<script src="{{ asset('js/frontend_js/bootstrap.min.js') }}"></script>
<script src="{{ asset('js/frontend_js/jquery.scrollUp.min.js') }}"></script>
<script src="{{ asset('js/frontend_js/price-range.js') }}"></script>
<script src="{{ asset('js/frontend_js/jquery.prettyPhoto.js') }}"></script>
<script src="{{ asset('js/frontend_js/easyzoom.js') }}"></script>
<script src="{{ asset('js/frontend_js/main.js') }}"></script>


@yield('js')


</body>
</html>
