-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 08:44 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autombile shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `Brand_Name` varchar(20) NOT NULL,
  `Num of Employees` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`Brand_Name`, `Num of Employees`) VALUES
('BMW', '110'),
('Honda', '168'),
('Range Rover', '123'),
('Toyota', '578');

-- --------------------------------------------------------

--
-- Table structure for table `car model`
--

CREATE TABLE `car model` (
  `Model_ID` varchar(20) NOT NULL,
  `Model_Name` varchar(20) NOT NULL,
  `Body_Type` varchar(20) NOT NULL,
  `Brand_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car model`
--

INSERT INTO `car model` (`Model_ID`, `Model_Name`, `Body_Type`, `Brand_Name`) VALUES
('101', 'Crown', 'Sedan', 'Toyota'),
('102', 'Allion', 'Sedan', 'Toyota'),
('103', 'Fortuner', 'SUV', 'Toyota'),
('104', 'Camry', 'Sedan', 'Toyota'),
('201', 'Civic', 'Sedan', 'Honda'),
('202', 'City', 'Sedan', 'Honda'),
('203', 'CRV', 'SUV', 'Honda'),
('301', '3 series', 'Sedan', 'BMW'),
('302', 'X3', 'SUV', 'BMW'),
('303', 'X1', 'SUV', 'BMW'),
('304', 'M2', 'Sedan', 'BMW'),
('401', 'Evoque', 'SUV', 'Range Rover'),
('402', 'Sport 3', 'SUV', 'Range Rover'),
('403', 'Velar', 'SUV', 'Range Rover');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Name` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Cus_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Name`, `Address`, `Phone`, `email`, `Cus_ID`) VALUES
('Ayesha', 'Green corner,Dhanmondi', '01789101112', 'anbs@gmail.com', '26'),
('Prokriti', 'Central Road ,Dhanmondi', '01910111213', 'phr@gmail.com', '31'),
('Sanjana Afrin', 'Azimpur', '01678910111', 'sofn@gmail.com', '33'),
('Fayaj Nakib', 'Mirpur 10', '01712345678', 'fnso@gmail.com', '36');

-- --------------------------------------------------------

--
-- Table structure for table `delar`
--

CREATE TABLE `delar` (
  `D_ID` varchar(10) NOT NULL,
  `D_Name` varchar(20) NOT NULL,
  `D_Location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delar`
--

INSERT INTO `delar` (`D_ID`, `D_Name`, `D_Location`) VALUES
('401', 'Sultana Razia', 'mirpur 13'),
('402', 'Ayesha', 'Green corner'),
('403', 'Raka', 'Thakurgaon');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Inv_Name` varchar(20) NOT NULL,
  `Inv_Location` varchar(50) NOT NULL,
  `Inv_ID` varchar(10) NOT NULL,
  `D_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`Inv_Name`, `Inv_Location`, `Inv_ID`, `D_ID`) VALUES
('Robots Garage', 'mirpur 13', '901', '401'),
('Mula''s Garage', 'Green corner', '902', '402'),
('Baka''s Garage', 'Thakurgaon', '903', '403');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `M_Name` varchar(20) NOT NULL,
  `M_Location` varchar(50) NOT NULL,
  `VIN` varchar(10) NOT NULL,
  `M_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`M_Name`, `M_Location`, `VIN`, `M_ID`) VALUES
('Shajid', 'Noakhali', '22304', '824'),
('Shawon', 'Dhanmondi', '22402', '825'),
('NafisAyan', 'Mymensingh', '22001', '842');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `Option_ID` varchar(20) NOT NULL,
  `Engine` varchar(30) NOT NULL,
  `color` varchar(15) NOT NULL,
  `Transmission` varchar(10) NOT NULL,
  `Model_ID` varchar(20) NOT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`Option_ID`, `Engine`, `color`, `Transmission`, `Model_ID`, `price`) VALUES
('001', 'twin turbo', 'black', 'Auto', '101', 105),
('002', 'Diesel', 'Blue', 'manual', '102', 31),
('003', 'Diesel', 'White', 'Automatic', '103', 37),
('009', 'Petrol', 'paste', 'Automatic', '104', 48),
('004', 'Diesel', 'matt Black', 'Automatic', '201', 27),
('005', 'Diesel', 'White', 'Manual', '202', 20),
('006', '4 cylinder', 'Blue', 'Automatic', '203', 55),
('007', '4 cylinder', 'Grey', 'Automatic', '301', 50),
('008', 'Straight 4 cylinder ', 'Grey', 'Automatic', '302', 100),
('010', 'Diesel', 'matt Black', 'Automatic', '303', 43),
('011', 'Petrol', 'Matt blue', 'Automatic', '304', 85),
('012', 'Straight 4 cylinder ', 'Grey', 'Automatic', '401', 133),
('013', 'V8 ', 'Red', 'Automatic', '402', 125),
('014', 'V8 twin turbo', 'Blue', 'Automatic', '403', 76);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `VIN` varchar(10) NOT NULL,
  `Cus_ID` varchar(10) NOT NULL,
  `D_ID` varchar(10) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`VIN`, `Cus_ID`, `D_ID`, `Price`) VALUES
('22001', '33', '401', 105),
('22402', '36', '402', 125),
('22304', '36', '401', 75);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `VIN` varchar(10) NOT NULL,
  `Model_Name` varchar(20) NOT NULL,
  `Inv_ID` varchar(10) NOT NULL,
  `Cus_ID` varchar(10) NOT NULL,
  `M_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VIN`, `Model_Name`, `Inv_ID`, `Cus_ID`, `M_ID`) VALUES
('22001', 'Crown', '901', '33', '842'),
('22304', 'M2', '901', '36', '824'),
('22402', 'Sport 3', '902', '36', '825');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`Brand_Name`);

--
-- Indexes for table `car model`
--
ALTER TABLE `car model`
  ADD PRIMARY KEY (`Model_ID`),
  ADD UNIQUE KEY `Model_Name` (`Model_Name`),
  ADD KEY `Brand_Name` (`Brand_Name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cus_ID`);

--
-- Indexes for table `delar`
--
ALTER TABLE `delar`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`Inv_ID`),
  ADD KEY `D_ID` (`D_ID`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`M_ID`),
  ADD KEY `VIN` (`VIN`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`Model_ID`),
  ADD UNIQUE KEY `Model_ID_3` (`Model_ID`),
  ADD KEY `Model_ID` (`Model_ID`),
  ADD KEY `Model_ID_2` (`Model_ID`),
  ADD KEY `Model_ID_4` (`Model_ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD KEY `Cus_ID` (`Cus_ID`),
  ADD KEY `D_ID` (`D_ID`),
  ADD KEY `Price` (`Price`),
  ADD KEY `VIN` (`VIN`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`VIN`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `Model_Name` (`Model_Name`),
  ADD KEY `Cus_ID` (`Cus_ID`),
  ADD KEY `Inv_ID` (`Inv_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car model`
--
ALTER TABLE `car model`
  ADD CONSTRAINT `car model_ibfk_1` FOREIGN KEY (`Brand_Name`) REFERENCES `brand` (`Brand_Name`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `delar` (`D_ID`);

--
-- Constraints for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD CONSTRAINT `manufacturer_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`Model_ID`) REFERENCES `car model` (`Model_ID`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `delar` (`D_ID`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`Cus_ID`) REFERENCES `customer` (`Cus_ID`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`Model_Name`) REFERENCES `car model` (`Model_Name`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`Cus_ID`) REFERENCES `customer` (`Cus_ID`),
  ADD CONSTRAINT `vehicle_ibfk_3` FOREIGN KEY (`Inv_ID`) REFERENCES `inventory` (`Inv_ID`),
  ADD CONSTRAINT `vehicle_ibfk_4` FOREIGN KEY (`M_ID`) REFERENCES `manufacturer` (`M_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
