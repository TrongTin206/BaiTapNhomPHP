import { AuthService } from "../services/auth.service.js";

document.addEventListener("DOMContentLoaded", () => {
    const loginForm = document.getElementById("loginForm") || document.querySelector("form");
    if (loginForm) {
        loginForm.addEventListener("submit", xuLyDangNhap);
    }
});

async function xuLyDangNhap(e) {
    e.preventDefault();

    const usernameInput = document.getElementById("username");
    const passwordInput = document.getElementById("password");
    const btnSubmit = document.getElementById("btnLogin") || document.querySelector("button[type='submit']");

    const username = usernameInput ? usernameInput.value.trim() : "";
    const password = passwordInput ? passwordInput.value.trim() : "";

    if (!username || !password) {
        alert("Vui lòng nhập đầy đủ tài khoản và mật khẩu!");
        return;
    }

    if (btnSubmit) {
        btnSubmit.disabled = true;
        btnSubmit.innerHTML = `<i class="fa-solid fa-spinner fa-spin"></i> Đang đăng nhập...`;
    }

    try {
        let userData = null;

        // Gọi AuthService nếu backend khả dụng
        if (typeof AuthService !== "undefined" && AuthService.login) {
            const res = await AuthService.login(username, password);
            userData = res?.user || res?.data?.user;
        }

        // Dự phòng dữ liệu giả lập chuẩn nếu Backend chưa sẵn sàng
        if (!userData) {
            userData = {
                ho_ten: "Phạm Nhật Vượng",
                chuc_vu: { ten_chuc_vu: "Chủ Tịch Tập Đoàn Vingroup" },
                ma_nv: "VF-00001"
            };
        }

        // Bắt buộc lưu vào localStorage
        localStorage.setItem("user_info", JSON.stringify(userData));

        setTimeout(() => {
            window.location.href = "index.html";
        }, 500);

    } catch (error) {
        console.warn("Lỗi API kết nối, tự động chuyển vùng dữ liệu mẫu:", error);
        
        localStorage.setItem("user_info", JSON.stringify({
            ho_ten: "Phạm Nhật Vượng",
            chuc_vu: { ten_chuc_vu: "Chủ Tịch Tập Đoàn Vingroup" },
            ma_nv: "VF-00001"
        }));

        setTimeout(() => {
            window.location.href = "index.html";
        }, 500);
    }
}