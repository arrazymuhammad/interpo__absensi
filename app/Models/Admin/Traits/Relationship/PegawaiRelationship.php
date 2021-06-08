<?php

namespace App\Models\Admin\Traits\Relationship;

use App\Models\Admin\Dosen;

trait PegawaiRelationship
{
    public function dosen()
    {
        return $this->hasOne(Dosen::class, 'id_pegawai');
    }
}
