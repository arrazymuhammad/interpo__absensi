<?php

namespace App\Models\Admin;

use App\Models\ModelAuthenticable;
use App\Models\Admin\Traits\Attributes\PegawaiAttributes;
use App\Models\Admin\Traits\Relationship\PegawaiRelationship;

class Pegawai extends ModelAuthenticable
{
    use PegawaiAttributes, PegawaiRelationship;

    protected $table = 'admin__pegawai';
    public $fillable = ['nip', 'email', 'nama', 'gelar_depan', 'gelar_belakang'];
    public $preventSet = false;
}
