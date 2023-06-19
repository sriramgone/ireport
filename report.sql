-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 02:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `report`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

CREATE TABLE `accident` (
  `accidentid` int(50) NOT NULL,
  `deaths` int(50) DEFAULT NULL,
  `injured` int(50) DEFAULT NULL,
  `reporter_num` varchar(50) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `userid` int(50) DEFAULT NULL,
  `victim_name` varchar(50) DEFAULT NULL,
  `reporter_name` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `hospitals` varchar(100) DEFAULT NULL,
  `verifyid` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accident`
--

INSERT INTO `accident` (`accidentid`, `deaths`, `injured`, `reporter_num`, `location`, `userid`, `victim_name`, `reporter_name`, `date`, `time`, `hospitals`, `verifyid`) VALUES
(1, 0, 1, '7075669396', 'fuhara market, Lane 3', NULL, 'vaishnavi', 'sriram', '2022-08-27', '21:51', '4', NULL),
(2, 0, 1, '9959021345', 'times square', NULL, 'harry styles', 'chomtu', '2022-09-03', '19:21', '2', NULL),
(3, 5, 1, '9959021345', 'jabalpur', NULL, 'sriram gone', 'nolan', '2022-10-07', '18:55', '5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(50) NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_password` varchar(50) DEFAULT NULL,
  `admin_address` varchar(50) DEFAULT NULL,
  `admin_phone` varchar(50) DEFAULT NULL,
  `admin_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`, `admin_address`, `admin_phone`, `admin_email`) VALUES
(1, 'gone', '123', 'subedari,warangal urban', '9934567892', 'sriramgone999@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(50) NOT NULL,
  `hospital_name` varchar(300) DEFAULT NULL,
  `hospital_address` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `hospital_name`, `hospital_address`) VALUES
(1, 'Aditya Super Speciality Hospital & Trauma Center', 'Napier Town, opposite little kingdom school ,Jabalpur, Madhyapradesh'),
(2, 'K J Memorial Hospital', 'Opposite Singhai Petrol Pump, BeoharBagh, Jabalpur, MadhyaPradesh'),
(3, 'Anant Hospital', 'Madan Mahal Railway Station Rd, Wright Town, Jabalpur, Madhyapradesh.'),
(4, 'Triveni Health Care(A Unit Of Jamdar Hospital)', '1480, Wright Town, Jabalpur, MadhyaPradesh'),
(5, 'Life Medicity Hospital', 'Aaga Chowk near Baldeobagh, Jabalpur, Madhyapradesh'),
(6, 'National Hospital', 'Wright Town, Jabalpur, MadhyaPradesh'),
(7, 'Kothari Hospital', 'Gate No. 4  Chauraha, Wright Town, Jabalpur, Madhyapradesh'),
(8, 'Dr. Balwant Harshey (National Hospital)', 'Aarha Rd, Labour Chowk, Jabalpur, Madhyapradesh'),
(9, 'Shree Shubham Hospital and Research Center', 'National Highway 12A, Premnagar, Jabalpur, Madhyapradesh');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `useradminid` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_address`, `user_phone`, `user_email`, `useradminid`) VALUES
(1, 'xyz', '123', 'newyork', '9959026345', 'sriramgone999@gmail.com', 2),
(2, 'vaishnavi', 'vaishnavi123', 'Hno:2-9-105/1/A ,SBH colony, subedari,warangal urb', '9989948799', 'sriramgone999@gmail.com', NULL),
(3, 'sriram', '123456', ' subedari,warangal urban', '7075669396', 'sriramgone999@gmail.com', 2),
(4, 'chomtu', 'chomti', 'jammikunta', '78900012345', 'chomtu@gmail.com', 2),
(5, 'armin', '123', 'Hno:2-9-105/1/A ,SBH colony, subedari,warangal urb', '9959026378', 'sriramgone999@gmail.com', 2),
(6, 'may', 'june', 'Hno:2-9-105/1/A ,SBH colony, subedari,warangal urb', '123456789', 'sriramgone999@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`accidentid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident`
--
ALTER TABLE `accident`
  MODIFY `accidentid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accident`
--
ALTER TABLE `accident`
  ADD CONSTRAINT `accident_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
