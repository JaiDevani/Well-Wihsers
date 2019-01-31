-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2019 at 03:52 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wellwishers`
--

-- --------------------------------------------------------

--
-- Table structure for table `dependents`
--

CREATE TABLE `dependents` (
  `dp_id` int(10) NOT NULL,
  `dp_name` varchar(100) NOT NULL,
  `dp_acc_no` varchar(10) NOT NULL,
  `s_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dependents`
--

INSERT INTO `dependents` (`dp_id`, `dp_name`, `dp_acc_no`, `s_id`) VALUES
(1, 'Pooja Singh', '1000051478', 1),
(2, 'Rema Mehra', '1000051481', 2),
(3, 'Shyam Godbole', '1000051444', 3),
(4, 'Krina Shah', '1000051455', 4),
(5, 'Suhana Shah', '1000051784', 5),
(6, 'Eshwari Kaur', '1000051856', 6),
(7, 'Arpita Sahu', '1234567899', 7);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `d_id` int(10) NOT NULL,
  `d_name` varchar(100) NOT NULL,
  `d_email` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `d_acc_no` int(10) NOT NULL,
  `donation_amt` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('devanijay45@gmail.com', '$2y$10$bEAbbzxMuq4kq3jcVuD4GeCO1LQz9wymhM0f3SZwOSCBda1m8Cut6', '2018-09-30 09:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `soldier`
--

CREATE TABLE `soldier` (
  `id` int(10) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `age` int(5) NOT NULL,
  `dom` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `force` varchar(100) NOT NULL,
  `relation` varchar(100) NOT NULL,
  `boi` varchar(500) NOT NULL,
  `amt_donated` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soldier`
--

INSERT INTO `soldier` (`id`, `s_name`, `image`, `age`, `dom`, `location`, `force`, `relation`, `boi`, `amt_donated`) VALUES
(1, 'Ravi Singh', '1_1539073451.jpg', 21, '2014-02-12', 'Kashmir', 'Assam Rifles', 'Mother', 'Death in war with miliatants.', 1512),
(2, 'Raja Mehra', '2_1539073464.jpg', 37, '2011-12-12', 'Mumbai', 'Assam Rifles', 'Mother', 'Died fighting Kasab at Mumbai Terror Attacks.', 0),
(3, 'Sanjay Godbole', '3_1539073494.jpg', 45, '2001-02-12', 'Gujarat', 'Assam Rifles', 'Children', 'Drowned in enemy waters due to leakage in ship.', 1500),
(4, 'Kishan Shah', 'sol2_1537600099.jpg', 45, '2015-02-12', 'India', 'Assam Rifles', 'Mother', 'D', 2400),
(5, 'Rajvi Shah', 'sa_1539073588.jpg', 25, '1997-03-05', 'Mumbai', 'Assam Rifles', 'Mother', 'Death while fighting Pakistani militants at LOC.', 0),
(6, 'Jaswinder Singh', 'circle1_1537603881.jpg', 21, '1997-02-01', 'Mumbai', 'Assam Rifles', 'Mother', 'E', 12461),
(7, 'Malhar Sahu', 'ravi_1538906351.jpg', 22, '2018-10-10', 'Rajasthan', 'Border Security Force (BSF)', 'Wife', 'D', 0),
(8, 'Narendra Kumar', 'nnn_1538907139.jpg', 55, '2018-09-18', 'Samba, Jammu and Kashmir', 'Border Security Force (BSF)', 'Mother', 'At about 181920 hrs, during search, BSF party found the bullet-ridden, mutilated dead body of No.901728762 HC Narender Kumar lying near BP No.22', 0),
(10, 'Narendra Shetty', '7_1539073615.jpg', 55, '2018-09-18', 'Samba, Jammu and Kashmir', 'Assam Rifles', 'Mother', 'At about 181920 hrs, during search, BSF party found the bullet-ridden, mutilated dead body of No.901728762 HC Narender Kumar lying near BP No.22', 0),
(24, 'XXX', '6_1539073955.jpg', 51, '2018-10-01', 'Samba, Jammu and Kashmir', 'Border Security Force (BSF)', 'Wife', 'Death', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `t_id` int(10) UNSIGNED NOT NULL,
  `mobilemsg` varchar(10) NOT NULL,
  `card` varchar(12) NOT NULL,
  `DateOfTrans` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `dp_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`t_id`, `mobilemsg`, `card`, `DateOfTrans`, `status`, `user_id`, `dp_id`, `s_id`, `amt`) VALUES
(6, '8668416573', '', '2018-10-03 14:16:33', 'Success', 2, 4, 4, 125),
(12795, '9920142545', '992014254500', '2018-10-09 08:09:15', 'Success', 2, 6, 6, 1),
(16745, '9920142545', '992014254500', '2018-10-09 08:15:59', 'Success', 2, 10, 10, 10),
(23003, '9950142777', '995014277700', '2018-10-09 08:09:59', 'Success', 2, 10, 10, 120),
(24865, '9920142757', '992014275711', '2018-10-09 10:52:56', 'Success', 2, 1, 1, 1500),
(25475, '9950142777', '842675319531', '2018-10-07 09:43:22', 'Success', 2, 4, 4, 1500),
(26061, '9920142555', '123456789001', '2018-10-05 14:21:50', 'Success', 2, 4, 4, 120),
(27479, '9820175462', '123', '2018-10-19 05:32:20', 'Success', 2, 1, 1, 12),
(28741, '9920142555', '992014255500', '2018-10-09 08:29:31', 'Success', 2, 3, 3, 1500),
(37588, '9920142555', '992014255510', '2018-10-09 08:02:21', 'Success', 2, 2, 2, 150),
(38267, '1234567890', '123456789123', '2018-10-09 08:06:24', 'Success', 2, 19, 19, 123),
(44241, '9920142545', '123456987321', '2018-10-05 14:23:12', 'Success', 2, 3, 3, 1000),
(52115, '9920142555', '992014255510', '2018-10-09 08:02:45', 'Success', 2, 2, 2, 951),
(53172, '9920142001', '992014200109', '2018-10-09 10:40:59', 'Success', 2, 24, 24, 1200),
(61012, '1234567890', '123456789123', '2018-10-09 08:07:54', 'Success', 2, 10, 10, 10),
(69691, '9920142555', '992014255511', '2018-10-07 09:44:37', 'Success', 2, 1, 1, 12345),
(70089, '9920142001', '992014200100', '2018-10-09 08:11:49', 'Success', 2, 19, 19, 123),
(77700, '9920142555', '123456789001', '2018-10-05 14:22:01', 'Success', 2, 4, 4, 120),
(80158, '9920142555', '100005147800', '2018-10-09 10:39:46', 'Success', 2, 4, 4, 200),
(83404, '9920142555', '992014255500', '2018-10-09 08:03:08', 'Success', 2, 5, 5, 2222),
(84506, '9920142545', '992014254500', '2018-10-09 08:13:04', 'Success', 2, 10, 10, 2500),
(85546, '9920142555', '992014255500', '2018-10-09 08:05:07', 'Success', 2, 5, 5, 200),
(95402, '9920142757', '992014275710', '2018-10-09 07:59:39', 'Success', 2, 2, 2, 521),
(95403, '9920142555', '9920142555', '2018-10-19 06:13:28', 'Success', 2, 1, 1, 1200),
(97558, '9920142001', '951236478123', '2018-10-05 14:23:59', 'Success', 2, 2, 2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `type`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin1', '', 'devanijai3@gmail.com', 'admin', '$2y$10$/AftNPU8U5bHUXr23XiBHe.luX5LVGIULMX2VevDdHNBY1U..p3Ly', 'Wo2gOXERAn8dQ0jXeaDPW1FaYAotLnNK1AuGRcnEE2TsNCUcaeeDRgjaNkvo', '2018-09-17 04:37:48', '2018-09-17 04:38:45'),
(2, 'Priya', '', 'pd@gmail.com', 'default', '$2y$10$9aGw/J8ncM39dGFVSSYMpuf7bIRrwkQLrPsehACDn.8GkCHqa9MXe', 'BdWTdJxFyb0fojEkoekJCsk14erHL3TAdSeFVDQR6xbFoq4s0CKzGXXomPFH', '2018-09-17 04:57:38', '2018-09-17 04:57:38'),
(3, 'Jai', '', 'devanijay45@gmail.com', 'default', '$2y$10$H/p1fkxWjw6QA/KG8ugdAO87CgppxCh9/vNPVM3XRtjtJ0/1p2Mgq', '6fGqkGroGtiDbhVgVkqdIsa80KatVTy8Q5lZIvYxPwyJ3LUKyJWc3LYksGG3', '2018-09-30 08:30:03', '2018-09-30 08:30:03'),
(4, 'Ts', NULL, 'deva@gmail.com', 'default', '$2y$10$OJ/wxGH4vJSUzZlKdx6/LuyryVx0y08OwbkWBjHV8K1cVQsei8Hbu', '3Il3i59Iar3id9FE9agCFaDZBK1sIQXMPuNCGAs0nE2naJnnC7KuVEhixUl5', '2018-10-03 09:40:20', '2018-10-03 09:40:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dependents`
--
ALTER TABLE `dependents`
  ADD PRIMARY KEY (`dp_id`),
  ADD KEY `dep1` (`s_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soldier`
--
ALTER TABLE `soldier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `s_name` (`s_name`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `tr_users` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dependents`
--
ALTER TABLE `dependents`
  MODIFY `dp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soldier`
--
ALTER TABLE `soldier`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dependents`
--
ALTER TABLE `dependents`
  ADD CONSTRAINT `dep1` FOREIGN KEY (`s_id`) REFERENCES `soldier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `tr_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
