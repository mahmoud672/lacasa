@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')
@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
    <script>
        //Initialize Select2 Elements
        $('.select2').select2()
    </script>
    <script>
        $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('descriptionEn');
            CKEDITOR.replace('descriptionAr');
            //bootstrap WYSIHTML5 - text editor
            //$('.textarea').wysihtml5()
        })
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Slider
            <small>Add New Slider</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/slider')}}">Slider</a></li>
            <li class="active">Add Slide</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('slider.store')}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('post')
            <input type="hidden" name="created_by">
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                        <h3 class="box-title">Add Slide Info</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> URL</label>
                                <input type="text" class="form-control" name="url" id="exampleInputEmail1" placeholder="Enter URL" value="{{old('url')}}">
                                <p class="help-block">Enter Url of Slide If Exist</p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Slide Title</label>
                                <input type="text" class="form-control" name="title_en" id="exampleInputEmail1" placeholder="Enter Slide Title" value="{{old('title_en')}}">
                                <p class="help-block">Enter Title of Slide</p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Slide Sub-Title</label>
                                <input type="text" class="form-control" name="sub_title_en" id="exampleInputEmail1" placeholder="Enter Sub-Slide Title" value="{{old('sub_title_en')}}">
                                <p class="help-block">Enter Sub-Title of Slide</p>
                            </div>

                            {{--<div class="col-lg-12">
                                <label for="exampleInputEmail1"> Slide Description</label>
                                <input type="text" class="form-control" name="description_en" id="descriptionEn" placeholder="Enter Slide Description" value="{{old('description_en')}}">
                                <p class="help-block">Enter Description of Slide</p>
                            </div>--}}
                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Slide Description</label>
                                {{--<input type="text" class="form-control" name="description_en" id="descriptionEn" placeholder="Enter Slide Description" value="{{old('description_en')}}">--}}
                                <textarea class="form-control" name="description_en" id="descriptionEn" placeholder="Enter Slide Description">{{old("description_en")}}</textarea>
                                <p class="help-block">Enter Description of Slide</p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Button</label>
                                <input type="text" class="form-control" name="button_en" id="exampleInputEmail1" placeholder="Enter button text" value="{{old('button_en')}}">
                                <p class="help-block">Enter Text on button </p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Image</label>
                                <input type="file" class="form-control" name="image_id" id="exampleInputEmail1" placeholder="Enter button text">
                                <p class="help-block"> Upload Slide Image <strong>Recommended High Resolution Image</strong> </p>
                            </div>

                            {{--<div class="col-lg-12">
                                <label for="exampleInputEmail1"> Images</label>
                                <input type="file" class="form-control" name="images[]" id="exampleInputEmail1" multiple>
                                <p class="help-block"> Upload Slide Images <strong>Recommended High Resolution Images</strong> </p>
                            </div>--}}

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Alt Text</label>
                                <input type="text" class="form-control" name="alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{old('alt')}}">
                                <p class="help-block"> Enter Alt Text for Image to show it if image isn't loaded </p>
                            </div>

                            {{--<div class="col-lg-12">
                                <label for="exampleInputEmail1"> Slider Type</label>
                                <select name="type" id="" class="form-control" required>
                                    <option value=""></option>
                                    <option value="body_care">body care</option>
                                    <option value="skin_care">skin care</option>
                                    <option value="hair_care">hair care</option>
                                    <option value="lipolysis">lipolysis</option>
                                </select>
                                <p class="help-block"> Select Slider Type (You can see them in home page) </p>
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
                            <h3 class="box-title">أضف بيانات الصورة</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> عنوان الصورة</label>
                                    <input type="text" class="form-control" name="title_ar" id="exampleInputEmail1" placeholder="ادخل عنوان الصورة" value="{{old('title_ar')}}">
                                    <p class="help-block">أضف عنوان الصورة</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">العنوان الفرعي للصورة</label>
                                    <input type="text" class="form-control" name="sub_title_ar" id="exampleInputEmail1" placeholder="العنوان الفرعي للصورة" value="{{old('sub_title_ar')}}">
                                    <p class="help-block">العنوان الفرعي للصورة</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> وصف الصورة</label>
                                    {{--<input type="text" class="form-control" name="description_ar" id="descriptionAr" placeholder="ادخل وصف الصورة" value="{{old('description_ar')}}">--}}
                                    <textarea class="form-control" name="description_ar" id="descriptionAr" placeholder="ادخل وصف الصورة">{{old('description_ar')}}</textarea>
                                    <p class="help-block">ادخل وصف الصورة</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> االزر</label>
                                    <input type="text" class="form-control" name="button_ar" id="exampleInputEmail1" placeholder="ادخل النص الخاص بالزر" value="{{old('button_ar')}}">
                                    <p class="help-block">ادخل النص المراد وضعه على الزر مثال : شاهد المزيد</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
