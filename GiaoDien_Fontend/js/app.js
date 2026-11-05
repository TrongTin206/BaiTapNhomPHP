document.addEventListener("DOMContentLoaded", capNhatGiaoDienHeader);

function capNhatGiaoDienHeader() {
    const userBox = document.getElementById('userProfileBox');
    const btnLogin = document.getElementById('btnLogin');
    const btnLogout = document.getElementById('btnLogout');

    const name = document.getElementById('userName');
    const title = document.getElementById('userTitle');
    const avatar = document.getElementById('userAvatar');

    // Lấy thông tin user từ localStorage
    const savedUser = localStorage.getItem('user_info');

    if (savedUser) {
        // --- 1. KHI ĐÃ ĐĂNG NHẬP ---
        const user = JSON.parse(savedUser);

        // Hiển thị khối user, ẩn nút Đăng nhập, hiện nút Đăng xuất (Dùng class Tailwind CSS)
        if (userBox) {
            userBox.classList.remove('hidden');
            userBox.classList.add('flex');
        }
        if (btnLogin) {
            btnLogin.classList.add('hidden');
        }
        if (btnLogout) {
            btnLogout.classList.remove('hidden');
            btnLogout.classList.add('flex');
        }

        // Điền dữ liệu thực tế vào Header
        if (name) name.innerText = user.ho_ten || user.name || "Phạm Nhật Vượng";
        if (title) {
            const chucVu = user.chuc_vu?.ten_chuc_vu || user.ten_chuc_vu || "Chủ Tịch Tập Đoàn Vingroup";
            const maNV = user.ma_nv || "";
            title.innerText = maNV ? `${chucVu} (${maNV})` : chucVu;
        }

        // Tạo chữ viết tắt cho Avatar (Ví dụ: Phạm Nhật Vượng -> PV)
        if (avatar) {
            const fullName = (user.ho_ten || user.name || "").trim();
            if (fullName) {
                const parts = fullName.split(" ");
                let initials = parts.length >= 2 
                    ? parts[0][0] + parts[parts.length - 1][0] 
                    : fullName.substring(0, 2);
                avatar.innerText = initials.toUpperCase();
            }
        }
    } else {
        // --- 2. KHI CHƯA ĐĂNG NHẬP ---
        // Ẩn khối thông tin user và nút Đăng xuất, hiện lại nút Đăng nhập
        if (userBox) {
            userBox.classList.add('hidden');
            userBox.classList.remove('flex');
        }
        if (btnLogout) {
            btnLogout.classList.add('hidden');
            btnLogout.classList.remove('flex');
        }
        if (btnLogin) {
            btnLogin.classList.remove('hidden');
        }
    }

    // Xử lý sự kiện bấm nút Đăng Xuất
    if (btnLogout) {
        btnLogout.onclick = function () {
            localStorage.removeItem('user_info');
            localStorage.removeItem('access_token');
            window.location.reload(); // Tải lại trang
        };
    }
}