<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Cart;
use App\Tour;

class CartController extends Controller {

    function __construct() {
        parent::__construct();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        //
    }

    public function cart(Request $request) {

        if ($request->method() == 'POST') {
            $cant_menores = $request->get('cant_menores');
            $cant_adultos = $request->get('cant_adultos');
            $tour_id = $request->get('tour_id');
            $tour = Tour::find($tour_id);

            Cart::destroy();

            if ($cant_menores != 0) {
                Cart::add(array('id' => $tour_id, 'name' => $tour->NombTour, 'qty' => $cant_menores, 'price' => $tour->PrecioMenorDesc, 'options' => ['menor' => true, 'anticipo' => $tour['AnticipoMenor'], 'balance' => $tour['BalanceMenor']]));
            }
                Cart::add(array('id' => $tour_id, 'name' => $tour->NombTour, 'qty' => $cant_adultos, 'price' => $tour->PrecTourDesc, 'options' => ['menor' => false, 'anticipo' => $tour['AnticipoAdulto'], 'balance' => $tour['BalanceAdulto']]));
           
            $cart = Cart::content();


            return redirect()->action('CheckoutController@index', array('cart' => $cart));
        }
    }

    public function getCartAjax() {

        $cart = Cart::content()->toArray();

        foreach ($cart as $key => $value) {

            $cart[$key]['pricemoneda'] = precio((int) $cart[$key]['price']);
            $cart[$key]['subtotalmoneda'] = precio($cart[$key]['subtotal']);
            $cart[$key]['totalmoneda'] = precio(Cart::total());
        }

//        var_dump($cart);
        return response()->json($cart);
    }

    public function getPrice() {
        
    }

}
