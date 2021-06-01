<form action="{{ $action }}" method="post" @if ($enctype) enctype="multipart/form-data" @endif>
    @csrf
    @if ($edit) @method('put') @endif
    {{ $slot }}
</form>
