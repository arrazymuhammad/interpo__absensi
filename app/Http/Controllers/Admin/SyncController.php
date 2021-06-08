<?php

namespace App\Http\Controllers\Admin;

use App\Models\Admin\Sync;
use App\Models\Perkuliahan\Kelas;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;
use App\Models\Perkuliahan\Pertemuan;
use App\Http\Controllers\Admin\Traits\SyncTrait;
use App\Http\Controllers\Admin\Traits\SyncPerkuliahanTrait;
use App\Models\Perkuliahan\Absensi;

class SyncController extends Controller
{
    use SyncTrait, SyncPerkuliahanTrait;
    public function index()
    {
        $data['list_data'] = Sync::all();
        return view('admin.sync.index', $data);
    }
    public function create()
    {
        return view('admin.sync.create');
    }
    public function store()
    {
        $sync = Sync::firstOrCreate(['table_name' => request('table_name')]);
        $sync->nama = request('nama');
        $sync->table_name = request('table_name');
        $sync->save();

        return redirect('admin/sync')->with('success', 'Data Sinkron Berhasil Disimpan');
    }
    public function destroy(Sync $sync)
    {
        $sync->delete();

        return redirect('admin/sync')->with('success', 'Data Sinkron Berhasil Dihapus');
    }

    public function updateTable($type)
    {
        $simasterUrl = env('SIMASTER_URL');
        $absensiUrl = env('ABSENSI_URL');

        $table = request('table');
        if ($type == 'all') {
            $sync = Sync::orderBy('created_at')->get()->pluck('table_name')->toArray();
            $table = implode(",", $sync);
        } else {
            $sync = Sync::find($type);
            if (!$sync) return redirect('admin/sync')->with('danger', 'Data Sinkron Tidak Ditemukan');
            $table = $sync->table_name;
        }

        $result = Http::get($simasterUrl . "/api/sync?table=" . $table);
        if ($result->status() == 200) {
            $result = $result->json();

            foreach ($result as $table) {
                $items = $table['items'];
                $table_name = $table['table_name'];

                if ($table_name == 'admin__mahasiswa') $this->parseMahasiswa($items);
                if ($table_name == 'admin__pegawai') $this->parsePegawai($items);
                if ($table_name == 'admin__dosen') $this->parseDosen($items);
                if ($table_name == 'admin__matakuliah') $this->parseMatakuliah($items);
                if ($table_name == 'admin__semester') $this->parseSemester($items);
                if ($table_name == 'perkuliahan__kelas__matakuliah') $this->parseKelasPerkuliahan($items);
                if ($table_name == 'perkuliahan__kelas__peserta') $this->parsePesertaKelas($items);
            }
        }

        return redirect('admin/sync')->with('success', 'Sinkronisasi Berhasil Dilakukan');
    }

    public function updateKelas(Kelas $kelas)
    {
        $simasterUrl = env('SIMASTER_URL');
        $absensiUrl = env('ABSENSI_URL');

        $result = Http::get($simasterUrl . "/api/sync?kelas=" . $kelas->uuid);
        if ($result->status() == 200) {
            $result = $result->json();
            foreach ($result as $r) {
                $params = [
                    'id_kelas' => $kelas->uuid,
                    'tanggal_pelaksanaan' => $r['tanggal_pelaksanaan'],
                    'pertemuan_ke' => $r['pertemuan_ke']
                ];
                $pertemuan = Pertemuan::firstOrCreate($params);

                $absensi = $r['absensi'];
                foreach ($absensi as $absen) {
                    $params = [
                        'id_pertemuan' => $pertemuan->uuid,
                        'id_mahasiswa' => $absen
                    ];
                    Absensi::firstOrCreate($params);
                }
            }
        }


        return back()->with('success', 'Sinkronisasi Berhasil Dilakukan');
    }
}
