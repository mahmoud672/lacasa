
<!-- main header -->
<header class="main-header style-two">
    <!-- header-top -->
    <div class="header-top">
        <div class="auto-container">
            <div class="top-inner clearfix">
                <ul class="info clearfix pull-right">
                    <li><a href="{{currentLang() == 'en' ? url("/lang/ar") : url("/lang/en")}}">{{currentLang() == 'en' ? "Arabic" : "English"}}</a></li>


                </ul>
                <ul class="header-social clearfix pull-left">
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
    <!-- header-upper -->
    <div class="header-upper">
        <div class="pattern-layer" style="background-image: url({{assetPath("website/images/shape/pattern-2.png")}});"></div>
        <div class="auto-container">
            <div class="upper-inner clearfix">
                <div class="logo-box pull-right">
                    <figure class="logo"><a href="{{url("/")}}"><img src="{{assetPath($setting->image->path)}}" alt=""></a></figure>
                </div>
                <ul class="upper-info clearfix pull-left">
                    <li>
                        <i class="fas fa-map-marker-alt"></i>
                        <h6>{{__("trans.address")}}</h6>
                        <h5>{{$contact->address()}}</h5>
                    </li>
                    <li>
                        <i class="fas fa-phone-volume"></i>
                        <h6>{{__("trans.phone")}}</h6>
                        <h5><a href="tel:{{$contact->phone}}">{{$contact->phone}}</a></h5>
                    </li>
                    <li>
                        <i class="fab fa-whatsapp"></i>
                        <h6>{{__("trans.whatsapp")}}</h6>
                        <h5><a href="tel:{{$contact->whatsapp}}">{{$contact->whatsapp}}</a></h5>
                    </li>


                </ul>
            </div>
        </div>
    </div>
    <!-- header-lower -->
    <div class="header-lower">
        <div class="auto-container">
            <div class="lower-inner">
                <div class="outer-box clearfix">
                    <div class="menu-area pull-right">
                        <!--Mobile Navigation Toggler-->
                        <div class="mobile-nav-toggler">
                            <i class="icon-bar"></i>
                            <i class="icon-bar"></i>
                            <i class="icon-bar"></i>
                        </div>
                        <nav class="main-menu navbar-expand-md navbar-light">
                            <div class="collapse navbar-collapse show clearfix" id="navbarSupportedContent">
                                <ul class="navigation clearfix">

                                    <li class="{{request()->is("/") ? "current" : ""}}"><a href="{{url("/")}}">{{__("trans.home")}}</a></li>
                                    <li class="{{request()->is("about") ? "current" : ""}}"><a href="{{url("/about")}}">{{__("trans.about_us")}}</a></li>

                                    <li class="dropdown"><a href="#">{{__("trans.products")}}</a>
                                        <ul>
                                            @if($products)
                                                @foreach($products as $product)
                                                    <li><a href="{{url("/product/$product->url")}}">{{$product->lang->title}}</a></li>
                                                @endforeach
                                            @endif

                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#">{{__("trans.services")}}</a>
                                        <ul>
                                            @if($mainServices)
                                                @foreach($mainServices as $service)
                                                    <li><a href="{{url("/service/$service->url")}}">{{$service->lang->title}}</a></li>
                                                @endforeach
                                            @endif

                                        </ul>
                                    </li>
                                    <li class="{{request()->is("gallery") ? "current" : ""}}" ><a href="{{url("/gallery")}}">{{__("trans.gallery")}}</a></li>



                                    <li class="{{request()->is("contact") ? "current" : ""}}"><a href="{{url("/contact")}}">{{__("trans.contact")}}</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <ul class="menu-right-content pull-left clearfix">


                        <li class="support-box ">
                            <a href="{{url("/contact")}}">
                                <i class="icon-calendar"></i>
                                <h4>{{__("trans.contact")}}</h4>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!--sticky Header-->
    <div class="sticky-header">
        <div class="auto-container">
            <div class="outer-box clearfix">
                <div class="menu-area pull-right
                           ">
                    <nav class="main-menu clearfix">
                        <!--Keep This Empty / Menu will come through Javascript-->
                    </nav>
                </div>
                <ul class="menu-right-content pull-left clearfix">


                    <li class="support-box">
                        <a href="{{url("/")}}">
                            <i class="icon-calendar"></i>
                            <h4>{{__("trans.contact")}}</h4>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>
<!-- main-header end -->

<!-- Mobile Menu  -->
<div class="mobile-menu">
    <div class="menu-backdrop"></div>
    <div class="close-btn"><i class="fas fa-times"></i></div>

    <nav class="menu-box">
        <div class="nav-logo"><a href="{{url("/")}}"><img src="{{assetPath($setting->image->path)}}" alt="" title=""></a></div>
        <div class="menu-outer"></div>


        <div class="social-links">
            <ul class="clearfix">
                @if($contact->facebook)
                    <li><a href="{{$contact->facebook}}"><i class="fab fa-facebook-square"></i></a></li>
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
    </nav>
</div><!-- End Mobile Menu -->

