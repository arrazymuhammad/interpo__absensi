<?php

namespace App\Models\Perkuliahan\Traits\Attributes;

trait PesertaAttributes
{
    public function getPersentaseKehadiranAttribute()
    {
        $kelas = $this->kelas;
        return $kelas->persentaseKehadiran($this->id_mahasiswa);
    }
}
