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
        $header = explode("|", $header);
        foreach ($header as $key => $h) {
            preg_match_all('/{(.*?)}/s', $h, $matches);
            if (count($matches[1]) > 0) {
                $searchtag = $matches[0][0];
                $param = $matches[1][0];
                $header[$key] = ['param' => $param, 'text' => str_replace($searchtag, "", $h)];
            }
        }
        return $header;
    }
}
