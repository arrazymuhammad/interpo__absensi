<?php

namespace App\Models\Perkuliahan;

use App\Models\Model;
use App\Models\Perkuliahan\Traits\Attributes\DataAtensiAttributes;
use App\Models\Perkuliahan\Traits\Relationship\DataAtensiRelationship;

class DataAtensi extends Model
{
    use DataAtensiRelationship, DataAtensiAttributes;
    protected $table = 'perkuliahan__absensi__atensi';
    public $fillable = ['id_kelas', 'pertemuan_ke', 'id_mahasiswa'];
}
