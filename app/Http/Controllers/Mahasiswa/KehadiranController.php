<?php

namespace App\Http\Controllers\Mahasiswa;

use App\Models\Admin\Semester;
use App\Models\Perkuliahan\Kelas;
use App\Models\Perkuliahan\Peserta;
use App\Http\Controllers\Controller;
use App\Models\Perkuliahan\AbsensiMahasiswa;

class KehadiranController extends Controller
{
    public function index()
    {
        $mahasiswa = request()->user();
        $data['id_mahasiswa'] = $mahasiswa->uuid;
        $data['semester'] = $semester = Semester::where('is_active', 1)->first();
        $data['list_peserta'] = Peserta::where('id_mahasiswa', $mahasiswa->uuid)->whereHas('kelas', function ($q) use ($semester) {
            $q->where('id_semester', $semester->uuid);
        })->get()->map(fn ($item) => $item->kelas);
        return view('mahasiswa.kehadiran.index', $data);
    }

    public function show(Kelas $kelas)
    {
        $data['kelas'] = $kelas;
        $data['list_pertemuan'] = $kelas->pertemuan;
        $data['id_mahasiswa'] = request()->user()->uuid;
        return view('mahasiswa.kehadiran.detail', $data);
    }

    public function create(Kelas $kelas)
    {
        $mahasiswa = request()->user();
        $data['mahasiswa'] = $mahasiswa;
        $data['kelas'] = $kelas;
        $data['list_pertemuan'] = [1, 2, 3, 4, 5];
        return view('mahasiswa.kehadiran.create', $data);
    }

    public function store(Kelas $kelas)
    {
        $mahasiswa = request()->user();
        $absensi = new AbsensiMahasiswa;
        $absensi->id_mahasiswa = $mahasiswa->uuid;
        $absensi->id_kelas = $kelas->uuid;
        $absensi->pertemuan_ke = request('pertemuan_ke');
        $absensi->status = 0;
        $absensi->save();

        $absensi->handleUpload();

        return redirect('mahasiswa/kehadiran-perkuliahan/' . $kelas->uuid . '/riwayat')->with('success', 'Data Absensi Berhasil Ditambahkan');
    }
    public function riwayat(Kelas $kelas)
    {
        $mahasiswa = request()->user();
        $data['kelas'] = $kelas;
        $data['list_absensi'] = AbsensiMahasiswa::where('id_kelas', $kelas->uuid)
            ->where('id_mahasiswa', $mahasiswa->uuid)
            ->orderBy('created_at')
            ->orderBy('pertemuan_ke')
            ->get();

        return view('mahasiswa.kehadiran.riwayat', $data);
    }
}
