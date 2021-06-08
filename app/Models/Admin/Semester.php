<?php

namespace App\Models\Admin;

use App\Models\Model;
use App\Models\Admin\Traits\Attributes\SemesterAttributes;
use App\Models\Admin\Traits\Relationship\SemesterRelationship;

class Semester extends Model
{
    use SemesterAttributes, SemesterRelationship;

    protected $table = 'admin__semester';
}
