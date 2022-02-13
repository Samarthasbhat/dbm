-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 13, 2022 at 05:09 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `Buys`
--

CREATE TABLE `Buys` (
  `id_card_no` varchar(50) NOT NULL,
  `packet_id` int(50) NOT NULL,
  `purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_num` varchar(30) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`first_name`, `last_name`, `email`, `phone_num`, `comment`) VALUES
('slslskdffj', 'sdffsddf', 'sddfsdfsdf', '343423', 'fsadfsf'),
('sdfsdf', 'sdf', 'sdf@sdf', '234234', 'sfs'),
('sdfsd', 'sdfsdf', 'sdfsdf@sddf', '234234', 'sdfsd'),
('Shashank', 'Korishettar', 'vasskorishettar@gmail.com', '948056', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `identity_card_no` int(50) NOT NULL,
  `home_ph` int(50) NOT NULL,
  `mobile_ph` int(50) NOT NULL,
  `registration_date` date NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`identity_card_no`, `home_ph`, `mobile_ph`, `registration_date`, `name`, `address`, `city`) VALUES
(300, 300000, 300000, '2022-02-09', 'sdfsdfsd', 'sdfsdfsd', '234'),
(301, 300000, 300000, '2022-02-03', 'sdfsdfsd', 'sdfsdfsd', 'sdfsdfsdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `Manager`
--

CREATE TABLE `Manager` (
  `tax_id` int(40) NOT NULL,
  `identity_card_no` varchar(40) NOT NULL,
  `packet` int(40) NOT NULL,
  `first_name` int(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `office_ph` int(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Plans`
--

CREATE TABLE `Plans` (
  `packet_id` int(38) NOT NULL,
  `price` double NOT NULL,
  `category` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Buys`
--
ALTER TABLE `Buys`
  ADD PRIMARY KEY (`id_card_no`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`identity_card_no`);

--
-- Indexes for table `Manager`
--
ALTER TABLE `Manager`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `Plans`
--
ALTER TABLE `Plans`
  ADD PRIMARY KEY (`packet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Manager`
--
ALTER TABLE `Manager`
  MODIFY `tax_id` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Plans`
--
ALTER TABLE `Plans`
  MODIFY `packet_id` int(38) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
