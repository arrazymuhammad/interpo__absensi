<?php

namespace App\Models\Admin\Traits\Attributes;

use App\Models\Perkuliahan\DataAtensi;

trait MahasiswaAttributes
{
    public function setPasswordAttribute($value)
    {
        if ($this->preventSet) {
            $this->attributes['password'] = $value;
        } else {
            $this->attributes['password'] = bcrypt($value);
        }
    }
    public function getNamaGelarAttribute()
    {
        return $this->nama;
    }
    public function checkAtensi($id_kelas, $pertemuan_ke)
    {
        $atensi = DataAtensi::where('id_kelas', $id_kelas)
            ->where('pertemuan_ke', $pertemuan_ke)
            ->where('id_mahasiswa', $this->uuid)->count();
        $msg = ["Tidak Ada Dalam Daftar Hadir", "Ada Dalam Daftar Hadir"][$atensi];
        $class = ["danger", "success"][$atensi];
        return "<label class='label text-center label-$class'>$msg</label>";
    }
}
