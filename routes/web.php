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

Route::get('index',[
    'as'=>'trang-chu',
    'uses'=>'App\Http\Controllers\PageController@getIndex'
]);
Route::get('loai-san-pham/{type}',[
    'as' =>'loaisanpham',
    'uses' =>'App\Http\Controllers\PageController@getLoaisp'
]);
Route::get('chi-tiet-san-pham/{id}',[
    'as' =>'chitietsanpham',
    'uses' =>'App\Http\Controllers\PageController@getChitiet'
]);
Route::get('lien-he',[
    'as' =>'lienhe',
    'uses' =>'App\Http\Controllers\PageController@getLienhe'
]);
Route::get('gioi-thieu',[
    'as' =>'gioithieu',
    'uses' =>'App\Http\Controllers\PageController@getGioithieu'
]);
Route::get('add-to-cart/{id}',[
    'as'=>'themgiohang',
    'uses'=>'App\Http\Controllers\PageController@getAddtoCart'
]);
Route::get('del-cart/{id}',[
    'as'=>'xoagiohang',
    'uses'=>'App\Http\Controllers\PageController@getDelItemCart'
]);
Route::get('dat-hang',[
    'as'=>'dathang',
    'uses'=>'App\Http\Controllers\PageController@getCheckout'
]);
Route::post('dat-hang',[
    'as'=>'dathang',
    'uses'=>'App\Http\Controllers\PageController@postCheckout'
]);
Route::get('search',[
    'as'=>'search',
    'uses'=>'App\Http\Controllers\PageController@getSearch'
]);
Route::get('dang-nhap',[
    'as'=>'login',
    'uses'=>'App\Http\Controllers\PageController@getLogin'
]);
Route::post('dang-nhap',[
    'as'=>'login',
    'uses'=>'App\Http\Controllers\PageController@postLogin'
]);
Route::get('dang-ki',[
    'as'=>'signin',
    'uses'=>'App\Http\Controllers\PageController@getSignin'
]);
Route::post('dang-ki',[
    'as'=>'signin',
    'uses'=>'App\Http\Controllers\PageController@postSignin'
]);
Route::get('dang-xuat',[
    'as'=>'logout',
    'uses'=>'App\Http\Controllers\PageController@postLogout'
]);








