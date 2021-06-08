<?php

namespace App\Http\Controllers\Admin\Traits;

use App\Models\Admin\Sync;
use App\Models\Admin\Dosen;
use App\Models\Admin\Pegawai;
use App\Models\Admin\Semester;
use App\Models\Admin\Mahasiswa;
use App\Models\Admin\Matakuliah;

trait SyncTrait
{
    public function parseMahasiswa($items)
    {
        foreach ($items as $item) {
            $item = (object) $item;
            $mahasiswa = Mahasiswa::where('username', $item->username)->first();
            if (!$mahasiswa) {
                $mahasiswa = new Mahasiswa;
                $mahasiswa->username = $item->username;
                $mahasiswa->email = $item->email;
                $mahasiswa->nim = $item->nim;
                $mahasiswa->nama = $item->nama;
            }
            $mahasiswa->preventSet = true;
            $mahasiswa->password = $item->password;
            $mahasiswa->save();

            $mahasiswa->uuid = $item->uuid;
            $mahasiswa->created_at = $item->created_at;
            $mahasiswa->updated_at = $item->updated_at;
            $mahasiswa->save();
        }
        $sync = Sync::where('table_name', 'admin__mahasiswa')->first();
        $sync->last_update = date("Y-m-d H:i:s");
        $sync->save();
    }
    public function parsePegawai($items)
    {
        foreach ($items as $item) {
            $item = (object) $item;
            $pegawai = Pegawai::where('username', $item->username)->first();
            if (!$pegawai) {
                $pegawai = new Pegawai;
                $pegawai->username = $item->username;
                $pegawai->email = $item->email;
                $pegawai->nip = $item->nip;
            }
            $pegawai->preventSet = true;
            $pegawai->nama = $item->nama;
            $pegawai->gelar_depan = $item->gelar_depan;
            $pegawai->gelar_belakang = $item->gelar_belakang;
            $pegawai->password = $item->password;
            $pegawai->save();

            $pegawai->uuid = $item->uuid;
            $pegawai->created_at = $item->created_at;
            $pegawai->updated_at = $item->updated_at;
            $pegawai->save();
        }
        $sync = Sync::where('table_name', 'admin__pegawai')->first();
        $sync->last_update = date("Y-m-d H:i:s");
        $sync->save();
    }

    public function parseDosen($items)
    {
        foreach ($items as $item) {
            $item = (object) $item;
            $dosen = Dosen::find($item->uuid);
            if (!$dosen) {
                $dosen = new Dosen;
                $dosen->id_pegawai = $item->id_pegawai;
            }
            $dosen->nidn = $item->nidn;
            $dosen->save();

            $dosen->uuid = $item->uuid;
            $dosen->save();
        }
        $sync = Sync::where('table_name', 'admin__dosen')->first();
        $sync->last_update = date("Y-m-d H:i:s");
        $sync->save();
    }
    public function parseMatakuliah($items)
    {
        foreach ($items as $item) {
            $item = (object) $item;
            $matakuliah = Matakuliah::find($item->uuid);
            if (!$matakuliah) {
                $matakuliah = new Matakuliah;
            }
            $matakuliah->kode = $item->kode;
            $matakuliah->nama = $item->nama;
            $matakuliah->sks = $item->sks;
            $matakuliah->save();

            $matakuliah->uuid = $item->uuid;
            $matakuliah->save();
        }
        $sync = Sync::where('table_name', 'admin__matakuliah')->first();
        $sync->last_update = date("Y-m-d H:i:s");
        $sync->save();
    }
    public function parseSemester($items)
    {
        foreach ($items as $item) {
            $item = (object) $item;
            $semester = Semester::find($item->uuid);
            if (!$semester) $semester = new Semester;
            $semester->tahun = $item->tahun;
            $semester->semester = $item->semester;
            $semester->is_active = $item->is_active;
            $semester->save();
            $semester->uuid = $item->uuid;
            $semester->save();
        }
        $sync = Sync::where('table_name', 'admin__semester')->first();
        $sync->last_update = date("Y-m-d H:i:s");
        $sync->save();
    }
}
