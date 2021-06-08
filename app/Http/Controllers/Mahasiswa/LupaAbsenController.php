<?php

namespace App\Http\Controllers\Mahasiswa;

use App\Models\Perkuliahan\Kelas;
use App\Http\Controllers\Controller;
use App\Models\Perkuliahan\LupaAbsen;

class LupaAbsenController extends Controller
{
    public function index(Kelas $kelas)
    {
        $mahasiswa = request()->user();
        $data['kelas'] = $kelas;
        $data['list_absensi'] = LupaAbsen::where('id_kelas', $kelas->uuid)
            ->where('id_mahasiswa', $mahasiswa->uuid)
            ->orderBy('created_at')
            ->orderBy('pertemuan_ke')
            ->get();

        return view('mahasiswa.kehadiran.lupa-absen.index', $data);
    }

    public function create(Kelas $kelas)
    {
        $mahasiswa = request()->user();
        $data['mahasiswa'] = $mahasiswa;
        $data['kelas'] = $kelas;
        $data['list_pertemuan'] = [1, 2, 3, 4, 5];
        return view('mahasiswa.kehadiran.lupa-absen.create', $data);
    }

    public function store(Kelas $kelas)
    {
        $mahasiswa = request()->user();
        $absensi = new LupaAbsen;
        $absensi->id_mahasiswa = $mahasiswa->uuid;
        $absensi->id_kelas = $kelas->uuid;
        $absensi->pertemuan_ke = request('pertemuan_ke');
        $absensi->status = 0;
        $absensi->save();

        $absensi->handleUpload();
        return redirect('mahasiswa/kehadiran-perkuliahan/' . $kelas->uuid . '/lupa-absen')->with('success', 'Data Klaim Presensi Berhasil Ditambahkan');
    }

    public function show(Kelas $kelas, LupaAbsen $absensi)
    {
    }
}
