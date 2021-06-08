<?php

namespace App\Models\Admin;

use App\Models\ModelAuthenticable;
use App\Models\Admin\Traits\Attributes\MahasiswaAttributes;
use App\Models\Admin\Traits\Relationship\MahasiswaRelationship;

class Mahasiswa extends ModelAuthenticable
{
    use MahasiswaAttributes, MahasiswaRelationship;

    protected $table = 'admin__mahasiswa';
    public $fillable = ['nim', 'email', 'nama'];
    public $preventSet = false;
}
