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
            Open Graph
            <small>All Open Graphs</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Open Graph</a></li>
            <li class="active">All Open Graphs</li>
        </ol>
    </section>


    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <div class="box box-primary" style="padding: 15px">
                    <div class="box-header with-border">
                        <h3 class="box-title">All Open Graphs Info</h3>
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
                            <th>og:image</th>
                            {{--  <th>description</th>--}}
                            <th>og:url</th>
                            <th>og:title</th>

                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>id</th>
                            <th>og:image</th>
                            {{--  <th>description</th>--}}
                            <th>og:url</th>
                            <th>og:title</th>

                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        @if($pages)
                            @foreach($pages as $og)
                                <tr>
                                    @if($og->open_graph)
                                    <td>{{$og->open_graph->id}}</td>
                                    @if($og->open_graph->open_graph_image)
                                        <td><img src="{{assetPath($og->open_graph->open_graph_image->path)}}" alt="{{$og->open_graph->open_graph_image->alt}}"style="width:50px;height:50px;"></td>
                                        @else
                                        <td>no og:image</td>
                                        @endif

                                    <td>{{$og->open_graph->og_url}}</td>
                                    <td>{{$og->open_graph->og_title}}</td>

                                    <td>{{$og->open_graph->created_at}}</td>
                                    <td>{{$og->open_graph->updated_at}}</td>
                                    <td>
                                        <a href="{{adminUrl('seo/open-graph/edit/'.$og->open_graph->id)}}" class="" style="font-size: 20px"><i class="fa fa-pencil-square-o"></i> </a>
                                    </td>
                                    @else
                                    @endif
                                </tr>
                            @endforeach
                        @else

                        @endif
                        </tbody>
                    </table>
                    @if($pages)
                        @foreach($pages as $og)
                            <div class="modal modal-danger fade" id="delete{{$og->id}}">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Delete User</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are You Sure You Want To Delete Feature <strong>{{$og->id}}</strong></p>
                                        </div>
                                        <div class="modal-footer">
                                            <form action="/adminDashboard/product/delete/{{$og->id}}" method="post">
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
