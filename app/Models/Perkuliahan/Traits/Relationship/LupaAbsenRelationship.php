<?php

namespace App\Models\Perkuliahan\Traits\Relationship;

use App\Models\Admin\Mahasiswa;
use App\Models\Perkuliahan\Kelas;


trait LupaAbsenRelationship
{
    public function mahasiswa()
    {
        return $this->belongsTo(Mahasiswa::class, 'id_mahasiswa');
    }

    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'id_kelas');
    }
}
