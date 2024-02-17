-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 15 فبراير 2024 الساعة 21:02
-- إصدار الخادم: 10.6.16-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dsnalgxr_ad-dsna`
--

-- --------------------------------------------------------

--
-- بنية الجدول `Bets`
--

CREATE TABLE `Bets` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `horse_id` int(11) NOT NULL,
  `bet_amount` int(11) NOT NULL,
  `win` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `Horses`
--

CREATE TABLE `Horses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `speed` float NOT NULL,
  `stamina` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `Horses`
--

INSERT INTO `Horses` (`id`, `name`, `speed`, `stamina`, `image`) VALUES
(0, 'White', 0.2, 80, 'horse1.png'),
(1, 'Blue', 0.15, 90, 'horse2.png'),
(2, 'Green', 0.18, 75, 'horse3.png'),
(3, 'Brown', 0.17, 85, 'horse4.png');

-- --------------------------------------------------------

--
-- بنية الجدول `Players`
--

CREATE TABLE `Players` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coins` int(11) NOT NULL,
  `join_date` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `race_results`
--

CREATE TABLE `race_results` (
  `race_date` date DEFAULT NULL,
  `winning_horse_name` varchar(255) DEFAULT NULL,
  `other_horses_names` varchar(255) DEFAULT NULL,
  `race_time` time DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registration_date` datetime NOT NULL,
  `balance` int(11) NOT NULL,
  `favorite_horse_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- إرجاع أو استيراد بيانات الجدول `Users`
--

INSERT INTO `Users` (`id`, `username`, `password`, `email`, `registration_date`, `balance`, `favorite_horse_name`) VALUES
(1, 'bitcoin90', '$2y$10$UyrvDmhb0gbNi79BNTOhlOycQRbj9vR.xz3Va8HEPymqPu.APx1a6', 'bitcoin90bitcoin@gmail.com', '0000-00-00 00:00:00', 30, NULL),
(2, 'betpay', '$2y$10$g0DRWPgQyJ6hinwjZJ7RYuUsAeIsdslhaqzcTWrUkupVS0gm5beqG', 'livecool90@gmail.com', '0000-00-00 00:00:00', 50, NULL),
(3, 'hussein', '$2y$10$J02RiTHV8fSkA9SEU0mXzeDS2/ReTXclwln/FbM31W/6KbX9RMVc6', 'walaa569@yahoo.com', '0000-00-00 00:00:00', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bets`
--
ALTER TABLE `Bets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `horse_id` (`horse_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `Horses`
--
ALTER TABLE `Horses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Players`
--
ALTER TABLE `Players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `race_results`
--
ALTER TABLE `race_results`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bets`
--
ALTER TABLE `Bets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Horses`
--
ALTER TABLE `Horses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Players`
--
ALTER TABLE `Players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
