-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 09:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(4) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `ID` int(3) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `lga` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `jamb_number` varchar(20) NOT NULL,
  `jamb_score` int(3) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `ssce_details` varchar(30) NOT NULL,
  `ssce` varchar(200) NOT NULL,
  `status` varchar(44) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_admission` varchar(22) NOT NULL,
  `applicationID` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`ID`, `fullname`, `sex`, `phone`, `email`, `lga`, `state`, `jamb_number`, `jamb_score`, `faculty`, `dept`, `ssce_details`, `ssce`, `status`, `photo`, `date_admission`, `applicationID`) VALUES
(7, 'Hanson Daniel ', 'Female', '090990654', 'newleastpaysolution@gmail.com', 'Eket', 'Akwa Ibom', '9075669XV', 222, 'Science', 'Chemistry', 'WAEC/2009', 'upload/waec.jpeg', '1', 'upload/passport.jpeg', '2021-07-08', 'ADM/2021/56053'),
(8, 'Inemesit Idara', 'Male', '0904355343', 'nidara@gmail.com', 'Itu', 'Akwa Ibom', '46576878BA', 219, 'Engineering', 'CIvil Engineering', 'WAEC/2019', 'upload/default.jpg', '1', 'upload/default.jpg', '12/10/2021', '54576887'),
(9, 'Yusuf Anas Julee', 'Male', '+23481476437', 'anasyusufjallabiya@gmail.com', ' Jega', 'Kebbi', '9830830282', 220, 'Engineering', 'Software', 'WAEC/2017', 'upload/Result-Report-card-software.png', '1', 'upload/default.jpg', '2023-08-18', 'ADM/2023/16683'),
(10, 'Muhammad Sani', 'Male', '+23487579088', 'muhammad@gmail.com', 'Nasarawa', 'Kano', '4768946768', 250, 'Computing', 'Computer Science', 'NECO/2018', 'upload/github.jpg', '1', 'upload/default.jpg', '2023-08-18', 'ADM/2023/40188'),
(11, 'Anancy', ' ', '+23481476437', 'anasyusufjallabiyya@gmail.com', 'Dala', 'Kebbi', '983083579', 220, 'Engineering', 'Software', 'WAEC/2017', 'upload/Result-Report-card-software.png', '0', 'upload/default.jpg', '2023-09-15', 'ADM/2023/12439'),
(13, 'uyio', 'Male', '+23481476437', 'nidar1a@gmail.com', 'Dala', '', '709-98', 220, 'Engineering', 'Computer Science', 'WAEC/2017', 'upload/Result-Report-card-software.png', '0', 'upload/default.jpg', '2023-09-15', 'ADM/2023/41943'),
(15, 'Yusuf Anas Julee', ' ', '08147643723', 'anasyusufjallab@gmail.com', ' ', 'Kano', 'NJ233V1H ', 250, 'Engineering', 'Computer Science', 'WAEC/2023', 'upload/Result-Report-card-software.png', '0', 'upload/default.jpg', '2023-10-23', 'ADM/2023/81594');

-- --------------------------------------------------------

--
-- Table structure for table `scratchcard`
--

CREATE TABLE `scratchcard` (
  `ID` int(4) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `serial` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `scratchcard`
--

INSERT INTO `scratchcard` (`ID`, `pin`, `serial`, `status`) VALUES
(1, '7890327890', '6789332145', 1),
(2, '9877659087', '6643541231', 1),
(3, '9000988754', '0098786541', 0),
(4, '9865489076', '3214568907', 0),
(5, '5455009876', '3213436903', 1),
(6, '5567889012', '1290875444', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `scratchcard`
--
ALTER TABLE `scratchcard`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `scratchcard`
--
ALTER TABLE `scratchcard`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
