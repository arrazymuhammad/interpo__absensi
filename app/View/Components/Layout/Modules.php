<?php

namespace App\View\Components\Layout;

use Illuminate\View\Component;

class Modules extends Component
{
    public $moduleList;

    public function __construct()
    {
        $this->moduleList = $this->getModuleList();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.layout.modules');
    }

    public function getModuleList(){
        $list_menu = [];
        $file = file_get_contents(__DIR__ . "/../../../../modules_statuses.json");
        $modules = json_decode($file, true);
        foreach ($modules as $key => $module) {
            $name = strtolower($key);
            $config = config($name . ".menu");
            if ($config) {
                foreach($config as $cfg){
                    $list_menu[] = $cfg;
                }
            }
        }
        return $list_menu;
    }

    public function getMenuUrl($url)
    {
        $url =  (is_array($url)) ? implode("/", $url) : $url;
        return url($url);
    }
}
