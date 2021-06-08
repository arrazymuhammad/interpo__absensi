<?php

namespace App\Models\Admin\Traits\Relationship;

use App\Models\Perkuliahan\Kelas;

trait SemesterRelationship
{
    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'id_semester');
    }
}
