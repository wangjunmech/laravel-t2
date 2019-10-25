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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::resource('/customers', 'customersController');
Route::view('/news', 'news');
Route::view('/qualicast', 'qualicast');
Route::view('/product', 'product');
Route::view('/contact', 'contact');
Route::view('/email', 'email');
Route::view('/sitemap', 'sitemap');
