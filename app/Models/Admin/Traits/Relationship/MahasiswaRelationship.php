<?php

namespace App\Models\Admin\Traits\Relationship;

use App\Models\Perkuliahan\Absensi;
use App\Models\Perkuliahan\Peserta;

trait MahasiswaRelationship
{
    public function peserta()
    {
        return $this->hasMany(Peserta::class, 'id_mahasiswa');
    }
    public function Absensi()
    {
        return $this->hasMany(Absensi::class, 'id_mahasiswa');
    }
}
