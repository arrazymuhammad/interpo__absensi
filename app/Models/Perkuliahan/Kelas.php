<?php

namespace App\Models\Perkuliahan;

use App\Models\Model;
use App\Models\Perkuliahan\Traits\Attributes\KelasAttributes;
use App\Models\Perkuliahan\Traits\Relationship\KelasRelationship;

class Kelas extends Model
{
    use KelasAttributes, KelasRelationship;

    protected $table = 'perkuliahan__kelas__matakuliah';
    public $fillable = ['id_dosen', 'id_matakuliah', 'id_semester', 'nama'];
}
