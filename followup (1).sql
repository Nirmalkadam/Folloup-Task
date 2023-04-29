-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 09:04 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `followup`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` int(25) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `series_id` varchar(60) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `admin_type` varchar(10) NOT NULL,
  `kk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`id`, `user_name`, `password`, `series_id`, `remember_token`, `expires`, `admin_type`, `kk`) VALUES
(4, 'superadmin', '$2y$10$eo7.w0Ttuy8mOBMvDlGqDeewQERkXu//7qO3jXp5NC76LwfAZpNrO', 'coLLCS95uVEQ3NVF', '$2y$10$nALX9g1jZP3ydPfgXyN3rOTRaS24RnykBroDFgc1r7D5HXG4P4Q8q', '2023-02-27 17:39:21', 'super', NULL),
(8, 'admin', '$2y$10$ChHFQ3WsAaTLRfxWKnJ6uuOqHpgWfFDalZMIJRXKut//gdbP6S3Ki', 'Th2WxQu6avoeYDuk', '$2y$10$.cyWjEdxpwwcLjiobmTlae5v3Xls4jp8MZoLa9gOyftfzyRoaVwtC', '2023-02-27 17:39:06', 'admin', NULL),
(16, 'ashwini', '$2y$10$Pbwz5GYXz0bTK6nkiIoRR.JwIGg4FoOfpZyiBkGw8g6rROzDh./6C', NULL, NULL, NULL, 'admin', NULL),
(18, 'aditi', '$2y$10$LFJy11U/ItK4d.EWikJUzOEQ1DfCxqdF2SHBFPMHgFypje8c0ie/y', NULL, NULL, NULL, 'admin', 'kk');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `l_name` varchar(25) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `f_name`, `l_name`, `gender`, `address`, `city`, `state`, `phone`, `email`, `date_of_birth`, `created_at`, `updated_at`) VALUES
(1, 'chetan', 'Shenai', 'female', 'waaw awf', NULL, 'Maharashtra', '99878', 'chetanshenai9@gmail.com', '2019-07-23', '2019-07-22 20:12:30', '2019-07-22 20:12:41'),
(2, 'Cfree', 'wawfaf', 'male', 'piohh', NULL, 'Madhya pradesh', '09975342821', 'cgtarta@ll.com', '2020-10-14', '2020-10-24 15:46:45', '2020-10-24 15:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `empdetails`
--

CREATE TABLE `empdetails` (
  `id` int(10) NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_info` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirm_password` varchar(50) NOT NULL,
  `admin_type` varchar(255) DEFAULT 'employee',
  `admin` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empdetails`
--

INSERT INTO `empdetails` (`id`, `first_name`, `last_name`, `birth_date`, `gender`, `job_title`, `job_info`, `email`, `password`, `confirm_password`, `admin_type`, `admin`, `photo`) VALUES
(1, 'prajakta12', 'bhosale', '2022-12-12', 'female', 'Devloper', 'php devloper', 'prajakta11.absoft@gmail.com', 'prajakta12', 'prajakta12', 'employee', 8, ''),
(2, 'kiran', 'chavan', '2023-01-01', 'female', 'Devloper', 'php devloper', 'kiran.absoft@gmail.com', 'kiran', 'kiran', 'employee', 8, 'man (6).png'),
(4, 'rani', 'rani', '2023-01-22', 'female', 'developer', 'developer', 'rani@gmail.com', 'rani', 'rani', 'employee', 8, 'abc'),
(6, 'किरण', 'किरण', '2023-01-01', 'female', 'php ?????', 'php ?????', 'kc@gmail.com', '1234', '1234', 'employee', 8, ''),
(7, 'Ashwini', 'sonawane', '0000-00-00', 'female', 'DM', 'NA', 'ashwinisonawane.absoft@gmail.com', 'Ashwini@2023', 'Ashwini@2023', 'employee', 4, ''),
(8, 'aditi', 'mangle', '2000-10-23', 'female', 'TESTING', 'aaaaaa', 'aditi.absoft@gmail.com', '12345', '12345', 'admin', 8, ''),
(9, 'nirmal', 'kadam', '2002-03-10', '', '', '', 'nirmal@gmail.com', 'nirmal123', 'nirmal123', 'employee', 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `Admin_Name` varchar(100) NOT NULL,
  `Admin_Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `Admin_Name`, `Admin_Password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `deadline` date NOT NULL,
  `exdate` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `assign` text NOT NULL,
  `textarea` text NOT NULL,
  `current_date` date NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `date`, `deadline`, `exdate`, `status`, `assign`, `textarea`, `current_date`, `created_by`) VALUES
(1, '2023-02-11', '2023-02-11', 2023, 1, '2', 'sds', '2023-02-11', 2),
(2, '2023-02-11', '2023-02-11', 2023, 1, '2', 'sds', '2023-02-11', 8),
(3, '2023-03-18', '2023-03-18', 2023, 1, '9', 'Done', '2023-03-18', 9);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `deadline` date NOT NULL,
  `starttime` time DEFAULT NULL,
  `endtime` time DEFAULT NULL,
  `exdate` date DEFAULT NULL,
  `status` text NOT NULL,
  `assign` text NOT NULL,
  `textarea` text NOT NULL,
  `audio` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `date`, `deadline`, `starttime`, `endtime`, `exdate`, `status`, `assign`, `textarea`, `audio`, `image`, `created_by`) VALUES
(7, '2023-01-13', '2023-01-19', '11:18:00', '16:19:00', '2023-01-27', 'complete', '1', 'Work in progress', '', '', 2),
(8, '2023-01-13', '2023-01-19', '12:22:00', '14:22:00', '2023-01-24', 'complete', '1', 'Work IS hold', '', '', 2),
(41, '1970-01-01', '1970-01-01', '00:00:00', '00:00:00', '2023-02-11', 'complete', '2', 'Hajdvs jzjshs iakakfhrhxb', '', '', 2),
(43, '1970-01-01', '1970-01-01', '13:04:00', '00:00:00', '2023-02-17', 'complete', '2', 'Followup_absoftware', '', '', 2),
(63, '1970-01-01', '1970-01-01', '00:00:00', '00:00:00', '2023-02-18', 'complete', '4', 'dff', '', '', 2),
(69, '2023-03-18', '2023-03-18', '12:32:00', '14:32:00', '2023-02-18', 'pending', '9', 'Done', '', 'n.jpeg.jpg', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empdetails`
--
ALTER TABLE `empdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `empdetails`
--
ALTER TABLE `empdetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
