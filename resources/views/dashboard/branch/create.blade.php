@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')
@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
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
@endsection
{{-- Start of page Content --}}
@section('content')


    <section class="content-header">
        <h1>
            Branch
            <small>Create Branch</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/branch')}}">Branch</a></li>
            <li class="active">Create Branch</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{adminUrl('branch')}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('post')
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Enter Branch Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Branch Name</label>
                                    <input type="text" class="form-control" name="name_en" id="exampleInputEmail1" placeholder="Enter Branch Name" value="{{old('name_en')}}">
                                    <p class="help-block"> Enter Name Of Branch </p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Branch Description</label>
                                    <textarea  class="form-control" name="description_en" id="editor10" placeholder="Enter Branch Description" rows="6">{{old('description_en')}}</textarea>
                                    <p class="help-block">Enter Description of Branch</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Address</label>
                                    <input type="text" class="form-control" name="address_en" id="exampleInputEmail1" placeholder="Enter Address" value="{{old('address_en')}}">
                                    <p class="help-block"> Enter Address Of Company </p>
                                </div>


                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Phone</label>
                                    <input type="text" class="form-control" name="phone" id="exampleInputEmail1" placeholder="Enter Phone Number" value="{{old('phone')}}">
                                    <p class="help-block"> Enter The Primary Phone Number </p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Another Phone</label>
                                    <input type="text" class="form-control" name="phone_alt" id="exampleInputEmail1" placeholder="Enter Another Phone Number" value="{{old('phone_alt')}}">
                                    <p class="help-block"> Enter Another Phone Number if Exist </p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input type="email" class="form-control" name="email" id="exampleInputEmail1" placeholder="Enter Branch Email" value="{{old("email")}}">
                                    <p class="help-block"> Enter Email of Branch if Exist </p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Location</label>
                                    <input type="url" class="form-control" name="location" id="exampleInputEmail1" placeholder="Location of Company" value="{{old('location')}}">
                                    <p class="help-block"> Add Location Link of company from google maps </p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Image</label>
                                    <input type="file" class="form-control" name="image_id" id="exampleInputEmail1" placeholder="Enter button text">
                                    <p class="help-block"> Upload Branch Image </p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Alt</label>
                                    <input type="text" class="form-control" name="alt" id="exampleInputEmail1" placeholder="Alt of Image" value="{{old('alt')}}">
                                    <p class="help-block"> Add Alt of Image </p>
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
                            <h3 class="box-title">قم بتعديل بيانات افرع</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> اسم الفرع</label>
                                    <input type="text" class="form-control" name="name_ar" id="exampleInputEmail1" placeholder="اسم الفرع" value="{{old('name_en')}}">
                                    <p class="help-block"> ادخل اسم الفرع </p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">وصف الفرع</label>
                                    <textarea class="form-control" name="description_ar" id="editor12" placeholder="ادخل  وصف الفرع" rows="6" >{{old('description_ar')}}</textarea>
                                    <p class="help-block">ادخل وصفا دقيقا عن الفرع</p>
                                </div>
                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">العنوان</label>
                                    <input type="text" class="form-control" name="address_ar" id="exampleInputEmail1" placeholder="ادخل عنوان الشركة" value="{{old('address_ar')}}">
                                    <p class="help-block">أدخل عنوان الشركة</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>
@endsection
