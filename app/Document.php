<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    public function folder(){
    	return $this->hasOne('App\Folder');
    }
}
