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
    return view('home');
});

Route::get('/login', function () {
    return view('loginaAs');
});

Route::get('/loginKontributor', function () {
    return view('loginKontributor');
});

Route::get('/loginAdministrator', function () {
    return view('loginAdministrator');
});

Route::get('/register', function () {
    return view('registerAs');
});

Route::get('/registerKontributor', function () {
    return view('registerKontributor');
});

Route::get('/registerAdministrator', function () {
    return view('registerAdministrator');
});

Route::get('/kontributor', function () {
    return view('kontributor');
});

Route::get('/kontributorKonten', function () {
    return view('kontributorKonten');
});

Route::get('/kontributorDashboard', function () {
    return view('kontributorDashboard');
});

Route::get('/administrator', function () {
    return view('administrator');
});

Route::get('/administrasiValidasi', function () {
    return view('administrasiValidasi');
});

Route::get('/administrasiKontributor', function () {
    return view('administrasiKontributor');
});

Route::get('/halKonten', function () {
    return view('halKonten');
});

Route::get('/halKontenn', function () {
    return view('halKontenn');
});

Route::get('/halKontennn', function () {
    return view('halKontennn');
});

Route::get('/forgotPassword', function () {
    return view('forgotPassword');
});