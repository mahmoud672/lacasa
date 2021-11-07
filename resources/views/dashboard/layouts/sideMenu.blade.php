<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{assetPath(setting()->image->path)}}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>{{Auth::user()->name}} </p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form (Optional) -->
        {{--<form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
            </div>
        </form>--}}
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">HEADER</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="{{adminUrl('/')}}"><i class="fa fa-dashboard"></i> <span>Statistics</span></a></li>

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Services</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('service/create')}}"><i class="fa fa-plus"></i> Add Service</a></li>
                    <li><a href="{{adminUrl('service')}}"><i class="fa fa-edit"></i> Show / Edit Main Service</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-telegram"></i>
                    <span>الأسنان العامة</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('service/12/edit')}}"><i class="fa fa-edit"></i> Show / Edit الاسنان العامة</a></li>
                    <li><a href="{{adminUrl('service/12/show-images')}}"><i class="fa fa-edit"></i> Show Images</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Categories</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('category/create')}}"><i class="fa fa-plus"></i> Add Category</a></li>
                    <li><a href="{{adminUrl('category')}}"><i class="fa fa-edit"></i> Show / Edit Category</a></li>
                </ul>
            </li>--}}

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-shopping-basket"></i>
                    <span>Products</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('product/create')}}"><i class="fa fa-plus"></i> Add Product</a></li>
                    <li><a href="{{adminUrl('product')}}"><i class="fa fa-edit"></i> Show / Edit Product</a></li>
                </ul>
            </li>


            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Cities</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('city/create')}}"><i class="fa fa-plus"></i> Add City</a></li>
                    <li><a href="{{adminUrl('city')}}"><i class="fa fa-edit"></i> Show / Edit City</a></li>
                </ul>
            </li>--}}
            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Cities & Countries</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('city/create-country')}}"><i class="fa fa-plus"></i> Add Country</a></li>
                    <li><a href="{{adminUrl('city')}}"><i class="fa fa-edit"></i> Show / Edit Country</a></li>
                    <li><a href="{{adminUrl('city/show-cities')}}"><i class="fa fa-edit"></i> Show / All Cities</a></li>
                </ul>
            </li>--}}
            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Programs</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('hotel/create')}}"><i class="fa fa-plus"></i> Add Program</a></li>
                    <li><a href="{{adminUrl('hotel')}}"><i class="fa fa-edit"></i> Show / Edit Program</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-calendar"></i>
                    <span> applicants of Job</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('appointment')}}"><i class="fa fa-edit"></i> Show / Edit applicants</a></li>
                </ul>
            </li>--}}
            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-calendar"></i>
                    <span> Reservations</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('reservation')}}"><i class="fa fa-edit"></i> Show / Edit Reservations</a></li>
                </ul>
            </li>--}}
            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Client</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl("client/create")}}"><i class="fa fa-plus"></i> Add Client</a></li>
                    <li><a href="{{adminUrl("client")}}"><i class="fa fa-edit"></i> Show / Edit Client</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Partners</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl("client/create?type=partner")}}"><i class="fa fa-plus"></i> Add Partner</a></li>
                    <li><a href="{{adminUrl("client?type=partner")}}"><i class="fa fa-edit"></i> Show / Edit Partner</a></li>
                </ul>
            </li>--}}

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-file-image-o"></i>
                    <span>Gallery</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('gallery/create')}}"><i class="fa fa-upload"></i> Upload To Gallery</a></li>
                    <li><a href="{{adminUrl('gallery')}}"><i class="fa fa-edit"></i> Show / Edit Gallery</a></li>
                </ul>
            </li>

           {{-- <li class="treeview">
                <a href="#">
                    <i class="fa fa-file-image-o"></i>
                    <span>Clinic Gallery</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('gallery/create?type=certificates')}}"><i class="fa fa-upload"></i> Upload To Gallery</a></li>
                    <li><a href="{{adminUrl('gallery?type=certificates')}}"><i class="fa fa-edit"></i> Show / Edit Gallery</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-file-image-o"></i>
                    <span>Partners</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('gallery/create?type=partners')}}"><i class="fa fa-upload"></i> Upload To Partners</a></li>
                    <li><a href="{{adminUrl('gallery?type=partners')}}"><i class="fa fa-edit"></i> Show / Edit Partners</a></li>
                </ul>
            </li>--}}
            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-file-image-o"></i>
                    <span>Previous Works</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('gallery/create?type=previous-works')}}"><i class="fa fa-upload"></i> Upload To Previous Works</a></li>
                    <li><a href="{{adminUrl('gallery?type=previous-works')}}"><i class="fa fa-edit"></i> Show / Edit Previous Works</a></li>
                </ul>
            </li>--}}

            <li class="treeview">
               <a href="#">
                   <i class="fa fa-file-image-o"></i>
                   <span>Clients</span>
                   <i class="fa fa-angle-left pull-right"></i>
               </a>
               <ul class="treeview-menu">
                   <li><a href="{{adminUrl('gallery/create?type=clients')}}"><i class="fa fa-upload"></i> Upload To Clients</a></li>
                   <li><a href="{{adminUrl('gallery?type=clients')}}"><i class="fa fa-edit"></i> Show / Edit Clients</a></li>
               </ul>
           </li>
          {{-- <li class="treeview">
               <a href="#">
                   <i class="fa fa-file-image-o"></i>
                   <span>Projects</span>
                   <i class="fa fa-angle-left pull-right"></i>
               </a>
               <ul class="treeview-menu">
                   <li><a href="{{adminUrl('gallery/create?type=projects')}}"><i class="fa fa-upload"></i> Upload To Projects</a></li>
                   <li><a href="{{adminUrl('gallery?type=projects')}}"><i class="fa fa-edit"></i> Show / Edit Projects</a></li>
               </ul>
           </li>--}}

            {{--<li class="treeview">
               <a href="#">
                   <i class="fa fa-file-image-o"></i>
                   <span>Offers</span>
                   <i class="fa fa-angle-left pull-right"></i>
               </a>
               <ul class="treeview-menu">
                   <li><a href="{{adminUrl('gallery/create?type=offers')}}"><i class="fa fa-upload"></i> Upload To Offers</a></li>
                   <li><a href="{{adminUrl('gallery?type=offers')}}"><i class="fa fa-edit"></i> Show / Edit Offers</a></li>
               </ul>
           </li>--}}
           {{--<li class="treeview">
               <a href="#">
                   <i class="fa fa-file-image-o"></i>
                   <span>Portfolio</span>
                   <i class="fa fa-angle-left pull-right"></i>
               </a>
               <ul class="treeview-menu">
                   <li><a href="{{adminUrl('gallery/create?type=portfolio')}}"><i class="fa fa-upload"></i> Upload To Portfolio</a></li>
                   <li><a href="{{adminUrl('gallery?type=portfolio')}}"><i class="fa fa-edit"></i> Show / Edit Portfolio</a></li>
               </ul>
           </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-pie-chart"></i>
                    <span>SEO</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-desktop"></i>
                            <span>Open Graph</span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="{{adminUrl("seo/open-graph?type=main")}}"><i class="fa fa-bar-chart"></i>Main Pages Open Graph</a></li>
                             <!---<li><a href="{{adminUrl("seo/open-graph?type=blog")}}"><i class="fa fa-newspaper-o"></i>Blog Open Graph</a></li>--->
                            <!--<li><a href="{{adminUrl("seo/open-graph?type=album")}}"><i class="fa fa-file-image-o"></i>Album Open Graph</a></li>-->
                        <!--<li><a href="{{adminUrl("seo/open-graph?type=product")}}"><i class="fa fa-product-hunt"></i>Product Open Graph</a></li>-->
                        <!--<li><a href="{{adminUrl("seo/open-graph?type=category")}}"><i class="fa fa-product-hunt"></i>Category Open Graph</a></li>-->
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-desktop"></i>
                            <span>Website Pages</span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="{{adminUrl("seo/website-pages?type=main")}}"><i class="fa fa-bar-chart"></i>Main Pages</a></li>
                        <!--<li><a href="{{adminUrl("seo/website-pages?type=blog")}}"><i class="fa fa-newspaper-o"></i>Blog Pages</a></li>-->
                        <!--<li><a href="{{adminUrl("seo/website-pages?type=album")}}"><i class="fa fa-file-image-o"></i>Album Pages</a></li>-->
                        <!--<li><a href="{{adminUrl("seo/website-pages?type=product")}}"><i class="fa fa-product-hunt"></i>Product Pages</a></li>-->
                        <!--<li><a href="{{adminUrl("seo/website-pages?type=category")}}"><i class="fa fa-product-hunt"></i>Category Pages</a></li>-->
                        </ul>
                    </li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-file-image-o"></i>
                    <span>Albums</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('album/create')}}"><i class="fa fa-upload"></i> Add Album</a></li>
                    <li><a href="{{adminUrl('album')}}"><i class="fa fa-edit"></i> Show All Albums</a></li>
                   --}}{{-- <li><a href="{{adminUrl('album?type=videos')}}"><i class="fa fa-video-camera"></i> Show Videos Albums</a></li>
                    <li><a href="{{adminUrl('album?type=images')}}"><i class="fa fa-image"></i> Show Images Albums</a></li>--}}{{--
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-file-image-o"></i>
                    <span>Videos Gallery</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('video/create?album=10')}}"><i class="fa fa-upload"></i> Add Video</a></li>
                    <li><a href="{{adminUrl('video?album=10')}}"><i class="fa fa-video-camera"></i> Show Videos Albums</a></li>
                </ul>
            </li>--}}

           {{-- <li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Blog</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('blog/create')}}"><i class="fa fa-plus"></i> Add Blog</a></li>
                    <li><a href="{{adminUrl('blog')}}"><i class="fa fa-edit"></i> Show / Edit Slide</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-newspaper-o"></i>
                    <span>Events</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('blog/create?type=events')}}"><i class="fa fa-plus"></i> Add Event</a></li>
                    <li><a href="{{adminUrl('blog?type=events')}}"><i class="fa fa-edit"></i> Show / Edit Events</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-globe"></i>
                    <span>Devices Page</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('devices-page?type=cad_cam')}}"><i class="fa fa-edit"></i> جهاز السيريك</a></li>
                    <li><a href="{{adminUrl('devices-page?type=digital_x_rays')}}"><i class="fa fa-edit"></i>جهاز الأشعة السينية</a></li>
                    <li><a href="{{adminUrl('devices-page?type=vita_easy_shade_v')}}"><i class="fa fa-edit"></i> جهاز تحديد اللون</a></li>
                    <li><a href="{{adminUrl('devices-page?type=panoramic_x_rays')}}"><i class="fa fa-edit"></i>جهاز البانوراما</a></li>
                </ul>
            </li>--}}

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-list-ol"></i>
                    <span>Features</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('feature/create')}}"><i class="fa fa-edit"></i> Add Feature</a></li>
                    <li><a href="{{adminUrl('feature')}}"><i class="fa fa-plus"></i> Show / Edit Features</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-list-alt"></i>
                    <span>Why Us</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('feature/create?type=why-us')}}"><i class="fa fa-edit"></i> Add Feature</a></li>
                    <li><a href="{{adminUrl('feature?type=why-us')}}"><i class="fa fa-plus"></i> Show / Edit Features</a></li>
                </ul>
            </li>

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-list-alt"></i>
                    <span>Features Services</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('feature/create?type=services')}}"><i class="fa fa-edit"></i> Add Feature</a></li>
                    <li><a href="{{adminUrl('feature?type=services')}}"><i class="fa fa-plus"></i> Show / Edit Features</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-list-alt"></i>
                    <span>How It Works</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('feature/create?type=how-it-works')}}"><i class="fa fa-edit"></i> Add Feature</a></li>
                    <li><a href="{{adminUrl('feature?type=how-it-works')}}"><i class="fa fa-plus"></i> Show / Edit Features</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-video-camera"></i>
                    <span>Album Video</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('video/create')}}"><i class="fa fa-upload"></i> Add Video</a></li>
                    @if($albumsHaveVideos)
                        @foreach($albumsHaveVideos as $album)
                            <li><a href="{{adminUrl('video?album='.$album->id)}}"><i class="fa fa-edit"></i> {{$album->{'album_'.currentLang()}->title}} Video</a></li>
                        @endforeach
                    @endif
                   --}}{{-- <li><a href="{{adminUrl('video')}}"><i class="fa fa-edit"></i> Show / Edit Video</a></li>--}}{{--
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-group"></i>
                    <span>Team Members</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('team/create')}}"><i class="fa fa-plus"></i> Add Member</a></li>
                    <li><a href="{{adminUrl('team')}}"><i class="fa fa-edit"></i> Show / Edit Members</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-group"></i>
                    <span>Projects</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('project/create')}}"><i class="fa fa-plus"></i> Add Project</a></li>
                    <li><a href="{{adminUrl('project')}}"><i class="fa fa-edit"></i> Show / Edit Projects</a></li>
                </ul>
            </li>--}}

            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-quote-left"></i>
                    <span>Testimonial</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('testimonial/create')}}"><i class="fa fa-plus"></i> Add Testimonial</a></li>
                    <li><a href="{{adminUrl('testimonial')}}"><i class="fa fa-edit"></i> Show / Edit Testimonial</a></li>
                </ul>
            </li>--}}

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-image"></i>
                    <span>Slider</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('slider/create')}}"><i class="fa fa-plus"></i> Add Slider</a></li>
                    <li><a href="{{adminUrl('slider')}}"><i class="fa fa-edit"></i> Show / Edit Slide</a></li>
                </ul>
            </li>

           {{-- <li class="treeview">
                <a href="#">
                    <i class="fa fa-map-pin"></i>
                    <span>Branches</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('branch/create')}}"><i class="fa fa-plus"></i> Add Branch</a></li>
                    <li><a href="{{adminUrl('branch')}}"><i class="fa fa-edit"></i> Show / Edit Branch</a></li>
                </ul>
            </li>--}}


            {{--<li class="treeview">
                <a href="#">
                    <i class="fa fa-clock-o"></i>
                    <span>Working Days</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('working-days/create')}}"><i class="fa fa-plus"></i> Add Working Days</a></li>
                    <li><a href="{{adminUrl('working-days')}}"><i class="fa fa-edit"></i> Show / Edit Working Days</a></li>
                </ul>
            </li>--}}



            <li class="treeview">
                <a href="#">
                    <i class="fa fa-envelope"></i>
                    <span>Messages</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('message')}}"><i class="fa fa-edit"></i> Show Inbox</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-globe"></i>
                    <span>About</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('about/edit')}}"><i class="fa fa-edit"></i> Edit About Website</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-globe"></i>
                    <span>Services</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('service/create')}}"><i class="fa fa-plus"></i> Create Service</a></li>
                    <li><a href="{{adminUrl('service')}}"><i class="fa fa-edit"></i> Edit Services</a></li>
                </ul>
            </li>

           {{-- <li class="treeview">
                <a href="#">
                    <i class="fa fa-globe"></i>
                    <span>Services products</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('service/create?type=products')}}"><i class="fa fa-plus"></i> Create Product</a></li>
                    <li><a href="{{adminUrl('service?type=products')}}"><i class="fa fa-edit"></i> Edit Products</a></li>
                </ul>
            </li>--}}


            <li class="treeview">
                <a href="#">
                    <i class="fa fa-phone"></i>
                    <span>Contact</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('contact/edit')}}"><i class="fa fa-edit"></i> Edit Contact Info</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-cogs"></i>
                    <span>Setting</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="{{adminUrl('setting/edit')}}"><i class="fa fa-edit"></i> Edit Website Setting</a></li>
                </ul>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
