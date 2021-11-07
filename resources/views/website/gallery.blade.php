@extends('website.layouts.layouts')
@section('title', __('trans.gallery'))

@section('open-graph')
    <meta name="description" content="{{$og->description ? $og->description : $mainOpenGraph->description}}">
    <meta name="keywords" content="{{$og->key_words ? $og->key_words : $mainOpenGraph->key_words}}">
    <!-- open graph meta-->
    <meta property="og:title" content="{{$og->open_graph->og_title ? $og->open_graph->og_title : $mainOpenGraph->open_graph->og_title}}"/>
    <meta property="og:type" content="{{$og->open_graph->og_type ? $og->open_graph->og_type : $mainOpenGraph->open_graph->og_type}}"/>
    {{--<meta property="og:url" content="{{url('/album/' . $album->id)}}"/>--}}
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
    {{--<link rel="canonical" href="{{url('album/' . $album->id)}}"/>--}}
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
                <h1>{{__("trans.gallery")}}</h1>
            </div>
            <ul class="bread-crumb clearfix">
                <li><a href="{{url("/")}}">{{__("trans.home")}}</a></li>
                <li class="shape"></li>
                <li>{{__("trans.gallery")}}</li>
            </ul>
        </div>
    </div>
</section>
<!--End Page Title-->


<!-- gallery-page-section -->
<section class="gallery-page-section sec-pad-2">
    <div class="auto-container">
        <div class="sortable-masonry">


            <div class="items-container row clearfix">
                @if($images)
                    @foreach($images as $image)
                        <div class="col-lg-3 col-md-6 col-sm-12 masonry-item small-column all shutters curtains blinds home_drcor">
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

            </div>

        </div>
    </div>
</section>
<!-- gallery-page-section end -->

@endsection
