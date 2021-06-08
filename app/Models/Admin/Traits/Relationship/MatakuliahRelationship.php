<?php

namespace App\Models\Admin\Traits\Relationship;

use App\Models\Perkuliahan\Kelas;

trait MatakuliahRelationship
{
    public function kelas()
    {
        return $this->hasMany(Kelas::class, 'id_matakuliah');
    }
}
