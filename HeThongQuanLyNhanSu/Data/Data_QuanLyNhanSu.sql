-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:8889
-- Thời gian đã tạo: Th10 04, 2026 lúc 02:27 PM
-- Phiên bản máy phục vụ: 8.0.44
-- Phiên bản PHP: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `QuanLyNhanSu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `BacLuong`
--

CREATE TABLE `BacLuong` (
  `ID_BacLuong` int NOT NULL,
  `Ma_BacLuong` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten_BacLuong` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Luong_CoBan` decimal(15,0) NOT NULL,
  `Mo_Ta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Trang_Thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `BangLuong`
--

CREATE TABLE `BangLuong` (
  `ID_BangLuong` int NOT NULL,
  `ID_NhanVien` int NOT NULL,
  `ID_HopDong` int NOT NULL,
  `Thang` tinyint NOT NULL,
  `Nam` smallint NOT NULL,
  `Luong_CoBan` decimal(15,0) NOT NULL,
  `So_Ngay_Cong` decimal(4,1) NOT NULL DEFAULT '0.0',
  `Luong_DongBH` decimal(15,0) NOT NULL DEFAULT '0',
  `Giam_Tru_GiaCanh` decimal(15,0) NOT NULL DEFAULT '0',
  `Thu_Nhap_TinhThue` decimal(15,0) NOT NULL DEFAULT '0',
  `Luong_Thuc_Nhan` decimal(15,0) NOT NULL DEFAULT '0',
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ID_NguoiLap` int NOT NULL,
  `Ngay_Lap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Trang_Thai` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `BanQuanLy`
--

CREATE TABLE `BanQuanLy` (
  `ID_BanQuanLy` int NOT NULL,
  `ID_NhanVien` int NOT NULL,
  `ID_NguoiQuanLy` int NOT NULL,
  `Loai_QuanLy` tinyint NOT NULL DEFAULT '1',
  `Ngay_BatDau` date NOT NULL,
  `Ngay_KetThuc` date DEFAULT NULL,
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ;

--
-- Đang đổ dữ liệu cho bảng `BanQuanLy`
--

INSERT INTO `BanQuanLy` (`ID_BanQuanLy`, `ID_NhanVien`, `ID_NguoiQuanLy`, `Loai_QuanLy`, `Ngay_BatDau`, `Ngay_KetThuc`, `Ghi_Chu`) VALUES
(1, 1, 6, 1, '2021-01-15', NULL, NULL),
(2, 2, 6, 1, '2020-01-15', NULL, NULL),
(3, 3, 6, 1, '2024-01-15', NULL, NULL),
(4, 4, 6, 1, '2023-01-15', NULL, NULL),
(5, 5, 6, 1, '2022-01-15', NULL, NULL),
(6, 6, 26, 1, '2021-01-15', NULL, NULL),
(7, 7, 12, 1, '2020-01-15', NULL, NULL),
(8, 8, 12, 1, '2024-01-15', NULL, NULL),
(9, 9, 12, 1, '2023-01-15', NULL, NULL),
(10, 10, 12, 1, '2022-01-15', NULL, NULL),
(11, 11, 12, 1, '2021-01-15', NULL, NULL),
(12, 12, 26, 1, '2020-01-15', NULL, NULL),
(13, 13, 18, 1, '2024-01-15', NULL, NULL),
(14, 14, 18, 1, '2023-01-15', NULL, NULL),
(15, 15, 18, 1, '2022-01-15', NULL, NULL),
(16, 16, 18, 1, '2021-01-15', NULL, NULL),
(17, 17, 18, 1, '2020-01-15', NULL, NULL),
(18, 18, 26, 1, '2024-01-15', NULL, NULL),
(19, 19, 26, 1, '2023-01-15', NULL, NULL),
(20, 20, 26, 1, '2022-01-15', NULL, NULL),
(21, 21, 26, 1, '2021-01-15', NULL, NULL),
(22, 22, 26, 1, '2020-01-15', NULL, NULL),
(23, 23, 26, 1, '2024-01-15', NULL, NULL),
(24, 24, 26, 1, '2023-01-15', NULL, NULL),
(25, 25, 26, 1, '2022-01-15', NULL, NULL),
(26, 27, 1, 1, '2021-01-15', NULL, NULL),
(27, 28, 6, 1, '2020-01-15', NULL, NULL),
(28, 29, 6, 1, '2024-01-15', NULL, NULL),
(29, 30, 4, 1, '2023-01-15', NULL, NULL),
(30, 31, 5, 1, '2022-01-15', NULL, NULL),
(31, 32, 6, 1, '2021-01-15', NULL, NULL),
(32, 33, 12, 1, '2020-01-15', NULL, NULL),
(33, 34, 12, 1, '2024-01-15', NULL, NULL),
(34, 35, 12, 1, '2023-01-15', NULL, NULL),
(35, 36, 10, 1, '2022-01-15', NULL, NULL),
(36, 37, 11, 1, '2021-01-15', NULL, NULL),
(37, 38, 12, 1, '2020-01-15', NULL, NULL),
(38, 39, 18, 1, '2024-01-15', NULL, NULL),
(39, 40, 18, 1, '2023-01-15', NULL, NULL),
(40, 41, 18, 1, '2022-01-15', NULL, NULL),
(41, 42, 16, 1, '2021-01-15', NULL, NULL),
(42, 43, 17, 1, '2020-01-15', NULL, NULL),
(43, 44, 18, 1, '2024-01-15', NULL, NULL),
(44, 45, 19, 1, '2023-01-15', NULL, NULL),
(45, 46, 26, 1, '2022-01-15', NULL, NULL),
(46, 47, 26, 1, '2021-01-15', NULL, NULL),
(47, 48, 26, 1, '2020-01-15', NULL, NULL),
(48, 49, 26, 1, '2024-01-15', NULL, NULL),
(49, 50, 24, 1, '2023-01-15', NULL, NULL),
(50, 51, 25, 1, '2022-01-15', NULL, NULL),
(51, 52, 26, 1, '2021-01-15', NULL, NULL),
(52, 67, 26, 1, '2013-04-01', NULL, NULL),
(53, 68, 18, 1, '2015-05-01', NULL, NULL),
(54, 69, 12, 1, '2016-06-01', NULL, NULL),
(55, 70, 6, 1, '2017-07-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `BieuThue`
--

CREATE TABLE `BieuThue` (
  `ID_BieuThue` int NOT NULL,
  `Bac` tinyint NOT NULL,
  `Tu_Muc` decimal(15,0) NOT NULL,
  `Den_Muc` decimal(15,0) DEFAULT NULL,
  `Thue_Suat` decimal(5,2) NOT NULL,
  `Ngay_ApDung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CapNhatTienDo`
--

CREATE TABLE `CapNhatTienDo` (
  `ID_CapNhat` int NOT NULL,
  `ID_CongViec` int NOT NULL,
  `ID_NguoiCapNhat` int NOT NULL,
  `Tien_Do` tinyint NOT NULL,
  `Noi_Dung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ngay_CapNhat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ChamCong`
--

CREATE TABLE `ChamCong` (
  `ID_ChamCong` int NOT NULL,
  `ID_NhanVien` int NOT NULL,
  `ID_NguoiChamCong` int NOT NULL,
  `Ngay_Lam` date NOT NULL,
  `Gio_Vao` time DEFAULT NULL,
  `Gio_Ra` time DEFAULT NULL,
  `Loai_Ngay` tinyint NOT NULL DEFAULT '1',
  `So_Gio_HanhChinh` decimal(4,1) NOT NULL DEFAULT '0.0',
  `So_Gio_LamThem` decimal(4,1) NOT NULL DEFAULT '0.0',
  `So_Gio_Dem` decimal(4,1) NOT NULL DEFAULT '0.0',
  `Trang_Thai` tinyint NOT NULL DEFAULT '1',
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ChiTietChotCong`
--

CREATE TABLE `ChiTietChotCong` (
  `ID_ChiTietChotCong` int NOT NULL,
  `ID_ChotCong` int NOT NULL,
  `ID_ChamCong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ChotCong`
--

CREATE TABLE `ChotCong` (
  `ID_ChotCong` int NOT NULL,
  `ID_NhanVien` int NOT NULL,
  `ID_PhongBan` int NOT NULL,
  `Tu_Ngay` date NOT NULL,
  `Den_Ngay` date NOT NULL,
  `So_Ngay_Cong` decimal(4,1) NOT NULL DEFAULT '0.0',
  `So_Ngay_Nghi_Phep` decimal(4,1) NOT NULL DEFAULT '0.0',
  `So_Ngay_Vang` decimal(4,1) NOT NULL DEFAULT '0.0',
  `So_Lan_Di_Muon` smallint UNSIGNED NOT NULL DEFAULT '0',
  `Tong_Gio_LamThem` decimal(5,1) NOT NULL DEFAULT '0.0',
  `Tong_Gio_Dem` decimal(5,1) NOT NULL DEFAULT '0.0',
  `ID_NguoiChot` int NOT NULL,
  `Ngay_Chot` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Lan_PhienBan` int NOT NULL DEFAULT '1',
  `Trang_Thai` tinyint NOT NULL DEFAULT '1',
  `ID_DotDuyetCong` int DEFAULT NULL,
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ChucVu`
--

CREATE TABLE `ChucVu` (
  `ID_ChucVu` int NOT NULL,
  `Ma_ChucVu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten_ChucVu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mo_Ta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ID_CongTy` int DEFAULT NULL,
  `Trang_Thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ChucVu`
--

INSERT INTO `ChucVu` (`ID_ChucVu`, `Ma_ChucVu`, `Ten_ChucVu`, `Mo_Ta`, `ID_CongTy`, `Trang_Thai`) VALUES
(1, 'CTHDQT-VG', 'Chủ tịch Hội đồng quản trị Vingroup', 'Lãnh đạo Hội đồng quản trị và định hướng chiến lược tập đoàn a', 1, 1),
(2, 'PCTHDQT-VG', 'Phó Chủ tịch Hội đồng quản trị Vingroup', 'Hỗ trợ Chủ tịch Hội đồng quản trị', 1, 1),
(3, 'TVHDQT-VG', 'Thành viên Hội đồng quản trị Vingroup', 'Tham gia quản trị và quyết định các vấn đề thuộc thẩm quyền Hội đồng quản trị', 1, 1),
(4, 'TGD-VG', 'Tổng Giám đốc Vingroup', 'Điều hành hoạt động của tập đoàn', 1, 1),
(5, 'PTGD-VG', 'Phó Tổng Giám đốc Vingroup', 'Hỗ trợ Tổng Giám đốc điều hành hoạt động tập đoàn', 1, 1),
(6, 'GD-VP', 'Giám đốc Vinpearl', 'Điều hành hoạt động công ty Vinpearl', 3, 1),
(7, 'PGD-VP', 'Phó Giám đốc Vinpearl', 'Hỗ trợ Giám đốc điều hành Vinpearl', 3, 1),
(8, 'GD-VF', 'Giám đốc VinFast', 'Điều hành hoạt động công ty VinFast', 4, 1),
(9, 'PGD-VF', 'Phó Giám đốc VinFast', 'Hỗ trợ Giám đốc điều hành VinFast', 4, 1),
(10, 'GD-VC', 'Giám đốc Vincom', 'Điều hành hoạt động công ty Vincom', 5, 1),
(11, 'PGD-VC', 'Phó Giám đốc Vincom', 'Hỗ trợ Giám đốc điều hành Vincom', 5, 1),
(12, 'TP', 'Trưởng phòng', 'Quản lý và điều hành hoạt động phòng ban', NULL, 1),
(13, 'PP', 'Phó Trưởng phòng', 'Hỗ trợ Trưởng phòng quản lý phòng ban', NULL, 1),
(14, 'TT', 'Tổ trưởng', 'Quản lý và phân công công việc trong tổ', NULL, 1),
(15, 'TPHO', 'Tổ phó', 'Hỗ trợ Tổ trưởng quản lý công việc', NULL, 1),
(16, 'TK', 'Thư ký', 'Thực hiện công tác thư ký và hỗ trợ hành chính', NULL, 1),
(17, 'CV', 'Chuyên viên', 'Thực hiện các nhiệm vụ chuyên môn', NULL, 1),
(18, 'NV', 'Nhân viên', 'Thực hiện công việc được phân công', NULL, 1),
(21, 'CTHDQT-VGTHU', 'Thử', 'sdv', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CongTy`
--

CREATE TABLE `CongTy` (
  `ID_CongTy` int NOT NULL,
  `Ma_CongTy` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten_CongTy` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Loai_CongTy` tinyint NOT NULL DEFAULT '1',
  `ID_CongTyCha` int DEFAULT NULL,
  `Dia_Diem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT_CongTy` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_CongTy` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ngay_ThanhLap` date DEFAULT NULL,
  `Trang_Thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `CongTy`
--

INSERT INTO `CongTy` (`ID_CongTy`, `Ma_CongTy`, `Ten_CongTy`, `Loai_CongTy`, `ID_CongTyCha`, `Dia_Diem`, `SDT_CongTy`, `Email_CongTy`, `Ngay_ThanhLap`, `Trang_Thai`) VALUES
(1, 'VINGROUP', 'Tập đoàn Vingroup', 0, NULL, 'Hà Nội', '0900000001', 'vingroup@example.com', '1993-08-08', 1),
(3, 'VINPEARL', 'Công ty Vinpearl', 1, 1, 'Nha Trang', '0900000002', 'vinpearl@example.com', '2003-07-25', 1),
(4, 'VINFAST', 'Công ty VinFast', 1, 1, 'Hải Phòng', '0900000003', 'vinfast@example.com', '2017-06-01', 1),
(5, 'VINCOM', 'Công ty Vincom', 1, 1, 'Hà Nội', '0900000004', 'vincom@example.com', '2002-05-01', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CongViec`
--

CREATE TABLE `CongViec` (
  `ID_CongViec` int NOT NULL,
  `Ma_CongViec` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tieu_De` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mo_Ta` text COLLATE utf8mb4_unicode_ci,
  `ID_CongViecCha` int DEFAULT NULL,
  `ID_NguoiGiao` int NOT NULL,
  `ID_NguoiNhan` int NOT NULL,
  `Do_UuTien` tinyint NOT NULL DEFAULT '2',
  `Ngay_Giao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Han_HoanThanh` datetime NOT NULL,
  `Tien_Do` tinyint NOT NULL DEFAULT '0',
  `So_LanNop` tinyint NOT NULL DEFAULT '0',
  `Trang_Thai` tinyint NOT NULL DEFAULT '0',
  `Ngay_HoanThanh` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DangKyTangCa`
--

CREATE TABLE `DangKyTangCa` (
  `ID_DangKy` int NOT NULL,
  `Ma_DangKy` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_NhanVien` int NOT NULL,
  `Tu_Luc` datetime NOT NULL,
  `Den_Luc` datetime NOT NULL,
  `Ly_Do` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_NguoiGiamSat` int DEFAULT NULL,
  `Ngay_Gui` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Trang_Thai` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DonNghiPhep`
--

CREATE TABLE `DonNghiPhep` (
  `ID_DonNghiPhep` int NOT NULL,
  `Ma_DonNghiPhep` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_NhanVien` int NOT NULL,
  `Loai_NghiPhep` tinyint NOT NULL,
  `Ngay_BatDau` datetime NOT NULL,
  `Ngay_KetThuc` datetime NOT NULL,
  `Ly_Do` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Khan_Cap` tinyint NOT NULL DEFAULT '0',
  `Ngay_Gui` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Trang_Thai` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DotDuyetCong`
--

CREATE TABLE `DotDuyetCong` (
  `ID_DotDuyetCong` int NOT NULL,
  `ID_PhongBan` int NOT NULL,
  `Tu_Ngay` date NOT NULL,
  `Den_Ngay` date NOT NULL,
  `ID_NguoiGui` int NOT NULL,
  `Ngay_Gui` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Lan_Nop` int NOT NULL DEFAULT '1',
  `Trang_Thai` tinyint NOT NULL DEFAULT '1',
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DuyetCongViec`
--

CREATE TABLE `DuyetCongViec` (
  `ID_DuyetCongViec` int NOT NULL,
  `ID_CongViec` int NOT NULL,
  `Lan_Nop` tinyint NOT NULL,
  `Cap_Duyet` tinyint NOT NULL,
  `ID_NguoiDuyet` int NOT NULL,
  `Ket_Qua` tinyint NOT NULL,
  `Ngay_Duyet` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DuyetDon`
--

CREATE TABLE `DuyetDon` (
  `ID_DuyetDon` int NOT NULL,
  `ID_DonNghiPhep` int NOT NULL,
  `Cap_Duyet` tinyint NOT NULL,
  `ID_NguoiDuyet` int NOT NULL,
  `Ket_Qua` tinyint NOT NULL,
  `Duyet_Thay` tinyint NOT NULL DEFAULT '0',
  `Ngay_Duyet` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DuyetDotCong`
--

CREATE TABLE `DuyetDotCong` (
  `ID_DuyetDotCong` int NOT NULL,
  `ID_DotDuyetCong` int NOT NULL,
  `Lan_Nop` int NOT NULL,
  `Cap_Duyet` tinyint NOT NULL,
  `ID_NguoiDuyet` int NOT NULL,
  `Ket_Qua` tinyint NOT NULL,
  `Ngay_Duyet` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DuyetHopDong`
--

CREATE TABLE `DuyetHopDong` (
  `ID_DuyetHopDong` int NOT NULL,
  `ID_HopDong` int NOT NULL,
  `Cap_Duyet` tinyint NOT NULL,
  `ID_NguoiDuyet` int NOT NULL,
  `Ket_Qua` tinyint NOT NULL,
  `Ngay_Duyet` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DuyetTangCa`
--

CREATE TABLE `DuyetTangCa` (
  `ID_DuyetTangCa` int NOT NULL,
  `ID_DangKy` int NOT NULL,
  `Cap_Duyet` tinyint NOT NULL,
  `ID_NguoiDuyet` int NOT NULL,
  `Ket_Qua` tinyint NOT NULL,
  `Ngay_Duyet` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `HopDong`
--

CREATE TABLE `HopDong` (
  `ID_HopDong` int NOT NULL,
  `Ma_HopDong` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_NhanVien` int NOT NULL,
  `ID_BacLuong` int NOT NULL,
  `Loai_HopDong` tinyint NOT NULL,
  `Ngay_BatDau` date NOT NULL,
  `Ngay_KetThuc` date DEFAULT NULL,
  `ID_NguoiLap` int NOT NULL,
  `Ngay_Lap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Trang_Thai` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `KhoanLuong`
--

CREATE TABLE `KhoanLuong` (
  `ID_KhoanLuong` int NOT NULL,
  `ID_BangLuong` int NOT NULL,
  `Loai_Khoan` tinyint NOT NULL,
  `Ten_Khoan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `So_Gio` decimal(5,1) DEFAULT NULL,
  `He_So` decimal(5,0) DEFAULT NULL,
  `So_Tien` decimal(15,0) NOT NULL,
  `Chiu_Thue` tinyint NOT NULL DEFAULT '1',
  `Ghi_Chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `NhanVien`
--

CREATE TABLE `NhanVien` (
  `ID_NhanVien` int NOT NULL,
  `Ma_NhanVien` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ho_Ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gioi_Tinh` tinyint NOT NULL,
  `Ngay_Sinh` date NOT NULL,
  `SDT_NhanVien` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_NhanVien` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dia_Chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ngay_VaoLam` date NOT NULL,
  `ID_CongTy` int NOT NULL,
  `ID_PhongBan` int NOT NULL,
  `ID_ChucVu` int NOT NULL,
  `Trang_Thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `NhanVien`
--

INSERT INTO `NhanVien` (`ID_NhanVien`, `Ma_NhanVien`, `Ho_Ten`, `Gioi_Tinh`, `Ngay_Sinh`, `SDT_NhanVien`, `Email_NhanVien`, `Dia_Chi`, `Ngay_VaoLam`, `ID_CongTy`, `ID_PhongBan`, `ID_ChucVu`, `Trang_Thai`) VALUES
(1, 'NV-VC-CSKH-1', 'Đỗ Thị Hương', 1, '1995-02-18', '0920000261', 'vc-cskh.1@example.com', 'Hà Nội', '2021-01-15', 5, 26, 15, 1),
(2, 'NV-VC-VH-1', 'Phạm Thị Dung', 0, '1994-12-10', '0920000251', 'vc-vh.1@example.com', 'Hà Nội', '2020-01-15', 5, 25, 17, 1),
(3, 'NV-VC-KD-1', 'Trần Thị Bình', 1, '1994-10-01', '0920000241', 'vc-kd.1@example.com', 'Hà Nội', '2024-01-15', 5, 24, 17, 1),
(4, 'NV-VC-KT-1', 'Lý Thanh Hà', 0, '1994-07-23', '0920000231', 'vc-kt.1@example.com', 'Hà Nội', '2023-01-15', 5, 23, 13, 1),
(5, 'NV-VC-NS-1', 'Phan Thị Trang', 1, '1994-05-14', '0920000221', 'vc-ns.1@example.com', 'Hà Nội', '2022-01-15', 5, 22, 12, 1),
(6, 'NV-VC-BGD-1', 'Bùi Ngọc Mai', 0, '1994-03-05', '0920000211', 'vc-bgd.1@example.com', 'Hà Nội', '2021-01-15', 5, 26, 12, 1),
(7, 'NV-VF-QC-1', 'Đỗ Thị Hương', 1, '1993-12-25', '0920000201', 'vf-qc.1@example.com', 'Hải Phòng', '2020-01-15', 4, 20, 17, 1),
(8, 'NV-VF-KTTH-1', 'Phạm Thị Dung', 0, '1993-10-16', '0920000191', 'vf-ktth.1@example.com', 'Hải Phòng', '2024-01-15', 4, 19, 17, 2),
(9, 'NV-VF-SX-1', 'Trần Thị Bình', 1, '1993-08-07', '0920000181', 'vf-sx.1@example.com', 'Hải Phòng', '2023-01-15', 4, 18, 17, 1),
(10, 'NV-VF-KT-1', 'Lý Thanh Hà', 0, '1993-05-29', '0920000171', 'vf-kt.1@example.com', 'Hải Phòng', '2022-01-15', 4, 17, 13, 1),
(11, 'NV-VF-NS-1', 'Phan Thị Trang', 1, '1993-03-20', '0920000161', 'vf-ns.1@example.com', 'Hải Phòng', '2021-01-15', 4, 16, 12, 1),
(12, 'NV-VF-BGD-1', 'Bùi Ngọc Mai', 0, '1993-01-09', '0920000151', 'vf-bgd.1@example.com', 'Hải Phòng', '2020-01-15', 4, 15, 8, 1),
(13, 'NV-VP-VH-1', 'Đỗ Thị Hương', 1, '1992-10-31', '0920000141', 'vp-vh.1@example.com', 'Nha Trang', '2024-01-15', 3, 14, 17, 1),
(14, 'NV-VP-DV-1', 'Phạm Thị Dung', 0, '1992-08-22', '0920000131', 'vp-dv.1@example.com', 'Nha Trang', '2023-01-15', 3, 13, 17, 1),
(15, 'NV-VP-KD-1', 'Trần Thị Bình', 1, '1992-06-13', '0920000121', 'vp-kd.1@example.com', 'Nha Trang', '2022-01-15', 3, 12, 17, 1),
(16, 'NV-VP-KT-1', 'Lý Thanh Hà', 0, '1992-04-04', '0920000111', 'vp-kt.1@example.com', 'Nha Trang', '2021-01-15', 3, 11, 13, 1),
(17, 'NV-VP-NS-1', 'Phan Thị Trang', 1, '1992-01-25', '0920000101', 'vp-ns.1@example.com', 'Nha Trang', '2020-01-15', 3, 10, 12, 1),
(18, 'NV-VP-BGD-1', 'Bùi Ngọc Mai', 0, '1991-11-16', '0920000091', 'vp-bgd.1@example.com', 'Nha Trang', '2024-01-15', 3, 9, 6, 1),
(19, 'NV-VG-TT-1', 'Đỗ Thị Hương', 1, '1991-09-07', '0920000081', 'vg-tt.1@example.com', 'Hà Nội', '2023-01-15', 1, 8, 14, 1),
(20, 'NV-VG-KD-1', 'Phạm Thị Dung', 0, '1991-06-29', '0920000071', 'vg-kd.1@example.com', 'Hà Nội', '2022-01-15', 1, 7, 17, 1),
(21, 'NV-VG-PC-1', 'Trần Thị Bình', 1, '1991-04-20', '0920000061', 'vg-pc.1@example.com', 'Hà Nội', '2021-01-15', 1, 6, 17, 1),
(22, 'NV-VG-CNTT-1', 'Lý Thanh Hà', 0, '1991-02-09', '0920000051', 'vg-cntt.1@example.com', 'Hà Nội', '2020-01-15', 1, 5, 17, 1),
(23, 'NV-VG-TC-1', 'Phan Thị Trang', 1, '1990-12-01', '0920000041', 'vg-tc.1@example.com', 'Hà Nội', '2024-01-15', 1, 4, 17, 1),
(24, 'NV-VG-KT-1', 'Bùi Ngọc Mai', 0, '1990-09-22', '0920000031', 'vg-kt.1@example.com', 'Hà Nội', '2023-01-15', 1, 3, 13, 1),
(25, 'NV-VG-NS-1', 'Đỗ Thị Hương', 1, '1990-07-14', '0920000021', 'vg-ns.1@example.com', 'Hà Nội', '2022-01-15', 1, 2, 12, 1),
(26, 'NV-VG-BGD-1', 'Phạm Thị Dung', 0, '1990-05-05', '0920000011', 'vg-bgd.1@example.com', 'Hà Nội', '2021-01-15', 1, 1, 4, 1),
(27, 'NV-VC-CSKH-2', 'Võ Thành Long', 0, '1995-03-30', '0920000262', 'vc-cskh.2@example.com', 'Hà Nội', '2021-01-15', 5, 26, 18, 1),
(28, 'NV-VC-VH-2', 'Hoàng Quốc Huy', 1, '1995-01-19', '0920000252', 'vc-vh.2@example.com', 'Hà Nội', '2020-01-15', 5, 25, 18, 1),
(29, 'NV-VC-KD-2', 'Lê Minh Cường', 0, '1994-11-10', '0920000242', 'vc-kd.2@example.com', 'Hà Nội', '2024-01-15', 5, 24, 18, 1),
(30, 'NV-VC-KT-2', 'Nguyễn Văn An', 1, '1994-09-01', '0920000232', 'vc-kt.2@example.com', 'Hà Nội', '2023-01-15', 5, 23, 18, 1),
(31, 'NV-VC-NS-2', 'Ngô Đức Anh', 0, '1994-06-23', '0920000222', 'vc-ns.2@example.com', 'Hà Nội', '2022-01-15', 5, 22, 18, 1),
(32, 'NV-VC-BGD-2', 'Đặng Minh Quân', 1, '1994-04-14', '0920000212', 'vc-bgd.2@example.com', 'Hà Nội', '2021-01-15', 5, 21, 16, 1),
(33, 'NV-VF-QC-2', 'Võ Thành Long', 0, '1994-02-03', '0920000202', 'vf-qc.2@example.com', 'Hải Phòng', '2020-01-15', 4, 20, 18, 1),
(34, 'NV-VF-KTTH-2', 'Hoàng Quốc Huy', 1, '1993-11-25', '0920000192', 'vf-ktth.2@example.com', 'Hải Phòng', '2024-01-15', 4, 19, 18, 1),
(35, 'NV-VF-SX-2', 'Lê Minh Cường', 0, '1993-09-16', '0920000182', 'vf-sx.2@example.com', 'Hải Phòng', '2023-01-15', 4, 18, 18, 1),
(36, 'NV-VF-KT-2', 'Nguyễn Văn An', 1, '1993-07-08', '0920000172', 'vf-kt.2@example.com', 'Hải Phòng', '2022-01-15', 4, 17, 18, 1),
(37, 'NV-VF-NS-2', 'Ngô Đức Anh', 0, '1993-04-29', '0920000162', 'vf-ns.2@example.com', 'Hải Phòng', '2021-01-15', 4, 16, 18, 1),
(38, 'NV-VF-BGD-2', 'Đặng Minh Quân', 1, '1993-02-18', '0920000152', 'vf-bgd.2@example.com', 'Hải Phòng', '2020-01-15', 4, 15, 16, 1),
(39, 'NV-VP-VH-2', 'Võ Thành Long', 0, '1992-12-10', '0920000142', 'vp-vh.2@example.com', 'Nha Trang', '2024-01-15', 3, 14, 18, 1),
(40, 'NV-VP-DV-2', 'Hoàng Quốc Huy', 1, '1992-10-01', '0920000132', 'vp-dv.2@example.com', 'Nha Trang', '2023-01-15', 3, 13, 18, 1),
(41, 'NV-VP-KD-2', 'Lê Minh Cường', 0, '1992-07-23', '0920000122', 'vp-kd.2@example.com', 'Nha Trang', '2022-01-15', 3, 12, 18, 1),
(42, 'NV-VP-KT-2', 'Nguyễn Văn An', 1, '1992-05-14', '0920000112', 'vp-kt.2@example.com', 'Nha Trang', '2021-01-15', 3, 11, 18, 1),
(43, 'NV-VP-NS-2', 'Ngô Đức Anh', 0, '1992-03-05', '0920000102', 'vp-ns.2@example.com', 'Nha Trang', '2020-01-15', 3, 10, 18, 1),
(44, 'NV-VP-BGD-2', 'Đặng Minh Quân', 1, '1991-12-26', '0920000092', 'vp-bgd.2@example.com', 'Nha Trang', '2024-01-15', 3, 9, 16, 1),
(45, 'NV-VG-TT-2', 'Võ Thành Long', 0, '1991-10-17', '0920000082', 'vg-tt.2@example.com', 'Hà Nội', '2023-01-15', 1, 8, 18, 1),
(46, 'NV-VG-KD-2', 'Hoàng Quốc Huy', 1, '1991-08-08', '0920000072', 'vg-kd.2@example.com', 'Hà Nội', '2022-01-15', 1, 7, 18, 1),
(47, 'NV-VG-PC-2', 'Lê Minh Cường', 0, '1991-05-30', '0920000062', 'vg-pc.2@example.com', 'Hà Nội', '2021-01-15', 1, 6, 18, 1),
(48, 'NV-VG-CNTT-2', 'Nguyễn Văn An', 1, '1991-03-21', '0920000052', 'vg-cntt.2@example.com', 'Hà Nội', '2020-01-15', 1, 5, 18, 1),
(49, 'NV-VG-TC-2', 'Ngô Đức Anh', 0, '1991-01-10', '0920000042', 'vg-tc.2@example.com', 'Hà Nội', '2024-01-15', 1, 4, 18, 1),
(50, 'NV-VG-KT-2', 'Đặng Minh Quân', 1, '1990-11-01', '0920000032', 'vg-kt.2@example.com', 'Hà Nội', '2023-01-15', 1, 3, 18, 1),
(51, 'NV-VG-NS-2', 'Võ Thành Long', 0, '1990-08-23', '0920000022', 'vg-ns.2@example.com', 'Hà Nội', '2022-01-15', 1, 2, 18, 1),
(52, 'NV-VG-BGD-2', 'Hoàng Quốc Huy', 1, '1990-06-14', '0920000012', 'vg-bgd.2@example.com', 'Hà Nội', '2021-01-15', 1, 1, 16, 1),
(64, 'LD001', 'Nguyễn Quang Minh', 1, '1970-02-15', '0930000001', 'ld001@example.com', 'Hà Nội', '2010-01-01', 1, 1, 1, 1),
(65, 'LD002', 'Trần Đức Thịnh', 1, '1972-04-20', '0930000002', 'ld002@example.com', 'Hà Nội', '2011-02-01', 1, 1, 2, 1),
(66, 'LD003', 'Lê Thu Hà', 0, '1975-08-12', '0930000003', 'ld003@example.com', 'Hà Nội', '2012-03-01', 1, 1, 3, 1),
(67, 'LD004', 'Phạm Quốc Bảo', 1, '1978-06-10', '0930000004', 'ld004@example.com', 'Hà Nội', '2013-04-01', 1, 1, 5, 1),
(68, 'LD005', 'Nguyễn Thị Lan', 0, '1980-03-19', '0930000005', 'ld005@example.com', 'Nha Trang', '2015-05-01', 3, 9, 7, 1),
(69, 'LD006', 'Trần Minh Khang', 1, '1981-09-25', '0930000006', 'ld006@example.com', 'Hải Phòng', '2016-06-01', 4, 15, 9, 1),
(70, 'LD007', 'Hoàng Thị Mai', 0, '1983-11-05', '0930000007', 'ld007@example.com', 'Hà Nội', '2017-07-01', 5, 21, 11, 1),
(76, 'NV-VF-KTTH-3', 'sdjbg', 1, '2006-02-10', '0920000219', 'huynhviet264@gmail.com', 'sfb', '2026-11-01', 4, 19, 18, 1),
(77, 'NV-VP-NS-3', 'Huỳnh Văn Tuấn', 1, '2005-02-10', '0920000321', 'quocv7147@gmail.com', 'ad', '2026-11-01', 3, 10, 15, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `PhongBan`
--

CREATE TABLE `PhongBan` (
  `ID_PhongBan` int NOT NULL,
  `Ma_PhongBan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten_PhongBan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_CongTy` int NOT NULL,
  `ID_PhongBanCha` int DEFAULT NULL,
  `Email_PhongBan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ngay_ThanhLap` date DEFAULT NULL,
  `Trang_Thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `PhongBan`
--

INSERT INTO `PhongBan` (`ID_PhongBan`, `Ma_PhongBan`, `Ten_PhongBan`, `ID_CongTy`, `ID_PhongBanCha`, `Email_PhongBan`, `Ngay_ThanhLap`, `Trang_Thai`) VALUES
(1, 'VG-BGD', 'Ban Giám đốc', 1, NULL, 'bgd.vg@example.com', '1993-08-08', 1),
(2, 'VG-NS', 'Phòng Nhân sự', 1, NULL, 'ns.vg@example.com', '1993-08-08', 1),
(3, 'VG-KT', 'Phòng Kế toán', 1, NULL, 'kt.vg@example.com', '1993-08-08', 1),
(4, 'VG-TC', 'Phòng Tài chính 1', 1, NULL, 'tc.vg@example.com', '1993-08-08', 1),
(5, 'VG-CNTT', 'Phòng Công nghệ thông tin', 1, NULL, 'cntt.vg@example.com', '1993-08-08', 1),
(6, 'VG-PC', 'Phòng Pháp chế', 1, NULL, 'pc.vg@example.com', '1993-08-08', 1),
(7, 'VG-KD', 'Phòng Kinh doanh', 1, NULL, 'kd.vg@example.com', '1993-08-08', 1),
(8, 'VG-TT', 'Phòng Truyền thông', 1, NULL, 'tt.vg@example.com', '1993-08-08', 1),
(9, 'VP-BGD', 'Ban Giám đốc', 3, NULL, 'bgd.vp@example.com', '2003-07-25', 1),
(10, 'VP-NS', 'Phòng Nhân sự', 3, NULL, 'ns.vp@example.com', '2003-07-25', 1),
(11, 'VP-KT', 'Phòng Kế toán', 3, NULL, 'kt.vp@example.com', '2003-07-25', 1),
(12, 'VP-KD', 'Phòng Kinh doanh', 3, NULL, 'kd.vp@example.com', '2003-07-25', 1),
(13, 'VP-DV', 'Phòng Dịch vụ khách hàng', 3, NULL, 'dv.vp@example.com', '2003-07-25', 1),
(14, 'VP-VH', 'Phòng Vận hành', 3, NULL, 'vh.vp@example.com', '2003-07-25', 1),
(15, 'VF-BGD', 'Ban Giám đốc', 4, NULL, 'bgd.vf@example.com', '2017-06-01', 1),
(16, 'VF-NS', 'Phòng Nhân sự', 4, NULL, 'ns.vf@example.com', '2017-06-01', 1),
(17, 'VF-KT', 'Phòng Kế toán', 4, NULL, 'kt.vf@example.com', '2017-06-01', 1),
(18, 'VF-SX', 'Phòng Sản xuất', 4, NULL, 'sx.vf@example.com', '2017-06-01', 1),
(19, 'VF-KTTH', 'Phòng Kỹ thuật', 4, NULL, 'ktth.vf@example.com', '2017-06-01', 1),
(20, 'VF-QC', 'Phòng Quản lý chất lượng', 4, NULL, 'qc.vf@example.com', '2017-06-01', 1),
(21, 'VC-BGD', 'Ban Giám đốc', 5, NULL, 'bgd.vc@example.com', '2002-05-01', 1),
(22, 'VC-NS', 'Phòng Nhân sự', 5, NULL, 'ns.vc@example.com', '2002-05-01', 1),
(23, 'VC-KT', 'Phòng Kế toán', 5, NULL, 'kt.vc@example.com', '2002-05-01', 1),
(24, 'VC-KD', 'Phòng Kinh doanh', 5, NULL, 'kd.vc@example.com', '2002-05-01', 1),
(25, 'VC-VH', 'Phòng Vận hành trung tâm thương mại', 5, NULL, 'vh.vc@example.com', '2002-05-01', 1),
(26, 'VC-CSKH', 'Phòng Chăm sóc khách hàng', 5, NULL, 'cskh.vc@example.com', '2002-05-01', 1),
(29, 'CX', 'xc', 5, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TaiKhoan`
--

CREATE TABLE `TaiKhoan` (
  `ID_TaiKhoan` int NOT NULL,
  `ID_NhanVien` int NOT NULL,
  `Ten_DangNhap` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Doi_MatKhau` tinyint NOT NULL DEFAULT '1',
  `MatKhau_HetHan` datetime DEFAULT NULL,
  `MaXacNhan_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaXacNhan_HetHan` datetime DEFAULT NULL,
  `SoLan_NhapSai` tinyint NOT NULL DEFAULT '0',
  `LanDangNhap_Cuoi` datetime DEFAULT NULL,
  `Trang_Thai` tinyint NOT NULL DEFAULT '1',
  `SoLan_SaiMatKhauCu` tinyint NOT NULL DEFAULT '0',
  `KhoaDoiMatKhau_Den` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `TaiKhoan`
--

INSERT INTO `TaiKhoan` (`ID_TaiKhoan`, `ID_NhanVien`, `Ten_DangNhap`, `MatKhau_hash`, `Doi_MatKhau`, `MatKhau_HetHan`, `MaXacNhan_hash`, `MaXacNhan_HetHan`, `SoLan_NhapSai`, `LanDangNhap_Cuoi`, `Trang_Thai`, `SoLan_SaiMatKhauCu`, `KhoaDoiMatKhau_Den`) VALUES
(61, 1, 'huong.nv-vc-cskh-1', '$2y$12$WGJ7CXugcrJNBYLCKm011.r4tWPwWuvGZQgJmyeP71CO8gkTxZym2', 0, NULL, NULL, NULL, 0, '2026-10-30 11:05:56', 1, 0, NULL),
(62, 2, 'dung.nv-vc-vh-1', '$2y$12$qiNB6XOavg7rvgqkfjg1mutCSLD2lBO0gmsMpboihPjr0F79.p8Em', 0, NULL, NULL, NULL, 0, '2026-11-01 09:45:41', 1, 1, NULL),
(63, 3, 'binh.nv-vc-kd-1', '$2y$12$0oExI6ca/UfMpsU1f30CaOO3ElqXsdC2gEcwa5q.4mm6yNI8Ycgbi', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(64, 4, 'ha.nv-vc-kt-1', '$2y$12$xNizferAqaskjMH3kaqCgO2wD/k5dN97p9BEuqrSOzBG50qHHS5Mu', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(65, 5, 'trang.nv-vc-ns-1', '$2y$12$1qshmWLpjwhiURH7QMxlXOfoHy1XdpQzTwVHcGEa31LpJGV/7kGES', 0, NULL, NULL, NULL, 0, '2026-10-31 16:20:53', 1, 0, NULL),
(66, 6, 'mai.nv-vc-bgd-1', '$2y$12$kzVjisXXesWGXnXkTkAn4u6QcyU49CcQ9JgLY/6Sw.6NgJkMzCR/O', 0, NULL, NULL, NULL, 0, '2026-11-04 14:12:08', 1, 0, NULL),
(67, 7, 'huong.nv-vf-qc-1', '$2y$12$vEA.E0wdNHZgEsPBk4yU6umdyo61skOrbZ9FbKOg3uIdrHK/EnHVG', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(68, 8, 'dung.nv-vf-ktth-1', '$2y$12$PH3mzGpdeBcAHZSrSMK28egjR5O9c7/O41Fd7cv58s0JgSP9xBeGy', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(69, 9, 'binh.nv-vf-sx-1', '$2y$12$JSBYXBfNb5ncKmW02a0mWugQbgbAD7VX3T6ckZNYNGsI5K8TARqJG', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(70, 10, 'ha.nv-vf-kt-1', '$2y$12$q2ch3aYY/DXHrqONBnx.1elzEfVJ7M/.93zOCPJTxmfOmCQR3ErSi', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(71, 11, 'trang.nv-vf-ns-1', '$2y$12$gpVOjo.J7lcVJYSVAdJuVu8H1vnXFNrOBT2WWyLm/pGmrJsRayOOm', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(72, 12, 'mai.nv-vf-bgd-1', '$2y$12$GSJajvQCpKRDwfXF57ssBe25J1zaVW3olyf268fRk9rMmx1YL0J0q', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(73, 13, 'huong.nv-vp-vh-1', '$2y$12$.YM5khsM7l6rKuGNqevetuQtkcSV4NScjcquvvu4V5n5tRX/06YPG', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(74, 14, 'dung.nv-vp-dv-1', '$2y$12$mgOTTxNxAkFY08QFKdP1pujUfDVPYGfhKe31FHgBQDXyg3/nbSD6y', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(75, 15, 'binh.nv-vp-kd-1', '$2y$12$6Al9A.d4s3I6cOuByK1fIuQY.mIbsZbe2f95m.YxsNAsbCwVXpQ6C', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(76, 16, 'ha.nv-vp-kt-1', '$2y$12$vMBYwo8R3MLnCv8AwSKGCOK9nTB0h9zajCJHwKo0lQBPYz11xE9TS', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(77, 17, 'trang.nv-vp-ns-1', '$2y$12$JsKkcjBD7s829NytYYTSJ.7QTSDsjltp4Ps4YjGPUcHrGu5vJuBUu', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(78, 18, 'mai.nv-vp-bgd-1', '$2y$12$Le4KM7nj62uvVGj9V5lVYOgD/FwcPtEkG1MrVWcsfXnSPD0n65Nmm', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(79, 19, 'huong.nv-vg-tt-1', '$2y$12$RcQTR5bK6pbedm6Ge17IGOtV./wtP.rcP7eCPDrz1CapV56ARDRRi', 0, NULL, NULL, NULL, 0, '2026-10-31 16:22:19', 1, 0, NULL),
(80, 20, 'dung.nv-vg-kd-1', '$2y$12$sz7P3g2g/RrPFN0XejMPte6WFOdz9s/Q9deie//ViPp4qFtXfV5ry', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(81, 21, 'binh.nv-vg-pc-1', '$2y$12$AkDnw/2FwBm0lm3Qkwbzx.RV0Z3EkALeIiA9eT6IhYdglvjiytwdK', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(82, 22, 'ha.nv-vg-cntt-1', '$2y$12$Any/RV7rhkbfSFoaaJZuLexBMwT9ZkiHOK3imFWgJNVjobzqgTqC2', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(83, 23, 'trang.nv-vg-tc-1', '$2y$12$NrrYIO.cvmgdpbk8xfh1XuRzUBbdl4BVTRmPU95kZGSvsoXZwY9jK', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(84, 24, 'mai.nv-vg-kt-1', '$2y$12$ru7SBoinyBWeq1MP2uOPJOe5n3Y.hpw9MB460LgpFEhkoHJeTZn7a', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(85, 25, 'huong.nv-vg-ns-1', '$2y$12$oF/kGaP50a5E.lMR6dD1..dWkXlRS3EX74X7nOV1NAWXOuI6n1FXu', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(86, 26, 'dung.nv-vg-bgd-1', '$2y$12$lGgS75RKfPjd/X9doLL6mOfIBmOnE9zA0htemsCCbCL4jTShQTIdu', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(87, 27, 'long.nv-vc-cskh-2', '$2y$12$RijC8c1WlIeMPlQ53jOxw.Rj.vqIO8G8QvHgUhvgK/HmYM0gi9qeC', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(88, 28, 'huy.nv-vc-vh-2', '$2y$12$HoJ3z0jqzBHYtkdXl9VaYeqSbYHiocuLzeP4RDBoIUaOPHpdaiGKi', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(89, 29, 'cuong.nv-vc-kd-2', '$2y$12$DrFJa9xxXs5AvOGJ2ilygOLvydvhUARrxRjS6.29ZLhGpwIf/3z5S', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(90, 30, 'an.nv-vc-kt-2', '$2y$12$p49q8pf2F/g7DEyxAsKaDuGg0xkp8WIaiXUJP8cDWYrPulXJYW3z6', 0, NULL, NULL, NULL, 0, '2026-11-01 09:41:59', 1, 0, NULL),
(91, 31, 'anh.nv-vc-ns-2', '$2y$12$cx3jXFyzuoYa4ckEWjnyrevf/ncGvQKbdgNUnsTEa7gnALhX.CpSq', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(92, 32, 'quan.nv-vc-bgd-2', '$2y$12$KprcIJcYPqn8P.qWg/GAUOsL6bow0A0E6paBupnKvzDdxNx5D.JqG', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(93, 33, 'long.nv-vf-qc-2', '$2y$12$8VKHDm2JcTlnjpva1azYFOooUBptiwnpWcuE8POnppgfqEh7/tIPO', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(94, 34, 'huy.nv-vf-ktth-2', '$2y$12$jbdb/eVdm0QB2ulAzCS9Hucur.6pfpJ1IE3zt.t14k3Xpel5Qau62', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(95, 35, 'cuong.nv-vf-sx-2', '$2y$12$FwGSuCpLzQpcp2Q4U09s7ufDjoc1xIaO/bTJxStMvvt29i8XXvwsC', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(96, 36, 'an.nv-vf-kt-2', '$2y$12$jTBNV932KC4URNhcjYfAb.dn5Ce4Y4GCk3pMMFjCuDJULmtFZM8ES', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(97, 37, 'anh.nv-vf-ns-2', '$2y$12$tdvtAzoyST8ne/G79ri/B.OA/HZGusxZWZog6lvDKFRqbeY1brszm', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(98, 38, 'quan.nv-vf-bgd-2', '$2y$12$bSKrGf16OJl5pzHI2EBGEeCbn6Br.YHgJOfnZRka0jl3h9.n4dE2O', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(99, 39, 'long.nv-vp-vh-2', '$2y$12$myyTS1b/lX7Zbr36x47fl.SR/7uiILQyz9k6f441UmLbnG0TGhI8C', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(100, 40, 'huy.nv-vp-dv-2', '$2y$12$lwB/lPEOkaZkh5Ru1YFJR.B3jWFRNUPyDQjMo8aphl1dkGTuCNrf2', 0, NULL, NULL, NULL, 0, '2026-10-31 09:56:53', 1, 0, NULL),
(101, 41, 'cuong.nv-vp-kd-2', '$2y$12$1SBO9UYRbkA7t0lTSjxLLeInfQrNDELPxOcGepqsZgTV5SEBiQPaa', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(102, 42, 'an.nv-vp-kt-2', '$2y$12$5/jkpEJ9dqSE2MtxwgZ5cuLRaJEDIWlNw3KUW/rurrCtNDdHzA89O', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(103, 43, 'anh.nv-vp-ns-2', '$2y$12$kLJfbDnmG0cwWikkWDm4su4/m3kLHLFxY997u0xvv8MDfQJNucGzO', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(104, 44, 'quan.nv-vp-bgd-2', '$2y$12$5tvRHcG8SI.S5aC.F9B6BeHN78VvFJNxfiRZW8JqaOGKos1ieR/o6', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(105, 45, 'long.nv-vg-tt-2', '$2y$12$nxhExgEnwYrzvgBxLCDoReqSOG6F1QRIfClGst05x8qKvnlyz8ZcW', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(106, 46, 'huy.nv-vg-kd-2', '$2y$12$hH4StXsuOZsGFt3O1L7H4uAEKSlgeAZ9252Brkbrplp0ucW5i6xZe', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(107, 47, 'cuong.nv-vg-pc-2', '$2y$12$mynDt18O/SM2PU3kGpGDUeQ8UthEsOnUnTQzo.gCMGSDihYurF.Su', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(108, 48, 'an.nv-vg-cntt-2', '$2y$12$ccGAeIx9u4JkLxzOGALPUerZ..LcvjskPNPc14TOVQY3AzGlA6Awa', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(109, 49, 'anh.nv-vg-tc-2', '$2y$12$oqk9Cl3z.uBHE0OQym8zaOmvnMzzCok7tQwsH6BDEKKwKjyImxHAG', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(110, 50, 'quan.nv-vg-kt-2', '$2y$12$SPaVxsAsZqi0EghKHSj/aOFYdi6yp2Wy1t6hcZSI/TMCXQ7ayFXxa', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(111, 51, 'long.nv-vg-ns-2', '$2y$12$ikKkLdT/UWhcTx/X7SNsFegvAPU1GhLAZoZTg0gUja1ESjdCRxL2m', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(112, 52, 'huy.nv-vg-bgd-2', '$2y$12$PtwHq6WP0lOGpDWZ9J7F0e9NrS/XHXfK.eatimbeXo25GRQtQh2a2', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(113, 64, 'minh.ld001', '$2y$12$RnYr7k3fp5ahJW1uQaZ.8Oe6fJxcISYBJoCpm/LK1IuIayHHNJi9S', 0, NULL, NULL, NULL, 0, '2026-11-04 14:06:27', 1, 0, NULL),
(114, 65, 'thinh.ld002', '$2y$12$zYpA0gefqjgopsJmCb23bOfY28hRO/8J.7Ghy8QchZ8JV1yTYrpwq', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(115, 66, 'ha.ld003', '$2y$12$UvBsweYdzdvJkvuwULhz4.OoLXZeeoojrTmkCoJu9YgwzzIurvWWi', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(116, 67, 'bao.ld004', '$2y$12$4dPNDS4qpguJ15.1YHIanOE2QCGoigABiLhuspPWfvsIMiRBbfrnC', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(117, 68, 'lan.ld005', '$2y$12$xpstoMExrspsgvrUy8px9ur3oo0xlIn6uMsEb0XuI8kkoSgWdshWS', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(118, 69, 'khang.ld006', '$2y$12$THlQ0QFNqGK1R3wQp0TC/eG4B7OuywxlM6v305r6QABPcbvfNyN6.', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(119, 70, 'mai.ld007', '$2y$12$4AzuGmOztL.xoMwpOA/rS.6q4H78VzpmEaVu6GpIUwJt7M4dlbgaO', 0, NULL, NULL, NULL, 0, NULL, 1, 0, NULL),
(125, 76, 'sdjbg.nv-vf-ktth-3', '$2y$12$6h15YxWSJhhKV8liJxHas.ko1kJe2b9aISttqahs/qcp88vfZXuoW', 0, NULL, NULL, NULL, 0, '2026-11-01 06:03:28', 1, 0, NULL),
(126, 77, 'tuan.nv-vp-ns-3', '$2y$12$ft8rIwhPksmGEBLFapHJ8eiZChYojU5knwtJQbpAhE4gIT1PEevWe', 0, NULL, NULL, NULL, 0, '2026-11-01 08:58:35', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TaiKhoan_VaiTro`
--

CREATE TABLE `TaiKhoan_VaiTro` (
  `ID_TaiKhoan` int NOT NULL,
  `ID_VaiTro` int NOT NULL,
  `Ngay_Cap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_NguoiCap` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `TaiKhoan_VaiTro`
--

INSERT INTO `TaiKhoan_VaiTro` (`ID_TaiKhoan`, `ID_VaiTro`, `Ngay_Cap`, `ID_NguoiCap`) VALUES
(61, 4, '2026-10-27 17:38:20', NULL),
(62, 6, '2026-10-27 17:39:18', NULL),
(63, 6, '2026-10-27 17:39:18', NULL),
(64, 4, '2026-10-27 17:38:20', NULL),
(64, 5, '2026-10-27 17:38:47', NULL),
(65, 3, '2026-10-27 17:38:32', NULL),
(65, 4, '2026-10-27 17:38:20', NULL),
(66, 2, '2026-10-27 17:38:06', NULL),
(66, 4, '2026-10-27 17:38:20', NULL),
(67, 6, '2026-10-27 17:39:18', NULL),
(68, 6, '2026-10-27 17:39:18', NULL),
(69, 6, '2026-10-27 17:39:18', NULL),
(70, 4, '2026-10-27 17:38:20', NULL),
(70, 5, '2026-10-27 17:38:47', NULL),
(71, 3, '2026-10-27 17:38:32', NULL),
(71, 4, '2026-10-27 17:38:20', NULL),
(72, 2, '2026-10-27 17:38:06', NULL),
(72, 4, '2026-10-27 17:38:20', NULL),
(73, 6, '2026-10-27 17:39:18', NULL),
(74, 6, '2026-10-27 17:39:18', NULL),
(75, 6, '2026-10-27 17:39:18', NULL),
(76, 4, '2026-10-27 17:38:20', NULL),
(76, 5, '2026-10-27 17:38:47', NULL),
(77, 3, '2026-10-27 17:38:32', NULL),
(77, 4, '2026-10-27 17:38:20', NULL),
(78, 2, '2026-10-27 17:38:06', NULL),
(78, 4, '2026-10-27 17:38:20', NULL),
(79, 4, '2026-10-27 17:38:20', NULL),
(80, 6, '2026-10-27 17:39:18', NULL),
(81, 6, '2026-10-27 17:39:18', NULL),
(82, 6, '2026-10-27 17:39:18', NULL),
(83, 6, '2026-10-27 17:39:18', NULL),
(84, 4, '2026-10-27 17:38:20', NULL),
(84, 5, '2026-10-27 17:38:47', NULL),
(85, 3, '2026-10-27 17:38:32', NULL),
(85, 4, '2026-10-27 17:38:20', NULL),
(86, 1, '2026-10-27 17:37:46', NULL),
(86, 4, '2026-10-27 17:38:20', NULL),
(87, 6, '2026-10-27 17:39:18', NULL),
(88, 6, '2026-10-27 17:39:18', NULL),
(89, 6, '2026-10-27 17:39:18', NULL),
(90, 5, '2026-10-27 17:38:47', NULL),
(91, 3, '2026-10-27 17:38:32', NULL),
(92, 6, '2026-10-27 17:39:18', NULL),
(93, 6, '2026-10-27 17:39:18', NULL),
(94, 6, '2026-10-27 17:39:18', NULL),
(95, 6, '2026-10-27 17:39:18', NULL),
(96, 5, '2026-10-27 17:38:47', NULL),
(97, 3, '2026-10-27 17:38:32', NULL),
(98, 6, '2026-10-27 17:39:18', NULL),
(99, 6, '2026-10-27 17:39:18', NULL),
(100, 6, '2026-10-27 17:39:18', NULL),
(101, 6, '2026-10-27 17:39:18', NULL),
(102, 5, '2026-10-27 17:38:47', NULL),
(103, 3, '2026-10-27 17:38:32', NULL),
(104, 6, '2026-10-27 17:39:18', NULL),
(105, 6, '2026-10-27 17:39:18', NULL),
(106, 6, '2026-10-27 17:39:18', NULL),
(107, 6, '2026-10-27 17:39:18', NULL),
(108, 6, '2026-10-27 17:39:18', NULL),
(109, 6, '2026-10-27 17:39:18', NULL),
(110, 5, '2026-10-27 17:38:47', NULL),
(111, 3, '2026-10-27 17:38:32', NULL),
(112, 6, '2026-10-27 17:39:18', NULL),
(113, 1, '2026-10-27 17:37:46', NULL),
(114, 1, '2026-10-27 17:37:46', NULL),
(115, 1, '2026-10-27 17:37:46', NULL),
(116, 4, '2026-10-27 17:38:20', NULL),
(117, 4, '2026-10-27 17:38:20', NULL),
(118, 4, '2026-10-27 17:38:20', NULL),
(119, 4, '2026-10-27 17:38:20', NULL),
(125, 6, '2026-11-01 00:00:00', 64),
(126, 6, '2026-11-01 00:00:00', 64);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ThamSo`
--

CREATE TABLE `ThamSo` (
  `ID_ThamSo` int NOT NULL,
  `Ma_ThamSo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten_ThamSo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia_Tri` decimal(15,4) NOT NULL,
  `Ngay_ApDung` date NOT NULL,
  `Can_Cu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ThanNhan`
--

CREATE TABLE `ThanNhan` (
  `ID_ThanNhan` int NOT NULL,
  `ID_NhanVien` int NOT NULL,
  `Ho_Ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quan_He` tinyint NOT NULL,
  `Ngay_Sinh` date DEFAULT NULL,
  `Phu_Thuoc` tinyint NOT NULL DEFAULT '0',
  `Phu_Thuoc_Tu` date DEFAULT NULL,
  `Phu_Thuoc_Den` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `VaiTro`
--

CREATE TABLE `VaiTro` (
  `ID_VaiTro` int NOT NULL,
  `Ma_VaiTro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ten_VaiTro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Trang_Thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `VaiTro`
--

INSERT INTO `VaiTro` (`ID_VaiTro`, `Ma_VaiTro`, `Ten_VaiTro`, `Trang_Thai`) VALUES
(1, 'SUPER_ADMIN', 'Quản trị hệ thống tập đoàn', 1),
(2, 'COMPANY_ADMIN', 'Quản trị công ty', 1),
(3, 'HR', 'Nhân sự', 1),
(4, 'MANAGER', 'Quản lý', 1),
(5, 'ACCOUNTANT', 'Kế toán', 1),
(6, 'EMPLOYEE', 'Nhân viên', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `XacNhanChotCong`
--

CREATE TABLE `XacNhanChotCong` (
  `ID_XacNhanChotCong` int NOT NULL,
  `ID_ChotCong` int NOT NULL,
  `Lan_XacNhan` int NOT NULL,
  `ID_NguoiXacNhan` int NOT NULL,
  `Ket_Qua` tinyint NOT NULL,
  `Ngay_XacNhan` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Y_Kien_NV` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `YeuCauDoiMatKhau`
--

CREATE TABLE `YeuCauDoiMatKhau` (
  `ID_YeuCau` int NOT NULL,
  `ID_TaiKhoan` int NOT NULL,
  `MatKhau_Moi_Hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OTP_Hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Het_Han` datetime NOT NULL,
  `So_Lan_Sai` tinyint NOT NULL DEFAULT '0',
  `So_Lan_Gui` tinyint NOT NULL DEFAULT '1',
  `Lan_Gui_Cuoi` datetime NOT NULL,
  `Trang_Thai` tinyint NOT NULL DEFAULT '0' COMMENT '0 = dang cho, 1 = da doi thanh cong, 2 = bi thay the hoac huy',
  `Ngay_Tao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `YeuCauDoiMatKhau`
--

INSERT INTO `YeuCauDoiMatKhau` (`ID_YeuCau`, `ID_TaiKhoan`, `MatKhau_Moi_Hash`, `OTP_Hash`, `Het_Han`, `So_Lan_Sai`, `So_Lan_Gui`, `Lan_Gui_Cuoi`, `Trang_Thai`, `Ngay_Tao`) VALUES
(2, 90, '$2y$12$Rg8gD/wJsm3zymz1XjZ/Ke5KD7WN6bv7IBxo8kw05l4mxCR3b4I/2', '$2y$12$PS5oMHlp6x.SOCGW/hJ70OrRntgSRxldzr5jxa.QpGS0LPL1bSH8e', '2026-11-01 05:18:44', 0, 1, '2026-11-01 05:08:44', 0, '2026-11-01 05:08:44'),
(3, 125, '$2y$12$6h15YxWSJhhKV8liJxHas.ko1kJe2b9aISttqahs/qcp88vfZXuoW', '$2y$12$F9NaMF3hwjAOtHiyyzG9cuP6ikHsiplUP/kaQu1LIV95yRdVqMwIe', '2026-11-01 06:12:52', 0, 2, '2026-11-01 06:02:52', 1, '2026-11-01 05:14:02'),
(4, 126, '$2y$12$CCRYgfJnfrQ9Bz/VBx78duAQ7gvT4Hd8FOo7Q3qAfa15w8prrYl52', '$2y$12$HfxcNw8X58StzZEMjVAd7.E5aYOmmf4OKnKhSX8EmiDqmDKvrCBYy', '2026-11-01 08:48:30', 0, 1, '2026-11-01 08:38:30', 2, '2026-11-01 08:38:30'),
(5, 126, '$2y$12$ft8rIwhPksmGEBLFapHJ8eiZChYojU5knwtJQbpAhE4gIT1PEevWe', '$2y$12$XxsZ8sA0Zn2cXc4SO2be.OXD2OJ1N/l.kfiKGAVcbSlQcUO.VH8Yy', '2026-11-01 09:07:44', 0, 1, '2026-11-01 08:57:44', 1, '2026-11-01 08:57:44');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `BacLuong`
--
ALTER TABLE `BacLuong`
  ADD PRIMARY KEY (`ID_BacLuong`),
  ADD UNIQUE KEY `Ma_BacLuong` (`Ma_BacLuong`),
  ADD UNIQUE KEY `Ten_BacLuong` (`Ten_BacLuong`);

--
-- Chỉ mục cho bảng `BangLuong`
--
ALTER TABLE `BangLuong`
  ADD PRIMARY KEY (`ID_BangLuong`),
  ADD UNIQUE KEY `ID_NhanVien` (`ID_NhanVien`,`Thang`,`Nam`),
  ADD KEY `ID_HopDong` (`ID_HopDong`),
  ADD KEY `ID_NguoiLap` (`ID_NguoiLap`);

--
-- Chỉ mục cho bảng `BanQuanLy`
--
ALTER TABLE `BanQuanLy`
  ADD PRIMARY KEY (`ID_BanQuanLy`),
  ADD UNIQUE KEY `ID_NhanVien` (`ID_NhanVien`,`ID_NguoiQuanLy`,`Loai_QuanLy`,`Ngay_BatDau`),
  ADD KEY `ID_NguoiQuanLy` (`ID_NguoiQuanLy`);

--
-- Chỉ mục cho bảng `BieuThue`
--
ALTER TABLE `BieuThue`
  ADD PRIMARY KEY (`ID_BieuThue`),
  ADD UNIQUE KEY `Bac` (`Bac`,`Ngay_ApDung`);

--
-- Chỉ mục cho bảng `CapNhatTienDo`
--
ALTER TABLE `CapNhatTienDo`
  ADD PRIMARY KEY (`ID_CapNhat`),
  ADD KEY `ID_CongViec` (`ID_CongViec`),
  ADD KEY `ID_NguoiCapNhat` (`ID_NguoiCapNhat`);

--
-- Chỉ mục cho bảng `ChamCong`
--
ALTER TABLE `ChamCong`
  ADD PRIMARY KEY (`ID_ChamCong`),
  ADD UNIQUE KEY `ID_NhanVien` (`ID_NhanVien`,`Ngay_Lam`),
  ADD KEY `ID_NguoiChamCong` (`ID_NguoiChamCong`);

--
-- Chỉ mục cho bảng `ChiTietChotCong`
--
ALTER TABLE `ChiTietChotCong`
  ADD PRIMARY KEY (`ID_ChiTietChotCong`),
  ADD UNIQUE KEY `ID_ChamCong` (`ID_ChamCong`),
  ADD KEY `ID_ChotCong` (`ID_ChotCong`);

--
-- Chỉ mục cho bảng `ChotCong`
--
ALTER TABLE `ChotCong`
  ADD PRIMARY KEY (`ID_ChotCong`),
  ADD UNIQUE KEY `ID_NhanVien` (`ID_NhanVien`,`Tu_Ngay`,`Den_Ngay`),
  ADD KEY `ID_PhongBan` (`ID_PhongBan`),
  ADD KEY `ID_NguoiChot` (`ID_NguoiChot`),
  ADD KEY `ID_DotDuyetCong` (`ID_DotDuyetCong`);

--
-- Chỉ mục cho bảng `ChucVu`
--
ALTER TABLE `ChucVu`
  ADD PRIMARY KEY (`ID_ChucVu`),
  ADD UNIQUE KEY `Ma_ChucVu` (`Ma_ChucVu`),
  ADD KEY `fk_chucvu_congty` (`ID_CongTy`);

--
-- Chỉ mục cho bảng `CongTy`
--
ALTER TABLE `CongTy`
  ADD PRIMARY KEY (`ID_CongTy`),
  ADD UNIQUE KEY `Ma_CongTy` (`Ma_CongTy`),
  ADD KEY `ID_CongTyCha` (`ID_CongTyCha`);

--
-- Chỉ mục cho bảng `CongViec`
--
ALTER TABLE `CongViec`
  ADD PRIMARY KEY (`ID_CongViec`),
  ADD UNIQUE KEY `Ma_CongViec` (`Ma_CongViec`),
  ADD KEY `ID_NguoiGiao` (`ID_NguoiGiao`),
  ADD KEY `ID_NguoiNhan` (`ID_NguoiNhan`),
  ADD KEY `ID_CongViecCha` (`ID_CongViecCha`);

--
-- Chỉ mục cho bảng `DangKyTangCa`
--
ALTER TABLE `DangKyTangCa`
  ADD PRIMARY KEY (`ID_DangKy`),
  ADD UNIQUE KEY `Ma_DangKy` (`Ma_DangKy`),
  ADD KEY `ID_NhanVien` (`ID_NhanVien`),
  ADD KEY `ID_NguoiGiamSat` (`ID_NguoiGiamSat`);

--
-- Chỉ mục cho bảng `DonNghiPhep`
--
ALTER TABLE `DonNghiPhep`
  ADD PRIMARY KEY (`ID_DonNghiPhep`),
  ADD UNIQUE KEY `Ma_DonNghiPhep` (`Ma_DonNghiPhep`),
  ADD KEY `ID_NhanVien` (`ID_NhanVien`);

--
-- Chỉ mục cho bảng `DotDuyetCong`
--
ALTER TABLE `DotDuyetCong`
  ADD PRIMARY KEY (`ID_DotDuyetCong`),
  ADD UNIQUE KEY `ID_PhongBan` (`ID_PhongBan`,`Tu_Ngay`,`Den_Ngay`),
  ADD KEY `ID_NguoiGui` (`ID_NguoiGui`);

--
-- Chỉ mục cho bảng `DuyetCongViec`
--
ALTER TABLE `DuyetCongViec`
  ADD PRIMARY KEY (`ID_DuyetCongViec`),
  ADD UNIQUE KEY `ID_CongViec` (`ID_CongViec`,`Lan_Nop`,`Cap_Duyet`),
  ADD KEY `ID_NguoiDuyet` (`ID_NguoiDuyet`);

--
-- Chỉ mục cho bảng `DuyetDon`
--
ALTER TABLE `DuyetDon`
  ADD PRIMARY KEY (`ID_DuyetDon`),
  ADD UNIQUE KEY `ID_DonNghiPhep` (`ID_DonNghiPhep`,`Cap_Duyet`),
  ADD KEY `ID_NguoiDuyet` (`ID_NguoiDuyet`);

--
-- Chỉ mục cho bảng `DuyetDotCong`
--
ALTER TABLE `DuyetDotCong`
  ADD PRIMARY KEY (`ID_DuyetDotCong`),
  ADD UNIQUE KEY `ID_DotDuyetCong` (`ID_DotDuyetCong`,`Lan_Nop`,`Cap_Duyet`),
  ADD KEY `ID_NguoiDuyet` (`ID_NguoiDuyet`);

--
-- Chỉ mục cho bảng `DuyetHopDong`
--
ALTER TABLE `DuyetHopDong`
  ADD PRIMARY KEY (`ID_DuyetHopDong`),
  ADD UNIQUE KEY `ID_HopDong` (`ID_HopDong`,`Cap_Duyet`),
  ADD KEY `ID_NguoiDuyet` (`ID_NguoiDuyet`);

--
-- Chỉ mục cho bảng `DuyetTangCa`
--
ALTER TABLE `DuyetTangCa`
  ADD PRIMARY KEY (`ID_DuyetTangCa`),
  ADD UNIQUE KEY `ID_DangKy` (`ID_DangKy`,`Cap_Duyet`),
  ADD KEY `ID_NguoiDuyet` (`ID_NguoiDuyet`);

--
-- Chỉ mục cho bảng `HopDong`
--
ALTER TABLE `HopDong`
  ADD PRIMARY KEY (`ID_HopDong`),
  ADD UNIQUE KEY `Ma_HopDong` (`Ma_HopDong`),
  ADD KEY `ID_NhanVien` (`ID_NhanVien`),
  ADD KEY `ID_BacLuong` (`ID_BacLuong`),
  ADD KEY `ID_NguoiLap` (`ID_NguoiLap`);

--
-- Chỉ mục cho bảng `KhoanLuong`
--
ALTER TABLE `KhoanLuong`
  ADD PRIMARY KEY (`ID_KhoanLuong`),
  ADD KEY `ID_BangLuong` (`ID_BangLuong`);

--
-- Chỉ mục cho bảng `NhanVien`
--
ALTER TABLE `NhanVien`
  ADD PRIMARY KEY (`ID_NhanVien`),
  ADD UNIQUE KEY `Ma_NhanVien` (`Ma_NhanVien`),
  ADD UNIQUE KEY `SDT_NhanVien` (`SDT_NhanVien`),
  ADD UNIQUE KEY `Email_NhanVien` (`Email_NhanVien`),
  ADD KEY `ID_CongTy` (`ID_CongTy`),
  ADD KEY `ID_PhongBan` (`ID_PhongBan`),
  ADD KEY `ID_ChucVu` (`ID_ChucVu`);

--
-- Chỉ mục cho bảng `PhongBan`
--
ALTER TABLE `PhongBan`
  ADD PRIMARY KEY (`ID_PhongBan`),
  ADD UNIQUE KEY `Ma_PhongBan` (`Ma_PhongBan`),
  ADD KEY `ID_CongTy` (`ID_CongTy`),
  ADD KEY `ID_PhongBanCha` (`ID_PhongBanCha`);

--
-- Chỉ mục cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD PRIMARY KEY (`ID_TaiKhoan`),
  ADD UNIQUE KEY `ID_NhanVien` (`ID_NhanVien`),
  ADD UNIQUE KEY `Ten_DangNhap` (`Ten_DangNhap`);

--
-- Chỉ mục cho bảng `TaiKhoan_VaiTro`
--
ALTER TABLE `TaiKhoan_VaiTro`
  ADD PRIMARY KEY (`ID_TaiKhoan`,`ID_VaiTro`),
  ADD KEY `ID_VaiTro` (`ID_VaiTro`),
  ADD KEY `ID_NguoiCap` (`ID_NguoiCap`);

--
-- Chỉ mục cho bảng `ThamSo`
--
ALTER TABLE `ThamSo`
  ADD PRIMARY KEY (`ID_ThamSo`),
  ADD UNIQUE KEY `Ma_ThamSo` (`Ma_ThamSo`,`Ngay_ApDung`);

--
-- Chỉ mục cho bảng `ThanNhan`
--
ALTER TABLE `ThanNhan`
  ADD PRIMARY KEY (`ID_ThanNhan`),
  ADD KEY `ID_NhanVien` (`ID_NhanVien`);

--
-- Chỉ mục cho bảng `VaiTro`
--
ALTER TABLE `VaiTro`
  ADD PRIMARY KEY (`ID_VaiTro`),
  ADD UNIQUE KEY `Ma_VaiTro` (`Ma_VaiTro`),
  ADD UNIQUE KEY `Ten_VaiTro` (`Ten_VaiTro`);

--
-- Chỉ mục cho bảng `XacNhanChotCong`
--
ALTER TABLE `XacNhanChotCong`
  ADD PRIMARY KEY (`ID_XacNhanChotCong`),
  ADD UNIQUE KEY `ID_ChotCong` (`ID_ChotCong`,`Lan_XacNhan`),
  ADD KEY `ID_NguoiXacNhan` (`ID_NguoiXacNhan`);

--
-- Chỉ mục cho bảng `YeuCauDoiMatKhau`
--
ALTER TABLE `YeuCauDoiMatKhau`
  ADD PRIMARY KEY (`ID_YeuCau`),
  ADD KEY `idx_ycdmk_taikhoan` (`ID_TaiKhoan`,`Trang_Thai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `BacLuong`
--
ALTER TABLE `BacLuong`
  MODIFY `ID_BacLuong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `BangLuong`
--
ALTER TABLE `BangLuong`
  MODIFY `ID_BangLuong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `BanQuanLy`
--
ALTER TABLE `BanQuanLy`
  MODIFY `ID_BanQuanLy` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `BieuThue`
--
ALTER TABLE `BieuThue`
  MODIFY `ID_BieuThue` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `CapNhatTienDo`
--
ALTER TABLE `CapNhatTienDo`
  MODIFY `ID_CapNhat` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ChamCong`
--
ALTER TABLE `ChamCong`
  MODIFY `ID_ChamCong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ChiTietChotCong`
--
ALTER TABLE `ChiTietChotCong`
  MODIFY `ID_ChiTietChotCong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ChotCong`
--
ALTER TABLE `ChotCong`
  MODIFY `ID_ChotCong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ChucVu`
--
ALTER TABLE `ChucVu`
  MODIFY `ID_ChucVu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `CongTy`
--
ALTER TABLE `CongTy`
  MODIFY `ID_CongTy` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `CongViec`
--
ALTER TABLE `CongViec`
  MODIFY `ID_CongViec` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DangKyTangCa`
--
ALTER TABLE `DangKyTangCa`
  MODIFY `ID_DangKy` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DonNghiPhep`
--
ALTER TABLE `DonNghiPhep`
  MODIFY `ID_DonNghiPhep` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DotDuyetCong`
--
ALTER TABLE `DotDuyetCong`
  MODIFY `ID_DotDuyetCong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DuyetCongViec`
--
ALTER TABLE `DuyetCongViec`
  MODIFY `ID_DuyetCongViec` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DuyetDon`
--
ALTER TABLE `DuyetDon`
  MODIFY `ID_DuyetDon` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DuyetDotCong`
--
ALTER TABLE `DuyetDotCong`
  MODIFY `ID_DuyetDotCong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DuyetHopDong`
--
ALTER TABLE `DuyetHopDong`
  MODIFY `ID_DuyetHopDong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DuyetTangCa`
--
ALTER TABLE `DuyetTangCa`
  MODIFY `ID_DuyetTangCa` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `HopDong`
--
ALTER TABLE `HopDong`
  MODIFY `ID_HopDong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `KhoanLuong`
--
ALTER TABLE `KhoanLuong`
  MODIFY `ID_KhoanLuong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `NhanVien`
--
ALTER TABLE `NhanVien`
  MODIFY `ID_NhanVien` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `PhongBan`
--
ALTER TABLE `PhongBan`
  MODIFY `ID_PhongBan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  MODIFY `ID_TaiKhoan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `ThamSo`
--
ALTER TABLE `ThamSo`
  MODIFY `ID_ThamSo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ThanNhan`
--
ALTER TABLE `ThanNhan`
  MODIFY `ID_ThanNhan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `VaiTro`
--
ALTER TABLE `VaiTro`
  MODIFY `ID_VaiTro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `XacNhanChotCong`
--
ALTER TABLE `XacNhanChotCong`
  MODIFY `ID_XacNhanChotCong` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `YeuCauDoiMatKhau`
--
ALTER TABLE `YeuCauDoiMatKhau`
  MODIFY `ID_YeuCau` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ràng buộc đối với các bảng kết xuất
--

--
-- Ràng buộc cho bảng `BangLuong`
--
ALTER TABLE `BangLuong`
  ADD CONSTRAINT `bangluong_ibfk_1` FOREIGN KEY (`ID_NhanVien`) REFERENCES `NhanVien` (`ID_NhanVien`),
  ADD CONSTRAINT `bangluong_ibfk_2` FOREIGN KEY (`ID_HopDong`) REFERENCES `HopDong` (`ID_HopDong`),
  ADD CONSTRAINT `bangluong_ibfk_3` FOREIGN KEY (`ID_NguoiLap`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `BanQuanLy`
--
ALTER TABLE `BanQuanLy`
  ADD CONSTRAINT `banquanly_ibfk_1` FOREIGN KEY (`ID_NhanVien`) REFERENCES `NhanVien` (`ID_NhanVien`),
  ADD CONSTRAINT `banquanly_ibfk_2` FOREIGN KEY (`ID_NguoiQuanLy`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `CapNhatTienDo`
--
ALTER TABLE `CapNhatTienDo`
  ADD CONSTRAINT `capnhattiendo_ibfk_1` FOREIGN KEY (`ID_CongViec`) REFERENCES `CongViec` (`ID_CongViec`),
  ADD CONSTRAINT `capnhattiendo_ibfk_2` FOREIGN KEY (`ID_NguoiCapNhat`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `ChamCong`
--
ALTER TABLE `ChamCong`
  ADD CONSTRAINT `chamcong_ibfk_1` FOREIGN KEY (`ID_NhanVien`) REFERENCES `NhanVien` (`ID_NhanVien`),
  ADD CONSTRAINT `chamcong_ibfk_2` FOREIGN KEY (`ID_NguoiChamCong`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `ChiTietChotCong`
--
ALTER TABLE `ChiTietChotCong`
  ADD CONSTRAINT `chitietchotcong_ibfk_1` FOREIGN KEY (`ID_ChotCong`) REFERENCES `ChotCong` (`ID_ChotCong`),
  ADD CONSTRAINT `chitietchotcong_ibfk_2` FOREIGN KEY (`ID_ChamCong`) REFERENCES `ChamCong` (`ID_ChamCong`);

--
-- Ràng buộc cho bảng `ChotCong`
--
ALTER TABLE `ChotCong`
  ADD CONSTRAINT `chotcong_ibfk_1` FOREIGN KEY (`ID_NhanVien`) REFERENCES `NhanVien` (`ID_NhanVien`),
  ADD CONSTRAINT `chotcong_ibfk_2` FOREIGN KEY (`ID_PhongBan`) REFERENCES `PhongBan` (`ID_PhongBan`),
  ADD CONSTRAINT `chotcong_ibfk_3` FOREIGN KEY (`ID_NguoiChot`) REFERENCES `NhanVien` (`ID_NhanVien`),
  ADD CONSTRAINT `chotcong_ibfk_4` FOREIGN KEY (`ID_DotDuyetCong`) REFERENCES `DotDuyetCong` (`ID_DotDuyetCong`);

--
-- Ràng buộc cho bảng `ChucVu`
--
ALTER TABLE `ChucVu`
  ADD CONSTRAINT `fk_chucvu_congty` FOREIGN KEY (`ID_CongTy`) REFERENCES `CongTy` (`ID_CongTy`);

--
-- Ràng buộc cho bảng `CongTy`
--
ALTER TABLE `CongTy`
  ADD CONSTRAINT `congty_ibfk_1` FOREIGN KEY (`ID_CongTyCha`) REFERENCES `CongTy` (`ID_CongTy`);

--
-- Ràng buộc cho bảng `CongViec`
--
ALTER TABLE `CongViec`
  ADD CONSTRAINT `congviec_ibfk_1` FOREIGN KEY (`ID_NguoiGiao`) REFERENCES `NhanVien` (`ID_NhanVien`),
  ADD CONSTRAINT `congviec_ibfk_2` FOREIGN KEY (`ID_NguoiNhan`) REFERENCES `NhanVien` (`ID_NhanVien`),
  ADD CONSTRAINT `congviec_ibfk_3` FOREIGN KEY (`ID_CongViecCha`) REFERENCES `CongViec` (`ID_CongViec`);

--
-- Ràng buộc cho bảng `DangKyTangCa`
--
ALTER TABLE `DangKyTangCa`
  ADD CONSTRAINT `dangkytangca_ibfk_1` FOREIGN KEY (`ID_NhanVien`) REFERENCES `NhanVien` (`ID_NhanVien`),
  ADD CONSTRAINT `dangkytangca_ibfk_2` FOREIGN KEY (`ID_NguoiGiamSat`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `DonNghiPhep`
--
ALTER TABLE `DonNghiPhep`
  ADD CONSTRAINT `donnghiphep_ibfk_1` FOREIGN KEY (`ID_NhanVien`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `DotDuyetCong`
--
ALTER TABLE `DotDuyetCong`
  ADD CONSTRAINT `dotduyetcong_ibfk_1` FOREIGN KEY (`ID_PhongBan`) REFERENCES `PhongBan` (`ID_PhongBan`),
  ADD CONSTRAINT `dotduyetcong_ibfk_2` FOREIGN KEY (`ID_NguoiGui`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `DuyetCongViec`
--
ALTER TABLE `DuyetCongViec`
  ADD CONSTRAINT `duyetcongviec_ibfk_1` FOREIGN KEY (`ID_CongViec`) REFERENCES `CongViec` (`ID_CongViec`),
  ADD CONSTRAINT `duyetcongviec_ibfk_2` FOREIGN KEY (`ID_NguoiDuyet`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `DuyetDon`
--
ALTER TABLE `DuyetDon`
  ADD CONSTRAINT `duyetdon_ibfk_1` FOREIGN KEY (`ID_DonNghiPhep`) REFERENCES `DonNghiPhep` (`ID_DonNghiPhep`),
  ADD CONSTRAINT `duyetdon_ibfk_2` FOREIGN KEY (`ID_NguoiDuyet`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `DuyetDotCong`
--
ALTER TABLE `DuyetDotCong`
  ADD CONSTRAINT `duyetdotcong_ibfk_1` FOREIGN KEY (`ID_DotDuyetCong`) REFERENCES `DotDuyetCong` (`ID_DotDuyetCong`),
  ADD CONSTRAINT `duyetdotcong_ibfk_2` FOREIGN KEY (`ID_NguoiDuyet`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `DuyetHopDong`
--
ALTER TABLE `DuyetHopDong`
  ADD CONSTRAINT `duyethopdong_ibfk_1` FOREIGN KEY (`ID_HopDong`) REFERENCES `HopDong` (`ID_HopDong`),
  ADD CONSTRAINT `duyethopdong_ibfk_2` FOREIGN KEY (`ID_NguoiDuyet`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `DuyetTangCa`
--
ALTER TABLE `DuyetTangCa`
  ADD CONSTRAINT `duyettangca_ibfk_1` FOREIGN KEY (`ID_DangKy`) REFERENCES `DangKyTangCa` (`ID_DangKy`),
  ADD CONSTRAINT `duyettangca_ibfk_2` FOREIGN KEY (`ID_NguoiDuyet`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `HopDong`
--
ALTER TABLE `HopDong`
  ADD CONSTRAINT `hopdong_ibfk_1` FOREIGN KEY (`ID_NhanVien`) REFERENCES `NhanVien` (`ID_NhanVien`),
  ADD CONSTRAINT `hopdong_ibfk_2` FOREIGN KEY (`ID_BacLuong`) REFERENCES `BacLuong` (`ID_BacLuong`),
  ADD CONSTRAINT `hopdong_ibfk_3` FOREIGN KEY (`ID_NguoiLap`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `KhoanLuong`
--
ALTER TABLE `KhoanLuong`
  ADD CONSTRAINT `khoanluong_ibfk_1` FOREIGN KEY (`ID_BangLuong`) REFERENCES `BangLuong` (`ID_BangLuong`);

--
-- Ràng buộc cho bảng `NhanVien`
--
ALTER TABLE `NhanVien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`ID_CongTy`) REFERENCES `CongTy` (`ID_CongTy`),
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`ID_PhongBan`) REFERENCES `PhongBan` (`ID_PhongBan`),
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`ID_ChucVu`) REFERENCES `ChucVu` (`ID_ChucVu`);

--
-- Ràng buộc cho bảng `PhongBan`
--
ALTER TABLE `PhongBan`
  ADD CONSTRAINT `phongban_ibfk_1` FOREIGN KEY (`ID_CongTy`) REFERENCES `CongTy` (`ID_CongTy`),
  ADD CONSTRAINT `phongban_ibfk_2` FOREIGN KEY (`ID_PhongBanCha`) REFERENCES `PhongBan` (`ID_PhongBan`);

--
-- Ràng buộc cho bảng `TaiKhoan`
--
ALTER TABLE `TaiKhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`ID_NhanVien`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `TaiKhoan_VaiTro`
--
ALTER TABLE `TaiKhoan_VaiTro`
  ADD CONSTRAINT `taikhoan_vaitro_ibfk_1` FOREIGN KEY (`ID_TaiKhoan`) REFERENCES `TaiKhoan` (`ID_TaiKhoan`),
  ADD CONSTRAINT `taikhoan_vaitro_ibfk_2` FOREIGN KEY (`ID_VaiTro`) REFERENCES `VaiTro` (`ID_VaiTro`),
  ADD CONSTRAINT `taikhoan_vaitro_ibfk_3` FOREIGN KEY (`ID_NguoiCap`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `ThanNhan`
--
ALTER TABLE `ThanNhan`
  ADD CONSTRAINT `thannhan_ibfk_1` FOREIGN KEY (`ID_NhanVien`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `XacNhanChotCong`
--
ALTER TABLE `XacNhanChotCong`
  ADD CONSTRAINT `xacnhanchotcong_ibfk_1` FOREIGN KEY (`ID_ChotCong`) REFERENCES `ChotCong` (`ID_ChotCong`),
  ADD CONSTRAINT `xacnhanchotcong_ibfk_2` FOREIGN KEY (`ID_NguoiXacNhan`) REFERENCES `NhanVien` (`ID_NhanVien`);

--
-- Ràng buộc cho bảng `YeuCauDoiMatKhau`
--
ALTER TABLE `YeuCauDoiMatKhau`
  ADD CONSTRAINT `fk_ycdmk_taikhoan` FOREIGN KEY (`ID_TaiKhoan`) REFERENCES `TaiKhoan` (`ID_TaiKhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
