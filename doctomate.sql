-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 01:29 PM
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
-- Database: `doctomate`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Username` varchar(30) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `CID` int(5) NOT NULL,
  `DID` int(5) NOT NULL,
  `DOV` date NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Username`, `Fname`, `Gender`, `CID`, `DID`, `DOV`, `Timestamp`, `Status`) VALUES
('user', 'patient', 'male', 1, 1, '2017-11-08', '2017-11-05 16:43:48', 'Booking Registered.Wait for the update'),
('user', 'shravan', 'male', 1, 1, '0000-00-00', '2019-04-19 16:59:11', 'Booking Registered.Wait for the update'),
('user', 'shravan', 'male', 1, 1, '2019-04-25', '2019-04-19 17:05:35', 'Cancelled by Patient'),
('user', 'chanchal', 'female', 1, 1, '2019-04-23', '2019-04-19 17:09:02', 'Cancelled by Patient'),
('user', 'shilpa patil', 'female', 1, 1, '2019-04-22', '2019-04-19 18:17:33', 'Cancelled by Patient'),
('shra1_saoji', 'piyush vyawahare', 'male', 1, 1, '2019-04-26', '2019-04-21 09:09:08', 'Booking Registered.Wait for the update'),
('kush@singh', 'kushlesh singh', 'male', 2, 11, '2019-04-26', '2019-04-21 20:23:16', 'Booking Registered.Wait for the update'),
('ankita@patel', 'ankita patel', 'female', 2, 11, '2019-04-27', '2019-04-22 08:33:02', 'Cancelled by Patient'),
('user', 'sanket thakare', 'male', 11, 11, '2019-04-24', '2019-04-23 08:13:54', 'Booking Registered.Wait for the update'),
('user', 'om kolte', 'male', 111, 123, '2019-04-24', '2019-04-23 08:22:38', 'Booking Registered.Wait for the update'),
('user', 'chanchal', 'female', 1, 1, '2019-05-03', '2019-05-02 13:56:58', 'Cancelled by Patient'),
('hetal', 'puja dindore', 'female', 99, 112, '2019-05-08', '2019-05-02 14:46:42', 'Cancelled by Patient');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `cid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `town` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `mid` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(1, 'Clinic', 'XYZ apartment, CST', 'CST', 'Mumbai', 9999988888, '1'),
(2, 'krishna hospital', 'jai bhavani nagar, kothrud', 'kothrud', 'pune', 9999000020, ''),
(1234, 'chanchal medicorner', 'shivtirth nagar Pune', 'pune', 'pune', 7894569874, ''),
(111, 'sayhandri hospital', 'ram nagar', 'kothrud', 'pune', 8989565623, ''),
(1236, 'devgiri hospital', 'cidco n-4 aurangabad', 'cidco n-4', 'aurangabad', 7895846865, ''),
(99, 'satyam clinik', 'paud road', 'town center', 'aurangabad', 8411835327, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `did` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `experience` int(11) NOT NULL,
  `specialization` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(1, 'doctor', 'male', '1980-01-01', 10, 'Orthodontist', 9999999999, 'XYZ tower, CST', 'doctor', 'doctor', 'Mumbai'),
(123, 'sanket thakare', 'male', '1995-09-12', 2, 'MD', 8888222233, 'rambaug colony', 'sanket@thakare', '#sanket', 'pune'),
(12, 'shubham kulkarni', 'male', '1995-06-12', 1, 'cardio', 7894561234, 'aurangabad', 'shubh@kul', 'shubh@kul', 'cidco n-4'),
(100, 'mansi pal', 'female', '2000-02-02', 1, 'MBBS', 9874563210, 'dapodi pune', 'mansi@pal', 'mansi@pal', 'pune'),
(999, 'dannis riche', 'male', '1972-03-12', 7, 'psychiatrist', 9548524561, 'near zeal college,narhe', 'dog@cat', 'dog@cat', 'pune');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability`
--

CREATE TABLE `doctor_availability` (
  `cid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_availability`
--

INSERT INTO `doctor_availability` (`cid`, `did`, `day`, `starttime`, `endtime`) VALUES
(1, 1, 'Friday', '14:00:00', '18:00:00'),
(1, 1, 'Monday', '14:00:00', '18:00:00'),
(1, 1, 'Thursday', '14:00:00', '18:00:00'),
(1, 1, 'Tuesday', '14:00:00', '18:00:00'),
(1, 1, 'Wednesday', '14:00:00', '18:00:00'),
(111, 100, 'Monday', '02:30:00', '06:30:00'),
(111, 100, 'Thursday', '02:30:00', '06:30:00'),
(111, 100, 'Wednesday', '02:30:00', '06:30:00'),
(111, 123, 'Monday', '17:00:00', '20:00:00'),
(111, 123, 'Tuesday', '17:00:00', '20:00:00'),
(111, 123, 'Wednesday', '17:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_registration`
--

CREATE TABLE `doctor_registration` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `timing` varchar(20) NOT NULL,
  `fees` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `experience` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_registration`
--

INSERT INTO `doctor_registration` (`id`, `fname`, `lname`, `email`, `password`, `specialization`, `location`, `timing`, `fees`, `gender`, `mobile`, `experience`) VALUES
(1, 'shravan', '', 's@gmail.com', '123564', 'ortho', 'narhe', '21', 250, 'male', '7770070868', 2),
(2, 'sdsd', '', 'sdd@dfd.cc', '11111111', 'dsdsd', 'sds', '02:58', 250, 'on', '7342123212', 2),
(3, 'shweta', 'pal', 'shweta@gmail.com', '12345', 'orthopadic', 'pune', '02:20', 2000, 'on', '8669709855', 0),
(4, 'anant', 'patil', 'a@gmail.com', '125346', 'MBBS', 'satara', '20:35', 260, 'on', '7586953565', 5);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `mid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`mid`, `name`, `gender`, `dob`, `contact`, `address`, `username`, `password`, `region`) VALUES
(1, 'Manager', 'male', '1990-01-01', 8888899999, 'XYZ complex CST', 'manager', 'manager', 'Mumbai'),
(12345, 'shravan', 'male', '1996-09-12', 7770070868, 'pune', 'sankett1714@gmail.com', '123456', 'pune');

-- --------------------------------------------------------

--
-- Table structure for table `manager_clinic`
--

CREATE TABLE `manager_clinic` (
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager_clinic`
--

INSERT INTO `manager_clinic` (`cid`, `mid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `gender`, `dob`, `contact`, `email`, `username`, `password`) VALUES
('user', 'male', '1985-01-01', 7897897897, 'user@test.com', 'user', 'user'),
('shravan vyawahare', 'male', '1996-09-12', 7770070868, 'shravanvy@gmail.com', 'shra1_saoji', 'shra1#'),
('kushlesh singh', 'male', '1996-04-20', 88663355599, 'kush@gmail.com', 'kush@singh', '#kush1'),
('ankita patel', 'female', '1996-01-09', 9999009090, 'anki@gmail.com', 'ankita@patel', '#ankita'),
('hetal birari', 'female', '1995-10-12', 8978453689, 'hetal@gmail.com', 'hetal', 'hetal'),
('ram', 'male', '2011-01-15', 8524578565, 'ram1@gmail.com', 'Ram', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `patient_registration`
--

CREATE TABLE `patient_registration` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_registration`
--

INSERT INTO `patient_registration` (`id`, `fname`, `lname`, `email`, `password`, `dob`, `gender`, `mob`, `address`) VALUES
(1, 'aishu', 'surana', 'aishusurana20@gmail.com', 'java@96in', '1996-04-20', 'female', '8975141216', 'rajgurunagar,pune'),
(2, 'sushant', 'zore', 'sushantzore@gmail.com', 'sushant@123', '1996-11-20', 'male', '9439881125', 'narhe,pune'),
(3, 'pratiksha', 'kusalkar', 'pdkusalkar@gmail.com', 'pdk@11', '1995-03-11', 'female', '8625863736', 'kopargaon'),
(4, 'dfstdyfaui', 'dhfuivyusft', 'sdadbfg@shg.sfd', '123456', '1996-05-12', 'on', '6689865666', 'fhuhlk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Username`,`Fname`,`DOV`,`Timestamp`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`cid`,`name`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD PRIMARY KEY (`cid`,`did`,`day`,`starttime`,`endtime`);

--
-- Indexes for table `doctor_registration`
--
ALTER TABLE `doctor_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `manager_clinic`
--
ALTER TABLE `manager_clinic`
  ADD PRIMARY KEY (`cid`,`mid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`email`,`username`);

--
-- Indexes for table `patient_registration`
--
ALTER TABLE `patient_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor_registration`
--
ALTER TABLE `doctor_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_registration`
--
ALTER TABLE `patient_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
