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
@endsection
{{-- Start of page Content --}}
@section('content')


    <section class="content-header">
        <h1>
            Team
            <small>Update Member</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/team')}}">Team</a></li>
            <li class="active">Update Member</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('team.update', $member->id)}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('patch')
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Member Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Name</label>
                                    <input type="text" class="form-control" name="name_en" id="exampleInputEmail1" placeholder="Enter Member Title" value="{{$member->team_en->name}}">
                                    <p class="help-block">Enter Name of Member</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Job Title</label>
                                    <input type="text" class="form-control" name="title_en" id="exampleInputEmail1" placeholder="Enter Member Title" value="{{$member->team_en->job_title}}">
                                    <p class="help-block">Enter Job Title</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Member Slug</label>
                                    <input type="text" class="form-control" name="slug_en" id="exampleInputEmail1" placeholder="Enter Member slug" value="{{$member->team_en->slug}}">
                                    <p class="help-block">Enter Title of Member</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Bio Description</label>
                                    <textarea  class="form-control" name="description_en" id="editor10" placeholder="Enter Member Bio" rows="6">{{$member->team_en->description}}</textarea>
                                    <p class="help-block">Enter Member Bio</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Image</label>
                                    <input type="file" class="form-control" name="image_id" id="exampleInputEmail1" placeholder="Enter Member text">
                                    <p class="help-block"> Upload Member Image </p>
                                </div>

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Related Specialist</label>
                                    <select name="type" id="admin_type" class="form-control">
                                        <option value="">Choose Specialist Type</option>
                                        <option value="1" {{$member->type == 1 ? "selected" : ""}}>استشاري</option>
                                        <option value="2" {{$member->type == 2 ? "selected" : ""}}>استشاري تخدير</option>
                                        <option value="3" {{$member->type == 3 ? "selected" : ""}}>اخصائي</option>
                                        <option value="4" {{$member->type == 4 ? "selected" : ""}}>استشاري زائر</option>

                                    </select>
                                    <p class="help-block"> Choose Specialist Type this Dcotor</p>
                                </div>--}}

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Related Member Name</label>
                                    <select name="service_id" id="admin_type" class="form-control">
                                        <option value="0">Choose Service Name</option>
                                        @if($services)
                                            @foreach($services as $service)
                                                <option value="{{$service->id}}" {{$service->id == $member->service_id ? 'selected' : ''}}>{{$service->service_en->title}}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                    <p class="help-block"> Choose Service for this Member</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">URL</label>
                                    <input type="text" class="form-control" name="url" id="exampleInputEmail1" placeholder="Enter URL Of Its Related Page" value="{{$member->url}}">
                                    <p class="help-block">Enter Url of Article which will shown in url <strong>If Url is empty, system will choose member name as url by Default</strong></p>
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
                            <h3 class="box-title">أضف بيانات العضو</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> إسم العضو</label>
                                    <input type="text" class="form-control" name="name_ar" id="exampleInputEmail1" placeholder="ادخل اسم العضو" value="{{$member->team_ar->name}}">
                                    <p class="help-block">ادخل اسم العضو</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">المسمى الوظيفي للعضو</label>
                                    <input type="text" class="form-control" name="title_ar" id="exampleInputEmail1" placeholder="ادخل المسمى الوظيفي للعضو" value="{{$member->team_ar->job_title}}">
                                    <p class="help-block">أضف المسمى الوظيفي للعضو</p>
                                </div>
                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">نبذة عن العضو</label>
                                    <input class="form-control" name="slug_ar" id="exampleInputEmail1" placeholder="نبذة عن العضو"  value="{{$member->team_ar->slug}}">
                                    <p class="help-block">ادخل نبذة عن العضو</p>
                                </div>


                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">السيرة الذاتية</label>
                                    <textarea class="form-control" name="description_ar" id="editor12" placeholder="ادخل  السيرة الذاتية للعضو" rows="6" >{{$member->team_ar->description}}</textarea>
                                    <p class="help-block">ادخل السيرة الذاتية للعضو</p>
                                </div>

                                @if(!$ceo || $ceo->id == $member->id)
                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1"> Is CEO</label>
                                        <input type="checkbox" class="" name="is_ceo" id="exampleInputEmail1" placeholder="Check if is CEO" value="1" {{$member->is_ceo == 1 ? "checked" : ""}}>
                                        <p class="help-block">Check if is CEO </p>
                                    </div>
                                @endif


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
