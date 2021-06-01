<div class="form-group">
    <label class="control-label">{{ $label }}</label>
    <select name="{{ $name }}" class="form-control {{ $class }}" id="{{ $id }}">
        <option value="">Pilih {{ $label }}</option>
        @foreach ($options as $item)
            <option value="{{ $item['key'] }}" @if ($value == $item['key']) selected @endif>{{ $item['value'] }}</option>
        @endforeach
    </select>
</div>
