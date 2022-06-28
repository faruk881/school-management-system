-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 04:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_employee_salaries`
--

CREATE TABLE `account_employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `bonous_amount` double DEFAULT NULL,
  `bonous_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_employee_salaries`
--

INSERT INTO `account_employee_salaries` (`id`, `employee_id`, `date`, `amount`, `bonous_amount`, `bonous_name`, `created_at`, `updated_at`) VALUES
(63, 11, '2022-02', 200000, 10000, 'eid bonous', '2022-02-12 11:25:32', '2022-02-12 11:25:32'),
(64, 12, '2022-02', 155000, NULL, NULL, '2022-02-12 11:25:32', '2022-02-12 11:25:32'),
(65, 13, '2022-02', 100000, NULL, NULL, '2022-02-12 11:25:32', '2022-02-12 11:25:32'),
(66, 14, '2022-02', 30000, NULL, NULL, '2022-02-12 11:25:32', '2022-02-12 11:25:32'),
(67, 24, '2022-02', 20000, NULL, NULL, '2022-02-12 11:25:32', '2022-02-12 11:25:32'),
(68, 26, '2022-02', 50000, NULL, NULL, '2022-02-12 11:25:32', '2022-02-12 11:25:32'),
(69, 27, '2022-02', 60000, NULL, NULL, '2022-02-12 11:25:32', '2022-02-12 11:25:32'),
(70, 11, '2022-01', 200000, 10000, 'New Year Bonus', '2022-02-12 12:46:24', '2022-02-12 12:46:24'),
(71, 12, '2022-01', 155000, 7000, 'New Year Bonus', '2022-02-12 12:46:24', '2022-02-12 12:46:24'),
(72, 13, '2022-01', 100000, 5000, 'New Year Bonus', '2022-02-12 12:46:24', '2022-02-12 12:46:24'),
(73, 14, '2022-01', 30000, 6000, 'New Year Bonus', '2022-02-12 12:46:24', '2022-02-12 12:46:24'),
(74, 24, '2022-01', 20000, 2000, 'New Year Bonus', '2022-02-12 12:46:24', '2022-02-12 12:46:24'),
(75, 26, '2022-01', 50000, 12000, 'New Year Bonus', '2022-02-12 12:46:24', '2022-02-12 12:46:24'),
(76, 27, '2022-01', 60000, 15000, 'New Year Bonus', '2022-02-12 12:46:24', '2022-02-12 12:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `account_other_costs`
--

CREATE TABLE `account_other_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_student_fees`
--

CREATE TABLE `account_student_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_student_fees`
--

INSERT INTO `account_student_fees` (`id`, `year_id`, `class_id`, `student_id`, `fee_category_id`, `date`, `amount`, `created_at`, `updated_at`) VALUES
(91, 3, 6, 15, 1, '2022-02-01', 12000, '2022-02-19 05:20:47', '2022-02-19 05:20:47'),
(92, 3, 6, 16, 1, '2022-02-01', 12000, '2022-02-19 05:20:47', '2022-02-19 05:20:47'),
(93, 3, 6, 17, 1, '2022-02-01', 12750, '2022-02-19 05:20:47', '2022-02-19 05:20:47'),
(94, 3, 6, 15, 2, '2022-02-01', 4000, '2022-02-19 05:22:40', '2022-02-19 05:22:40'),
(95, 3, 6, 16, 2, '2022-02-01', 4000, '2022-02-19 05:22:40', '2022-02-19 05:22:40'),
(96, 3, 6, 17, 2, '2022-02-01', 4250, '2022-02-19 05:22:40', '2022-02-19 05:22:40'),
(97, 3, 6, 15, 3, '2022-02-01', 9600, '2022-02-25 12:06:18', '2022-02-25 12:06:18'),
(98, 3, 6, 16, 3, '2022-02-01', 9600, '2022-02-25 12:06:18', '2022-02-25 12:06:18'),
(99, 3, 6, 17, 3, '2022-02-01', 10200, '2022-02-25 12:06:18', '2022-02-25 12:06:18'),
(100, 3, 6, 18, 3, '2022-02-01', 10800, '2022-02-25 12:06:18', '2022-02-25 12:06:18'),
(114, 3, 6, 15, 1, '2022-03-01', 12000, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(115, 3, 6, 16, 1, '2022-03-01', 12000, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(116, 3, 6, 17, 1, '2022-03-01', 12750, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(117, 3, 6, 18, 1, '2022-03-01', 13500, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(118, 3, 6, 19, 1, '2022-03-01', 14250, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(119, 3, 6, 20, 1, '2022-03-01', 14700, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(120, 3, 6, 21, 1, '2022-03-01', 13050, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(121, 3, 6, 22, 1, '2022-03-01', 13200, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(122, 3, 6, 23, 1, '2022-03-01', 13200, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(123, 3, 6, 25, 1, '2022-03-01', 13500, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(124, 3, 6, 30, 1, '2022-03-01', 12000, '2022-03-05 16:23:24', '2022-03-05 16:23:24'),
(125, 3, 6, 15, 2, '2022-03-02', 4000, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(126, 3, 6, 16, 2, '2022-03-02', 4000, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(127, 3, 6, 17, 2, '2022-03-02', 4250, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(128, 3, 6, 18, 2, '2022-03-02', 4500, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(129, 3, 6, 19, 2, '2022-03-02', 4750, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(130, 3, 6, 20, 2, '2022-03-02', 4900, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(131, 3, 6, 21, 2, '2022-03-02', 4350, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(132, 3, 6, 22, 2, '2022-03-02', 4400, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(133, 3, 6, 23, 2, '2022-03-02', 4400, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(134, 3, 6, 25, 2, '2022-03-02', 4500, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(135, 3, 6, 30, 2, '2022-03-02', 4000, '2022-03-05 16:33:08', '2022-03-05 16:33:08'),
(136, 3, 6, 15, 2, '2022-02-02', 4000, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(137, 3, 6, 16, 2, '2022-02-02', 4000, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(138, 3, 6, 17, 2, '2022-02-02', 4250, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(139, 3, 6, 18, 2, '2022-02-02', 4500, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(140, 3, 6, 19, 2, '2022-02-02', 4750, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(141, 3, 6, 20, 2, '2022-02-02', 4900, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(142, 3, 6, 21, 2, '2022-02-02', 4350, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(143, 3, 6, 22, 2, '2022-02-02', 4400, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(144, 3, 6, 23, 2, '2022-02-02', 4400, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(145, 3, 6, 25, 2, '2022-02-02', 4500, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(146, 3, 6, 30, 2, '2022-02-02', 4000, '2022-03-05 16:40:35', '2022-03-05 16:40:35'),
(147, 3, 6, 15, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(148, 3, 6, 16, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(149, 3, 6, 17, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(150, 3, 6, 18, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(151, 3, 6, 19, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(152, 3, 6, 20, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(153, 3, 6, 21, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(154, 3, 6, 22, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(155, 3, 6, 23, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(156, 3, 6, 25, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16'),
(157, 3, 6, 30, 3, '2022-02-01', 12000, '2022-03-05 16:48:16', '2022-03-05 16:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `assign_students`
--

CREATE TABLE `assign_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'user_id=student_id',
  `roll` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_students`
--

INSERT INTO `assign_students` (`id`, `student_id`, `roll`, `class_id`, `year_id`, `group_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 8, 1, 1, 1, '2021-12-09 09:28:42', '2021-12-09 12:05:00'),
(2, 9, NULL, 1, 3, 1, 1, '2021-12-10 07:53:25', '2021-12-10 07:53:25'),
(3, 10, NULL, 2, 3, 2, 2, '2021-12-10 07:55:14', '2021-12-10 07:55:14'),
(4, 15, 1, 6, 3, 3, 1, '2022-01-07 07:26:26', '2022-01-09 09:32:02'),
(5, 16, 2, 6, 3, 3, 1, '2022-01-07 07:37:08', '2022-01-09 09:32:02'),
(6, 17, 3, 6, 3, 3, 1, '2022-01-07 07:38:14', '2022-01-09 09:32:02'),
(7, 18, 1, 6, 3, 3, 2, '2022-01-07 08:53:38', '2022-01-09 09:32:28'),
(8, 19, 2, 6, 3, 3, 2, '2022-01-07 08:56:02', '2022-01-09 09:32:28'),
(9, 20, 3, 6, 3, 3, 2, '2022-01-07 09:00:11', '2022-01-09 09:32:28'),
(10, 21, 4, 6, 3, 3, 2, '2022-01-07 09:01:59', '2022-01-09 09:32:28'),
(11, 22, 4, 6, 3, 3, 1, '2022-01-07 09:34:04', '2022-01-09 09:32:02'),
(12, 23, 5, 6, 3, 3, 1, '2022-01-07 11:42:23', '2022-01-09 09:32:02'),
(13, 25, NULL, 6, 3, 3, 1, '2022-02-10 09:48:25', '2022-02-10 09:48:25'),
(14, 30, NULL, 6, 3, 3, 1, '2022-02-17 11:53:01', '2022-02-17 11:53:01'),
(15, 31, NULL, 7, 3, 1, 1, '2022-02-18 11:37:35', '2022-02-18 11:37:35'),
(16, 33, NULL, 6, 6, 2, 1, '2022-05-27 10:11:14', '2022-05-27 10:11:14'),
(17, 34, NULL, 8, 6, 2, 1, '2022-05-27 10:15:37', '2022-05-27 10:15:37'),
(18, 35, NULL, 8, 6, 2, 1, '2022-05-27 10:29:22', '2022-05-27 10:29:22'),
(19, 36, NULL, 8, 6, 2, 1, '2022-05-28 17:35:16', '2022-05-28 17:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `full_mark` double NOT NULL,
  `pass_mark` double NOT NULL,
  `subjective_mark` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subjects`
--

INSERT INTO `assign_subjects` (`id`, `group_id`, `class_id`, `subject_id`, `full_mark`, `pass_mark`, `subjective_mark`, `created_at`, `updated_at`) VALUES
(5, 3, 6, 6, 100, 35, 0, '2022-01-07 07:15:04', '2022-01-07 07:15:04'),
(6, 3, 6, 7, 100, 35, 0, '2022-01-07 07:15:04', '2022-01-07 07:15:04'),
(7, 3, 6, 8, 100, 35, 0, '2022-01-07 07:15:04', '2022-01-07 07:15:04'),
(8, 3, 6, 9, 100, 35, 0, '2022-01-07 07:15:04', '2022-01-07 07:15:04'),
(9, 3, 6, 10, 100, 35, 0, '2022-01-07 07:15:04', '2022-01-07 07:15:04'),
(10, 3, 6, 11, 100, 35, 0, '2022-01-07 07:15:04', '2022-01-07 07:15:04'),
(11, 3, 6, 12, 100, 35, 0, '2022-01-07 07:15:04', '2022-01-07 07:15:04'),
(26, 2, 7, 13, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(27, 2, 7, 14, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(28, 2, 7, 15, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(29, 2, 7, 16, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(30, 2, 7, 17, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(31, 2, 7, 18, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(32, 2, 7, 19, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(33, 2, 7, 20, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(34, 2, 7, 21, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(35, 2, 7, 22, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(36, 2, 7, 23, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(37, 2, 7, 24, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(38, 2, 7, 25, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(39, 2, 7, 26, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(40, 2, 7, 27, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(41, 2, 7, 28, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38'),
(42, 2, 7, 29, 100, 35, 0, '2022-01-07 07:20:38', '2022-01-07 07:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `assign_teacher_subjects`
--

CREATE TABLE `assign_teacher_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_teacher_subjects`
--

INSERT INTO `assign_teacher_subjects` (`id`, `teacher_id`, `subject_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(6, 11, 6, 2, '2022-01-16 09:19:41', '2022-01-16 09:19:41'),
(7, 14, 7, 1, '2022-01-17 07:14:39', '2022-01-17 07:14:39'),
(8, 14, 7, 2, '2022-01-17 07:14:39', '2022-01-17 07:14:39'),
(10, 14, 8, 1, '2022-01-17 07:15:11', '2022-01-17 07:15:11'),
(11, 14, 9, 1, '2022-02-15 12:19:28', '2022-02-15 12:19:28'),
(12, 14, 10, 1, '2022-02-15 12:19:28', '2022-02-15 12:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Head Teacher', '2021-12-09 05:49:08', '2021-12-10 07:50:21'),
(2, 'Assistant Teacher', '2021-12-09 05:49:25', '2021-12-09 05:49:25'),
(3, 'Teacher', '2021-12-09 05:49:39', '2021-12-09 05:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `discount_students`
--

CREATE TABLE `discount_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_student_id` int(11) NOT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_students`
--

INSERT INTO `discount_students` (`id`, `assign_student_id`, `fee_category_id`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2021-12-09 09:28:42', '2021-12-09 09:28:42'),
(2, 2, 1, 10, '2021-12-10 07:53:25', '2021-12-10 07:53:25'),
(3, 3, 1, 25, '2021-12-10 07:55:14', '2021-12-10 07:55:14'),
(4, 4, 1, 20, '2022-01-07 07:26:26', '2022-01-07 07:26:26'),
(5, 5, 1, 20, '2022-01-07 07:37:08', '2022-01-07 07:37:08'),
(6, 6, 1, 15, '2022-01-07 07:38:14', '2022-01-07 07:38:14'),
(7, 7, 1, 10, '2022-01-07 08:53:38', '2022-01-07 08:53:38'),
(8, 8, 1, 5, '2022-01-07 08:56:02', '2022-01-07 08:56:02'),
(9, 9, 1, 2, '2022-01-07 09:00:11', '2022-01-07 09:00:11'),
(10, 10, 1, 13, '2022-01-07 09:01:59', '2022-01-07 09:01:59'),
(11, 11, 1, 12, '2022-01-07 09:34:04', '2022-01-07 09:34:04'),
(12, 12, 1, 12, '2022-01-07 11:42:23', '2022-01-07 11:42:23'),
(13, 13, 1, 10, '2022-02-10 09:48:25', '2022-02-10 09:48:25'),
(14, 14, 1, 20, '2022-02-17 11:53:01', '2022-02-17 11:53:01'),
(15, 15, 1, 10, '2022-02-18 11:37:35', '2022-02-18 11:37:35'),
(16, 16, 1, 15, '2022-05-27 10:11:14', '2022-05-27 10:11:14'),
(17, 17, 1, 12, '2022-05-27 10:15:37', '2022-05-27 10:15:37'),
(18, 18, 1, 20, '2022-05-27 10:29:22', '2022-05-27 10:29:22'),
(19, 19, 1, 20, '2022-05-28 17:35:16', '2022-05-28 17:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` date NOT NULL,
  `attend_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `date`, `attend_status`, `created_at`, `updated_at`) VALUES
(39, 11, '2022-02-16', 'Present', '2022-02-15 22:32:27', '2022-02-15 22:32:27'),
(40, 12, '2022-02-16', 'Present', '2022-02-15 22:32:27', '2022-02-15 22:32:27'),
(41, 13, '2022-02-16', 'Present', '2022-02-15 22:32:27', '2022-02-15 22:32:27'),
(42, 14, '2022-02-16', 'Present', '2022-02-15 22:32:27', '2022-02-15 22:32:27'),
(43, 24, '2022-02-16', 'Present', '2022-02-15 22:32:27', '2022-02-15 22:32:27'),
(44, 26, '2022-02-16', 'Present', '2022-02-15 22:32:27', '2022-02-15 22:32:27'),
(45, 27, '2022-02-16', 'Present', '2022-02-15 22:32:27', '2022-02-15 22:32:27'),
(60, 11, '2022-02-15', 'Leave', '2022-02-16 07:29:09', '2022-02-16 07:29:09'),
(61, 12, '2022-02-15', 'Present', '2022-02-16 07:29:09', '2022-02-16 07:29:09'),
(62, 13, '2022-02-15', 'Present', '2022-02-16 07:29:09', '2022-02-16 07:29:09'),
(63, 14, '2022-02-15', 'Present', '2022-02-16 07:29:09', '2022-02-16 07:29:09'),
(64, 24, '2022-02-15', 'Present', '2022-02-16 07:29:09', '2022-02-16 07:29:09'),
(65, 26, '2022-02-15', 'Present', '2022-02-16 07:29:09', '2022-02-16 07:29:09'),
(66, 27, '2022-02-15', 'Present', '2022-02-16 07:29:09', '2022-02-16 07:29:09'),
(67, 28, '2022-02-15', 'Present', '2022-02-16 07:29:09', '2022-02-16 07:29:09'),
(68, 11, '2022-02-14', 'Leave', '2022-02-16 07:29:29', '2022-02-16 07:29:29'),
(69, 12, '2022-02-14', 'Present', '2022-02-16 07:29:29', '2022-02-16 07:29:29'),
(70, 13, '2022-02-14', 'Present', '2022-02-16 07:29:29', '2022-02-16 07:29:29'),
(71, 14, '2022-02-14', 'Present', '2022-02-16 07:29:29', '2022-02-16 07:29:29'),
(72, 24, '2022-02-14', 'Present', '2022-02-16 07:29:29', '2022-02-16 07:29:29'),
(73, 26, '2022-02-14', 'Present', '2022-02-16 07:29:29', '2022-02-16 07:29:29'),
(74, 27, '2022-02-14', 'Present', '2022-02-16 07:29:29', '2022-02-16 07:29:29'),
(75, 28, '2022-02-14', 'Present', '2022-02-16 07:29:29', '2022-02-16 07:29:29'),
(76, 11, '2022-02-13', 'Absent', '2022-02-16 07:30:02', '2022-02-16 07:30:02'),
(77, 12, '2022-02-13', 'Present', '2022-02-16 07:30:02', '2022-02-16 07:30:02'),
(78, 13, '2022-02-13', 'Present', '2022-02-16 07:30:02', '2022-02-16 07:30:02'),
(79, 14, '2022-02-13', 'Present', '2022-02-16 07:30:02', '2022-02-16 07:30:02'),
(80, 24, '2022-02-13', 'Present', '2022-02-16 07:30:02', '2022-02-16 07:30:02'),
(81, 26, '2022-02-13', 'Present', '2022-02-16 07:30:02', '2022-02-16 07:30:02'),
(82, 27, '2022-02-13', 'Present', '2022-02-16 07:30:02', '2022-02-16 07:30:02'),
(83, 28, '2022-02-13', 'Present', '2022-02-16 07:30:02', '2022-02-16 07:30:02'),
(84, 11, '2022-02-24', 'Present', '2022-02-24 16:30:43', '2022-02-24 16:30:43'),
(85, 12, '2022-02-24', 'Present', '2022-02-24 16:30:43', '2022-02-24 16:30:43'),
(86, 13, '2022-02-24', 'Leave', '2022-02-24 16:30:43', '2022-02-24 16:30:43'),
(87, 14, '2022-02-24', 'Present', '2022-02-24 16:30:43', '2022-02-24 16:30:43'),
(88, 24, '2022-02-24', 'Present', '2022-02-24 16:30:43', '2022-02-24 16:30:43'),
(89, 26, '2022-02-24', 'Absent', '2022-02-24 16:30:43', '2022-02-24 16:30:43'),
(90, 27, '2022-02-24', 'Present', '2022-02-24 16:30:43', '2022-02-24 16:30:43'),
(91, 28, '2022-02-24', 'Present', '2022-02-24 16:30:43', '2022-02-24 16:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `leave_purpose_id` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `status_action_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `employee_id`, `leave_purpose_id`, `status`, `status_action_by`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 'Approved', 'Admin', '2021-12-10', '2021-12-11', '2021-12-10 11:38:52', '2022-02-12 01:20:32'),
(2, 11, 2, 'Approved', 'Admin', '2022-01-02', '2022-01-04', '2022-01-02 11:05:17', '2022-01-03 22:10:54'),
(3, 14, 3, 'Rejected', 'Admin', '2022-01-04', '2022-01-21', '2022-01-02 11:12:23', '2022-01-02 12:29:43'),
(4, 14, 1, 'Approved', 'Admin', '2022-01-02', '2022-01-26', '2022-01-02 11:27:58', '2022-01-02 12:20:38'),
(5, 14, 4, 'Approved', '', '2022-01-27', '2022-02-25', '2022-01-02 11:30:27', '2022-01-02 11:51:55'),
(6, 14, 3, 'Pending', NULL, '2022-01-04', '2022-01-06', '2022-01-04 10:44:01', '2022-01-04 10:44:01'),
(7, 14, 2, 'Pending', NULL, '2022-01-05', '2022-01-08', '2022-01-04 11:05:35', '2022-01-04 11:05:35'),
(8, 14, 1, 'Approved', 'Admin', '2022-02-17', '2022-02-19', '2022-02-15 22:23:10', '2022-02-24 16:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `employee_sallary_logs`
--

CREATE TABLE `employee_sallary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=User_id',
  `previous_salary` int(11) DEFAULT NULL,
  `present_salary` int(11) DEFAULT NULL,
  `increment_salary` int(11) DEFAULT NULL,
  `effected_salary` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_sallary_logs`
--

INSERT INTO `employee_sallary_logs` (`id`, `employee_id`, `previous_salary`, `present_salary`, `increment_salary`, `effected_salary`, `created_at`, `updated_at`) VALUES
(1, 11, 200000, 200000, 0, '2021-12-10', '2021-12-10 10:47:15', '2021-12-10 10:47:15'),
(2, 12, 5000, 5000, 0, '2022-12-10', '2021-12-10 10:48:24', '2021-12-10 10:48:24'),
(3, 13, 100000, 100000, 0, '2021-12-10', '2021-12-10 10:51:17', '2021-12-10 10:51:17'),
(4, 12, 5000, 155000, 150000, '2021-12-11', '2021-12-10 11:05:57', '2021-12-10 11:05:57'),
(5, 14, 30000, 30000, 0, '2022-01-02', '2022-01-02 10:00:55', '2022-01-02 10:00:55'),
(6, 24, 20000, 20000, 0, '2022-01-15', '2022-01-15 08:48:06', '2022-01-15 08:48:06'),
(7, 26, 50000, 50000, 0, '2022-02-11', '2022-02-11 04:55:35', '2022-02-11 04:55:35'),
(8, 27, 60000, 60000, 0, '2020-01-01', '2022-02-11 06:08:34', '2022-02-11 06:08:34'),
(9, 28, 30000, 30000, 0, '2022-02-16', '2022-02-15 23:54:23', '2022-02-15 23:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_type_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_year` year(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `class_id`, `exam_type_id`, `exam_date`, `exam_year`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2022-02-23', 2021, '2022-02-23 08:24:59', '2022-02-23 08:24:59'),
(2, 7, 1, '2022-02-24', 2021, '2022-02-23 08:24:59', '2022-02-23 08:24:59'),
(3, 8, 1, '2022-02-23', 2021, '2022-02-23 08:24:59', '2022-02-23 08:24:59'),
(4, 6, 2, '2022-03-01', 2021, '2022-02-23 11:48:43', '2022-02-23 11:48:43'),
(5, 7, 2, '2022-03-24', 2021, '2022-02-23 11:48:43', '2022-02-23 11:48:43'),
(6, 7, 3, '2022-01-01', 2021, '2022-02-23 11:49:03', '2022-02-23 11:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `exam_date`, `created_at`, `updated_at`) VALUES
(1, '1st Terminal Exam', '2022-03-01', '2021-12-08 07:09:29', '2021-12-08 07:09:29'),
(2, '2nd Terminal Exam', NULL, '2021-12-08 07:09:48', '2021-12-08 07:10:41'),
(3, '3rd Terminal Exam', NULL, '2021-12-08 07:10:05', '2021-12-08 07:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_categories`
--

CREATE TABLE `fee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_categories`
--

INSERT INTO `fee_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Registration Fee', '2021-12-07 06:33:03', '2021-12-07 06:33:03'),
(2, 'Monthly Fee', '2021-12-07 06:33:18', '2021-12-07 06:33:18'),
(3, 'Exam Fee', '2021-12-07 06:33:34', '2021-12-07 06:33:34'),
(5, 'Other Fee', '2021-12-18 23:22:09', '2021-12-18 23:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `fee_category_amounts`
--

CREATE TABLE `fee_category_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_category_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_category_amounts`
--

INSERT INTO `fee_category_amounts` (`id`, `fee_category_id`, `class_id`, `amount`, `created_at`, `updated_at`) VALUES
(34, 1, 6, 15000, '2022-01-07 00:58:28', '2022-01-07 00:58:28'),
(35, 1, 7, 15000, '2022-01-07 00:58:28', '2022-01-07 00:58:28'),
(36, 1, 8, 15000, '2022-01-07 00:58:28', '2022-01-07 00:58:28'),
(37, 2, 6, 5000, '2022-01-07 00:59:09', '2022-01-07 00:59:09'),
(38, 2, 7, 10000, '2022-01-07 00:59:09', '2022-01-07 00:59:09'),
(39, 2, 8, 15000, '2022-01-07 00:59:09', '2022-01-07 00:59:09'),
(43, 5, 6, 200, '2022-02-15 20:56:55', '2022-02-15 20:56:55'),
(44, 5, 7, 300, '2022-02-15 20:56:55', '2022-02-15 20:56:55'),
(45, 5, 8, 400, '2022-02-15 20:56:55', '2022-02-15 20:56:55'),
(46, 3, 6, 12000, '2022-05-28 18:14:26', '2022-05-28 18:14:26'),
(47, 3, 7, 21000, '2022-05-28 18:14:26', '2022-05-28 18:14:26'),
(48, 3, 8, 20000, '2022-05-28 18:14:26', '2022-05-28 18:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `leave_purposes`
--

CREATE TABLE `leave_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_purposes`
--

INSERT INTO `leave_purposes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Family Problem', NULL, NULL),
(2, 'Personal Problem', NULL, NULL),
(3, 'Test Test Test', '2022-01-02 10:57:33', '2022-01-02 10:57:33'),
(4, 'For toor', '2022-01-02 11:30:27', '2022-01-02 11:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `marks_grades`
--

CREATE TABLE `marks_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_marks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_marks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_grades`
--

INSERT INTO `marks_grades` (`id`, `grade_name`, `grade_point`, `start_marks`, `end_marks`, `start_point`, `end_point`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'A+', '5.00', '80', '100', '5', '5', 'Excellent', '2022-01-09 08:56:27', '2022-01-09 08:56:27'),
(2, 'A', '4.00', '70', '79', '4.0', '4.99', 'Very Good', '2022-01-09 08:57:28', '2022-01-09 08:57:28'),
(3, 'A-', '3.50', '60', '69', '3.5', '3.99', 'Good', '2022-01-09 08:58:03', '2022-01-09 08:58:03'),
(4, 'B', '3.00', '50', '59', '3.00', '3.49', 'Average', '2022-01-09 08:58:38', '2022-01-09 08:58:38'),
(5, 'C', '2.00', '40', '49', '2.00', '2.99', 'Disappoint', '2022-01-09 08:59:13', '2022-01-09 08:59:13'),
(6, 'D', '1.00', '33', '39', '1.00', '1.99', 'Bad', '2022-01-09 09:00:21', '2022-01-09 09:00:21'),
(7, 'F', '0.00', '00', '32', '0.00', '0.99', 'Fail', '2022-01-09 09:00:57', '2022-01-09 09:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `route`, `parent_id`, `slug`, `order_by`, `created_at`, `updated_at`) VALUES
(1, 'Manage User', NULL, NULL, 'manage-user', 1, NULL, NULL),
(2, 'View User', 'user.view', 1, 'view-user', 1, NULL, NULL),
(3, 'Add User', 'users.add', 1, 'add-user', 2, NULL, NULL),
(4, 'Manage Profile', '', NULL, 'manage-profile', 2, NULL, NULL),
(5, 'Your Profile', 'profile.view', 4, 'your-profile', 1, NULL, NULL),
(1, 'Manage User', NULL, NULL, 'manage-user', 1, NULL, NULL),
(2, 'View User', 'user.view', 1, 'view-user', 1, NULL, NULL),
(3, 'Add User', 'users.add', 1, 'add-user', 2, NULL, NULL),
(4, 'Manage Profile', '', NULL, 'manage-profile', 2, NULL, NULL),
(5, 'Your Profile', 'profile.view', 4, 'your-profile', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_permissions`
--

CREATE TABLE `menu_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_permissions`
--

INSERT INTO `menu_permissions` (`id`, `menu_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_11_30_132202_create_sessions_table', 1),
(8, '2021_12_05_132105_create_student_classes_table', 3),
(9, '2021_12_05_141631_create_student_years_table', 4),
(10, '2021_12_07_120251_create_student_groups_table', 5),
(11, '2021_12_07_121907_create_student_shifts_table', 6),
(12, '2021_12_07_122919_create_fee_categories_table', 7),
(13, '2021_12_07_124354_create_fee_category_amounts_table', 8),
(14, '2021_12_08_130113_create_exam_types_table', 9),
(15, '2021_12_08_131357_create_school_subjects_table', 10),
(16, '2021_12_08_132450_create_assign_subjects_table', 11),
(17, '2021_12_09_114332_create_designations_table', 12),
(18, '2014_10_12_000000_create_users_table', 13),
(19, '2021_12_09_121630_create_assign_students_table', 14),
(20, '2021_12_09_121934_create_discount_students_table', 14),
(21, '2021_12_10_160347_create_employee_sallary_logs_table', 15),
(22, '2021_12_10_171729_create_employee_leaves_table', 16),
(23, '2021_12_10_171757_create_leave_purposes_table', 16),
(24, '2021_12_10_174634_create_employee_attendances_table', 17),
(25, '2021_12_11_161319_create_student_marks_table', 18),
(26, '2021_12_11_165345_create_marks_grades_table', 19),
(27, '2021_12_11_171521_create_account_student_fees_table', 20),
(28, '2021_12_11_172514_create_account_employee_salaries_table', 21),
(29, '2021_12_11_173832_create_account_other_costs_table', 22),
(30, '2022_01_15_150202_create_assign_teacher_subjects_table', 23),
(31, '2022_01_16_171959_create_student_attendances_table', 24),
(32, '2022_02_10_141054_create_school_details_table', 25),
(33, '2022_02_11_140758_create_public_messages_table', 26),
(34, '2022_02_13_065342_create_school_events_table', 27),
(35, '2022_02_13_180340_create_school_notices_table', 28),
(36, '2022_02_23_140222_create_exam_schedules_table', 29),
(37, '2022_02_26_011227_create_slider_images_table', 30),
(38, '2022_02_28_013019_create_principal_messages_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('omarfaruk.likhon@gmail.com', '$2y$10$Ccf5ZEduF0ezFZI31Rq56ezDDQCwex7ymuY3G8tPApn7fcFGhdvuG', '2022-04-01 09:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `principal_messages`
--

CREATE TABLE `principal_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `principal_messages`
--

INSERT INTO `principal_messages` (`id`, `photo`, `message`, `created_at`, `updated_at`) VALUES
(4, 'principal.jpg', 'I take the privilege to welcome all of you to the official website of Adamjee Cantonment College which is meticulously designed to offer you vivid glimpses of the history, tradition, achievements and ongoing activities of the college. The combination of long-cherished heritage and enviable academic excellence has created a unique brand value for the institution, making it one of the top ranking colleges of the country.\r\n\r\nFounded in 1960, Adamjee Cantonment College is pledge-bound to create worthy citizens for the nation. The institution was established following the ideology and curricular activities of original renowned public school of England—Eton and Harrow. The motto of this college is to inculcate in the students the synthesis of education, discipline and morality. Adamjee Cantonment College is always keen to incorporate advanced technology in traditional educational system and has brought revolutionary changes in the education management of the college through installing multi-media classrooms, website, digital messaging system, digital result system etc that have made the institution a truly digitalized college and will go a long way in making our students the capable  citizens of the 21 Century’s world. Our dedicated and potential teaching staff are equipped enough to make the students well-prepared for the challenges of the ever-changing world.', '2022-02-27 20:03:05', '2022-02-27 20:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `public_messages`
--

CREATE TABLE `public_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `read_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `public_messages`
--

INSERT INTO `public_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `read`, `read_by`, `created_at`, `updated_at`) VALUES
(4, 'MD OMAR FARUK', 'omarfaruk.likhon@gmail.com', '', 'question', 'I want to get admission', 'yes', 'Admin', '2022-02-11 10:18:35', '2022-02-11 12:18:14'),
(5, 'MD ABID HOSSAIN', 'abid@gmail.com', '', 'Question', 'How many students are in your school?', 'yes', NULL, '2022-02-11 10:20:46', '2022-02-11 10:20:46'),
(6, 'MD RONY', 'rony@gmail.com', '', 'test', 'hi, asdfkljaksdjfjklajsdfk asdljfk', 'yes', 'Admin', '2022-02-11 10:28:51', '2022-02-11 12:18:22'),
(7, 'Md Omar Faruk', 'omarfaruk.likhon@gmail.com', '', 'help', 'Please tell me your location', 'no', NULL, '2022-02-13 09:31:45', '2022-02-13 09:31:45'),
(8, 'Md Pushpa', 'pushpa@gmail.com', '', 'Help', 'I want to get admission on your school', 'no', NULL, '2022-02-14 08:36:08', '2022-02-14 08:36:08'),
(9, 'Md. Omar Faruk', 'omarfaruk@gmail.com', '', 'test', 'test testtest testtest testtest testtest testtest testtest test', 'yes', 'Admin', '2022-02-14 12:17:20', '2022-02-14 12:17:53'),
(10, 'Md Omar Faruk', 'omarfaruk.likhon@gmail.com', '01750089881', 'Need Help', 'Please call back', 'no', NULL, '2022-02-14 12:43:33', '2022-02-14 12:43:33'),
(11, 'John Wick', 'john@gmail.com', '01750089881', 'Admission', 'I want to get admission', 'yes', 'Admin', '2022-02-16 10:03:35', '2022-02-16 10:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `school_details`
--

CREATE TABLE `school_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_coordinate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_est` date NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_cover` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_details`
--

INSERT INTO `school_details` (`id`, `school_name`, `school_phone`, `school_email`, `school_address`, `map_coordinate`, `school_est`, `image`, `image_cover`, `about_title`, `about_description`, `school_youtube`, `school_twitter`, `school_instagram`, `school_facebook`, `video_title`, `video_description`, `video_url`, `mission`, `created_at`, `updated_at`) VALUES
(70, 'Test School', '01750089881', 'mail@nub.ac.bd', 'Banani, Dhaka, Bangladesh', '23.7934896,90.4015967', '2000-01-15', 'school_logo.jpg', NULL, 'Why we are better', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'https://www.youtube.com', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.facebook.com', 'Learn More About Us From Video', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '6sa1G_9jCb0', 'Our vision and mission is very simple:\r\n\r\n“ Come here to seek knowledge and Go back to serve the country”\r\n\r\nWe impart quality education according to the prescribed syllabus of Education Board, Dhaka and National University, Bangladesh. We revolutionized our classroom practice through the introduction of Multimedia Central Classes which integrate the traditional syllabus with the outside tech world .Our vision is to inculcate the sense of discipline, morality , tradition and patriotism and modern world by providing quality education. Traditional and technological opportunities are provided to express and develop our students with a view to making them 21st century ideal citizens of the entire world .\r\n\r\nRich traditional heritage encapsulated with the opportunity of technology made our students aware about a changing world outside and led them to understand about the 21st century environment and world’s demand.', '2022-02-27 18:56:52', '2022-02-27 18:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `school_events`
--

CREATE TABLE `school_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `event_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_events`
--

INSERT INTO `school_events` (`id`, `event_name`, `event_date`, `event_time`, `event_photo`, `event_description`, `created_by_user_id`, `updated_by_user_id`, `created_at`, `updated_at`) VALUES
(4, 'big event', '2022-02-13', '13:29:00', 'default.jpg', 'Bih Event', 1, NULL, '2022-02-13 01:29:52', '2022-02-13 01:29:52'),
(6, 'wertwert', '2022-02-13', '13:43:00', '202202130743gladiator.webp', 'asdfadsf', 1, NULL, '2022-02-13 01:43:49', '2022-02-13 01:43:49'),
(7, 'asdfasdf', '2022-02-09', '13:48:00', '202202130748joanna-kosinska-7ACuHoezUYk-unsplash.jpg', 'asdfasdf', 1, NULL, '2022-02-13 01:48:40', '2022-02-13 01:48:40'),
(8, 'asdfasdf', '2022-02-09', '13:48:00', '202202130749TARINTINO.jpg', 'asdfasdf', 1, NULL, '2022-02-13 01:49:14', '2022-02-13 01:49:14'),
(9, 'asdfasdf', '2022-02-09', '13:48:00', '202202130750TARINTINO.jpg', 'asdfasdf', 1, NULL, '2022-02-13 01:50:40', '2022-02-13 01:50:40'),
(10, 'asdfasdf', '2022-02-13', '13:41:00', '202202130817joanna-kosinska-7ACuHoezUYk-unsplash.jpg', 'adsfasdf', 1, NULL, '2022-02-13 02:17:47', '2022-02-13 02:17:47'),
(11, 'The Meet Event', '2022-02-14', '19:55:00', '202202131355nub.jpg', 'Hi, This is the most expensive event in history', 1, NULL, '2022-02-13 07:55:50', '2022-02-13 07:55:50'),
(12, 'Test Event', '2022-02-17', '11:10:00', '20220216160921568.jpg', 'This is a test event', 1, NULL, '2022-02-16 10:09:42', '2022-02-16 10:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `school_notices`
--

CREATE TABLE `school_notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_date` date NOT NULL,
  `notice_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `updated_by_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_notices`
--

INSERT INTO `school_notices` (`id`, `notice_name`, `notice_date`, `notice_description`, `created_by_user_id`, `updated_by_user_id`, `created_at`, `updated_at`) VALUES
(3, 'School will remain close from 12 march', '2022-02-14', 'Due to covid pandemic, school will be closed from 12 March', 14, NULL, '2022-02-13 12:34:26', '2022-02-13 12:34:26'),
(4, 'Job offer', '2022-02-14', 'All students are requested to give us updated CV for job opening', 14, NULL, '2022-02-13 12:42:09', '2022-02-13 12:42:09'),
(5, 'Final Exam', '2022-02-14', 'Your final exam will be held on March 2022', 14, NULL, '2022-02-13 12:42:57', '2022-02-13 12:42:57'),
(6, 'test', '2022-02-13', '3838', 14, NULL, '2022-02-13 13:05:00', '2022-02-13 13:05:00'),
(7, 'Notice for job placement', '2022-02-13', 'Hay there hurry up for job prepration', 14, 14, '2022-02-13 13:06:27', '2022-02-13 13:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `school_subjects`
--

CREATE TABLE `school_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_subjects`
--

INSERT INTO `school_subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'Bangla 101', '2022-01-07 07:00:35', '2022-01-07 07:00:35'),
(7, 'English 107', '2022-01-07 07:00:48', '2022-01-07 07:00:48'),
(8, 'Mathematics 109', '2022-01-07 07:00:59', '2022-01-07 07:00:59'),
(9, 'Science 127', '2022-01-07 07:01:11', '2022-01-07 07:01:11'),
(10, 'Islam 111', '2022-01-07 07:01:24', '2022-01-07 07:01:24'),
(11, 'Bangladesh & Global 150', '2022-01-07 07:01:36', '2022-01-07 07:01:36'),
(12, 'Information Technology 154', '2022-01-07 07:01:49', '2022-01-07 07:01:49'),
(13, 'Bangla 1st Paper', '2022-01-07 07:04:07', '2022-01-07 07:04:07'),
(14, 'Bangla 2nd Paper', '2022-01-07 07:04:30', '2022-01-07 07:04:30'),
(15, 'English 1st Paper', '2022-01-07 07:06:33', '2022-01-07 07:06:33'),
(16, 'English 2nd Paper', '2022-01-07 07:06:44', '2022-01-07 07:06:44'),
(17, 'Math', '2022-01-07 07:06:56', '2022-01-07 07:06:56'),
(18, 'Religion', '2022-01-07 07:07:07', '2022-01-07 07:07:07'),
(19, 'ICT', '2022-01-07 07:07:19', '2022-01-07 07:07:19'),
(20, 'Physics', '2022-01-07 07:07:30', '2022-01-07 07:07:30'),
(21, 'Chemistry', '2022-01-07 07:07:40', '2022-01-07 07:07:40'),
(22, 'Biology', '2022-01-07 07:07:52', '2022-01-07 07:07:52'),
(23, 'Higher Math', '2022-01-07 07:08:03', '2022-01-07 07:08:03'),
(24, 'Accounting', '2022-01-07 07:08:14', '2022-01-07 07:08:14'),
(25, 'Finance', '2022-01-07 07:08:25', '2022-01-07 07:08:25'),
(26, 'Business Entrepreneurship', '2022-01-07 07:08:37', '2022-01-07 07:08:37'),
(27, 'Agricultural Studies', '2022-01-07 07:08:49', '2022-01-07 07:08:49'),
(28, 'General Science', '2022-01-07 07:09:01', '2022-01-07 07:09:01'),
(29, 'Bangladesh and Global Studies', '2022-01-07 07:09:12', '2022-01-07 07:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('xYkC7SFSOxVK5ovv8knLlvsK6o8Hcj6J6ZNiJ89H', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IlFqbWlhUEsyTnBCRHNPSWNvT0pJd1l3c2I3U29NWXJQb1VQOWZHV04iO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRQd3E2dE9IR0lRU2h1OXFkU0FVZVh1LjlqeGp6ZWRCb0N4c3F3azkvTWFwenF0VFJGZU5nTyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkUHdxNnRPSEdJUVNodTlxZFNBVWVYdS45anhqemVkQm9DeHNxd2s5L01hcHpxdFRSRmVOZ08iO30=', 1656178011);

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `name`, `serial`, `created_at`, `updated_at`) VALUES
(9, 'slider_image2.jpg', 2, '2022-02-26 18:23:04', '2022-02-26 18:23:04'),
(13, 'slider_image6.jpg', 6, '2022-02-26 18:23:04', '2022-02-26 18:23:04'),
(16, 'slider_image1.png', 1, '2022-02-26 18:27:57', '2022-02-26 18:27:57'),
(17, 'slider_image4.jpg', 4, '2022-02-26 18:27:57', '2022-02-26 18:27:57'),
(18, 'slider_image3.jpg', 3, '2022-02-26 18:55:00', '2022-02-26 18:55:00'),
(19, 'slider_image5.jpg', 5, '2022-02-26 18:55:40', '2022-02-26 18:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `student_school_id` int(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `attend_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `student_id`, `student_school_id`, `subject_id`, `shift_id`, `date`, `attend_status`, `created_at`, `updated_at`) VALUES
(257, 15, 20200011, 7, 1, '2022-02-16', 'Present', '2022-02-16 09:42:10', '2022-02-16 09:42:10'),
(258, 16, 20200016, 7, 1, '2022-02-16', 'Present', '2022-02-16 09:42:10', '2022-02-16 09:42:10'),
(259, 17, 20200017, 7, 1, '2022-02-16', 'Present', '2022-02-16 09:42:10', '2022-02-16 09:42:10'),
(260, 22, 20200022, 7, 1, '2022-02-16', 'Present', '2022-02-16 09:42:10', '2022-02-16 09:42:10'),
(261, 23, 20200023, 7, 1, '2022-02-16', 'Present', '2022-02-16 09:42:10', '2022-02-16 09:42:10'),
(262, 25, 20200024, 7, 1, '2022-02-16', 'Present', '2022-02-16 09:42:10', '2022-02-16 09:42:10'),
(263, 15, 20200011, 7, 1, '2022-02-13', 'Present', '2022-02-16 09:42:33', '2022-02-16 09:42:33'),
(264, 16, 20200016, 7, 1, '2022-02-13', 'Present', '2022-02-16 09:42:33', '2022-02-16 09:42:33'),
(265, 17, 20200017, 7, 1, '2022-02-13', 'Present', '2022-02-16 09:42:33', '2022-02-16 09:42:33'),
(266, 22, 20200022, 7, 1, '2022-02-13', 'Present', '2022-02-16 09:42:33', '2022-02-16 09:42:33'),
(267, 23, 20200023, 7, 1, '2022-02-13', 'Present', '2022-02-16 09:42:33', '2022-02-16 09:42:33'),
(268, 25, 20200024, 7, 1, '2022-02-13', 'Present', '2022-02-16 09:42:33', '2022-02-16 09:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'Eight', '2022-01-04 11:09:04', '2022-01-04 11:09:04'),
(7, 'Nine', '2022-01-04 11:09:19', '2022-02-25 06:36:14'),
(8, 'Ten', '2022-01-04 11:09:45', '2022-02-25 06:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Art', '2021-12-07 06:12:21', '2021-12-07 06:12:21'),
(2, 'Science', '2021-12-07 06:12:36', '2021-12-07 06:12:36'),
(3, 'No Group', '2021-12-07 06:12:50', '2022-01-07 06:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `assign_subject_id` int(11) DEFAULT NULL,
  `exam_type_id` int(11) DEFAULT NULL,
  `marks` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `id_no`, `shift_id`, `group_id`, `year_id`, `class_id`, `assign_subject_id`, `exam_type_id`, `marks`, `created_at`, `updated_at`) VALUES
(354, 16, '20200016', 1, 3, 3, 6, 7, 1, 10, '2022-02-15 09:46:44', '2022-02-15 09:46:44'),
(355, 15, '20200011', 1, 3, 3, 6, 7, 1, 60, '2022-02-15 09:47:43', '2022-02-15 09:47:43'),
(356, 16, '20200016', 1, 3, 3, 6, 7, 1, 70, '2022-02-15 09:47:43', '2022-02-15 09:47:43'),
(357, 17, '20200017', 1, 3, 3, 6, 7, 1, 50, '2022-02-15 09:47:43', '2022-02-15 09:47:43'),
(358, 22, '20200022', 1, 3, 3, 6, 7, 1, 80, '2022-02-15 09:47:43', '2022-02-15 09:47:43'),
(359, 23, '20200023', 1, 3, 3, 6, 7, 1, 60, '2022-02-15 09:47:43', '2022-02-15 09:47:43'),
(360, 25, '20200024', 1, 3, 3, 6, 7, 1, 40, '2022-02-15 09:47:43', '2022-02-15 09:47:43'),
(368, 15, '20200011', 1, 3, 3, 6, 8, 1, 60, '2022-02-15 09:56:04', '2022-02-15 09:56:04'),
(369, 16, '20200016', 1, 3, 3, 6, 8, 1, 60, '2022-02-15 09:56:04', '2022-02-15 09:56:04'),
(370, 17, '20200017', 1, 3, 3, 6, 8, 1, 60, '2022-02-15 09:56:04', '2022-02-15 09:56:04'),
(371, 22, '20200022', 1, 3, 3, 6, 8, 1, 60, '2022-02-15 09:56:04', '2022-02-15 09:56:04'),
(372, 23, '20200023', 1, 3, 3, 6, 8, 1, 60, '2022-02-15 09:56:04', '2022-02-15 09:56:04'),
(374, 25, '20200024', 1, 3, 3, 6, 8, 1, 80, '2022-02-15 09:56:33', '2022-02-15 09:56:33'),
(375, 18, '20200018', 2, 3, 3, 6, 7, 1, 20, '2022-02-15 10:01:12', '2022-02-15 10:01:12'),
(377, 20, '20200020', 2, 3, 3, 6, 7, 1, 36, '2022-02-15 10:01:12', '2022-02-15 10:01:12'),
(378, 21, '20200021', 2, 3, 3, 6, 7, 1, 90, '2022-02-15 10:01:12', '2022-02-15 10:01:12'),
(379, 19, '20200019', 2, 3, 3, 6, 7, 1, 41, '2022-02-15 10:02:00', '2022-02-15 10:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_shifts`
--

CREATE TABLE `student_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_shifts`
--

INSERT INTO `student_shifts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Shift A', '2021-12-07 06:23:49', '2021-12-07 06:23:49'),
(2, 'Shift B', '2021-12-07 06:24:03', '2021-12-07 06:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `student_years`
--

CREATE TABLE `student_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_years`
--

INSERT INTO `student_years` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, '2020', '2021-12-05 08:27:49', '2021-12-05 08:27:49'),
(4, '2021', '2021-12-05 08:28:03', '2021-12-05 08:28:03'),
(6, '2022', '2022-01-07 06:56:26', '2022-01-07 06:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student,Employee,Admin',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin=head of sotware,operator=computer operator,user=employee',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=inactive,1=active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dark',
  `edu_qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edu_institute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_monthly_fee_paid` int(255) DEFAULT NULL,
  `total_registration_fee_paid` int(255) DEFAULT NULL,
  `total_exam_fee_paid` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `religion`, `id_no`, `dob`, `code`, `role`, `join_date`, `designation_id`, `salary`, `status`, `remember_token`, `current_team_id`, `profile_photo_path`, `theme`, `edu_qualification`, `edu_institute`, `facebook_link`, `instagram_link`, `twitter_link`, `total_monthly_fee_paid`, `total_registration_fee_paid`, `total_exam_fee_paid`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$Pwq6tOHGIQShu9qdSAUeXu.9jxjzedBoCxsqwk9/MapzqtTRFeNgO', '01750089881', 'Dhaka Bangladesh', 'Male', '20211212125620200211_165927.jpg', 'MD REZAUL KARIM', 'MST KOMOLA BEGUM', 'ISLAM', NULL, '1996-01-01', NULL, 'Admin', NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-25 15:43:54'),
(8, 'Student', 'MD SHAKIB KHAN', 'shakib@gmail.com', NULL, '$2y$10$Pwq6tOHGIQShu9qdSAUeXu.9jxjzedBoCxsqwk9/MapzqtTRFeNgO', '01750089881', 'Dhaka, Bangladesh', 'Male', '202205260017cropped-800-800-1104541.jpg', 'MD AMIR KHAN', 'KRISTEN STWART', 'Islam', '20180001', '1996-01-01', '5165', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 09:28:42', '2022-05-25 18:17:06'),
(9, 'Student', 'Keanu Reeves', NULL, NULL, '$2y$10$X6TBTEXyW8tpNzYRpEN4yO5e.406oy.nedISyuVykSfczY8ekw9MG', '01750089881', 'West Kazipara, Mirpur, Dhaka', 'Male', '202112101353reeves.jpg', 'Samuel Nowlin Reeves', 'Patrica Taylor', 'Christan', '20200009', '1964-09-02', '9387', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-10 07:53:25', '2021-12-10 07:53:25'),
(10, 'Student', 'Leonardo DiCaprio', NULL, NULL, '$2y$10$OhH0tEMiGOrb.Z2/7NJ8KewCMqfxRtDSQAHWpDmKO93/srd5B8Tlu', '01750089881', 'West Shewrapara, Mirpur, Dhaka', 'Male', '202112101355American-actor-Leonardo-DiCaprio-2016.jpg', 'George DiCaprio', 'Irmelin Indenbirken', 'Christan', '20200010', '1974-11-09', '3327', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-10 07:55:14', '2021-12-10 07:55:14'),
(11, 'employee', 'Quentin Tarantino', 'tt@gmail.com', NULL, '$2y$10$o4LoUd2tTSzP6hvgll4IUuEw3suH/JIZy5FbF/mkMcB.ES/L.bknm', '01750089881', 'Banani, Dhaka', 'Male', '202202111059TARINTINO.jpg', 'Tony Tarantino', 'Connie Zastoupil', 'Christan', '2021120001', '1963-03-27', '7123', NULL, '2021-12-10', 1, 200000, 1, NULL, NULL, NULL, 'dark', 'PHD', 'Oxford University', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-10 10:47:15', '2022-02-11 04:59:44'),
(12, 'employee', 'Christopher Nolan', 'nolan@gmail.com', NULL, '$2y$10$DHM7ogFMqypjpuH8m29Luu111o4FvNq/cHto1pJ.KaxATlHmoEG4e', '017500898881', 'Middle badda', 'Male', '202112101653nolan.jpg', 'Brendan James Nolan', 'Christina', 'Christan', '2022120012', '1970-07-30', '4543', NULL, '2022-12-10', 3, 155000, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-10 10:48:24', '2022-01-03 10:28:33'),
(13, 'employee', 'James Cameron', 'c@gmail.com', NULL, '$2y$10$0sdZ/wauC1w182ijImbztuyYDU30QxNYNdmdbk520fEQoECWWg/pq', '01750089881', 'Badda, Dhaka', 'Male', '202112101651JamesCameronHWOFOct2012.jpg', 'Philip Cameron', 'Shirley', 'Christan', '2021120013', '1954-05-16', '6718', NULL, '2021-12-10', 2, 100000, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-10 10:51:17', '2022-01-03 10:28:56'),
(14, 'employee', 'MD RONY', 'rony@gmail.com', NULL, '$2y$10$5FXfNnA2fYNSpCvlMu1RA.dykLLZ/7I7...KBkmV/2QlW/lE9XdZC', '01970089881', 'Dhaka', 'Male', NULL, 'Jahangir alom', 'Msw hawa begum', 'Islam', '2022010014', '1992-02-02', '4197', NULL, '2022-01-02', 3, 30000, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-02 10:00:55', '2022-01-11 11:09:02'),
(15, 'Student', 'Babu Al Mmin', NULL, NULL, '$2y$10$H4/nHWValELNXzPnmn88yuJQipYcT3CB4yaotYEDrj9y9OcpIegZq', '017589863221', '65 barkat camp sylhet', 'Male', NULL, 'Babu Al Karim', 'MST Sufiya khatun', 'Islam', '20200011', '2004-01-01', '3534', NULL, '2022-01-01', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 8000, 12000, 12000, '2022-01-07 07:26:26', '2022-03-05 16:48:16'),
(16, 'Student', 'Karim Joynal', 'kj@gmail.com', NULL, '$2y$10$ik.MFemUF/uXM/qBR5DxE.8uLoc7ZUdAAPq/T6IgtshDQWttNxbey', '01758963225', '172 West Kazipara', 'Male', NULL, 'Ruhul Amin', 'Hazera Begum', 'Islam', '20200016', '2008-05-15', '4475', NULL, '2022-01-10', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 8000, 12000, 12000, '2022-01-07 07:37:08', '2022-06-03 14:59:34'),
(17, 'Student', 'Mosharof Arif', NULL, NULL, '$2y$10$k4WVhpTUbVF3AHNBGukkdOyRTKUKX4747nMJ55IHeMz6ueTNUFQBC', '01758963214', '104 Shewrapara, Dhaka', 'Male', NULL, 'Mosharof Karim', 'MSR Nurujjaman', 'Islam', '20200017', '8008-12-05', '4224', NULL, '2022-01-01', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 8500, 12750, 12000, '2022-01-07 07:38:14', '2022-03-05 16:48:16'),
(18, 'Student', 'Ferdous Akhi', NULL, NULL, '$2y$10$1s0A2/ylEmxhMmRuklx9n.SG1TqWY88k8Ij43UaaBV2TBkwrDCB1C', '01759913256', '37 Dhanmondi Dhaka', 'Female', NULL, 'Ferdous Rahman', 'MST Fatima', 'Islam', '20200018', '2008-06-10', '2485', NULL, '2022-01-10', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 9000, 13500, 12000, '2022-01-07 08:53:38', '2022-03-05 16:48:16'),
(19, 'Student', 'Korim Joynal', NULL, NULL, '$2y$10$AIUgJNaWNiFcQjk30gWJWOmPDMPyNdPWhu5Ve1LjfntQoyDZtQw4i', '01786613115', '330 Purbachal, Dhaka', 'Female', NULL, 'Kazi Nazrul', 'Sufiya Kamal', 'Islam', '20200019', '2008-03-15', '3925', NULL, '2022-01-10', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 9500, 14250, 12000, '2022-01-07 08:56:02', '2022-03-05 16:48:16'),
(20, 'Student', 'Anni Akter', NULL, NULL, '$2y$10$88ffb3otLdTLq3k7YEfvCeUmpP4hbg59fLUx0YntqHxRVZSQnLEzm', '01750089663', 'Akkelpur, Joypurhat', 'Female', NULL, 'Gopal dash', 'MST M', 'Islam', '20200020', '2008-12-15', '7760', NULL, '2022-01-10', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 9800, 14700, 12000, '2022-01-07 09:00:11', '2022-03-05 16:48:16'),
(21, 'Student', 'Anonna Khandakar', NULL, NULL, '$2y$10$J5MqQXoewQSvcfSc5TCzfOVD1w.LyaVrgEzBfhSBO/5HorZ3NLTS2', '01756632116', '46 Panchbibi, Joypurhat', 'Female', NULL, 'Hamid Hossen', 'Mst Hamida Begum', 'Islam', '20200021', '2007-12-31', '5667', NULL, '2022-01-10', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 8700, 13050, 12000, '2022-01-07 09:01:59', '2022-03-05 16:48:16'),
(22, 'Student', 'Md Rifat Hossain', NULL, NULL, '$2y$10$wSswcwZKKeYl0z8YyZLEmes.9q/ePyV7Yid3YCTNE9CpGPDQOlzu6', '01758963221', 'Jhalkathi, Barisal', 'Male', NULL, 'Md Tupi Rahman', 'Md Razia Khatun', 'Islam', '20200022', '2008-12-16', '1286', NULL, '2022-01-10', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 8800, 13200, 12000, '2022-01-07 09:34:04', '2022-03-05 16:48:16'),
(23, 'Student', 'Md Shawon', NULL, NULL, '$2y$10$/t5vfkmb35hoHYn1C7RXr.KQJwL5pHl6XcEi5ajlCji5gbx5d0F3K', '01750098663', '37 West Road, Dinajpur', 'Male', NULL, 'Md Mirza', 'Mst Annona', 'Islam', '20200023', '2008-12-20', '1413', NULL, '2022-01-10', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 8800, 13200, 12000, '2022-01-07 11:42:23', '2022-03-05 16:48:16'),
(24, 'employee', 'MD ABID HASAN', 'abid@gmail.com', NULL, '$2y$10$LINpD4m1YhKq2rb3.KiE1uXgC4hZ0b8s7donFAU/rsRydMRL1YS/6', '01750065336', 'Mirpur, Dhaka', 'Male', NULL, 'MD A HASAN', 'MST M HASAN', 'Islam', '2022010015', '1997-09-05', '5728', NULL, '2022-01-15', 3, 20000, 1, NULL, NULL, NULL, 'dark', 'BSC In CSE', 'Northern University Bangladesh', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', NULL, NULL, NULL, '2022-01-15 08:48:06', '2022-02-11 06:09:25'),
(25, 'Student', 'Abu Saleh', NULL, NULL, '$2y$10$Nr89.zRG.LFSDlTXaoc.8OLe4oLRAzn7xrOYfPEr.bt.h4bvN3h/W', '01970089881', 'West Shewrapara, Dhaka', 'Male', NULL, 'Kashem Ullah', 'Kobita', 'Islam', '20200024', '1998-01-10', '3900', NULL, '2022-01-01', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 9000, 13500, 12000, '2022-02-10 09:48:25', '2022-03-05 16:48:16'),
(26, 'employee', 'MD MASUD RANA', 'masud@gmail.com', NULL, '$2y$10$x7jB26Nc.Z1YqxcLJr7OZOo0efzEMLWc3L3goOLuFulT5zHaAesAK', '01753369885', '172 North Banani, Dhaka', 'Male', NULL, 'MD HERO ALOM', 'MST HEROIN', 'Islam', '2022020025', '1998-01-11', '4513', NULL, '2022-02-11', 2, 50000, 1, NULL, NULL, NULL, 'dark', 'PHD', 'BUET', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11 04:55:35', '2022-02-11 04:55:35'),
(27, 'employee', 'Kazi Haiyat', 'kazi@gmail.com', NULL, '$2y$10$FqsXFzNemsSBNK6QbZShM.tRLdcjftR5d2dcGNfq/07R5K4r3crgq', '01756698336', 'Mirpur, Dhaka, Bangladesh', 'Male', '202202111208reeves.jpg', 'Kazi Belkun', 'Mst Julikha Begum', 'Islam', '2020010027', '1986-01-01', '9731', NULL, '2020-01-01', 3, 60000, 1, NULL, NULL, NULL, 'dark', 'MSC in Business', 'Kumilla University', 'https://www.facebook.com/omarfaruk.likhon', 'https://www.instagram.com', 'https://www.twitter.com', NULL, NULL, NULL, '2022-02-11 06:08:34', '2022-02-11 06:08:34'),
(28, 'employee', 'Md Juruj Ali', '649@example.com', NULL, '$2y$10$jOUMMoPUxzQlADLieD.Oc.Yx3emqdIXgoPRli9rZr6Ws6Pq4fYmYa', '01750089881', 'Banani Dhaka', 'Male', '202202160554photo.webp', 'Md Suruj Mia', 'MST Surjo Khatun', 'Islam', '2022020028', '1998-01-16', '1234', NULL, '2022-02-16', 3, 30000, 1, NULL, NULL, NULL, 'dark', 'BSC In EEE', 'Northern University Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 23:54:23', '2022-02-15 23:56:58'),
(29, 'Admin', 'Operator', 'operator@gmail.com', NULL, '$2y$10$lByMy/uOi3.sV228aourIOAW1fUF2/i4f9jx436JExhb0Oyv/2zS2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7847', 'Operator', NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-16 05:48:14', '2022-02-16 05:48:14'),
(30, 'Student', 'Karim Makbul', NULL, NULL, '$2y$10$FlWSb0Rx/aNJu8p789IMA.lskYums93fxL7R0bbvO9n6/GCFPy.w2', '01970089881', 'Mohakhali, Dhaka', 'Male', '202202171753revolt-164_6wVEHfI-unsplash.jpg', 'Makbul Hasan', 'Mst TestDrive', 'Islam', '20200026', '1998-01-17', '1333', NULL, '2022-01-10', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, 8000, 12000, 12000, '2022-02-17 11:53:01', '2022-03-05 16:48:16'),
(31, 'Student', 'Md Mosharaf Karim', NULL, NULL, '$2y$10$1.nRQkMD/A9Z9B.bbRSA5eioSVJ8/5FFKBlu2anqllYaGKhMGQ6xG', '0175656898', 'Mohakhali, Dkaha', 'Male', '202202181737aleksandr-eremin-QfHmrIUN9G0-unsplash.jpg', 'Md Kamrul Shah', 'Mst kamal begum', 'Islam', '20200031', '2000-01-01', '2627', NULL, '2022-02-18', NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-18 11:37:35', '2022-02-18 11:37:35'),
(32, 'Admin', 'MD OMAR FARUK', 'omarfaruk.likhon@gmail.com', NULL, '$2y$10$ibXOaVOGq88YH4YZCOgLtu6PTMYHj2a/MlcKInVcT97F49sCaBOwO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '228', 'Admin', NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-01 08:56:46', '2022-04-01 08:56:46'),
(33, 'Student', 'MD SELIM UDDIN', 'selim@gmail.com', NULL, '$2y$10$MtFowGF6J/Zb9ZZyf/chZ.xtNnwM0LCKftf2uz2C6NScx6C.g1Rza', '01987763552', 'Kawla, Dakshin Khan, Dhaka', 'Male', '202205271611cropped-800-800-1104541.jpg', 'MD NASIR MOLLAH', 'MST ROKEYA BEGUM', 'Islam', '20220032', '2004-01-07', '729', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 10:11:14', '2022-05-27 10:11:14'),
(34, 'Student', 'MD MOSHAROF KARIM', 'mk@gmail.com', NULL, '$2y$10$//fiqIB2MD1PHrd4ibpnBOa2FHybQEzIje9MFVOcCV2QKSUdNU44a', '01736554673', 'Shewrapara, Mirpur', 'Male', '202205271615cropped-800-800-1104541.jpg', 'MD RABBI HOSSAIN', 'MST JAHANARA BEGUM', 'Islam', '20220034', '2004-02-11', '2029', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 10:15:37', '2022-05-27 10:15:37'),
(35, 'Student', 'MD OSHEK AKBER', 'oa@gmail.com', NULL, '$2y$10$ik.MFemUF/uXM/qBR5DxE.8uLoc7ZUdAAPq/T6IgtshDQWttNxbey', '01759903772', 'West Kazipara, Mirpur, Dhaka', 'Male', '202205271629cropped-800-800-1104541.jpg', 'MD JAFAR IQBAL', 'MST HAJIRA BEGUM', 'Islam', '20220035', '2004-06-09', '1234', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-27 10:29:22', '2022-05-27 10:29:22'),
(36, 'Student', 'MD KAZI NAZRUL', 'kn@gmail.com', NULL, '$2y$10$ZNm7o9Jxra/XTKbHNu4.gOFuzFUYv5B/7zntOqFecf5gvj7c..076', '01748890992', 'MIRPUR, DHAKA', 'Male', '202205282335austin-neill-emH2e5SBifE-unsplash.jpg', 'MD DADU SARKAR', 'SUFIA KAMAL', 'Islam', '20220036', '2004-06-15', '1234', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'dark', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-28 17:35:16', '2022-05-28 17:35:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_students`
--
ALTER TABLE `assign_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_teacher_subjects`
--
ALTER TABLE `assign_teacher_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `discount_students`
--
ALTER TABLE `discount_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fee_categories`
--
ALTER TABLE `fee_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_categories_name_unique` (`name`);

--
-- Indexes for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_purposes_name_unique` (`name`);

--
-- Indexes for table `marks_grades`
--
ALTER TABLE `marks_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `principal_messages`
--
ALTER TABLE `principal_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_messages`
--
ALTER TABLE `public_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_details`
--
ALTER TABLE `school_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_events`
--
ALTER TABLE `school_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_notices`
--
ALTER TABLE `school_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_subjects`
--
ALTER TABLE `school_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_subjects_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_classes_name_unique` (`name`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_groups_name_unique` (`name`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_shifts`
--
ALTER TABLE `student_shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_shifts_name_unique` (`name`);

--
-- Indexes for table `student_years`
--
ALTER TABLE `student_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_years_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `assign_students`
--
ALTER TABLE `assign_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `assign_teacher_subjects`
--
ALTER TABLE `assign_teacher_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discount_students`
--
ALTER TABLE `discount_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_categories`
--
ALTER TABLE `fee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marks_grades`
--
ALTER TABLE `marks_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `principal_messages`
--
ALTER TABLE `principal_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `public_messages`
--
ALTER TABLE `public_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `school_details`
--
ALTER TABLE `school_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `school_events`
--
ALTER TABLE `school_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `school_notices`
--
ALTER TABLE `school_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `school_subjects`
--
ALTER TABLE `school_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `student_shifts`
--
ALTER TABLE `student_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_years`
--
ALTER TABLE `student_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
