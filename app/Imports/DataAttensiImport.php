<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithCustomCsvSettings;

class DataAttensiImport implements ToCollection, WithCustomCsvSettings
{
    public function collection(Collection $rows)
    {
    }
    public function getCsvSettings(): array
    {
        return [
            'delimiter' => "\t"
        ];
    }
}
