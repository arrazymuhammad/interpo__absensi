<?php

namespace App\Models\Perkuliahan\Traits\Relationship;

use App\Models\Admin\Dosen;
use App\Models\Admin\Semester;
use App\Models\Admin\Matakuliah;
use App\Models\Perkuliahan\DataAbsensi;
use App\Models\Perkuliahan\Peserta;
use App\Models\Perkuliahan\Pertemuan;

trait KelasRelationship
{
    public function matakuliah()
    {
        return $this->belongsTo(Matakuliah::class, 'id_matakuliah');
    }
    public function dosen()
    {
        return $this->belongsTo(Dosen::class, 'id_dosen');
    }
    public function semester()
    {
        return $this->belongsTo(Semester::class, 'id_semester');
    }
    public function peserta()
    {
        return $this->hasMany(Peserta::class, 'id_kelas');
    }
    public function pertemuan()
    {
        return $this->hasMany(Pertemuan::class, 'id_kelas');
    }
    public function data_absensi()
    {
        return $this->hasMany(DataAbsensi::class, 'id_kelas');
    }
}
