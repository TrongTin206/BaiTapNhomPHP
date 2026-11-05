import { api } from "./api.js";
import { API_CONFIG } from "../config/api.config.js";

export const AuthService = {
    /**
     * Đăng nhập hệ thống (Laravel Sanctum Auth)
     * @param {string} username 
     * @param {string} password 
     */
    async login(username, password) {
        try {
            const endpoint = API_CONFIG.ENDPOINTS.LOGIN || "/api/login";
            const response = await api.post(endpoint, { username, password });

            // Lưu thông tin người dùng nếu trả về thành công
            if (response) {
                const user = response.user || response.data || response;
                localStorage.setItem("user_info", JSON.stringify(user));
                window.location.href = "index.html";
            }
            return response;
        } catch (error) {
            console.error("[AuthService.login] Lỗi đăng nhập:", error);
            throw error;
        }
    },

    /**
     * Đăng xuất hệ thống
     */
    async logout() {
        try {
            const endpoint = API_CONFIG.ENDPOINTS.LOGOUT || "/api/logout";
            await api.post(endpoint);
        } catch (error) {
            console.warn("[AuthService.logout] Lỗi từ Server khi đăng xuất, vẫn tiến hành xóa Session cục bộ:", error);
        } finally {
            localStorage.removeItem("user_info");
            localStorage.removeItem("access_token");
            window.location.href = "login.html";
        }
    },

    /**
     * Lấy thông tin tài khoản đang đăng nhập từ Server
     */
    async me() {
        try {
            const endpoint = API_CONFIG.ENDPOINTS.ME || "/api/me";
            return await api.get(endpoint);
        } catch (error) {
            console.error("[AuthService.me] Lỗi lấy thông tin người dùng:", error);
            throw error;
        }
    },

    /**
     * Lấy thông tin tài khoản hiện tại từ LocalStorage
     */
    getCurrentUser() {
        const user = localStorage.getItem("user_info");
        return user ? JSON.parse(user) : null;
    }
};