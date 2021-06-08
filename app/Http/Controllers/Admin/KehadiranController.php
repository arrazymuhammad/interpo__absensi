<?php

namespace App\Http\Controllers\Admin;

use App\Models\Admin\Semester;
use App\Models\Perkuliahan\Kelas;
use App\Models\Perkuliahan\Absensi;
use App\Models\Perkuliahan\Peserta;
use App\Http\Controllers\Controller;
use App\Models\Perkuliahan\Pertemuan;
use App\Models\Perkuliahan\AbsensiMahasiswa;

class KehadiranController extends Controller
{
    public function index()
    {
        $semester = Semester::where('is_active', 1)->first();
        $data['list_kelas'] = Kelas::withCount('peserta', 'pertemuan')->with('matakuliah', 'dosen', 'dosen.pegawai')->where('id_semester', $semester->uuid)->get();
        return view('admin.kelas.index', $data);
    }
    public function show(Kelas $kelas)
    {
        $data['kelas'] = $kelas;
        $data['list_peserta'] = $kelas->peserta;
        return view('admin.kelas.show', $data);
    }
    public function verifikasi(Pertemuan $pertemuan, AbsensiMahasiswa $absensi)
    {
        $id_mahasiswa = $absensi->id_mahasiswa;
        Absensi::firstOrCreate(['id_mahasiswa' => $id_mahasiswa, 'id_pertemuan' => $pertemuan->uuid]);
        $absensi->status = 1;
        $absensi->save();

        return back()->with('success', "Absensi Berhasil Diverifikasi");
    }
    public function detail(Peserta $peserta)
    {
        $data['peserta'] = $peserta;
        $data['kelas'] = $kelas = $peserta->kelas;
        $data['list_pertemuan'] = $pertemuan = $kelas->pertemuan;
        return view('admin.kelas.detail-kehadiran', $data);
    }
}
