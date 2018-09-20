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


Route::group(['prefix' => 'admin'], function () {
	Voyager::routes();
});

Route::group(['middleware' => ['auth','prevent-back-history']], function(){
	Route::get('profile', array('as' => 'profile', 'uses' => 'FrontendController@profile'));
	Route::get('notices', array('as' => 'notices', 'uses' => 'FrontendController@notices'));
	Route::get('achievements', array('as' => 'achievements', 'uses' => 'FrontendController@achievements'));
	Route::get('folders', array('as' => 'folders', 'uses' => 'FrontendController@folders'));
	Route::get('folders/{id}/documents', array('as' => 'folders.documents', 'uses' => 'FrontendController@documents'));
	Route::get('upcomingevents', array('as' => 'upcomingevents', 'uses' => 'FrontendController@upcomingevents'));
	Route::get('pastevents', array('as' => 'pastevents', 'uses' => 'FrontendController@pastevents'));
	Route::get('events', array('as' => 'events', 'uses' => 'FrontendController@events'));
	Route::get('albums', array('as' => 'albums', 'uses' => 'FrontendController@albums'));
	Route::get('albums/{id}/photos', array('as' => 'albums.photos', 'uses' => 'FrontendController@photos'));
	Route::get('anniversaries', array('as' => 'anniversaries', 'uses' => 'FrontendController@anniversaries'));
	Route::get('birthdays', array('as' => 'birthdays', 'uses' => 'FrontendController@birthdays'));
	Route::get('directories', array('as' => 'directories', 'uses' => 'FrontendController@directories'));
	Route::get('registrations', array('as' => 'registrations', 'uses' => 'FrontendController@registrations'));
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
