<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\ImagenTour;
use App\Destino;
use App\Categoria;

class Tour extends Model
{
    protected $table = 'tours';
    
    protected $guarded = ['id'];


    public function images()
    {
        return $this->hasMany('App\ImagenTour','tour_id','id');
    }
     public function destino()
    {
        return $this->hasOne('App\Destino','id','IdDest' );
    }
    
     public function categoria()
    {
        return $this->hasOne('App\Categoria','id','idCateg' );
    }
}
