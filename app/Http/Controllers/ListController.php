<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Tour;
use App\Destino;
use App\Categoria;
use DB;

class ListController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct() {

        parent::__construct();
    }

    public function index(Request $request) {

        $destino = $request->get('destino');
        $categoria = $request->get('categoria');
        $selecciones = $request->get('seleccion');
        $data['tours'] = [];
        $data['imagen_destino'] = null;
        $data['imagen_categoria']= null;
        $query = Tour::where('ActivoTour', 1);

        if ($destino != NULL and $destino > 0) {

            $query->where('IdDest', $destino);
            $data['imagen_destino'] = Destino::find($destino);
        }

        if ($categoria != NULL and $categoria > 0) {

            $query->where('IdCateg', $categoria);
            $data['imagen_categoria'] = Categoria::find($categoria);
        }

        if ($selecciones !== NULL and $selecciones > 0) {

            $opciones = explode(',', $selecciones);

            foreach ($opciones as $key => $opcion) {
                if ($key == 0) {
                    $query->where('id', (int) $opcion);
                }
                $query->orwhere('id', (int) $opcion);
            }
        }

        $tours = $query->get()->toArray();

//        dd(DB::getQueryLog());

        foreach ($tours as $key => $tour) {

            $images = Tour::find($tour['id'])->images;
            $data['tours'][$key] = $tour;
            $data['tours'][$key]['images'] = $images->toArray();
            $data['tours'][$key]['destino'] = Tour::find($tour['id'])->destino->toArray();
            $data['tours'][$key]['categoria'] = Tour::find($tour['id'])->categoria->toArray();
        }

        if (count($data['tours']) > 0) {

            return view('lista_tours', $data);
        } else {

            $query = Tour::where('ActivoTour', 1);
            $tours = $query->get()->toArray();

            foreach ($tours as $key => $tour) {

                $images = Tour::find($tour['id'])->images;
                $data['tours'][$key] = $tour;
                $data['tours'][$key]['images'] = $images->toArray();
                $data['tours'][$key]['destino'] = Tour::find($tour['id'])->destino->toArray();
                $data['tours'][$key]['categoria'] = Tour::find($tour['id'])->categoria->toArray();
            }

            $data['msglista'] = 'No Encontramos Tours con los Filtros Seleccionados';

            return view('lista_tours', $data);
        }
    }

    public function getToursAjax(Request $request) {

        $data = [];
        $query = $request->get('query');
        $tours = Tour::where('ActivoTour', 1)->whereRaw("MATCH(NombTour) against('{$query}*' IN BOOLEAN MODE)")
                ->join('destinos', 'tours.idDest', '=', 'destinos.id')
                ->join('categorias', 'tours.idCateg', '=', 'categorias.id')
                ->orwhere('categorias.NombCateg', 'LIKE', "%$query%")
                ->orwhere('destinos.NombDest', 'LIKE', "%$query%")
                ->select('tours.*', 'categorias.NombCateg', 'destinos.NombDest');

        $listatours = $tours->get();
        $arrtour = $listatours->toArray();
        $data['tours'] = $arrtour;
//    dd(DB::getQueryLog());

        foreach ($arrtour as $key => $tour) {

            $data['suggestions'][$key] = array('data' => $tour['id'],
                'value' => $tour['NombTour'] . ' | ' . $tour['NombDest']);
        }
//      $data['suggestions'] = $productos;
        return response()->json($data);
    }

}
