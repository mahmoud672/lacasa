@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')

@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
    <script>
        $(function () {
            $('#example1').DataTable()
            $('#example2').DataTable({
                'paging'      : true,
                'lengthChange': false,
                'searching'   : false,
                'ordering'    : true,
                'info'        : true,
                'autoWidth'   : false
            })
        })

        /*$(function () {
            // Summernote
            $('.textarea').summernote()
        })*/
        $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('og_description');
        });
    var is_main_page=$("#is_main_page").val();
    var og_url=$("#og_url");
    //var page_name=$("#page_name");
    if(is_main_page==1){
       // og_url.attr('disabled','disabled');
        //page_name.attr('disabled','disabled');
    }else{
        //og_url.removeAttr('disabled');
        //page_name.removeAttr('disabled');
    }
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Website Pages
            <small>Edit Website Page</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Website Page</a></li>
            <li class="active">Edit Website Page</li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
            {{--<div class="box box-primary" style="padding: 15px">--}}
            {{--<div class="box-header with-border">
                <h3 class="box-title">All Features Info</h3>
                <a href="" class="btn btn-warning pull-right"><i class="fa fa-plus"></i> Add New Feature </a>
            </div>--}}
            {{--@include('dashboard.layouts.messages')--}}
            <!-- /.box-header -->
                <!-- form start -->

                <section class="content">
                    @include('dashboard.layouts.messages')
                    <form role="form" action="{{adminUrl("seo/website-pages/edit/".$page->id)}}" enctype="multipart/form-data" method="post">
                        {{csrf_field()}}
                        @method('put')
                        <input type="hidden"name="is_main_page"value="{{$page->is_main_page}}"id="is_main_page">
                        <div class="row">
                            <!-- English Side -->
                            <div class="col-md-12">
                                <div class="box box-primary">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Edit Open Graph Info</h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <!-- form start -->
                                    <div class="box-body">
                                        <div class="form-group">

                                            <div class="col-lg-6">
                                                <label for="exampleInputEmail1"> Page Name</label>
                                                <input type="text" class="form-control" name="name" disabled id="exampleInputEmail1" placeholder="Enter Page Name" value="{{$page->name}}">
                                                <p class="help-block">Enter Page Name</p>
                                            </div>

                                            <div class="col-lg-6">
                                                <label for="exampleInputEmail1"> URL</label>
                                                <input type="text" class="form-control" name="url"  disabled id="og_url" placeholder="Enter Page URL" value="{{$page->url}}">
                                                <p class="help-block">Url of Page on website</p>
                                            </div>

                                            <div class="col-lg-6 mt-5">
                                                <label for="exampleInputEmail1">Page Description</label>
                                                <textarea class="textarea" placeholder="Enter Page Description" name="description"
                                                          style="width: 100%; resize: none; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">{!! strip_tags($page->description) !!}</textarea>
                                                <p class="help-block">Enter Page Description if exist</p>
                                            </div>

                                            <div class="col-lg-6 mt-5">
                                                <label for="exampleInputEmail1">Page Keywords</label>
                                                <textarea class="textarea" placeholder="Enter Page keywords" name="keywords"
                                                          style="width: 100%; resize: none; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">{{$page->key_words}}</textarea>
                                                <p class="help-block">Please Enter page key words if exist and put Comma(,) after every keyword </p>
                                            </div>
                                            <div class="col-lg-6 mt-5">
                                                <label for="exampleInputEmail1">Header Code</label>
                                                <textarea class="textarea" placeholder="Enter Page Header Customized Code" name="header_code"
                                                          style="width: 100%; resize: none; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">{{$page->header_code}}</textarea>
                                                <p class="help-block">Put <strong>Javascript Code, Google Analytics Code, Google Tag Manager </strong>or any other codes in header of page </p>
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
                            {{--<div class="col-md-6 arab_dir">
                            </div>--}}
                        </div>
                    </form>
                </section>
                {{--</div>--}}
            </div>
        </div>
    </section>

@endsection
