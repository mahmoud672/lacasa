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
        var loc= location.search;
        if(loc == '?type=partner'){
            $("#client_status").val(1);
            $("#client_name_en").text("Partner Name");
            $(".client_name_en").attr('placeholder',"Enter Partner Name");
            $(".client_name_en").text("Enter Partner Name");

            $("#client_name_ar").text("اسم الشريك");
            $(".client_name_ar").text("أدخل اسم الشريك");
            $(".client_name_ar").attr('placeholder',"أدخل اسم الشريك");


            $(".client_logo").text("Upload Partner Logo");
        }
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Client
            <small>Add New Client</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/client')}}">Client</a></li>
            <li class="active">Add Client</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('client.store')}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('post')
            <input type="hidden" name="created_by">
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Client Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1" id="client_name_en">Client Name</label>
                                    <input type="text" class="form-control client_name_en" name="name_en" id="exampleInputEmail1" placeholder="Enter Client Name" value="{{old('name_en')}}">
                                    <p class="help-block client_name_en" >Enter Name of Client</p>
                                </div>


                                    <input type="hidden" id="client_status" name="status"value="">


                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Image</label>
                                    <input type="file" class="form-control client_logo" name="image_id" id="exampleInputEmail1">
                                    <p class="help-block client_logo"> Upload Client Logo </p>
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
                                    <label for="exampleInputEmail1" id="client_name_ar">اسم العميل</label>
                                    <input type="text" class="form-control client_name_ar" name="name_ar"  placeholder="ادخل اسم العميل" value="{{old('name_ar')}}">
                                    <p class="help-block client_name_ar">أدخل اسم العميل</p>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
