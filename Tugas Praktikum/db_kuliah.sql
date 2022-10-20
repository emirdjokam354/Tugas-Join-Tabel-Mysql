-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 09:55 AM
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
-- Database: `db_kuliah`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambil_mk`
--

CREATE TABLE `ambil_mk` (
  `id` int(11) NOT NULL,
  `Nim` varchar(5) NOT NULL,
  `kode_mk` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambil_mk`
--

INSERT INTO `ambil_mk` (`id`, `Nim`, `kode_mk`) VALUES
(1, '101', 'PTI447'),
(2, '103', 'TIK333'),
(3, '104', 'PTI333'),
(4, '104', 'PTI777'),
(5, '107', 'PTI123'),
(6, '106', 'TIK123');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(6) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `sks` char(1) NOT NULL,
  `semester` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('PTI123', 'Grafika Multimedia', '3', '5'),
('PTI333', 'Basis Data Terdistribusi', '3', '5'),
('PTI447', 'Praktikum Basis Data', '1', '3'),
('PTI777', 'Sistem Informasi', '2', '3'),
('TIK122', 'Cyber Security', '3', '4'),
('TIK123', 'Jaringan Komputer', '2', '5'),
('TIK333', 'Sistem Operasi', '3', '5'),
('TIK342', 'Praktikum Basis Data', '1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `t_mahasiswa`
--

CREATE TABLE `t_mahasiswa` (
  `Nim` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_mahasiswa`
--

INSERT INTO `t_mahasiswa` (`Nim`, `nama`, `jenis_kelamin`, `alamat`) VALUES
('101', 'Arif', 'L', 'Jl. Kenangan'),
('102', 'Budi', 'L', 'Jl. Jombang'),
('103', 'Wati', 'P', 'Jl. Surabaya'),
('104', 'Ika', 'P', 'Jl. Jombang'),
('105', 'Tono', 'L', 'Jl. Jakarta'),
('106', 'Iwan', 'L', 'Jl. Bandung'),
('107', 'Sari', 'P', 'Jl. Malang'),
('108', 'Emir', 'L', 'Jl. Mekar Sari'),
('109', 'Indri', 'P', 'Jl. Raya Lestari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambil_mk`
--
ALTER TABLE `ambil_mk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Nim` (`Nim`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `t_mahasiswa`
--
ALTER TABLE `t_mahasiswa`
  ADD PRIMARY KEY (`Nim`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ambil_mk`
--
ALTER TABLE `ambil_mk`
  ADD CONSTRAINT `ambil_mk_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ambil_mk_ibfk_2` FOREIGN KEY (`Nim`) REFERENCES `t_mahasiswa` (`Nim`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
