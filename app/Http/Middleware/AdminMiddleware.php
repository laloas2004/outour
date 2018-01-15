<?php

namespace App\Http\Middleware;

use Closure;

use Illuminate\Contracts\Auth\Guard;

class AdminMiddleware
{
  
    protected $auth;
    
    public function _construct(Guard $auth){
        
    }
    
   
    public function handle($request, Closure $next)
    {
        
        $this->auth = auth();
        
       if ($this->auth->guest() || $this->auth->user()->admin == 0) {
           
            if ($request->ajax()) {
                return response('Unauthorized.', 401);
            } else {
                return redirect()->guest('admin/auth/login');
            }
        }
        return $next($request);
    }
}
