@extends('website.layouts.layouts')
@section('title', __('trans.about_us'))

@section('open-graph')
    <meta name="description" content="{{$og->description ? $og->description : $mainOpenGraph->description}}">
    <meta name="keywords" content="{{$og->key_words ? $og->key_words : $mainOpenGraph->key_words}}">
    <!-- open graph meta-->
    <meta property="og:title"
          content="{{$og->open_graph->og_title ? $og->open_graph->og_title : $mainOpenGraph->open_graph->og_title}}"/>
    <meta property="og:type"
          content="{{$og->open_graph->og_type ? $og->open_graph->og_type : $mainOpenGraph->open_graph->og_type}}"/>
    <meta property="og:url" content="{{url('/about')}}"/>
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
    <link rel="canonical" href="{{url($og->url)}}"/>
@endsection

@section('header-code')
    {!! $headerCode->header_code ? $headerCode->header_code : '' !!}
@endsection

@section('customizedScript')
    <script>
        var currentLocation = location.href;
        $("#came_from").val(currentLocation);


        $(".main-section-ul ul").addClass("about-dropped")
    </script>
@endsection

@section('content')

   <!--Page Title-->
   <section class="page-title" style="background-image: url({{assetPath("website/images/background/page-title.jpg")}});">
       <div class="auto-container">
           <div class="content-box">
               <div class="title">
                   <h1>{{__("trans.about_us")}}</h1>
               </div>
               <ul class="bread-crumb clearfix">
                   <li><a href="{{url("/")}}">{{__("trans.home")}}</a></li>
                   <li class="shape"></li>
                   <li>{{__("trans.about_us")}}</li>
               </ul>
           </div>
       </div>
   </section>
   <!--End Page Title-->


   <!-- about-section -->
   <section class="about-section">
       <div class="auto-container">
           <div class="row clearfix">
               <div class="col-lg-6 col-md-12 col-sm-12 content-column">
                   <div class="content_block_1">
                       <div class="content-box">
                           <div class="sec-title">

                               <div class="shape"></div>
                               <h2>{{__("trans.about_us")}}</h2>
                           </div>
                           <div class="text">
                              {!! $about->lang->description !!}
                           </div>
                           <div class="inner-box">
                               <figure class="vector-image"><img src="{{assetPath("website/images/resource/vector-image-1.png")}}" alt=""></figure>
                               <div class="inner clearfix">
                                   @if($why_us)
                                       <ul class="list-item">
                                           @foreach($why_us as $feature)
                                                   <li>{{$feature->lang->title}}</li>
                                           @endforeach
                                       </ul>
                                   @endif

                                  {{-- <ul class="list-item pl-45">
                                       <li>اعلى جودة
                                       </li>
                                       <li>افضل تصميم

                                       </li>
                                   </ul>--}}
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
               <div class="col-lg-6 col-md-12 col-sm-12 image-column">
                   <div class="image_block_1">
                       <div class="image-box ml-55">
                           <figure class="vector-image rotate-me"><img src="{{assetPath("website/images/resource/vector-image-2.png")}}" alt=""></figure>
                           <div class="image-pattern">
                               <div class="pattern-1"></div>
                               <div class="pattern-2"></div>
                               <div class="pattern-3"></div>
                               <div class="pattern-4"></div>
                           </div>
                           <figure class="image"><img src="{{assetPath($about->aboutImage->path)}}" alt=""></figure>
                       </div>
                   </div>
               </div>
           </div>
       </div>
   </section>
   <!-- about-section end -->


   <!-- history-section -->
   <section class="history-section">
       <div class="auto-container">
           <div class="sec-title centred">

               <div class="shape"></div>
               <h2></h2>
           </div>
           <div class="tabs-box">
               <div class="tab-btn-box">
                   <ul class="tab-btns tab-buttons centred clearfix">
                       <li class="tab-btn" data-tab="#tab-1">{{__("trans.mission")}}</li>
                       <li class="tab-btn active-btn" data-tab="#tab-2">{{__("trans.vision")}}</li>
                       <li class="tab-btn" data-tab="#tab-3">{{__("trans.values")}}</li>

                   </ul>
               </div>
               <div class="tabs-content">
                   <div class="tab" id="tab-1">
                       <div class="row clearfix align-items-center">
                           <div class="col-lg-6 col-md-6 col-sm-12 image-column">
                               <div class="image-box">
                                   <figure class="image"><img src="{{assetPath($about->missionImage->path)}}" alt=""></figure>
                               </div>
                           </div>
                           <div class="col-lg-6 col-md-6 col-sm-12 content-column">
                               <div class="content_block_3">
                                   <div class="content-box">
                                       <h2>{{__("trans.mission")}}</h2>

                                       {!! $about->lang->mission !!}


                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="tab active-tab" id="tab-2">
                       <div class="row clearfix align-items-center">
                           <div class="col-lg-6 col-md-6 col-sm-12 image-column">
                               <div class="image-box">
                                   <figure class="image"><img src="{{assetPath($about->visionImage->path)}}" alt=""></figure>
                               </div>
                           </div>
                           <div class="col-lg-6 col-md-6 col-sm-12 content-column">
                               <div class="content_block_3">
                                   <div class="content-box">
                                       <h2>{{__("trans.vision")}}</h2>
                                       {!! $about->lang->vision !!}

                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="tab" id="tab-3">
                       <div class="row clearfix align-items-center">
                           <div class="col-lg-6 col-md-6 col-sm-12 image-column">
                               <div class="image-box">
                                   <figure class="image"><img src="{{assetPath($about->valuesImage->path)}}" alt=""></figure>
                               </div>
                           </div>
                           <div class="col-lg-6 col-md-6 col-sm-12 content-column">
                               <div class="content_block_3">
                                   <div class="content-box">
                                       <h2>{{__("trans.values")}}</h2>
                                       {!! $about->lang->value !!}

                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>

               </div>
           </div>
       </div>
   </section>
   <!-- history-section end -->


@endsection
