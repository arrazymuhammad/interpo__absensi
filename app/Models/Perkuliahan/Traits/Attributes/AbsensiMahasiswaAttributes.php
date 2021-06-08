<?php

namespace App\Models\Perkuliahan\Traits\Attributes;

trait AbsensiMahasiswaAttributes
{
    public function handleUpload()
    {
        $tahun = date("Y/m/d");
        $destination = "absensi/$tahun";
        if (request()->hasFile('bukti')) {
            $file = request()->file('bukti');
            $extension = $file->extension();
            $filename = $this->uuid . "." . $extension;
            $url = $file->storeAs($destination, $filename);
            $this->bukti = "app/" . $url;
            $this->save();
        }
    }
    public function getStatusStringAttribute()
    {
        return ['Baru', 'Diterima', 'Ditolak'][$this->status];
    }

    public function getStatusLabelAttribute()
    {
        $class = ['default', 'success', 'danger'][$this->status];
        return "<label class='label label-$class'>$this->status_string</label>";
    }
}
