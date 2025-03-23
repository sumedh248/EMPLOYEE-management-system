-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2025 at 07:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_akpoly`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `id` int(11) NOT NULL,
  `employeeID` varchar(150) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `password` varchar(15) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `employee_type` varchar(60) NOT NULL,
  `date_appointment` varchar(20) NOT NULL,
  `basic_salary` varchar(60) NOT NULL,
  `gross_pay` varchar(60) NOT NULL,
  `status` varchar(1) NOT NULL,
  `leave_status` varchar(20) NOT NULL,
  `photo` varchar(5000) NOT NULL,
  `joiningdate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`id`, `employeeID`, `fullname`, `password`, `sex`, `email`, `dob`, `phone`, `address`, `qualification`, `dept`, `employee_type`, `date_appointment`, `basic_salary`, `gross_pay`, `status`, `leave_status`, `photo`, `joiningdate`) VALUES
(9, 'STAFF/FKP/2025/1581', 'ram misra', 'Ram@1234', 'Male', 'main12@gmail.com', '24/8/2002', '3636363636', 'KM', 'GRADUATEED', 'Security', 'Academic', '2/2/2000', '2000000', '30000', '1', 'Not Available', 'uploadImage/Profile/WhatsApp Image 2024-11-26 at 15.01.13_ba0d946f.jpg', '2025-03-24'),
(11, 'STAFF/FKP/2025/1737', 'mayur', 'Mayur123', 'Male', 'main132@gmail.com', '', '03636363636', '', '', 'Student Affairs', 'Academic', '', '300000000', '30000000', '', 'Not Available', '', '2025-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `tblleave`
--

CREATE TABLE `tblleave` (
  `ID` int(4) NOT NULL,
  `email` varchar(100) NOT NULL,
  `leaveID` varchar(6700) NOT NULL,
  `start_date` varchar(25) NOT NULL,
  `end_date` varchar(25) NOT NULL,
  `reason` varchar(5000) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblleave`
--

INSERT INTO `tblleave` (`ID`, `email`, `leaveID`, `start_date`, `end_date`, `reason`, `status`) VALUES
(20, 'main12@gmail.com', '2025103', '2025-02-24', '2025-02-25', 'Sick Leave', 'Declined'),
(21, 'main12@gmail.com', '2025503', '2025-02-24', '2025-02-25', 'Sick Leave', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(12) NOT NULL,
  `password` varchar(15) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `fullname` varchar(34) NOT NULL,
  `photo` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `phone`, `fullname`, `photo`) VALUES
('admin', 'admin123', '0905656', 'PRANIL', 'uploadImage/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tblleave`
--
ALTER TABLE `tblleave`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblleave`
--
ALTER TABLE `tblleave`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
