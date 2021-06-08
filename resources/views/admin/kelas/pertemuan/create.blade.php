<x-app page-title="Perkuliahan" extends="datatable">
    <x-component.card title="Tambah Pertemuan Kelas {{ $kelas->nama }}">
        <x-component.form enctype>
            <input type="hidden" name="id_kelas" value="{{ $kelas->uuid }}">
            <div class="row">
                <div class="col">
                    <x-component.form.input name="pertemuan_ke" label="Pertemuan Ke" />
                </div>
                <div class="col">
                    <x-component.form.input name="tanggal_pelaksanaan" label="Tanggal Pelaksanaan" type="date" />
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <x-component.button.submit padtop />
                </div>
            </div>
        </x-component.form>
    </x-component.card>
</x-app>
