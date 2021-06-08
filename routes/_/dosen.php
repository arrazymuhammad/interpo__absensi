<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Dosen\KehadiranController;
use App\Http\Controllers\Dosen\UploadKehadiranController;

Route::get('kehadiran-perkuliahan', [KehadiranController::class, 'index']);
Route::get('kehadiran-perkuliahan/{kelas}', [KehadiranController::class, 'show']);
Route::get('kehadiran-perkuliahan/detail-kehadiran/{peserta}', [KehadiranController::class, 'detail']);

Route::get('kehadiran-perkuliahan/{kelas}/upload-kehadiran', [UploadKehadiranController::class, 'index']);
Route::get('kehadiran-perkuliahan/{kelas}/upload-kehadiran/create', [UploadKehadiranController::class, 'create']);
Route::post('kehadiran-perkuliahan/{kelas}/upload-kehadiran', [UploadKehadiranController::class, 'store']);
Route::get('kehadiran-perkuliahan/detail-upload-kehadiran/{kehadiran}', [UploadKehadiranController::class, 'show']);
