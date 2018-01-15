       <h5>Usuario</h5>
          
       <div>
           
           Bienvenido, {{auth()->user()->name}}
       </div>
       
       <ul>
           <li><a href="{{url('membresia/perfil')}}">Mi Cuenta</a></li>
           <!--<li><a href="#">Mis Pedidos</a></li>-->
           <li><a href="{{url('auth/logout')}}">Salir</a></li>
       </ul>
       
       <!--<a href="{{url('auth/logout')}}" class="btn btn-primary">Salir</a>-->