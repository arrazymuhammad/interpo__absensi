<?php

namespace App\Models\Perkuliahan\Traits\Attributes;

trait PertemuanAttributes
{
    public function getTanggalPelaksanaanStringAttribute()
    {
        return strftime("%A, %d %B %Y", strtotime($this->tanggal_pelaksanaan));
    }
    public function handleDelete()
    {
        $this->absensi->each(function ($item) {
            $item->delete();
        });
        $this->delete();
    }
    public function check($id_mahasiswa)
    {
        return $this->absensi->where('id_mahasiswa', $id_mahasiswa)->first() ? true : false;
    }
    public function checkStatus($id_mahasiswa)
    {
        if ($this->check($id_mahasiswa)) return "<label class='label label-success'>Hadir</label>";
    }
}
