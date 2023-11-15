-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 09, 2023 at 02:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escape_outdoors`
--

-- --------------------------------------------------------

--
-- Table structure for table `attends`
--

CREATE TABLE `attends` (
  `Client_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attends`
--

INSERT INTO `attends` (`Client_ID`, `Event_ID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Bill_ID` int(11) NOT NULL,
  `Client_ID` int(11) DEFAULT NULL,
  `ClientName` varchar(20) NOT NULL,
  `Court_ID` int(11) DEFAULT NULL,
  `Park_Name` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_ID`, `Client_ID`, `ClientName`, `Court_ID`, `Park_Name`) VALUES
(1, 1, 'Shady', 1, '1A'),
(2, 2, 'Nadeen', 2, '2A'),
(3, 3, 'Shams', 3, '3A');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Client_ID` int(11) NOT NULL,
  `CName` varchar(50) DEFAULT NULL,
  `CDOB` date DEFAULT NULL,
  `CAddress` varchar(60) DEFAULT NULL,
  `Rank` int(40) DEFAULT NULL,
  `Timee` time DEFAULT NULL,
  `CourtIDReserved` int(11) DEFAULT NULL,
  `SRankName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Client_ID`, `CName`, `CDOB`, `CAddress`, `Rank`, `Timee`, `CourtIDReserved`, `SRankName`) VALUES
(1, 'Shady', '2001-04-04', 'smouha', 16, '02:00:04', 3, 'Gold'),
(2, 'Nadeen', '2000-04-24', 'Kafr Abdou', 10, '13:00:04', 1, 'Gold'),
(3, 'Shams', '2001-05-08', 'Kafr Abdou', 10, '18:00:05', 1, 'Bronze');

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `CoName` varchar(50) DEFAULT NULL,
  `Co_DOB` date DEFAULT NULL,
  `Co_Addr` varchar(60) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Speciality` varchar(50) DEFAULT NULL,
  `Coach_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`CoName`, `Co_DOB`, `Co_Addr`, `Salary`, `Speciality`, `Coach_ID`) VALUES
('Sherine', '2003-02-28', 'Smouha', 10000, 'Padel', 4),
('Alaa', '2001-08-28', 'Gleem', 2500, 'Football', 5),
('Loay', '2001-08-08', 'Cleopatra', 5000, 'Tennis', 6);

-- --------------------------------------------------------

--
-- Table structure for table `courts`
--

CREATE TABLE `courts` (
  `Court_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `PricePerHr` int(11) DEFAULT NULL,
  `Maxlimit` int(11) DEFAULT NULL,
  `Minlimit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courts`
--

INSERT INTO `courts` (`Court_ID`, `Name`, `PricePerHr`, `Maxlimit`, `Minlimit`) VALUES
(1, 'Padel', 150, 4, 2),
(2, 'Tennis', 125, 4, 2),
(3, 'Football', 50, 12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `eventss`
--

CREATE TABLE `eventss` (
  `Event_ID` int(11) NOT NULL,
  `EventName` varchar(50) DEFAULT NULL,
  `Datee` date DEFAULT NULL,
  `Prizes` varchar(50) DEFAULT NULL,
  `StandardRankName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventss`
--

INSERT INTO `eventss` (`Event_ID`, `EventName`, `Datee`, `Prizes`, `StandardRankName`) VALUES
(1, 'Gold Event', '2023-01-24', 'Ticket Greece', 'Gold'),
(2, 'Silver Event', '2023-01-25', 'Trip to Dahab', 'Silver'),
(3, 'Bronze Event', '2023-01-26', 'Trip to Fayoum', 'Bronze');

-- --------------------------------------------------------

--
-- Table structure for table `organize`
--

CREATE TABLE `organize` (
  `Coach_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organize`
--

INSERT INTO `organize` (`Coach_ID`, `Event_ID`) VALUES
(4, 1),
(5, 2),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `Parking_ID` int(11) NOT NULL,
  `ParkName` varchar(2) NOT NULL,
  `PricePerHr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`Parking_ID`, `ParkName`, `PricePerHr`) VALUES
(2, '1A', 20),
(11, '1B', 20),
(20, '1C', 20),
(3, '2A', 20),
(12, '2B', 20),
(21, '2C', 20),
(29, '2D', 20),
(4, '3A', 20),
(13, '3B', 20),
(22, '3C', 20),
(30, '3D', 20),
(5, '4A', 20),
(14, '4B', 20),
(23, '4C', 20),
(31, '4D', 20),
(6, '5A', 20),
(15, '5B', 20),
(24, '5C', 20),
(32, '5D', 20),
(7, '6A', 20),
(16, '6B', 20),
(25, '6C', 20),
(33, '6D', 20),
(8, '7A', 20),
(17, '7B', 20),
(26, '7C', 20),
(34, '7D', 20),
(9, '8A', 20),
(18, '8B', 20),
(27, '8C', 20),
(35, '8D', 20),
(10, '9A', 20),
(19, '9B', 20),
(28, '9C', 20),
(36, '9D', 20);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Person_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`Person_ID`, `Name`, `DOB`, `Address`) VALUES
(1, 'Shady', '2001-04-04', 'smouha'),
(2, 'Nadeen', '2000-04-24', 'Kafr Abdou'),
(3, 'Shams', '2001-05-08', 'Kafr Abdou'),
(4, 'Sherine', '2003-02-28', 'Smouha'),
(5, 'Alaa', '2001-08-28', 'Gleem'),
(6, 'Loay', '2001-08-08', 'Cleopatra');

-- --------------------------------------------------------

--
-- Table structure for table `person_phone_num`
--

CREATE TABLE `person_phone_num` (
  `Phone` varchar(12) DEFAULT NULL,
  `Person_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person_phone_num`
--

INSERT INTO `person_phone_num` (`Phone`, `Person_ID`) VALUES
('1552130472', 1),
('1275599292', 2),
('1062898437', 3),
('1010101010', 4),
('1112131415', 5),
('1225897231', 6);

-- --------------------------------------------------------

--
-- Table structure for table `standardranks`
--

CREATE TABLE `standardranks` (
  `RankName` varchar(50) NOT NULL,
  `RankRange` varchar(11) DEFAULT NULL,
  `Discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standardranks`
--

INSERT INTO `standardranks` (`RankName`, `RankRange`, `Discount`) VALUES
('Bronze', '10', 0.1),
('Gold', '50', 0.4),
('Silver', '25', 0.25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attends`
--
ALTER TABLE `attends`
  ADD KEY `ATTENDS_FK_1` (`Client_ID`),
  ADD KEY `ATTENDS_FK_2` (`Event_ID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Bill_ID`),
  ADD KEY `BILL_FK_1` (`Client_ID`),
  ADD KEY `BILL_FK_3` (`Court_ID`),
  ADD KEY `BILL_FK_5` (`Park_Name`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Client_ID`),
  ADD KEY `Client_ID` (`Client_ID`),
  ADD KEY `CLIENT_FK_2` (`CourtIDReserved`),
  ADD KEY `CLIENT_FK_3` (`SRankName`);

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD KEY `COACH_FK_1` (`Coach_ID`);

--
-- Indexes for table `courts`
--
ALTER TABLE `courts`
  ADD PRIMARY KEY (`Court_ID`),
  ADD KEY `Court_ID` (`Court_ID`);

--
-- Indexes for table `eventss`
--
ALTER TABLE `eventss`
  ADD PRIMARY KEY (`Event_ID`),
  ADD KEY `EVENTS_FK_1` (`StandardRankName`);

--
-- Indexes for table `organize`
--
ALTER TABLE `organize`
  ADD KEY `ORGANIZE_FK_1` (`Coach_ID`),
  ADD KEY `ORGANIZE_FK_2` (`Event_ID`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`ParkName`),
  ADD UNIQUE KEY `ParkName` (`ParkName`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Person_ID`),
  ADD KEY `Person_ID` (`Person_ID`);

--
-- Indexes for table `person_phone_num`
--
ALTER TABLE `person_phone_num`
  ADD KEY `PHONE_FK_1` (`Person_ID`);

--
-- Indexes for table `standardranks`
--
ALTER TABLE `standardranks`
  ADD PRIMARY KEY (`RankName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attends`
--
ALTER TABLE `attends`
  ADD CONSTRAINT `ATTENDS_FK_1` FOREIGN KEY (`Client_ID`) REFERENCES `client` (`Client_ID`),
  ADD CONSTRAINT `ATTENDS_FK_2` FOREIGN KEY (`Event_ID`) REFERENCES `eventss` (`Event_ID`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `BILL_FK_1` FOREIGN KEY (`Client_ID`) REFERENCES `client` (`Client_ID`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `CLIENT_FK_2` FOREIGN KEY (`CourtIDReserved`) REFERENCES `courts` (`Court_ID`),
  ADD CONSTRAINT `CLIENT_FK_3` FOREIGN KEY (`SRankName`) REFERENCES `standardranks` (`RankName`),
  ADD CONSTRAINT `Client_fk_1` FOREIGN KEY (`Client_ID`) REFERENCES `person` (`Person_ID`);

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `COACH_FK_1` FOREIGN KEY (`Coach_ID`) REFERENCES `person` (`Person_ID`);

--
-- Constraints for table `eventss`
--
ALTER TABLE `eventss`
  ADD CONSTRAINT `EVENTS_FK_1` FOREIGN KEY (`StandardRankName`) REFERENCES `standardranks` (`RankName`);

--
-- Constraints for table `organize`
--
ALTER TABLE `organize`
  ADD CONSTRAINT `ORGANIZE_FK_1` FOREIGN KEY (`Coach_ID`) REFERENCES `coach` (`Coach_ID`),
  ADD CONSTRAINT `ORGANIZE_FK_2` FOREIGN KEY (`Event_ID`) REFERENCES `eventss` (`Event_ID`);

--
-- Constraints for table `person_phone_num`
--
ALTER TABLE `person_phone_num`
  ADD CONSTRAINT `PHONE_FK_1` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
