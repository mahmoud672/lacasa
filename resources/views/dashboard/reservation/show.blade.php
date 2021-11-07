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
    </script>
@endsection
{{-- Start of page Content --}}
@section('content')

    <section class="content-header">
        <h1>
            Reservations
            <small>All Reservations</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{adminUrl('/reservation')}}">Reservations</a></li>
            <li class="active">All Reservations</li>
        </ol>
    </section>


    <section class="content">
        <div class="tables-section">
            <!-- start todaty calls table -->
            <div class="today-calls-table table-section">
                <div class="section-heading">
                    <p>
                        Reservation Details
                    </p>
                </div>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Attribute</th>
                        <th scope="col">Details</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><strong>Name</strong></td>
                        <td>{{$reservation->name}}</td>
                    </tr>
                    <tr>
                        <td><strong>Email</strong></td>
                        <td>{{$reservation->email}}</td>
                    </tr>
                    <tr>
                        <td><strong>Phone</strong></td>
                        <td>{{$reservation->phone}}</td>
                    </tr>
                    {{--<tr>
                        <td><strong>Product</strong></td>
                        <td>{{$reservation->product? $reservation->product->product_en->title:''}}</td>
                    </tr>--}}
                    {{--<tr>
                        <td><strong>From Date</strong></td>
                        <td>{{$reservation->from_date}}</td>
                    </tr>--}}
                   {{--<tr>
                        <td><strong>To Date</strong></td>
                        <td>{{$reservation->to_date}}</td>
                    </tr>--}}
                    {{--<tr>
                        <td><strong>From City </strong></td>
                        <td>{{$reservation->from_city ? $reservation->fromCity->city_en->city_name : ''}}</td>
                    </tr>--}}
                   {{-- <tr>
                        <td><strong>To City</strong></td>
                        <td>{{$reservation->to_city ? $reservation->toCity->city_en->city_name : ''}}</td>
                    </tr>--}}
                    {{--<tr>
                        <td><strong>Reservation Degree</strong></td>
                        <td>{{$reservation->reservation_degree ==1 ? 'economical':'business'}}</td>
                    </tr>--}}
                   {{-- <tr>
                        <td><strong>Adults Count</strong></td>
                        <td>{{$reservation->adults_count}}</td>
                    </tr>--}}
                    {{--<tr>
                        <td><strong>Children Count</strong></td>
                        <td>{{$reservation->children_count}}</td>
                    </tr>--}}
                    {{--<tr>
                        <td><strong>Children Age(s)</strong></td>
                        <td>{{$reservation->age}}</td>
                    </tr>--}}
                   {{-- <tr>
                        <td><strong>height </strong></td>
                        <td>{{$reservation->height}}</td>
                    </tr>--}}
                    {{--<tr>
                        <td><strong>Gender</strong></td>
                        @if($reservation->gender = 1)
                            <td>Child</td>
                        @elseif($reservation->gender = 2)
                            <td>Male</td>
                        @elseif($reservation->gender = 3)
                            <td>Female</td>
                        @endif
                    </tr>--}}
                    <tr>
                        <td><strong>Service</strong></td>
                        <td>{{$reservation->service->service_en->title}}</td>
                    </tr>

                    {{--<tr>
                        <td><strong>Reservation Date</strong></td>
                        <td>{{$reservation->reservation_date}}</td>
                    </tr>--}}
                    @if($reservation->came_from)
                        <tr>
                            <td><strong>Reservation Came From</strong></td>
                            <td><a href="{{url($reservation->came_from)}}" target="_blank">{{$reservation->came_from}}</a></td>
                        </tr>
                    @endif

                    @if($reservation->shipments_count)
                        <tr>
                            <td><strong>Shipments Count</strong></td>
                            <td>{{$reservation->shipments_count}}</td>
                        </tr>
                    @endif

                    @if($reservation->from_date)
                        <tr>
                            <td><strong>Reservation From date</strong></td>
                            <td>{{$reservation->from_date}}</td>
                        </tr>
                    @endif

                    @if($reservation->to_date)
                        <tr>
                            <td><strong>Reservation To date</strong></td>
                            <td>{{$reservation->to_date}}</td>
                        </tr>
                    @endif

                    @if($reservation->company_name)
                        <tr>
                            <td><strong>Company Name</strong></td>
                            <td>{{$reservation->company_name}}</td>
                        </tr>
                    @endif

                    @if($reservation->website_url)
                        <tr>
                            <td><strong>Website URL</strong></td>
                            <td><a href="{{$reservation->website_url}}">{{$reservation->website_url}}</a></td>
                        </tr>
                    @endif

                    @if($reservation->location)
                        <tr>
                            <td><strong>Location</strong></td>
                            <td>{{$reservation->location}}</td>
                        </tr>
                    @endif

                    @if($reservation->requirements)
                        <tr>
                            <td><strong>Requirements</strong></td>
                            <td>{{$reservation->requirements}}</td>
                        </tr>
                    @endif

                    @if($reservation->budget)
                        <tr>
                            <td><strong>Budget</strong></td>
                            <td>{{$reservation->budget}}</td>
                        </tr>
                    @endif

                    @if($reservation->description1)
                        <tr>
                            <td><strong>Project Details</strong></td>
                            <td>{{$reservation->description1}}</td>
                        </tr>
                    @endif

                    @if($reservation->description2)
                        <tr>
                            <td><strong>Some Descriptions</strong></td>
                            <td>{{$reservation->description2}}</td>
                        </tr>
                    @endif
                    @if($reservation->description3)
                        <tr>
                            <td><strong>Some Descriptions</strong></td>
                            <td>{{$reservation->description3}}</td>
                        </tr>
                    @endif
                    <tr>
                        <td><strong>Message</strong></td>
                        <td>{{$reservation->message}}</td>
                    </tr>

                    <tr>
                        <td><strong>Sent</strong></td>
                        <td>{{$reservation->created_at->diffForHumans()}}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
           {{-- @if($reservation->message)
                {{$reservation->message}}
            @endif--}}
            <!-- end todaty calls table -->

        </div>
    </section>

@endsection
