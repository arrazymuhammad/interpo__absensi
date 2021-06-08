<?php

namespace App\Models\Perkuliahan;

use App\Models\Model;
use App\Models\Perkuliahan\Traits\Attributes\PesertaAttributes;
use App\Models\Perkuliahan\Traits\Relationship\PesertaRelationship;

class Peserta extends Model
{
    use PesertaAttributes, PesertaRelationship;

    protected $table = 'perkuliahan__kelas__peserta';
    public $fillable = ['id_kelas', 'id_mahasiswa'];
}
