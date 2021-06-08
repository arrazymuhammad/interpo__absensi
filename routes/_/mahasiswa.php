<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Mahasiswa\KehadiranController;
use App\Http\Controllers\Mahasiswa\LupaAbsenController;

Route::get('kehadiran-perkuliahan', [KehadiranController::class, 'index']);
Route::get('kehadiran-perkuliahan/{kelas}', [KehadiranController::class, 'show']);
Route::get('kehadiran-perkuliahan/{kelas}/create', [KehadiranController::class, 'create']);
Route::get('kehadiran-perkuliahan/{kelas}/riwayat', [KehadiranController::class, 'riwayat']);
Route::post('kehadiran-perkuliahan/{kelas}', [KehadiranController::class, 'store']);
Route::get('kehadiran-perkuliahan/{kelas}/lupa-absen', [LupaAbsenController::class, 'index']);
Route::get('kehadiran-perkuliahan/{kelas}/lupa-absen/create', [LupaAbsenController::class, 'create']);
Route::post('kehadiran-perkuliahan/{kelas}/lupa-absen', [LupaAbsenController::class, 'store']);
Route::get('kehadiran-perkuliahan/{kelas}/lupa-absen/{absensi}', [LupaAbsenController::class, 'show']);
