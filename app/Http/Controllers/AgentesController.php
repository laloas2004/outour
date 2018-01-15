<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Pais;
use App\Asociado;
use Session;
use Validator;
use Laracasts\Flash\Flash;
use App\Estado;
use Mail;

class AgentesController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct() {
        parent::__construct();
    }

    public function index() {

        $paises = Pais::all();
        $data['paises'] = $paises->toArray();



        return view('cms.agentes', $data);
    }

    public function preRegistro(Request $request) {
        $data = [];
        $email = $request->email;
        $agente = Asociado::where('email', '=', $email)->get();

        if (count($agente->toArray()) > 0) {
            Flash::error('El email ya es usado por otro agente');
            return redirect()->action('AgentesController@index');
        }


        $agente = $this->SaveAgente($request->all());
        $numTarjeta = $this->CreateIdAgente($agente);
        $data['numAgente'] = $numTarjeta;
        $data['agente'] = $agente;

        $request->session()->put('agente_id', $agente['id']);

        return redirect()->action('AgentesController@Registro');
    }

    public function Registro(Request $request) {
        if ($request->session()->has('agente_id')) {
            $data = [];
            $data['paises'] = Pais::all()->toArray();
            $agente_id = session()->get('agente_id');
            $agente = Asociado::find($agente_id);
            $data['agente'] = $agente->toArray();

            return view('agentes.perfil-agente', $data);
        } else {
            return redirect()->action('AgentesController@login');
        }
    }

    public function savePerfil(Request $request) {

        $id_agente = session()->get('agente_id');

        $agente = Asociado::find($id_agente);


        if ($agente->captura == 0) {

            $this->SendBienvenidaAgente($agente);
        }

        if (isset($request->cordinador)) {
            $num_cordinador = $request->get('cordinador');
            $cordinador = Asociado::where('numTarjeta', '=', $num_cordinador)->get();


            if (!count($cordinador->toArray()) > 0) {
                Flash::error('El numero de cordinador es invalido, contacta a soporte para cualquier duda.');

                return redirect()->action('AgentesController@Registro');
            } else {
                $agente->cordinador_id = $num_cordinador;
            }
        }

        $agente->NombAsoc = $request->nombre;
        $agente->ApeAsoc = $request->apellido;
        $agente->nacimiento = $request->nacimiento;
        $agente->calle = $request->calle;
        $agente->colonia = $request->colonia;
        $agente->id_pais = $request->pais;
        $agente->id_estado = $request->estado;
        $agente->municipio = $request->municipio;
        $agente->TelFijo = $request->tel_fijo;
        $agente->TelCel = $request->tel_cel;
        $agente->cp = $request->cp_agente;
        $agente->num = $request->num;
        $agente->ban_rfc = $request->rfc;
        $agente->ban_curp = $request->curp;
        $agente->ban_cuenta = $request->ban_cuenta;
        $agente->ban_titular = $request->ban_titular;
        $agente->ban_banco = $request->ban_banco;
        $agente->ban_tipo = $request->ban_tipo;
        $agente->ban_clabe = $request->ban_clabe;
        $agente->captura = True;

        $agente->save();
        $request->session()->flush();
        Flash::success('Se ha guardado su perfil de agente con Exito.');


        return redirect()->action('AgentesController@index');
    }

    public function SaveAgente(Array $data) {

        return Asociado::create([
                    'NombAsoc' => $data['nombre'],
                    'ApeAsoc' => $data['apellido'],
                    'id_pais' => $data['pais'],
                    'email' => $data['email'],
                    'pass' => $data['password'],
                    'rol' => $data['tipo']]);
    }

    public function CreateIdAgente(Asociado $asociado) {

        $num1 = rand(000000, 999999);
        $num2 = rand(00, 99);
        $tipo = $asociado->rol;
        $id = $asociado->id;
        $id_lenght = strlen($id);
        $pad_length = 6;
        $numTarjeta = $tipo . str_pad($id, $pad_length, 0, STR_PAD_LEFT);
        $asociado->numTarjeta = $numTarjeta;
        $saved = $asociado->save();


        return $numTarjeta;
    }

    public function getEstados(Request $request) {
        $data['estados'] = [];
        $id = $request->pais;

        if (isset($id)) {
            $estados = Estado::where('IdPais', '=', $id)->get();
            $data['estados'] = $estados->toArray();
        }

        return response()->json($data);
    }

    public function SendBienvenidaAgente(Asociado $agente) {

        $data = [];
        $data['IdAgente'] = $agente->numTarjeta;
        $data['UserAgente'] = $agente->email;
        $data['password'] = $agente->pass;
        $data['UrlAgente'] = $this->CreateUrlAgente($agente);
        try {
            Mail::send('emails.bienvenida-agentes', $data, function ($message) use ($data) {
                $message->from('no-reply@outour.mx', 'Outour.mx');
                $message->subject('Bienvenida de Agentes');
                $message->bcc('adavila@outour.mx');
                $message->to($data['UserAgente']);
            });
        } catch (Exception $e) {
            echo $e;
        }
    }

    public function CreateUrlAgente(Asociado $agente = null) {
        if ($agente->rol == 1) {
            return 'No Aplica';
        } else {
            $url_base = url('/');
            $id = $agente->id;
            return $url_base . '/a?id=' . $id;
        }
    }

    public function ProcessAgenteUrl(Request $request) {


        if (isset($request->id)) {
            $id = $request->id;
            $agente = Asociado::find($id);

            if ($agente !== null) {

                $request->session()->put('id_agente_url', $id);
            }
        }

        return redirect('/membresias');
    }

    public function login(Request $request) {
        $data = [];

        return view('agentes.login', $data);
    }

    public function entrarAgente(Request $request) {
        $email = $request->email;
        $password = $request->password;

        if ($email == '' || $password == '') {
            Flash::error('Los datos no coinciden con nuestros registros');
            return redirect()->action('AgentesController@login');
        } else {
            $agente = Asociado::where('email', $email)->get();


            if (sizeof($agente) == 0) {
                Flash::error('Los datos no coinciden con nuestros registros');
                return redirect()->action('AgentesController@login');
            } elseif ($agente[0]->pass == $password) {
                $request->session()->put('agente_id', $agente[0]->id);
                return redirect()->action('AgentesController@Registro');
            } else {
                Flash::error('Los datos no coinciden con nuestros registros');
                return redirect()->action('AgentesController@login');
            }
        }
    }

}
