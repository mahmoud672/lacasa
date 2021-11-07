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
            CKEDITOR.replace('editor3');
            CKEDITOR.replace('editor4');
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
            Services
            <small>Edit Product</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/product')}}">Product</a></li>
            <li class="active">Edit Product</li>
        </ol>
    </section>


    <section class="content">
        @include('dashboard.layouts.messages')
        <form role="form" action="{{route('product.update', $product->id)}}" enctype="multipart/form-data" method="post">
            @csrf
            @method('patch')
            <div class="row">
                <!-- English Side -->
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Add Product Info</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                              {{--  @if($product->category_id)
                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1"> Main Product</label>
                                        <input type="text" class="form-control" disabled="disabled" name="main_service" id="exampleInputEmail1" placeholder="Enter Product Title" value="{{$product->category->category_en->title}}">
                                        <p class="help-block">This is The Parent product of the one you will add</p>
                                    </div>
                                @endif--}}

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Title</label>
                                    <input type="text" class="form-control" name="title_en" id="exampleInputEmail1" placeholder="Enter Product Title" value="{{$product->product_en->title}}">
                                    <p class="help-block">Enter title of product</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">Product Slug</label>
                                    <textarea type="text" class="form-control" name="slug_en" id="exampleInputEmail1" placeholder="Enter Product slug">{{$product->product_en->slug}}</textarea>
                                    <p class="help-block">Enter Title of Product</p>
                                </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Product Url</label>
                                        <input type="text" class="form-control" name="url" id="exampleInputEmail1" placeholder="Enter Product slug" value="{{$product->url}}">
                                        <p class="help-block">Enter Url of Article which will shown in url <strong>If Url is empty, system will choose article title as url by Default</strong></p>
                                    </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Product Description</label>
                                    <textarea class="form-control" name="description_en" id="editor3" placeholder="Enter Product Description" rows="6">{{$product->product_en->description}}</textarea>
                                    <p class="help-block">Enter Description of Product</p>
                                </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1"> Image</label>
                                        <input type="file" class="form-control" name="image_id" id="exampleInputEmail1" placeholder="Enter Product text">
                                        <p class="help-block"> Upload Product main Image </p>
                                    </div>
                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Product Images</label>
                                        <input type="file" class="form-control" name="images[]" id="exampleInputEmail1" placeholder="Enter Product text"multiple>
                                        <p class="help-block"> Upload Product Images </p>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Image Alt Text</label>
                                        <input type="text" class="form-control" name="img_alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{$product->image->alt}}">
                                        <p class="help-block"> Enter Alt Text for Image to show it if image isn't loaded </p>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1"> Icon</label>
                                        <input type="file" class="form-control" name="icon" id="exampleInputEmail1" placeholder="Enter Product text">
                                        <p class="help-block"> Upload Product Icon </p>
                                    </div>

                                    <div class="col-lg-12">
                                        <label for="exampleInputEmail1">Icon Alt Text</label>
                                        <input type="text" class="form-control" name="icon_alt" id="exampleInputEmail1" placeholder="Enter Alt Text" value="{{$product->iconImg->alt}}">
                                        <p class="help-block"> Enter Alt Text for Icon to show it if image isn't loaded </p>
                                    </div>

                                {{--<div class="col-lg-12">
                                    <label for="exampleInputEmail1"> Video Url</label>
                                    <input type="text" class="form-control" name="video_id" id="exampleInputEmail1" placeholder="Enter Product Title" value="{{$product->video_id ? $product->video->url : ''}}">
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
                            <h3 class="box-title">أضف بيانات المنتج</h3>
                        </div>
                        <!-- .box-header -->
                        <!-- form start -->
                        <div class="box-body">
                            <div class="form-group">

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> عنوان المنتج</label>
                                    <input type="text" class="form-control" name="title_ar" id="exampleInputEmail1" placeholder="ادخل عنوان المنتج" value="{{$product->product_ar->title}}">
                                    <p class="help-block">أضف عنوان المنتج</p>
                                </div>

                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1"> نبذة عن المنتج</label>
                                    <textarea type="text" class="form-control" name="slug_ar" id="exampleInputEmail1" placeholder="ادخل  نبذة عن المنتج" >{{$product->product_ar->slug}}</textarea>
                                    <p class="help-block">ادخل  نبذة عن المنتج</p>
                                </div>

                                <p class="p-dark"></p>
                                <p class="p-green"></p>
                                <div class="col-lg-12">
                                    <label for="exampleInputEmail1">وصف المنتج</label>
                                    <textarea class="form-control" name="description_ar" id="editor4" placeholder="ادخل  وصف المنتج" rows="6">{{$product->product_ar->description}}</textarea>
                                    <p class="help-block">ادخل وصفا دقيقا عن المنتج</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>

@endsection
