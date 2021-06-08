<?php

namespace App\Models\Perkuliahan\Traits\Attributes;

trait LupaAbsenAttributes
{
    public function handleUpload()
    {
        $tahun = date("Y/m/d");
        $destination = "lupa-absen/$tahun";
        if (request()->hasFile('bukti')) {
            $file = request()->file('bukti');
            $extension = $file->extension();
            $filename = $this->uuid . "-bukti." . $extension;
            $url = $file->storeAs($destination, $filename);
            $this->bukti = "app/" . $url;
        }
        if (request()->hasFile('pengantar')) {
            $file = request()->file('pengantar');
            $extension = $file->extension();
            $filename = $this->uuid . "-pengantar." . $extension;
            $url = $file->storeAs($destination, $filename);
            $this->surat_pengantar = "app/" . $url;
        }
        $this->save();
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
