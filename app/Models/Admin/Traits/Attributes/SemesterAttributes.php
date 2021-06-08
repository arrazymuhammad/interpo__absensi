<?php

namespace App\Models\Admin\Traits\Attributes;

trait SemesterAttributes
{
    public function getSemesterStringAttribute()
    {
        return ['', 'Gasal', 'Genap'][$this->semester];
    }
    public function getStatusLabelAttribute()
    {
        $list_status = ['Tidak Aktif', 'Aktif'];
        $list_class = ['default', 'success'];
        return "<label class='label label-" . $list_class[$this->is_active] . "'>" . $list_status[$this->is_active] . "</label>";
    }
    public function getSemesterTahunStringAttribute()
    {
        return "Semester " . $this->semester_string . " " . $this->tahun . "/" . ($this->tahun + 1);
    }
}
