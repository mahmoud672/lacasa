@extends('website.layouts.layouts')
@section('title', __('trans.home'))

@section('open-graph')
        <meta name="description" content="{{$og->description}}">
        <meta name="keywords" content="{{$og->key_words}}">
        <!-- open graph meta-->
        <meta property="og:title" content="{{$og->open_graph->og_title}}"/>
        <meta property="og:type" content="{{$og->open_graph->og_type}}"/>
        <meta property="og:url" content="{{url('/')}}"/>
        <meta property="og:image" content="{{$og->open_graph->image_url ? $og->open_graph->image_url : asset($og->open_graph->open_graph_image->path)}}"/>
        <meta property="og:description" content="{{$og->open_graph->og_description}}"/>
        <meta property="og:site_name" content="{{$og->open_graph->og_site_name}}"/>
@endsection

@section('header-code')
    {!! $headerCode->header_code ? $headerCode->header_code : '' !!}
@endsection

@section('canonical')
    <link rel="canonical" href="{{url($og->url)}}"/>
@endsection

@section('customizedStyle')

@endsection

@section('customizedScript')
    <script>
        var currentLocation = location.href;
        $("#came_from").val(currentLocation);
    </script>
@endsection


@section('content')

<!-- banner-section -->
<section class="banner-section style-two">
    <div class="banner-carousel owl-theme owl-carousel owl-dots-none nav-style-one">
        @if($slides)
            @foreach($slides as $slide)
                <div class="slide-item">
                    <div class="image-layer" style="background-image:url({{assetPath($slide->image->path)}})"></div>
                    <div class="auto-container">
                    <div class="content-box">
                        <div class="top-text">
                            <div class="shape"></div>

                        </div>
                        <h1>{{$slide->lang->title}} <br>{{$slide->lang->sub_title}} </h1>
                        <p>تصميمات عصرية تليق بك</p>
                        {!! $slide->lang->description !!}
                        <div class="btn-box">
                            <a href="{{url("/about")}}" class="theme-btn-one">{{__("trans.read_more")}}</a>
                            <a href="{{url("/contact")}}" class="banner-btn">{{__("trans.contact")}}</a>
                        </div>
                    </div>
                </div>
        </div>

            @endforeach
        @endif
    </div>
</section>
<!-- banner-section end -->


<!-- feature-style-two -->
<section class="feature-style-two bg-color-1">
    <div class="pattern-layer" style="background-image: url({{assetPath("website/images/shape/pattern-2.png")}});"></div>
    <div class="shape-layer">
        <div class="shape-1"></div>
        <div class="shape-2"></div>
        <div class="shape-3"></div>
        <div class="shape-4"></div>
    </div>
    <div class="auto-container">
        <div class="row clearfix">
            @if($features)
                @foreach($features as $feature)
                    <div class="col-lg-4 col-md-6 col-sm-12 feature-block">
                        <div class="feature-block-two">
                            <div class="inner-box">
                                <div class="icon-box"><i class="{{$feature->lang->slug}}"></i></div>
                                <h3>{{$feature->lang->title}}</h3>
                                {{--<p>لاكاسا للستائر والاقمشة.</p>--}}
                                {!! $feature->lang->description !!}
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
            {{--<div class="col-lg-4 col-md-6 col-sm-12 feature-block">
                <div class="feature-block-two">
                    <div class="inner-box">
                        <div class="icon-box"><i class="icon-icon5"></i></div>
                        <h3>قياس مجاني</h3>
                        <p>لاكاسا للستائر والاقمشة.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 feature-block">
                <div class="feature-block-two">
                    <div class="inner-box">
                        <div class="icon-box"><i class="icon-icon4"></i></div>
                        <h3>توجيه مجاني</h3>
                        <p>لاكاسا للستائر والاقمشة.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 feature-block">
                <div class="feature-block-two">
                    <div class="inner-box">
                        <div class="icon-box"><i class="icon-icon6"></i></div>
                        <h3>متابعه مجانيه</h3>
                        <p>لاكاسا للستائر والاقمشة.</p>
                    </div>
                </div>
            </div>--}}
        </div>
    </div>
</section>
<!-- feature-style-two end -->


<!-- about-style-two -->
<section class="about-style-two">
    <div class="auto-container">
        <div class="upper-box">
            <figure class="vector-image rotate-me"><img src="{{assetPath("website/images/resource/vector-image-2.png")}}" alt=""></figure>
            <div class="row clearfix">
                <div class="col-lg-6 col-md-12 col-sm-12 title-column">
                    <div class="sec-title">

                        <div class="shape"></div>
                        <h2>{{__("trans.home_title1")}}</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 text-column">
                    <div class="text">
                        {!! $about->lang->description !!}
                    </div>
                </div>
            </div>
        </div>
        <div class="lower-box">
            <div class="row clearfix">
                <div class="col-lg-7 col-md-12 col-sm-12 image-column">
                    <div class="image-box">
                        <figure class="image"><img src="{{assetPath($about->aboutImage->path)}}" alt=""></figure>
                    </div>
                </div>

                <div class="col-lg-5 col-md-12 col-sm-12 content-column">
                    <div class="content-box">
                        @if($whyUsFeatures)
                            @foreach($whyUsFeatures as $feature)
                                <div class="single-item">
                                    <div class="icon-box"><i class="icon-tick"></i></div>
                                    <h3> {{$feature->lang->title}} </h3>
                                   {{-- <p>هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء</p>--}}
                                    {!! $feature->lang->description !!}
                                </div>
                            @endforeach
                        @endif

                       {{-- <div class="single-item">
                            <div class="icon-box"><i class="icon-tick"></i></div>
                            <h3>اعلى جودة تصنيع وتصميم</h3>
                            <p>هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء</p>
                        </div>--}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- about-style-two end -->


<!-- service-style-two -->
<section class="service-style-two bg-color-2 centred">
    <div class="pattern-layer" style="background-image: url({{assetPath("website/images/shape/pattern-3.png")}});"></div>
    <div class="auto-container">
        <div class="title-inner">
            <div class="sec-title centred">

                <div class="shape"></div>
                <h2>{{__("trans.products")}}</h2>
            </div>


        </div>
        <div class="row clearfix">
            @if($products)
                @foreach($products as $product)
                    <div class="col-lg-3 col-md-6 col-sm-12 service-block">
                        <div class="service-block-two mb-80 wow fadeInUp animated animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                            <div class="inner-box">
                                <div class="icon-box">
                                    <i class="icon-icon7"></i>
                                    <a href="{{url("/product/$product->url")}}">+</a>
                                </div>
                                <div class="lower-content">
                                    <h3><a href="{{url("/product/$product->url")}}">{{$product->lang->title}}</a></h3>

                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif

        </div>
        {{--<div class="row clearfix alternet-2">
            <div class="col-lg-3 col-md-6 col-sm-12 service-block">
                <div class="service-block-two wow fadeInUp animated animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <div class="icon-box">
                            <i class="icon-icon11"></i>
                            <a href="service-details.html">+</a>
                        </div>
                        <div class="lower-content">
                            <h3><a href="service-details.html">منتج 5</a></h3>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 service-block">
                <div class="service-block-two wow fadeInUp animated animated" data-wow-delay="200ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <div class="icon-box">
                            <i class="icon-icon12"></i>
                            <a href="service-details.html">+</a>
                        </div>
                        <div class="lower-content">
                            <h3><a href="service-details.html">منتج 6</a></h3>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 service-block">
                <div class="service-block-two wow fadeInUp animated animated" data-wow-delay="400ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <div class="icon-box">
                            <i class="icon-icon13"></i>
                            <a href="service-details.html">+</a>
                        </div>
                        <div class="lower-content">
                            <h3><a href="service-details.html">منتج 7</a></h3>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 service-block">
                <div class="service-block-two wow fadeInUp animated animated" data-wow-delay="600ms" data-wow-duration="1500ms">
                    <div class="inner-box">
                        <div class="icon-box">
                            <i class="icon-icon14"></i>
                            <a href="service-details.html">+</a>
                        </div>
                        <div class="lower-content">
                            <h3><a href="service-details.html">منتج 8</a></h3>

                        </div>
                    </div>
                </div>
            </div>
        </div>--}}
    </div>
</section>
<!-- service-style-two end -->




<!-- working-section -->
<section class="working-section centred">
    <div class="auto-container">
        <div class="sec-title centred">

            <div class="shape"></div>
            <h2>{{__("trans.services")}}</h2>
        </div>
        <div class="row clearfix">
            @if($mainServices)
                @foreach($mainServices as $service)
                    <div class="col-lg-3 col-md-6 col-sm-12 working-block">
                        <div class="working-block-one wow fadeInUp animated animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                            <div class="inner-box">
                                <figure class="image-box"><img src="{{assetPath($service->image->path)}}" alt=""></figure>
                                <div class="lower-content">
                                    <span class="count-text">{{$loop->iteration}}</span>
                                    <div class="inner">
                                        <h3><a href="{{url("/service/$service->url")}}">{{$service->lang->title}}</a></h3>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif

        </div>
    </div>
</section>
<!-- working-section end -->


<!-- project-section -->
<section class="project-section">
    <div class="outer-container clearfix">
        @if($galleryImages)
            @foreach($galleryImages as $image)
                <div class="single-column">
                    <div class="project-block-one">
                        <div class="inner-box">
                            <figure class="image-box">
                                <img src="{{assetPath($image->image->path)}}" alt="">
                            </figure>
                            <div class="content-box">
                                <div class="view-btn"><a href="{{assetPath($image->image->path)}}" class="lightbox-image" data-fancybox="gallery">+</a></div>


                            </div>
                        </div>
                    </div>

                </div>
            @endforeach
        @endif
       {{-- <div class="single-column">
            <div class="project-block-one">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="images/gallery/gallery-1.jpg" alt="">
                    </figure>
                    <div class="content-box">
                        <div class="view-btn"><a href="images/gallery/gallery-1.jpg" class="lightbox-image" data-fancybox="gallery">+</a></div>


                    </div>
                </div>
            </div>

        </div>
        <div class="single-column">
            <div class="project-block-one">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="images/gallery/gallery-3.jpg" alt="">
                    </figure>
                    <div class="content-box">
                        <div class="view-btn"><a href="images/gallery/gallery-3.jpg" class="lightbox-image" data-fancybox="gallery">+</a></div>


                    </div>
                </div>
            </div>
        </div>
        <div class="single-column">

            <div class="project-block-one">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="images/gallery/gallery-5.jpg" alt="">
                    </figure>
                    <div class="content-box">
                        <div class="view-btn"><a href="images/gallery/gallery-5.jpg" class="lightbox-image" data-fancybox="gallery">+</a></div>


                    </div>
                </div>
            </div>
        </div>
        <div class="single-column">
            <div class="project-block-one">
                <div class="inner-box">
                    <figure class="image-box">
                        <img src="images/gallery/gallery-6.jpg" alt="">
                    </figure>
                    <div class="content-box">
                        <div class="view-btn"><a href="images/gallery/gallery-6.jpg" class="lightbox-image" data-fancybox="gallery">+</a></div>


                    </div>
                </div>
            </div>

        </div>--}}
    </div>
</section>
<!-- project-section end -->




<!-- clients-section -->
<section class="clients-section bg-color-2">
    <div class="auto-container">
        <div class="auto-container">
            <div class="clients-carousel owl-carousel owl-theme owl-nav-none owl-dots-none">
                @if($clients)
                    @foreach($clients as $client)
                        <figure class="clients-logo-box"><a href="{{url("/")}}"><img src="{{assetPath($client->image->path)}}" alt=""></a></figure>
                    @endforeach
                @endif

            </div>
        </div>
    </div>
</section>
<!-- clients-section end -->

@endsection
