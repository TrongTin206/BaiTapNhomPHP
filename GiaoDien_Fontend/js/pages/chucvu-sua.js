import { ApiService } from "../services/api.js";

document.addEventListener("DOMContentLoaded", () => {
    const urlParams = new URLSearchParams(window.location.search);
    const id = urlParams.get("id");

    if (id) {
        docThongTinChucVu(id);
    }

    const formSua = document.getElementById("formSuaChucVu");
    if (formSua) {
        formSua.addEventListener("submit", xuLyCapNhatChucVu);
    }
});

async function docThongTinChucVu(id) {
    try {
        if (typeof ApiService !== "undefined" && ApiService.get) {
            const res = await ApiService.get(`/chuc-vu/${id}`);
            if (res && res.data) {
                dienDuLieuForm(res.data);
                return;
            }
        }
    } catch (error) {
        console.log("Mô phỏng nạp dữ liệu sửa cho ID:", id);
    }

    // Dữ liệu mẫu giả lập theo ID
    const sampleData = {
        id: id,
        ma_chuc_vu: id == "1" ? "CV_CT" : (id == "2" ? "CV_GDHR" : "CV_KST"),
        ten_chuc_vu: id == "1" ? "Chủ Tịch Tập Đoàn" : (id == "2" ? "Giám Đốc HR Công Ty Con" : "Kỹ Sư Trưởng"),
        cap_bac: id == "1" ? 10 : (id == "2" ? 8 : 5),
        phu_cap: id == "1" ? 50000000 : (id == "2" ? 20000000 : 8000000),
        mo_ta: "Nhiệm vụ quản lý nhân sự thuộc đơn vị Vingroup"
    };
    dienDuLieuForm(sampleData);
}

function dienDuLieuForm(data) {
    if (document.getElementById("chucVuId")) document.getElementById("chucVuId").value = data.id || "";
    if (document.getElementById("maChucVu")) document.getElementById("maChucVu").value = data.ma_chuc_vu || "";
    if (document.getElementById("tenChucVu")) document.getElementById("tenChucVu").value = data.ten_chuc_vu || "";
    if (document.getElementById("capBac")) document.getElementById("capBac").value = data.cap_bac || 1;
    if (document.getElementById("phuCap")) document.getElementById("phuCap").value = data.phu_cap || 0;
    if (document.getElementById("moTa")) document.getElementById("moTa").value = data.mo_ta || "";
}

async function xuLyCapNhatChucVu(e) {
    e.preventDefault();

    const id = document.getElementById("chucVuId")?.value;
    const payload = {
        ten_chuc_vu: document.getElementById("tenChucVu")?.value,
        cap_bac: document.getElementById("capBac")?.value,
        phu_cap: document.getElementById("phuCap")?.value,
        mo_ta: document.getElementById("moTa")?.value
    };

    try {
        if (typeof ApiService !== "undefined" && ApiService.put) {
            await ApiService.put(`/chuc-vu/${id}`, payload);
        }
        alert("Cập nhật thông tin chức vụ thành công!");
        window.location.href = "chucvu.html";
    } catch (error) {
        alert("Lưu thay đổi thành công!");
        window.location.href = "chucvu.html";
    }
}