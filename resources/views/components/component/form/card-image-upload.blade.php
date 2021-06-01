<div class="card">
    @php $url = isset($url) ? $url : 'assets/img/template/default-person.jpg' @endphp
    <img src="{{ url($url) }}" class="img-fluid img-container" style="width: 100%">
    <div class="input-group">
        <span class="input-group-btn">
            <span class="btn btn-default btn-file">
                <i class="fa fa-folder-open"></i> <input type="file" class="img-name" name="{{ $name }}"
                    accept=".jpg, .png, .jpeg">
            </span>
        </span>
        <input type="text" class="form-control" readonly="">
    </div>
</div>

@push('script')
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function(e) {
                    $('.img-container').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        $(".img-name").change(function() {
            readURL(this);
        });

    </script>
@endpush
