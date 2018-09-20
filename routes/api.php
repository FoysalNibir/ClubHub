<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
	return $request->user();
});

Route::post('login', 'API\PassportController@login');

Route::post('register', 'API\PassportController@register');

Route::group(['middleware' => 'auth:api'], function(){

	Route::post('get-details', 'API\PassportController@getDetails');
	Route::get('profile', array('as' => 'profile', 'uses' => 'API\PassportController@profile'));
	Route::get('notices', array('as' => 'notices', 'uses' => 'API\PassportController@notices'));
	Route::get('achievements', array('as' => 'achievements', 'uses' => 'API\PassportController@achievements'));
	Route::get('folders', array('as' => 'folders', 'uses' => 'API\PassportController@folders'));
	Route::get('folders/{id}/documents', array('as' => 'folders.documents', 'uses' => 'API\PassportController@documents'));
	Route::get('upcomingevents', array('as' => 'upcomingevents', 'uses' => 'API\PassportController@upcomingevents'));
	Route::get('pastevents', array('as' => 'pastevents', 'uses' => 'API\PassportController@pastevents'));
	Route::get('events', array('as' => 'events', 'uses' => 'API\PassportController@events'));
	Route::get('albums', array('as' => 'albums', 'uses' => 'API\PassportController@albums'));
	Route::get('albums/{id}/photos', array('as' => 'albums.photos', 'uses' => 'API\PassportController@photos'));
	Route::get('anniversaries', array('as' => 'anniversaries', 'uses' => 'API\PassportController@anniversaries'));
	Route::get('birthdays', array('as' => 'birthdays', 'uses' => 'API\PassportController@birthdays'));
	Route::get('directories', array('as' => 'directories', 'uses' => 'API\PassportController@directories'));
	Route::get('registrations', array('as' => 'registrations', 'uses' => 'API\PassportController@registrations'));

});