<?php

namespace App\Models\Perkuliahan\Traits\Relationship;

use App\Models\Perkuliahan\Absensi;
use App\Models\Perkuliahan\Kelas;

trait PertemuanRelationship
{
    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'id_kelas');
    }

    public function absensi()
    {
        return $this->hasMany(Absensi::class, 'id_pertemuan');
    }
}
