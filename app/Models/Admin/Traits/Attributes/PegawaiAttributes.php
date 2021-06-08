<?php

namespace App\Models\Admin\Traits\Attributes;

trait PegawaiAttributes
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
        $gelar_depan = $this->gelar_depan ? $this->gelar_depan . ", " : "";
        $gelar_belakang = $this->gelar_belakang ? ", " . $this->gelar_belakang : "";
        return $gelar_depan . $this->nama . $gelar_belakang;
    }

    public function getIsDosenAttribute()
    {
        return ($this->dosen);
    }

    public function getHakAksesAttribute()
    {
        $hak_akses = [];
        if ($this->is_admin) $hak_akses[] = 'Admin';
        if ($this->is_dosen) $hak_akses[] = 'Dosen';
        if (count($hak_akses) > 0) return implode(", ", $hak_akses);
        return "-";
    }
}
