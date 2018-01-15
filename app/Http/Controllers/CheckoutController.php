<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Cart;
use PayPal\Rest\ApiContext;
use PayPal\Auth\OAuthTokenCredential;
use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\Item;
use PayPal\Api\ItemList;
use PayPal\Api\Payer;
use PayPal\Api\Payment;
use PayPal\Api\RedirectUrls;
use PayPal\Api\ExecutePayment;
use PayPal\Api\PaymentExecution;
use PayPal\Api\Transaction;
use Session;
use Laracasts\Flash\Flash;
use App\Config;
use App\Socio;
use App\Membresia;
use App\Venta;
use App\VentaDetalle;
use App\Pago;
use App\Tour;
use App\User;
use App\Destino;
use Mail;

class CheckoutController extends Controller {

    private $_api_context;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct() {

        parent::__construct();

//        $this->middleware('auth', ['except' => 'getLogout']);

        // setup PayPal api context
        $paypal_conf = config('paypal');
        $this->_api_context = new ApiContext(new OAuthTokenCredential($paypal_conf['client_id'], $paypal_conf['secret']));
        $this->_api_context->setConfig($paypal_conf['settings']);
    }

    public function index() {

        $cart = Cart::content();
        $tourid = $cart->first()->all();
        $tour = \App\Tour::find($tourid['id'])->toArray();
        $data['cart'] = $cart;
        $data['tour'] = $tour;
        $data['tour']['images'] = \App\Tour::find($tourid['id'])->images->toArray();
        $data['tour']['destino'] = \App\Tour::find($tourid['id'])->destino->toArray();

        $data['user'] = auth()->user();
        $socio = Socio::where('IdUsuario', $data['user']->id)->get();

        $data['comision'] = Config::find(1)->valor;

//        if($this->validateMembresia($socio[0])){

        if (!$socio[0]->pagado) {

            $membre = Membresia::find($socio[0]->IdTipoMembr);

            return redirect()->action('MembresiaController@perfil');
        }


        $cartarray = $cart->toArray();
        $totalSub = 0;
        $totalAnti = 0;
        $totalSaldo = 0;
        $totalReg = 0;

        foreach ($cartarray as $key => $item) {
            if ($item['options']['menor']) {
                $anticipo = $item['qty'] * $tour['AnticipoMenor'];
                $saldo = $item['qty'] * $tour['BalanceMenor'];
                $precio = $tour['PrecTour'] * $item['qty'];
                $data['tabla']['ninio'] = ['reg' => $tour['PrecTour'], 'conDesc' => $tour['PrecTourDesc'], 'tipo' => 'MENOR', 'qty' => $item['qty'], 'subtotal' => $item['subtotal'], 'anticipo' => $anticipo, 'saldo' => $saldo];
            } else {
                $anticipo = $item['qty'] * $tour['AnticipoAdulto'];
                $saldo = $item['qty'] * $tour['BalanceAdulto'];
                $precio = $tour['PrecTour'] * $item['qty'];
                $data['tabla']['adulto'] = ['reg' => $tour['PrecTour'], 'conDesc' => $tour['PrecTourDesc'], 'tipo' => 'ADULTO', 'qty' => $item['qty'], 'subtotal' => $item['subtotal'], 'anticipo' => $anticipo, 'saldo' => $saldo];
            }

            $totalSub = $totalSub + $item['subtotal'];
            $totalAnti = $totalAnti + $anticipo;
            $totalComision = $totalAnti * ($data['comision'] + 1);
            $totalSaldo = $totalSaldo + $saldo;
            $totalReg = $totalReg + $precio;
        }

        $ahorro = $totalReg - $totalSub;
        $diferencial = $totalReg - $totalSub;
        $porcentajeAhorro = $diferencial / $totalReg * 100;
        $data['totales'] = ['totalSub' => $totalSub, 'totalAnti' => $totalAnti, 'totalSaldo' => $totalSaldo, 'ahorro' => $ahorro,
            'pctAhorro' => (int) $porcentajeAhorro, 'totalComision' => $totalComision];

        return view('checkout', $data);
    }

    public function buy(Request $request) {

        $cart = Cart::content();
        $tourid = $cart->first()->all();
        $tour = \App\Tour::find($tourid['id'])->toArray();


        return redirect()->action('CheckoutController@postPayment');
    }

    public function postPayment() {

        $cart = Cart::content();
        $tourid = $cart->first()->all();
        $tour = \App\Tour::find($tourid['id'])->toArray();


//        $moneda = Session::get('CodigoMon');



        $moneda = 'MXN';

        $payer = new Payer();
        $payer->setPaymentMethod('paypal');


        $c = 0;
        $totalMenor = 0;
        $totalMayor = 0;
        $lista = [];

        foreach ($cart->toArray() as $key => $item) {

            $c++;

            if ($item['options']['menor']) {

                ${"item_" . $c} = new Item();
                ${"item_" . $c}->setName($item['name'] . '- Niño') // item name
                        ->setCurrency($moneda)
                        ->setQuantity($item['qty'])
                        ->setPrice(cambiaraPesos($tour['AnticipoMenor'])['cantidad']); // unit price
                $totalMenor = cambiaraPesos($tour['AnticipoMenor'] * $item['qty'])['cantidad'];
            } else {
                ${"item_" . $c} = new Item();
                ${"item_" . $c}->setName($item['name'] . '- Adulto') // item name
                        ->setCurrency($moneda)
                        ->setQuantity($item['qty'])
                        ->setPrice(cambiaraPesos($tour['AnticipoAdulto'])['cantidad']);
                $totalMayor = cambiaraPesos($tour['AnticipoAdulto'] * $item['qty'])['cantidad'];                                              // unit price
            }

            array_push($lista, ${"item_" . $c});
        }

        $total_comision = $this->calcularComision($totalMenor + $totalMayor);

        $cant_en_lista = sizeof($lista) + 1;

        ${"item_" . $cant_en_lista} = new Item();
        ${"item_" . $cant_en_lista}->setName('Comisiones') // item name
                ->setCurrency($moneda)
                ->setQuantity(1)
                ->setPrice($total_comision);

        array_push($lista, ${"item_" . $cant_en_lista});





        $item_list = new ItemList();

        $item_list->setItems($lista);
        // add item to list



        $amount = new Amount();
        $amount->setCurrency($moneda)
                ->setTotal($totalMenor + $totalMayor + $total_comision);

        $transaction = new Transaction();
        $transaction->setAmount($amount)
                ->setItemList($item_list)
                ->setDescription('Your transaction description');

        $redirect_urls = new RedirectUrls();
        $redirect_urls->setReturnUrl(url('payment/status'))
                ->setCancelUrl(url('payment/status'));

        $payment = new Payment();
        $payment->setIntent('Sale')
                ->setPayer($payer)
                ->setRedirectUrls($redirect_urls)
                ->setTransactions(array($transaction));

        try {
            $payment->create($this->_api_context);
        } catch (\PayPal\Exception\PPConnectionException $ex) {
            if (\config('app.debug')) {
                echo "Exception: " . $ex->getMessage() . PHP_EOL;
                $err_data = json_decode($ex->getData(), true);
                exit;
            } else {
                Flash::error('Something went wrong, Sorry for inconvenience');
                return redirect('/');
            }
        }

        foreach ($payment->getLinks() as $link) {
            if ($link->getRel() == 'approval_url') {
                $redirect_url = $link->getHref();
                break;
            }
        }

// add payment ID to session
        Session::put('paypal_payment_id', $payment->getId());

        if (isset($redirect_url)) {
// redirect to paypal
            return redirect($redirect_url);
        }
        Flash::error('Unknown error occurred');
        return redirect('/');
    }

    public function getPaymentStatus(Request $request) {
// Get the payment ID before session clear
        $payment_id = Session::get('paypal_payment_id');

// clear the session payment ID
        Session::forget('paypal_payment_id');

        if (empty($request->input('PayerID')) || empty($request->input('token'))) {
            Flash::error('Ocurrio un error al procesar el pago, por favor contactenos a contacto@outour.mx con gusto lo atendemos.');
            return redirect('/');
        }

        $payment = Payment::get($payment_id, $this->_api_context);

// PaymentExecution object includes information necessary
// to execute a PayPal account payment.
// The payer_id is added to the request query parameters
// when the user is redirected from paypal back to your site
        $execution = new PaymentExecution();
        $execution->setPayerId($request->input('PayerID'));

//Execute the payment
        $result = $payment->execute($execution, $this->_api_context);

        /*
         * Get the ID with : $result->id
         * Get the State with $result->state
         * Get the Payer State with $result->payer->payment_method
         * Get The Shipping Address and More Detail like below :- $result->payer->payer_info->shipping_address
         * Get More detail about shipping address like city country name
         */

//        echo '<pre>';
//        print_r($result->payer->payer_info->shipping_address);
//        echo '</pre>';
//        exit; // DEBUG RESULT.

        if ($result->getState() == 'approved') { // payment made
            return $this->pagoAprovado($result, $request);
        }
        Flash::error('Ocurrio un error al procesar el pago, por favor contactenos a contacto@outour.mx con gusto lo atendemos.');
        return redirect('/');
    }

    public function validateMembresia($socio) {

        $fecha_hoy = Carbon::now();
        $fecha_vigencia = Carbon::create($socio->FechVigSoc);

        if ($socio->pagado == False) {
            return False;
        } else {

            return True;
        }
    }

    public function calcularComision($total) {
        $paypal = Config:: find(1);
        return (float) $total * ($paypal->valor);
    }

    public function pagoAprovado($result, $request) {


        $ventaDetalle = New VentaDetalle;
        $user = auth()->user();
        $socio = Socio::where('IdUsuario', $user->id)->get();
        $cart = Cart::content()->toArray();

        $pago = New Pago;
        $pago->PayerEmail = $result->payer->payer_info->getEmail();
        $pago->PayerId = $result->payer->payer_info->getPayerId();
        $pago->IdRefePago = $result->id;
        $pago->cantPago = $result->transactions[0]->amount->total;
        $pago->IdUser = $user->id;
        $pago->save();

        $venta = New Venta;
        $venta->IdUser = $user->id;
        $venta->IdPago = $pago->id;
        $venta->VentPagado = True;
        $venta->save();

        $ventaDetalle->idVenta = $venta->id;
        $data['venta_id'] = $venta->id;

        foreach ($cart as $key => $item) {

            if ($item['options']['menor']) {
                $ventaDetalle->CantMenor = $item['qty'];
            } else {

                $tour = Tour::find($item['id']);

                $ventaDetalle->IdTour = $tour->id;
                $ventaDetalle->PrecioTour = $tour->PrecTour;
                $ventaDetalle->PrecTourDesc = $tour->PrecTourDesc;
                $ventaDetalle->PrecioMenor = $tour->PrecioMenor;
                $ventaDetalle->PrecioMenorDesc = $tour->PrecioMenorDesc;
                $ventaDetalle->AnticipoAdulto = $tour->AnticipoAdulto;
                $ventaDetalle->AnticipoMenor = $tour->AnticipoMenor;
                $ventaDetalle->BalanceAdulto = $tour->BalanceAdulto;
                $ventaDetalle->BalanceMenor = $tour->BalanceMenor;

                $ventaDetalle->CantPerso = $item['qty'];
            }
        }

        $ventaDetalle->save();


        $venta->folio = $this->createFolioReservacion($venta);
        $venta->save();

        Cart::destroy();
        $request->session()->put('venta_id', $venta->id);
        return redirect()->action('CheckoutController@infoAdicional', $data);
    }

    public function infoAdicional(Request $request) {

        $user = auth()->user();
        $venta_id = $request->session()->get('venta_id');
        $venta = Venta::findOrFail($venta_id);
        $venta_detalle = VentaDetalle::where('idVenta', $venta_id)->get();
        $tour = Tour::find($venta_detalle[0]->IdTour);
        $destino = Destino::find($tour->IdDest);

        if ($user->id !== $venta->IdUser) {
            Flash::error('La reservacion no corresponde con el socio');
            return redirect('/');
        }

        $data['venta_id'] = $venta_id;
        $data['user'] = $user;
        $data['venta'] = $venta;
        $data['venta_detalle'] = $venta_detalle[0];
        $data['tour'] = $tour;
        $data['destino'] = $destino;

        $balance_adulto = (float) $venta_detalle[0]->CantPerso * (float) $venta_detalle[0]->BalanceAdulto;
        $balance_menor = (float) $venta_detalle[0]->CantMenor * (float) $venta_detalle[0]->BalanceMenor;

        $data['balance'] = $balance_adulto + $balance_menor;

        return view('checkout.info-adicional', $data);
    }

    public function saveinfoAdicional(Request $request) {

        $venta_id = $request->venta_id;

        $venta = Venta::findOrFail($venta_id);

//        dd($request->all());

        $venta->ComentVent = $request->ComentVent;
        $venta->hotelPickUp = $request->hotelPickUp;
        $venta->lobby = $request->lobby;
        $venta->habitaPickup = $request->habitaPickup;
        $venta->telHotel = $request->telHotel;
        $venta->fechaReser = $request->fechaReser;

        $venta->save();

        $balance = $request->cant_balance;

        $this->sendEmailReservacion($venta, $balance);

        Flash::success('Gracias!, La reservacion de su tour se ha creado con exito, en poco tiempo se pondra en contacto un ejecutivo.');
        return redirect()->action('MembresiaController@perfil');
    }

    public function createFolioReservacion($venta) {

        $venta_detalle = VentaDetalle::where('idVenta', $venta->id)->get();

        return $venta_detalle[0]->IdTour . $venta->IdUser . $venta->id;
    }

    public function sendEmailReservacion(Venta $venta, $balance) {

        $venta_detalle = VentaDetalle::where('idVenta', $venta->id)->get();
        $data['venta_detalle'] = $venta_detalle[0];
        $data['user'] = User::find($venta->IdUser);
        $data['email'] = $data['user']->email;
        $socio = Socio::where('IdUsuario', $data['user']->id)->get();
        $data['socio'] = $socio[0];
        $data['venta'] = $venta;
        $tour = Tour::find($venta_detalle[0]->IdTour);
        $destino = Destino::find($tour->IdDest);
        $data['destino'] = $destino;
        $data['tour'] = $tour;
//        dd($data['tour']);
        $data['balance'] = $balance;

        try {
            Mail::send('emails.nueva-reservacion', $data, function ($message) use ($data) {
                $message->from('no-reply@outour.mx', 'Outour.mx');
                $message->subject('Nueva Reservacion de Outour.mx');
                $message->bcc('adavila@outour.mx');
//                $message->bcc('abelardo@websiete.com');
                $message->to($data['email']);
            });
        } catch (Exception $e) {
            echo $e;
        }
    }

}
