<x-app page-title="Perkuliahan" extends="datatable">
    <a href="{{ url('mahasiswa/kehadiran-perkuliahan', $kelas->uuid) }}" class="btn btn-warning">
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
                    <x-component.form.input label="NIM" value="{{ $mahasiswa->nim }}" />
                </div>
                <div class="col">
                    <x-component.form.input label="Nama" value="{{ $mahasiswa->nama }}" />
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <x-component.form.select label="Pertemuan Ke" name="pertemuan_ke" :options="range(1,14)" />
                </div>
                <div class="col">
                    <x-component.form.input label="Bukti" name="bukti" type="file" />
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <div class="form-group">
                        <label for="" class="control-label">Pakta Integritas</label>
                        <div class="checkbox check-success p-l-10 m-0">
                            <input type="checkbox" name="pakta" id="pakta">
                            <label for="pakta" class="m-0"> Dengan ini saya menyatakan bahwa saya benar-benar menghadiri
                                perkuliahan. Jika terbukti di kemudian waktu bahwa saya berbohong, saya siap menerima
                                sanksi akademik.</label>
                        </div>

                    </div>
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
