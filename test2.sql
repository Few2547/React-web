-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2025 at 08:58 AM
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
-- Database: `test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_sessions`
--

CREATE TABLE `active_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passwords` varchar(255) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `role` enum('superuser','admin','user') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `passwords`, `firstname`, `lastname`, `role`, `created_at`) VALUES
(1, 'test1@gmail.com', '$2b$10$eYpP10I1iaKUp/45qIGF/.baKUnWeBWfm5nOQObH10BFmn2dY1dza', 'test1', 'test1', 'superuser', '2025-08-16 06:40:24'),
(2, 'test2@gmail.com', '$2b$10$79/leHsk01DWrzdUWszJMuqb371O5UW3/rkbId.BzvwmowukG6pVy', 'test2', 'test2', 'admin', '2025-08-16 06:40:31'),
(3, 'test3@gmail.com', '$2b$10$h9.WhuV/Z1yNcfGjIpldC.yS5SQwLLIU9srAYnHLWkEGuHUzhuY1y', 'test3', 'test3', 'user', '2025-08-16 06:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `role` enum('superuser','admin','user') NOT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `action`, `role`, `timestamp`) VALUES
(1, 3, 'login', 'user', '2025-08-16 13:41:04'),
(2, 3, 'logout', 'user', '2025-08-16 13:41:10'),
(3, 1, 'login', 'superuser', '2025-08-16 13:41:15'),
(4, 1, 'logout', 'superuser', '2025-08-16 13:42:14'),
(5, 1, 'login', 'superuser', '2025-08-16 13:42:20'),
(6, 1, 'logout', 'superuser', '2025-08-16 13:42:30'),
(7, 1, 'login', 'superuser', '2025-08-16 13:42:35'),
(8, 3, 'login', 'user', '2025-08-16 15:43:35'),
(9, 3, 'logout', 'user', '2025-08-16 15:43:40'),
(10, 1, 'login', 'superuser', '2025-08-16 15:43:50'),
(11, 1, 'logout', 'superuser', '2025-08-16 15:44:10'),
(12, 1, 'login', 'superuser', '2025-08-17 18:29:59'),
(13, 1, 'login', 'superuser', '2025-08-17 18:37:13'),
(14, 1, 'logout', 'superuser', '2025-08-17 18:37:18'),
(15, 1, 'login', 'superuser', '2025-08-17 18:37:24'),
(16, 1, 'logout', 'superuser', '2025-08-17 18:45:08'),
(17, 3, 'login', 'user', '2025-09-10 12:34:15'),
(18, 1, 'login', 'superuser', '2025-09-24 10:48:25'),
(19, 1, 'login', 'superuser', '2025-10-09 23:35:46'),
(20, 1, 'logout', 'superuser', '2025-10-09 23:39:57'),
(21, 3, 'login', 'user', '2025-10-09 23:40:07'),
(22, 3, 'logout', 'user', '2025-10-09 23:40:19'),
(23, 3, 'login', 'user', '2025-10-10 00:20:09'),
(24, 3, 'logout', 'user', '2025-10-10 01:03:51'),
(25, 1, 'login', 'superuser', '2025-10-10 01:03:59'),
(26, 1, 'logout', 'superuser', '2025-10-10 01:20:32'),
(27, 1, 'login', 'superuser', '2025-10-10 13:23:38'),
(28, 1, 'logout', 'superuser', '2025-10-10 15:47:51'),
(29, 1, 'login', 'superuser', '2025-10-13 11:23:55'),
(30, 1, 'logout', 'superuser', '2025-10-13 13:47:45'),
(31, 2, 'login', 'admin', '2025-10-13 13:47:52'),
(32, 2, 'logout', 'admin', '2025-10-13 13:47:59'),
(33, 1, 'login', 'superuser', '2025-10-13 13:48:03'),
(34, 1, 'login', 'superuser', '2025-10-14 21:51:02'),
(35, 1, 'logout', 'superuser', '2025-10-14 21:57:15'),
(36, 1, 'login', 'superuser', '2025-10-14 22:04:11'),
(37, 1, 'login', 'superuser', '2025-10-15 19:07:45'),
(38, 1, 'logout', 'superuser', '2025-10-15 19:32:56'),
(39, 1, 'login', 'superuser', '2025-10-15 19:33:01'),
(40, 1, 'logout', 'superuser', '2025-10-15 19:33:02'),
(41, 1, 'login', 'superuser', '2025-10-16 13:55:36'),
(42, 1, 'login', 'superuser', '2025-10-16 15:33:19'),
(43, 1, 'logout', 'superuser', '2025-10-16 15:33:21'),
(44, 1, 'login', 'superuser', '2025-10-16 15:33:27'),
(45, 1, 'login', 'superuser', '2025-10-16 15:34:37'),
(46, 1, 'logout', 'superuser', '2025-10-16 15:34:52'),
(47, 1, 'login', 'superuser', '2025-10-16 15:34:57'),
(48, 1, 'login', 'superuser', '2025-10-16 15:35:49'),
(49, 1, 'logout', 'superuser', '2025-10-16 15:36:02'),
(50, 1, 'login', 'superuser', '2025-10-16 15:36:11'),
(51, 1, 'logout', 'superuser', '2025-10-16 15:36:45'),
(52, 1, 'login', 'superuser', '2025-10-16 15:36:50'),
(53, 1, 'logout', 'superuser', '2025-10-16 15:37:10'),
(54, 1, 'login', 'superuser', '2025-10-16 15:39:41'),
(55, 1, 'logout', 'superuser', '2025-10-16 15:40:14'),
(56, 1, 'login', 'superuser', '2025-10-16 18:59:21'),
(57, 1, 'logout', 'superuser', '2025-10-16 19:09:40'),
(58, 1, 'login', 'superuser', '2025-10-16 19:09:41'),
(59, 1, 'logout', 'superuser', '2025-10-16 19:09:58'),
(60, 1, 'login', 'superuser', '2025-10-16 19:10:00'),
(61, 2, 'login', 'admin', '2025-10-16 19:17:49'),
(62, 1, 'logout', 'superuser', '2025-10-16 19:28:03'),
(63, 2, 'logout', 'admin', '2025-10-16 19:28:06'),
(64, 1, 'login', 'superuser', '2025-10-16 19:28:15'),
(65, 1, 'logout', 'superuser', '2025-10-16 19:28:23'),
(66, 1, 'login', 'superuser', '2025-10-16 19:28:24'),
(67, 1, 'logout', 'superuser', '2025-10-16 19:28:30'),
(68, 1, 'login', 'superuser', '2025-10-17 11:28:33'),
(69, 1, 'logout', 'superuser', '2025-10-17 11:29:56'),
(70, 1, 'login', 'superuser', '2025-10-17 11:30:09'),
(71, 1, 'logout', 'superuser', '2025-10-17 16:37:52'),
(72, 1, 'login', 'superuser', '2025-11-16 12:03:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_sessions`
--
ALTER TABLE `active_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_sessions`
--
ALTER TABLE `active_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `active_sessions`
--
ALTER TABLE `active_sessions`
  ADD CONSTRAINT `fk_active_sessions_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD CONSTRAINT `fk_user_logs_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
