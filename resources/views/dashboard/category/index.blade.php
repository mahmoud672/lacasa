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
            Services
            <small>All Categories</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/category')}}">Category</a></li>
            <li class="active">All Categories</li>
        </ol>
    </section>


    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <div class="box box-primary" style="padding: 15px">
                    <div class="box-header with-border">
                        <h3 class="box-title">All Categories Info</h3>
                        <a href="{{adminUrl('category/create')}}" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Add New Category </a>
                    </div>
                    @include('dashboard.layouts.messages')
                    <!-- /.box-header -->
                    <!-- form start -->
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>id</th>
                            <th>Image</th>
                            <th>Title</th>
                            {{--<th>Slug</th>--}}
                            <th>Created By</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>id</th>
                            <th>Image</th>
                            <th>Title</th>
                           {{-- <th>Slug</th>--}}
                            <th>Created By</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        @if($categories)
                            @foreach($categories as $category)
                                <tr>
                                    <td>{{$category->id}}</td>
                                    <td><img src="{{$category->image_id ? asset($category->image->path) : asset('dashboard/img/picture.png')}}" style="width: 50px" alt="slide image" > </td>
                                    <td>{{$category->category_en->title}}</td>
                                   {{-- <td>{{str_limit($category->category_en->slug, 50, '...')}}</td>--}}
                                    <td>{{$category->createdBy->name}}</td>
                                    <td>{{$category->created_at ? $category->created_at->diffForHumans() : ''}}</td>
                                    <td>{{$category->updated_at ? $category->updated_at->diffForHumans() : ''}}</td>
                                    <td>
                                        {{--<a href="{{adminUrl("category/$category->id/show-images")}}" class="" style="font-size: 20px"><i class="fa fa-image"></i> </a>--}}
                                        <a href="{{route('category.edit', $category->id)}}" class style="font-size: 20px"><i class="fa fa-pencil-square-o"></i> </a>
                                        @if(!$category->parent_category_id)
                                            <a href="{{adminUrl('category/'.$category->id . '/create-sub-category')}}" class style="font-size: 20px"><i class="fa fa-venus-double" title="Add Sub-Category to this Category"></i> </a>
                                            <a href="{{adminUrl('category/'.$category->id .'/show-sub-categories')}}" class style="font-size: 20px"><i class="fa fa-shopping-basket" title="Show Sub-Categories"></i> </a>
                                        @endif

                                        @if($category->parent_category_id)
                                            <a href="{{adminUrl('category/'.$category->id . '/create-product')}}" class style="font-size: 20px"><i class="fa fa-plus" title="Add Product to this Category"></i> </a>
                                            <a href="{{adminUrl('category/'.$category->id .'/show-products')}}" class style="font-size: 20px"><i class="fa fa-eye" title="Show Category-Products"></i> </a>
                                        @endif
                                        {{--<a href="{{adminUrl('category/'.$category->id . '/create-product')}}" class style="font-size: 20px"><i class="fa fa-plus" title="Add Product to this Category"></i> </a>
                                        <a href="{{adminUrl('category/'.$category->id .'/show-products')}}" class style="font-size: 20px"><i class="fa fa-eye" title="Show Category-Products"></i> </a>--}}
                                        <button type="button" class data-toggle="modal" data-target="#delete{{$category->id}}" style="font-size: 20px">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            @endforeach
                        @endif
                        </tbody>
                    </table>

                    @if($categories)
                        @foreach($categories as $category)
                            <div class="modal modal-danger fade" id="delete{{$category->id}}">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Delete User</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are You Sure You Want To Delete Product <strong>{{$category->category_en->title}}</strong></p>
                                        </div>
                                        <div class="modal-footer">
                                            <form action="{{route('category.destroy', $category->id)}}" method="post">
                                                @method('delete')
                                                @csrf
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
                        @endforeach
                    @endif

                </div>
            </div>
        </div>
    </section>

@endsection
