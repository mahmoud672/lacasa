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

{{--
<div class="dez-bnr-inr overlay-black-middle" style="background-image:url({{assetPath("website/images/background/bg4.jpg")}});">
    <div class="container">
        <div class="dez-bnr-inr-entry">
            <h1 class="text-white">{{__("trans.service_details")}}</h1>
        </div>
    </div>
</div>
<div class="breadcrumb-row">
    <div class="container">
        <ul class="list-inline">
            <li><a href="{{url("/")}}">{{__("trans.home")}}</a></li>
            <li>{{__("trans.services")}}</li>
            <li>{{$serviceSingle->lang->title}}</li>
        </ul>
    </div>
</div>



<div class="service_details overlay-white-middle" style="background-image:url({{assetPath("website/images/background/bg5.png")}}); background-position:right center; background-repeat:no-repeat; background-size: auto 100%;">
    <div class="container">
        <div class="image-layer">

        </div>
        <div class="row">
            <div class="col-lg-6 service-details">
                <div class="text-p">
                    <p> {{$serviceSingle->lang->title}} </p>


                </div>
                --}}{{--<p style="font-weight: bolder;line-height: 1.9;">
                    الحركة بركة , بس هتتحرك إزاى ورقبتك بتوجعك !؟
                    طب ايه هي أسباب الإصابة بالإنزلاق الغضروفي العنقي ؟
                    1. حمل أشياء ثقيلة بطريقة خاطئة .
                    2. ضعف عضلات الرقبة أو الظهر سواء لعوامل وراثية أو مكتسبة .
                    3. التقدم في العمر .
                    4. السمنة المفرطة .
                    الحركة بركة , بس هتتحرك إزاى ورقبتك بتوجعك !؟
                    طب ايه هي أسباب الإصابة بالإنزلاق الغضروفي العنقي ؟
                    1. حمل أشياء ثقيلة بطريقة خاطئة .
                    2. ضعف عضلات الرقبة أو الظهر سواء لعوامل وراثية أو مكتسبة .
                    3. التقدم في العمر .
                    4. السمنة المفرطة
                </p>--}}{{--
                {!! $serviceSingle->lang->description !!}
            </div>
            <div class="col">
                <div class="slider-home carl">
                    <div id="myRotator" class="banner-rotator service_details_wraper">
                        @if(count($serviceSingle->images) > 0)
                            <ul class="slides">
                                @foreach($serviceSingle->images as $image)
                                    <li data-effect="push" data-columns="6" data-direction="down" data-alternate="true" data-depth="0">
                                        <a href="#">
                                            <img src="{{assetPath($image->path)}}" data-src="{{assetPath($image->path)}}" data-thumb="{{assetPath("website/images/thumbs/thumb2.jpg")}}"
                                                 title="3D abstract art" alt="" />
                                        </a>
                                    </li>
                                @endforeach
                               --}}{{-- <li data-effect="push" data-columns="6" data-direction="down" data-alternate="true" data-depth="0">
                                    <a href="#">
                                        <img src="./images/our-work/pic2.jpg" data-src="./images/main-slider/slide1.jpg" data-thumb="images/thumbs/thumb2.jpg"
                                             title="3D abstract art" alt="" />
                                    </a>
                                </li>
                                <li data-effect="random" data-rows="5" data-direction="down" data-order="down" data-depth="1000"
                                    data-shape-depth="10">
                                    <a href="#">
                                        <img src="./images/our-work/pic3.jpg" data-src="./images/main-slider/slide2.jpg" data-thumb="images/thumbs/thumb2.jpg"
                                             title="krazy kartoons" alt="" />
                                    </a>
                                </li>
                                <li data-effect="zoom" data-columns="5" data-rows="3" data-direction="random" data-order="downRight"
                                    data-depth="1000">
                                    <a href="#">
                                        <img src="./images/our-work/pic4.jpg" data-src="./images/main-slider/slide3.jpg" data-thumb="images/thumbs/thumb2.jpg"
                                             title="say it in print" alt="" />
                                    </a>
                                </li>--}}{{--

                            </ul>

                        @else
                            <li data-effect="push" data-columns="6" data-direction="down" data-alternate="true" data-depth="0">
                                <a href="#">
                                    <img src="{{assetPath($serviceSingle->image->path)}}" data-src="{{assetPath($serviceSingle->image->path)}}" data-thumb="{{assetPath("website/images/thumbs/thumb2.jpg")}}"
                                         title="3D abstract art" alt="" />
                                </a>
                            </li>

                        @endif

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


<!-- Client logo -->
<div class="section-full dez-we-find bg-img-fix client-logo-area">
    <div class="container">
        <div class="section-content">
            <div class="client-logo-carousel owl-carousel owl-btn-center-lr">
                @if($clients)
                    @foreach($clients as $client)
                        <div class="item">
                            <div class="ow-client-logo">
                                <div class="client-logo"><a href="#"><img src="{{assetPath($client->image->path)}}" alt=""></a></div>
                            </div>
                        </div>
                    @endforeach
                @endif

            </div>
        </div>
    </div>
</div>
<!-- Client logo END -->

<!-- contact area -->
<a href="tel:+"></a>
<div class="section-full content-inner bg-white contact-style-1">
    <div class="container">
        <div class="row">
            <!-- Left part start -->
            <div class="col-lg-8">
                <div class="p-a30 bg-gray clearfix m-b30 ">
                    <h2>{{__("trans.message_us")}}</h2>
                    <div class="dzFormMsg"></div>
                    <form method="post" class="dzForm" action="{{url("/contact")}}">
                        @csrf
                        <input type="hidden" name="came_from" value="" id="came_from">
                        <input type="hidden" value="Contact" name="dzToDo" >
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input name="name" type="text" required class="form-control" placeholder="{{__("trans.form_name")}}*" value="{{old("name")}}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input name="email" type="email" class="form-control" required  placeholder="{{__("trans.email")}}*" value="{{old("email")}}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input name="phone" type="text" required class="form-control" placeholder="{{__("trans.phone")}}*" value="{{old("phone")}}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input name="title" type="text" required class="form-control" placeholder="{{__("trans.message_title")}}*" value="{{old("title")}}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="input-group">
                                        <textarea name="message" rows="4" class="form-control" required placeholder="{{__("trans.message")}}...">{{old("message")}}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="g-recaptcha" data-sitekey="6LefsVUUAAAAADBPsLZzsNnETChealv6PYGzv3ZN" data-callback="verifyRecaptchaCallback" data-expired-callback="expiredRecaptchaCallback"></div>
                                        <input class="form-control d-none" style="display:none;" data-recaptcha="true" required data-error="يرجي كتابة الكابتشا">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <button name="submit" type="submit" value="Submit" class="site-button "> <span>{{__("trans.send")}}</span> </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Left part END -->
            <!-- right part start -->
            <div class="col-lg-4 d-lg-flex">
                <div class="p-a30 m-b30 border-1 contact-area align-self-stretch">
                    <h2 class="m-b10">تسجيل سرع</h2>
                    <p>لو عندك اي استفسار بسيط نقدر نجاوبك عليه</p>
                    <ul class="no-margin">
                        <li class="icon-bx-wraper left m-b30">
                            <div class="icon-bx-xs bg-primary"> <a href="#" class="icon-cell"><i class="fa fa-map-marker"></i></a> </div>
                            <div class="icon-content">
                                <h6 class="text-uppercase m-tb0 dez-tilte">{{__("trans.address")}}:</h6>
                                <p>{{$contact->address()}}</p>
                            </div>
                        </li>
                        <li class="icon-bx-wraper left  m-b30">
                            <div class="icon-bx-xs bg-primary"> <a href="#" class="icon-cell"><i class="fa fa-envelope"></i></a> </div>
                            <div class="icon-content">
                                <h6 class="text-uppercase m-tb0 dez-tilte">{{__("trans.email")}}:</h6>
                                <p>{{$contact->email}}</p>
                            </div>
                        </li>
                        <li class="icon-bx-wraper left">
                            <div class="icon-bx-xs bg-primary"> <a href="#" class="icon-cell"><i class="fa fa-phone"></i></a> </div>
                            <div class="icon-content">
                                <h6 class="text-uppercase m-tb0 dez-tilte">{{__("trans.phone")}}</h6>
                                <p>{{$contact->phone}}</p>
                            </div>
                        </li>
                    </ul>
                    <div class="m-t20">
                        <ul class="dez-social-icon dez-social-icon-lg">
                            <li><a href="javascript:void(0);" class="fa fa-facebook bg-primary"></a></li>
                            <li><a href="javascript:void(0);" class="fa fa-twitter bg-primary"></a></li>
                            <li><a href="javascript:void(0);" class="fa fa-linkedin bg-primary"></a></li>
                            <li><a href="javascript:void(0);" class="fa fa-pinterest-p bg-primary"></a></li>
                            <li><a href="javascript:void(0);" class="fa fa-google-plus bg-primary"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- right part END -->
        </div>
        <div class="row">
            <div class="col-md-12">
                <!-- Map part start -->
                <h2>{{__("trans.location")}}</h2>
                <iframe src="{{$contact->location}}" style="border:0; width:100%; height:400px;" allowfullscreen></iframe>
                <!-- Map part END -->
            </div>
        </div>
    </div>
</div>
<!-- contact area  END -->--}}


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
                                {{--<li>
                                    <h5><a href="service-details.html">ستائر رول </a></h5>
                                    <span class="line"></span>
                                </li>
                                <li class="active">
                                    <h5><a href="service-details.html">اقمشة</a></h5>
                                    <span class="line"></span>
                                </li>
                                <li>
                                    <h5><a href="service-details.html">خدمة 3</a></h5>
                                    <span class="line"></span>
                                </li>
                                <li>
                                    <h5><a href="service-details.html">خدمة 4</a></h5>
                                    <span class="line"></span>
                                </li>
                                <li>
                                    <h5><a href="service-details.html">خدمة 5</a></h5>
                                    <span class="line"></span>
                                </li>--}}
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
                        <figure class="image-box"><img src="{{assetPath($serviceSingle->image->path)}}" alt=""></figure>
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

