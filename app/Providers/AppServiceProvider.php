<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Destino;
use App\Categoria;
use App\Moneda;

class AppServiceProvider extends ServiceProvider {

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot() {
        $data['monedas'] = Moneda::all()->toArray();

        $data['destinos'] = Destino::all()->toArray();

        $data['categorias'] = Categoria::all()->toArray();

        view()->share($data);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register() {
        //
    }



}
