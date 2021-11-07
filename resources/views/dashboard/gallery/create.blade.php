@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')
@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
    <script>
        //Initialize Select2 Elements
        var loc = location.search;
        //alert(loc);
        if(loc == '?type=certificates')
        {
            var statusInput = $('<input>').attr({
                type: 'hidden',
                id: 'status',
                name: 'status'
            }).appendTo('form');
            statusInput.val('certificates');
        }
        else if(loc == '?type=partners')
        {
            var statusInput = $('<input>').attr({
                type: 'hidden',
                id: 'status',
                name: 'status'
            }).appendTo('form');
            statusInput.val('partners');
        }
        else if(loc == '?type=clients')
        {
            var statusInput = $('<input>').attr({
                type: 'hidden',
                id: 'status',
                name: 'status'
            }).appendTo('form');
            statusInput.val('clients');
        }
        else if(loc == '?type=projects')
        {
            var statusInput = $('<input>').attr({
                type: 'hidden',
                id: 'status',
                name: 'status'
            }).appendTo('form');
            statusInput.val('projects');
        }
        else if(loc == '?type=offers')
        {
            var statusInput = $('<input>').attr({
                type: 'hidden',
                id: 'status',
                name: 'status'
            }).appendTo('form');
            statusInput.val('offers');
        }
        else if(loc == '?type=portfolio')
        {
            var statusInput = $('<input>').attr({
                type: 'hidden',
                id: 'status',
                name: 'status'
            }).appendTo('form');
            statusInput.val('portfolio');
        }


    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Gallery
            <small>Upload Images to Gallery</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/gallery')}}">Gallery</a></li>
            <li class="active">Upload Images to Gallery</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{--{{adminUrl('upload-to-gallery')}}--}} {{adminUrl('gallery')}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('post')
            <input type="hidden" name="created_by">
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Upload Images To Gallery</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Image</label>
                                    <input type="file" class="form-control" name="image_id[]" multiple id="exampleInputEmail1" placeholder="Enter button text">
                                    <p class="help-block"> Upload Multiple Images To Gallery </p>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <div class="col-lg-12">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Arabic Side -->
            </div>
        </form>
    </section>

@endsection
