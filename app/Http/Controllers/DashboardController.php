<?php

namespace App\Http\Controllers;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $data['user'] = request()->user();
        return view('dashboard', $data);
    }
}
