<?php

namespace App\Http\Controllers\Dosen;

use Excel;
use App\Models\Admin\Mahasiswa;
use App\Models\Perkuliahan\Kelas;
use App\Imports\DataAttensiImport;
use App\Http\Controllers\Controller;
use App\Models\Perkuliahan\DataAtensi;
use App\Models\Perkuliahan\DataAbsensi;

class UploadKehadiranController extends Controller
{
    public function index(Kelas $kelas)
    {
        $data['kelas'] = $kelas;
        $data['list_data'] = $kelas->data_absensi;
        return view('dosen.perkuliahan.upload-kehadiran.index', $data);
    }
    public function create(Kelas $kelas)
    {
        $data['kelas'] = $kelas;
        return view('dosen.perkuliahan.upload-kehadiran.create', $data);
    }

    public function store(Kelas $kelas)
    {
        $peserta = $kelas->peserta;
        $items = Excel::toCollection(new DataAttensiImport, request()->file('bukti'))[0];

        $dataAbsensi = new DataAbsensi;
        $dataAbsensi->id_kelas = $kelas->uuid;
        $dataAbsensi->pertemuan_ke = request('pertemuan_ke');
        $dataAbsensi->save();
        foreach ($items as $key => $item) {
            if ($key > 0) {
                $username = str_replace("\x00", "", $item[0]);
                $timestamp = str_replace("\x00", "", $item[2]);
                $date = date("Y-m-d H:i:s", strtotime($timestamp));
                $mahasiswa = Mahasiswa::where('username', $username)->first();
                if ($mahasiswa) {
                    if ($peserta->where('id_mahasiswa', $mahasiswa->uuid)->count() > 0) {
                        $params = [
                            'id_kelas' => $kelas->uuid,
                            'pertemuan_ke' => request('pertemuan_ke'),
                            'id_mahasiswa' => $mahasiswa->uuid
                        ];
                        $dataAbsensi = DataAtensi::firstOrCreate($params);
                        $dataAbsensi->waktu_absen = $date;
                        $dataAbsensi->save();
                    }
                }
            }
        }

        return redirect('dosen/kehadiran-perkuliahan/' . $kelas->uuid . "/upload-kehadiran")->with('success', 'Data Atensi Berhasil Diupload');
    }

    public function show(DataAbsensi $kehadiran)
    {
        $params = [
            'id_kelas' => $kehadiran->id_kelas,
            'pertemuan_ke' => $kehadiran->pertemuan_ke
        ];
        $data['kelas'] = $kehadiran->kelas;
        $data['list_peserta'] = DataAtensi::where($params)->get();

        return view('dosen.perkuliahan.upload-kehadiran.show', $data);
    }
}
