<?php

namespace App\Http\Controllers\Dosen;

use App\Models\Admin\Semester;
use App\Models\Perkuliahan\Kelas;
use App\Models\Perkuliahan\Peserta;
use App\Http\Controllers\Controller;

class KehadiranController extends Controller
{
    public function index()
    {
        $dosen = request()->user()->dosen;
        $data['semester'] = $semester = Semester::where('is_active', 1)->first();
        $data['list_kelas'] = Kelas::where('id_dosen', $dosen->uuid)->where('id_semester', $semester->uuid)->get();
        return view('dosen.perkuliahan.index', $data);
    }
    public function show(Kelas $kelas)
    {
        $data['kelas'] = $kelas;
        $data['list_peserta'] = $kelas->peserta;
        return view('dosen.perkuliahan.show', $data);
    }
    public function detail(Peserta $peserta)
    {
        $data['peserta'] = $peserta;
        $data['kelas'] = $kelas = $peserta->kelas;
        $data['list_pertemuan'] = $kelas->pertemuan;
        return view('dosen.perkuliahan.detail-kehadiran', $data);
    }
}
