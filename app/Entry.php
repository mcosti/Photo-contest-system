<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;
use Storage;

class Entry extends Model
{
    use CrudTrait;
    protected $table = 'entries';
    protected $fillable = ['author_name', 'url', 'added_by'];
    public $timestamps = true;
    public function votes() {
        return $this->hasMany('App\Vote');
    }

    public function setImageAttribute($value)
    {
        $attribute_name = "image";
        $disk = "public";
        $destination_path = "uploads";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path);
    }



}
