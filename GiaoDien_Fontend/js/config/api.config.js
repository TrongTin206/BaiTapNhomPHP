/**
 * Cấu hình đường dẫn kết nối Backend API Laravel (VinHR Enterprise)
 */
export const API_CONFIG = {
    BASE_URL: "http://127.0.0.1:8000",
    TIMEOUT: 10000,
    ENDPOINTS: {
        CSRF: "/sanctum/csrf-cookie",
        LOGIN: "/api/login",
        ME: "/api/me",
        LOGOUT: "/api/logout",
        
        // Bổ sung thêm các endpoint chức năng của dự án Vingroup HRMS
        CHUC_VU: "/api/chuc-vu",
        CONG_TY: "/api/tap-doan/cong-ty",
        YEU_CAU: "/api/yeu-cau",
        DASHBOARD: "/api/dashboard"
    },

    /**
     * Hàm hỗ trợ lấy URL đầy đủ (VD: API_CONFIG.getUrl(API_CONFIG.ENDPOINTS.LOGIN))
     */
    getUrl(endpoint) {
        return `${this.BASE_URL}${endpoint}`;
    }
};

export default API_CONFIG;