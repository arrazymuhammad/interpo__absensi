<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model as BaseModel;

class Model extends BaseModel
{
    public $primaryKey = 'uuid';
    public $incrementing = false;
    public $keyType = 'string';

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($item) {
            $item->uuid = (string) Str::uuid();
        });
    }
}
