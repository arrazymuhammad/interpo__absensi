<?php

namespace App\Models\Perkuliahan;

use App\Models\Model;
use App\Models\Perkuliahan\Traits\Attributes\AbsensiAttributes;
use App\Models\Perkuliahan\Traits\Relationship\AbsensiRelationship;

class Absensi extends Model
{
    use AbsensiAttributes, AbsensiRelationship;

    protected $table = 'perkuliahan__kelas__absensi';
    public $fillable = ['id_mahasiswa', 'id_pertemuan'];
}
