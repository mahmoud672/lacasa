@extends('dashboard.layouts.layouts')
@section('title', 'Dashboard')
{{--Drop Your Customized Style Codes Here--}}
@section('customizedStyle')

@endsection
{{--Drop Your Customized Scripts Codes Here--}}
@section('customizedScript')
    <script>
        $(function () {
            $('#example1').DataTable()
            $('#example2').DataTable({
                'paging'      : true,
                'lengthChange': false,
                'searching'   : false,
                'ordering'    : true,
                'info'        : true,
                'autoWidth'   : false
            })
        })
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Service Images
            <small>All Service Images</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl("")}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl("/product")}}">Service</a></li>
            <li class="active">All Service Images</li>
        </ol>
    </section>


    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <div class="box box-primary" style="padding: 15px">
                    <div class="box-header with-border">
                        <h3 class="box-title">All Images For This Product</h3>
                        <a href="#" class="btn btn-warning pull-right remove-btn modal-btn" data-toggle="modal" data-target="#add5">
                            <i class="fa fa-plus"></i> Add New Image </a>
                    </div>
                @include('dashboard.layouts.messages')
                <!-- /.box-header -->
                    <!-- form start -->
                    <div class="images-wrapper">
                        <ul>
                            @if($product)

                                @if($product->images)
                                @php $count=0 @endphp
                                @foreach($product->images as $service_image)
                                    <li>
                                        <div class="remove-btn modal-btn" data-toggle="modal" data-target="#delete{{$count}}">
                                            <i class="ion-ios-close-empty"></i>
                                        </div>
                                        <img src="{{assetPath($service_image->path)}}" alt="img">
                                    </li>
                                    @php $count++ @endphp
                                @endforeach
                                @else
                                @endif
                            @else

                            @endif

                        </ul>
                    </div>

                    @if($product->images)
                        @php $count=0 @endphp
                        @foreach($product->images as $service_image)
                    <div class="modal modal-danger fade" id="delete{{$count}}">

                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">Delete User</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Are You Sure You Want To Delete This Image of <strong>{{$product->id}}</strong></p>
                                </div>
                                <div class="modal-footer">
                                    <form action="{{adminUrl("product")}}/show/{{$product->id}}/deleteImage" method="post">

                                        @csrf
                                        <input type="hidden"name="image"value="{{$service_image->name}}">
                                        <input type="hidden"name="image_id"value="{{$service_image->id}}">
                                        <div class="d-flex flex-row">
                                            <button type="button" class="btn btn-outline-danger" data-dismiss="modal" style="margin-right: 5px">
                                                cancel
                                            </button>
                                            <button type="submit" class="btn btn-danger">
                                                Delete
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->
                            @php $count++ @endphp
                        @endforeach
                    @else

                    @endif

                    <!-- /.modal -->
                    <!--- modal for add image(s) -->
                    <div class="modal modal-danger fade" id="add5">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">Add User</h4>
                                </div>
                                <div class="modal-body">
                                    <p>Are You Sure You Want To Add This Image For <strong>{{$product->id}}</strong></p>
                                </div>
                                <div class="modal-footer">
                                    <form action="{{adminUrl("product").'/show/'.$product->id.'/addImage'}}" method="post"enctype="multipart/form-data">

                                        @csrf
                                        {{-- <input type="hidden"name="image"value="{{$product_image->image}}">--}}
                                        <input type="file" class="form-control" name="product_image[]" value=""multiple>
                                        <div class="d-flex flex-row">
                                            <button type="button" class="btn btn-outline-danger" data-dismiss="modal" style="margin-right: 5px">
                                                cancel
                                            </button>
                                            <button type="submit" class="btn btn-danger">
                                                Ok
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->

                    {{--                --}}


                </div>
            </div>
        </div>
    </section>

@endsection
