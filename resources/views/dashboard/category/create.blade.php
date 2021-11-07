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
            CKEDITOR.replace('editor10');
            CKEDITOR.replace('editor12');
            //bootstrap WYSIHTML5 - text editor
            $('.textarea').wysihtml5()
        })
    </script>

    <script>
        //Initialize Select2 Elements
        //$('.select2').select2()

        $(document).ready(function () {
            $(".main_category_spinner").hide();
            $(".sub_categories_spinner").hide();

            /*$(".main_category_spinner").css("display","inline");
            $(".sub_categories_spinner").css("display","inline");*/
            $("#mainCity").click(function(){
                $(".main_category_spinner").show();
                var city_id= $(this).val();
                var token = $('input[name="_token"]').val();
                //alert(token);
                //console.log(category_id);
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    //'url':'{{adminUrl('city/get_subCity')}}',
                    'url':'/shuttle-travel-admin/city/get_subCity',
                    'type':'POST',
                    //async:false,
                    'data': {

                        //'_token':token,
                        'city_id': city_id
                    },
                    beforeSend:function(){
                        $(".main_category_spinner").show();
                        $(".sub_categories_spinner").show();
                    },
                    success:function (data) {
                        //console.log(data);
                        var result='';
                        if(Array.isArray(data)){
                            data.forEach((sub_city)=>{
                                result+="<option value='"+sub_city.id+"'>"+sub_city.city_en.city_name+"</option>";
                            })

                        }else{
                            console.log(data);
                            result+="<option value='"+data.id+"'>"+sub_city.city_en.city_name+"</option>";
                        }

                        $("#sub_cities").html(result);
                        $(".main_category_spinner").hide();
                        $(".sub_categories_spinner").hide();
                    },
                    error:function(error){
                        //console.log(error)
                    }
                });
            });
            /* $(".row").click(function(){
                 $(".main_category_spinner").hide();
                 $(".sub_categories_spinner").hide();
             });*/
        });
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Categories
            <small>Add Category</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/category')}}">Categories</a></li>
            <li class="active">Add Category</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        @php($form='')
        @if($parent_category)
            {!! $form="<form role='form' action='".adminUrl('category/'.$parent_category->id.'/create-sub-category')."' enctype='multipart/form-data' method='post'>" !!}
        @else
            {!!  $form="<form role='form' action='".route('category.store')."' enctype='multipart/form-data' method='post'>"!!}
        @endif
        {{--<form role="form" action="{{route('category.store')}}" enctype="multipart/form-data" method="post">--}}
        {!! $form !!}
            @csrf
            <input type="hidden" name="created_by">
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                        <h3 class="box-title">Add category Info</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <div class="form-group">
                            @if($parent_category)
                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Parent Category</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" disabled  value="{{$parent_category->category_en->title}}">
                                    <p class="help-block">This Title of Parent Category</p>
                                </div>
                            @endif
                    {{--            <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Country</label>
                                    <div class="spinner-border text-primary main_category_spinner spinner-icon" role="status" >
                                        <img src="{{assetPath("dashboard/img/icons/spinner1.gif")}}" class="spinner-image" alt="">
                                        <span class="sr-only ">Loading...</span>
                                    </div>
                                    --}}{{--<i class="fa fa-spinner sub_categories_spinner" style="font-size:10px;"></i>--}}{{--
                                    <select name="city_id" id="mainCity" class="form-control">
                                        <option>----- select Country -----</option>
                                        @if($cities)
                                            @foreach($cities as $city)
                                                <option value="{{$city->id}}">{{$city->city_en->city_name}}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                    <p class="help-block">Select Category That Contains This Hotel</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">City</label>
                                    <div class="spinner-border text-primary main_category_spinner spinner-icon" role="status" >
                                        <img src="{{assetPath("dashboard/img/icons/spinner1.gif")}}" class="spinner-image" alt="">
                                        <span class="sr-only ">Loading...</span>
                                    </div>
                                    --}}{{--<i class="fa fa-spinner sub_categories_spinner" style="font-size:10px;"></i>--}}{{--
                                    <select name="city_id" id="sub_cities" class="form-control">
                                        <option>----- select city -----</option>

                                    </select>
                                    <p class="help-block">Select Category That Contains This Hotel</p>
                                </div>--}}
                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Title</label>
                                <input type="text" class="form-control" name="title_en" id="exampleInputEmail1" placeholder="Enter category Title" value="{{old('title_en')}}">
                                <p class="help-block">Enter Title of Category</p>
                            </div>

                            {{--<div class="col-lg-12">
                                <label for="exampleInputEmail1">Category Slug</label>
                                <textarea type="text" class="form-control" name="slug_en" id="exampleInputEmail1" placeholder="Enter Category slug">{{old('slug_en')}}</textarea>
                                <p class="help-block">Enter Title of Category</p>
                            </div>--}}

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1">Category Url</label>
                                <input type="text" class="form-control" name="url" id="exampleInputEmail1" placeholder="Enter Category slug" value="{{old('slug_en')}}">
                                <p class="help-block">Enter Url of Article which will shown in url <strong>If Url is empty, system will choose article title as url by Default</strong></p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Category Description</label>
                                <textarea  class="form-control" name="description_en" id="editor10" placeholder="Enter Category Description" rows="6">{{old('description_en')}}</textarea>
                                <p class="help-block">Enter Description of Category</p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Image</label>
                                <input type="file" class="form-control" name="image_id" id="exampleInputEmail1" placeholder="Enter Category text">
                                <p class="help-block"> Upload Category Image </p>
                            </div>
                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Icon</label>
                                <input type="file" class="form-control" name="icon" id="exampleInputEmail1" placeholder="Enter Category text">
                                <p class="help-block"> Upload Category Icon </p>
                            </div>
                           {{-- <div class="col-lg-12">
                                <label for="exampleInputEmail1">Category Images</label>
                                <input type="file" class="form-control" name="images[]" id="exampleInputEmail1" multiple>
                                <p class="help-block"> Upload Category Images </p>
                            </div>--}}

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1">Image Alt Text</label>
                                <input type="text" class="form-control" name="img_alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{old('img_alt')}}">
                                <p class="help-block"> Enter Alt Text for Image to show it if image isn't loaded </p>
                            </div>


                            <div class="col-lg-12">
                                <label for="exampleInputEmail1">Icon Alt Text</label>
                                <input type="text" class="form-control" name="icon_alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{old('icon_alt')}}">
                                <p class="help-block"> Enter Alt Text for Icon to show it if image isn't loaded </p>
                            </div>




                            {{--<div class="col-lg-12">
                                <label for="exampleInputEmail1"> Video Url</label>
                                <input type="url" class="form-control" name="video_id" id="exampleInputEmail1" placeholder="Enter Video Url">
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
                            <h3 class="box-title">أضف بيانات الصنف</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">
                                @if($parent_category)
                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">الصنف الرئيسي</label>
                                        <input type="text" class="form-control" id="exampleInputEmail1" disabled  value="{{$parent_category->category_ar->title}}">
                                        <p class="help-block">عموان الصنف الرئيسي</p>
                                    </div>
                                @endif
                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> عنوان الصنف</label>
                                    <input type="text" class="form-control" name="title_ar" id="exampleInputEmail1" placeholder="ادخل عنوان الصنف" value="{{old('title_ar')}}">
                                    <p class="help-block">أضف عنوان الصنف</p>
                                </div>

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1"> نبذة عن الصنف</label>
                                    <textarea type="text" class="form-control" name="slug_ar" id="exampleInputEmail1" placeholder="ادخل  نبذة عن الصنف">{{old('slug_ar')}}</textarea>
                                    <p class="help-block">ادخل  نبذة عن الصنف</p>
                                </div>--}}

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">وصف الصنف</label>
                                    <textarea class="form-control" name="description_ar" id="editor12" placeholder="ادخل  وصف الصنف" rows="6" >{{old('description_ar')}}</textarea>
                                    <p class="help-block">ادخل وصفا دقيقا عن الصنف</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>


@endsection
