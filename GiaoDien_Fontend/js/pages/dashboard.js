import { ApiService } from "../services/api.js";

document.addEventListener("DOMContentLoaded", () => {
    // 1. Tải và hiển thị số liệu KPI
    taiDuLieuKpi();

    // 2. Khởi tạo biểu đồ thống kê
    khoiTaoBieuDoDashboard();
});

/**
 * Tải số liệu KPI tổng quan
 */
export async function taiDuLieuKpi() {
    try {
        if (typeof ApiService !== "undefined" && ApiService.get) {
            const res = await ApiService.get("/dashboard/kpi");
            if (res && res.data) {
                capNhatKpiOnUI(res.data);
                return;
            }
        }
    } catch (error) {
        console.log("Sử dụng số liệu KPI mặc định cho Dashboard");
    }
}

/**
 * Cập nhật dữ liệu KPI lên giao diện
 */
function capNhatKpiOnUI(data) {
    const totalEmpEl = document.getElementById("statTotalEmployee");
    const newEmpEl = document.getElementById("statNewEmployee");
    const turnoverEl = document.getElementById("statTurnoverRate");

    if (totalEmpEl) totalEmpEl.textContent = (data.total_employees || 48250).toLocaleString();
    if (newEmpEl) newEmpEl.textContent = (data.new_recruits || 1240).toLocaleString();
    if (turnoverEl) turnoverEl.textContent = (data.turnover_rate || "1.8") + "%";
}

/**
 * Khởi tạo và vẽ các biểu đồ trực quan (Chart.js)
 */
export function khoiTaoBieuDoDashboard() {
    // 1. Biểu đồ cột: Phân bổ nhân sự theo công ty con
    const ctxCompany = document.getElementById("companyChart")?.getContext("2d");
    if (ctxCompany) {
        new Chart(ctxCompany, {
            type: "bar",
            data: {
                labels: ["VinFast", "Vinhomes", "VinMec", "VinSchool", "Vinpearl"],
                datasets: [{
                    label: "Số lượng nhân sự",
                    data: [18500, 14200, 6500, 4800, 4250],
                    backgroundColor: "#8B0000",
                    borderRadius: 6
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: { display: false }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        grid: { color: "#f3f4f6" }
                    },
                    x: {
                        grid: { display: false }
                    }
                }
            }
        });
    }

    // 2. Biểu đồ tròn (Doughnut): Tỷ lệ cấp bậc nhân sự
    const ctxRole = document.getElementById("roleChart")?.getContext("2d");
    if (ctxRole) {
        new Chart(ctxRole, {
            type: "doughnut",
            data: {
                labels: ["Quản Lý Cấp Cao", "Trưởng/Phó Phòng", "Nhân Viên / Kỹ Sư"],
                datasets: [{
                    data: [5, 15, 80],
                    backgroundColor: ["#8B0000", "#D97706", "#2563EB"],
                    borderWidth: 2,
                    borderColor: "#ffffff"
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: "bottom",
                        labels: {
                            font: { size: 11 },
                            usePointStyle: true
                        }
                    }
                }
            }
        });
    }
}