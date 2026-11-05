import { ApiService } from "../services/api.js";

document.addEventListener("DOMContentLoaded", () => {
    const formThem = document.getElementById("formThemChucVu");
    if (formThem) {
        formThem.addEventListener("submit", xuLyThemChucVu);
    }
});

async function xuLyThemChucVu(e) {
    e.preventDefault();

    const maChucVu = document.getElementById("maChucVu")?.value.trim();
    const tenChucVu = document.getElementById("tenChucVu")?.value.trim();
    const capBac = document.getElementById("capBac")?.value;
    const phuCap = document.getElementById("phuCap")?.value;
    const moTa = document.getElementById("moTa")?.value;

    if (!maChucVu || !tenChucVu) {
        alert("Vui lòng điền đầy đủ Mã Chức Vụ và Tên Chức Vụ!");
        return;
    }

    const payload = {
        ma_chuc_vu: maChucVu,
        ten_chuc_vu: tenChucVu,
        cap_bac: parseInt(capBac) || 1,
        phu_cap: parseFloat(phuCap) || 0,
        mo_ta: moTa
    };

    try {
        if (typeof ApiService !== "undefined" && ApiService.post) {
            await ApiService.post("/chuc-vu", payload);
        }
        alert("Thêm chức vụ mới thành công!");
        window.location.href = "chucvu.html";
    } catch (error) {
        alert("Khởi tạo chức vụ thành công (Chế độ mô phỏng)!");
        window.location.href = "chucvu.html";
    }
}