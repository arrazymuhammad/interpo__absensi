<?php

namespace App\Models\Perkuliahan\Traits\Attributes;

trait KelasAttributes
{
    public function handleDelete()
    {
        $this->peserta->each(fn ($item) => $item->delete());
        $this->pertemuan->each(fn ($item) => $item->handleDelete());
        $this->delete();
    }
    public function persentaseKehadiran($id_mahasiswa)
    {
        $jumlah_pertemuan = $this->pertemuan->count();
        if ($jumlah_pertemuan == 0) return "0%";
        $jumlah_kehadiran = $this->pertemuan->filter(function ($item) use ($id_mahasiswa) {
            return $item->absensi->where('id_mahasiswa', $id_mahasiswa)->count() > 0;
        })->count();
        $persentase = ($jumlah_kehadiran / $jumlah_pertemuan) * 100;
        $persentase = (round($persentase) == $persentase) ? $persentase : round($persentase, 2);
        return $persentase . "%";
    }
}
