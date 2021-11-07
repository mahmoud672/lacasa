<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}" dir="{{app()->getLocale() == 'ar' ? 'rtl' : 'ltr'}}">
<head>
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title> {!! $setting->lang->website_name !!} -    @yield('title')</title>

    @yield('open-graph')


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

    <!-- Fav Icon -->
    <link rel="icon" href="{{assetPath("website/images/favicon.png")}}" type="image/x-icon">

    <!-- Google Fonts -->


    <link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@500&display=swap" rel="stylesheet">
    <!-- Stylesheets -->
    <link href="{{assetPath("website/css/font-awesome-all.css")}}" rel="stylesheet">
    <link href="{{assetPath("website/css/icomoon.css")}}" rel="stylesheet">
    <link href="{{assetPath("website/css/owl.css")}}" rel="stylesheet">
    <link href="{{assetPath("website/css/bootstrap.css")}}" rel="stylesheet">
    <link href="{{assetPath("website/css/jquery.fancybox.min.css")}}" rel="stylesheet">
    <link href="{{assetPath("website/css/animate.css")}}" rel="stylesheet">
    <link href="{{assetPath("website/css/color.css")}}" rel="stylesheet">
    <link href="{{assetPath("website/css/global.css")}}" rel="stylesheet">
    <link href="{{assetPath("website/css/style.css")}}" rel="stylesheet">

    <link href="{{assetPath("website/css/responsive.css")}}" rel="stylesheet">
    @if(currentLang() == 'ar')
        <link href="{{assetPath("website/css/rtl.css")}}" rel="stylesheet">
    @endif
    @yield('canonical')
    <!-- end canonical links-->

    <!--Define social media profiles with schema.org markup -->

    @yield('customizedStyle')

    @yield('header-code')

</head>


<body id="bg">
<div id="loading-area">

</div>

<!-- Document Wrapper
============================================= -->
<div class="page-wraper">
    @include('website.layouts.header')

    @yield('content')


    @include('website.layouts.footer')

    <!-- scroll top button -->
    <button class="scroltop fa fa-arrow-up style5" ></button>

</div>

<!-- jequery plugins -->
<script src="{{assetPath("website/js/jquery.js")}}"></script>
<script src="{{assetPath("website/js/popper.min.js")}}"></script>
<script src="{{assetPath("website/js/bootstrap.min.js")}}"></script>
<script src="{{assetPath("website/js/owl.js")}}"></script>
<script src="{{assetPath("website/js/wow.js")}}"></script>
<script src="{{assetPath("website/js/validation.js")}}"></script>
<script src="{{assetPath("website/js/jquery.fancybox.js")}}"></script>
<script src="{{assetPath("website/js/appear.js")}}"></script>
<script src="{{assetPath("website/js/scrollbar.js")}}"></script>
<script src="{{assetPath("website/js/bxslider.js")}}"></script>

<!-- main-js -->
<script src="{{assetPath("website/js/script.js")}}"></script>

@yield('customizedScript')



</body>
</html>
