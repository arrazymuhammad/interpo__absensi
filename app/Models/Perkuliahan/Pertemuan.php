<?php

namespace App\Models\Perkuliahan;

use App\Models\Model;
use App\Models\Perkuliahan\Traits\Attributes\PertemuanAttributes;
use App\Models\Perkuliahan\Traits\Relationship\PertemuanRelationship;

class Pertemuan extends Model
{
    use PertemuanAttributes, PertemuanRelationship;

    protected $table = 'perkuliahan__kelas__pertemuan';
    public $fillable = ['id_kelas', 'tanggal_pelaksanaan', 'pertemuan_ke'];
}
