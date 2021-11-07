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
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Cities
            <small>Edit City</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/city')}}">City</a></li>
            <li class="active">Edit City</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('city.update', $city->id)}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('patch')
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add City Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                @if($country)
                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1" id="client_name_en">Country Name</label>
                                        <input type="text" class="form-control client_name_en"  disabled  value="{{$country->city_en->city_name}}">
                                        <p class="help-block client_name_en" >This is the Country of new City</p>
                                    </div>
                                @endif

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">City Name</label>
                                    <input type="text" class="form-control" name="name_en" id="exampleInputEmail1" placeholder="Enter City Name" value="{{$city->city_en->city_name}}">
                                    <p class="help-block">Enter Name of City</p>
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
                            <h3 class="box-title">أضف بيانات المدينة</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                @if($country)
                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1" id="client_name_en">اسم الدولة</label>
                                        <input type="text" class="form-control client_name_en"  disabled  value="{{$country->city_ar->city_name}}">
                                        <p class="help-block client_name_en" >الدولة التابعة لها المدينة</p>
                                    </div>

                                @endif

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">اسم المدينة</label>
                                    <input type="text" class="form-control" name="name_ar" id="exampleInputEmail1" placeholder="ادخل اسم المدينة" value="{{$city->city_ar->city_name}}">
                                    <p class="help-block">أدخل اسم المدينة</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
