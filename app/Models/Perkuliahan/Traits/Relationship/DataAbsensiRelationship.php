<?php

namespace App\Models\Perkuliahan\Traits\Relationship;

use App\Models\Perkuliahan\Kelas;


trait DataAbsensiRelationship
{

    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'id_kelas');
    }
}
