<?php

namespace App\Http\Controllers\Admin\Traits;

use App\Models\Admin\Sync;
use App\Models\Perkuliahan\Kelas;
use App\Models\Perkuliahan\Peserta;

trait SyncPerkuliahanTrait
{
    public function parseKelasPerkuliahan($items)
    {
        foreach ($items as $item) {
            $item = (object) $item;
            $kelas = Kelas::find($item->uuid);
            if (!$kelas) $kelas = new Kelas;
            $kelas->id_matakuliah = $item->id_matakuliah;
            $kelas->id_dosen = $item->id_dosen;
            $kelas->id_semester = $item->id_semester;
            $kelas->nama = $item->nama;
            $kelas->save();
            $kelas->uuid = $item->uuid;
            $kelas->save();
        }
        $sync = Sync::where('table_name', 'perkuliahan__kelas__matakuliah')->first();
        $sync->last_update = date("Y-m-d H:i:s");
        $sync->save();
    }
    public function parsePesertaKelas($items)
    {
        foreach ($items as $item) {
            $item = (object) $item;
            $peserta = Peserta::find($item->uuid);
            if (!$peserta) $peserta = new Peserta;
            $peserta->id_kelas = $item->id_kelas;
            $peserta->id_mahasiswa = $item->id_mahasiswa;
            $peserta->save();
            $peserta->uuid = $item->uuid;
            $peserta->save();
        }
        $sync = Sync::where('table_name', 'perkuliahan__kelas__peserta')->first();
        $sync->last_update = date("Y-m-d H:i:s");
        $sync->save();
    }
}
