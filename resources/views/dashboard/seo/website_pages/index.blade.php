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
            Website Pages
            <small>All Website Pages</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="/adminDashboard"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Website Pages</a></li>
            <li class="active">All Website Pages</li>
        </ol>
    </section>


    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <div class="box box-primary" style="padding: 15px">
                    <div class="box-header with-border">
                        <h3 class="box-title">All Website Pages Info</h3>
{{--
                        <a href="/adminDashboard/product/add" class="btn btn-warning pull-right"><i class="fa fa-plus"></i> Add New Product </a>
--}}
                    </div>
                @include('dashboard.layouts.messages')
                <!-- /.box-header -->
                    <!-- form start -->
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>id</th>
                            <th>Name</th>
                            <th>url</th>

                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>id</th>
                            <th>Name</th>
                            <th>url</th>

                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        @if($pages)
                            @foreach($pages as $page)
                                <tr>
                                   {{-- @if($og->openGraph)--}}
                                    <td>{{$page->page->id}}</td>
                                    <td>{{$page->page->name}}</td>
                                    <td>{{$page->page->url}}</td>

                                    <td>{{$page->page->created_at}}</td>
                                    <td>{{$page->page->updated_at}}</td>
                                    <td>
                                        <a href="{{adminUrl("seo/website-pages/edit/".$page->page->id)}}" class="" style="font-size: 20px"><i class="fa fa-pencil-square-o"></i> </a>
                                    </td>
                                    {{--@else
                                    @endif--}}
                                </tr>
                            @endforeach
                        @else

                        @endif
                        </tbody>
                    </table>
                    @if($pages)
                        @foreach($pages as $page)
                            <div class="modal modal-danger fade" id="delete{{$page->id}}">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Delete User</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are You Sure You Want To Delete Feature <strong>{{$page->id}}</strong></p>
                                        </div>
                                        <div class="modal-footer">
                                            <form action="/adminDashboard/seo/website_pages/delete/{{$page->id}}" method="post">
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
                    @else

                    @endif
                </div>
            </div>
        </div>
    </section>

@endsection
