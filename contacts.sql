-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 10:20 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contacts`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(100) NOT NULL,
  `phoneNumber` varchar(14) NOT NULL,
  `birthday` date NOT NULL,
  `streetAddress` varchar(256) NOT NULL,
  `city` varchar(25) NOT NULL,
  `province` varchar(40) NOT NULL,
  `postalCode` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `firstName`, `lastName`, `emailAddress`, `phoneNumber`, `birthday`, `streetAddress`, `city`, `province`, `postalCode`) VALUES
(39, 'Xavier2', 'Gonzales2', 'xaviegonzales@gmail.com', '9458220025', '1990-12-12', '0751 Sitio Mahayahay Barangay Apas Lahug Cebu City', 'Cebu', 'Cebu', '6000'),
(40, 'Xavier', 'Gonzales', 'xaviegonzales@gmail.com', '9458220025', '1988-12-12', '0751 Sitio Mahayahay Barangay Apas Lahug Cebu City', 'Cebu', 'Cebu', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(100) NOT NULL,
  `password` varchar(180) NOT NULL,
  `confirm_password` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'xavier', 'gonzales', 'xavierg.com', '$2y$10$Q0KUFSpzjtC2TVC7YbNasuk/NWMnlRkVj9IIoJ10Q/sXrbfpvOvZC'),
(2, 'user', 'one', 'user@one.com', '$2y$10$nTINNtFUT8Tey9qID0JsO.Kt1RlicrYJrqdrVfYjjTfcYwV3502pq'),
(3, 'admin', 'admin', 'admin@gmail.com', '$2y$10$nTINNtFUT8Tey9qID0JsO.Kt1RlicrYJrqdrVfYjjTfcYwV3502pq'),
(4, 'test', 'test', 'test@com', '$2y$10$Q0KUFSpzjtC2TVC7YbNasuk/NWMnlRkVj9IIoJ10Q/sXrbfpvOvZC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
