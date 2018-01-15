<?php

/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register all of the routes for an application.
  | It's a breeze. Simply tell Laravel the URIs it should respond to
  | and give it the controller to call when that URI is requested.
  |
 */

// Authentication routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', ['as' => 'auth/login', 'uses' => 'Auth\AuthController@postLogin']);
Route::get('auth/logout', ['as' => 'auth/logout', 'uses' => 'Auth\AuthController@getLogout']);

// Registration routes...
Route::get('/auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', ['as' => 'auth/register', 'uses' => 'Auth\AuthController@postRegister']);

Route::get('/membresias', function() {
    return view('cms.membresias');
});

Route::get('/contacto', function() {
    return view('cms.contacto');
});
Route::get('/privacidad', function() {
    return view('cms.privacidad');
});
Route::get('/politicas', function() {
    return view('cms.condiciones');
});
Route::any('/facturacion', 'CmsController@facturacion');
Route::any('/proveedores', 'CmsController@proveedores');
Route::any('/sobre-nosotros', 'CmsController@sobreNosotros');


Route::get('/', 'IndexController@index');

Route::get('/tours', 'ListController@index');
Route::get('/tourq', 'ListController@getToursAjax');

Route::get('/tour/{id}', 'TourController@index');

Route::any('/cart', 'CartController@cart');
Route::get('/cart/get', 'CartController@getCartAjax');
Route::any('/checkout', 'CheckoutController@index');
Route::any('/checkout/buy', 'CheckoutController@buy');


Route::get('payment', 'CheckoutController@postPayment');
Route::get('payment/info-adicional', 'CheckoutController@infoAdicional');
Route::post('payment/info-adicional', 'CheckoutController@saveinfoAdicional');
Route::get('payment/status', 'CheckoutController@getPaymentStatus');

//// Membresias ///

Route::get('/membresia/preregistro/{id?}', 'MembresiaController@index');
Route::post('/membresia/comprar', 'MembresiaController@comprarMembresia');
Route::get('/membresia/payment', 'MembresiaController@postPayment');
Route::get('/membresia/pagar', 'MembresiaController@pagarMembresia');


Route::get('/membresia/payment/status', 'MembresiaController@getPaymentStatus');
//Route::get('/membresia/payment/aprovado', 'MembresiaController@pagoAprovado');
Route::get('/membresia/perfil', [ 'middleware' => 'auth', 'uses' => 'MembresiaController@perfil']);
Route::post('/membresia/perfil', [ 'middleware' => 'auth', 'uses' => 'MembresiaController@savePerfil']);

/// AGENTES////

Route::get('/agentes', 'AgentesController@index');
Route::post('/agentes', 'AgentesController@preRegistro');

Route::get('/agentes/registro', 'AgentesController@Registro');
Route::post('/agentes/registro/save', 'AgentesController@savePerfil');

Route::get('/agentes/login', 'AgentesController@login');
Route::post('/agentes/login', 'AgentesController@entrarAgente');

Route::get('/estados/{id?}', 'AgentesController@getEstados');
Route::get('/a', 'AgentesController@ProcessAgenteUrl');

//// AYUDA////

Route::get('/faq','CmsController@faq');
Route::get('/como-funciona','CmsController@comoFunciona');
Route::get('/como-pago','CmsController@comoPago');

//// ADMIN /////

Route::get('/admin/auth/login','Admin\loginController@index');
Route::post('/admin/auth/login','Admin\loginController@postLogin');


Route::get('/admin/tours','Admin\tourController@index');
Route::get('/admin/tours/new','Admin\tourController@newTour');
Route::get('/admin/tours/edit/{id?}','Admin\tourController@editTour');
Route::post('/admin/tours/edit/{id?}','Admin\tourController@updateTour');
Route::get('/admin/tours/eliminar/{id?}','Admin\tourController@deleteTour');

Route::post('/admin/tours/save','Admin\tourController@saveTour');
Route::post('/admin/tours/upload','Admin\tourController@uploadImage');
Route::any('/admin/tours/image/delete','Admin\tourController@deleteImage');
