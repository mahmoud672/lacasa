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

/*==============================================   Dashboard Routes    ====================================================*/

Route::group(['middleware' => 'auth','prefix'=>'lacasa-dashboard','namespace' => 'Dashboard'], function () {


    /* -- Return Home Page -- */
    Route::get('/', 'DashboardController@index');

    /* -- Return Slider Page -- */
    Route::resource('/slider', 'SliderController');
    Route::get('/slider/{id}/show-images','SliderController@showImages');
    Route::post("/slider/show/{id}/deleteImage","SliderController@destroyImage");
    Route::post("/slider/show/{id}/addImage","SliderController@storeImages");

    /* -- Return Service Page -- */
    Route::resource('/service', 'ServiceController');
    Route::get("/devices-page",'ServiceController@devicePage');
    Route::patch("devices-page/{id}/edit",'ServiceController@updateDevicePage');
    Route::get('/service/{id}/create', 'ServiceController@createSubService');
    Route::post('/sub-service/create', 'ServiceController@storeSub');
    Route::get('/service/{id}/show-images','ServiceController@showImages');
    Route::post("/service/show/{id}/deleteImage","ServiceController@destroyServiceImage");
    Route::post("/service/show/{id}/addImage","ServiceController@storeServiceImages");

    //------------------------------------------------------------------------------------------\\
    /* -- Return Product Page -- */
    Route::resource('/product', 'ProductController');
    Route::post('/product/get_subCategory', 'ProductController@get_subCategory');
    Route::get('/product/{id}/show-images','ProductController@showImages');
    Route::post("/product/show/{id}/deleteImage","ProductController@destroyProductImage");
    //Route::post("/product/show/{id}/addImage","ProductController@storeProductImage");
    Route::post("/product/show/{id}/addImage","ProductController@storeProductImages");


    /* -- Return Category Page -- */
    //======== category part =======\\
    Route::resource('/category', 'CategoryController');
    Route::get('/category/{id}/show-images','CategoryController@showImages');
    Route::post("/category/show/{id}/deleteImage","CategoryController@destroyCategoryImage");
    //Route::post("shuttle-travel-admin/category/show/{id}/addImage","CategoryController@storeCategoryImage");
    Route::post("/category/show/{id}/addImage","CategoryController@storeCategoryImages");
    // ====== ====== ====== ====== ======
    //======== category-product =======\\
    Route::get('/category/{id}/create-product','CategoryController@create_product');
    Route::post('/category/{id}/create-product','CategoryController@store_product');
    Route::get('/category/{id}/show-products','CategoryController@show_product');
    // ====== ====== ====== ====== ======\\
    //======== category-sub category =======\\
    Route::get('/category/{id}/create-sub-category','CategoryController@create');
    Route::post('/category/{id}/create-sub-category','CategoryController@store');
    Route::get('/category/{id}/show-sub-categories','CategoryController@index');
    // ====== ====== ====== ====== ======\\


    /* -- Return Client Page -- */
    Route::resource('/client', 'ClientController');

    /* -- Return Testimonial Page -- */
    Route::resource('/testimonial', 'TestimonialController');

    /* -- Return Team Page -- */
    Route::resource('/team', 'TeamController');
    Route::post('/team/{id}/assign-manager','TeamController@assignManager');

    /* -- Return Appointment Page -- */
    Route::resource('/appointment', 'AppointmentController');

    /* -- Return Reservation Page -- */
    Route::resource('/reservation', 'ReservationController');

    /* -- Return Video Page -- */
    Route::resource('/video', 'VideoController');


    /* -- Return Feature Page -- */
    Route::resource('/feature', 'FeatureController');

    /* -- Return Video Page -- */
    Route::resource('/blog', 'BlogController');

    /* -- Return Album Page -- */
    Route::resource('/album', 'AlbumController');
    Route::delete('/delete-image/{id}', 'AlbumController@deleteImageFromAlbum');

    /* -- Return Gallery Page -- */
    Route::resource('/gallery', 'GalleryController');
    //Route::post('/upload-to-gallery', 'GalleryController@uploadImagesToGallery');
    Route::get('/album/{id}/upload-to-gallery', 'AlbumController@uploadPage');
    Route::post('/album/{id}/upload-to-gallery', 'AlbumController@upload');

    /* -- Return Message Page -- */
    Route::resource('/message', 'MessageController');

    /*--------  About   --------*/
    Route::get('/about/edit', 'AboutController@edit');
    Route::patch('/about/update', 'AboutController@update');

     /* -- Return Users Page -- */
    Route::resource('/users', 'UsersController');

    /*--------  Contact   --------*/
    Route::get('/contact/edit', 'ContactController@edit');
    Route::patch('/contact/update', 'ContactController@update');


    /*--------  Setting   --------*/
    Route::get('/setting/edit', 'SettingController@edit');
    Route::patch('/setting/update', 'SettingController@update');

    /*--------  Branch   --------*/
    Route::resource('/branch', 'BranchController');
    Route::get('/branch/{id}/show-images','BranchController@showImages');
    Route::post("/branch/show/{id}/deleteImage","BranchController@destroyImage");
    Route::post("/branch/show/{id}/addImage","BranchController@storeImages");

    /*--------  Project   --------*/
    Route::resource('/project', 'ProjectController');








    /* -- Return Working Days Page -- */
    Route::resource('/working-days', 'WorkingDaysController');
    //Route::patch('/working-days/update', 'WorkingDaysController@update');

    /*--------  File   --------*/
    Route::get('/file/{id}', 'FileController@displayFile');



});


Auth::routes();



//Route::get('/home', 'HomeController@index')->name('home');
