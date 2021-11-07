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
                'lengthChange': true,
                'searching'   : true,
                'ordering'    : true,
                'info'        : true,
                'autoWidth'   : false
            })
        })

        var loc=location.search;
        if(loc =='?type=partner'){
            $("#add_new_client").attr('href','{{adminUrl('city/create?type=partner')}}');
            $("#add_new_client").text('Add New Partner');
        }
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            City
            <small>All Cities</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/city')}}">Cities</a></li>
            <li class="active">All Cities</li>
        </ol>
    </section>



    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <div class="box box-primary" style="padding: 15px">
                    <div class="box-header with-border">
                        <h3 class="box-title">All Cities Info</h3>
                        <a href="{{adminUrl('city/create-country')}}" id="add_new_client" class="btn btn-primary pull-right"><i class="fa fa-plus"></i> Add New Country </a>
                    </div>
                @include('dashboard.layouts.messages')
                <!-- /.box-header -->
                    <!-- form start -->
                    <table id="example2" class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>id</th>
                           {{-- <th>City Name</th>--}}
                            <th>Name</th>
                            <th>Created By</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>id</th>
                            {{--<th>City Name</th>--}}
                            <th>Name</th>
                            <th>Created By</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        @if($cities)
                            @foreach($cities as $city)
                                <tr>
                                    <td>{{$city->id}}</td>
                                    <td>{{$city->city_en->city_name}}</td>
                                   {{-- <td>{{$city->city_en->country_name}}</td>--}}
                                    <td>{{$city->createdBy->name}}</td>
                                    <td>{{$city->created_at ? $city->created_at->diffForHumans() : ''}}</td>
                                    <td>{{$city->updated_at ? $city->updated_at->diffForHumans() : ''}}</td>
                                    <td>
                                        <a href="{{route('city.edit', $city->id)}}" class style="font-size: 20px"><i class="fa fa-pencil-square-o"></i> </a>
                                        {{--<a href="{{adminUrl('city/'.$city->id . '/create-city')}}" class style="font-size: 20px"><i class="fa fa-plus" title="Add City to this Country"></i> </a>
                                        <a href="{{adminUrl('city/'.$city->id .'/show-cities')}}" class style="font-size: 20px"><i class="fa fa-eye" title="Show Country-Cities"></i> </a>--}}
                                        <button type="button" class data-toggle="modal" data-target="#delete{{$city->id}}" style="font-size: 20px">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            @endforeach
                        @endif

                        </tbody>
                    </table>

                    @if($cities)
                        @foreach($cities as $city)
                            <div class="modal modal-danger fade" id="delete{{$city->id}}">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Delete City</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are You Sure You Want To Delete City <strong>{{$city->city_en->name}}</strong></p>
                                        </div>
                                        <div class="modal-footer">
                                            <form action="{{route('city.destroy', $city->id)}}" method="post">
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
