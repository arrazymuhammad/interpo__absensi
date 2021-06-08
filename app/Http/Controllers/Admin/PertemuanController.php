<?php

namespace App\Http\Controllers\Admin;

use App\Models\Perkuliahan\Kelas;
use App\Models\Perkuliahan\Absensi;
use App\Http\Controllers\Controller;
use App\Models\Perkuliahan\AbsensiMahasiswa;
use Illuminate\Support\Facades\Http;
use App\Models\Perkuliahan\Pertemuan;

class PertemuanController extends Controller
{
    public function index(Kelas $kelas)
    {
        $data['kelas'] = $kelas;
        $data['list_pertemuan'] = $kelas->pertemuan;
        return view('admin.kelas.pertemuan.index', $data);
    }

    public function create(Kelas $kelas)
    {
        $data['kelas'] = $kelas;
        return view('admin.kelas.pertemuan.create', $data);
    }
    public function store(Kelas $kelas)
    {
        $pertemuan = Pertemuan::create(request()->all());
        return redirect(url('admin/kehadiran-perkuliahan/pertemuan/' . $pertemuan->uuid))->with('success', 'Data Pertemuan Berhasil Ditambahkan');
    }
    public function show(Pertemuan $pertemuan)
    {
        $data['kelas'] = $kelas = $pertemuan->kelas;
        $data['pertemuan'] = $pertemuan;
        $data['list_peserta'] = $kelas->peserta;
        return view('admin.kelas.pertemuan.show', $data);
    }
    public function update(Pertemuan $pertemuan)
    {
        $simasterUrl = env('SIMASTER_URL');
        if (request('mahasiswa')) {
            $this->deleted = [];
            $this->added = [];
            $pertemuan->absensi->each(function ($item) {
                if (!in_array($item->id_mahasiswa, request('mahasiswa'))) {
                    $this->deleted[] = $item->id_mahasiswa;
                    $item->delete();
                }
            });
            foreach (request('mahasiswa') as $id_mahasiswa) {
                $this->added[] = $id_mahasiswa;
                Absensi::firstOrCreate(['id_mahasiswa' => $id_mahasiswa, 'id_pertemuan' => $pertemuan->uuid]);
            }
        }
        Http::post($simasterUrl . "/api/push", [
            'pertemuan' => $pertemuan,
            'added' => $this->added,
            'deleted' => $this->deleted
        ]);

        return back()->with('success', 'Data Absensi Berhasil Diubah');
    }

    public function absensi(Pertemuan $pertemuan)
    {
        $param = [
            'id_kelas' => $pertemuan->id_kelas,
            'pertemuan_ke' => $pertemuan->pertemuan_ke
        ];
        $data['kelas'] = $pertemuan->kelas;
        $data['pertemuan'] = $pertemuan;
        $data['list_absensi'] = AbsensiMahasiswa::where($param)->get();
        return view('admin.kelas.pertemuan.absensi', $data);
    }
}
