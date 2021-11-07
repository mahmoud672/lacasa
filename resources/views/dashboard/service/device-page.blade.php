@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')
@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
    <script src="{{assetPath('dashboard/bower_components/ckeditor/ckeditor.js')}}"></script>

    <script>
        $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('editor3');
            CKEDITOR.replace('editor4');
            //bootstrap WYSIHTML5 - text editor
            $('.textarea').wysihtml5()
        })
    </script>
    <script>
        //Initialize Select2 Elements
        $('.select2').select2()
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Device Page
            <small>Edit {{$property}}</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/devices-page?type='.$property)}}">{{$property}}</a></li>
            <li class="active">Edit {{$property}}</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{adminUrl("devices-page/$service->id/edit")}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('patch')
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add {{$property}} Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Title</label>
                                    <input type="text" class="form-control" name="title_en" id="exampleInputEmail1"  placeholder="Enter Service Title" value="{{$service->service_en->title}}">
                                    <p class="help-block">Enter title of {{$property}}</p>
                                </div>

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1">Service Slug</label>
                                    <textarea type="text" class="form-control" name="slug_en" id="exampleInputEmail1" placeholder="Enter Service slug">{{$service->service_en->slug}}</textarea>
                                    <p class="help-block">Enter Title of Service</p>
                                </div>--}}

                                    {{--<div class="col-lg-12">
                                        <label for="exampleInputEmail1">Service Url</label>
                                        <input type="text" class="form-control" name="url" id="exampleInputEmail1" placeholder="Enter Service slug" value="{{$service->url}}">
                                        <p class="help-block">Enter Url of Article which will shown in url <strong>If Url is empty, system will choose article title as url by Default</strong></p>
                                    </div>--}}

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> {{$property}} Description</label>
                                    <textarea class="form-control" name="description_en" id="editor3" placeholder="Enter {{$property}} Description" rows="6">{{$service->service_en->description}}</textarea>
                                    <p class="help-block">Enter Description of {{$property}}</p>
                                </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">{{$property}} Image</label>
                                        <input type="file" class="form-control" name="image_id" id="exampleInputEmail1" placeholder="Enter Service text">
                                        <p class="help-block"> Upload Service main Image </p>
                                    </div>
                                    {{--<div class="col-lg-12">
                                        <label for="exampleInputEmail1">{{$property}} Images</label>
                                        <input type="file" class="form-control" name="images[]" id="exampleInputEmail1" placeholder="Enter Service text"multiple>
                                        <p class="help-block"> Upload Service Images </p>
                                    </div>--}}

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Image Alt Text</label>
                                        <input type="text" class="form-control" name="img_alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{$service->image->alt}}">
                                        <p class="help-block"> Enter Alt Text for Image to show it if image isn't loaded </p>
                                    </div>

                                   {{-- <div class="col-lg-12">
                                        <label for="exampleInputEmail1"> Icon</label>
                                        <input type="file" class="form-control" name="icon" id="exampleInputEmail1" placeholder="Enter Service text">
                                        <p class="help-block"> Upload Service Icon </p>
                                    </div>--}}

                                    {{--<div class="col-lg-12">
                                        <label for="exampleInputEmail1">Icon Alt Text</label>
                                        <input type="text" class="form-control" name="icon_alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{$service->iconImg->alt}}">
                                        <p class="help-block"> Enter Alt Text for Icon to show it if image isn't loaded </p>
                                    </div>--}}

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Video Url</label>
                                    <input type="text" class="form-control" name="video_id" id="exampleInputEmail1" placeholder="Enter Service Title" value="{{$service->video_id ? $service->video->url : ''}}">
                                    <p class="help-block"> Enter Youtube Video Embed Url </p>
                                </div>--}}


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
                <div class="col-md-6 arab_dir">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">أضف بيانات الجهاز</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> عنوان الخدمة</label>
                                    <input type="text" class="form-control" name="title_ar" id="exampleInputEmail1" placeholder="ادخل عنوان الخدمة" value="{{$service->service_ar->title}}">
                                    <p class="help-block">أضف عنوان الخدمة</p>
                                </div>

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1"> نبذة عن الخدمة</label>
                                    <textarea type="text" class="form-control" name="slug_ar" id="exampleInputEmail1" placeholder="ادخل  نبذة عن الخدمة" >{{$service->service_ar->slug}}</textarea>
                                    <p class="help-block">ادخل  نبذة عن الخدمة</p>
                                </div>--}}

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">وصف الخدمة</label>
                                    <textarea class="form-control" name="description_ar" id="editor4" placeholder="ادخل  وصف الخدمة" rows="6">{{$service->service_ar->description}}</textarea>
                                    <p class="help-block">ادخل وصفا دقيقا عن الخدمة</p>
                                </div>

                                {{--<div class="col-lg-12">

                                    <p class="help-block"><a href="{{adminUrl("service/$service->id/show-images")}}" class="btn btn-success">Show Images</a></p>
                                </div>--}}

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
