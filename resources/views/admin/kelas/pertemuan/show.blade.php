<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Detail Pertemuan Kelas {{ $kelas->nama }}">
        <x-slot name="actions">
            <a href="{{ url('admin/kehadiran-perkuliahan', $kelas->uuid) }}/pertemuan" class="btn btn-info">
                <i class="fa fa-arrow-left"></i> Kembali Ke Daftar Pertemuan
            </a>
            <a href="{{ url('admin/kehadiran-perkuliahan/pertemuan', $pertemuan->uuid) }}/absensi"
                class="btn btn-info">
                <i class="fa fa-list"></i> Daftar Absensi Mahasiswa
            </a>
        </x-slot>
        <dl>
            <dt>Nama Kelas</dt>
            <dd>{{ $kelas->nama }}</dd>
            <dt>Nama Matakuliah</dt>
            <dd>{{ $kelas->matakuliah->nama }}</dd>
            <dt>Tanggal Pelaksanaan (Pertemuan Ke-)</dt>
            <dd>{{ $pertemuan->tanggal_pelaksanaan }} (Pertemuan Ke-{{ $pertemuan->pertemuan_ke }})</dd>
        </dl>
    </x-component.card>
    <x-component.form action="{{ url()->current() }}" edit>
        <x-component.card title="Status Kehadiran">
            <x-slot name="actions">
                <button class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
            </x-slot>
            <x-component.table header="No|Aksi|NIM|Nama" noAction>
                @foreach ($list_peserta->sortBy('mahasiswa.nim') as $peserta)
                    <tr>
                        <td width="50px">{{ $loop->iteration }}</td>
                        <td width="50px">
                            <div class="checkbox check-success p-l-10 m-0">
                                <input type="checkbox" name="mahasiswa[]" value="{{ $peserta->mahasiswa->uuid }}"
                                    id="checkbox-{{ $peserta->mahasiswa->uuid }}" @if ($pertemuan->check($peserta->mahasiswa->uuid)) checked @endif>
                                <label for="checkbox-{{ $peserta->mahasiswa->uuid }}" class="m-0"></label>
                            </div>
                        </td>
                        <td>{{ $peserta->mahasiswa->nim }}</td>
                        <td>{{ $peserta->mahasiswa->nama }}</td>
                    </tr>
                @endforeach
            </x-component.table>
        </x-component.card>
    </x-component.form>

</x-app>
