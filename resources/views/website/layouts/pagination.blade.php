{{--
<script type="text/javascript">
    (function(){
       /* var loc= location.search;
        alert(loc);*/
      // $(".selected-link").text("background-color");
    })();

</script>
<style type="text/css">
   /* .selected-link{
        background: #c3cbcc;
    }*/

   body .pagination {
       display: flex;
       justify-content: center;
       grid-gap: 12px;
       margin-top: 32px; }
   body .pagination .page-link {
       margin-left: 8px !important;
       display: grid;
       align-items: center;
       justify-items: center;
       font-size: 14px;
       color: #7D7D7D;
       border-radius: 102px;
       line-height: 1;
       padding: 10px 14px;
       font-family: sans-serif;
       transition: all .3s ease-out; }
   body .pagination .page-link:hover {
       border-color: #38A393; }
   body .pagination .page-link.selected-link {
       background-color: #38A393;
       color: #fff; }

</style>
@if ($paginator->hasPages())
    <div class="pagination-section container">
        <nav aria-label="Page navigation" class="ml-auto">
            <ul class="pagination">

                 Previous Page Link
                @if ($paginator->onFirstPage())

                    <li class="page-item">
                        <a class="page-link"
                           href="#"
                           aria-label="Previous">
                            <span aria-hidden="true"> Â« < </span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>

                @else
                    <li class="page-item">
                        <a class="page-link"
                           href="{{ $paginator->previousPageUrl() }}"
                           aria-label="Previous">
                            <span aria-hidden="true"> Â« < </span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                @endif



                 Pagination Elements
                @foreach ($elements as $element)
                     "Three Dots" Separator
                    @if (is_string($element))
                        <li class="page-item disabled"><span>{{ $element }}</span></li>
                    @endif

                     Array Of Links
                    @if (is_array($element))
                        @foreach ($element as $page => $url)
                            @if ($page == $paginator->currentPage())
                                <!---
                                    <li class="page-item"><a class="page-link active" href="#">{{ $page }}</a></li>
                                -->
                                <li class="page-item"><a class="page-link active {{$page==$paginator->currentPage()? 'selected-link' :''}}" href="#">{{ $page }}</a></li>
                            @else
                                <li class="page-item"><a class="page-link " href="{{ $url }}">{{ $page }}</a></li>
                            @endif
                        @endforeach
                    @endif
                @endforeach


                 Next Page Link
                @if ($paginator->hasMorePages())

                    <li class="page-item">
                        <a class="page-link" href="{{ $paginator->nextPageUrl() }}"
                           aria-label="Next">
                            <span aria-hidden="true"> Â» > </span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>

                @else
                    <li class="page-item">
                        <a class="page-link" href="#"
                           aria-label="Next">
                            <span aria-hidden="true"> Â» > </span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                @endif

            </ul>
        </nav>
    </div>
@endif
--}}


<script type="text/javascript">
    /*(function () {
        var loc = location.search;
        alert(loc);
        // $(".selected-link").text("background-color");
    })();*/

</script>
<style type="text/css">
    /* .selected-link{
         background: #c3cbcc;
     }*/

    body .pagination {
        display: flex;
        justify-content: center;
        grid-gap: 12px;
        margin-top: 32px;
    }

    body .pagination .page-link {
        margin-left: 8px !important;
        display: grid;
        align-items: center;
        justify-items: center;
        font-size: 14px;
        color: #7D7D7D;
        /*border-color:#2594d2;*/
        /*border-radius: 102px;*/
        line-height: 1;
        padding: 4px 8px;
        font-family: sans-serif;
        transition: all .3s ease-out;
    }

    body .pagination .page-link:hover {
        border-color: #015496;
        color: #005c96;
    }

    body .pagination .page-link.selected-link {
        /*background-color: #2594d2;*/
        border-color: #015496;
        color: #005c96;
    }

    body .pagination li a.current-link {
        /*line-height: 20px;*/
    }

</style>
@if ($paginator->hasPages())
    <div class="shop-pagination box-shadow text-center ptblr-10-30">
        <nav aria-label="Page navigation" class="ml-auto">
            <ul class="pagination clearfix">

                {{-- Previous Page Link --}}

                @if ($paginator->onFirstPage())

                    <li class="page-item ">
                        <a class="page-link "
                           href="#"
                           aria-label="Previous">
                            <span aria-hidden="true">
                                {{-- Â«--}}
                                {{-- < {{__("trans.prev_arrow")}}--}}
                            <i class="fas fa-chevron-right"></i>
                            </span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>

                @else
                    <li class="page-item">
                        <a class="page-link "
                           href="{{ $paginator->previousPageUrl() }}"
                           aria-label="Previous">
                            <span aria-hidden="true">
                                <!--Â«-->
                                {{-- < {{__("trans.prev_arrow")}}--}}
                            <i class="fas fa-chevron-right"></i>
                            </span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                @endif



                {{-- Pagination Elements --}}

                @foreach ($elements as $element)
                    {{-- "Three Dots" Separator--}}

                    @if (is_string($element))
                        <li class="page-item disabled"><span>{{ $element }}</span></li>
                    @endif

                    {{-- Array Of Links --}}

                    @if (is_array($element))
                        @foreach ($element as $page => $url)
                            @if ($page == $paginator->currentPage())
                            <!---
                                    <li class="page-item"><a class="page-link active" href="#">{{ $page }}</a></li>
                                -->
                                <li class="page-item">
                                    <a class="page-link  current-link active {{$page==$paginator->currentPage()? 'selected-link' :''}}" href="#">
                                        {{ $page < 9 ? "0".$page : $page }}
                                    </a>
                                </li>
                            @else
                                <li class="page-item ">
                                    <a class="page-link  current-link " href="{{ $url }}">
                                        {{ $page < 9 ? "0".$page : $page }}
                                    </a>
                                </li>
                            @endif
                        @endforeach
                    @endif
                @endforeach


                {{--Next Page Link --}}

                @if ($paginator->hasMorePages())

                    <li class="page-item ">
                        <a class="page-link " href="{{ $paginator->nextPageUrl() }}"
                           aria-label="Next">
                            <span aria-hidden="true">
                                <!--Â»-->
                                {{--{{__("trans.next_arrow")}} >--}}
                            <i class="fas fa-chevron-left"></i>
                            </span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>

                @else
                    <li class="page-item ">
                        <a class="page-link " href="#"
                           aria-label="Next">
                            <span aria-hidden="true">
                                <!--Â»-->
                                {{--{{__("trans.next_arrow")}} > --}}
                            <i class="fas fa-chevron-left"></i>
                            </span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                @endif

            </ul>
        </nav>
    </div>
@endif

