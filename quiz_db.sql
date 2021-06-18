-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 05:14 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `option_id` int(30) NOT NULL,
  `is_right` tinyint(1) NOT NULL COMMENT ' 1 = right, 0 = wrong',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `quiz_id`, `question_id`, `option_id`, `is_right`, `date_updated`) VALUES
(1, 3, 1, 1, 4, 0, '2021-06-15 05:05:49'),
(2, 3, 1, 2, 5, 0, '2021-06-15 05:05:49'),
(3, 3, 1, 3, 10, 0, '2021-06-15 05:05:49'),
(4, 3, 1, 4, 16, 0, '2021-06-15 05:05:49'),
(5, 7, 1, 1, 24, 1, '2021-06-15 05:08:29'),
(6, 7, 1, 2, 27, 0, '2021-06-15 05:08:29'),
(7, 7, 1, 3, 30, 0, '2021-06-15 05:08:29'),
(8, 7, 1, 4, 35, 0, '2021-06-15 05:08:29'),
(9, 5, 1, 1, 52, 1, '2021-06-15 05:11:16'),
(10, 5, 1, 2, 27, 0, '2021-06-15 05:11:16'),
(11, 5, 1, 3, 41, 0, '2021-06-15 05:11:16'),
(12, 5, 1, 4, 54, 0, '2021-06-15 05:11:17'),
(13, 4, 1, 1, 58, 0, '2021-06-15 05:54:58'),
(14, 4, 1, 2, 28, 0, '2021-06-15 05:54:58'),
(15, 4, 1, 3, 42, 1, '2021-06-15 05:54:58'),
(16, 4, 1, 4, 62, 1, '2021-06-15 05:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_id`, `subject`, `date_updated`) VALUES
(1, 2, 'HTML', '2021-06-15 04:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `score` int(5) NOT NULL,
  `total_score` int(5) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `quiz_id`, `user_id`, `score`, `total_score`, `date_updated`) VALUES
(1, 1, 3, 0, 4, '2021-06-15 05:05:49'),
(2, 1, 7, 1, 4, '2021-06-15 05:08:29'),
(3, 1, 5, 1, 4, '2021-06-15 05:11:17'),
(4, 1, 4, 2, 4, '2021-06-15 05:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `qid` int(30) NOT NULL,
  `order_by` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `qid`, `order_by`, `date_updated`) VALUES
(1, 'PONGAL THERUVANA MATAN', 1, 0, '2021-06-15 05:01:19'),
(2, 'PONGAL THERUVANA MATAN', 1, 0, '2021-06-15 05:01:21'),
(3, 'MAYA PADIPANA MATANA', 1, 0, '2021-06-15 05:02:23'),
(4, 'MADI PAYA MADI AH CRT PANUVANA MATANA', 1, 0, '2021-06-15 05:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `question_opt`
--

CREATE TABLE `question_opt` (
  `id` int(30) NOT NULL,
  `option_txt` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1= right answer',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_opt`
--

INSERT INTO `question_opt` (`id`, `option_txt`, `question_id`, `is_right`, `date_updated`) VALUES
(25, 'VAIPILLA', 2, 0, '2021-06-15 05:07:24'),
(26, '50% VAIPIRUKKU', 2, 1, '2021-06-15 05:07:24'),
(27, 'OORUPATURUVAN', 2, 0, '2021-06-15 05:07:24'),
(28, 'PAPOM', 2, 0, '2021-06-15 05:07:24'),
(41, 'LAST VARA PADIKKA MATAN', 3, 0, '2021-06-15 05:09:39'),
(42, 'PADIPONU MATUM THA SOLLUVAN', 3, 1, '2021-06-15 05:09:39'),
(43, 'VAIPILLA', 3, 0, '2021-06-15 05:09:39'),
(44, 'CHI ATHU ETHUKKU', 3, 0, '2021-06-15 05:09:39'),
(57, 'VAIPILLA', 1, 0, '2021-06-15 05:53:32'),
(58, '50% VAIPIRUKKU', 1, 0, '2021-06-15 05:53:32'),
(59, 'OORUPATURUVAN', 1, 0, '2021-06-15 05:53:32'),
(60, 'PAPOM', 1, 1, '2021-06-15 05:53:32'),
(61, 'ALREADY CRT PANNITAN', 4, 0, '2021-06-15 05:54:17'),
(62, 'ATHUKELLAM SARI PATTU VARA MATAN', 4, 1, '2021-06-15 05:54:17'),
(63, 'VAIPILLA', 4, 0, '2021-06-15 05:54:17'),
(64, 'VAIPPU IRUKU', 4, 0, '2021-06-15 05:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_list`
--

CREATE TABLE `quiz_list` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_list`
--

INSERT INTO `quiz_list` (`id`, `title`, `qpoints`, `user_id`, `date_updated`) VALUES
(1, 'HTML', 1, 2, '2021-06-15 04:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_student_list`
--

CREATE TABLE `quiz_student_list` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_student_list`
--

INSERT INTO `quiz_student_list` (`id`, `quiz_id`, `user_id`, `date_updated`) VALUES
(1, 1, 3, '2021-06-15 05:00:14'),
(2, 1, 4, '2021-06-15 05:00:14'),
(3, 1, 5, '2021-06-15 05:00:14'),
(4, 1, 6, '2021-06-15 05:00:14'),
(5, 1, 7, '2021-06-15 05:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `level_section` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `level_section`, `date_updated`) VALUES
(1, 3, 'HTML', '2021-06-15 04:56:58'),
(2, 4, 'HTML', '2021-06-15 04:57:28'),
(3, 5, 'HTML', '2021-06-15 04:58:05'),
(4, 6, 'HTML', '2021-06-15 04:58:38'),
(5, 7, 'HTML', '2021-06-15 04:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administration', 1, 'admin', 'admin123', 1, '2021-06-15 04:54:15'),
(2, 'PONSIVA.P', 2, 'ppsiva', 'ppsiva123', 1, '2021-06-15 04:56:10'),
(3, 'BHUVANA', 3, 'buvi', 'buvi@123', 1, '2021-06-15 04:56:58'),
(4, 'KOKILA', 3, 'koki', 'koki@123', 1, '2021-06-15 04:57:28'),
(5, 'KARTHIKA', 3, 'karthi', 'karthi@123', 1, '2021-06-15 04:58:05'),
(6, 'VELAMMAL', 3, 'vels', 'vels@123', 1, '2021-06-15 04:58:38'),
(7, 'VIJIYALAKSHMI', 3, 'viji', 'viji@123', 1, '2021-06-15 04:59:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
