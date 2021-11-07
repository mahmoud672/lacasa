@extends('website.layouts.layouts')
@section('title',  __('trans.contact'))

@section('open-graph')
    <meta name="description" content="{{$og->description ? $og->description : $mainOpenGraph->description}}">
    <meta name="keywords" content="{{$og->key_words ? $og->key_words : $mainOpenGraph->key_words}}">
    <!-- open graph meta-->
    <meta property="og:title"
          content="{{$og->open_graph->og_title ? $og->open_graph->og_title : $mainOpenGraph->open_graph->og_title}}"/>
    <meta property="og:type"
          content="{{$og->open_graph->og_type ? $og->open_graph->og_type : $mainOpenGraph->open_graph->og_type}}"/>
    <meta property="og:url" content="{{url('contact')}}"/>
    <meta property="og:image" content="
    @if($og->open_graph->image_url)
    {{$og->open_graph->image_url}}
    @elseif($og->open_graph->open_graph_image)
    {{asset($og->open_graph->open_graph_image->path)}}
    @else
    {{$mainOpenGraph->open_graph->image_url}}
    @endif
    {{--{{$object->open_graph->image_url ? $object->open_graph->image_url : asset($object->open_graph->open_graph_image->path)}}--}}"
    />
    <meta property="og:description"
          content="{{$og->open_graph->og_description ? $og->open_graph->og_description : $mainOpenGraph->open_graph->og_description}}"/>
    <meta property="og:site_name"
          content="{{$og->open_graph->og_site_name ? $og->open_graph->og_site_name : $mainOpenGraph->open_graph->og_site_name}}"/>
@endsection

@section('canonical')
    <link rel="canonical" href="{{url('contact')}}"/>
@endsection

@section('header-code')
    {!! $headerCode->header_code ? $headerCode->header_code : '' !!}
@endsection

@section('customizedScript')
    <script>
        var currentLocation = location.href;
        $("#came_from").val(currentLocation);
    </script>
@endsection


@section('content')


<!--Page Title-->
<section class="page-title" style="background-image: url({{assetPath("website/images/background/page-title.jpg")}});">
    <div class="auto-container">
        <div class="content-box">
            <div class="title">
                <h1>{{__("trans.contact")}}</h1>
            </div>
            <ul class="bread-crumb clearfix">
                <li><a href="{{url("/")}}">{{__("trans.home")}}</a></li>


                <li class="shape"></li>
                <li>{{__("trans.contact")}}</li>
            </ul>
        </div>
    </div>
</section>
<!--End Page Title-->


<!-- contact-style-two -->
<section class="contact-style-two">
    <div class="outer-container">
        <div class="auto-container">
            <div class="row clearfix">
                <div class="col-lg-6 col-md-12 col-sm-12 form-column">
                    <div class="inner-box">
                        <div class="sec-title light">
                            <p>{{__("trans.always_contact_with_us")}}</p>
                            <div class="shape"></div>

                        </div>
                        <div class="form-inner">
                            @include("website.layouts.messages")
                            <form method="post" action="{{url("/contact")}}" id="contact-form" class="default-form">
                               @csrf
                                <input type="hidden" name="came_from" value="" id="came_from">
                                <div class="row clearfix">
                                    <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                        <input type="text" name="name" placeholder="{{__("trans.form_name")}}" value="{{old("name")}}" required>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                        <input type="email" name="email" placeholder="{{__("trans.email")}}" value="{{old("email")}}" required>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 form-group">
                                        <input type="text" name="phone" required value="{{old("phone")}}" placeholder="{{__("trans.form_phone")}}">
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 form-group">
                                        <input type="text" name="title" required value="{{old("title")}}" placeholder="{{__("trans.message_title")}}">
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                                        <textarea name="message" required placeholder="{{__("trans.message")}}">{{old("message")}}</textarea>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 form-group message-btn">
                                        <button class="theme-btn-one" type="submit" name="submit-form">{{__("trans.send")}} </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 info-column">
                    <div class="info-box">
                        <h3>{{__("trans.address_details")}}</h3>
                        <ul class="info clearfix">
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <p>{{__("trans.address")}}</p>
                                <h4>
                                    {{$contact->address()}}
                                </h4>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <h4><span>{{__("trans.phone")}}</span><a href="tel:{{$contact->phone}}">{{$contact->phone}}</a></h4>
                            </li>
                            <li>
                                <i class="fa fa-envelope-open"></i>
                                <h4><span>{{__("trans.email")}}</span><a href="mailto:{{$contact->email}}">{{$contact->email}}</a></h4>
                            </li>
                        </ul>
                        <ul class="social-links clearfix">
                            @if($contact->facebook)
                                <li><a href="{{$contact->facebook}}"><i class="fab fa-facebook-f"></i></a></li>
                            @endif

                            @if($contact->twitter)
                                <li><a href="{{$contact->twitter}}"><i class="fab fa-twitter"></i></a></li>
                            @endif

                            @if($contact->pinterest)
                                <li><a href="{{$contact->pinterest}}"><i class="fab fa-pinterest-p"></i></a></li>
                            @endif

                            @if($contact->google)
                                <li><a href="{{$contact->google}}"><i class="fab fa-google-plus-g"></i></a></li>
                            @endif

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- contact-style-two end -->


<!-- google-map-section -->
<section class="google-map-section">
    <div class="map-inner">
        <iframe src="{{$contact->location}}" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

    </div>
</section>
<!-- google-map-section -->

@endsection
