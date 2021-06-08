<?php

namespace App\Models\Admin\Traits\Relationship;

use App\Models\Admin\Pegawai;
use App\Models\Perkuliahan\Kelas;

trait DosenRelationship
{
    public function pegawai()
    {
        return $this->belongsTo(Pegawai::class, 'id_pegawai');
    }

    public function kelas()
    {
        return $this->hasMany(Kelas::class, 'id_dosen');
    }
}
