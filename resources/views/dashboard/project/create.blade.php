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
            CKEDITOR.replace('editor11');
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
            Projects
            <small>Add Project</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/service')}}">Project</a></li>
            <li class="active">Add Project</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('project.store')}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('post')
            <input type="hidden" name="created_by">
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                        <h3 class="box-title">Add Project Info</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Client Name</label>
                                <input type="text" class="form-control" name="client_name_en" id="exampleInputEmail1" placeholder="Enter Client Name" value="{{old('client_name_en')}}">
                                <p class="help-block">Enter Client Name</p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1">Contract Subject</label>
                                <textarea type="text" class="form-control" name="contract_subject_en" id="editor10" placeholder="Enter Contract Subject">{{old('contract_subject_en')}}</textarea>
                                <p class="help-block">Enter Contract Subject</p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1">Capacity</label>
                                <input type="text" class="form-control" name="capacity_en" id="exampleInputEmail1" placeholder="Enter Capacity" value="{{old('capacity_en')}}">
                                <p class="help-block">Enter Capacity </p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> From Date</label>
                                <input  class="form-control" name="from_date" type="date" id="exampleInputEmail1" placeholder="Enter From Date" value="{{old('from_date')}}">
                                <p class="help-block">Enter Starting Date</p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> To Date</label>
                                <input  class="form-control" name="to_date" type="date" id="exampleInputEmail1" placeholder="Enter To Date" value="{{old('to_date')}}">
                                <p class="help-block">Enter Ending Date</p>
                            </div>

                            <div class="col-lg-12">
                                <label for="exampleInputEmail1"> Branch</label>
                                <select name="branch_id" id="" class="form-control">
                                    <option value="">---- Choose Branch ----</option>
                                    @if($branches)
                                        @foreach($branches as $branch)
                                            <option value="{{$branch->id}}">{{$branch->branch_ar->name}}</option>
                                        @endforeach
                                    @endif
                                </select>
                                <p class="help-block">Choose Branch</p>
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
                            <h3 class="box-title">أضف بيانات المشروع</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> اسم العميل</label>
                                    <input type="text" class="form-control" name="client_name_ar" id="exampleInputEmail1" placeholder="أدخل اسم الغميل" value="{{old('client_name_ar')}}">
                                    <p class="help-block">أدخل اسم الغميل</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">موضوع العقد</label>
                                    <textarea type="text" class="form-control" name="contract_subject_ar" id="editor11" placeholder="أدخل موضوع العقد">{{old('contract_subject_ar')}}</textarea>
                                    <p class="help-block">أدخل موضوع العقد</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">السعة</label>
                                    <input type="text" class="form-control" name="capacity_ar" id="exampleInputEmail1" placeholder="أدخل السعة" value="{{old('capacity_ar')}}">
                                    <p class="help-block">أدخل السعة </p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>


@endsection
