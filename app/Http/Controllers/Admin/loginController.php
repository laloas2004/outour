<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use Validator;
use Auth;


class loginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $redirectTo = '/admin/tours';
    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

   

    
    public function index()
    {
       
      return view('Admin.login.login');  
    }

   public function postRegister(Request $request)
           
           
    {
       
       dump($request->all());
        $validator = $this->validator($request->all());
        
       
        if ($validator->fails()) {
            $this->throwValidationException(
                $request, $validator
            );
        }
           
        Auth::login($this->create($request->all()));

        return redirect($this->redirectPath());
    }
     
    
    
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|confirmed|min:6',
        ]);
    }
}
