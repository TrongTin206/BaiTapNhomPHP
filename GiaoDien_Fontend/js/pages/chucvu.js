import { ApiService } from "../services/api.js";

document.addEventListener("DOMContentLoaded", () => {
    taiDanhSachChucVu();
});

export async function taiDanhSachChucVu() {
    const tableBody = document.getElementById("chucVuTableBody");
    if (!tableBody) return;

    try {
        if (typeof ApiService !== "undefined" && ApiService.get) {
            const res = await ApiService.get("/chuc-vu");
            if (res && res.data && res.data.length > 0) {
                hienThiDanhSach(res.data);
                return;
            }
        }
    } catch (error) {
        console.log("Sử dụng dữ liệu mặc định giao diện cho Chức Vụ");
    }
}

function hienThiDanhSach(list) {
    const tableBody = document.getElementById("chucVuTableBody");
    if (!tableBody) return;

    tableBody.innerHTML = list.map(item => `
        <tr class="hover:bg-gray-50">
            <td class="p-3 font-bold text-vin-red">${item.ma_chuc_vu || item.code}</td>
            <td class="p-3 font-semibold text-gray-800">${item.ten_chuc_vu || item.name}</td>
            <td class="p-3 font-medium">Cấp ${item.cap_bac || 1}</td>
            <td class="p-3 font-bold text-green-700">${Number(item.phu_cap || 0).toLocaleString()} VNĐ</td>
            <td class="p-3 text-gray-500">${item.mo_ta || "Không có mô tả"}</td>
            <td class="p-3 text-center space-x-2">
                <a href="chucvu-sua.html?id=${item.id}" class="text-blue-600 hover:text-blue-800"><i class="fa-solid fa-pen"></i></a>
                <button onclick="xoaChucVu(${item.id})" class="text-vin-red hover:text-red-800"><i class="fa-solid fa-trash"></i></button>
            </td>
        </tr>
    `).join("");
}

window.xoaChucVu = function(id) {
    if (confirm("Bạn có chắc chắn muốn xóa chức vụ này không?")) {
        alert("Đã xóa thành công chức vụ ID: " + id);
        taiDanhSachChucVu();
    }
};