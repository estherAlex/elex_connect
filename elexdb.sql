-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 02:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elexdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(120) DEFAULT NULL,
  `admin_password` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'es@gmail.com', '12345'),
(2, 'ella@mail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_messsage` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_messsage`, `contact_name`) VALUES
(2, 'this is to check if the route is working fine', 'jay event connect');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `picture_id` int(11) NOT NULL,
  `picture_status` varchar(255) NOT NULL,
  `picture_title` varchar(255) DEFAULT NULL,
  `picture_desc` varchar(100) DEFAULT NULL,
  `picture_comment` varchar(225) DEFAULT NULL,
  `picture_contact` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`picture_id`, `picture_status`, `picture_title`, `picture_desc`, `picture_comment`, `picture_contact`, `user_id`) VALUES
(1, 'ajebrpdhul.jpg', 'ekenny', 'kG event', NULL, NULL, 4),
(2, 'fimaurktpx.jpg', 'ekenny', 'kG event', NULL, NULL, 4),
(3, 'gmosilytbu.jpg', 'syryrdtrf8ur86t8', 'edututrf', NULL, NULL, 4),
(4, 'bpgitqrlsd.jpg', 'syryrdtrf8ur86t8', 'edututrf', NULL, NULL, 4),
(5, 'ivuwhctsyl.jpg', 'syryrdtrf8ur86t8', 'edututrf', NULL, NULL, 4),
(6, 'wpmzrgdeih.jpg', 'tdtltr78o78', 'yfiyfilyti', NULL, NULL, 4),
(7, 'fjmreusxnl.jpg', 'tdtltr78o78', 'yfiyfilyti', NULL, NULL, 4),
(8, 'xjecyrfdzn.png', 'post a new picture', 'testing ', NULL, NULL, 4),
(9, 'ajgihkpqnb.jpg', 'tdeytry6t', 'eutr6t7', NULL, NULL, 4),
(10, 'ruhwgdvqnl.jpg', 'r87tp87t68', 'way5esa4', NULL, NULL, 4),
(11, 'kayrwcixvp.jpg', 'r87tp87t68', 'way5esa4', NULL, NULL, 4),
(12, 'oatxfnzpkv.jpg', 'connect me.com', 'another one here', NULL, NULL, 4),
(13, 'bgwdenkfcl.jpg', 'connect me.com', 'another one here', NULL, NULL, 4),
(14, 'cvbznmjpkd.jpg', 'connect me.com', 'another one here', NULL, NULL, 4),
(15, 'amtrsuvexw.jpg', 'connect me.com', 'another one here', NULL, NULL, 4),
(16, 'tlmxudkwhr.jpg', 'connect me.com', 'another one here', NULL, NULL, 4),
(17, 'jbalqhigkn.jpg', 'connect me.com', 'another one here', NULL, NULL, 4),
(18, 'eavuwzojpq.jpg', 'xsdssd', 'edrgtd', NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(100) DEFAULT NULL,
  `user_business` varchar(255) DEFAULT NULL,
  `user_state` varchar(255) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` varchar(120) DEFAULT NULL,
  `user_phone` varchar(120) DEFAULT NULL,
  `user_datereg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fullname`, `user_business`, `user_state`, `user_email`, `user_password`, `user_phone`, `user_datereg`) VALUES
(1, 'esth alex', 'event connect', 'Lagos', 'con@gmail.com', 'pbkdf2:sha256:260000$q0bShdC9oEcTpIK3$0d85c97ef4bed394562a8b623e9aa2be4d1cc1fe0b09fcb2e527ab362fe79655', '09079900405', '2023-03-12 21:49:54'),
(2, 'esther', 'connect connect', 'lagos', 'et@gmail.com', 'pbkdf2:sha256:260000$jQwQqaAeDVYShmql$8d9f0d5bc2513f52fecb3fdc277a7ffae386cc0b64a645fbc58baf6485666cbe', '09079960065', '2023-03-13 13:29:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`picture_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `picture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
