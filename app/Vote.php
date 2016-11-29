<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vote extends Model
{

    protected $table = 'votes';
    protected $fillable = ['entry_id', 'user_id'];

    public function user() {
        return $this->hasOne('App\User');
    }

    public function entry() {
        return $this->hasOne('App\Entry');
    }
}
