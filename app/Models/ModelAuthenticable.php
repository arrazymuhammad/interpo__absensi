<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Foundation\Auth\User as Authenticatable;

class ModelAuthenticable extends Authenticatable
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
