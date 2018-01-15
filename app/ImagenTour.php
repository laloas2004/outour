<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImagenTour extends Model
{
   protected $table = 'imagen_tour';
   
    public function tours()
    {
        return $this->belongsTo('App\Tour');
    }
}
