-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 03, 2017 at 12:46 AM
-- Server version: 5.7.17-0ubuntu0.16.10.1
-- PHP Version: 7.0.15-0ubuntu0.16.10.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eye-viz`
--

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

DROP TABLE IF EXISTS `urls`;
CREATE TABLE `urls` (
  `id` int(11) NOT NULL,
  `id_sites` int(11) NOT NULL,
  `url` varchar(512) NOT NULL,
  `config` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `id_cms_users` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `id_sites`, `url`, `config`, `is_active`, `id_cms_users`, `created_on`, `updated_on`) VALUES
(1, 1, 'https://horizonblue.com', NULL, 1, 1, '2017-01-15 00:00:00', '2017-01-17 19:42:22'),
(2, 1, 'https://www.horizonblue.com/members', NULL, 1, 1, '2017-01-15 00:00:00', '2017-01-17 19:47:54'),
(3, 1, 'https://www.horizonblue.com/providers', NULL, 1, 1, '2017-01-17 19:48:21', '2017-01-17 19:48:21'),
(4, 1, 'https://www.horizonblue.com/brokers', NULL, 1, 1, '2017-01-17 19:48:57', '2017-01-17 19:48:57'),
(5, 1, 'https://www.horizonblue.com/employers', NULL, 1, 1, '2017-01-17 19:49:32', '2017-01-17 19:49:32'),
(6, 1, 'https://www.horizonblue.com/contact-us/member-contacts', NULL, 1, 1, '2017-01-17 19:49:48', '2017-01-17 19:49:48'),
(7, 2, 'https://www.horizonblue.com/about-us', NULL, 1, 1, '2017-01-17 19:50:12', '2017-01-22 22:46:03'),
(8, 2, 'https://simplysanthosh.wordpress.com', '{"ignore":"notice"}', 1, 1, '2017-03-03 00:25:47', '2017-03-03 00:25:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sites` (`id_sites`);
ALTER TABLE `urls` ADD FULLTEXT KEY `url` (`url`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
