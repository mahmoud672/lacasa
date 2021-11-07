@extends('website.layouts.layouts')
@section('title', __('trans.services'))

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
    </script>
@endsection

@section('content')

    <div class="services-page">
        <!-- category section -->
        <div class="categories-section">
            <div class="line-up"></div>
            <div class="section-heading">
                <p>
                    {{__("trans.services")}}
                </p>
            </div>
            <div class="section-body">
                <ul class="main-ul">
                    @if($services)
                        @foreach($services as $service)
                            <li data-aos="zoom-in" data-aos-duration="1000">
                                <a href="{{url("/service/$service->url")}}" class="product-card">
                                    <div class="img-div lazy-div">
                                        <img class="lazy" data-src="{{assetPath($service->image->path)}}" alt="{{$service->image->alt}}"/>
                                        <div class="next-lazy-img"></div>
                                    </div>
                                    <div class="title">
                                        <p>
                                            {{$service->lang->title}}
                                        </p>
                                    </div>
                                </a>
                            </li>
                        @endforeach
                    @endif

                </ul>
            </div>
        </div>
        <!-- ./category section -->
    </div>
@endsection
