<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    public function registration(){
    	return $this->hasOne('App\Registration');
    }
}
