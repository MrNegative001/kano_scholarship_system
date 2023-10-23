-- Create the database
CREATE DATABASE IF NOT EXISTS online_admission;
USE online_admission;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- Create the 'admin' table
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Insert data into the 'admin' table
INSERT INTO `admin` (`ID`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- Create the 'admission' table
DROP TABLE IF EXISTS `admission`;
CREATE TABLE IF NOT EXISTS `admission` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
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
  `applicationID` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Insert data into the 'admission' table
INSERT INTO `admission` (`ID`, `fullname`, `sex`, `phone`, `email`, `lga`, `state`, `jamb_number`, `jamb_score`, `faculty`, `dept`, `ssce_details`, `ssce`, `status`, `photo`, `date_admission`, `applicationID`) VALUES
(7, 'Hanson Daniel ', 'Female', '090990654', 'newleastpaysolution@gmail.com', 'Eket', 'Akwa Ibom', '9075669XV', 222, 'Science', 'Chemistry', 'WAEC/2009', 'upload/waec.jpeg', '1', 'upload/passport.jpeg', '2021-07-08', 'ADM/2021/56053'),
(8, 'Inemesit Idara', 'Male', '0904355343', 'nidara@gmail.com', 'Itu', 'Akwa Ibom', '46576878BA', 219, 'Engineering', 'CIvil Engineering', 'WAEC/2019', 'upload/default.jpg', '1', 'upload/default.jpg', '12/10/2021', '54576887');

-- Create the 'scratchcard' table
DROP TABLE IF EXISTS `scratchcard`;
CREATE TABLE IF NOT EXISTS `scratchcard` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `pin` varchar(10) NOT NULL,
  `serial` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Insert data into the 'scratchcard' table
INSERT INTO `scratchcard` (`ID`, `pin`, `serial`, `status`) VALUES
(1, '7890327890', '6789332145', 1),
(2, '9877659087', '6643541231', 0),
(3, '9000988754', '0098786541', 0),
(4, '9865489076', '3214568907', 0),
(5, '5455009876', '3213436903', 0),
(6, '5567889012', '1290875444', 0);

COMMIT;
