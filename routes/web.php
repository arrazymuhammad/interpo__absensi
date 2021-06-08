<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::redirect('/', 'login')->middleware('auth');
Route::get('/login', [AuthController::class, 'login'])->name('login');
Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
Route::post('/login', [AuthController::class, 'loginProcess']);

Route::middleware('auth')->group(function () {
    Route::prefix('admin')->group(function () {
        Route::get('dashboard', [DashboardController::class, 'dashboard']);
        include "_/admin.php";
    });
    Route::prefix('dosen')->group(function () {
        Route::get('dashboard', [DashboardController::class, 'dashboard']);
        include "_/dosen.php";
    });
});
Route::prefix('mahasiswa')->middleware('auth:mahasiswa')->group(function () {
    Route::get('dashboard', [DashboardController::class, 'dashboard']);
    include "_/mahasiswa.php";
});
