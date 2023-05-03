-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 09:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mark_distribution_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `dob`, `address`, `pass`, `img`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-03-15', 'cox', '1', '1679058482.jpeg', '2023-03-25 15:06:23', '2023-04-26 05:28:33'),
(2, 'admin2', 'admin2@gmail.com', '2023-04-11', 'ctg', '1', '1682416452.png', '2023-04-20 15:52:05', '2023-04-25 09:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `assigncourses`
--

CREATE TABLE `assigncourses` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigncourses`
--

INSERT INTO `assigncourses` (`id`, `session_id`, `teacher_id`, `course_id`, `section`, `created_at`, `updated_at`) VALUES
(4, 7, 3, 9, '1', '2023-04-11 16:33:21', '2023-04-11 16:33:21'),
(89, 3, 9, 5, 'A', '2023-04-20 18:07:46', '2023-04-23 19:21:03'),
(90, 3, 8, 5, 'B', '2023-04-20 18:07:46', '2023-04-23 19:21:03'),
(91, 3, 0, 6, 'A1', '2023-04-20 18:07:46', '2023-04-20 18:07:46'),
(92, 3, 8, 6, 'A2', '2023-04-20 18:07:46', '2023-04-20 18:07:46'),
(93, 3, 0, 6, 'B', '2023-04-20 18:07:46', '2023-04-20 18:07:46'),
(94, 3, 8, 11, 'A1', '2023-04-20 18:07:46', '2023-04-20 18:07:46'),
(95, 3, 8, 11, 'A2', '2023-04-20 18:07:46', '2023-04-20 18:07:46'),
(96, 3, 0, 11, 'B1', '2023-04-20 18:07:46', '2023-04-20 18:07:46'),
(97, 3, 0, 11, 'B2', '2023-04-20 18:07:46', '2023-04-20 18:07:46'),
(98, 3, 8, 13, 'A', '2023-04-20 18:07:46', '2023-04-21 10:03:39'),
(99, 8, 8, 5, 'A', '2023-04-25 11:57:58', '2023-04-25 12:54:05'),
(100, 8, 8, 5, 'B', '2023-04-25 11:57:58', '2023-04-27 14:18:54'),
(101, 8, 8, 6, 'A', '2023-04-25 11:57:58', '2023-04-27 14:19:27'),
(102, 8, 0, 6, 'B', '2023-04-25 11:57:58', '2023-04-25 12:55:29'),
(103, 8, 0, 6, 'C', '2023-04-25 11:57:58', '2023-04-25 12:55:29'),
(104, 8, 3, 7, 'A', '2023-04-25 11:57:58', '2023-04-25 12:03:57'),
(105, 8, 0, 7, 'B', '2023-04-25 11:57:58', '2023-04-25 12:03:57'),
(106, 8, 0, 7, 'C', '2023-04-25 11:57:58', '2023-04-25 12:03:57'),
(107, 8, 8, 7, 'D', '2023-04-25 11:57:58', '2023-04-27 14:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `assignmarks`
--

CREATE TABLE `assignmarks` (
  `id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `ac_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `Publish_sts` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignmarks`
--

INSERT INTO `assignmarks` (`id`, `st_id`, `ac_id`, `cat_id`, `marks`, `Publish_sts`, `created_at`, `updated_at`) VALUES
(57, 1, 98, 24, 10, 0, '2023-04-24 11:43:11', '2023-04-24 11:43:11'),
(61, 5, 98, 23, 10, 0, '2023-04-24 11:43:32', '2023-04-24 11:43:32'),
(62, 5, 98, 24, 30, 0, '2023-04-24 11:43:34', '2023-04-24 11:43:34'),
(63, 5, 98, 25, 10, 0, '2023-04-24 11:43:36', '2023-04-24 11:43:36'),
(64, 8, 98, 23, 10, 0, '2023-04-24 11:43:39', '2023-04-24 11:43:39'),
(65, 8, 98, 24, 30, 0, '2023-04-24 11:43:41', '2023-04-24 11:43:41'),
(66, 8, 98, 25, 10, 0, '2023-04-24 11:43:43', '2023-04-24 11:43:43'),
(67, 1, 98, 25, 9, 0, '2023-04-24 11:46:06', '2023-04-24 11:46:06'),
(69, 1, 98, 23, 11, 0, '2023-04-25 05:20:36', '2023-04-25 05:20:36'),
(70, 1, 99, 30, 10, 1, '2023-04-27 14:30:58', '2023-04-27 14:30:58'),
(76, 8, 99, 30, 20, 1, '2023-04-27 14:31:14', '2023-04-27 14:31:14'),
(79, 1, 99, 31, 20, 1, '2023-04-27 14:31:20', '2023-04-27 14:31:20'),
(81, 5, 99, 31, 20, 1, '2023-04-27 14:31:21', '2023-04-27 14:31:21'),
(83, 8, 99, 31, 20, 1, '2023-04-27 14:31:24', '2023-04-27 14:31:24'),
(85, 19, 99, 31, 20, 1, '2023-04-27 14:31:26', '2023-04-27 14:31:26'),
(86, 1, 99, 32, 45, 1, '2023-04-27 14:31:28', '2023-04-27 14:31:28'),
(87, 5, 99, 32, 45, 1, '2023-04-27 14:31:29', '2023-04-27 14:31:29'),
(88, 8, 99, 32, 45, 1, '2023-04-27 14:31:30', '2023-04-27 14:31:30'),
(89, 5, 99, 30, 10, 1, '2023-04-28 21:42:47', '2023-04-28 21:42:47'),
(90, 19, 99, 30, 10, 1, '2023-04-28 21:42:53', '2023-04-28 21:42:53'),
(91, 19, 99, 32, 45, 1, '2023-04-28 21:42:57', '2023-04-28 21:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `Course_code` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Semester` int(11) NOT NULL,
  `Credit` float(8,2) NOT NULL,
  `Student_limit` int(11) NOT NULL,
  `Hour` float(8,2) NOT NULL,
  `Type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `Course_code`, `Name`, `Semester`, `Credit`, `Student_limit`, `Hour`, `Type`, `created_at`, `updated_at`) VALUES
(5, 'ACC 101', 'Basic Accounting', 1, 1.00, 23, 3.00, 1, '2023-04-08 07:45:12', '2023-04-08 13:45:12'),
(6, 'CSE 110', 'Introduction to Computer System (Laboratory)', 1, 1.00, 23, 3.00, 1, '2023-04-08 07:45:12', '2023-04-08 13:45:12'),
(7, 'EEE 101', 'Electrical Circuits I', 1, 1.00, 23, 3.00, 1, '2023-04-08 07:45:12', '2023-04-08 13:45:12'),
(8, 'ENG 101', 'General English', 1, 1.00, 23, 3.00, 1, '2023-04-08 07:45:12', '2023-04-08 13:45:12'),
(9, 'MAT 105', 'Engineering Mathematics I', 1, 3.00, 30, 3.00, 1, '2023-04-08 07:46:55', '2023-04-08 13:46:55'),
(10, 'PHY 101', 'Engineering Physics I', 1, 3.00, 30, 3.00, 1, '2023-04-08 07:51:11', '2023-04-08 13:51:11'),
(11, 'EEE 102', 'Electrical Circuits I Laboratory', 1, 3.00, 30, 3.00, 1, '2023-04-08 07:51:11', '2023-04-08 13:51:11'),
(12, 'CSE 103', 'Discrete Mathematics', 2, 3.00, 30, 3.00, 1, '2023-04-08 07:51:11', '2023-04-08 13:51:11'),
(13, 'CSE 111', 'Structured Programming', 2, 3.00, 30, 3.00, 1, '2023-04-08 07:51:11', '2023-04-08 13:51:11'),
(14, 'CSE 112', 'Structured Programming Laboratory', 2, 3.00, 30, 3.00, 1, '2023-04-08 07:51:11', '2023-04-08 13:51:11'),
(15, 'EEE 211', 'Electronics I', 2, 3.00, 30, 3.00, 1, '2023-04-08 07:51:11', '2023-04-08 13:51:11'),
(16, 'fsfdsdf', 'Nasrin Jahan Ripa', 2, 23.00, 30, 22.00, 2, '2023-04-15 05:30:41', '2023-04-15 11:30:41'),
(17, 'refre', 'saymon', 2, 2.00, 30, 3.00, 2, '2023-04-20 11:43:46', '2023-04-20 17:43:46'),
(22, 'fsfdsd67', 'njripa', 2, 3.00, 30, 3.00, 2, '2023-04-25 23:30:18', '2023-04-26 05:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` int(11) NOT NULL,
  `assigncourse_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `assigncourse_id`, `st_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 98, 1, 1, '2023-04-20 19:26:10', '2023-04-20 19:26:10'),
(10, 98, 5, 1, '2023-04-20 21:53:06', '2023-04-20 21:53:06'),
(11, 98, 8, 1, '2023-04-20 21:53:06', '2023-04-20 21:53:06'),
(13, 102, 1, 1, '2023-04-25 12:54:51', '2023-04-25 13:35:30'),
(14, 104, 1, 1, '2023-04-25 12:54:51', '2023-04-25 13:35:38'),
(15, 101, 1, 0, '2023-04-25 13:31:24', '2023-04-25 13:31:24'),
(16, 102, 1, 0, '2023-04-25 13:31:24', '2023-04-25 13:31:24'),
(17, 103, 1, 0, '2023-04-25 13:31:24', '2023-04-25 13:31:24'),
(19, 105, 1, 0, '2023-04-25 13:31:24', '2023-04-25 13:31:24'),
(20, 106, 1, 0, '2023-04-25 13:31:24', '2023-04-25 13:31:24'),
(21, 107, 1, 0, '2023-04-25 13:31:24', '2023-04-25 13:31:24'),
(22, 99, 1, 1, '2023-04-27 14:22:10', '2023-04-27 14:23:06'),
(23, 99, 5, 1, '2023-04-27 14:27:51', '2023-04-27 14:27:51'),
(24, 99, 8, 1, '2023-04-27 14:28:10', '2023-04-27 14:28:10'),
(25, 99, 19, 1, '2023-04-27 14:28:38', '2023-04-27 14:28:38'),
(26, 107, 1, 0, '2023-04-29 05:12:36', '2023-04-29 05:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `markdistributions`
--

CREATE TABLE `markdistributions` (
  `id` int(11) NOT NULL,
  `ac_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markdistributions`
--

INSERT INTO `markdistributions` (`id`, `ac_id`, `category`, `marks`, `updated_at`, `created_at`) VALUES
(23, 98, 'Report', 40, '2023-04-20 19:24:36', '2023-04-20 19:24:36'),
(24, 98, 'Final', 50, '2023-04-20 19:24:36', '2023-04-20 19:24:36'),
(25, 98, 'Assignment', 10, '2023-04-20 19:24:36', '2023-04-20 19:24:36'),
(28, 92, 'ct', 90, '2023-04-23 21:22:54', '2023-04-23 21:22:54'),
(29, 92, 'Report', 10, '2023-04-23 21:22:54', '2023-04-23 21:22:54'),
(30, 99, 'Assignment', 20, '2023-04-27 14:13:38', '2023-04-27 14:13:38'),
(31, 99, 'Mid', 20, '2023-04-27 14:13:38', '2023-04-27 14:13:38'),
(32, 99, 'Final', 60, '2023-04-27 14:13:38', '2023-04-27 14:13:38'),
(33, 90, 'Assignment', 90, '2023-04-28 18:10:05', '2023-04-28 18:10:05'),
(34, 90, 'Report', 10, '2023-04-28 18:10:05', '2023-04-28 18:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A', '2023-04-08 08:12:48', '2023-04-08 08:12:48'),
(2, 'A1', '2023-04-11 19:57:02', '2023-04-11 19:57:02'),
(3, 'A2', '2023-04-15 07:44:22', '2023-04-15 07:44:22'),
(4, 'B', '2023-04-15 07:44:22', '2023-04-15 07:44:22'),
(5, 'D', '2023-04-15 07:44:22', '2023-04-15 07:44:22'),
(6, 'B1', '2023-04-15 07:44:22', '2023-04-15 07:44:22'),
(7, 'B2', '2023-04-15 07:44:22', '2023-04-15 07:44:22'),
(8, 'C', '2023-04-15 07:44:22', '2023-04-15 07:44:22'),
(9, 'C1', '2023-04-15 07:44:22', '2023-04-15 07:44:22'),
(10, 'C2', '2023-04-15 07:44:22', '2023-04-15 07:44:22'),
(11, 'E', '2023-04-20 17:50:46', '2023-04-20 17:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1st', '2023-04-20 22:50:17', '2023-04-20 22:50:17'),
(2, '2nd', '2023-04-20 22:50:17', '2023-04-20 22:50:17'),
(3, '3rd', '2023-04-24 11:04:43', '2023-04-24 11:04:43'),
(4, '4th', '2023-04-24 11:08:10', '2023-04-24 11:08:10'),
(6, '5th', '2023-04-24 11:17:29', '2023-04-24 11:17:29'),
(7, '6th', '2023-04-25 08:52:11', '2023-04-25 08:52:11'),
(8, '7th', '2023-04-25 12:33:33', '2023-04-25 12:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `Session_name` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Year` int(11) NOT NULL,
  `Enrollment_status` tinyint(1) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `Session_name`, `Name`, `Year`, `Enrollment_status`, `Status`, `created_at`, `updated_at`) VALUES
(1, 'Spring 2020', 'Spring', 2020, 0, 0, '2023-03-08 02:13:39', '2023-04-08 06:03:02'),
(3, 'Fall 2020', 'Fall', 2020, 0, 0, '2023-04-07 20:31:55', '2023-04-29 05:14:19'),
(4, 'Spring 2021', 'Spring', 2021, 0, 0, '2023-04-07 20:32:03', '2023-04-25 11:57:36'),
(5, 'Fall 2021', 'Fall', 2021, 0, 0, '2023-04-07 20:32:10', '2023-04-15 11:37:04'),
(6, 'Spring 2022', 'Spring', 2022, 0, 0, '2023-04-07 21:43:01', '2023-04-07 21:43:01'),
(7, 'Fall 2022', 'Fall', 2022, 0, 0, '2023-04-07 21:43:19', '2023-04-15 11:37:00'),
(8, 'Spring 2023', 'Spring', 2023, 1, 1, '2023-04-08 06:06:49', '2023-04-27 10:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `dob`, `address`, `pass`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Nasrin', 'nasrin@gmail.com', '2023-03-28', 'ctg', '1', '1679057522.jpeg', '2023-03-25 11:05:19', '2023-04-26 05:52:49'),
(5, 'Emo', 'emo@gmail.com', '2023-04-04', 'ctg', '1', 'user.png', '2023-04-15 11:29:24', '2023-04-15 11:29:24'),
(8, 'Sabiha', 'sabiha@gmail.com', '2023-03-29', 'ctg', '1', 'user.png', '2023-04-20 17:37:04', '2023-04-20 17:37:04'),
(19, 'Montaha', 'montaha@gmail.com', '2023-03-26', 'ctg', '1', '1682503175.png', '2023-04-26 05:29:34', '2023-04-26 10:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `dob`, `address`, `designation`, `pass`, `img`, `created_at`, `updated_at`) VALUES
(0, 'kurti2', 'kurti@gmail.com', '2023-04-06', 'ctg', 'Assistence Professor', '1', 'user.png', '2023-04-20 18:05:17', '2023-04-25 12:51:12'),
(3, 'Farhana Amin Emo', 'farhana@gmail.com', '2023-03-07', 'ctg', 'Lecturer', '1', 'user.png', '2023-03-25 16:36:34', '2023-03-25 16:36:34'),
(7, 'saymon', 'saymon@gmail.com', '2023-03-28', 'ctg', 'Lecturer', '1', 'user.png', '2023-04-11 20:08:28', '2023-04-11 20:08:28'),
(8, 'Anik Sen', 'anik@gmail.com', '2023-03-29', 'ctg', 'Lecturer', '1', '1682489907.png', '2023-04-11 20:09:13', '2023-04-26 06:18:27'),
(9, 'Faisal Ahmed', 'faisal@gmail.com', '2023-04-04', 'ctg', 'Lecturer', '1', 'user.png', '2023-04-11 20:09:43', '2023-04-11 20:09:43'),
(10, 'Minhaz Ahmed', 'minhaz@gmail.com', '2023-03-28', 'ctg', 'Lecturer', '1', 'user.png', '2023-04-11 20:10:16', '2023-04-11 20:10:16'),
(11, 'Asif Iqbal', 'asif@gmail.com', '2023-04-03', 'ctg', 'Lecturer', '1', 'user.png', '2023-04-11 20:12:43', '2023-04-11 20:12:43'),
(28, 'njripa', 'kingshuk1@gmail.com', '2023-03-28', 'ctg', 'Lecturer', '1', 'user.png', '2023-04-26 05:29:15', '2023-04-26 05:29:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigncourses`
--
ALTER TABLE `assigncourses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1` (`session_id`),
  ADD KEY `FK2` (`course_id`),
  ADD KEY `FK3` (`teacher_id`);

--
-- Indexes for table `assignmarks`
--
ALTER TABLE `assignmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_marks` (`st_id`),
  ADD KEY `FK2_cat_id` (`cat_id`),
  ADD KEY `FK3_ac_id` (`ac_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_semester` (`Semester`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1_products` (`st_id`),
  ADD KEY `FK2_seller` (`assigncourse_id`);

--
-- Indexes for table `markdistributions`
--
ALTER TABLE `markdistributions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrtry` (`ac_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assigncourses`
--
ALTER TABLE `assigncourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `assignmarks`
--
ALTER TABLE `assignmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `markdistributions`
--
ALTER TABLE `markdistributions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigncourses`
--
ALTER TABLE `assigncourses`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK3` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `assignmarks`
--
ALTER TABLE `assignmarks`
  ADD CONSTRAINT `FK2_cat_id` FOREIGN KEY (`cat_id`) REFERENCES `markdistributions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK3_ac_id` FOREIGN KEY (`ac_id`) REFERENCES `assigncourses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_marks` FOREIGN KEY (`st_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `FK_semester` FOREIGN KEY (`Semester`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD CONSTRAINT `FK1_products` FOREIGN KEY (`st_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK2_seller` FOREIGN KEY (`assigncourse_id`) REFERENCES `assigncourses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `markdistributions`
--
ALTER TABLE `markdistributions`
  ADD CONSTRAINT `FKrtry` FOREIGN KEY (`ac_id`) REFERENCES `assigncourses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
