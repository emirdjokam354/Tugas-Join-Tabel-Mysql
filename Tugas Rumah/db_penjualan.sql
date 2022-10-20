-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 09:54 AM
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
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_customer`
--

CREATE TABLE `t_customer` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_customer`
--

INSERT INTO `t_customer` (`customer_id`, `customer_name`, `customer_address`) VALUES
('CS001', 'Aan', 'Pasuruan'),
('CS002', 'Hanif', 'Banyuwangi'),
('CS003', 'Mirza', 'Malang'),
('CS004', 'Tanti', 'Tegal'),
('CS005', 'Budie', 'Kediri');

-- --------------------------------------------------------

--
-- Table structure for table `t_orders`
--

CREATE TABLE `t_orders` (
  `order_id` varchar(10) NOT NULL,
  `order_date` date NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `qty` int(5) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_orders`
--

INSERT INTO `t_orders` (`order_id`, `order_date`, `customer_id`, `qty`, `amount`) VALUES
('CS001', '2016-12-10', 'CS001', 1, 40000),
('CS002', '2017-01-11', 'CS002', 2, 50000),
('CS003', '2017-01-12', 'CS005', 3, 35000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_customer`
--
ALTER TABLE `t_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `t_orders`
--
ALTER TABLE `t_orders`
  ADD PRIMARY KEY (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
