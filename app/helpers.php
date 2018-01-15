<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

use App\Moneda;

function precio($cantidad){
    
    return '$'.  number_format($cantidad *(float) session()->get('TipoCambio'),2).session()->get('CodigoMon');
    
}

function cambiarMoneda($cantidad){
    
    return number_format($cantidad *(float) session()->get('TipoCambio'),2);
    
}

function cambiaraPesos($cantidad){
  
    $mon = Moneda::where('CodigoMon','MXN')->get();
    $pesos = $cantidad*(float)$mon[0]->TipoCambio;
  
    return ['cantidad'=>$pesos,'codigo'=>$mon[0]->CodigoMon];
}
