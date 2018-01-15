<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Membresia;
use App\Socio;
use App\User;
use App\Pais;
use App\Pago;
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
use App\ventaMebresia;
use Carbon\Carbon;
use Auth;
use App\SocioAdicional;
use App\Config;
use App\Asociado;
use Mail;

class MembresiaController extends Controller {

    private $_api_context;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct() {
        parent::__construct();
        $paypal_conf = config('paypal');
        $this->_api_context = new ApiContext(new OAuthTokenCredential($paypal_conf['client_id'], $paypal_conf['secret']));
        $this->_api_context->setConfig($paypal_conf['settings']);
    }

    public function index($id = null) {

        $paises = Pais::all();
        $data['paises'] = $paises->toArray();
        $memb = Membresia::all();
        $data['membresias'] = $memb->toArray();
        $data['tipo'] = $id;

        return view('membresia.pre-registro', $data);
    }

    public function comprarMembresia(Request $request) {

        $user['name'] = $request->nombre;
        $user['email'] = $request->email;
        $user['password'] = $request->password;
        $user['password_confirmation'] = $request->password_confirmation;
        $validator = $this->validatorUser($user);

        if ($validator->fails()) {
            $this->throwValidationException($request, $validator);
        }

        if ($request->session()->get('id_agente_url') !== null) {

            $asociado = $request->session()->get('id_agente_url');
        } else {
            $asociado = null;
        }

        $createdUser = $this->createUser($user);
        // Crear Socio//
        $socio = New Socio;
        $socio->IdUsuario = $createdUser->id;
        $socio->idPais = $request->pais;
        $socio->IdAsociado = $asociado;
        $socio->NombSocio = $request->nombre;
        $socio->IdTipoMembr = $request->tipo;
        $socio->numTarjeta = $this->crearNumTarjeta($createdUser->id, $request->tipo);
        $saved = $socio->save();

        if ($saved) {
            $membresia = Membresia::find($request->tipo)->toArray();
        }

        Session::put('user_id', $createdUser->id);


        return redirect()->action('MembresiaController@postPayment', $membresia);
    }

    protected function validatorUser(array $data) {

        return Validator::make($data, [
                    'name' => 'required|max:255',
                    'email' => 'required|email|max:255|unique:users',
                    'password' => 'required|confirmed|min:6',
        ]);
    }

    protected function createUser(array $data) {

        return User::create([
                    'name' => $data['name'],
                    'email' => $data['email'],
                    'password' => bcrypt($data['password']),
        ]);
    }

    public function postPayment(Request $request) {

        $membresia = $request->all();
        $pago_pesos = cambiaraPesos($membresia['PrecioPromo']);
        $pago_total = $this->agregarComision($pago_pesos['cantidad']);


        $payer = new Payer();
        $payer->setPaymentMethod('paypal');

        $item_1 = new Item();
        $item_1->setName($membresia['NombMemb']) // item name
                ->setCurrency($pago_pesos['codigo'])
                ->setQuantity(1)
                ->setPrice($pago_total); // unit price
// add item to list
        $item_list = new ItemList();
        $item_list->setItems(array($item_1));

        $amount = new Amount();
        $amount->setCurrency($pago_pesos['codigo'])
                ->setTotal($pago_total);

        $transaction = new Transaction();
        $transaction->setAmount($amount)
                ->setItemList($item_list)
                ->setDescription('Pago de' . $membresia['NombMemb']);

        $redirect_urls = new RedirectUrls();
        $redirect_urls->setReturnUrl(url('/membresia/payment/status'))
                ->setCancelUrl(url('/membresia/payment/status'));

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
                return redirect(url('/membresias'));
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
        return redirect(url('/membresias'));
    }

    public function getPaymentStatus(Request $request) {
// Get the payment ID before session clear
        $payment_id = Session::get('paypal_payment_id');

// clear the session payment ID
        Session::forget('paypal_payment_id');

        if (empty($request->input('PayerID')) || empty($request->input('token'))) {
            Flash::error('Payment Failed');
            return redirect(url('/membresias'));
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



        if ($result->getState() == 'approved') { // payment made
            return $this->pagoAprovado($result);
        } else {
            Flash::error('Payment Failed');
            return redirect(url('/membresias'));
        }
    }

    public function pagoAprovado($result) {

        $user = Session::get('user_id');
        $use_login = User::find($user);
        $socio = Socio::where('IdUsuario', $user)->get();

        $membre = Membresia::find($socio[0]->IdTipoMembr);
//        $ventaMemb['idUsu'] = $user;
//        $ventaMemb['idMemb'] = $socio->IdTipoMembr;
//        $venta = $this->createVenta($ventaMemb);

        $fecha_hoy = Carbon::now();
        $fecha_vige = $fecha_hoy->addYear($membre->vigencia)->format('Y-m-d');

        $socio[0]->FechVigSoc = $fecha_vige;
        $socio[0]->pagado = True;
        $socio[0]->save();


        $pago = New Pago;

        $pago->PayerEmail = $result->payer->payer_info->getEmail();
        $pago->PayerId = $result->payer->payer_info->getPayerId();
        $pago->IdRefePago = $result->id;
        $pago->cantPago = $result->transactions[0]->amount->total;
        $pago->IdUser = $user;
        $pago->save();



        Auth::login($use_login);

        Flash::success('El pago fue realizado con exito');

        return redirect()->action('MembresiaController@perfil');
    }

    public function createVenta(array $data) {

        return ventaMebresia::create([
                    'idUsu' => $data['idUsu'],
                    'idMemb' => $data['idMemb'],
                    'idAgente' => $data['idMemb'],
        ]);
    }

    public function crearNumTarjeta($user, $idMebr) {
        $num = rand(000000, 999999);
        $num2 = rand(000000, 999999);
        return $idMebr . ' ' . $num . ' ' . $num2 . ' ' . $user;
    }

    public function perfil(Request $request) {

        $user = auth()->user();
        $socio = Socio::where('IdUsuario', $user->id)->get();
        $membre = Membresia::find($socio[0]->IdTipoMembr);
        $socios_adi = SocioAdicional::where('idUser', $user->id)->get();

        $data['socio'] = $socio[0];
        $data['user'] = $user;
        $data['membresia'] = $membre;
        $data['adicionales'] = $socios_adi->toArray();


        $agente = Asociado::find($socio[0]->IdAsociado);

        if ($agente == null) {
            $data['asociado'] = null;
            $data['id_asociado'] = null;
        } else {
            $data['asociado'] = $agente->id . ' - ' . $agente->NombAsoc;
            $data['id_asociado'] = $agente->id;
        }

        

        return view('membresia.perfil-socio', $data);
    }

    public function savePerfil(Request $request) {
        extract($request->all());
        $user = auth()->user();
        $socio = Socio::where('IdUsuario', $user->id)->get();
        $membre = Membresia::find($socio[0]->IdTipoMembr);
        $socio_adi = $socios_adi = SocioAdicional::where('idUser', $user->id)->get();

        if ($id_promotor == '') {
            $agente = Asociado::where('numTarjeta', $promotor)->get();
            if (sizeof($agente->toArray()) !== 0 && $agente->rol == 2) {
                $socio[0]->IdAsociado = $agente[0]->id;
            } else {
                $socio[0]->IdAsociado = NULL;
            }
        }

        $socio[0]->TelSocio = $tel;
        $socio[0]->TelCelSocio = $cel;
        $socio[0]->FechNacSocio = $fechNac;
//       
        $socio[0]->SexSocio = $sexo;
        $socio[0]->capturado = 1;
        $socio[0]->save();

        $cant = (int) $membre->cantMiembr;
//            dd($request->all());
        for ($x = 0; $x <= $cant; $x++) {

            if (isset(${'adi_name_upd_' . $x})) {
                $adicional = $socio_adi[$x];
                $adicional->NombSocAdi = ${'adi_name_upd_' . $x};
                $adicional->EdadSocAdi = ${'adi_edad_upd_' . $x};
                $adicional->save();
            } elseif (isset(${'adi_name_ins_' . $x})) {
                $adicional = New SocioAdicional;
                $adicional->IdUser = $user->id;
                $adicional->NombSocAdi = ${'adi_name_ins_' . $x};
                $adicional->EdadSocAdi = ${'adi_edad_ins_' . $x};
                $adicional->save();
            }
        }
        $this->sendEmailBienvenida($socio[0], $user, $membre);

        Flash::success('Su perfil se guardo con exito');

        return redirect()->action('ListController@index');
    }

    public function agregarComision($total) {
        $paypal = Config:: find(1);
        return (float) $total * (1 + $paypal->valor);
    }

    public function sendEmailBienvenida($socio, $user, $membre) {
        $data['socio'] = $socio;
        $data['user'] = $user;
        $data['membresia'] = $membre;
        try {
            Mail::send('emails.bienvenida-socios', $data, function ($message) use ($data) {
                $message->from('no-reply@outour.mx', 'Outour.mx');
                $message->subject('Bienvenida de Socio');

                $message->bcc('adavila@outour.mx');
                $message->to($data['user']->email);
            });
        } catch (Exception $e) {
            echo $e;
        }
    }

    
    public function pagarMembresia(Request $request){
      
        $user_id = $request->user()->id;
        $socio = Socio::where('IdUsuario',$user_id)->get();
        $membresia = Membresia::find($socio[0]->IdTipoMembr)->toArray();
        
      return redirect()->action('MembresiaController@postPayment', $membresia); 
    }
}
