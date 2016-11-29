<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        if ($this->app->environment() == 'local') {
            // Jeffrey Way's generators
            $this->app->register('Laracasts\Generators\GeneratorsServiceProvider');
            // Backpack generators
            $this->app->register('Backpack\Generators\GeneratorsServiceProvider');
        }
    }

}
