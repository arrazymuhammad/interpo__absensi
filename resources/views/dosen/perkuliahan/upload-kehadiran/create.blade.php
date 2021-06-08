<x-app page-title="Perkuliahan" extends="datatable">
    <a href="{{ url('dosen/kehadiran-perkuliahan', $kelas->uuid) }}" class="btn btn-warning">
        <i class="fa fa-arrow-left"></i> Kembali
    </a>
    <x-component.card>
        <x-slot name="title">
            <b>{{ $kelas->matakuliah->kode }}</b> {{ $kelas->matakuliah->nama }} <br>
            Dosen : {{ $kelas->dosen->pegawai->nama_gelar }}
        </x-slot>
        <x-component.form enctype>
            <div class="row">
                <div class="col">
                    <x-component.form.select label="Pertemuan Ke" name="pertemuan_ke" :options="range(1,14)" />
                </div>
                <div class="col">
                    <x-component.form.input label="Daftar Attendants" name="bukti" type="file" accept=".csv" />
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <x-component.button.submit />
                </div>
            </div>
        </x-component.form>
    </x-component.card>
</x-app>
