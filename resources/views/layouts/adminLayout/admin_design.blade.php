<!DOCTYPE html>
<html lang="en">
<head>
    <title>Matrix Admin</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="{{asset('css/backend_css/bootstrap.min.css')}}" />
    <link rel="stylesheet" href="{{asset('css/backend_css/bootstrap-responsive.min.css')}}" />

    {{--    product.blade.php te image ar form ar jonno,design ar jonna--}}
    <link rel="stylesheet" href="{{asset('css/backend_css/uniform.css')}}" />
    {{--    product.blade.php te image ar form ar jonno,design ar jonna--}}



    <link rel="stylesheet" href="{{asset('css/backend_css/fullcalendar.css')}}" />
    <link rel="stylesheet" href="{{asset('css/backend_css/matrix-style.css')}}" />
    <link rel="stylesheet" href="{{asset('css/backend_css/matrix-media.css')}}" />
    {{-- Admin datatable ,pagination,search--}}
    <link rel="stylesheet" href="{{asset('css/backend_css/select2.css')}}" />
    {{-- Admin datatable ,pagination,search--}}
    <link href="{{asset('fonts/backend_fonts/css/font-awesome.css')}}" rel="stylesheet" />
    <link rel="stylesheet" href="{{asset('css/backend_css/jquery.gritter.css')}}" />
    {{-- sweetAlert 1.1.3 --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css " />
    {{-- sweetAlert End --}}


    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>


<div id="app">

@include('layouts.adminLayout.admin_header')
@include('layouts.adminLayout.admin_sidebar')
@yield('content')
@include('layouts.adminLayout.admin_footer')


</div>
<!--end-Footer-part-->





<script src="{{asset('js/backend_js/jquery.min.js')}}"></script>
<script src="{{asset('js/backend_js/jquery.ui.custom.js')}}"></script>
<script src="{{asset('js/backend_js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/backend_js/jquery.uniform.js')}}"></script>
<script src="{{asset('js/backend_js/select2.min.js')}}"></script>
{{-- Admin datatable ,pagination,search--}}
<script src="{{asset('js/backend_js/jquery.dataTables.min.js')}}"></script>
{{-- Admin datatable ,pagination,search--}}
<script src="{{asset('js/backend_js/jquery.validate.js')}}"></script>
<script src="{{asset('js/backend_js/matrix.js')}}"></script>
<script src="{{asset('js/backend_js/matrix.form_validation.js')}}"></script>
{{-- Admin datatable ,pagination,search--}}
<script src="{{asset('js/backend_js/matrix.tables.js')}}"></script>
{{-- Admin datatable ,pagination,search--}}


{{--sweet Alert--}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
{{--sweet Alert--}}









</body>
</html>
