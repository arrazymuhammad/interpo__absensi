<?php

namespace App\Http\Controllers\Admin;

use App\Models\Admin\Semester;
use App\Models\Perkuliahan\Kelas;
use App\Models\Perkuliahan\Absensi;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;
use App\Models\Perkuliahan\LupaAbsen;
use App\Models\Perkuliahan\Pertemuan;

class KlaimPresensiController extends Controller
{
    public function index()
    {
        $semester = Semester::where('is_active', 1)->first();
        $list_kelas = Kelas::where('id_semester', $semester->uuid)->get()->pluck('uuid');
        $data['list_klaim'] = LupaAbsen::whereIn('id_kelas', $list_kelas)->where('status', 0)->get();

        return view('admin.kelas.klaim-presensi.index', $data);
    }
    public function verifikasi(LupaAbsen $absensi)
    {
        $id_mahasiswa = $absensi->id_mahasiswa;
        $pertemuan = Pertemuan::where('id_kelas', $absensi->id_kelas)
            ->where('pertemuan_ke', $absensi->pertemuan_ke)
            ->first();
        if ($pertemuan) {
            Absensi::firstOrCreate([
                'id_mahasiswa' => $id_mahasiswa,
                'id_pertemuan' => $pertemuan->uuid
            ]);
        }

        $absensi->status = 1;
        $absensi->save();

        $simasterUrl = env('SIMASTER_URL');
        Http::post($simasterUrl . "/api/push", [
            'pertemuan' => $pertemuan,
            'added' => [$id_mahasiswa],
            'deleted' => []
        ]);

        return redirect('admin/kehadiran-perkuliahan/klaim-presensi')->with('success', 'Klaim Presensi Berhasil Diverifikasi');
    }
}
