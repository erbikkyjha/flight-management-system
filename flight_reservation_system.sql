-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2018 at 01:00 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight_reservation_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `FIRSTNAME` varchar(20) NOT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  `GENDER` varchar(8) NOT NULL,
  `CONTACT_NO` int(10) DEFAULT NULL,
  `EMAIL` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`USERNAME`, `PASSWORD`, `FIRSTNAME`, `LASTNAME`, `GENDER`, `CONTACT_NO`, `EMAIL`) VALUES
('birthareshreya', 'birthareshreya', 'Shreya', 'Birthare', 'male', 123456789, 'shreyapaagal@gmail.com'),
('mohit12', 'mohit12', 'Mohit', 'aaa', 'male', 123455, 'a454@gmail.com'),
('rajeev', '9386734366', 'adad', '4aa', 'male', 545454, 'a454@gmail.com'),
('SSD', '1234', 'VAIBHAV', 'SS', 'male', 222, 'SS');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `FLIGHT_NUMBER` varchar(10) NOT NULL,
  `E_TICKET_NUMBER` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`FLIGHT_NUMBER`, `E_TICKET_NUMBER`) VALUES
('3E-2417', 1111786239),
('1D-971', 1127825108),
('1D-971', 1165185272),
('3P-7878', 1295548979),
('3W-110', 1314507323),
('2D-291', 1315209822),
('4R-9715', 1351383949),
('4C-1010', 1380250263),
('1D-971', 1392448197),
('2D-291', 1398122928);

-- --------------------------------------------------------

--
-- Table structure for table `cancel`
--

CREATE TABLE `cancel` (
  `E_TICKET_NUMBER` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancel`
--

INSERT INTO `cancel` (`E_TICKET_NUMBER`) VALUES
(1127925465),
(1128874295),
(1169035330),
(1170787016),
(1170787016),
(1170787016),
(1170787016),
(1170787016),
(1170787016),
(1170787016),
(1170787016),
(1170787016),
(1170787016),
(1170787016),
(1170787016),
(1292072978),
(1295548979),
(1295548979),
(1295548979),
(1295548979),
(1295548979),
(1295548979),
(1295548979),
(1295548979);

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

CREATE TABLE `cancellation` (
  `E_TICKET_NUMBER` int(10) NOT NULL,
  `REFUNDED_AMOUNT` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancellation`
--

INSERT INTO `cancellation` (`E_TICKET_NUMBER`, `REFUNDED_AMOUNT`) VALUES
(1295548979, 4500),
(1170787016, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

CREATE TABLE `checks` (
  `E_TICKET_NUMBER` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `FLIGHT_NUMBER` varchar(10) NOT NULL,
  `ORIGIN` char(20) NOT NULL,
  `DESTINATION` varchar(20) NOT NULL,
  `TOTAL_SEATS` int(5) NOT NULL,
  `TOTAL_FARE` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`FLIGHT_NUMBER`, `ORIGIN`, `DESTINATION`, `TOTAL_SEATS`, `TOTAL_FARE`) VALUES
('0E-435', 'BALI,INDONESIA', 'CHANDIGARH', 80, 75600),
('1A2-323', 'BALI,INDONESIA', 'NEW DELHI', 150, 150100),
('1A4-24', 'MUMBAI', 'BERN,SWITZERLAND', 80, 4560),
('1AL-811', 'BANGALORE', 'BERN,SWITZERLAND', 165, 3560),
('1AQ-811', 'BANGALORE', 'BERN,SWITZERLAND', 65, 4850),
('1B9-0891', 'MUMBAI', 'BALI,INDONESIA', 102, 4560),
('1C1-2500', 'MUMBAI', 'ATHENS,GREECE', 70, 4560),
('1C5-3058', 'MUMBAI', 'ATHENS,GREECE', 100, 4560),
('1CG-1212', 'BALI,INDONESIA', 'MUMBAI', 125, 75000),
('1D-300', 'MUMBAI', 'CHANDIGARH', 60, 4560),
('1D-971', 'CHENNAI', 'MUMBAI', 125, 4560),
('1D5-432', 'BERN,SWITZERLAND', 'NARITA,JAPAN', 65, 87006),
('1DG-1212', 'NARITA,JAPAN', 'MUMBAI', 125, 95000),
('1DY-9711', 'ATHENS,GREECE', 'MUMBAI', 125, 90000),
('1E-2901', 'BANGALORE', 'KOLKATA', 45, 3560),
('1E-300', 'KOLKATA', 'CHANDIGARH', 35, 3500),
('1E2-0543', 'MUMBAI', 'BALI,INDONESIA', 80, 4560),
('1EA-2754', 'BANGALORE', 'ATHENS,GREECE', 60, 3560),
('1EE-2901', 'BANGALORE', 'ATHENS,GREECE', 45, 3560),
('1EL-4001', 'BANGALORE', 'ATHENS,GREECE', 150, 3560),
('1EW-2901', 'BANGALORE', 'NARITA,JAPAN', 60, 120000),
('1EY-2332', 'CHENNAI', 'NARITA,JAPAN', 60, 100000),
('1EZ-8732', 'KOLKATA', 'NARITA,JAPAN', 130, 90000),
('1G3-102', 'ATHENS,GREECE', 'NARITA,JAPAN', 65, 87006),
('1J6-0892', 'CHENNAI', 'BALI,INDONESIA', 150, 4560),
('1K4-2765', 'CHENNAI', 'ATHENS,GREECE', 50, 4560),
('1L-975', 'KOLKATA', 'MUMBAI', 130, 1500),
('1L1-6301', 'MUMBAI', 'NARITA,JAPAN', 70, 85000),
('1L3-3434', 'KOCHI', 'NARITA,JAPAN', 70, 150000),
('1LP-8989', 'BANGALORE', 'BALI,INDONESIA', 65, 3560),
('1O-9751', 'PUNE', 'MUMBAI', 130, 1000),
('1O4-16', 'CHENNAI', 'BERN,SWITZERLAND', 75, 4560),
('1O8-10', 'CHENNAI', 'BERN,SWITZERLAND', 74, 4560),
('1PK-2012', 'BANGALORE', 'BALI,INDONESIA', 90, 80000),
('1PP-0111', 'BANGALORE', 'BALI,INDONESIA', 65, 3250),
('1RG-1212', 'BERN,SWITZERLAND', 'MUMBAI', 125, 105000),
('1S3-0811', 'CHENNAI', 'BALI,INDONESIA', 150, 4560),
('1S3-494', 'CHANDIARHG', 'NARITA,JAPAN', 65, 87005),
('1S9-15', 'MUMBAI', 'BERN,SWITZERLAND', 65, 4560),
('1UI3-500', 'BALI,INDONESIA', 'NARITA,JAPAN', 65, 125000),
('1WQ-801', 'BANGALORE', 'BERN,SWITZERLAND', 60, 5000),
('1X1-105', 'NEW DELHI', 'NARITA,JAPAN', 50, 120000),
('1X3-492', 'PUNE', 'NARITA,JAPAN', 65, 87005),
('1Y3-108', 'AHMEDABAD', 'NARITA,JAPAN', 65, 87000),
('1Y4-3000', 'CHENNAI', 'ATHENS,GREECE', 50, 4560),
('2A-974', 'CHENNAI', 'KOLKATA', 125, 4560),
('2D-291', 'BANGALORE', 'MUMBAI', 50, 3560),
('2E2-9715', 'ATHENS,GREECE', 'NEW DELHI', 150, 90100),
('2J-091', 'KOCHI', 'KOLKATA', 50, 4000),
('2L2-186', 'NARITA,JAPAN', 'PUNE', 130, 125000),
('2M-284', 'KOCHI', 'MUMBAI', 60, 3560),
('2M2-323', 'BERN,SWITZERLAND', 'NEW DELHI', 150, 750100),
('2M2-97', 'NARITA,JAPAN', 'NEW DELHI', 150, 100100),
('2Q-283', 'NEW DELHI', 'MUMBAI', 60, 1500),
('2X-1156', 'MUMBAI', 'PUNE', 130, 4560),
('2Z-1111', 'ATHENS,GREECE', 'PUNE', 130, 89000),
('3C-542', 'CHENNAI', 'BANGALORE', 90, 4560),
('3E-2417', 'BANGALORE', 'CHENNAI', 80, 3560),
('3G-0991', 'KOLKATA', 'CHENNAI', 90, 3000),
('3I-142', 'CHENNAI', 'BANGALORE', 90, 4560),
('3I2-1865', 'BERN,SWITZERLAND', 'PUNE', 130, 89000),
('3J-510', 'MUMBAI', 'AHMEDABAD', 150, 4560),
('3P-510', 'MUMBAI', 'AHMEDABAD', 135, 4560),
('3P-7878', 'MUMBAI', 'CHENNAI', 90, 4500),
('3W-110', 'MUMBAI', 'AHMEDABAD', 130, 4560),
('3WE-35', 'NARITA,JAPAN', 'CHANDIGARH', 80, 135600),
('3X-395', 'NARITA,JAPAN', 'KOCHI', 105, 87123),
('4C-1010', 'KOLKATA', 'NEW DELHI', 105, 4560),
('4H-1519', 'MUMBAI', 'NEW DELHI', 120, 4560),
('4H2-3865', 'BALI,INDONESIA', 'PUNE', 130, 100000),
('4K-5401', 'KOLKATA', 'KOCHI', 125, 8000),
('4K-69', 'BANGALORE', 'NEW DELHI', 95, 2350),
('4L-78', 'KOCHI', 'NEW DELHI', 90, 3560),
('4O-2020', 'AHMEDABAD', 'NEW DELHI', 125, 3000),
('4R-9715', 'CHENNAI', 'KOCHI', 125, 4560),
('4V-05', 'PUNE', 'NEW DELHI', 100, 2000),
('5C-100', 'CHENNAI', 'NEW DELHI', 150, 4560),
('5C-971', 'CHANDIGARH', 'NEW DELHI', 150, 2500),
('5F-505', 'BANGALORE', 'KOCHI', 100, 3560),
('5I-9711', 'MUMBAI', 'KOLKATA', 125, 4560),
('5N-198', 'AHMEDABAD', 'KOLKATA', 150, 2000),
('5TE-35', 'BERN,SWITZERLAND', 'CHANDIGARH', 80, 125600),
('5U-696', 'NEW DELHI', 'KOCHI', 140, 6000),
('5X-105', 'AHMEDABAD', 'KOCHI', 100, 5000),
('6B-855', 'KOCHI', 'CHENNAI', 50, 4500),
('6E-245', 'NEW DELHI', 'CHENNAI', 45, 3500),
('6E-4428', 'AHMEDABAD', 'MUMBAI', 150, 3560),
('6E-689', 'AHMEDABAD', 'CHENNAI', 180, 4000),
('6F-2015', 'CHENNAI', 'AHMEDABAD', 60, 4560),
('6H-015', 'ATHENS,GREECE', 'CHENNAI', 150, 80000),
('6H-2020', 'BANGALORE', 'AHMEDABAD', 105, 3560),
('6J-1015', 'CHANDIGARH', 'CHENNAI', 150, 6500),
('6L-101', 'PUNE', 'CHENNAI', 150, 6000),
('6L-2016', 'CHENNAI', 'AHMEDABAD', 60, 4560),
('6LO-015', 'NARITA,JAPAN', 'CHENNAI', 150, 90000),
('6P-1056', 'BANGALORE', 'AHMEDABAD', 105, 3560),
('6UKL-892', 'BALI,INDONESIA', 'CHENNAI', 150, 100000),
('6UO-018', 'BERN,SWITZERLAND', 'CHENNAI', 150, 100000),
('6X-1050', 'BANGALORE', 'AHMEDABAD', 100, 3560),
('7A-123', 'MUMBAI', 'KOCHI', 100, 4560),
('7A-125', 'NEW DELHI', 'PUNE', 170, 3999),
('7C-415', 'PUNE', 'KOCHI', 105, 4560),
('7C-490', 'CHANDIGARH', 'KOCHI', 105, 7500),
('7F-187', 'CHENNAI', 'PUNE', 170, 4560),
('7J-2702', 'BANGALORE', 'PUNE', 120, 3560),
('7L-1010', 'KOLKATA', 'PUNE', 100, 2000),
('7O-5602', 'KOCHI', 'PUNE', 100, 3500),
('7S-1255', 'CHANDIGARH', 'PUNE', 170, 4500),
('7S-4235', 'AHMEDABAD', 'CHANDIGARH', 80, 7420),
('7SE-35', 'ATHENS,GREECE', 'CHANDIGARH', 80, 105600),
('7U-1255', 'AHMEDABAD', 'PUNE', 170, 4500),
('7X-490', 'ATHENS,GREECE', 'KOCHI', 105, 67000),
('8D-900', 'BANGALORE', 'CHANDIGARH', 80, 3560),
('8F-0172', 'CHENNAI', 'CHANDIGARH', 70, 4560),
('8I-441', 'NEW DELHI', 'CHANDIGARH', 80, 7800),
('8J-0176', 'PUNE', 'CHANDIGARH', 70, 6741),
('8L-1400', 'MUMBAI', 'BANGALORE', 95, 4560),
('8O-1425', 'MUMBAI', 'BANGALORE', 190, 4560),
('8S-421', 'KOCHI', 'CHANDIGARH', 80, 8754),
('9C-550', 'BERN,SWITZERLAND', 'KOLKATA', 150, 90000),
('9D-915', 'PUNE', 'KOLKATA', 120, 3000),
('9G-565', 'BERN,SWITZERLAND', 'KOCHI', 105, 140000),
('9GT-565', 'BALI,INDONESIA', 'KOCHI', 105, 123000),
('9L-112', 'CHANDIGARH', 'KOLKATA', 75, 2750),
('9L-560', 'ATHENS,GREECE', 'KOLKATA', 150, 75000),
('9LF112', 'CHANDIGARH', 'MUMBAI', 75, 2000),
('9O-560', 'NEW DELHI', 'KOLKATA', 150, 3500),
('9P-5600', 'NARITA,JAPAN', 'KOLKATA', 150, 50000),
('9W-5601', 'BALI,INDONESIA', 'KOLKATA', 150, 75000);

-- --------------------------------------------------------

--
-- Table structure for table `flight_status`
--

CREATE TABLE `flight_status` (
  `ARRIVAL_DATE` date NOT NULL,
  `SCHEDULED_DEPARTURE_TIME` timestamp NOT NULL,
  `SCHEDULED_ARRIVAL_TIME` timestamp NOT NULL,
  `ESTIMATED_OR_ACTUAL_DEPARTURE_TIME` timestamp NULL DEFAULT NULL,
  `ESTIMATED_OR_ACTUAL_ARRIVAL_TIME` timestamp NULL DEFAULT NULL,
  `STATUS` varchar(30) NOT NULL,
  `E_TICKET_NUMBER` int(10) NOT NULL,
  `FLIGHT_NUMBER` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_status`
--

INSERT INTO `flight_status` (`ARRIVAL_DATE`, `SCHEDULED_DEPARTURE_TIME`, `SCHEDULED_ARRIVAL_TIME`, `ESTIMATED_OR_ACTUAL_DEPARTURE_TIME`, `ESTIMATED_OR_ACTUAL_ARRIVAL_TIME`, `STATUS`, `E_TICKET_NUMBER`, `FLIGHT_NUMBER`) VALUES
('2017-11-07', '2017-11-03 02:35:23', '2017-11-03 02:35:23', '2017-11-03 02:35:23', '2017-11-03 02:35:23', 'Confirmed', 1295548979, '3P-7878'),
('2017-11-07', '2018-01-31 10:16:16', '2018-01-31 10:16:16', '2017-11-03 02:35:23', '2017-11-03 02:35:23', 'Confirmed', 1315209822, '1D-971'),
('2017-11-07', '2017-11-06 18:16:35', '2017-11-06 18:16:35', '2017-11-03 02:35:23', '2017-11-03 02:35:23', 'Confirmed', 1392448197, '1D-971'),
('2017-11-07', '2018-01-31 10:22:46', '2018-01-31 10:22:46', '2017-11-03 02:35:23', '2017-11-03 02:35:23', 'Confirmed', 1398122928, '1D-971');

-- --------------------------------------------------------

--
-- Table structure for table `make_payment`
--

CREATE TABLE `make_payment` (
  `TRANSACTIONID` int(20) NOT NULL,
  `E_TICKET_NUMBER` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `make_payment`
--

INSERT INTO `make_payment` (`TRANSACTIONID`, `E_TICKET_NUMBER`) VALUES
(1247149548, 1111786239),
(1325355000, 1111786239),
(1363946817, 1127825108),
(1210245552, 1165185272),
(1221731864, 1274209437),
(1334898035, 1295548979),
(1172803278, 1314507323),
(1215783433, 1314507323),
(1223145985, 1314507323),
(1228391918, 1314507323),
(1249740583, 1314507323),
(1380195523, 1314507323),
(1392758391, 1314507323),
(1132414159, 1315209822),
(1304699710, 1351383949),
(1215920283, 1398122928);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `ETICKET_NUMBER` int(10) NOT NULL,
  `PFIRSTNAME` varchar(20) NOT NULL,
  `PLAST_NAME` varchar(20) NOT NULL,
  `PGENDER` varchar(5) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `DOJ` varchar(15) NOT NULL,
  `BOOKING_USERNAME` varchar(20) DEFAULT NULL,
  `SEATNUMBER` varchar(5) NOT NULL,
  `PCONTACT_NO` varchar(10) DEFAULT NULL,
  `PUSERNAME` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`ETICKET_NUMBER`, `PFIRSTNAME`, `PLAST_NAME`, `PGENDER`, `DOB`, `DOJ`, `BOOKING_USERNAME`, `SEATNUMBER`, `PCONTACT_NO`, `PUSERNAME`) VALUES
(1111786239, 'lol', 'uip', 'male', '2015-02-10', '2017-11-07', 'rajeevjswl', '5', '1234', 'lol1234'),
(1127825108, 'ra', 'kk', 'male', '2017-11-08', '2017-11-02', 'rajeevjswl', '12', '556526', 'ra1234'),
(1165185272, 'RAJEEV', 'JASIWAL', 'male', '2017-11-01', '2017-11-10', 'rajeevjswl', '45', '123456789', 'RAJEEV1234'),
(1218283234, 'RAJEEV', 'JAISWAL', 'male', '1998-03-17', '2017-12-20', 'rajeevjswl', '44', '8507879196', 'RAJEEV1234'),
(1274209437, 'MOHIT', 'AJMERA', 'male', '2017-11-09', '2017-11-08', 'rajeevjswl', '14', '85079655', 'MOHIT1234'),
(1295548978, 'John', 'Cena', 'male', '2003-02-05', '2017-11-07', 'rajeevjswl', '16', '9090909090', 'John1234'),
(1295548979, 'John', 'Cena', 'male', '2003-02-05', '2017-11-07', 'rajeevjswl', '16', '9090909090', 'John1234'),
(1314507323, 'Krishna', 'Patel', 'male', '2017-11-01', '2017-11-05', 'rajeevjswl', '13', '12345', 'Krishna1234'),
(1315209822, 'raje', 'khan', 'male', '2018-01-31', '2018-01-31', 'rajeevjswl', '03', '1111225', 'raje1234'),
(1334095179, 'rajeev', 'khan', 'male', '2018-01-31', '2018-12-31', 'rajeevjswl', '11', '11111', 'rajeev1234'),
(1351383949, 'aq', 'de', 'male', '0263-05-05', '2017-11-09', 'rajeevjswl', '32', '1212', 'aq1234'),
(1380250263, 'Gupta', 'Suresh', 'male', '2003-02-12', '2017-11-01', 'rajeevjswl', '15', '90909090', 'Gupta1234'),
(1388798853, 'RAJEEV', 'JAISWAL', 'male', '2017-11-02', '2017-11-01', 'rajeevjswl', '12', '8507879196', 'RAJEEV1234'),
(1392448197, 'DBMS', 'PROJECT-2017', 'male', '2017-11-06', '2017-11-08', 'rajeevjswl', '55', '1234567890', 'DBMS1234'),
(1398122928, 'adad', 'jain', 'male', '2018-02-28', '2018-01-31', 'rajeevjswl', '02', '12309856', 'adad1234');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `TRANSACTIONID` int(20) NOT NULL,
  `TOTAL_FARE_GENERATED` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`TRANSACTIONID`, `TOTAL_FARE_GENERATED`) VALUES
(1256482746, 3000),
(1132414159, 3560),
(1215920283, 3560),
(1247149548, 3560),
(1286133670, 3560),
(1325355000, 3560),
(1221731864, 4500),
(1334898035, 4500),
(1, 4556),
(2, 4560),
(480578946, 4560),
(1118218209, 4560),
(1131593056, 4560),
(1159273334, 4560),
(1172803278, 4560),
(1210245552, 4560),
(1215783433, 4560),
(1223145985, 4560),
(1227205881, 4560),
(1228391918, 4560),
(1236082911, 4560),
(1249074577, 4560),
(1249740583, 4560),
(1254977392, 4560),
(1304699710, 4560),
(1325847661, 4560),
(1358500170, 4560),
(1363946817, 4560),
(1379857959, 4560),
(1380195523, 4560),
(1382047566, 4560),
(1392758391, 4560),
(1397484293, 4560),
(1231904412, 87123),
(1128062315, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `E_TICKET_NUMBER` int(10) DEFAULT NULL,
  `Details` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `E_TICKET_NUMBER` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `webcheckin`
--

CREATE TABLE `webcheckin` (
  `E_TICKET_NUMBER` int(10) DEFAULT NULL,
  `WSTATUS` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webcheckin`
--

INSERT INTO `webcheckin` (`E_TICKET_NUMBER`, `WSTATUS`) VALUES
(1295548979, 'Passenger Checked'),
(1127925465, 'Passenger Checked'),
(1127925465, 'Passenger Checked'),
(1292072978, 'Passenger Checked'),
(1128874295, 'Passenger Checked'),
(1392448197, 'Passenger Checked'),
(1169035330, 'Passenger Checked'),
(1169035330, 'Passenger Checked'),
(1315209822, 'Passenger Checked'),
(1398122928, 'Passenger Checked');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`USERNAME`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`FLIGHT_NUMBER`,`E_TICKET_NUMBER`),
  ADD KEY `FLIGHT_NUMBER` (`FLIGHT_NUMBER`),
  ADD KEY `E_TICKET_NUMBER` (`E_TICKET_NUMBER`);

--
-- Indexes for table `cancel`
--
ALTER TABLE `cancel`
  ADD KEY `cancel_ETICKET` (`E_TICKET_NUMBER`);

--
-- Indexes for table `cancellation`
--
ALTER TABLE `cancellation`
  ADD PRIMARY KEY (`E_TICKET_NUMBER`);

--
-- Indexes for table `checks`
--
ALTER TABLE `checks`
  ADD KEY `CHECK_ETICKET` (`E_TICKET_NUMBER`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`FLIGHT_NUMBER`);

--
-- Indexes for table `flight_status`
--
ALTER TABLE `flight_status`
  ADD PRIMARY KEY (`E_TICKET_NUMBER`),
  ADD KEY `E_TICKET_NUMBER` (`E_TICKET_NUMBER`) USING BTREE,
  ADD KEY `FLIGHT_NUMBER` (`FLIGHT_NUMBER`);

--
-- Indexes for table `make_payment`
--
ALTER TABLE `make_payment`
  ADD PRIMARY KEY (`TRANSACTIONID`,`E_TICKET_NUMBER`),
  ADD KEY `E_TICKET_NUMBER` (`E_TICKET_NUMBER`),
  ADD KEY `TRANSACTIONID` (`TRANSACTIONID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`ETICKET_NUMBER`),
  ADD KEY `BOOKING_USERNAME` (`BOOKING_USERNAME`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`TRANSACTIONID`),
  ADD KEY `TOTAL_FARE_GENERATED` (`TOTAL_FARE_GENERATED`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD KEY `reserv` (`E_TICKET_NUMBER`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD KEY `PAYMENT_ETICKET` (`E_TICKET_NUMBER`);

--
-- Indexes for table `webcheckin`
--
ALTER TABLE `webcheckin`
  ADD KEY `E_TICKET_NUMBER` (`E_TICKET_NUMBER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`FLIGHT_NUMBER`) REFERENCES `flight` (`FLIGHT_NUMBER`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`E_TICKET_NUMBER`) REFERENCES `passenger` (`ETICKET_NUMBER`);

--
-- Constraints for table `flight_status`
--
ALTER TABLE `flight_status`
  ADD CONSTRAINT `flight_status_ibfk_4` FOREIGN KEY (`FLIGHT_NUMBER`) REFERENCES `flight` (`FLIGHT_NUMBER`),
  ADD CONSTRAINT `flight_status_ibfk_5` FOREIGN KEY (`E_TICKET_NUMBER`) REFERENCES `passenger` (`ETICKET_NUMBER`);

--
-- Constraints for table `make_payment`
--
ALTER TABLE `make_payment`
  ADD CONSTRAINT `make_payment_ibfk_2` FOREIGN KEY (`E_TICKET_NUMBER`) REFERENCES `passenger` (`ETICKET_NUMBER`),
  ADD CONSTRAINT `make_payment_ibfk_3` FOREIGN KEY (`TRANSACTIONID`) REFERENCES `payment` (`TRANSACTIONID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
