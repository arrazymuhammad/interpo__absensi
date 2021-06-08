<?php

namespace App\Models\Admin;

use App\Models\Model;
use App\Models\Admin\Traits\Attributes\SyncAttributes;
use App\Models\Admin\Traits\Relationship\SyncRelationship;

class Sync extends Model
{
    use SyncAttributes, SyncRelationship;

    protected $table = 'admin__sync';

    public $fillable = ['table'];
    public $dates = ['last_update'];
}
