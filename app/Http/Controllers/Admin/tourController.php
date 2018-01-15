<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Tour;
use App\Destino;
use App\Categoria;
use App\ImagenTour;
use DB;
use Input;
use File;
use Image;

class tourController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct() {
        
        parent::__construct();
        
        $this->middleware('admin', ['except' => 'getLogout']); 
    }
    public function index() {
        $tours = DB::table('tours')
                ->leftjoin('categorias', 'tours.idCateg', '=', 'categorias.id')
                ->leftjoin('destinos', 'tours.IdDest', '=', 'destinos.id')
                ->select('tours.*', 'categorias.NombCateg', 'destinos.NombDest')
                ->get();

        $data['tours'] = $tours;

        return view('Admin.tours.lista_tours', $data);
    }

    public function newTour(Request $request) {

        $data['destinos'] = Destino::all();
        $data['categorias'] = Categoria::all();

        return view('Admin.tours.new_tour', $data);
    }

    public function saveTour(Request $request) {

        $tour = New Tour;


        $files = $request->get('files');
        $values = $request->except('_token', 'files', 'images');
        $tour->fill($values);
        $tour->save();

        $id = $tour->id;
        $images_path = public_path() . '/uploads/files/tours/' . $id . '/';
        $temp_path = public_path() . '/uploads/files/tours/temp/';
//
//        try {
//            $directory = File::makeDirectory($images_path);
//        } catch (Exception $e) {
//            echo 'Excepción capturada: ', $e->getMessage(), "\n";
//        }


        Image::configure(array('driver' => 'gd'));

        foreach ($files as $key => $file) {
            
            if ($file != '') {

                File::copy($temp_path . $file, $images_path . $file);
                $image = Image::make($temp_path . $file);

//             $image->resize(300, 200)->save($images_path.'300x200-'.$file);
//             $image->resize(350, 235)->save($images_path.'350x235-'.$file);
                $image->save($images_path . '-' . $file);

                $imagent = New ImagenTour;
                $imagent->tour_id = $id;
                $imagent->UrlImg = '/uploads/files/tours/' . $id . '/'  . $file;
                $imagent->thumb = '/uploads/files/tours/' . $id . '/'   . $file;
                $imagent->save();
            }
        }

        return redirect()->action('Admin\tourController@index');
    }

    public function uploadImage(Request $request) {

        $files = Input::file('files');


        $json = array(
            'files' => array()
        );

        foreach ($files as $file) {


            $filename = time() . '-' . $file->getClientOriginalName();



            $json['files'][] = array(
                'name' => $file->getClientOriginalName(),
                'id' => $filename,
                'size' => $file->getSize(),
                'type' => $file->getMimeType(),
                'url' => '/uploads/files/tours/temp/' . $filename,
                'deleteType' => 'DELETE',
                'deleteUrl' => url('/admin/tours/image/delete') . '/' . $filename,
            );

            $upload = $file->move(public_path() . '/uploads/files/tours/temp', $filename);
        }

        return response()->json($json);
    }

    public function deleteImage(Request $request) {
        if($request->ajax()){
          
          $id = $request->id;
          
          $imagen = ImagenTour::findOrFail($id);
          
                  $deleted = $imagen->delete();
            
                  if($deleted){
                      $response = ['deleted'=>true];
                  }else{
                      $response = ['deleted'=>false];
                  }
                  
            return response()->json($response);
            
        }
       
    }

    public function editTour(Request $request) {

        $data = [];
        $id = $request->id;

        $data['destinos'] = Destino::all();
        $data['categorias'] = Categoria::all();

        $data['tours'] = Tour::findorfail($id);
        
        $data['images'] = ImagenTour::where('tour_id','=',$id)->get();

        //var_dump($data['images']);

        return view('Admin.tours.edit_tour', $data);
    }

    public function deleteTour(Request $request) {

        $id = $request->id;

        $tours = Tour::findorfail($id);

        $tours->delete();

        return redirect()->action('Admin\tourController@index');
    }
    
    
    public function updateTour(Request $request){
       $id = $request->id;
       
       $tour = Tour::findorfail($id);


        $files = $request->get('files');
        $values = $request->except('_token', 'files', 'images','imagen');
        $tour->fill($values);
        $tour->save(); 
        
        
        $id = $tour->id;
        $images_path = public_path() . '/uploads/files/tours/' . $id . '/';
        $temp_path = public_path() . '/uploads/files/tours/temp/';

//        try {
//            $directory = File::makeDirectory($images_path);
//        } catch (Exception $e) {
//            echo 'Excepción capturada: ', $e->getMessage(), "\n";
//        }


        Image::configure(array('driver' => 'gd'));

        foreach ($files as $key => $file) {
            
            if ($file != '') {

                File::copy($temp_path . $file, $images_path . $file);
                $image = Image::make($temp_path . $file);

//             $image->resize(300, 200)->save($images_path.'300x200-'.$file);
//             $image->resize(350, 235)->save($images_path.'350x235-'.$file);
                $image->save($images_path . '-' . $file);

                $imagent = New ImagenTour;
                $imagent->tour_id = $id;
                $imagent->UrlImg = '/uploads/files/tours/' . $id . '/'  . $file;
                $imagent->thumb = '/uploads/files/tours/' . $id . '/'   . $file;
                $imagent->save();
            }
        }
        
        return redirect()->action('Admin\tourController@index');
        
    }

}
