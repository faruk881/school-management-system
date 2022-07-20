-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 04:46 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
