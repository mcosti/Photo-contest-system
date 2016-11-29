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


//Route::get('/auth/logout', function() {
//    Session::flush();
//    return redirect()->back();
//});

Auth::routes();

Route::get('/', 'HomeController@index');

Route::get('/concurs', 'ContestController@index');
Route::get('/concurs/entry/{id}', 'ContestController@single');
Route::get('/concurs/vote/{id}/',['as' => 'entry.vote', 'uses' => 'ContestController@vote', 'middleware' => 'auth']);


Route::get('/auth/fblogin', 'SocialAuthController@redirect');
Route::get('/auth/callback', 'SocialAuthController@callback');





Route::group([
    'prefix' => 'admin',
    'middleware' => ['role:admin'],
], function()
{
    // Backpack\CRUD: Define the resources for the entities you want to CRUD.
    CRUD::resource('entries', 'Admin\EntryController');

    // [...] other routes
});

