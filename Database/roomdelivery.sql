-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 01:49 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roomdelivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `tea` varchar(100) NOT NULL,
  `coffee` varchar(1000) NOT NULL,
  `cookie` varchar(1000) NOT NULL,
  `samosa` varchar(1000) NOT NULL,
  `puff` varchar(1000) NOT NULL,
  `paratha` varchar(1000) NOT NULL,
  `biryani` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='USER DETAILS';

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `username`, `password`, `branch`, `type`, `tea`, `coffee`, `cookie`, `samosa`, `puff`, `paratha`, `biryani`) VALUES
(1, 'rakesh', 'lokesh', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  `isdelivered` tinyint(1) NOT NULL,
  `tea` int(11) NOT NULL,
  `coffee` int(11) NOT NULL,
  `cookie` int(11) NOT NULL,
  `samosa` int(11) NOT NULL,
  `puff` int(11) NOT NULL,
  `paratha` int(11) NOT NULL,
  `biryani` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `tea` int(11) NOT NULL,
  `coffee` int(11) NOT NULL,
  `cookie` int(11) NOT NULL,
  `samosa` int(11) NOT NULL,
  `puff` int(11) NOT NULL,
  `paratha` int(11) NOT NULL,
  `biryani` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
