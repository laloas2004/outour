<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class CmsController extends Controller {

    public function __construct() {

        parent::__construct();
    }

    public function facturacion(Request $request) {

        $data = [];

        return view('cms.facturacion', $data);
    }

    public function proveedores(Request $request) {
        $data = [];

        return view('cms.proveedores', $data);
    }

    public function sobreNosotros(Request $request) {

        $data = [];

        return view('cms.sobre-nosotros', $data);
    }

    public function faq(Request $request) {

        return view('cms.faq');
    }

    public function comoFunciona(Request $request) {
        return view('inc.ayuda.como-funciona');
    }

    public function comoPago(Request $request) {
        
        return view('inc.ayuda.como-pago');
    }

}
