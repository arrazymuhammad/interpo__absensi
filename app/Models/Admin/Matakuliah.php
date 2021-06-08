<?php

namespace App\Models\Admin;

use App\Models\Model;
use App\Models\Admin\Traits\Attributes\MatakuliahAttributes;
use App\Models\Admin\Traits\Relationship\MatakuliahRelationship;

class Matakuliah extends Model
{
    use MatakuliahAttributes, MatakuliahRelationship;

    protected $table = 'admin__matakuliah';
    public $fillable = ['kode', 'nama', 'sks'];
}
