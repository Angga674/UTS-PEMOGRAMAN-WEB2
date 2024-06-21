-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2024 at 09:21 AM
-- Server version: 8.0.35
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipekan`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id_driver` int NOT NULL,
  `kendaraan_id` int NOT NULL,
  `sopir` varchar(255) NOT NULL
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id_driver`, `kendaraan_id`, `sopir`) VALUES
(1, 2, 'Nanang'),
(6, 5, 'Tristan'),
(7, 1, 'Agna Tio'),
(8, 7, 'Vicky Nasyidah'),
(9, 6, 'Zelaya Safitri');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_kendaraan` int NOT NULL,
  `mobil` varchar(255) NOT NULL,
  `plat_nomor` varchar(255) NOT NULL,
  `status` int NOT NULL
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id_kendaraan`, `mobil`, `plat_nomor`, `status`) VALUES
(1, 'Daihatsu Xenia', 'B 5721 KIR', 0),
(2, 'Toyota Avanza', 'L 5122 BD', 1),
(5, 'Chevrolet Lova', 'P 2134 RA', 0),
(6, 'Mazda RX-8', 'B 3 RI', 0),
(7, 'Nissan GTR R35', 'B 4 TIN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int NOT NULL,
  `driver_id` int NOT NULL,
  `kendaraan_id` int NOT NULL,
  `customer` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `keberangkatan` int NOT NULL
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `driver_id`, `kendaraan_id`, `customer`, `no_hp`, `tanggal`, `keberangkatan`) VALUES
(1, 6, 5, 'Naufal Zuhdi', '08999222111', '2022-10-02', 2),
(2, 7, 1, 'Akihiro Souta', '087766221133', '2022-10-03', 2),
(3, 1, 2, 'Atik Sunarti 3', '081259557129', '2022-10-03', 2),
(8, 6, 5, 'Indra Fadillah', '081259557129', '2022-10-03', 2),
(9, 6, 5, 'Ali', '123456789', '2022-10-13', 2),
(10, 7, 1, 'Beatriz', '123456789', '2022-10-22', 2),
(11, 1, 2, 'Charles', '123456789', '2022-10-27', 2),
(12, 7, 1, 'Diya', '123456789', '2022-11-02', 2),
(13, 6, 5, 'Eric', '123456789', '2022-10-05', 2),
(14, 7, 1, 'Fatima', '123456789', '2022-10-20', 2),
(15, 7, 1, 'Gabriel', '123456789', '2022-12-01', 2),
(16, 1, 2, 'Hanna', '123456789', '2022-12-14', 2),
(17, 6, 5, 'Halima Prastuti', '123456789', '2022-12-16', 2),
(18, 1, 2, 'Irsad Hidayat', '123456789', '2022-10-12', 2),
(19, 6, 5, 'Jane Riyanti', '123456789', '2022-12-31', 2),
(20, 6, 5, 'Nabila Nurdiyanti', '123456789', '2023-01-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `is_active` int NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Admin', 'admin@gmail.com', 'default.jpg', 'admin', 1, 1, '2022-09-30'),
(2, 'Agna Rizky', 'agnarizky@gmail.com', 'default.jpg', 'agnarizky', 2, 1, '2022-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id_driver`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id_driver` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id_kendaraan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
