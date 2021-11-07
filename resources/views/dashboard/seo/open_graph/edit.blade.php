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
        /*$(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('og_description');
        });*/
    var is_main_page=$("#is_main_page").val();
    var og_url=$("#og_url");
    var page_name=$("#page_name");
    if(is_main_page==1){
        //og_url.attr('disabled','disabled');
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
            Open Graph
            <small>Edit Open Graph</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Open Graph</a></li>
            <li class="active">Edit Open Graph</li>
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
                    <form role="form" action="{{adminUrl("seo/open-graph/edit/".$og->id)}}" enctype="multipart/form-data" method="post">
                        {{csrf_field()}}
                        @method('put')
                        <input type="hidden"name="is_main_page"value="{{$og->page->is_main_page}}"id="is_main_page">
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
                                                <input type="text" class="form-control" disabled name="name" id="page_name" placeholder="Enter Page Name" value="{{ !$og?old('name') : $og->page->name}}">
                                                <p class="help-block">Enter Page Name</p>
                                            </div>

                                            <div class="col-lg-6">
                                                <label for="exampleInputEmail1">og:url</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">{{url('')}}/</span>
                                                    <input type="url" class="form-control" placeholder="Enter Open Graph URL" disabled id="og_url" name="og_url" value="{{!$og? old("og_url"):$og->og_url}}">
                                                </div>
                                                <p class="help-block">If you don't enter any url, the url will be the website domain by default.</p>
                                            </div>

                                            <div class="col-lg-6">
                                                <label for="exampleInputEmail1">og:type</label>
                                                <input type="text" class="form-control" name="og_type" id="exampleInputEmail1" placeholder="Enter og:type" value="{{!$og? old('og_type'): $og->og_type}}">
                                                <p class="help-block">If you don't enter any og:type, the type will be set to the website og:type by default.</p>
                                            </div>

                                            <div class="col-lg-6">
                                                <label for="exampleInputEmail1">og:site_name</label>
                                                <input type="text" class="form-control" name="og_site_name" id="exampleInputEmail1"   placeholder="Enter og:site_name" value="{{!$og? old('og_site_name'):$og->og_site_name}}">
                                                <p class="help-block">If you don't enter any og:site_name, the type will be set to the website og:site_name by default.</p>
                                            </div>

                                            <div class="col-lg-6">
                                                <label for="exampleInputEmail1">og:title</label>
                                                <input type="text" class="form-control" name="og_title" id="exampleInputEmail1" placeholder="Enter og:title" value="{{!$og? old('og_title'):$og->og_title}}">
                                                <p class="help-block">If you don't enter any og:title, the type will be set to the website og:title by default.</p>
                                            </div>
                                            <div class="col-lg-6 mt-5">
                                                <label for="exampleInputEmail1">og:Description</label>
                                                <textarea class="textarea" placeholder="Enter Page Description" name="og_description"id="og_description" style="width: 100%; resize: none; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                                                    {!!!$og? old('og_description'):strip_tags($og->og_description)!!}
                                                </textarea>
                                                <p class="help-block">Enter Open Graph Description if exist <strong>If You didn't enter description, page will take the website og:description by default</strong></p>
                                            </div>
                                            <div class="col-lg-6">
                                                <label for="exampleInputEmail1">og:image</label>
                                                <input type="file" class="form-control" name="og_image" id="exampleInputEmail1" placeholder="Enter og:image" value="{{old('og_image')}}">
                                                <p class="help-block">If you don't enter any og:image, the type will be set to the main website og:image by default.</p>
                                            </div>
                                            {{--<div class="col-lg-6">
                                                <label for="exampleInputEmail1">og:main_image</label>
                                                <input type="file" class="form-control" name="og_main_image" id="exampleInputEmail1">
                                                <p class="help-block">If This Open Graph has an image and you don't want to change the original image upload this image</p>
                                            </div>--}}
                                            <div class="col-lg-6">
                                                <label for="exampleInputEmail1">image url</label>
                                                    <input type="url" class="form-control" placeholder="Enter Image URL"  id="exampleInputEmail1" name="image_url" value="{{!$og?old("image_url"):$og->image_url}}">
                                                <p class="help-block">If you have url for online image, Enter it. If open graph have uploaded image and image url, the system will choose image url by default</p>
                                            </div>
                                            <div class="col-lg-6">
                                                <label for="exampleInputEmail1">Alt Text</label>
                                                <input type="text" class="form-control" placeholder="Enter Alt Text"  id="exampleInputEmail1" name="alt" value="{{!$og->og_image ? old("alt"):$og->open_graph_image->alt}}">
                                                <p class="help-block">Enter Alt Text for Image to show it if image isn't loaded </p>
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
