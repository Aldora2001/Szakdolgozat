-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 01:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szakaldoraadatb`
--

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `felhasznalo_id` int(11) NOT NULL,
  `felhasznalo_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL,
  `felhasznalo_jelszo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`felhasznalo_id`, `felhasznalo_email`, `felhasznalo_jelszo`) VALUES
(13, 'szakaldora@gmail.com', '4ab52314fe615b468eaef0f57e06e6fd'),
(14, 'kristof@kristof.com', 'd463739b10d9db8a455371cef9194817'),
(15, 'admin', '0192023a7bbd73250516f069df18b500'),
(17, 'dori@gmail.com', 'cef84c4e80d30f9446a2e38c2c86dd24');

-- --------------------------------------------------------

--
-- Table structure for table `kartya`
--

CREATE TABLE `kartya` (
  `feladat_id` int(11) NOT NULL,
  `feladat_cim` varchar(100) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `feladat_leirasa` varchar(5000) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `feladat_fajl` varchar(100) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `feladat_datum` date NOT NULL,
  `feladat_prio` varchar(15) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `feladat_status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kartya`
--

INSERT INTO `kartya` (`feladat_id`, `feladat_cim`, `feladat_leirasa`, `feladat_fajl`, `feladat_datum`, `feladat_prio`, `feladat_status`) VALUES
(4, 'Második tipusú', 'Második', 'kep.jpg', '2023-03-26', '1', 2),
(10, 'hármas3', 'hármas3', 'kep.jpg', '2023-03-26', '1', 1),
(12, 'negyedik4', 'negyedik4', 'kep.jpg', '2023-03-26', '3', 3),
(13, 'Legfontosabb feladat', 'Az alap GUI fejlesztése.', 'main.jpg', '2023-03-27', '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`felhasznalo_id`);

--
-- Indexes for table `kartya`
--
ALTER TABLE `kartya`
  ADD PRIMARY KEY (`feladat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `felhasznalo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kartya`
--
ALTER TABLE `kartya`
  MODIFY `feladat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
