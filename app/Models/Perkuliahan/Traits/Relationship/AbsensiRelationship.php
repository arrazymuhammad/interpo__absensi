<?php

namespace App\Models\Perkuliahan\Traits\Relationship;

use App\Models\Admin\Mahasiswa;
use App\Models\Perkuliahan\Pertemuan;

trait AbsensiRelationship
{
    public function pertemuan()
    {
        return $this->belongsTo(Pertemuan::class, 'id_pertemuan');
    }

    public function mahasiswa()
    {
        return $this->belongsTo(Mahasiswa::class, 'id_mahasiswa');
    }
}
