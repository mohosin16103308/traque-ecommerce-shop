@extends('layouts.adminLayout.admin_design')
{{--@section('title') Admin Category @endsection--}}
@section('content')





  <div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Category</a> <a href="#" class="current">View Category</a> </div>
      <h1>View Categories</h1>
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
              <h5>View Categories</h5>
            </div>
            <div class="widget-content nopadding">
              <table class="table table-bordered data-table">
                <thead>
                <tr>
                  <th>Category ID</th>
                  <th>Sub-Category ID(Parent Id)</th>
                  <th>Category Name</th>
                  <th>Category Level</th>
                  <th>Category Status(0 or 1)</th>
                  <th>Category Url</th>
                 <th>Action</th>
                </tr>
                </thead>

                <tbody>
                @foreach($categories as $category)

                <tr class="gradeX">
                  <td>{{$category->id}}</td>
                  <td>{{$category->parent_id}}</td>
                  <td>{{$category->name}}</td>
                  <td>{{$category->parent_id}}</td>
                  <td>{{$category->status}}</td>
                  <td>{{$category->url}}</td>

                  <td class="center">

                    <a href="{{route('edit.category',$category->id)}}" class="btn btn-mini btn-success">Edit</a> &nbsp;


                    {{--<a href="{{route('delete.category',$category->id)}}" class="btn btn-mini btn-danger">Delete</a> --}}
                {{--sweetalert--}}
                      <a rel="{{$category->id}}" rel1="delete-category"  href="javascript:" class="btn btn-danger btn-mini deleteRecord">Delete</a>
                      {{--sweetalert End --}}
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

@stop


