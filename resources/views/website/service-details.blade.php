@extends('website.layouts.layouts')
@section('title', $serviceSingle->{'service_'.currentLang()}->title)

@section('open-graph')
    <meta name="description" content="{{$og->description ? $og->description : $mainOpenGraph->description}}">
    <meta name="keywords" content="{{$og->key_words ? $og->key_words : $mainOpenGraph->key_words}}">
    <!-- open graph meta-->
    <meta property="og:title" content="{{$og->open_graph->og_title ? $og->open_graph->og_title : $mainOpenGraph->open_graph->og_title}}"/>
    <meta property="og:type" content="{{$og->open_graph->og_type ? $og->open_graph->og_type : $mainOpenGraph->open_graph->og_type}}"/>
    <meta property="og:url" content="{{url('/service')}}"/>
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
    <meta property="og:description" content="{{$og->open_graph->og_description ? $og->open_graph->og_description : $mainOpenGraph->open_graph->og_description}}"/>
    <meta property="og:site_name" content="{{$og->open_graph->og_site_name ? $og->open_graph->og_site_name : $mainOpenGraph->open_graph->og_site_name}}"/>
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
                <h1>{{$serviceSingle->lang->title}}</h1>
            </div>
            <ul class="bread-crumb clearfix">
                <li><a href="{{url("/")}}">{{__("trans.home")}}</a></li>


                <li class="shape"></li>
                <li>{{__("trans.services")}}</li>

                <li class="shape"></li>
                <li>{{$serviceSingle->lang->title}}</li>
            </ul>
        </div>
    </div>
</section>
<!--End Page Title-->


<!-- service-details -->
<section class="service-details">
    <div class="auto-container">
        <div class="row clearfix">
            <div class="col-lg-4 col-md-12 col-sm-12 sidebar-side">
                <div class="service-sidebar default-sidebar mr-20">
                    <div class="sidebar-widget category-widget">
                        <div class="widget-title">
                            <h3>{{__("trans.other_services")}}</h3>
                            <div class="shape"></div>
                        </div>
                        <div class="widget-content">
                            <ul class="category-list clearfix">
                                @if($anotherServices)
                                    @foreach($anotherServices as $service)
                                        <li {{request()->is(url("/service/$service->url") == url("/service/$service->url"))}}>
                                            <h5><a href="{{url("/service/$service->url")}}">{{$service->lang->title}} </a></h5>
                                            <span class="line"></span>
                                        </li>
                                    @endforeach
                                @endif

                            </ul>
                        </div>
                    </div>




                    <div class="sidebar-widget free-quote">
                        <div class="widget-title">
                            <h3>{{__("trans.contact")}}</h3>
                            <div class="shape"></div>
                        </div>
                        @include("website.layouts.messages")
                        <div class="widget-content">
                            <form action="{{url("/contact")}}" method="post" class="quote-form">
                                @csrf
                                <input type="hidden" name="came_from" value="" id="came_from">
                                <div class="form-group">
                                    <input type="text" name="name" placeholder="{{__("trans.form_name")}}" required value="{{old("name")}}">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" placeholder="{{__("trans.email")}}" required value="{{old("email")}}">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="phone" placeholder="{{__("trans.phone")}}" required value="{{old("phone")}}">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="title" placeholder="{{__("trans.message_title")}}"  value="{{old("title")}}">
                                </div>
                                <div class="form-group">
                                    <textarea name="message" placeholder="{{__("trans.message")}}">{{old("message")}}</textarea>
                                </div>
                                <div class="form-group message-btn">
                                    <button type="submit" class="theme-btn-one">{{__("trans.send")}}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-12 col-sm-12 content-side">
                <div class="service-details-content">
                    <div class="content-one">
                        <div class="carousel-column">
                            <div class="inner-column">
                                <div class="single-item-carousel owl-carousel owl-theme">
                                    @if($serviceSingle->images)
                                        @foreach($serviceSingle->images as $image)
                                            <div class="slide">
                                                <div class="image">
                                                    <img src="{{assetPath($image->path)}}" alt="" />
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </div>
                        </div>
                        {{--<figure class="image-box"><img src="{{assetPath($product->image->path)}}" alt=""></figure>--}}
                        <div class="text">
                            <h2>{{$serviceSingle->lang->title}}</h2>
                            {!! $serviceSingle->lang->description !!}

                        </div>
                    </div>
                    <div class="two-column">
                        <div class="row clearfix">
                            <div class="col-lg-12 col-md-6 col-sm-12 video-column">
                                <div class="video-inner" style="background-image: url({{assetPath("website/images/resource/video-1.jpg")}});">
                                    <div class="video-content centred">
                                        <a href="{{$serviceSingle->video->url}}" class="lightbox-image video-btn" data-caption=""><i class="far fa-play"></i></a>

                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>
<!-- service-details end -->


@endsection

