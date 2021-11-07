@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')
    <style>
        /*.main_category_spinner{
            display: none;
        }
        .sub_categories_spinner{
            display: none;
        }*/

    </style>
@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
    <script src="{{assetPath('dashboard/bower_components/ckeditor/ckeditor.js')}}"></script>

    <script>
        $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('editor1');
            CKEDITOR.replace('editor2');
            CKEDITOR.replace('editor3');
            CKEDITOR.replace('editor4');
            //bootstrap WYSIHTML5 - text editor
            $('.textarea').wysihtml5()
        })
    </script>
    <script>
        $(document).ready(function(){
            $(".main_category_spinner").hide();
            $(".sub_categories_spinner").hide();

            /*$(".main_category_spinner").css("display","inline");
            $(".sub_categories_spinner").css("display","inline");*/
            $("#main_category").click(function(){
                $(".main_category_spinner").show();
                var category_id= $(this).val();
                //console.log(category_id);
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    'url':'{{adminUrl('hotel/get_subCategory')}}',
                    //'url':'/level-collection-admin/hotel/get_subCategory',
                    'type':'POST',
                    //async:false,
                    'data': {
                        'send_category':1,
                        'category_id': category_id
                    },
                    beforeSend:function(){
                        $(".main_category_spinner").show();
                        $(".sub_categories_spinner").show();
                    },
                    success:function (data) {
                        //console.log(data);
                        var result='';
                        data.forEach((sub_category)=>{
                            result+="<option value='"+sub_category.id+"'>"+sub_category.category_en.title+"</option>";
                        })

                        $("#sub_categories").html(result);
                        $(".main_category_spinner").hide();
                        $(".sub_categories_spinner").hide();
                    },
                    error:function(error){

                    }
                });
            });
            $(".main_city_spinner").hide();
            //$(".main_city_spinner").hide();

            $("#mainCity").click(function(){
                $(".main_city_spinner").show();
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
                        $(".main_city_spinner").show();
                        //$(".sub_categories_spinner").show();
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
                        $(".main_city_spinner").hide();
                        //$(".main_city_spinner").hide();
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
            Programs
            <small>Edit Program</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/hotel')}}">Program</a></li>
            <li class="active">Edit Program</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('hotel.update', $hotel->id)}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('patch')
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Program Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                @if($hotel->category_id)
                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1"> Category </label>
                                        <input type="text" class="form-control" disabled="disabled" name="main_service" id="exampleInputEmail1" placeholder="Enter Program Title" value="{{$hotel->category->category_en->title}}">
                                        <p class="help-block">This is The Parent hotel of the one you will add</p>
                                    </div>
                                @endif

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Title</label>
                                    <input type="text" class="form-control" name="title_en" id="exampleInputEmail1" placeholder="Enter Program Title" value="{{$hotel->hotel_en->title}}">
                                    <p class="help-block">Enter title of hotel</p>
                                </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1"> Category</label>
                                        {{--<i class="fa fa-spinner main_category_spinner"></i>--}}
                                        <div class="spinner-border text-primary main_category_spinner spinner-icon" role="status" >
                                            <img src="{{assetPath("dashboard/img/icons/spinner1.gif")}}" class="spinner-image" alt="">
                                            <span class="sr-only ">Loading...</span>
                                        </div>
                                        <select name="category_d" id="main_category" class="form-control">
                                            <option value="">----- select main category -----</option>
                                            @if($main_categories)
                                                @foreach($main_categories as $main_category)

                                                    <option value="{{$main_category->id}}" {{$hotel->category->parentCategory->id == $main_category->id?'selected':''}}>{{$main_category->category_en->title}}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                        <p class="help-block">Change Journey</p>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Sub Journey</label>
                                        {{--<i class="fa fa-spinner sub_categories_spinner"></i>--}}
                                        <div class="spinner-border text-primary main_category_spinner spinner-icon" role="status">
                                            <img src="{{assetPath("dashboard/img/icons/spinner1.gif")}}" class="spinner-image" alt="">
                                            <span class="sr-only ">Loading...</span>
                                        </div>
                                        <select name="sub_category_id" id="sub_categories" class="form-control">
                                            <option value="">----- select sub category -----</option>
                                            @if($sub_categories)
                                                @foreach($sub_categories as $sub_category)
                                                    <option value="{{$sub_category->id}}" {{$hotel->category_id==$sub_category->id?'selected':''}}>{{$sub_category->category_en->title}}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                        <p class="help-block">Change Journey That Will Contains This Program</p>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Country</label>
                                        <div class="spinner-border text-primary main_city_spinner spinner-icon" role="status" >
                                            <img src="{{assetPath("dashboard/img/icons/spinner1.gif")}}" class="spinner-image" alt="">
                                            <span class="sr-only ">Loading...</span>
                                        </div>
                                        {{--<i class="fa fa-spinner sub_categories_spinner" style="font-size:10px;"></i>--}}
                                        <select name="city_id" id="mainCity" class="form-control">
                                            <option>----- select Country -----</option>
                                            @if($cities)
                                                @foreach($cities as $city)
                                                    <option value="{{$city->id}}" {{$hotel->city->parentCity->id == $city->id?'selected':''}}>{{$city->city_en->city_name}}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                        <p class="help-block">Select Country </p>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">City</label>
                                        <div class="spinner-border text-primary main_city_spinner spinner-icon" role="status" >
                                            <img src="{{assetPath("dashboard/img/icons/spinner1.gif")}}" class="spinner-image" alt="">
                                            <span class="sr-only ">Loading...</span>
                                        </div>
                                        {{--<i class="fa fa-spinner sub_categories_spinner" style="font-size:10px;"></i>--}}
                                        <select name="sub_city_id" id="sub_cities" class="form-control">
                                            <option>----- select city -----</option>
                                            @if($sub_cities)
                                                @foreach($sub_cities as $city)
                                                    <option value="{{$city->id}}" {{$hotel->city_id == $city->id?'selected':''}}>{{$city->city_en->city_name}}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                        <p class="help-block">Select City That Contains This Program</p>
                                    </div>
                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Program Slug</label>
                                    <textarea type="text" class="form-control" name="slug_en" id="exampleInputEmail1" placeholder="Enter Program slug">{{$hotel->hotel_en->slug}}</textarea>
                                    <p class="help-block">Enter Title of Program</p>
                                </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Program Url</label>
                                        <input type="text" class="form-control" name="url" id="exampleInputEmail1" placeholder="Enter Program slug" value="{{$hotel->url}}">
                                        <p class="help-block">Enter Url of Article which will shown in url <strong>If Url is empty, system will choose article title as url by Default</strong></p>
                                    </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Program Description</label>
                                    <textarea class="form-control" name="description_en" id="editor1" placeholder="Enter Program Description" rows="6">{{$hotel->hotel_en->description}}</textarea>
                                    <p class="help-block">Enter Description of Program</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Program Details</label>
                                    <textarea  class="form-control" name="details_en" id="editor2" placeholder="Enter Program Details" rows="6">{{$hotel->hotel_en->details}}</textarea>
                                    <p class="help-block">Enter Details of Program</p>
                                </div>
                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1"> Image</label>
                                        <input type="file" class="form-control" name="image_id" id="exampleInputEmail1" placeholder="Enter Program text">
                                        <p class="help-block"> Upload Program main Image </p>
                                    </div>
                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Program Images</label>
                                        <input type="file" class="form-control" name="images[]" id="exampleInputEmail1" placeholder="Enter Program text"multiple>
                                        <p class="help-block"> Upload Program Images </p>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Image Alt Text</label>
                                        <input type="text" class="form-control" name="img_alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{$hotel->image->alt}}">
                                        <p class="help-block"> Enter Alt Text for Image to show it if image isn't loaded </p>
                                    </div>

                                    {{--<div class="col-lg-12">
                                        <label for="exampleInputEmail1"> Icon</label>
                                        <input type="file" class="form-control" name="icon" id="exampleInputEmail1" placeholder="Enter Program text">
                                        <p class="help-block"> Upload Program Icon </p>
                                    </div>--}}

                                   {{-- <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Icon Alt Text</label>
                                        <input type="text" class="form-control" name="icon_alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{$hotel->iconImg->alt}}">
                                        <p class="help-block"> Enter Alt Text for Icon to show it if image isn't loaded </p>
                                    </div>--}}

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Is this Offer</label>
                                        <input type="checkbox" name="is_offer" {{$hotel->is_offer?'checked':''}} value="1">
                                        <p class="help-block"> Check this field if you want this program as offer </p>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Program Price</label>
                                        <input type="text" class="form-control" name="price" id="exampleInputEmail1" placeholder="Enter The Price of Program" value="{{$hotel->price}}">
                                        <p class="help-block"> Enter Price for Program  </p>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Program Location</label>
                                        <input type="url" class="form-control" name="location" id="exampleInputEmail1" placeholder="Enter The Location of Program" value="{{$hotel->location}}">
                                        <p class="help-block"> Enter Location of Program  </p>
                                    </div>

                                    {{--<div class="col-lg-12">
                                        <label for="exampleInputEmail1">Program Stars</label>
                                        <input type="text" class="form-control" name="rate" id="exampleInputEmail1" placeholder="Enter The Material of Program" value="{{$hotel->rate}}">
                                        <p class="help-block"> Enter Stars of Program  </p>
                                    </div>--}}



                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Video Url</label>
                                    <input type="text" class="form-control" name="video_id" id="exampleInputEmail1" placeholder="Enter Program Title" value="{{$hotel->video_id ? $hotel->video->url : ''}}">
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
                            <h3 class="box-title">أضف بيانات البرنامج</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> اسم البرنامج</label>
                                    <input type="text" class="form-control" name="title_ar" id="exampleInputEmail1" placeholder="ادخل اسم البرنامج" value="{{$hotel->hotel_ar->title}}">
                                    <p class="help-block">أضف اسم البرنامج</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> نبذة عن البرنامج</label>
                                    <input type="text" class="form-control" name="slug_ar" id="exampleInputEmail1" placeholder="ادخل  نبذة عن البرنامج" value="{{$hotel->hotel_ar->slug}}">
                                    <p class="help-block">ادخل  نبذة عن البرنامج</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">وصف البرنامج</label>
                                    <textarea class="form-control" name="description_ar" id="editor3" placeholder="ادخل  وصف البرنامج" rows="6">{{$hotel->hotel_ar->description}}</textarea>
                                    <p class="help-block">ادخل وصفا دقيقا عن البرنامج</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> تفاصيل البرنامج  </label>
                                    <textarea type="text" class="form-control" name="details_ar" id="editor4" placeholder="تفاصيل عن البرنامج" >{{$hotel->hotel_ar->details}}</textarea>
                                    <p class="help-block">تفاصيل عن البرنامج</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
