<?php

namespace App\Models\Admin;

use App\Models\Model;
use App\Models\Admin\Traits\Attributes\DosenAttributes;
use App\Models\Admin\Traits\Relationship\DosenRelationship;

class Dosen extends Model
{
    use DosenAttributes, DosenRelationship;

    protected $table = 'admin__dosen';
    public $fillable = ['nidn', 'id_pegawai'];
}
