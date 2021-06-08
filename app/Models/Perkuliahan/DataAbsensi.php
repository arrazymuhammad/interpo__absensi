<?php

namespace App\Models\Perkuliahan;

use App\Models\Model;
use App\Models\Perkuliahan\Traits\Attributes\DataAbsensiAttributes;
use App\Models\Perkuliahan\Traits\Relationship\DataAbsensiRelationship;

class DataAbsensi extends Model
{
    use DataAbsensiAttributes, DataAbsensiRelationship;
    protected $table = 'perkuliahan__absensi__data';
}
