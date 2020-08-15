-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 02:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php0620e_manager_itplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diemthi`
--

CREATE TABLE `tbl_diemthi` (
  `idHV` int(11) NOT NULL,
  `idMH` int(11) NOT NULL,
  `point` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_diemthi`
--

INSERT INTO `tbl_diemthi` (`idHV`, `idMH`, `point`, `status`) VALUES
(1, 1, 10, 1),
(2, 3, 8, 1),
(3, 2, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khoa`
--

CREATE TABLE `tbl_khoa` (
  `idKhoa` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_khoa`
--

INSERT INTO `tbl_khoa` (`idKhoa`, `title`, `description`, `status`, `create_at`) VALUES
(1, 'Công nghệ thông tin', 'Học về lập trình', 1, '2020-08-15 19:16:49'),
(2, 'Kế toán kiểm toán', 'Học về kế toán', 1, '2020-08-15 19:17:11'),
(3, 'Thiết kế đồ họa', 'Học về đồ họa', 1, '2020-08-15 19:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_monhoc`
--

CREATE TABLE `tbl_monhoc` (
  `idMH` int(11) NOT NULL,
  `title_learn` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `times` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_monhoc`
--

INSERT INTO `tbl_monhoc` (`idMH`, `title_learn`, `description`, `times`, `status`) VALUES
(1, 'Học lập trình PHP', 'Học code', 120, 1),
(2, 'Học PhotoShop', 'Học thiết kế đồ họa 2D', 120, 1),
(3, 'Học lập trình IOS', 'Học code', 110, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sinhvien`
--

CREATE TABLE `tbl_sinhvien` (
  `idHV` int(11) NOT NULL,
  `idKhoa` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `addres` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Lưu thông tin học viên';

--
-- Dumping data for table `tbl_sinhvien`
--

INSERT INTO `tbl_sinhvien` (`idHV`, `idKhoa`, `name`, `phone`, `email`, `addres`, `birthday`, `status`, `create_at`) VALUES
(1, 1, 'Trịnh Khắc Tùng', '0989888999', 'khactung7@gmail.com', 'Hà Nội', '1990-08-05 00:00:00', 1, '2020-08-15 19:18:30'),
(2, 1, 'Cao Văn Nam', '0989888789', 'vannam@gmail.com', 'Hà Nam', '1992-09-05 00:00:00', 1, '2020-08-14 19:18:30'),
(3, 3, 'Cao Văn Minh', '0987657456', 'vanminh@gmail.com', 'Hà Trung', '1992-08-01 00:00:00', 1, '2020-08-15 19:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_users` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passw` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id_users`, `name`, `phone`, `email`, `passw`, `status`, `create_at`) VALUES
(1, 'Adminitstrator', '0987888999', 'admin@gmail.com', '0b3bc9ce555f07d127c6da44337e364f', 1, '2020-08-15 19:26:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_diemthi`
--
ALTER TABLE `tbl_diemthi`
  ADD KEY `idHV` (`idHV`),
  ADD KEY `idMH` (`idMH`);

--
-- Indexes for table `tbl_khoa`
--
ALTER TABLE `tbl_khoa`
  ADD PRIMARY KEY (`idKhoa`);

--
-- Indexes for table `tbl_monhoc`
--
ALTER TABLE `tbl_monhoc`
  ADD PRIMARY KEY (`idMH`);

--
-- Indexes for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  ADD PRIMARY KEY (`idHV`),
  ADD KEY `idKhoa` (`idKhoa`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_khoa`
--
ALTER TABLE `tbl_khoa`
  MODIFY `idKhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_monhoc`
--
ALTER TABLE `tbl_monhoc`
  MODIFY `idMH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  MODIFY `idHV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_diemthi`
--
ALTER TABLE `tbl_diemthi`
  ADD CONSTRAINT `tbl_diemthi_ibfk_1` FOREIGN KEY (`idHV`) REFERENCES `tbl_sinhvien` (`idHV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_diemthi_ibfk_2` FOREIGN KEY (`idMH`) REFERENCES `tbl_monhoc` (`idMH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  ADD CONSTRAINT `fk_idKhoa_khoa_hocvien` FOREIGN KEY (`idKhoa`) REFERENCES `tbl_khoa` (`idKhoa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
