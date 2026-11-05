import { AuthService } from "../services/auth.service.js";

document.addEventListener("DOMContentLoaded", () => {
    // 1. Kiểm tra trạng thái phiên đăng nhập
    kiemTraPhienDangNhap();

    // 2. Lắng nghe sự kiện chuyển đổi vai trò
    const roleSelect = document.getElementById("roleSelect");
    if (roleSelect) {
        roleSelect.addEventListener("change", (e) => {
            xuLyDoiVaiTro(e.target.value);
        });
    }

    // 3. Lắng nghe sự kiện Đăng xuất
    const btnLogout = document.getElementById("btnLogout");
    if (btnLogout) {
        btnLogout.addEventListener("click", xuLyDangXuat);
    }
});

/**
 * Kiểm tra dữ liệu đăng nhập từ localStorage để ẩn/hiện Header Profile
 */
export function kiemTraPhienDangNhap() {
    const userBox = document.getElementById("userProfileBox");
    const btnLogin = document.getElementById("btnLogin");
    const btnLogout = document.getElementById("btnLogout");

    const nameEl = document.getElementById("userName");
    const titleEl = document.getElementById("userTitle");
    const avatarEl = document.getElementById("userAvatar");

    const savedUser = localStorage.getItem("user_info");

    if (savedUser) {
        try {
            const user = JSON.parse(savedUser);

            // KHI ĐÃ ĐĂNG NHẬP: Hiện khối User + Nút Đăng xuất, Ẩn nút Đăng nhập
            if (userBox) { userBox.classList.remove("hidden"); userBox.classList.add("flex"); }
            if (btnLogout) { btnLogout.classList.remove("hidden"); btnLogout.classList.add("flex"); }
            if (btnLogin) btnLogin.classList.add("hidden");

            // Đổ tên & Chức vụ
            if (nameEl) nameEl.textContent = user.ho_ten || user.name || "Phạm Nhật Vượng";
            if (titleEl) {
                const chucVu = user.chuc_vu?.ten_chuc_vu || user.ten_chuc_vu || "Chủ Tịch Tập Đoàn Vingroup";
                titleEl.textContent = chucVu;
            }

            // Tạo Avatar chữ viết tắt
            if (avatarEl) {
                const fullName = (user.ho_ten || user.name || "Phạm Nhật Vượng").trim();
                const parts = fullName.split(" ");
                let initials = parts.length >= 2 
                    ? parts[0][0] + parts[parts.length - 1][0] 
                    : fullName.substring(0, 2);
                avatarEl.textContent = initials.toUpperCase();
            }
        } catch (e) {
            console.error("Lỗi parse JSON user_info:", e);
        }
    } else {
        // KHI CHƯA ĐĂNG NHẬP / ĐÃ ĐĂNG XUẤT: Ẩn khối User + Nút Đăng xuất, Hiện nút Đăng nhập
        if (userBox) { userBox.classList.add("hidden"); userBox.classList.remove("flex"); }
        if (btnLogout) { btnLogout.classList.add("hidden"); btnLogout.classList.remove("flex"); }
        if (btnLogin) btnLogin.classList.remove("hidden");
    }
}

/**
 * Thao tác Đăng xuất
 */
export function xuLyDangXuat() {
    localStorage.removeItem("user_info");
    localStorage.removeItem("access_token");
    window.location.reload();
}

/**
 * Đổi vai trò hiển thị Demo
 */
export function xuLyDoiVaiTro(val) {
    const name = document.getElementById("userName");
    const title = document.getElementById("userTitle");
    const avatar = document.getElementById("userAvatar");

    if (!name || !title || !avatar) return;

    if (val === "1") {
        name.textContent = "Phạm Nhật Vượng";
        title.textContent = "Chủ Tịch Tập Đoàn Vingroup";
        avatar.textContent = "PV";
    } else if (val === "2") {
        name.textContent = "Lê Thị Thu Thủy";
        title.textContent = "Giám Đốc HR (VinFast)";
        avatar.textContent = "TT";
    } else {
        name.textContent = "Nguyễn Văn An";
        title.textContent = "Kỹ Sư Trưởng (VF-00102)";
        avatar.textContent = "AN";
    }
}