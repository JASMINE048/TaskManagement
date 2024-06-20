-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 11:00 AM
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
-- Database: `etmsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_info`
--

CREATE TABLE `attendance_info` (
  `aten_id` int(20) NOT NULL,
  `atn_user_id` int(20) NOT NULL,
  `in_time` varchar(200) DEFAULT NULL,
  `out_time` varchar(150) DEFAULT NULL,
  `total_duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attendance_info`
--

INSERT INTO `attendance_info` (`aten_id`, `atn_user_id`, `in_time`, `out_time`, `total_duration`) VALUES
(49, 30, '10-06-2024 10:37:32', '10-06-2024 10:43:14', '00:05:42'),
(50, 31, '10-06-2024 10:39:50', NULL, NULL),
(51, 32, '10-06-2024 10:42:49', NULL, NULL),
(48, 1, '10-06-2024 10:11:46', NULL, NULL),
(47, 28, '10-06-2024 10:11:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_info`
--

CREATE TABLE `task_info` (
  `task_id` int(50) NOT NULL,
  `t_title` varchar(120) NOT NULL,
  `t_description` text DEFAULT NULL,
  `t_start_time` varchar(100) DEFAULT NULL,
  `t_end_time` varchar(100) DEFAULT NULL,
  `t_user_id` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = incomplete, 1 = In progress, 2 = complete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `task_info`
--

INSERT INTO `task_info` (`task_id`, `t_title`, `t_description`, `t_start_time`, `t_end_time`, `t_user_id`, `status`) VALUES
(30, 'Create a Personal Portfolio Website', 'Develop a personal portfolio website using HTML, CSS, and JavaScript. The website should include sections like About Me, Projects, Skills, and Contact. It should be responsive and visually appealing.', '2024-06-01 00:00', '2024-06-08 12:00', 28, 2),
(32, 'Create a Basic Calculator Using JavaScript', 'Develop a basic calculator that can perform addition, subtraction, multiplication, and division. The calculator should have a user interface with buttons for numbers and operations.', '2024-06-10 14:00', '2024-06-18 12:00', 31, 0),
(31, 'Build a To-Do List Application Using React', 'Develop a to-do list application using React. The application should allow users to add, edit, delete, and mark tasks as completed. Implement state management using React hooks.', '2024-06-03 10:00', '2024-06-10 11:00', 32, 2),
(33, 'Create a Responsive Navigation Bar', 'Develop a responsive navigation bar using HTML and CSS that adjusts for mobile and desktop views.', '2024-06-08 16:30', '2024-06-15 12:00', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(20) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `user_role` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `fullname`, `username`, `email`, `password`, `temp_password`, `user_role`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '892020bd58a342096f7699d16a5d9f90', NULL, 1),
(28, 'Jasmine Joy Ferrer', 'JJAF', 'jasmine@gmail.com', '3bbb792975c29cea031830bf867a8c6b', '', 2),
(32, 'Diana Grace Francisco', 'Dana', 'francisco@gmail.com', '19a3f24e8b0028152e38fa3c6514af75', '', 2),
(31, 'Jennifer Aydalla', 'JEN', 'jen@gmail.com', '5beb9b86a157214830b32cabbf47ea78', '', 2),
(30, 'Arman Enriquez', 'Arman', 'enriquez@gmail.com', 'baca88fca532123be8ffe733304703bb', '', 2),
(33, 'Joy Ambatng', 'joyjoy', 'joy04@gmail.com', 'a3173993c7bccaf91f579e2cc9dbac0d', '4092535', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_info`
--
ALTER TABLE `attendance_info`
  ADD PRIMARY KEY (`aten_id`);

--
-- Indexes for table `task_info`
--
ALTER TABLE `task_info`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_info`
--
ALTER TABLE `attendance_info`
  MODIFY `aten_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `task_info`
--
ALTER TABLE `task_info`
  MODIFY `task_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
