<?php

namespace App\View\Components\Component;

use Illuminate\View\Component;

class Table extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $header;
    public $datatable = false;
    public $withAction = true;
    public function __construct($header = null, $datatable = false, $noAction = null)
    {
        $this->header = $this->getHeader($header);
        if ($datatable) $this->datatable = true;
        if ($noAction) $this->withAction = false;
    }

    public function render()
    {
        return view('components.component.table');
    }

    function getHeader($header)
    {
        if (!$header) return [];
        return explode("|", $header);
    }
}
