-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 23, 2023 lúc 03:24 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_web_ban_hang_dien_thoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(1, 4, 1, 31990000),
(7, 1, 2, 3490000),
(7, 11, 1, 17000000),
(8, 16, 1, 9750000),
(8, 4, 2, 26490000),
(11, 5, 1, 15990000),
(12, 2, 1, 13450000),
(13, 44, 1, 4290000),
(14, 49, 1, 16990000),
(15, 1, 1, 19490000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `MaSP` int(11) NOT NULL,
  `MaND` varchar(10) NOT NULL,
  `SoSao` int(11) NOT NULL,
  `BinhLuan` varchar(255) NOT NULL,
  `NgayLap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`MaSP`, `MaND`, `SoSao`, `BinhLuan`, `NgayLap`) VALUES
(4, '2', 4, 'Hoàng  đẹp trai', '2023-07-16 19:28:13'),
(4, '2', 1, 'Chưa tốt! cần cải thiện nhiều', '2023-07-16 19:29:30'),
(2, '2', 4, 'Giảm giá 500k , quá gắt <3', '2023-07-16 19:31:48'),
(46, '2', 4, 'Đỏ may mắn <3', '2023-07-16 19:32:58'),
(44, '4', 5, 'wow, giá rẻ cấu hình ngon đây rồi <3', '2023-07-16 19:38:03'),
(4, '4', 4, 'đẹp', '2023-07-16 19:47:56'),
(2, '4', 3, 'aaa sơn tùng <3', '2023-07-16 19:48:46'),
(44, '4', 3, 'Ram có 1GB tiếc quá', '2023-07-16 19:49:20'),
(46, '4', 2, 'Pin khá tệ ', '2023-07-16 19:49:44'),
(15, '4', 4, 'mua vài chục cái về cho con cháu chọi nhau chơi :v', '2023-07-16 19:52:14'),
(1, '2', 3, 'jj', '2023-07-21 11:11:41'),
(2, '4', 4, 'dep', '2023-07-23 10:44:15'),
(2, '4', 4, 'ds', '2023-07-23 10:46:45'),
(1, '2', 5, 'sản phẩm đẹp', '2023-07-23 13:03:26'),
(1, '2', 4, 'rẻ quá', '2023-07-23 13:03:41');

-- --------------------------------------------------------

-ss-
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(1, 2, '2023-07-20 04:33:11', 'Nguyen Danh', '0123456789', 'sghfd', 'Qua thẻ ngân hàng', 31340000, '1'),
(7, 2, '2023-07-20 04:34:48', 'Nguyen Danh', '0123456789', 'ư', 'Trực tiếp khi nhận h', 23330000, '1'),
(8, 2, '2023-07-22 19:29:42', 'Hoang Duy', '0123456789', 'sghfd', 'Trực tiếp khi nhận h', 61430000, '1'),
(10, 2, '2023-07-22 19:29:47', 'Hoang Duy', '0123456789', 'sghfd', 'Trực tiếp khi nhận h', 61430000, '1'),
(11, 2, '2023-07-22 19:30:49', 'Hoang Duy', '0123456789', 'ư', '', 15490000, '1'),
(12, 2, '2023-07-22 20:11:03', 'Hoang Duy', '0123456789', 'sghfd', '', 12950000, '1'),
(13, 2, '2023-07-22 20:13:11', 'Hoang Duy', '0123456789', 'd', 'Trực tiếp khi nhận h', 4290000, '1'),
(14, 4, '2023-07-23 09:40:53', 'Nguyễn Huệ', '01207764668', 'g', 'Trực tiếp khi nhận h', 16490000, '1'),
(15, 4, '2023-07-23 10:20:17', 'Nguyễn Huệ', '01207764668', 'h', 'Trực tiếp khi nhận h', 19490000, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float NOT NULL,
  `NgayBD` datetime NOT NULL,
  `NgayKT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `NgayKT`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2023-07-12 00:00:00', '2023-07-26 00:00:00'),
(2, 'Giảm giá', 'GiamGia', 500000, '2023-07-12 00:00:00', '2023-08-10 00:00:00'),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2023-07-12 00:00:00', '2023-08-10 00:00:00'),
(4, 'Trả góp', 'TraGop', 0, '2023-06-30 00:00:00', '2023-08-03 00:00:00'),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2023-07-13 00:00:00', '2023-07-25 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`) VALUES
(1, 'Apple', 'Appl.jpg', 'Các sản phẩm của Apple'),
(2, 'Realme', 'Realme.jpg', 'Các sản phẩm của Realme'),
(3, 'nuoio', 'Nuoio.jpg', 'Các sản phẩm đến từ Nuoio'),
(4, 'Asus', 'Asus.jpg', 'Các sản phẩm của Asus'),
(5, 'Tecno', 'Tecno.jpg', 'Các sản phẩm của Tecno'),
(6, 'Vivo', 'Vivo.jpg', 'Các sản phẩm của Vivo'),
(7, 'Oppo', 'Oppo.jpg', 'Camara Selphi cuc chat tu Oppo'),
(8, 'SamSung', 'SamSung.jpg', 'Khuyen mai lon tu SamSung'),
(9, 'Infinix', 'Infinix.jpg', 'Cac san pham tuyet dep tu Infinix'),
(10, 'Nokia', 'Noki.jpg', 'Các sản phẩm đến từ thương hiệu Nokia'),
(11, 'Oneplus', 'Oneplus.jpg', 'Các sản phẩm của Oneplus'),
(12, 'Masstel', 'Masstel.jpg', 'Các sản phẩm đến từ thương hiệu Masstel'),
(14, 'Xiaomi', 'Xiaomi.jpg', 'Các sản phẩm đến từ thương hiệu Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(2, 'Hoang', 'Duy', '', '0123456789', '', '', 'Abc', '202cb962ac59075b964b07152d234b70', 1, 1),
(4, 'Nguyễn', 'Huệ', '', '01207764668', '', '', 'Duy', '202cb962ac59075b964b07152d234b70', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh` varchar(200) NOT NULL,
  `MaKM` int(11) NOT NULL,
  `ManHinh` varchar(50) NOT NULL,
  `HDH` varchar(50) NOT NULL,
  `CamSau` varchar(400) NOT NULL,
  `CamTruoc` varchar(50) NOT NULL,
  `CPU` varchar(50) NOT NULL,
  `Ram` varchar(50) NOT NULL,
  `Rom` varchar(50) NOT NULL,
  `SDCard` varchar(50) NOT NULL,
  `Pin` varchar(50) NOT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`) VALUES
(1, 8, 'SamSung Galaxy s22 Ultra', 19490000, 10, 'img/products/samsungs22.jpg', 4, '6.8\',1440 x 3088 pixels (QHD+)', 'Android 12, One UI 4.1', '108 MP, f/1.8 góc rộng; 10 MP, f/4.9; 10 MP, f/2.4; 12 MP, f/2.2 góc siêu rộng', '40 MP, f/2.2', 'Snapdragon 8 Gen 1 (4 nm)', '12 GB', '256 GB', 'Không', '5000 mAh', 4, 3, 1),
(2, 7, 'OPPO Reno8 5G 8GB 256GB', 13450000, 10, 'img/products/o2.jpg', 2, 'AMOLED', '\nAndroid 12', 'Camera chính: 50 MP, f/1.8\nCamera phụ: 8 MP f/2.4\nCamera Marco: 2 MP f/2.2', '32 MP, f/2.4\n', 'MediaTek Helio P60 8 nhân 64-bit', '8 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3500 mAh, có sạc nhanh', 4, 4, 1),
(3, 10, 'Nokia C32 4GB 128GB', 2700000, 10, 'img/products/n2.jpg', 2, 'IPS LCD, 6.5\'', 'Android 13', 'Camera góc rộng: 50MP, AF\nCamera macro: 2 MP', '8 MP', 'Unisoc SC9863A (28nm)\n', '4 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '5050 mAh\n', 0, 0, 1),
(4, 1, 'iPhone 14 Pro Max 128GB | Chính hãng VN/A', 26490000, 10, 'img/products/iphone14.jpg', 3, '6.7\', Super Retina XDR OLED', 'iOS 16', 'Camera chính: 48 MP, f/1.8, 24mm, 1.22µm, PDAF, OIS\nCamera góc siêu rộng: 12 MP, f/2.2, 13mm, 120˚, 1.4µm, PDAF\nCamera tele: 12 MP, f/2.8, 77mm (telephoto), PDAF, OIS, 3x optical zoom\nCảm biến độ sâu TOF 3D LiDAR', 'Camera selfie: 12 MP, f/1.9, 23mm, 1/3.6\", PDAF', 'Apple A16 Bionic 6-core\n', '6 GB', '128 GB', 'Không', '4.323 mAh', 3, 3, 1),
(5, 8, 'Samsung Galaxy Z Flip4 128GB', 15990000, 10, 'img/products/samsungzl.jpg', 2, '6.7\', Dynamic AMOLED 2X', 'Android 12', 'Camera góc rộng: 12 MP, f/1.8, PDAF, OIS\nCamera góc siêu rộng: 12 MP, f/2.2, 123˚', '10 MP, f/2.4', 'Snapdragon 8+ Gen 1 8 nhân', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3700 mAh', 0, 0, 1),
(6, 8, 'Samsung Galaxy A54 8GB 256GB', 9990000, 10, 'img/products/ssa.jpg', 2, 'Super AMOLED, 6.4\'', 'Android 13', 'Camera góc rộng: 50 MP, f/1.8, PDAF, OIS\nCamera góc siêu rộng: 12MP, f/2.2, 123˚, 1.12µm\nCamera macro: 5MP, f/2.4', 'Camera góc rộng: 32 MP, f/2.2, 26mm, 1/2.8\"\n', 'Exynos 7885 8 nhân 64-bit', '6 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3500 mAh, có sạc nhanh', 0, 0, 1),
(7, 7, 'OPPO Find N2 Flip', 19990000, 10, 'img/products/o1.jpg', 4, 'AMOLED, 6.8\'', 'Android 13', 'Camera góc rộng: 50MP, f/1.8, 23mm, PDAF\nCamera góc siêu rộng 8MP, f/2.2, 112˚', 'Camera góc rộng: 32MP, f/2.4, 22mm, AF\n', 'MediaTek 9000+ (4nm)', '8 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4230 mAh', 0, 0, 1),
(8, 14, 'Xiaomi 12 Pro (5G)', 14990000, 10, 'img/products/x2.jpg', 4, '\nAMOLED', 'MIUI 14, Android 13\n', 'Camera chính: 50MP, f/1.8, HyperOIS\nCamera tele của Leica: 10MP, f/2.0, OIS\nCamera góc siêu rộng Leica: 12MP, f/2.2,', '24 MP', 'Chip Snapdragon® 8 thế hệ thứ 2\n', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 512 GB', '3300 mAh, có sạc nhanh', 0, 0, 1),
(9, 9, 'Infinix Hot 30i 4GB 128GB', 2300000, 10, 'img/products/ff.jpg', 4, '\nIPS LCD', '\nAndroid 12', '13 MP, f/1.85 và Ống kính Bokeh AI\n', '1.8 MP, f/2.0\n2 MP', 'Unisoc T606\n', '4GB + Mở rộng 4GB\n', '128 GB', 'Không', '5.000 mAh\n', 0, 0, 1),
(10, 14, 'Xiaomi 13 8GB 256GB', 18450000, 10, 'img/products/x1.jpg', 1, '\nAMOLED', 'MIUI 14, Android 13\n', 'Camera chính: 50MP, f/1.8, HyperOIS\nCamera tele của Leica: 10MP, f/2.0, OIS\nCamera góc siêu rộng Leica: 12MP, f/2.2,', '24 MP', 'Chip Snapdragon® 8 thế hệ thứ 2\n', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 512 GB', '3300 mAh, có sạc nhanh', 0, 0, 1),
(11, 1, 'iPhone 13 Pro Max 1TB I Chính hãng VN/A', 29490000, 10, 'img/products/iphone13.jpg', 3, '6.7\', Super Retina XDR OLED', 'iOS 15', 'Camera góc rộng: 12MP, ƒ/1.5\nCamera góc siêu rộng: 12MP, ƒ/1.8\nCamera tele : 12MP, /2.8', '\n12MP, ƒ/2.2', 'Apple A15', '6 GB', '1 T', 'Không', '4,352mAh', 0, 0, 1),
(15, 12, 'Masstel Lux 20 4G', 750000, 10, 'img/products/m.jpg', 5, 'Màn hình 2.4\", 16.7 triệu màu', 'Không', 'Không', 'Không', 'Unisoc T107', '48MB', '128 ', 'MicroSD, hỗ trợ tối đa 32 GB', '1800 mAh', 4, 1, 1),
(16, 14, 'Xiaomi 12T 8GB 128GB', 9750000, 10, 'img/products/x3.jpg', 5, '\nOLED', 'Android 12, MIUI 13\n', '108MP + 8MP + 2MP\n', '13 MP', 'MediaTek Dimensity 8100 Ultra\n', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 128 GB', '4000 mAh, có sạc nhanh', 0, 0, 1),
(17, 14, 'Xiaomi 13 Lite', 9650000, 10, 'img/products/x4.jpg', 1, '\nOLED', 'Android 12, MIUI 13\n', '108MP + 8MP + 2MP\n', '5 MP', 'MediaTek Dimensity 8100 Ultra\n', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '4000 mAh', 0, 0, 1),
(21, 10, 'Nokia G22 4GB 128GB', 3450000, 10, 'img/products/n1.jpg', 2, 'TFT LCD', 'Android™ 12', 'Camera chính: 50 MP, f/1.8\nCamera macro: 2 MP\nCamera đo độ sâu: 2 MP', '8 MP, FF f/2.0, 1.12µm CMOS\n', 'Unisoc T606', '4 GB', '256 GB', 'Không cần', '5050 mAh\n', 0, 0, 1),
(22, 8, 'Samsung Galaxy A34 5G 8GB 128GB', 7490000, 10, 'img/products/samsung8.jpg', 4, 'Super AMOLED, 6.6\', Full HD+', 'Android 13', 'Camera góc rộng: 48MP, f/1.8, 26mm , 1/2.0\", 0.8µm, PDAF, OIS\nCamera góc siêu rộng: 8MP, f/2.2, 123, 1/4.0\", 1.12µm\nCamera macro: 5MP, f/2.4', 'Camera góc rộng: 13MP, f/2.2, 1/3.1\", 1.12µm', '\nDimensity 1080 (5 nm)', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 512 GB', '3300 mAh', 0, 0, 1),
(30, 6, 'Vivo V27e 8GB 256GB', 8490000, 10, 'img/products/v1.jpg', 2, 'AMOLED, 6.62\'', 'Funtouch OS 13', 'Camera góc rộng: 64MP, f/1.8, PDAF, OIS\nCamera macro: 2MP, f/2.4\nCamera đo độ sâu: 2MP, f/2.4', '24 MP', 'Mediatek MT8781 Helio G99 (6nm)', '4 GB', '64 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3260 mAh', 0, 0, 1),
(31, 6, 'vivo V23e', 4490000, 10, 'img/products/v2.jpg', 4, 'AMOLED, 6.62\'', 'Funtouch OS 13', 'Camera góc rộng: 64MP, f/1.8, PDAF, OIS\nCamera macro: 2MP, f/2.4\nCamera đo độ sâu: 2MP, f/2.4', '25 MP', 'Mediatek MT8781 Helio G99 (6nm)', '6 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3400 mAh, có sạc nhanh', 0, 0, 1),
(32, 6, 'vivo Y22S 4GB 128GB', 5200000, 10, 'img/products/v3.jpg', 4, 'AMOLED, 6.62\'', 'Funtouch OS 13', 'Camera góc rộng: 64MP, f/1.8, PDAF, OIS\nCamera macro: 2MP, f/2.4\nCamera đo độ sâu: 2MP, f/2.4', '5 MP', 'Mediatek MT8781 Helio G99 (6nm)', '3 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3360 mAh', 0, 0, 1),
(33, 6, 'vivo T1X', 3690000, 10, 'img/products/v4.jpg', 2, 'AMOLED, 6.62\'', 'Funtouch OS 13', 'Camera góc rộng: 64MP, f/1.8, PDAF, OIS\nCamera macro: 2MP, f/2.4\nCamera đo độ sâu: 2MP, f/2.4', '8 MP', 'Mediatek MT8781 Helio G99 (6nm)', '4 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 256 GB', '3260 mAh', 0, 0, 1),
(34, 5, 'Tecno Camon 20 Pro', 5000000, 10, 'img/products/t1.jpg', 1, '\nAMOLED, 6.88\'', 'Android™ 12', '\n50MP', '\n8MP', 'Helio G99 6nm', '8 GB', '256 GB', 'Không', '3200 mAh', 0, 0, 1),
(35, 5, 'Tecno Pova 4 Pro 8GB 256GB', 5200000, 10, 'img/products/t2.jpg', 1, 'AMOLED, 6.88\'', 'Android™ 12', '\n50MP', '\n8MP', 'Helio G99 6nm', '8 GB', '256 GB', 'Không', '5000 mAh', 0, 0, 1),
(36, 5, 'Tecno Spark 10 Pro 8GB 128GB\\', 3600000, 10, 'img/products/t3.jpg', 5, 'AMOLED, 6.88\'', 'Android™ 12', '\n50MP', '\n8MP', 'Helio G99 6nm', '8 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2650 mAh', 0, 0, 1),
(37, 4, 'ASUS ROG Phone 7 Ultimate 16GB 512GB', 29990000, 10, 'img/products/a1.jpg', 1, 'AMOLED, 6.78\'', '\nAndroid 13', 'Camera góc rộng: 50 MP, f/1.9\nCamera góc siêu rộng: 13 MP\nCamera Macro: 5 MP', '\n32 MP', 'Qualcomm Snapdragon 8 Gen2\n', '16 GB\n', '256 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '4000 mAh', 0, 0, 1),
(38, 4, 'ASUS ROG Phone 6 16GB 512GB - Chỉ có tại CellphoneS', 17000000, 10, 'img/products/a2.jpg', 5, 'AMOLED, 6.78\'', '\nAndroid 13', 'Camera góc rộng: 50 MP, f/1.9\nCamera góc siêu rộng: 13 MP\nCamera Macro: 5 MP', '\n32 MP', 'MediaTek MT6580 4 nhân 32-bit', '16 GB\n', '256 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '2050 mAh', 0, 0, 1),
(39, 4, 'ASUS ROG Phone 7 16GB 512GB', 24490000, 10, 'img/products/a3.jpg', 1, 'AMOLED, 6.78\'', '\nAndroid 13', 'Camera góc rộng: 50 MP, f/1.9\nCamera góc siêu rộng: 13 MP\nCamera Macro: 5 MP', '\n32 MP', 'Qualcomm Snapdragon 8 Gen2\n', '16 GB\n', '256 GB', 'Không', '1000 mAh', 0, 0, 1),
(40, 4, 'ASUS ROG Phone 6 Batman 12GB 256GB', 16990000, 10, 'img/products/a4.jpg', 5, 'AMOLED, 6.78\'', '\nAndroid 13', 'Camera góc rộng: 50 MP, f/1.9\nCamera góc siêu rộng: 13 MP\nCamera Macro: 5 MP', '\n32 MP', 'Qualcomm Snapdragon 8 Gen2\n', '16 GB\n', '256 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '1000 mAh', 0, 0, 1),
(41, 2, 'realme 10 8GB 256GB', 5390000, 10, 'img/products/r1.jpg', 5, 'Super AMOLED, 6.4\'', 'Android 12, Realme UI 3.0', '\nCamera chính AI: 50MP, f/1.8\nCamera chân dung: 2MP, f/2.4', '\n\n16 MP, f/2.5', 'Helio G99 (6nm)', '8 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '5.000 mAh', 0, 0, 1),
(42, 3, 'Nubia Red Magic 7 Supernova 18GB 256GB', 21490000, 10, 'img/products/n.jpg', 5, 'AMOLED, 6.8\'', 'Android 12, Redmagic 5.0', 'Camera góc rộng: 64 MP, f/1.8, PDAF\nCamera góc siêu rộng: 8 MP, f/2.0\nCamera macro: 2 MP, f/2.4', '8 MP, f/2.0\n', 'Qualcomm SM8450 Snapdragon 8 Gen 1', '8 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 512 GB', 'Li-Po 4500 mAh', 0, 0, 1),
(43, 2, 'realme 9 Pro Plus', 5490000, 10, 'img/products/r2.jpg', 5, 'Super AMOLED, 6.4\'', '\nUI 3.0, Android 12', 'Camera chính: 50MP, f/1.8\nCamera macro: 2MP, f/2.4\nCamera góc rộng: 8MP, 119°, f/2.2', '\n16MP, f/2.4', 'MediaTek Dimensity 920 5G', '8 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '4500 mAh', 0, 0, 1),
(44, 2, 'realme C55 6GB 128GB', 4290000, 10, 'img/products/r3.jpg', 5, '\nAMOLED', 'Android 13', 'Camera chính 64 MP\nCamera phụ 2 MP', '8 MP', 'Helio G88', '6 GB', '128 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '5000mAh', 4, 2, 1),
(45, 11, 'OnePlus 11 16GB 256GB', 19450000, 10, 'img/products/op1.jpg', 1, '\nFluid AMOLED', 'OxygenOS trên nền tảng Android™ 13\n', 'Camera góc rộng: 50MP, Laser AF, OIS\nCamera tele: 32MP, PDAF, OIS, zoom quang 2x\nCamera góc siêu rộng: 48MP, AF', 'Camera góc rộng: 16 MP, ƒ/2.45 hỗ trợ EIS\n', 'Snapdragon 8 Gen 2 (4 nm)\n', '16 GB', '256 GB', 'MicroSD, hỗ trợ tối đa 32 GB', '5000 mAh\n', 0, 0, 1),
(46, 1, 'iPhone Xr 256GB', 19490000, 10, 'img/products/iphonexr2.jpg', 3, 'IPS LCD, 6.1\', IPS LCD, 16 triệu màu', 'iOS 12', '12 MP', '7 MP', 'Apple A12 Bionic 6 nhân', '3 GB', '128 GB', 'Không', '2942 mAh, có sạc nhanh', 3, 2, 1),
(47, 1, ' iPhone 8 Plus 64GB', 4050000, 10, 'img/products/iphone8.jpg', 4, 'LED-backlit IPS LCD, 5.5\', Retina HD', 'iOS 11', '2 camera 12 MP', '7 MP', 'Apple A11 Bionic 6 nhân', '3 GB', '64 GB', 'Không', '2691 mAh, có sạc nhanh', 0, 0, 1),
(48, 1, 'iPhone Xr 64GB', 17000000, 10, 'img/products/iphonexr.jpg', 3, 'IPS LCD, 6.1\', IPS LCD, 16 triệu màu', 'iOS 12', '12 MP', '7 MP', 'Apple A12 Bionic 6 nhân', '3 GB', '64 GB', '', '2942 mAh, có sạc nhanh', 0, 0, 1),
(49, 1, '\niPhone 12 256GB I Chính hãng VN/A', 16990000, 10, 'img/products/iphone12.jpg', 2, '6.1\', Super Retina XDR OLED', 'iOS 14.1', '12 MP', '7 MP', 'Apple A14 Bionic (5 nm)', '4 GB', '256 GB', 'Không', '2942 mAh, có sạc nhanh', 0, 0, 1),
(50, 1, 'IPhone x', 12000000, 1, 'img/products/ix.jpg', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1),
(51, 8, 'Samsung a72', 30000000, 0, '', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaND`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`),
  ADD KEY `MaQuyen` (`MaQuyen`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `LoaiSP` (`MaLSP`),
  ADD KEY `MaKM` (`MaKM`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
