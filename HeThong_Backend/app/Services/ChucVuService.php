<?php

namespace App\Services;

use App\Models\ChucVu;
use App\Models\NhanVien;
use Illuminate\Support\Arr;
use Illuminate\Support\Collection;

class ChucVuService
{
    public function danhSach(?int $trangThai = null): Collection
    {
        return ChucVu::query()
            ->when($trangThai !== null, fn ($q) => $q->where('Trang_Thai', $trangThai))
            ->orderBy('ID_ChucVu')
            ->get();
    }

    public function tao(array $duLieu): ChucVu
    {
        return ChucVu::create([
            'Ma_ChucVu'  => $duLieu['Ma_ChucVu'],
            'Ten_ChucVu' => $duLieu['Ten_ChucVu'],
            'Mo_Ta'      => $duLieu['Mo_Ta'] ?? null,
            'Trang_Thai' => 1,
        ]);
    }

    public function capNhat(ChucVu $chucVu, array $duLieu): ChucVu
    {
        $chucVu->update(Arr::only($duLieu, ['Ma_ChucVu', 'Ten_ChucVu', 'Mo_Ta']));

        return $chucVu->refresh();
    }

    // Không xóa thật: chỉ đánh dấu ngừng dùng, và chỉ khi không còn ai đang giữ chức vụ này
    public function ngungDung(ChucVu $chucVu): void
    {
        $conNguoi = NhanVien::query()
            ->where('ID_ChucVu', $chucVu->ID_ChucVu)
            ->where('Trang_Thai', 1)
            ->exists();

        if ($conNguoi) {
            throw new \DomainException('Còn nhân viên đang giữ chức vụ này, không thể ngừng dùng.');
        }

        $chucVu->update(['Trang_Thai' => 0]);
    }
}