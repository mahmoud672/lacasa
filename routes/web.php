<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});




Route::group(['middleware' => ['Maintenance', 'Lang']], function () {

    Route::get('lang/{lang}', 'LanguageController@changeLanguage');

    /*=======   Return Home     ========*/
    Route::get('/', 'WebsitePagesController@index');

    /*=======   Return about    ========*/
    Route::get('/about', 'WebsitePagesController@about');
    Route::get('/team', 'WebsitePagesController@team');



    /*=======   Return gallery  ========*/
    Route::get('/gallery', 'WebsitePagesController@gallery');

    /*=======   Return gallery  ========*/
    Route::get('/previous-works', 'WebsitePagesController@previousWorks');

    /*======= Return certificate ========*/
    Route::get('/certificates', 'WebsitePagesController@certification');

    /*=======   Return partners  ========*/
    Route::get('/partners', 'WebsitePagesController@partner');

    /*=======   Return Service    ========*/
    Route::get('/service', 'WebsitePagesController@service');

    /*=======   Return Blog    ========*/
    Route::get('/blog', 'WebsitePagesController@blog');
    Route::get('/blog/{url}', 'WebsitePagesController@blogDetails');

  /*=======   Return Event    ========*/
    Route::get('/events', 'WebsitePagesController@event');
    Route::get('/event/{url}', 'WebsitePagesController@eventDetails');

    /*=======   Return Offers    ========*/
    Route::get('/offers', 'WebsitePagesController@offers');

    /*=======   Return Portfolio    ========*/
    Route::get('/portfolio', 'WebsitePagesController@portfolio');

    /*=======   Return Album    ========*/
    Route::get('/album', 'WebsitePagesController@album');
    Route::get('/album/{id}', 'WebsitePagesController@albumDetails');


    /*=======   Return Contact     ========*/
    Route::get('/contact', 'WebsitePagesController@contact');
    Route::post('message', 'WebsitePagesController@message');
    Route::post('/contact', 'WebsitePagesController@contactMessage');

    /*=======   Return Clients    ========*/
    Route::get('/clients', 'WebsitePagesController@client');


    /*=======   Return Service Details     ========*/
    Route::get('/service-details/{url}', 'WebsitePagesController@serviceDetails');
    Route::get('/service/{url}', 'WebsitePagesController@serviceDetails');


    /*=======   Devices Page   ========*/
    Route::get("/devices","WebsitePagesController@devicesPage");

    /*=======   Doctors Page   ========*/
    Route::get("/doctors","WebsitePagesController@doctor");
    Route::get("/profile/{url}","WebsitePagesController@profile");
    /*=======   Reserve   ========*/
    Route::get("/reservation",'WebsitePagesController@reserve');
    /*=======   Book   ========*/
    Route::get("/book",'WebsitePagesController@book');

    //Route::post('/reserve', 'WebsitePagesController@reserveAppointment');
    Route::post("/reserve-some",'WebsitePagesController@reserveSome');

    /*======= destination =========*/
    Route::get("/destination/{type}",'WebsitePagesController@destination');

    /*======= offers =========*/
    //Route::get("/offers",'WebsitePagesController@offer');



    /*=======   Category   ========*/
    //Route::get('/category', 'WebsitePagesController@category');
    Route::get('/category/{url}', 'WebsitePagesController@categoryDetails');

    /*=======   Product   ========*/
    Route::get('/products', 'WebsitePagesController@product');
    Route::get('/product/{url}', 'WebsitePagesController@productDetails');

    /*=======   Program   ========*/
    Route::get('/program', 'WebsitePagesController@program');
    Route::get('/program/{url}', 'WebsitePagesController@programDetails');


    /*=======   Careers   ========*/
    Route::get('/jobs', 'WebsitePagesController@career');
    Route::post('/jobs', 'WebsitePagesController@submitCareer');

    /*=======   Careers   ========*/
    Route::get('/career', 'WebsitePagesController@career');
    Route::post('/career', 'WebsitePagesController@submitCareer');

    /*=======   Projects   ========*/
    Route::get('/projects', 'WebsitePagesController@project');

    /*=======   Branches   ========*/
    Route::get('/branch/{url}', 'WebsitePagesController@branchDetails');

    /*=======   Studio   ========*/
    Route::get('/studio', 'WebsitePagesController@studio');

    /*=======   video   ========*/
    Route::get('/videos', 'WebsitePagesController@video');

    /*=======   Testimonials   ========*/
    //Route::get('/testimonials', 'WebsitePagesController@testimonials');

    /*=======   Product Serial   ========*/
    Route::get('/product-serial', 'WebsitePagesController@productSerial');

    /*=======  Search   ========*/
    Route::get('/search', 'WebsitePagesController@search');

     /*=======   intro video   ========*/
    //Route::get('/', 'WebsitePagesController@intro');


});


Route::get('maintenance', function () {
    return 'maintenance';
});


//Route::get('/home', 'HomeController@index')->name('home');



