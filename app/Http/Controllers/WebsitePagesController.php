<?php

namespace App\Http\Controllers;

use App\Classes\ContactMail;
use App\Models\Album;
use App\Models\Appointment;
use App\Models\Arabic\ServiceArabic;
use App\Models\City;
use App\Models\English\ServiceEnglish;
use App\Models\Hotel;
use App\Models\Blog;
use App\Models\Branch;
use App\Models\Category;
use App\Models\Client;
use App\Models\Feature;
use App\Models\Gallery;
use App\Models\Contact;
use App\Models\Image;
use App\Models\Message;
use App\Models\Page;
use App\Models\Product;
use App\Models\Reservation;
use App\Models\Slider;
use App\Models\Service;
use App\Models\Team;
use App\Models\Testimonial;
use App\Models\Video;
use App\Models\Working_day;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rules\In;
use phpDocumentor\Reflection\File;

class WebsitePagesController extends Controller
{
    public function intro(){

        return view('website.intro-video');
    }
    public function index()
    {
        $og = Page::with('open_graph')->where('url','/')->first();
        $slides = Slider::with('slider_'.currentLang(), 'image')->get();

        $headerCode = Page::with('open_graph')->where('url', '=', '/')->first();
        $testimonials = Testimonial::with('testimonial_'.currentLang(),'image')->get();
        //$clients=Client::with('client_'.currentLang(),'image')->where('status',null)->get();
        $clients = Gallery::with('image')->where('video_url', null)->where('status','clients')->get();
        //$services = Service::with('service_'.currentLang(), 'image')->where('parent_service_id', null)->get();
        $childServices = Service::with('service_'.currentLang(), 'image')->where('parent_service_id', "<>",null)->get();
        $album_video = Album::with('videos')->where('type',2)->first();
        $blogs=Blog::with("blog_".currentLang(),'image')->where('status',null)->orderBy("created_at",'DESC')->get();
        $features = Feature::with('feature_'.currentLang(),'image')->where('status',null)->get();
        $whyUsFeatures = Feature::with('feature_'.currentLang(),'image')->where('status',1)->get();
        $howItWorksFeatures = Feature::with('feature_'.currentLang(),'image')->where('status',2)->get();
        $featureServices = Feature::with('feature_'.currentLang(),'image')->where('status',3)->get();
        //dd($features);
        $teams = Team::with('team_'.currentLang())->get();
        $projectImages = Gallery::with('image')->where('video_url', null)->where('status','projects')->get();
        $galleryImages = Gallery::with('image')->where('video_url', null)->where('status',null)->get();
        $clinicImages = Gallery::with('image')->where('video_url', null)->where('status','certificates')->get();
        $latestProducts = Product::with('product_'.currentLang(),'images','image','category')->orderBy('created_at','DESC')->limit(6)->get();
        $albums = Album::with("images",'album_'.currentLang())->where('type',1)->get();

        $blogsFirstCollection=Blog::with("blog_".currentLang(),'image')->orderBy("created_at",'ASC')->limit(3)->where('status',null)->get();
        $blogsLastCollection=Blog::with("blog_".currentLang(),'image')->orderBy("created_at",'DESC')->limit(3)->where('status',null)->get();
        $eventsFirstCollection=Blog::with("blog_".currentLang(),'image')->orderBy("created_at",'ASC')->limit(3)->where('status','events')->get();
        $eventsLastCollection=Blog::with("blog_".currentLang(),'image')->orderBy("created_at",'DESC')->limit(3)->where('status','events')->get();

        //dd($clients);
        return view('website.welcome', compact( 'slides', 'og', 'headerCode','albums', 'testimonials','clients','album_video','features','galleryImages','whyUsFeatures','projectImages','howItWorksFeatures','featureServices','teams','childServices','latestProducts',
            'blogsFirstCollection','blogsLastCollection','eventsFirstCollection','eventsLastCollection','blogs',"clinicImages"));
    }

    public function reserveAppointment(Request $request)
    {
        $input = Input::get();
        $this->validate($request,[
            'email'         => 'bail|required|email|max:100',
            'phone'         => 'bail|required|min:8|max:14',
            'name'          => 'bail|required|max:100',
            'service_id'    => 'bail|required',
            //'message'       => 'bail|max:500',
            //'birth_date'    => 'bail|required|date',
            //'age'           => 'bail|required|',
            //'weight'        => 'bail|required|',
            //'height'        => 'bail|required|',
        ], [], [
            'email'         => 'Email',
            'phone'         => 'Phone',
            'name'          => 'Name ',
            'message'       => 'Message',
            'service_id'    => 'Service',
            'date'          => 'bail|required|date',
        ]);


        $input['birth_date'] = Carbon::parse($request->birth_date)->format('Y-m-d');

        $appointment = new Appointment();
        $appointment->name = $input['name'];
        $appointment->email = $input['email'];
        $appointment->phone = $input['phone'];
        $appointment->service_id = $input['service_id'];
        //$appointment->message = $input['message'];
        //$appointment->birth_date = $input['birth_date'];
        $appointment->came_from = $input['came_from'];
        //$appointment->age = $input['age'];
        //$appointment->weight = $input['weight'];
        //$appointment->height = $input['height'];
        /*$appointment->created_at = time();
        $appointment->updated_at = time();*/
        $appointment->save();


        Session::flash('create', ' تم الحجز بنجاح ' . $appointment->name .  ' سوف يتم يتم تأكيد الحجز في اقرب وقت ');
        //return redirect('/#contact');
        return back();
    }

    public function about()
    {
        $og = Page::with('open_graph')->where('url','about')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'about')->first();
        $why_us = Feature::with('image','feature_'.currentLang())->where('status',1)->get();
        $features = Feature::with('feature_'.currentLang(),'image')->where('status',null)->get();

        //$clients=Client::with('client_'.currentLang(),'image')->where('status',null)->get();
        $clients=Gallery::with('image')->where('video_url', null)->where('status','clients')->get();

        $testimonials = Testimonial::with('testimonial_'.currentLang(),'image')->get();
        return view('website.about', compact('og', 'headerCode','testimonials','why_us','clients','features'));
    }

    public function gallery()
    {
        $og = Page::with('open_graph')->where('url','about')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'about')->first();
        $images = Gallery::with('image')->where('video_url', null)->where('status',null)->get();
        return view('website.gallery', compact( 'images','og','headerCode'));
    }


    public function certification()
    {
        $og = Page::with('open_graph')->where('url','about')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'about')->first();
        $images = Gallery::with('image')->where('video_url', null)->where('status','certificates')->get();
        return view('website.certificates', compact( 'images','og','headerCode'));
    }

    public function previousWorks()
    {
        $og = Page::with('open_graph')->where('url','about')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'about')->first();
        $images = Gallery::with('image')->where('video_url', null)->where('status','previous-works')->get();

        return view('website.previous-works', compact( 'images','og','headerCode'));
    }

    public function studio()
    {
        $og = Page::with('open_graph')->where('url','about')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'about')->first();

        return view('website.studio', compact( 'og','headerCode'));
    }

    public function video()
    {
        $og = Page::with('open_graph')->where('url','about')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'about')->first();

        //$videos = Gallery::where('video_name', '!=' , null)->where('video_url', '!=', null )->get();
        $album_videos = Album::with('videos')->where('type',2)->where('id',10)->first();
        $videos = $album_videos->videos()->get();

        return view('website.videos', compact('videos','og','headerCode'));
    }

    public function albums($id)
    {
        $album = Album::find($id);
        $images =  Image::where('album_id', $id)->get();
        return view('website.albums', compact('album', 'images'));
    }
    public function album()
    {
        $og = Page::with('open_graph')->where('url','album')->first();
        $headerCode = Page::with('open_graph')->where('url','album')->first();
        $type = Input::get("type");
        if($type == 'images'){
            $albums = Album::with('album_'.currentLang(),'image','images')->where('type','!=',2)->orderBy('created_at','DESC')->get();

            return view('website.album', compact('albums','og','headerCode'));
        }elseif($type == 'videos'){
            $albums = Album::with('album_'.currentLang(),'image','images','videos')->where('type',2)->orderBy('created_at','DESC')->get();

            return view('website.videos', compact('albums','og','headerCode'));
        }
    }

    public function contact()
    {
        $og = Page::with('open_graph')->where('url', 'contact')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'contact')->first();
        $contact = Contact::orderby('id', 'desc')->first();
        $branches = Branch::with('branch_'.currentLang())->get();

        $clients = Client::with('client_'.currentLang())->where('status',null)->get();
        //$workingDays = Working_day::with('working_days_' . currentLang())->get();
        return view('website.contact', compact('contact', 'og', 'headerCode', 'branches','clients'));
    }

    public function reserve()
    {
        $og = Page::with('open_graph')->where('url', 'reservation')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'reservation')->first();

        return view('website.reservation', compact('og', 'headerCode'));
    }

    public function book()
    {
        $og = Page::with('open_graph')->where('url', 'reservation')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'reservation')->first();

        return view('website.book', compact('og', 'headerCode'));
    }

    /*public function offer(){

            $og = Page::with('open_graph')->where('url','destination-out-egypt')->first();
            $headerCode = Page::with('open_graph')->where('url','destination-out-egypt')->first();
            $programs = Hotel::with('hotel_'.currentLang(),'images','image')->where('is_offer','!=',null)->orderBy('created_at','DESC')->paginate(4);
            return view("website.offers",compact('og','headerCode','programs'));

    }*/

    public function offers(){

            $og = Page::with('open_graph')->where('url','destination-out-egypt')->first();
            $headerCode = Page::with('open_graph')->where('url','destination-out-egypt')->first();
            $images = Gallery::with('image')->where('video_url', null)->where('status','offers')->get();
            return view("website.offers",compact('og','headerCode','images'));

    }

    public function portfolio(){

            $og = Page::with('open_graph')->where('url','destination-out-egypt')->first();
            $headerCode = Page::with('open_graph')->where('url','destination-out-egypt')->first();
            $images = Gallery::with('image')->where('video_url', null)->where('status','portfolio')->get();
            return view("website.offers",compact('og','headerCode','images'));

    }

    public function reserveSome(Request $request){
        $request->validate([
            //'fname'          =>  'required|alpha',
            //'lname'          =>  'required|alpha',
            'name'                    => 'required|regex:/^[\pL\s\-]+$/u',
            'phone'                   => 'required|min:8|max:15',
            'email'                   => 'required|email',
            'service_id'              => 'required|numeric',
            'message'                 => '',
            //'reservation_date'        => 'required',

        ],[],[
            'service_id'    => 'Service'
        ]);
        $input = $request->all();
         $reservation=Reservation::create([
             //'name'             => $input['fname']." ".$input['lname'],
             'name'             => $input['name'],
             'phone'            => $input['phone'],
             'email'            => $input['email'],
             'service_id'       => $input['service_id'],
             'came_from'        => $input['came_from'],
             //'reservation_date' => $input['reservation_date'],
             //--------------------------------------------\\
             'message'           => $request->message,
             'shipments_count'   => $request->monthly_orders,
         ]);
        //ContactMail::submitForm($request->name,$request->phone,$request->email,$request->title,$request->message,$request->service_id);

        ContactMail::mailService($request,"mahmoudgad672@gmail.com");

        return redirect(url($input['came_from']))->with("create","Your Request has been sent successfully "." ".$reservation->name);
        //Session::flash("create', ' تم الحجز بنجاح ' . $reservation->name .  ' سوف يتم تأكيد الحجز في اقرب وقت '");
        //return back()->with("create', ' تم الحجز بنجاح ' . $reservation->name .  ' سوف يتم تأكيد الحجز في اقرب وقت '");
        //return back();

    }

    /*public function reserveSome(Request $request){
        $request->validate([

            'name'                    => 'required|regex:/^[\pL\s\-]+$/u',
            'phone'                   => 'required|min:8|max:15',
            'email'                   => 'required|email',
            'from_date'               => 'required',
            'to_date'                 => 'required',
            'company_name'            => 'required',
            'website_url'             => 'required',
            'location'                => 'required',
            'requirements'            => 'required',
            'budget'                  => 'required',
            'description1'            => 'required',
            'description2'            => 'required',
            'description3'            => 'required',
            'message'                 => 'required',

        ],[],[
            'service_id'    => 'Service'
        ]);
        $input = $request->all();
        $reservation=Reservation::create([
            'name'             => $request->name,
            'phone'            => $request->phone,
            'email'            => $request->email,
            'from_date'        => $request->from_date,
            'to_date'          => $request->to_date,
            'came_from'        => $request->came_from,
            'company_name'     => $request->company_name,
            'website_url'      => $request->website_url,
            'location'         => $request->location,
            'requirements'     => $request->requirements,
            'budget'           => $request->budget,
            'description1'     => $request->description1,
            'description2'     => $request->description2,
            'description3'     => $request->description3,
            'message'          => $request->message,

        ]);

        return redirect(url($input['came_from']))->with("create","Your Request has been sent successfully "." ".$reservation->name);
        //Session::flash("create', ' تم الحجز بنجاح ' . $reservation->name .  ' سوف يتم تأكيد الحجز في اقرب وقت '");
        //return back()->with("create', ' تم الحجز بنجاح ' . $reservation->name .  ' سوف يتم تأكيد الحجز في اقرب وقت '");
        //return back();

    }*/


    public function message(Request $request)
    {
        $input = Input::get();
        $this->validate($request,[
            'email'         => 'bail|required|email|max:100',
            'phone'         => 'bail|required|min:8|max:14',
            'title'         => 'bail|required|max:150',
            'name'          => 'bail|required|max:100',
            'message'       => 'bail|required',
        ], [], [
            'email'         => 'Email',
            'phone'         => 'Phone',
            'title'         => 'Title',
            'name'          => 'Name',
            'message'       => 'Message',
        ]);

        $message = new Message;
        $message->name = $input['name'];
        $message->email = $input['email'];
        $message->phone = $input['phone'];
        $message->title = $input['title'];
        $message->message = $input['message'];

        $message->save();
        Session::flash('create', ' شكرا على تسجيلك ' . $message->name .  ' سنقوم بالتواصل معك خلال يومين عمل ');

        return redirect()->back();
    }

    public function contactMessage(Request $request){
        $this->validate($request,[
            'email'         => 'bail|required|email|max:100',
            'phone'         => 'bail|required|min:8|max:14',
            //'title'         => 'bail|required|max:150',
            'name'          => 'bail|required|max:100',
            //'service_id'    => 'bail|required|max:100',
            //'fname'          => 'bail|required|alpha',
            //'lname'          => 'bail|required|alpha',
            'message'       => 'bail|required',
            //'file_id'       => 'bail|mimes:jpeg,jpg,png,gif,doc,docx,pdf,csv,xls',
        ], [], [
            'email'         => 'Email',
            'phone'         => 'Phone',
            'name'          => 'Name',
            //'title'         => 'Subject',
            //'fname'          => 'First Name ',
            //'lname'          => 'Last Name ',
            'message'        => 'Message',
            'service_id'     => 'Service',
        ]);
        //$name = $request->fname." ".$request->lname;
        /*if(ContactMail::submitForm($request->name,$request->phone,$request->email,$request->title,$request->message)){
            return redirect()->back()->with("create","Message was sent successfully....");
        }else{
            return redirect()->back()->with("warning","Message was sent successfully");
        }*/

        ContactMail::submitForm($request->name,$request->phone,$request->email,$request->title,$request->message);

        return back()->with("create",__("trans.thanks_msg"));

    }


    public function devicesPage()
    {
        $og = Page::with('open_graph')->where('url','/')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', '/')->first();
        $services = Service::with('service_' . currentLang())->where('type','<>',null)->get();
        $cad_cam     = Service::with('service_' . currentLang())->where('type','cad_cam')->first();
        $digital_x_rays  = Service::with('service_' . currentLang())->where('type','digital_x_rays')->first();
        $vita_easy_shade_v    = Service::with('service_' . currentLang())->where('type','vita_easy_shade_v')->first();
        $panoramic_x_rays= Service::with('service_' . currentLang())->where('type','panoramic_x_rays')->first();

        return view('website.devices-page', compact('services', 'og', 'headerCode',
        'cad_cam','digital_x_rays','vita_easy_shade_v','panoramic_x_rays'));
    }

    public function doctor()
    {
        $og = Page::with('open_graph')->where('url','/')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', '/')->first();

        $members = Team::with('team_'.currentLang())->get();

        return view('website.doctors', compact('members','og', 'headerCode'));
    }
    public function profile($url)
    {
        $og = Page::with('open_graph')->where('url','/')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', '/')->first();

        $member = Team::with('team_'.currentLang())->where("url",$url)->first();
        $blogs=Blog::with("blog_".currentLang(),'image')->where('status',null)->orderBy("created_at",'DESC')->get();

        return view('website.profile', compact('member','blogs','og', 'headerCode'));
    }

     public function service()
     {
         $og = Page::with('open_graph')->where('url','services')->first();
         $headerCode = Page::with('open_graph')->where('url', '=', 'services')->first();
         $services = Service::with('service_' . currentLang())->where("parent_service_id",null)->where("type",null)->get();
         return view('website.service', compact('services', 'og', 'headerCode'));
     }

    public function serviceDetails($url)
    {
        $og = Page::with('open_graph')->where('url',$url)->first();
        $headerCode = Page::with('open_graph')->where('url', '=', $url)->first();
        $serviceSingle = Service::with('service_'.currentLang())->where('url', $url)->first();
        $clients = Gallery::with('image')->where('video_url', null)->where('status','clients')->get();
        $whyUsFeatures = Feature::with('feature_'.currentLang(),'image')->where('status',1)->get();

        $anotherServices = Service::where('parent_service_id',null)->where('type',null)->orderBy('created_at','desc')->get();

        return view('website.service-details', compact('serviceSingle','whyUsFeatures','clients','og', 'headerCode','anotherServices'));
    }

    public function blog()
    {
        $og = Page::with('open_graph')->where('url','blog')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'blog')->first();
        //$blogs = Blog::with('blog_' . currentLang())->orderBy('created_at', 'desc')->get();
        $blogs = Blog::with('blog_' . currentLang(),'image')->orderBy('created_at', 'desc')->where("status",null)->get();
        //dd($blogs);
        return view('website.blogs', compact('og', 'headerCode', 'blogs'));
    }

    public function event()
    {
        $og = Page::with('open_graph')->where('url','blog')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'blog')->first();
        //$blogs = Blog::with('blog_' . currentLang())->orderBy('created_at', 'desc')->get();
        $blogs = Blog::with('blog_' . currentLang())->orderBy('created_at', 'desc')->where('status','events')->get();
        return view('website.event', compact('og', 'headerCode', 'blogs'));
    }

    public function blogDetails($url)
    {
        $og = Page::with('open_graph')->where('url',$url)->first();
        $headerCode = Page::with('open_graph')->where('url', '=', $url)->first();
        $blog = Blog::with('blog_'.currentLang())->where('url', $url)->first();
        $last_blogs=Blog::with('blog_'.currentLang(),'image')->
        orderBy('created_at','DESC')->limit(6)->where('status',null)->where('id','!=',$blog->id)->get();


        return view('website.blog-details', compact('og', 'headerCode', 'blog','last_blogs'));
    }

    public function eventDetails($url)
    {
        $og = Page::with('open_graph')->where('url',$url)->first();
        $headerCode = Page::with('open_graph')->where('url', '=', $url)->first();
        $blog = Blog::with('blog_'.currentLang())->where('url', $url)->first();
        $last_blogs=Blog::with('blog_'.currentLang(),'image')->
        orderBy('created_at','DESC')->limit(6)->where('status','events')->where('id','!=',$blog->id)->get();


        return view('website.event-details', compact('og', 'headerCode', 'blog','last_blogs'));
    }

    public function client()
    {
        $og = Page::with('open_graph')->where('url', '/')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', '/')->first();
        $images = Gallery::with('image')->where('video_url', null)->where('status','clients')->get();
        return view('website.clients', compact('images', 'og', 'headerCode'));
    }

    public function albumDetails($id)
    {
        $og = Page::with('open_graph')->where('url', 'album')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'album')->first();
        $album = Album::find($id);

        if ($album->type == '1')
        {
            $images =  Image::where('album_id', $id)->get();
            //$album_images=$album->images()->paginate(8);
            $album_images=$album->images()->get();
            $videos = $album->videos()->get();
            //$album_images->withPath('?type=images');
            //dd($album_images);
            //return view('website.album-details', compact('album', 'images','album_images','videos','og', 'headerCode'));
            return view('website.testimonials', compact('album', 'images','album_images','videos','og', 'headerCode'));

        }
        elseif ($album->type == '2')
        {
            $videos = Video::with('album','service')->where('album_id', $id)->get();

            //return view('website.videos', compact('album', 'videos', 'og', 'headerCode'));
        }
        else{
            echo "Invalid Album";
        }

    }


     //-----------------------------------------------------------------------------------------------------------------\\
    //--------------------------------------------- ------------------------------ --------------------------------------\\
   //------------------------------------------------- category & product -------------------------------------------------\\

    public function category(){
        $og = Page::with('open_graph')->where('url', 'category')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'album')->first();

        $categories=Category::with('category_'.currentLang(),'image','products')->get();
        return view('website.category',compact('categories','og','headerCode'));
    }

    public function categoryDetails($url){
        $og = Page::with('open_graph')->where('url', '/')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', '/')->first();

        //$sub_categories=Category::with('category_'.currentLang(),'image','products')->where('parent_category_id',$id)->get();
        //$category=Category::with('category_'.currentLang(),'image','products')->where('url',$url)->first();
        $category=Category::with('category_'.currentLang(),'image','childCategories.products')->where('url',$url)->first();
        //dd($category);
        //$category_products=Product::with('product_'.currentLang(),'images','image','iconImg')->where('category_id',$category->id)->paginate(8);
       $category_products = Product::with('product_'.currentLang(),'images','image','category')->where('category_id',$category->id)->orderBy('created_at','DESC')->get();

       return view('website.category',compact('category','category_products','og','headerCode'));
    }

    public function product(){
        $og = Page::with('open_graph')->where('url', 'product')->first();
        $headerCode = Page::with('open_graph')->where('url', '=', 'product')->first();

        $products=Product::with('product_'.currentLang(),'image','images')->get();
        return view('website.product',compact('products','og','headerCode'));
    }

   /* public function productDetails($url){
        $og = Page::with('open_graph')->where('url', $url)->first();
        $headerCode = Page::with('open_graph')->where('url', '=',$url)->first();
        $product=Product::with('product_'.currentLang(),'image','images','category')->where('url',$url)->first();
        $last_category_products=$product->category->products()->skip(0)->take(4)->get();

        //dd($last_category_products);
        return view('website.product-details',compact('product','last_category_products','og','headerCode'));
    }*/
    public function productDetails($url)
    {
        $og = Page::with('open_graph')->where('url',$url)->first();
        $headerCode = Page::with('open_graph')->where('url', '=', $url)->first();
        $product = Product::with('product_'.currentLang())->where('url', $url)->first();
        $anotherProducts= Product::where('type',null)->orderBy('created_at','desc')->limit(3)->get();

        return view('website.product-details', compact('product','og', 'headerCode','anotherProducts'));
    }

    public function programDetails($url){
        $og = Page::with('open_graph')->where('url', $url)->first();
        $headerCode = Page::with('open_graph')->where('url', '=',$url)->first();
        $program=Hotel::with('hotel_'.currentLang(),'image','images','category','city')->where('url',$url)->first();
        $last_category_programs=$program->category->hotels()->skip(0)->take(4)->get();
        //dd($last_category_products);
        return view('website.program-details',compact('program','last_category_programs','og','headerCode'));
    }

    //---------------------------------------------------------- end -----------------------------------------------------\\
   //--------------------------------------------- --------------------------------- --------------------------------------\\
  //------------------------------------------------------------------------------------------------------------------------\\

    public function partner(){
        $og = Page::with('open_graph')->where('url','career')->first();
        $headerCode = Page::with('open_graph')->where('url','=','career')->first();

        //$partners=Client::with('client_'.currentLang(),'image')->where('status',null)->paginate(6);
        $images = Gallery::with('image')->where('video_url', null)->where('status','partners')->get();
        return view("website.partners",compact('images','og','headerCode'));
    }
    public function career(){
        $og = Page::with('open_graph')->where('url','career')->first();
        $headerCode = Page::with('open_graph')->where('url','=','career')->first();

        return view("website.careers",compact('og','headerCode'));
    }

    public function submitCareer(Request $request){

        //dd($request->file_id->getClientOriginalExtension());
        //dd($request->file_id->extension());
        //dd($request->file('file')->extension());

        $request->validate([
            'email'         => 'bail|required|email|max:100',
            'phone'         => 'bail|required|min:8|max:14',
            //'title'         => 'bail|required|max:150',
            'name'          => 'bail|required|max:100',
            'message'       => 'bail|required',
            'file_id'       => 'required|mimes:jpeg,jpg,png,gif,doc,docx,pdf,csv,xls',
        ]);


        if($uploadFile = $request->file_id)
        {

            $fileName = date("ymd-his")."_".$uploadFile->getClientOriginalName();
            $filePath = 'dashboardImages/file/'.$fileName;
            $file=\App\Models\File::create(['name'=>$fileName,'path'=>$filePath]);
            $uploadFile->move('dashboardImages/file',$fileName);
            Appointment::create(['name' => $request->name , 'email' => $request->email , 'phone' => $request->phone , 'message' => $request->mesage , 'file_id' => $file->id]);
        }

        return redirect("/jobs")->with("create",__("trans.send_request"));
    }


    public function project(){
        $og = Page::with('open_graph')->where('url','project')->first();
        $headerCode = Page::with('open_graph')->where('url','project')->first();
        $images = Gallery::with('image')->where('video_url', null)->where('status','projects')->get();
        return view('website.projects',compact('og','headerCode','images'));
    }


    public function productSerial()
    {
        $og = Page::with('open_graph')->where('url','project')->first();
        $headerCode = Page::with('open_graph')->where('url','project')->first();

        return "";
    }


    public function branchDetails($url)
    {
        $og = Page::with('open_graph')->where('url','project')->first();
        $headerCode = Page::with('open_graph')->where('url','project')->first();

        $branch = Branch::with('branch_'.currentLang(),'projects')->where('url',$url)->first();
        $projects = $branch->projects;

        //dd($projects);
        return view('website.branch-details',compact('og','headerCode','branch','projects'));
    }


    public function search(Request $request)
    {
        $search_key = $request->search_key;
        //dd($search_key);
        if(preg_match('/^[a-zA-Z0-9. -_?]*$/D', $search_key))
        {
            $search_result = ServiceEnglish::with('service')->where("title","like","%".$search_key."%")->get();
            dd($search_result);
            return view("website.search",compact("og",'headerCode','search_products','categories','colors'));
        }
        else{
            $search_result = ServiceArabic::with('service')->where("title","like","%".$search_key."%")->get();
            dd($search_result);
            return view("website.search",compact("og",'headerCode','$search_result'));
        }
    }

}

























