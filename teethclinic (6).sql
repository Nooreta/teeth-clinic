-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 10:51 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teethclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ID_doctor` int(10) NOT NULL,
  `time` varchar(30) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`ID`, `name`, `ID_doctor`, `time`, `date`) VALUES
(1, 'tuka', 1, '4', '2019-05-09'),
(5, 'majed', 1, '2', '2019-05-02'),
(8, 'ss', 1, '1', '2019-05-09'),
(9, 'ee', 1, 'op', '2019-05-02'),
(10, 'gfrt', 1, '1.3', '2019-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `ID` int(10) NOT NULL,
  `nameOfPatient` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ID_doctor` int(10) NOT NULL,
  `nameOfDoctor` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phoneOfDoctor` int(10) NOT NULL,
  `emialOfDoctor` varchar(50) CHARACTER SET utf8 NOT NULL,
  `jop` varchar(50) CHARACTER SET utf8 NOT NULL,
  `request/s` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` int(10) NOT NULL,
  `ID _secretary's` int(10) NOT NULL,
  `attendance-yes/no` varchar(3) CHARACTER SET utf8 NOT NULL,
  `time` int(2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `ID` int(10) NOT NULL,
  `authorityName` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`ID`, `authorityName`) VALUES
(1, 'appoinment booking'),
(2, 'add new patient'),
(3, 'requires'),
(4, 'payment');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gender` varchar(6) CHARACTER SET utf8 NOT NULL,
  `dateOfBirth` date NOT NULL,
  `phone` int(10) NOT NULL DEFAULT '0',
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '     ',
  `hours` varchar(11) CHARACTER SET utf8 NOT NULL,
  `qualifications` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '       ',
  `password` varchar(20) CHARACTER SET utf8 NOT NULL,
  `picture` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '      '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`ID`, `name`, `gender`, `dateOfBirth`, `phone`, `email`, `address`, `hours`, `qualifications`, `password`, `picture`) VALUES
(1, 'jannat omar', 'female', '1999-11-21', 98554, 'jannat.omar99@gamail.com', 'tulkarm', '8', '', '123', ''),
(2, 'masa', 'Male', '2019-05-02', 0, 'masa1233', '     ', '1-3', '       ', '125', '      ');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `ID` int(10) NOT NULL,
  `ID_patient` int(10) NOT NULL,
  `ID_doctor` int(10) NOT NULL,
  `date` date NOT NULL,
  `fee` int(10) NOT NULL,
  `paid` int(10) NOT NULL,
  `dept` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) CHARACTER SET utf8 NOT NULL,
  `dateOfBirth` date NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `socialStatus` varchar(20) CHARACTER SET utf8 NOT NULL,
  `paid` int(10) NOT NULL,
  `dept` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `ID` int(10) NOT NULL,
  `ID_patient` int(10) NOT NULL,
  `ID_doctor` int(10) NOT NULL,
  `operation/s` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `note/s` varchar(100) CHARACTER SET utf8 NOT NULL,
  `generalNote` varchar(100) CHARACTER SET utf8 NOT NULL,
  `reviews_yes/no` varchar(3) CHARACTER SET utf8 NOT NULL,
  `Review Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE `requirements` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `quantity` int(10) NOT NULL,
  `ID_doctor` int(10) NOT NULL,
  `ID_secretary` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `secretaries`
--

CREATE TABLE `secretaries` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gender` varchar(6) CHARACTER SET utf8 NOT NULL,
  `dateOfBirth` date NOT NULL,
  `phone` int(10) NOT NULL DEFAULT '0',
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT '                                  ',
  `hours` varchar(11) CHARACTER SET utf8 NOT NULL,
  `salary` int(5) NOT NULL,
  `qualifications` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '     ',
  `password` varchar(20) CHARACTER SET utf8 NOT NULL,
  `picture` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '     '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secretaries`
--

INSERT INTO `secretaries` (`ID`, `name`, `gender`, `dateOfBirth`, `phone`, `email`, `address`, `hours`, `salary`, `qualifications`, `password`, `picture`) VALUES
(1, 'Ahmad faisal', 'male', '2019-03-01', 9890, 'Ahmad.omar99@gamail.com', 'tulkarm', '0', 1000, '', '098', ''),
(2, 'Ahmad faisal', 'male', '2019-03-12', 9998, 'Ahmad.o@gamail.com', 'aaaaaaaaaa', '0', 9000, 'kkkkkk', '345', ''),
(3, 'jannat', 'Female', '2019-04-04', 0, 'qq', '    ', '0', 1000, '     ', '123', '     '),
(4, 'tuka', 'Female', '2019-04-11', 0, '9', '    ', '0', 2, '     ', '1', '     '),
(5, 'k', 'Male', '2019-04-03', 0, '8', '    ', '0', 76, '     ', '0', '     '),
(6, 'pp', 'Male', '2019-04-03', 0, 'a', '    ', '0', 1, '     ', 's', '     '),
(7, 'd', 'Female', '2019-04-03', 0, 'fg', '    ', '0', 3, '     ', 'g', '     '),
(8, 'masa', 'Female', '2019-04-03', 0, '2', '    ', '0', 5, '     ', '3', '     '),
(9, 'mama', 'Male', '2019-04-03', 0, '90po', '    ', '0', 555, '     ', '12', '     '),
(10, 'gg', 'Male', '2019-04-04', 0, 'r', '    ', '0', 4, '     ', '5', '     '),
(11, 'shahed', 'Female', '2019-05-01', 0, 'shahed22gamil.com', '    ', '8-2', 1234, '     ', '134', '     '),
(12, 'dana', 'Female', '2019-05-01', 0, 'qqq45', '                                  ', '1-2', 9000, '     ', '145', '     ');

-- --------------------------------------------------------

--
-- Table structure for table `secretaryauthority`
--

CREATE TABLE `secretaryauthority` (
  `ID` int(10) NOT NULL,
  `ID_secretary` int(10) NOT NULL,
  `ID_authority` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secretaryauthority`
--

INSERT INTO `secretaryauthority` (`ID`, `ID_secretary`, `ID_authority`) VALUES
(4, 3, 2),
(6, 3, 4),
(9, 1, 2),
(10, 10, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_doctor` (`ID_doctor`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `phone` (`phoneOfDoctor`,`emialOfDoctor`),
  ADD KEY `ID_doctor` (`ID_doctor`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID _secretary's` (`ID _secretary's`);

--
-- Indexes for table `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `phone` (`phone`,`email`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_doctor` (`ID_doctor`),
  ADD KEY `ID_patient` (`ID_patient`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `phone` (`phone`,`email`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_doctor` (`ID_doctor`),
  ADD KEY `ID_patient` (`ID_patient`);

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_doctor` (`ID_doctor`),
  ADD KEY `ID_secretary` (`ID_secretary`);

--
-- Indexes for table `secretaries`
--
ALTER TABLE `secretaries`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `phone` (`phone`,`email`);

--
-- Indexes for table `secretaryauthority`
--
ALTER TABLE `secretaryauthority`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_ authority's` (`ID_authority`),
  ADD KEY `ID_ secretary's` (`ID_secretary`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authorities`
--
ALTER TABLE `authorities`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secretaries`
--
ALTER TABLE `secretaries`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `secretaryauthority`
--
ALTER TABLE `secretaryauthority`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`ID_doctor`) REFERENCES `doctors` (`ID`);

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_ibfk_1` FOREIGN KEY (`ID_doctor`) REFERENCES `doctors` (`ID`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`ID _secretary's`) REFERENCES `secretaries` (`ID`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`ID_doctor`) REFERENCES `doctors` (`ID`),
  ADD CONSTRAINT `fees_ibfk_2` FOREIGN KEY (`ID_patient`) REFERENCES `patients` (`ID`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`ID_doctor`) REFERENCES `doctors` (`ID`),
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`ID_patient`) REFERENCES `patients` (`ID`);

--
-- Constraints for table `requirements`
--
ALTER TABLE `requirements`
  ADD CONSTRAINT `requirements_ibfk_1` FOREIGN KEY (`ID_doctor`) REFERENCES `doctors` (`ID`),
  ADD CONSTRAINT `requirements_ibfk_2` FOREIGN KEY (`ID_secretary`) REFERENCES `secretaries` (`ID`);

--
-- Constraints for table `secretaryauthority`
--
ALTER TABLE `secretaryauthority`
  ADD CONSTRAINT `secretaryauthority_ibfk_1` FOREIGN KEY (`ID_authority`) REFERENCES `authorities` (`ID`),
  ADD CONSTRAINT `secretaryauthority_ibfk_2` FOREIGN KEY (`ID_secretary`) REFERENCES `secretaries` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
