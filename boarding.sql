-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 12:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boarding`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Email`, `Password`) VALUES
(3, 'admin@gmail.com', 'admin'),
(4, 'admin@gmail.com', 'admin'),
(5, 'admin1@gmail.com', 'admin1'),
(6, 'admin2@gmail.com', 'admin1@A');

-- --------------------------------------------------------

--
-- Table structure for table `approved`
--

CREATE TABLE `approved` (
  `ID` varchar(5) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `RoomNo` int(3) NOT NULL,
  `Date` date NOT NULL,
  `NICimg` varchar(200) NOT NULL,
  `Otherimg` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approved`
--

INSERT INTO `approved` (`ID`, `Name`, `Address`, `Mobile`, `NIC`, `Email`, `RoomNo`, `Date`, `NICimg`, `Otherimg`, `Password`) VALUES
('21', 'Kumari', 'negombo', '0728492198', '123456789012', 'k@gmail.com', 4, '2023-11-16', 'IT1090 -Information Systems and Data Modelling.pdf', '', '$2y$10$a8arEJy36LZBrOR./OVSCOqE16mlcK.oR0QfrVbzoxXsYB9rTdwei'),
('22', 'geethmanthi', 'makandura', '0728492198', '123456789065', 'g@gmail.com', 7, '2023-11-17', 'Model Questions - Final Exam.pdf', '', '$2y$10$lrgoMWOzmCb7xpI5PCJhleJzushTy/JNFXGsgWFWypW5gg3s/zizC'),
('23', 'pathumi', 'negombo', '0728492198', '123456789012', 'p@gmail.com', 3, '2023-11-18', 'Model Questions - Final Exam.pdf', '', '$2y$10$fokjQQzqYK5vT3EtWc0gZ.5xRXI7veBezysTVlloUPB0R.CH2pVwK'),
('24', 'Kasuni', 'negombo', '0713445678', '123456789065', 'k@gmail.com', 4, '2023-11-18', 'IT1100 -Internet and Web Technologies.pdf', '', '$2y$10$hyqat.ysKChKxUiD1LWhGON9Mb33JS61gdWasleEhvk8yGULjQy3G'),
('25', 'kasun', 'gampaha', '0728492198', '123456789012', 'kasun@gmail.com', 8, '2023-11-18', 'Model Questions - Marking Criteria and Answer Key.pdf', '', '$2y$10$78q7FHrFzbwRWK4G0MLqmu3MfIMpAPMQt4dWt0szXUmZuq2O2MHUK'),
('26', 'abc', 'abc', '0713445678', '123456789012', 'abc@gmail.com', 7, '2023-11-18', 'IT1090 -Information Systems and Data Modelling.pdf', '', '1234567890'),
('27', 'kumari', 'makandura', '0728492198', '123456789012', 'kumari@gmail.com', 9, '2023-11-18', 'Model Questions - Final Exam.pdf', '', '$2y$10$JmK2NjjVebFY0qv38jAx0O2jIKRcg3OlaH0xDp1PLTMwd0LougALe'),
('28', 'Pavani', 'colombo', '0728492198', '123456789012', 'p@gmail.com', 8, '2023-11-18', 'IT1090 -Information Systems and Data Modelling.pdf', '', '$2y$10$wvoXXJvZx.9OOZkU6HbnR.Dy07VljnK0j9t4NEismzIoHmTjd9PdG'),
('29', 'Sriyani', 'negombo', '0728492198', '123456789012', 'sriyani@gmail.com', 3, '2023-11-18', 'Model Questions - Final Exam.pdf', '', '$2y$10$zVY/Rc37Eu9lOk6F2K901uTb4ZuF9.ZpZkFd9Z5eVuM23uzogq16W'),
('30', 'kamal', 'negombo', '0123456789', '123456789012', 'kamal@gmail.com', 6, '2023-11-18', 'Model Questions - Final Exam.pdf', '', '$2y$10$j7AyrYEnyAr4o4NcbmN1veR7eJbFdU1wNWNBMYbTJHTXMtb5jRMXi'),
('31', 'geethmanthi', 'makandura', '0712345678', '123456789012', 'geethmanthi@gmail.com', 4, '2023-11-18', 'IT1090 -Information Systems and Data Modelling.pdf', '', '$2y$10$kLHB50DeYlavKBtmidVU5ehAXLbQ8MMYjXPlrVOGrFQnoKYx7V8Dy'),
('32', 'silva', 'asf', '0728492198', '123456789065', 'silva@gmail.com', 1, '2023-11-18', 'IT1090 -Information Systems and Data Modelling.pdf', '', '$2y$10$TmavUKoBTwv3/m.K3jEO0.FIrny8rjcaoVmXae4lDJpDBEqrHV9ou');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Email_Adress` varchar(100) NOT NULL,
  `Review` varchar(200) NOT NULL,
  `conId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`First_Name`, `Last_Name`, `Email_Adress`, `Review`, `conId`) VALUES
('fgrf', 'mh,', 'Kasuni@gmail.com', 'tif9ofl', 1),
('abc', 'Perera', 'Kasuni@gmail.com', 'rudtik', 2),
('sanuji', 'silva', 's@gmail.com', 'complain about room no 3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `RoomNo` varchar(3) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `NICimg` varchar(200) NOT NULL,
  `Otherimg` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `Name`, `Address`, `Mobile`, `NIC`, `Email`, `RoomNo`, `Date`, `NICimg`, `Otherimg`, `Password`) VALUES
(21, 'Kumari', 'negombo', '0728492198', '123456789012', 'k@gmail.com', '4', '2023-11-16', 'IT1090 -Information Systems and Data Modelling.pdf', '', '$2y$10$a8arEJy36LZBrOR./OVSCOqE16mlcK.oR0QfrVbzoxXsYB9rTdwei'),
(22, 'geethmanthi', 'makandura', '0728492198', '123456789065', 'g@gmail.com', '7', '2023-11-17', 'Model Questions - Final Exam.pdf', '', '$2y$10$lrgoMWOzmCb7xpI5PCJhleJzushTy/JNFXGsgWFWypW5gg3s/zizC'),
(23, 'pathumi', 'negombo', '0728492198', '123456789012', 'p@gmail.com', '3', '2023-11-18', 'Model Questions - Final Exam.pdf', '', '$2y$10$fokjQQzqYK5vT3EtWc0gZ.5xRXI7veBezysTVlloUPB0R.CH2pVwK'),
(24, 'Kasuni', 'negombo', '0713445678', '123456789065', 'k@gmail.com', '4', '2023-11-18', 'IT1100 -Internet and Web Technologies.pdf', '', '$2y$10$hyqat.ysKChKxUiD1LWhGON9Mb33JS61gdWasleEhvk8yGULjQy3G'),
(25, 'kasun', 'gampaha', '0728492198', '123456789012', 'kasun@gmail.com', '8', '2023-11-18', 'Model Questions - Marking Criteria and Answer Key.pdf', '', '$2y$10$78q7FHrFzbwRWK4G0MLqmu3MfIMpAPMQt4dWt0szXUmZuq2O2MHUK'),
(26, 'abc', 'abc', '0713445678', '123456789012', 'abc@gmail.com', '7', '2023-11-18', 'IT1090 -Information Systems and Data Modelling.pdf', '', '1234567890'),
(27, 'kumari', 'makandura', '0728492198', '123456789012', 'kumari@gmail.com', '9', '2023-11-18', 'Model Questions - Final Exam.pdf', '', '$2y$10$JmK2NjjVebFY0qv38jAx0O2jIKRcg3OlaH0xDp1PLTMwd0LougALe'),
(28, 'Pavani', 'colombo', '0728492198', '123456789012', 'p@gmail.com', '8', '2023-11-18', 'IT1090 -Information Systems and Data Modelling.pdf', '', '$2y$10$wvoXXJvZx.9OOZkU6HbnR.Dy07VljnK0j9t4NEismzIoHmTjd9PdG'),
(29, 'Sriyani', 'negombo', '0728492198', '123456789012', 'sriyani@gmail.com', '3', '2023-11-18', 'Model Questions - Final Exam.pdf', '', '$2y$10$zVY/Rc37Eu9lOk6F2K901uTb4ZuF9.ZpZkFd9Z5eVuM23uzogq16W'),
(30, 'kamal', 'negombo', '0123456789', '123456789012', 'kamal@gmail.com', '6', '2023-11-18', 'Model Questions - Final Exam.pdf', '', '$2y$10$j7AyrYEnyAr4o4NcbmN1veR7eJbFdU1wNWNBMYbTJHTXMtb5jRMXi'),
(31, 'geethmanthi', 'makandura', '0712345678', '123456789012', 'geethmanthi@gmail.com', '4', '2023-11-18', 'IT1090 -Information Systems and Data Modelling.pdf', '', '$2y$10$kLHB50DeYlavKBtmidVU5ehAXLbQ8MMYjXPlrVOGrFQnoKYx7V8Dy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `approved`
--
ALTER TABLE `approved`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`conId`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `conId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
