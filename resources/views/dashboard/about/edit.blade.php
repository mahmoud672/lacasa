@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')
@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')

    <script>
        //Initialize Select2 Elements
        //$('.select2').select2()
        $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('editor1');
            CKEDITOR.replace('editor2');
            CKEDITOR.replace('editor3');
            CKEDITOR.replace('editor4');
            CKEDITOR.replace('editor5');
            CKEDITOR.replace('editor6');
            CKEDITOR.replace('editor7');
            CKEDITOR.replace('editor8');
            CKEDITOR.replace('editor9');
            CKEDITOR.replace('editor10');
            CKEDITOR.replace('editor11');
            CKEDITOR.replace('editor12');
            //bootstrap WYSIHTML5 - text editor
        });

    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            About
            <small>Edit About Website</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/about/edit')}}">About</a></li>
            <li class="active">Edit About Website</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{adminUrl('about/update')}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('patch')
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Edit About Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">About Website</label>
                                    <textarea type="text" class="form-control" name="description_en" id="editor1" placeholder="Enter Mission of Website" rows="5">{{$about->about_en->description}}</textarea>
                                    <p class="help-block">Edit Mission of website</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Mission</label>
                                    <textarea type="text" class="form-control" name="mission_en" id="editor2" rows="6" placeholder="Enter Mission of Website">{{$about->about_en->mission}}</textarea>
                                    <p class="help-block">Edit Mission of website</p>
                                </div>


                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Vision</label>
                                    <textarea type="text" class="form-control" name="vision_en" id="editor3" rows="6" placeholder="Enter Vision of Website" >{{$about->about_en->vision}}</textarea>
                                    <p class="help-block">Edit Vision of website</p>
                                </div>

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1">Goals</label>
                                    <textarea type="text" class="form-control editor1" name="goals_en" id="editor3" rows="6" placeholder="Enter Goals of Website" >{{$about->about_en->goals}}</textarea>
                                    <p class="help-block">Edit Goals of website</p>
                                </div>--}}

                               {{-- <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Approach</label>
                                    <textarea type="text" class="form-control" name="approach_en" id="editor5" rows="6" placeholder="Edit Approach of website" >{{$about->about_en->approach}}</textarea>
                                    <p class="help-block">Edit Approach of website</p>
                                </div>--}}

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Values</label>
                                    <textarea type="text" class="form-control editor1" name="values_en" id="editor4" rows="6" placeholder="Enter Values of Website" >{{$about->about_en->value}}</textarea>
                                    <p class="help-block">Edit Values of website</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">BIO</label>
                                    <textarea type="text" class="form-control editor1" name="bio_en" id="editor5" rows="6" placeholder="Enter Values of Website" >{{$about->about_en->bio}}</textarea>
                                    <p class="help-block">Edit Values of website</p>
                                </div>

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1">Careers</label>
                                    <textarea type="text" class="form-control editor1" name="career_en" id="editor4" rows="6" placeholder="Enter Careers of Website" >{{$about->about_en->career}}</textarea>
                                    <p class="help-block">Edit Careers of website</p>
                                </div>--}}

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> About Us Image</label>
                                    <input type="file" class="form-control" name="about_image_id" id="exampleInputEmail1" placeholder="Update About Image">
                                    <p class="help-block"> Update The Image in Mission Section</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Mission Image</label>
                                    <input type="file" class="form-control" name="mission_image_id" id="exampleInputEmail1" placeholder="Update Mession Image">
                                    <p class="help-block"> Update The Image in Mission Section</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Vision Image</label>
                                    <input type="file" class="form-control" name="vision_image_id"  id="exampleInputEmail1" placeholder="Update Vision Image">
                                    <p class="help-block"> Update The Image in Vision Section</p>
                                </div>

                               {{-- <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Goals Image</label>
                                    <input type="file" class="form-control" name="goals_image_id" id="exampleInputEmail1" placeholder="Update Goals Image">
                                    <p class="help-block"> Update The Image in Goals Section</p>
                                </div>--}}

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Values Image</label>
                                    <input type="file" class="form-control" name="values_image_id" id="exampleInputEmail1" placeholder="Update Values Image">
                                    <p class="help-block"> Update The Image in Values Section</p>
                                </div>

                               {{-- <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Bio Image</label>
                                    <input type="file" class="form-control" name="bio_image_id" id="exampleInputEmail1" placeholder="Update Bio Image">
                                    <p class="help-block"> Update The Image in Bio Section</p>
                                </div>--}}

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1"> career Image</label>
                                    <input type="file" class="form-control" name="career_image_id" id="exampleInputEmail1" placeholder="Update career Image">
                                    <p class="help-block"> Update The Image in career Section</p>
                                </div>--}}

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Approach Image</label>
                                    <input type="file" class="form-control" name="approach_image_id" id="exampleInputEmail1" placeholder="Update Approach Image">
                                    <p class="help-block"> Update The Image in Approach Section</p>
                                </div>--}}

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Video URL</label>
                                    <input type="url" class="form-control" name="video_url" id="exampleInputEmail1" placeholder="Video URL" value="{{$about->video->url}}">
                                    <p class="help-block"> Video URL</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Bio Video URL</label>
                                    <input type="url" class="form-control" name="bio_video_url" id="exampleInputEmail1" placeholder="Bio Video URL" value="{{$about->bioVideo->url}}">
                                    <p class="help-block">Bio Video URL</p>
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
                <div class="col-md-6 arab_dir">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">أضف بيانات العميل</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">عن المركز</label>
                                    <textarea type="text" class="form-control" name="description_ar" id="editor6"placeholder="عن الشركةة" rows="5">{{$about->about_ar->description}}</textarea>
                                    <p class="help-block">قم بتعديل معلومات عن الشركة</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">مهمتنا</label>
                                    <textarea type="text" class="form-control" name="mission_ar" id="editor7" rows="6" placeholder="عدل مهمة الشركةة">{{$about->about_ar->mission}}</textarea>
                                    <p class="help-block">قم بتعديل مهمة الشركة</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">رؤيتنا</label>
                                    <textarea type="text" class="form-control" name="vision_ar" id="editor8" rows="6" placeholder="عدل رؤية الشركةة" >{{$about->about_ar->vision}}</textarea>
                                    <p class="help-block">قم بتعديل رؤية الشركة</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">قيمنا</label>
                                    <textarea type="text" class="form-control" name="values_ar" id="editor9" rows="6" placeholder="عدل قيم الشركة" >{{$about->about_ar->value}}</textarea>
                                    <p class="help-block">قم بتعديل قيم الشركة</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">السيرة الذاتية</label>
                                    <textarea type="text" class="form-control editor1" name="bio_ar" id="editor10" rows="6" placeholder="أكتب نبذة عن الدكتور" >{{$about->about_ar->bio}}</textarea>
                                    <p class="help-block">أكتب نبذة عن الدكتور</p>
                                </div>

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1">أهدافنا</label>
                                    <textarea type="text" class="form-control" name="goals_ar" id="editor7" rows="6" placeholder="عدل أهداف الشركةة" >{{$about->about_ar->goals}}</textarea>
                                    <p class="help-block">قم بتعديل أهداف الشركة</p>
                                </div>--}}
                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1">منهجنا</label>
                                    <textarea type="text" class="form-control" name="approach_ar" id="editor12" rows="6" placeholder="عدل منهج الشركةة" >{{$about->about_ar->approach}}</textarea>
                                    <p class="help-block">قم بتعديل منهج الشركة</p>
                                </div>--}}

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1">السيرة الذاتية</label>
                                    <textarea type="text" class="form-control" name="values_ar" id="editor13" rows="6" placeholder="عدل السيرة الذاتية" >{{$about->about_ar->value}}</textarea>
                                    <p class="help-block">قم بتعديل قيم الشركة</p>
                                </div>--}}
                               {{-- <div class="col-lg-12">
                                    <label for="exampleInputEmail1">كارير</label>
                                    <textarea type="text" class="form-control" name="career_ar" id="editor8" rows="6" placeholder="عدل المهنة" >{{$about->about_ar->career}}</textarea>
                                    <p class="help-block">قم بتعديل المهنة</p>
                                </div>--}}

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
