import { api } from "./api.js";
import { API_CONFIG } from "../config/api.config.js";

const ENDPOINT = API_CONFIG.ENDPOINTS.CHUC_VU || "/api/chuc-vu";

export const ChucVuService = {
    /**
     * Lấy danh sách tất cả các chức vụ
     */
    async getAll() {
        try {
            return await api.get(ENDPOINT);
        } catch (error) {
            console.error("[ChucVuService.getAll] Lỗi tải danh sách chức vụ:", error);
            throw error;
        }
    },

    /**
     * Lấy thông tin chi tiết một chức vụ theo ID
     * @param {number|string} id 
     */
    async getById(id) {
        try {
            return await api.get(`${ENDPOINT}/${id}`);
        } catch (error) {
            console.error(`[ChucVuService.getById] Lỗi tải chức vụ ID ${id}:`, error);
            throw error;
        }
    },

    /**
     * Thêm mới một chức vụ
     * @param {Object} data - { ten_chuc_vu, mo_ta }
     */
    async create(data) {
        try {
            return await api.post(ENDPOINT, data);
        } catch (error) {
            console.error("[ChucVuService.create] Lỗi thêm chức vụ mới:", error);
            throw error;
        }
    },

    /**
     * Cập nhật thông tin chức vụ theo ID
     * @param {number|string} id 
     * @param {Object} data - { ten_chuc_vu, mo_ta }
     */
    async update(id, data) {
        try {
            return await api.put(`${ENDPOINT}/${id}`, data);
        } catch (error) {
            console.error(`[ChucVuService.update] Lỗi cập nhật chức vụ ID ${id}:`, error);
            throw error;
        }
    },

    /**
     * Xóa chức vụ theo ID
     * @param {number|string} id 
     */
    async delete(id) {
        try {
            return await api.delete(`${ENDPOINT}/${id}`);
        } catch (error) {
            console.error(`[ChucVuService.delete] Lỗi xóa chức vụ ID ${id}:`, error);
            throw error;
        }
    }
};