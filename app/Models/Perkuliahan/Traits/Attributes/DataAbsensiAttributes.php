<?php

namespace App\Models\Perkuliahan\Traits\Attributes;

use App\Models\Perkuliahan\DataAtensi;

trait DataAbsensiAttributes
{
    public function getJumlahPesertaAttribute()
    {
        return DataAtensi::where('id_kelas', $this->id_kelas)->where('pertemuan_ke', $this->pertemuan_ke)->count();
    }
}
