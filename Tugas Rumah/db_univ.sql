-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 09:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_univ`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_ambil_mk`
--

CREATE TABLE `t_ambil_mk` (
  `nip` varchar(5) NOT NULL,
  `kd_mk` varchar(10) NOT NULL,
  `ruangan` char(5) NOT NULL,
  `jml_mhs` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_ambil_mk`
--

INSERT INTO `t_ambil_mk` (`nip`, `kd_mk`, `ruangan`, `jml_mhs`) VALUES
('3', 'PTI101', 'H5211', 40),
('2', 'PTI102', 'H5212', 45),
('2', 'PTI103', 'H5206', 40),
('1', 'IS101', '17312', 30);

-- --------------------------------------------------------

--
-- Table structure for table `t_instruktur`
--

CREATE TABLE `t_instruktur` (
  `nip` varchar(5) NOT NULL,
  `nama_ins` varchar(100) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `asal_kota` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_instruktur`
--

INSERT INTO `t_instruktur` (`nip`, `nama_ins`, `jurusan`, `asal_kota`) VALUES
('1', 'Muhammad Akbar', 'Ilmu Sejarah', 'Malang'),
('2', 'Saichul Fitrian A.', 'Ilmu Komputer', 'Malang'),
('3', 'Annafia Oktafian', 'Ilmu Komputer', 'Klaten'),
('4', 'Budy Pratama', 'Ilmu Komputer', 'Magelang');

-- --------------------------------------------------------

--
-- Table structure for table `t_matakuliah`
--

CREATE TABLE `t_matakuliah` (
  `kd_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_matakuliah`
--

INSERT INTO `t_matakuliah` (`kd_mk`, `nama_mk`, `sks`) VALUES
('IS101', 'Sejarah Indonesia', 3),
('PTI101', 'Algoritma dan Pemograman', 3),
('PTI102', 'Basis Data', 3),
('PTI103', 'Visual Basic', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_instruktur`
--
ALTER TABLE `t_instruktur`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `t_matakuliah`
--
ALTER TABLE `t_matakuliah`
  ADD PRIMARY KEY (`kd_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
