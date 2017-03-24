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
    return redirect('admin');
});

Route::get('/admin/sites/test/{id}', 'ExecutionController@ExecuteTest');
Route::get('/storage/app/screenshots/{execution_id}/{site_id}/{name}', 'ScreenshotController@render');
