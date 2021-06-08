<?php

namespace App\Models\Perkuliahan;

use App\Models\Model;
use App\Models\Perkuliahan\Traits\Attributes\LupaAbsenAttributes;
use App\Models\Perkuliahan\Traits\Relationship\LupaAbsenRelationship;

class LupaAbsen extends Model
{
    use LupaAbsenRelationship, LupaAbsenAttributes;
    protected $table = 'perkuliahan__absensi__lupa';
}
