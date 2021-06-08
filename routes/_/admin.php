<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\SyncController;
use App\Http\Controllers\Admin\KehadiranController;
use App\Http\Controllers\Admin\KlaimPresensiController;
use App\Http\Controllers\Admin\PertemuanController;

Route::prefix('kehadiran-perkuliahan')->group(function () {

    Route::get('klaim-presensi', [KlaimPresensiController::class, 'index']);
    Route::get('klaim-presensi/{absensi}/verifikasi', [KlaimPresensiController::class, 'verifikasi']);
    Route::get('detail-kehadiran/{peserta}', [KehadiranController::class, 'detail']);
    Route::get('/', [KehadiranController::class, 'index']);
    Route::get('{kelas}', [KehadiranController::class, 'show']);
    Route::get('{kelas}/pertemuan', [PertemuanController::class, 'index']);
    Route::post('{kelas}/pertemuan', [PertemuanController::class, 'store']);
    Route::get('{kelas}/pertemuan/create', [PertemuanController::class, 'create']);
    Route::get('pertemuan/{pertemuan}', [PertemuanController::class, 'show']);
    Route::put('pertemuan/{pertemuan}', [PertemuanController::class, 'update']);
    Route::get('pertemuan/{pertemuan}/absensi', [PertemuanController::class, 'absensi']);
    Route::get('verifikasi-kehadiran/{pertemuan}/{absensi}', [KehadiranController::class, 'verifikasi']);
});

Route::get('sync/update/{type}', [SyncController::class, 'updateTable']);
Route::get('sync/update-kelas/{kelas}', [SyncController::class, 'updateKelas']);
Route::resource('sync', SyncController::class);
