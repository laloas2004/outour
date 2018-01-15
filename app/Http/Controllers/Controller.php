<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use App\Moneda;

abstract class Controller extends BaseController {

    use AuthorizesRequests,
        DispatchesJobs,
        ValidatesRequests;

    public function __construct() {

        $this->SetMoneda(Moneda::all()->toArray());
    }

    private function SetMoneda($monedas) {

        if (session()->has('CodigoMon')) {
                if(isset($_GET["moneda"])){
                    
                    $money = Moneda::where('CodigoMon',$_GET["moneda"])->get()->toArray();
                    
//                    var_dump($money);
                    
                  Session::put('CodigoMon',$money[0]['CodigoMon'] );
                  Session::put('TipoCambio',$money[0]['TipoCambio'] );  
                }
        } else {

            foreach ($monedas as $key => $moneda) {

                if ($moneda['default'] == true) {
                    Session::put('CodigoMon', $moneda['CodigoMon']);
                    Session::put('TipoCambio', $moneda['TipoCambio']);
                    return true;
                }
            }
        }
    }

}
