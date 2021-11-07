<?php

namespace App\Providers;

use App\Http\ViewComposers\DashboardComposer;
use App\Http\ViewComposers\LayoutsComposer;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class LayoutsServiceProvide extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        /*View::composer(
            [
                'website.welcome',
                'website.about',
                'website.contact',
                'website.blog',
                'website.blog-details',
                'website.service',
                'website.service-details',
                'website.product',
                'website.product-details',
                'website.program-details',
                'website.category',
                'website.category-details',
                'website.career',
                'website.partners',
                'website.certification',
                'website.reserve',
                'website.reservation',
                'website.reservation-flights',
                'website.destination',
                'website.offers',
                'website.offers',
                'website.album',
                'website.clients',
                'website.albumDetails',
                'website.videos',
                'website.gallery',
                'website.team',
                'website.project',
                'website.studio',
                'website.gallery',
                'website.previous-works',
                'website.intro-video',

            ],
            LayoutsComposer::class
        );*/
    }
    public function websiteComposer(){
        View::composer(
            ['website.*'],
            LayoutsComposer::class
        );
    }

    public function dashboardComposer(){
        View::composer(
            ['dashboard.*']
            ,DashboardComposer::class
        );
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->websiteComposer();
        $this->dashboardComposer();
    }
}
