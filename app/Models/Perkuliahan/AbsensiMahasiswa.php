<?php

namespace App\Models\Perkuliahan;

use App\Models\Model;
use App\Models\Perkuliahan\Traits\Attributes\AbsensiMahasiswaAttributes;
use App\Models\Perkuliahan\Traits\Relationship\AbsensiMahasiswaRelationship;

class AbsensiMahasiswa extends Model
{
    use AbsensiMahasiswaRelationship, AbsensiMahasiswaAttributes;
    protected $table = 'perkuliahan__absensi__mahasiswa';
}
