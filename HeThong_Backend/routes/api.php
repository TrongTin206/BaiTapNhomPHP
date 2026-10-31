<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ChucVuController;
use Illuminate\Support\Facades\Route;

Route::post('/dang-nhap', [AuthController::class, 'dangNhap'])
    ->middleware('throttle:60,1');   // nhớ đổi về 5,1 khi chạy thật

Route::middleware('auth:sanctum')->group(function () {

    Route::get('/toi', [AuthController::class, 'toi']);
    Route::post('/dang-xuat', [AuthController::class, 'dangXuat']);

    // ----- Chức vụ -----
    Route::get('/chuc-vu', [ChucVuController::class, 'index'])->middleware('quyen:chucvu.xem');
    Route::get('/chuc-vu/{chuc_vu}', [ChucVuController::class, 'show'])->middleware('quyen:chucvu.xem');
    Route::post('/chuc-vu', [ChucVuController::class, 'store'])->middleware('quyen:chucvu.them');
    Route::put('/chuc-vu/{chuc_vu}', [ChucVuController::class, 'update'])->middleware('quyen:chucvu.sua');
    Route::delete('/chuc-vu/{chuc_vu}', [ChucVuController::class, 'destroy'])->middleware('quyen:chucvu.ngung');
});