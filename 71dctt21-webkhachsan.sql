-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2023 at 04:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `71dctt21-webkhachsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietphong`
--

CREATE TABLE `chitietphong` (
  `ID` int(10) NOT NULL,
  `ID_Phong` int(10) NOT NULL,
  `TenPhong` varchar(50) NOT NULL,
  `NguoiMax` int(10) NOT NULL,
  `LoaiGiuong` varchar(50) NOT NULL,
  `GiaPhong` varchar(10) NOT NULL,
  `SoLuongPhong` int(10) NOT NULL,
  `IMG` varchar(50) NOT NULL,
  `DienTich` varchar(50) NOT NULL,
  `TamNhin` varchar(50) NOT NULL,
  `MoTa` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietphong`
--

INSERT INTO `chitietphong` (`ID`, `ID_Phong`, `TenPhong`, `NguoiMax`, `LoaiGiuong`, `GiaPhong`, `SoLuongPhong`, `IMG`, `DienTich`, `TamNhin`, `MoTa`) VALUES
(1, 1, 'Deluxe Single', 2, '1 giường đơn', '2500000', 10, '../img/roomstyle/junior_suite.jpg', '32m', '14:12', '0'),
(2, 1, 'Deluxe Twin', 3, '2 giường đơn', '3200000', 3, '../img/allroom/Deluxe_room1.jpg', '42m', 'Ra biển ', '0'),
(3, 1, 'Deluxe Double', 3, '1 giường đôi và 1 giường đơn', '3200000', 0, '../img/allroom/family_room.jpg', '42m', '12:10', '0'),
(4, 1, 'Deluxe Triple', 4, '1 giường đôi và 2 giường đơn', '5800000', 5, '../img/allroom/family_room1.jpg', '45m', '12:12', '0'),
(5, 2, 'Executive Twin', 3, '2 giường đơn', '8600000', 3, '../img/allroom/Junior_suite.jpg', '50m', '14:12', '0'),
(6, 2, 'Executive Double', 3, '1 giường đôi và 1 giường đơn', '9400000', 0, '../img/allroom/Single_room.jpg', '50m', '14:10', '0'),
(7, 2, 'Executive Triple', 4, '1 giường đôi và 2 giường đơn', '10100000', 11, '../img/allroom/Standard_room.jpg', '56m', '12:10', '0'),
(8, 2, 'Executive Connecting', 6, '2 giường đôi và 2 giường đơn', '18200000', 7, '../img/allroom/Standard_room1.jpg', '64m', '14:12', '0'),
(9, 3, 'Suite Twin', 3, '2 giường đơn', '18900000', 5, '../img/allroom/Superior_suite.jpg', '56m', '14:10', '0'),
(10, 3, 'Suite Double', 3, '1 giường đôi và 1 giường đơn', '20700000', 13, '../img/roomstyle/double_room.jpg', '56m', '12:10', '0'),
(11, 3, 'Suite Triple', 4, '1 giường đôi và 2 giường đơn', '22200000', 5, '../img/roomstyle/small_suite.jpg', '65m', '12:12', '0'),
(12, 3, 'Suite Connecting', 6, '2 giường đôi và 2 giường đơn', '39500000', 9, '../img/roomstyle/junior_suite.jpg', '72m', '14:10', '0');

-- --------------------------------------------------------

--
-- Table structure for table `chitietthanhtoan`
--

CREATE TABLE `chitietthanhtoan` (
  `MaDonHang` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `SDT` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `TenPhong` varchar(20) NOT NULL,
  `SoLuongNguoi` int(10) NOT NULL,
  `SoTienPhaiTra` varchar(20) NOT NULL,
  `phuongthucthanhtoan` varchar(100) NOT NULL,
  `NgayDen` datetime NOT NULL,
  `NgayDi` datetime NOT NULL,
  `NgayTT` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietthanhtoan`
--

INSERT INTO `chitietthanhtoan` (`MaDonHang`, `HoTen`, `SDT`, `Email`, `TenPhong`, `SoLuongNguoi`, `SoTienPhaiTra`, `phuongthucthanhtoan`, `NgayDen`, `NgayDi`, `NgayTT`) VALUES
(18, 'Trương Bá Cát Trường', '36845885', 'trương@gmail.com', 'Executive Connecting', 4, '17437500', 'Thanh toán bằng QR-Pay', '2022-12-07 00:00:00', '2022-12-08 00:00:00', '0000-00-00 00:00:00'),
(156, 'Nguyễn Thị Thùy Dung', '0394407543', 'nguyenthuydungtstb@gmail.com', 'Executive Triple', 1, '9595000', 'Thẻ ATM/Tài khoản ngân hàng', '2022-12-07 12:52:00', '2022-12-08 12:52:00', '2022-12-06 07:17:11'),
(184, 'Nguyễn Thị Thùy Dung', '0394407543', 'nguyenthuydungtstb@gmail.com', 'Executive Twin', 3, '8850000', 'Thẻ Visa, Master Card', '2022-12-16 00:56:00', '2022-12-17 00:56:00', '2022-12-08 06:57:00'),
(185, 'Nguyễn Thị Thùy Dung', '0394407543', 'nguyenthuydungtstb@gmail.com', 'Executive Triple', 3, '67165000', 'Thẻ Visa, Master Card', '2022-12-08 16:26:00', '2022-12-15 16:26:00', '2022-12-10 10:28:00'),
(186, 'Nguyễn Thị Thùy Dung', '0394407543', 'nguyenthuydungtstb@gmail.com', 'Executive Twin', 3, '16625000', 'Thẻ ATM/Tài khoản ngân hàng', '2023-08-10 21:29:00', '2023-08-12 21:29:00', '2023-08-08 04:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `ID` int(11) NOT NULL,
  `TenDichVu` varchar(50) NOT NULL,
  `DonGia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`ID`, `TenDichVu`, `DonGia`) VALUES
(1, 'Extrabed', '300000'),
(2, 'Xe đưa đón sân bay', '250000');

-- --------------------------------------------------------

--
-- Table structure for table `douong`
--

CREATE TABLE `douong` (
  `ID` int(11) NOT NULL,
  `TenDoUong` varchar(50) NOT NULL,
  `Gia` varchar(50) NOT NULL,
  `IMG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `douong`
--

INSERT INTO `douong` (`ID`, `TenDoUong`, `Gia`, `IMG`) VALUES
(1, 'Sprite', '22000 VNĐ', 'Spite.jpg'),
(2, 'Bia', '25000 VNĐ', 'Bia.jpg'),
(3, 'Coca Cola', '20000 VNĐ', 'Coca cola.jpg'),
(4, 'Pepsi', '20000 VNĐ', 'Pepsi.jpg'),
(5, 'Rượu Vang', '300000 VNĐ', 'Rượu vang.jpg'),
(6, 'Rượu Voodka', '300000 VNĐ', 'Rượu voodka.jpg'),
(7, 'Soda', '20000 VNĐ', 'Soda.jpg'),
(8, 'Whisky', '400000 VNĐ', 'Whisky.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `monchinh`
--

CREATE TABLE `monchinh` (
  `ID` int(11) NOT NULL,
  `TenMon` varchar(50) NOT NULL,
  `Gia` varchar(50) NOT NULL,
  `IMG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monchinh`
--

INSERT INTO `monchinh` (`ID`, `TenMon`, `Gia`, `IMG`) VALUES
(1, 'Mực Hấp Gừng', '180000 VNĐ', 'Mực hấp gừng.jpg'),
(3, 'Bò né', '200000 VNĐ', 'Bò né.jpg'),
(4, 'Cá bớp nướng muối ớt xanh', '250000 VNĐ', 'Cá bớp nướng muối ớt xanh.jpg'),
(5, 'Cá lóc hấp bầu', '200000 VNĐ', 'Cá lóc hấp bầu.png'),
(6, 'Cá tầm sốt nấm tiêu đen', '300000 VNĐ', 'Cá tầm sốt nấm tiêu đen đút lò.jpg'),
(7, 'Gà bó xôi', '180000 VNĐ', 'Gà bó xôi.jpg'),
(8, 'Lẩu cá thác lác', '250000 VNĐ', 'Lẩu cá thác lác.jpg'),
(9, 'Lẩu gà lá giang', '250000 VNĐ', 'Lẩu gà lá giang.png'),
(10, 'Mực hấp rim mắm tỏi', '120000 VNĐ', 'Mực hấp rim mắm tỏi.jpg'),
(11, 'Mực xào sa tế', '120000 VNĐ', 'Mực xào sa tế.png'),
(12, 'Sườn bò hầm táo đỏ', '500000 VNĐ', 'Sườn bò hầm táo đỏ.jpg'),
(13, 'Sườn sốt bbq đút lò', '500000 VNĐ', 'Sườn sốt BBQ đút lò.jpg'),
(14, 'Thăn heo sốt nho', '400000 VNĐ', 'Thăn heo đút lò sốt nho.png'),
(15, 'Vịt nướng tiêu đen', '300000 VNĐ', 'Vịt nướng tiêu đen.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `monkhaivi`
--

CREATE TABLE `monkhaivi` (
  `ID` int(11) NOT NULL,
  `TenMon` varchar(50) NOT NULL,
  `Gia` varchar(50) NOT NULL,
  `IMG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monkhaivi`
--

INSERT INTO `monkhaivi` (`ID`, `TenMon`, `Gia`, `IMG`) VALUES
(1, 'Salad rau củ', '50000 VNĐ', 'Sallat rau củ.png'),
(2, 'Gỏi Bưởi Tôm Mực', '100000 VNĐ', 'Gỏi bưởi tôm mực.jpg'),
(3, 'Bánh Korokke nhân thịt bò', '120000 VNĐ', 'Bánh Korokke nhân thịt bò.jpg'),
(4, 'Bánh xếp nhân thịt', '70000VNĐ', 'Bánh xếp nhân thịt heo chiên giòn.jpg'),
(5, 'Càng cua bách hoa', '150000 VNĐ', 'Càng cua bách hoa.jpg'),
(6, 'Gỏi bò bóp thấu', '150000 VNĐ', 'Gỏi bò bóp thấu.jpg'),
(7, 'Gỏi ngó sen tôm thịt', '100000 VNĐ', 'Gỏi ngó sen tôm thịt.jpg'),
(8, 'Gỏi ngũ sắc hải sản', '80000 VNĐ', 'Gỏi ngũ sắc hải sản.jpg'),
(9, 'Gỏi ngự tiến tôm thịt', '200000 VNĐ', 'Gỏi ngự tiến tôm thịt.jpg'),
(10, 'Salad hải sản chua cay', '100000 VNĐ', 'Sallat hải sản chua cay.jpg'),
(11, 'Sú ghẹ nấm đông cô', '150000 VNĐ', 'Sú ghẹ nấm đông cô.jpg'),
(12, 'Súp cua', '100000 VNĐ', 'Súp cua.jpg'),
(13, 'Súp gà nấm hương', '100000 VNĐ', 'Súp gà nấm hương.jpg'),
(14, 'Thịt nguội bát bửu', '200000 VNĐ', 'Thịt nguội bát bửu.jpg'),
(15, 'Tôm chiên xù', '100000 VNĐ', 'Tôm chiên xù.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `monnoibat`
--

CREATE TABLE `monnoibat` (
  `ID` int(11) NOT NULL,
  `TenMon` varchar(50) NOT NULL,
  `Gia` varchar(50) NOT NULL,
  `IMG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monnoibat`
--

INSERT INTO `monnoibat` (`ID`, `TenMon`, `Gia`, `IMG`) VALUES
(1, 'Bánh xếp nhân thịt', '70000 VNĐ', 'noibat3.jpg'),
(2, 'Tôm Chiên Xù', '100000 VNĐ', 'noibat2.png'),
(3, 'Bánh Korokke nhân thịt bò', '120000 VNĐ', 'noibat1.png'),
(4, 'Bò né', '200000 VNĐ', 'Bò né.jpg'),
(5, 'Gỏi ngũ sắc hải sản', '80000 VNĐ', 'Gỏi ngũ sắc hải sản.jpg'),
(6, 'Súp cua', '100000 VNĐ', 'Súp cua.jpg'),
(7, 'Salad rau củ', '120000 VNĐ', 'Sallat rau củ.png'),
(8, 'Càng cua bách hoa', '150000 VNĐ', 'Càng cua bách hoa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `montrangmieng`
--

CREATE TABLE `montrangmieng` (
  `ID` int(11) NOT NULL,
  `TenMon` varchar(50) NOT NULL,
  `Gia` varchar(50) NOT NULL,
  `IMG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `montrangmieng`
--

INSERT INTO `montrangmieng` (`ID`, `TenMon`, `Gia`, `IMG`) VALUES
(1, 'Bánh Mochi', '30000 VNĐ', 'Bánh Mochi.jpg'),
(2, 'Bánh Su Kem', '30000 VNĐ', 'Bánh su kem.jpg'),
(3, 'Bánh Cupcake Socola', '50000 VNĐ', 'Bánh cupcake socola.jpg'),
(4, 'Bánh tuyết thiên sứ', '40000 VNĐ', 'Bánh tuyết thiên sứ.jpg'),
(5, 'Chè dưỡng nhan', '80000 VNĐ', 'Chè dưỡng nhan.jpg'),
(6, 'Chè hạt sen nấm tuyết', '50000 VNĐ', 'Chè hạt sen nấm tuyết.jpg'),
(7, 'Chè khúc bạch', '50000 VNĐ', 'Chè khúc bạch.jpg'),
(8, 'Rau câu hoa đậu biếc', '40000 VNĐ', 'Rau câu hoa đậu biếc.png'),
(9, 'Trái Cây', '100000 VNĐ', 'Trái cây.jpg'),
(10, 'Yogurt', '30000 VNĐ', 'Yaourt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `ID` int(50) NOT NULL,
  `LoaiPhong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`ID`, `LoaiPhong`) VALUES
(1, 'Deluxe'),
(2, 'Executive'),
(3, 'Suite ');

-- --------------------------------------------------------

--
-- Table structure for table `quanlytaikhoan`
--

CREATE TABLE `quanlytaikhoan` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `CMND` int(12) NOT NULL,
  `PassWord` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quanlytaikhoan`
--

INSERT INTO `quanlytaikhoan` (`ID`, `HoTen`, `SDT`, `Email`, `CMND`, `PassWord`) VALUES
(1, 'Nguyễn Thị Thùy Dung', '0394407543', 'nguyenthuydungtstb@gmail.com', 343025555, '15022002'),
(2, 'Trương Bá Cát Trường', '36845885', 'truong@gmail.com', 2147483647, '15022002'),
(11, 'Cấn Minh Quang', '562656384', '', 1453565, '15022002'),
(12, 'Trịnh Tiến Quang', '2147483647', 'quang@gmail.com', 2147483647, '15022002'),
(42, 'Lê Lan Hương ', '0389880126', 'lanhuong@gmail.com', 123456879, '1'),
(43, 'sa', '232323', 'ss@gmail.com', 232322, '1');

-- --------------------------------------------------------

--
-- Table structure for table `setbuffet`
--

CREATE TABLE `setbuffet` (
  `ID` int(11) NOT NULL,
  `TenSet` varchar(50) NOT NULL,
  `Gia` varchar(50) NOT NULL,
  `IMG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setbuffet`
--

INSERT INTO `setbuffet` (`ID`, `TenSet`, `Gia`, `IMG`) VALUES
(1, 'Set 1', '499000 VNĐ', 'Set1.jpg'),
(2, 'Set 2', '799000 VNĐ', 'Set2.jpg'),
(3, 'Set 3', '999000 VNĐ', 'Set5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoanadmin`
--

CREATE TABLE `taikhoanadmin` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `SDT` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoanadmin`
--

INSERT INTO `taikhoanadmin` (`ID`, `HoTen`, `SDT`, `Email`, `PassWord`) VALUES
(1, 'Bá Trường', '012345678', 'buck0503@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietphong`
--
ALTER TABLE `chitietphong`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chitietthanhtoan`
--
ALTER TABLE `chitietthanhtoan`
  ADD PRIMARY KEY (`MaDonHang`);

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `douong`
--
ALTER TABLE `douong`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `monchinh`
--
ALTER TABLE `monchinh`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `monkhaivi`
--
ALTER TABLE `monkhaivi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `monnoibat`
--
ALTER TABLE `monnoibat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `montrangmieng`
--
ALTER TABLE `montrangmieng`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `quanlytaikhoan`
--
ALTER TABLE `quanlytaikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `setbuffet`
--
ALTER TABLE `setbuffet`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietthanhtoan`
--
ALTER TABLE `chitietthanhtoan`
  MODIFY `MaDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `douong`
--
ALTER TABLE `douong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `monchinh`
--
ALTER TABLE `monchinh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `monkhaivi`
--
ALTER TABLE `monkhaivi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `monnoibat`
--
ALTER TABLE `monnoibat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `montrangmieng`
--
ALTER TABLE `montrangmieng`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quanlytaikhoan`
--
ALTER TABLE `quanlytaikhoan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `setbuffet`
--
ALTER TABLE `setbuffet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taikhoanadmin`
--
ALTER TABLE `taikhoanadmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
