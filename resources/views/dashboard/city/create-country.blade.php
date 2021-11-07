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
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Country
            <small>Add New Country</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/city')}}">Country</a></li>
            <li class="active">Add Country </li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('city.store')}}" method="post">
            @csrf
            @method('post')
            <input type="hidden" name="created_by">
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Country Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1" id="client_name_en">Country Name</label>
                                    <input type="text" class="form-control client_name_en" name="name_en" id="exampleInputEmail1" placeholder="Enter Country Name" value="{{old('name_en')}}">
                                    <p class="help-block client_name_en" >Enter Name of Country</p>
                                </div>

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1" id="client_name_en">Country Name</label>
                                    <input type="text" class="form-control " name="country_en" id="exampleInputEmail1" placeholder="Enter Country Name" value="{{old('country_en')}}">
                                    <p class="help-block " >Enter Name of Country</p>
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
                            <h3 class="box-title">أضف بيانات الدولة</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1" id="client_name_ar">اسم الدولة</label>
                                    <input type="text" class="form-control client_name_ar" name="name_ar"  placeholder="ادخل اسم المدينة" value="{{old('name_ar')}}">
                                    <p class="help-block client_name_ar">أدخل اسم الدولة</p>
                                </div>
                               {{-- <div class="col-lg-12">
                                    <label for="exampleInputEmail1" id="">اسم الدولة</label>
                                    <input type="text" class="form-control " name="country_ar"  placeholder="ادخل اسم الدولة" value="{{old('country_ar')}}">
                                    <p class="help-block client_name_ar">أدخل اسم الدولة</p>
                                </div>--}}

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
