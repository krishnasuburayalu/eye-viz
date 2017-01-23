-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2017 at 08:07 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.13-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudl`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `created_at`, `updated_at`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `method_type`, `parameters`, `responses`) VALUES
(1, NULL, NULL, 'standards', 'standards', 'list', NULL, NULL, NULL, 'is_active=1', 'standards', '', NULL, 'get', 'a:3:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:5:"notes";s:4:"type";s:6:"string";s:6:"config";s:0:"";s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:12:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:3:"int";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:5:"notes";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:9:"is_active";s:4:"type";s:7:"tinyint";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:12:"id_cms_users";s:4:"type";s:7:"integer";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:14:"cms_users_name";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:15:"cms_users_photo";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:15:"cms_users_email";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:18:"cms_users_password";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:16:"cms_users_status";s:4:"type";s:6:"string";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:10:"created_on";s:4:"type";s:23:"date_format:Y-m-d H:i:s";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}i:11;a:4:{s:4:"name";s:10:"updated_on";s:4:"type";s:23:"date_format:Y-m-d H:i:s";s:8:"subquery";s:0:"";s:4:"used";s:1:"1";}}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `email_attachments` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-01-13 09:59:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `created_at`, `updated_at`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`) VALUES
(1, '2017-01-13 10:01:33', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', 1),
(2, '2017-01-13 10:03:13', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data siteadmin at Statistic Builder', 1),
(3, '2017-01-15 21:33:18', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', 1),
(4, '2017-01-16 04:21:59', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/add-save', 'Add New Data 1 at Urls', 1),
(5, '2017-01-16 04:31:30', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/sites/add-save', 'Add New Data Corporate at Sites', 1),
(6, '2017-01-16 05:05:43', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/standards/add-save', 'Add New Data Section508 at Accessibility Standard', 1),
(7, '2017-01-16 05:06:03', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/standards/add-save', 'Add New Data WCAG2A at Accessibility Standard', 1),
(8, '2017-01-16 05:10:40', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/standards/add-save', 'Add New Data WCAG2AA at Accessibility Standard', 1),
(9, '2017-01-16 05:10:59', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/standards/add-save', 'Add New Data WCAG2AAA at Accessibility Standard', 1),
(10, '2017-01-16 07:18:33', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/delete/2', 'Delete data Add New Sites at Menu Management', 1),
(11, '2017-01-16 07:18:46', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/delete/5', 'Delete data Add New Urls at Menu Management', 1),
(12, '2017-01-16 07:18:55', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/delete/8', 'Delete data Add New Accessibility Standard at Menu Management', 1),
(13, '2017-01-16 08:23:00', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/add-save', 'Add New Data 2 at Urls', 1),
(14, '2017-01-16 08:28:27', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/execution/add-save', 'Add New Data 1 at execution', 1),
(15, '2017-01-16 08:56:30', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Sites at Menu Management', 1),
(16, '2017-01-16 08:57:01', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Sites at Menu Management', 1),
(17, '2017-01-16 08:57:18', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data List Sites at Menu Management', 1),
(18, '2017-01-16 08:57:27', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Sites at Menu Management', 1),
(19, '2017-01-18 05:34:46', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', 1),
(20, '2017-01-18 05:42:23', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/edit-save/1', 'Update data  at Urls', 1),
(21, '2017-01-18 05:42:33', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/edit-save/2', 'Update data  at Urls', 1),
(22, '2017-01-18 05:47:54', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/edit-save/2', 'Update data  at Urls', 1),
(23, '2017-01-18 05:48:21', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/add-save', 'Add New Data 3 at Urls', 1),
(24, '2017-01-18 05:48:57', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/add-save', 'Add New Data 4 at Urls', 1),
(25, '2017-01-18 05:49:32', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/add-save', 'Add New Data 5 at Urls', 1),
(26, '2017-01-18 05:49:48', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/add-save', 'Add New Data 6 at Urls', 1),
(27, '2017-01-18 05:50:12', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/urls/add-save', 'Add New Data 7 at Urls', 1),
(28, '2017-01-18 09:32:35', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', 1),
(29, '2017-01-23 05:31:48', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', 1),
(30, '2017-01-23 05:48:42', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Accessibility Settings at Menu Management', 1),
(31, '2017-01-23 05:49:00', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/delete/4', 'Delete data Urls at Menu Management', 1),
(32, '2017-01-23 05:49:11', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/delete/1', 'Delete data Sites at Menu Management', 1),
(33, '2017-01-23 05:49:28', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/delete/11', 'Delete data Add New execution at Menu Management', 1),
(34, '2017-01-23 05:49:39', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/delete/13', 'Delete data Add Urls to Site at Menu Management', 1),
(35, '2017-01-23 05:49:46', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/delete/16', 'Delete data Test Results at Menu Management', 1),
(36, '2017-01-23 05:52:07', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:50.0) Gecko/20100101 Firefox/50.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data List Sites at Menu Management', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(3, 'List Sites', 'Route', 'AdminSitesControllerGetIndex', 'normal', 'fa fa-bars', 7, 1, 0, 1, 1, '2017-01-15 23:01:42', '2017-01-23 05:52:07'),
(6, 'List Urls', 'Route', 'AdminUrlsControllerGetIndex', NULL, 'fa fa-bars', 7, 1, 0, 1, 2, '2017-01-16 04:12:24', NULL),
(7, 'Accessibility Settings', 'URL External', '#', 'normal', 'fa fa-bullseye', 0, 1, 0, 1, 2, '2017-01-16 05:03:59', '2017-01-23 05:48:42'),
(9, 'List Accessibility Standard', 'Route', 'AdminStandardsControllerGetIndex', NULL, 'fa fa-bars', 7, 1, 0, 1, 4, '2017-01-16 05:03:59', NULL),
(10, 'execution', 'URL External', '#', NULL, 'fa fa-spinner', 0, 1, 0, 1, 1, '2017-01-16 07:20:15', NULL),
(12, 'List execution', 'Route', 'AdminExecutionControllerGetIndex', NULL, 'fa fa-bars', 10, 1, 0, 1, 1, '2017-01-16 07:20:15', NULL),
(15, 'List Add Urls to Site', 'Route', 'AdminSitesUrlsControllerGetIndex', NULL, 'fa fa-bars', 7, 1, 0, 1, 3, '2017-01-16 08:49:35', NULL),
(18, 'List Test Results', 'Route', 'AdminTestResultsControllerGetIndex', NULL, 'fa fa-bars', 10, 1, 0, 1, 2, '2017-01-18 09:33:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `created_at`, `updated_at`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`) VALUES
(1, '2017-01-13 09:59:54', NULL, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1),
(2, '2017-01-13 09:59:54', NULL, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1),
(3, '2017-01-13 09:59:54', NULL, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1),
(4, '2017-01-13 09:59:54', NULL, 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1),
(5, '2017-01-13 09:59:54', NULL, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1),
(6, '2017-01-13 09:59:54', NULL, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1),
(7, '2017-01-13 09:59:54', NULL, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1),
(8, '2017-01-13 09:59:54', NULL, 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1),
(9, '2017-01-13 09:59:54', NULL, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1),
(10, '2017-01-13 09:59:54', NULL, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1),
(11, '2017-01-13 09:59:54', NULL, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1),
(12, '2017-01-15 23:01:41', NULL, 'Sites', 'fa fa-glass', 'sites', 'sites', 'AdminSitesController', 0, 0),
(13, '2017-01-16 04:12:24', NULL, 'Urls', 'fa fa-globe', 'urls', 'urls', 'AdminUrlsController', 0, 0),
(14, '2017-01-16 05:03:59', NULL, 'Accessibility Standard', 'fa fa-bullseye', 'standards', 'standards', 'AdminStandardsController', 0, 0),
(15, '2017-01-16 07:20:15', NULL, 'execution', 'fa fa-spinner', 'execution', 'execution', 'AdminExecutionController', 0, 0),
(16, '2017-01-16 08:49:35', NULL, 'Add Urls to Site', 'fa fa-globe', 'sites_urls', 'sites_urls', 'AdminSitesUrlsController', 0, 0),
(17, '2017-01-18 09:33:24', NULL, 'Test Results', 'fa fa-bullseye', 'test_results', 'test_results', 'AdminTestResultsController', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `created_at`, `updated_at`, `name`, `is_superadmin`, `theme_color`) VALUES
(1, '2017-01-13 09:59:54', NULL, 'Super Administrator', 1, 'skin-black-light');

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `created_at`, `updated_at`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`) VALUES
(1, NULL, NULL, 1, 1, 1, 1, 1, 1, 14),
(2, NULL, NULL, 1, 1, 1, 1, 1, 1, 16),
(3, NULL, NULL, 1, 1, 1, 1, 1, 1, 15),
(4, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(5, NULL, NULL, 1, 1, 1, 1, 1, 1, 17),
(6, NULL, NULL, 1, 1, 1, 1, 1, 1, 13),
(7, NULL, NULL, 1, 1, 1, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `created_at`, `updated_at`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `group_setting`, `label`) VALUES
(1, '2017-01-13 09:59:55', NULL, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Background Color'),
(2, '2017-01-13 09:59:55', NULL, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Font Color'),
(3, '2017-01-13 09:59:55', NULL, 'login_background_image', NULL, 'upload_image', NULL, NULL, 'Login Register Style', 'Login Background Image'),
(4, '2017-01-13 09:59:55', NULL, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, 'Email Setting', 'Email Sender'),
(5, '2017-01-13 09:59:55', NULL, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, 'Email Setting', 'Mail Driver'),
(6, '2017-01-13 09:59:55', NULL, 'smtp_host', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Host'),
(7, '2017-01-13 09:59:55', NULL, 'smtp_port', '25', 'text', NULL, 'default 25', 'Email Setting', 'SMTP Port'),
(8, '2017-01-13 09:59:55', NULL, 'smtp_username', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Username'),
(9, '2017-01-13 09:59:55', NULL, 'smtp_password', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Password'),
(10, '2017-01-13 09:59:55', NULL, 'appname', ' Viz', 'text', NULL, NULL, 'Application Setting', 'Application Name'),
(11, '2017-01-13 09:59:55', NULL, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', 'Application Setting', 'Default Paper Print Size'),
(12, '2017-01-13 09:59:55', NULL, 'logo', NULL, 'upload_image', NULL, NULL, 'Application Setting', 'Logo'),
(13, '2017-01-13 09:59:55', NULL, 'favicon', NULL, 'upload_image', NULL, NULL, 'Application Setting', 'Favicon'),
(14, '2017-01-13 09:59:55', NULL, 'api_debug_mode', 'true', 'select', 'true,false', NULL, 'Application Setting', 'API Debug Mode'),
(15, '2017-01-13 09:59:55', NULL, 'google_api_key', '', 'text', NULL, NULL, 'Application Setting', 'Google API Key'),
(16, '2017-01-13 09:59:55', NULL, 'google_fcm_key', '', 'text', NULL, NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'siteadmin', 'siteadmin', '2017-01-13 10:03:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `created_at`, `updated_at`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `status`) VALUES
(1, '2017-01-13 09:59:54', NULL, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$kFJvGH1Q2MkF1qTGbra3guY0Cm19EW1fuYuw1kVJgtlhTRFStRfz2', 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `execution`
--

CREATE TABLE `execution` (
  `id` int(11) NOT NULL,
  `id_standards` int(11) NOT NULL,
  `id_sites` int(11) NOT NULL,
  `notes` varchar(512) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `id_cms_users` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `execution`
--

INSERT INTO `execution` (`id`, `id_standards`, `id_sites`, `notes`, `is_active`, `id_cms_users`, `created_on`, `updated_on`) VALUES
(1, 1, 1, 'My first execution', 1, 1, '2017-01-15 00:00:00', '2017-01-15 22:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_152014_add_table_cms_privileges', 1),
(7, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(8, '2016_08_07_152320_add_table_cms_settings', 1),
(9, '2016_08_07_152421_add_table_cms_users', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `url` varchar(512) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `id_standards` int(11) NOT NULL,
  `notes` text NOT NULL,
  `id_cms_users` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `name`, `url`, `slug`, `id_standards`, `notes`, `id_cms_users`, `created_on`, `updated_on`, `is_active`) VALUES
(1, 'Corporate', 'https://horizonblue.com', 'hb-com', 1, 'sdasd', 1, '2017-01-15 00:00:00', '2017-01-15 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sites_urls`
--

CREATE TABLE `sites_urls` (
  `id` int(11) NOT NULL,
  `id_sites` int(11) NOT NULL,
  `id_urls` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` varchar(512) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `id_cms_users` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standards`
--

INSERT INTO `standards` (`id`, `name`, `notes`, `is_active`, `id_cms_users`, `created_on`, `updated_on`) VALUES
(1, 'Section508', 'Section508', 1, 1, '2017-01-15 00:00:00', '2017-01-15 00:00:00'),
(2, 'WCAG2A', 'WCAG2A', 1, 1, '2017-01-15 00:00:00', '2017-01-15 00:00:00'),
(3, 'WCAG2AA', 'WCAG2AA', 1, 1, '2017-01-15 00:00:00', '2017-01-15 00:00:00'),
(4, 'WCAG2AAA', 'WCAG2AAA', 1, 1, '2017-01-15 00:00:00', '2017-01-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_results`
--

CREATE TABLE `test_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_execution` int(11) DEFAULT NULL,
  `id_sites` int(11) DEFAULT NULL,
  `url` varchar(512) CHARACTER SET latin1 DEFAULT NULL,
  `standard` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `code` text CHARACTER SET latin1,
  `context` text COLLATE utf8mb4_bin,
  `message` text CHARACTER SET latin1,
  `selector` text CHARACTER SET latin1,
  `typecode` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `test_results`
--

INSERT INTO `test_results` (`id`, `id_execution`, `id_sites`, `url`, `standard`, `type`, `code`, `context`, `message`, `selector`, `typecode`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.I.Frames', '', 'This iframe element is missing title text. Frames should be titled with text that facilitates frame identification and navigation.', '', 1, 1, '2017-01-18 04:31:30', '2017-01-18 04:31:30'),
(2, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.I.Frames', '', 'This iframe element is missing title text. Frames should be titled with text that facilitates frame identification and navigation.', '', 1, 1, '2017-01-18 04:31:30', '2017-01-18 04:31:30'),
(3, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > button > i', 2, 1, '2017-01-18 04:31:30', '2017-01-18 04:31:30'),
(4, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:31:30', '2017-01-18 04:31:30'),
(5, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h2>Vendor\'s print error causes iss...</h2>', 'The heading structure is not logically nested. This h2 element appears to be the primary document heading, so should be an h1 element.', '#alert_msg > div > div > div > div > h2', 1, 1, '2017-01-18 04:31:30', '2017-01-18 04:31:30'),
(6, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:hidePreHeader()"><i class="glyphicon hbicon-cros...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#search-close > a', 1, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(7, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#search-close > a > i', 2, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(8, 1, 1, 'https://horizonblue.com', 'Section508', 'notice', 'Section508.N.Errors', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#search-block-form', 3, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(9, 1, 1, 'https://horizonblue.com', 'Section508', 'notice', 'Section508.N.Labels', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#search-block-form', 3, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(10, 1, 1, 'https://horizonblue.com', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#search-block-form', 3, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(11, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.L.EmptyAnchorNoId', '<a class="close text-danger alert_icon"> \n<i class="glyphicon hbicon-no...</a>', 'Anchor element found with no link content and no name and/or ID attribute.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a', 1, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(12, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-notification text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(13, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeader()"><span class=" glyphicon hbicon-...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(5) > a', 1, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(14, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeaderMobile()"><i class="hbicon-search"></i></a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a', 1, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(15, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-search"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(16, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-notification"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(2) > i', 2, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(17, 1, 1, 'https://horizonblue.com', 'Section508', 'notice', 'Section508.N.Errors', '<form action="https://secure.horizonblue.com/pkmslogin.form" class="form-horizontal" data-drupal-form-fields="username,rememberUsername" id="loginform" method="POST" role="form">\n<div class="control-group padi...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#loginform', 3, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(18, 1, 1, 'https://horizonblue.com', 'Section508', 'notice', 'Section508.N.Labels', '<form action="https://secure.horizonblue.com/pkmslogin.form" class="form-horizontal" data-drupal-form-fields="username,rememberUsername" id="loginform" method="POST" role="form">\n<div class="control-group padi...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#loginform', 3, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(19, 1, 1, 'https://horizonblue.com', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="https://secure.horizonblue.com/pkmslogin.form" class="form-horizontal" data-drupal-form-fields="username,rememberUsername" id="loginform" method="POST" role="form">\n<div class="control-group padi...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#loginform', 3, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(20, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Watch a short video about Membe...</h5>', 'The heading structure is not logically nested. This h5 element should be an h2 to be properly nested.', '#block-homeblocks > div > div > div > div:nth-child(1) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(21, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Need a form? Our forms are loca...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-homeblocks > div > div > div > div:nth-child(2) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(22, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Get answers to questions about ...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-homeblocks > div > div > div > div:nth-child(3) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(23, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h4 class="media-heading"><a href="http://shbp.horizonblu...</h4>', 'The heading structure is not logically nested. This h4 element should be an h3 to be properly nested.', '#block-medicaid > div > div > div > div:nth-child(1) > div > div > div > div > h4', 1, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(24, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.Small', '<small>Posted on November 17, 2016</small>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#main > div:nth-child(3) > div > div > div:nth-child(2) > div > div:nth-child(1) > small', 2, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(25, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.Small', '<small>Posted on October 26, 2016</small>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#main > div:nth-child(3) > div > div > div:nth-child(2) > div > div:nth-child(2) > small', 2, 1, '2017-01-18 04:31:31', '2017-01-18 04:31:31'),
(26, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Caring, Connecting, Creating.<b...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-diversity > div > div > div > div:nth-child(2) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:32', '2017-01-18 04:31:32'),
(27, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Horizon NJ Health is Horizon BC...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-diversity > div > div > div > div:nth-child(3) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:32', '2017-01-18 04:31:32'),
(28, 1, 1, 'https://horizonblue.com', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h4>Connect with us</h4>', 'The heading structure is not logically nested. This h4 element should be an h3 to be properly nested.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > h4', 1, 1, '2017-01-18 04:31:32', '2017-01-18 04:31:32'),
(29, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-facebook">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:32', '2017-01-18 04:31:32'),
(30, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-twiter">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(2) > a > i', 2, 1, '2017-01-18 04:31:32', '2017-01-18 04:31:32'),
(31, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-linkedin">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(3) > a > i', 2, 1, '2017-01-18 04:31:32', '2017-01-18 04:31:32'),
(32, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-instagram">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(4) > a > i', 2, 1, '2017-01-18 04:31:32', '2017-01-18 04:31:32'),
(33, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-youtube">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(5) > a > i', 2, 1, '2017-01-18 04:31:32', '2017-01-18 04:31:32'),
(34, 1, 1, 'https://horizonblue.com', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-rss">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(6) > a > i', 2, 1, '2017-01-18 04:31:32', '2017-01-18 04:31:32'),
(35, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.I.Frames', '', 'This iframe element is missing title text. Frames should be titled with text that facilitates frame identification and navigation.', '', 1, 1, '2017-01-18 04:31:38', '2017-01-18 04:31:38'),
(36, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > button > i', 2, 1, '2017-01-18 04:31:38', '2017-01-18 04:31:38'),
(37, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class=" hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:31:38', '2017-01-18 04:31:38'),
(38, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h2>Vendor\'s print error causes iss...</h2>', 'The heading structure is not logically nested. This h2 element appears to be the primary document heading, so should be an h1 element.', '#alert_msg > div > div > div > div > h2', 1, 1, '2017-01-18 04:31:38', '2017-01-18 04:31:38'),
(39, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class=" hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(40, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:hidePreHeader()"><i class="glyphicon hbicon-cros...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#search-close > a', 1, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(41, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#search-close > a > i', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(42, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'notice', 'Section508.N.Errors', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#search-block-form', 3, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(43, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'notice', 'Section508.N.Labels', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#search-block-form', 3, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(44, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#search-block-form', 3, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(45, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.L.EmptyAnchorNoId', '<a class="close text-danger alert_icon changed">\n<i class="glyphicon hbicon-not...</a>', 'Anchor element found with no link content and no name and/or ID attribute.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a', 1, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(46, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-notification text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(47, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeader()"><span class=" glyphicon hbicon-...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(5) > a', 1, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(48, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeaderMobile()"><i class="hbicon-search"></i></a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a', 1, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(49, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-search"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(50, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-notification"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(2) > i', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(51, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#a5d593dd-c988-48f1-b3da-3ff01a210610 > a > b', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(52, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#0a18ec95-123c-4075-bf00-c3301bd47696 > a > b', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(53, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#d70b7598-0a5f-4a9f-a1ea-5b66184e5e72 > a > b', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(54, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#13b0bbf6-10eb-413c-8c29-417dd6423aa5 > a > b', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(55, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#89744328-228b-457d-9400-f838ce0386af > a > b', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(56, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#277fb08e-6deb-4dfb-b331-494829fe267d > a > b', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(57, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#74001d5b-29c8-44dd-b9ad-9018a8c3981f > a > b', 2, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(58, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'notice', 'Section508.N.Errors', '<form action="https://secure.horizonblue.com/pkmslogin.form" class="form-horizontal" data-drupal-form-fields="username,rememberUsername" id="loginform" method="POST" role="form">\n<div class="control-group padi...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#loginform', 3, 1, '2017-01-18 04:31:39', '2017-01-18 04:31:39'),
(59, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'notice', 'Section508.N.Labels', '<form action="https://secure.horizonblue.com/pkmslogin.form" class="form-horizontal" data-drupal-form-fields="username,rememberUsername" id="loginform" method="POST" role="form">\n<div class="control-group padi...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#loginform', 3, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(60, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="https://secure.horizonblue.com/pkmslogin.form" class="form-horizontal" data-drupal-form-fields="username,rememberUsername" id="loginform" method="POST" role="form">\n<div class="control-group padi...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#loginform', 3, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(61, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Get answers to questions about ...</h5>', 'The heading structure is not logically nested. This h5 element should be an h2 to be properly nested.', '#block-saving > div > div > div > div:nth-child(1) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(62, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Need a form? Our forms are loca...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-saving > div > div > div > div:nth-child(2) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(63, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">We take your health and wellnes...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-saving > div > div > div > div:nth-child(3) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(64, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h4 class="media-heading"><a href="/members/education-cen...</h4>', 'The heading structure is not logically nested. This h4 element should be an h3 to be properly nested.', '#block-memberyellowboxes > div > div > div > div:nth-child(1) > div > div > div > div > h4', 1, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(65, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-facebook">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(66, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-twiter">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(2) > a > i', 2, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(67, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-linkedin">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(3) > a > i', 2, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(68, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-instagram">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(4) > a > i', 2, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(69, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-youtube">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(5) > a > i', 2, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(70, 1, 1, 'https://www.horizonblue.com/members', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-rss">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(6) > a > i', 2, 1, '2017-01-18 04:31:40', '2017-01-18 04:31:40'),
(71, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.I.Frames', '', 'This iframe element is missing title text. Frames should be titled with text that facilitates frame identification and navigation.', '', 1, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(72, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > button > i', 2, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(73, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class=" hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(74, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h2>Vendor\'s print error causes iss...</h2>', 'The heading structure is not logically nested. This h2 element appears to be the primary document heading, so should be an h1 element.', '#alert_msg > div > div > div > div > h2', 1, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(75, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class=" hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(76, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:hidePreHeader()"><i class="glyphicon hbicon-cros...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#search-close > a', 1, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(77, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#search-close > a > i', 2, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(78, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'notice', 'Section508.N.Errors', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#search-block-form', 3, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(79, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'notice', 'Section508.N.Labels', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#search-block-form', 3, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(80, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#search-block-form', 3, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(81, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.L.EmptyAnchorNoId', '<a class="close text-danger alert_icon">\n<i class="glyphicon hbicon-not...</a>', 'Anchor element found with no link content and no name and/or ID attribute.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a', 1, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(82, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-notification text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(83, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeader()"><span class=" glyphicon hbicon-...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(5) > a', 1, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(84, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeaderMobile()"><i class="hbicon-search"></i></a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a', 1, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(85, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-search"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(86, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-notification"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(2) > i', 2, 1, '2017-01-18 04:31:43', '2017-01-18 04:31:43'),
(87, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#72daf33b-24ac-4c4d-b84d-77f7515df181 > a > b', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(88, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#b38de171-2f2c-4258-9e04-4e6bfa131196 > a > b', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(89, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#47f6a898-2670-417e-ab22-3408126bf000 > a > b', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(90, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#8e6a4cac-94f0-4b0d-9800-b9c940885e9f > a > b', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(91, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#8faf940d-28cc-4c3c-8700-0a71eb1f3dfd > a > b', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(92, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#f8738ba4-a9ee-42ac-bc19-a4fb080beb73 > a > b', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(93, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'notice', 'Section508.N.Errors', '<form action="/login/" class="panel-collapse" id="ProviderLoginform" method="POST" novalidate="novalidate">\n<div class="styled-select hbic...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#ProviderLoginform', 3, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(94, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'notice', 'Section508.N.Labels', '<form action="/login/" class="panel-collapse" id="ProviderLoginform" method="POST" novalidate="novalidate">\n<div class="styled-select hbic...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#ProviderLoginform', 3, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(95, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="/login/" class="panel-collapse" id="ProviderLoginform" method="POST" novalidate="novalidate">\n<div class="styled-select hbic...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#ProviderLoginform', 3, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(96, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.Small', '<small>Posted on January 13, 2017</small>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#main > div:nth-child(2) > div > div > div:nth-child(2) > div > div:nth-child(1) > small', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(97, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.Small', '<small>Posted on January 12, 2017</small>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#main > div:nth-child(2) > div > div > div:nth-child(2) > div > div:nth-child(2) > small', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(98, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Need a form? Our forms are loca...</h5>', 'The heading structure is not logically nested. This h5 element should be an h2 to be properly nested.', '#block-providerblocks > div > div > div > div:nth-child(1) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(99, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Learn about claim submission, a...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-providerblocks > div > div > div > div:nth-child(2) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(100, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Review information about our Ph...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-providerblocks > div > div > div > div:nth-child(3) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(101, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h4>Connect with us</h4>', 'The heading structure is not logically nested. This h4 element should be an h3 to be properly nested.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > h4', 1, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(102, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-facebook">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(103, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-twiter">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(2) > a > i', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(104, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-linkedin">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(3) > a > i', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(105, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-instagram">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(4) > a > i', 2, 1, '2017-01-18 04:31:44', '2017-01-18 04:31:44'),
(106, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-youtube">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(5) > a > i', 2, 1, '2017-01-18 04:31:45', '2017-01-18 04:31:45'),
(107, 1, 1, 'https://www.horizonblue.com/providers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-rss">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(6) > a > i', 2, 1, '2017-01-18 04:31:45', '2017-01-18 04:31:45'),
(108, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.I.Frames', '', 'This iframe element is missing title text. Frames should be titled with text that facilitates frame identification and navigation.', '', 1, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(109, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > button > i', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(110, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class=" hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(111, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h2>Vendor\'s print error causes iss...</h2>', 'The heading structure is not logically nested. This h2 element appears to be the primary document heading, so should be an h1 element.', '#alert_msg > div > div > div > div > h2', 1, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(112, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class=" hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(113, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:hidePreHeader()"><i class="glyphicon hbicon-cros...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#search-close > a', 1, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(114, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#search-close > a > i', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(115, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'notice', 'Section508.N.Errors', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#search-block-form', 3, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(116, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'notice', 'Section508.N.Labels', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#search-block-form', 3, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(117, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#search-block-form', 3, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(118, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.L.EmptyAnchorNoId', '<a class="close text-danger alert_icon changed">\n<i class="glyphicon hbicon-not...</a>', 'Anchor element found with no link content and no name and/or ID attribute.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a', 1, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(119, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-notification text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(120, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeader()"><span class=" glyphicon hbicon-...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(5) > a', 1, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(121, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeaderMobile()"><i class="hbicon-search"></i></a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a', 1, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(122, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-search"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(123, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-notification"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(2) > i', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(124, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#24bda687-7c30-44b0-9e0d-130081c8fc10 > a > b', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(125, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#4622485e-8b57-41f0-9900-a950ac294fee > a > b', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(126, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#db1c932b-d361-432e-859e-1237fe0ce2b3 > a > b', 2, 1, '2017-01-18 04:31:48', '2017-01-18 04:31:48'),
(127, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#6b265e78-bdfa-41b1-a300-f74b4c38b23a > a > b', 2, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49');
INSERT INTO `test_results` (`id`, `id_execution`, `id_sites`, `url`, `standard`, `type`, `code`, `context`, `message`, `selector`, `typecode`, `is_active`, `created_on`, `updated_on`) VALUES
(128, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#1609f078-ab11-4057-be07-7ffb53e5fa63 > a > b', 2, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(129, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Need a form? Our forms are loca...</h5>', 'The heading structure is not logically nested. This h5 element should be an h2 to be properly nested.', '#block-brokersblocks > div > div > div > div:nth-child(1) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(130, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Our extensive provider, facilit...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-brokersblocks > div > div > div > div:nth-child(2) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(131, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">We have answers to the most com...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-brokersblocks > div > div > div > div:nth-child(3) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(132, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h4>Connect with us</h4>', 'The heading structure is not logically nested. This h4 element should be an h3 to be properly nested.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > h4', 1, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(133, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-facebook">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(134, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-twiter">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(2) > a > i', 2, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(135, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-linkedin">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(3) > a > i', 2, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(136, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-instagram">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(4) > a > i', 2, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(137, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-youtube">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(5) > a > i', 2, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(138, 1, 1, 'https://www.horizonblue.com/brokers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-rss">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(6) > a > i', 2, 1, '2017-01-18 04:31:49', '2017-01-18 04:31:49'),
(139, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.I.Frames', '', 'This iframe element is missing title text. Frames should be titled with text that facilitates frame identification and navigation.', '', 1, 1, '2017-01-18 04:31:52', '2017-01-18 04:31:52'),
(140, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > button > i', 2, 1, '2017-01-18 04:31:52', '2017-01-18 04:31:52'),
(141, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class=" hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:31:52', '2017-01-18 04:31:52'),
(142, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h2>Vendor\'s print error causes iss...</h2>', 'The heading structure is not logically nested. This h2 element appears to be the primary document heading, so should be an h1 element.', '#alert_msg > div > div > div > div > h2', 1, 1, '2017-01-18 04:31:52', '2017-01-18 04:31:52'),
(143, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:hidePreHeader()"><i class="glyphicon hbicon-cros...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#search-close > a', 1, 1, '2017-01-18 04:31:52', '2017-01-18 04:31:52'),
(144, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#search-close > a > i', 2, 1, '2017-01-18 04:31:52', '2017-01-18 04:31:52'),
(145, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'notice', 'Section508.N.Errors', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#search-block-form', 3, 1, '2017-01-18 04:31:52', '2017-01-18 04:31:52'),
(146, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'notice', 'Section508.N.Labels', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#search-block-form', 3, 1, '2017-01-18 04:31:52', '2017-01-18 04:31:52'),
(147, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#search-block-form', 3, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(148, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.L.EmptyAnchorNoId', '<a class="close text-danger alert_icon changed">\n<i class="glyphicon hbicon-not...</a>', 'Anchor element found with no link content and no name and/or ID attribute.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a', 1, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(149, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-notification text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(150, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeader()"><span class=" glyphicon hbicon-...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(5) > a', 1, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(151, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeaderMobile()"><i class="hbicon-search"></i></a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a', 1, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(152, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-search"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(153, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-notification"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(2) > i', 2, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(154, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#33d8ace1-7e72-400e-b109-9d046ef6cdfb > a > b', 2, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(155, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#4721d4fe-93cb-4590-8235-53e8c11f47bd > a > b', 2, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(156, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#6ca16889-7897-42f2-b805-4d7747bbebdd > a > b', 2, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(157, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#c3354947-aaac-406d-9c00-0a40ccfdce1d > a > b', 2, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(158, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#4791222f-2c3b-476b-a527-39d09b761858 > a > b', 2, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(159, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'notice', 'Section508.N.Errors', '<form action="/login/" class="panel-collapse" id="employerLoginform" method="POST" novalidate="novalidate">\n<div class="styled-select hbic...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#employerLoginform', 3, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(160, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'notice', 'Section508.N.Labels', '<form action="/login/" class="panel-collapse" id="employerLoginform" method="POST" novalidate="novalidate">\n<div class="styled-select hbic...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#employerLoginform', 3, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(161, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="/login/" class="panel-collapse" id="employerLoginform" method="POST" novalidate="novalidate">\n<div class="styled-select hbic...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#employerLoginform', 3, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(162, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Need a form? Our forms are loca...</h5>', 'The heading structure is not logically nested. This h5 element should be an h2 to be properly nested.', '#block-employersblocks > div > div > div > div:nth-child(1) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(163, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Resources, plan descriptions, e...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-employersblocks > div > div > div > div:nth-child(2) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(164, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">We have answers to the most com...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-employersblocks > div > div > div > div:nth-child(3) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(165, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h4>Connect with us</h4>', 'The heading structure is not logically nested. This h4 element should be an h3 to be properly nested.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > h4', 1, 1, '2017-01-18 04:31:53', '2017-01-18 04:31:53'),
(166, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-facebook">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:54', '2017-01-18 04:31:54'),
(167, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-twiter">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(2) > a > i', 2, 1, '2017-01-18 04:31:54', '2017-01-18 04:31:54'),
(168, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-linkedin">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(3) > a > i', 2, 1, '2017-01-18 04:31:54', '2017-01-18 04:31:54'),
(169, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-instagram">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(4) > a > i', 2, 1, '2017-01-18 04:31:54', '2017-01-18 04:31:54'),
(170, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-youtube">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(5) > a > i', 2, 1, '2017-01-18 04:31:54', '2017-01-18 04:31:54'),
(171, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-rss">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(6) > a > i', 2, 1, '2017-01-18 04:31:54', '2017-01-18 04:31:54'),
(172, 1, 1, 'https://www.horizonblue.com/employers', 'Section508', 'error', 'Section508.I.Frames', '', 'This iframe element is missing title text. Frames should be titled with text that facilitates frame identification and navigation.', '', 1, 1, '2017-01-18 04:31:54', '2017-01-18 04:31:54'),
(173, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'error', 'Section508.I.Frames', '', 'This iframe element is missing title text. Frames should be titled with text that facilitates frame identification and navigation.', '', 1, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(174, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > button > i', 2, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(175, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class=" hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(176, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h2>Vendor\'s print error causes iss...</h2>', 'The heading structure is not logically nested. This h2 element appears to be the primary document heading, so should be an h1 element.', '#alert_msg > div > div > div > div > h2', 1, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(177, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:hidePreHeader()"><i class="glyphicon hbicon-cros...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#search-close > a', 1, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(178, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#search-close > a > i', 2, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(179, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'notice', 'Section508.N.Errors', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#search-block-form', 3, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(180, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'notice', 'Section508.N.Labels', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#search-block-form', 3, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(181, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#search-block-form', 3, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(182, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'error', 'Section508.L.EmptyAnchorNoId', '<a class="close text-danger alert_icon">\n<i class="glyphicon hbicon-not...</a>', 'Anchor element found with no link content and no name and/or ID attribute.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a', 1, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(183, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-notification text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(184, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeader()"><span class=" glyphicon hbicon-...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(5) > a', 1, 1, '2017-01-18 04:31:56', '2017-01-18 04:31:56'),
(185, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeaderMobile()"><i class="hbicon-search"></i></a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a', 1, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(186, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-search"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(187, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-notification"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(2) > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(188, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#baf140bb-b829-413c-bf20-3a92a15cae89 > a > b', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(189, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-home"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#page > div:nth-child(1) > div > div > ol > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(190, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'notice', 'Section508.N.Errors', '<form class="contact-us" data-drupal-selector="contact-us" action="/contact-us/member-contacts" method="post" id="contact-us" accept-charset="UTF-8">\n  <div class="row"><div class=...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#contact-us', 3, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(191, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'notice', 'Section508.N.Labels', '<form class="contact-us" data-drupal-selector="contact-us" action="/contact-us/member-contacts" method="post" id="contact-us" accept-charset="UTF-8">\n  <div class="row"><div class=...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#contact-us', 3, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(192, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form class="contact-us" data-drupal-selector="contact-us" action="/contact-us/member-contacts" method="post" id="contact-us" accept-charset="UTF-8">\n  <div class="row"><div class=...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#contact-us', 3, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(193, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h4 aria-controls="collapse1" aria-expanded="false" class="collapsed" data-parent="#accordion" data-toggle="collapse" href="#collapse1">Member Services</h4>', 'The heading structure is not logically nested. This h4 element should be an h2 to be properly nested.', '#headingThree > h4', 1, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(194, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="icon hbicon-bubble-question">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse1 > div > div:nth-child(1) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(195, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>Member FAQs</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse1 > div > div:nth-child(1) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(196, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="icon hbicon-new-message">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse1 > div > div:nth-child(2) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(197, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>My Message Center</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse1 > div > div:nth-child(2) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(198, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse1 > div > div:nth-child(3) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(199, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-355-BLUE (2583)</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse1 > div > div:nth-child(3) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(200, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-location">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse1 > div > div:nth-child(4) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(201, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse2 > div > div:nth-child(1) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(202, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>855-477-AZUL (2985)</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse2 > div > div:nth-child(1) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(203, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse3 > div > div:nth-child(1) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(204, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-624-5078</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse3 > div > div:nth-child(1) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(205, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-location">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse3 > div > div:nth-child(2) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(206, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse4 > div > div:nth-child(1) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:57', '2017-01-18 04:31:57'),
(207, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-414-SHBP (7427)</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse4 > div > div:nth-child(1) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(208, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-location">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse4 > div > div:nth-child(2) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(209, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-location">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse4 > div > div:nth-child(3) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(210, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse5 > div > div:nth-child(1) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(211, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-370-5088</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse5 > div > div:nth-child(1) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(212, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>Horizon POS, Horizon HMO,<br>\nH...</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse5 > div > div:nth-child(2) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(213, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse6 > div > div:nth-child(1) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(214, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-370-5088</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse6 > div > div:nth-child(1) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(215, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-location">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse6 > div > div:nth-child(2) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(216, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>Medigap Member</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse6 > div > div:nth-child(2) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(217, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse7 > div > div:nth-child(1) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(218, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-4-DENTAL</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse7 > div > div:nth-child(1) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(219, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-location">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse7 > div > div:nth-child(2) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(220, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse9 > div > div:nth-child(2) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(221, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-626-2212</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse9 > div > div:nth-child(2) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(222, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse9 > div > div:nth-child(4) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(223, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-991-5579</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse9 > div > div:nth-child(4) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(224, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse9 > div > div:nth-child(6) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(225, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-224-1233</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse9 > div > div:nth-child(6) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(226, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse10 > div > div:nth-child(1) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:58', '2017-01-18 04:31:58'),
(227, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-624-2048</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse10 > div > div:nth-child(1) > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(228, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-location">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse10 > div > div:nth-child(2) > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(229, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-call-member">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse8 > div > div > div:nth-child(1) > i', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(230, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b>1-800-624-2048</b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#collapse8 > div > div > div:nth-child(2) > b', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(231, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-facebook">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(232, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-twiter">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(2) > a > i', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(233, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-linkedin">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(3) > a > i', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(234, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-instagram">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(4) > a > i', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(235, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-youtube">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(5) > a > i', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(236, 1, 1, 'https://www.horizonblue.com/contact-us/member-contacts', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-rss">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(6) > a > i', 2, 1, '2017-01-18 04:31:59', '2017-01-18 04:31:59'),
(237, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.I.Frames', '', 'This iframe element is missing title text. Frames should be titled with text that facilitates frame identification and navigation.', '', 1, 1, '2017-01-18 04:32:01', '2017-01-18 04:32:01'),
(238, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > button > i', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(239, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hidden-xs hidden-sm icon-notify hbicon-notification pull-left text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#alert_msg > div > div > div > div > i', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(240, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h2>Vendor\'s print error causes iss...</h2>', 'The heading structure is not logically nested. This h2 element appears to be the primary document heading, so should be an h1 element.', '#alert_msg > div > div > div > div > h2', 1, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(241, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:hidePreHeader()"><i class="glyphicon hbicon-cros...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#search-close > a', 1, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(242, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-cross"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#search-close > a > i', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(243, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'notice', 'Section508.N.Errors', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'If an input error is automatically detected in this form, check that the item(s) in error are identified and the error(s) are described to the user in text.', '#search-block-form', 3, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(244, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'notice', 'Section508.N.Labels', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Check that descriptive labels or instructions (including for required fields) are provided for user input in this form.', '#search-block-form', 3, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(245, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'notice', 'Section508.N.KeyboardNav', '<form action="/search/node" method="get" id="search-block-form" accept-charset="UTF-8">\n  <div class="col-lg-2 col-sm-...</form>', 'Ensure that this form can be navigated using the keyboard and other accessibility tools.', '#search-block-form', 3, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(246, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.L.EmptyAnchorNoId', '<a class="close text-danger alert_icon">\n<i class="glyphicon hbicon-not...</a>', 'Anchor element found with no link content and no name and/or ID attribute.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a', 1, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(247, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="glyphicon hbicon-notification text-center"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(248, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeader()"><span class=" glyphicon hbicon-...</a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#hb2-body > nav > div > div > div > div > ul > li:nth-child(5) > a', 1, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(249, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.L.NoContentAnchor', '<a href="javascript:showPreHeaderMobile()"><i class="hbicon-search"></i></a>', 'Anchor element found with a valid href attribute, but no link content has been supplied.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a', 1, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(250, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-search"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(1) > a > i', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(251, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-notification"></i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#secondary-nav > div:nth-child(1) > div:nth-child(2) > i', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(252, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#670f30d3-5ccc-4c12-8d4b-a7e7c6658d19 > a > b', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02');
INSERT INTO `test_results` (`id`, `id_execution`, `id_sites`, `url`, `standard`, `type`, `code`, `context`, `message`, `selector`, `typecode`, `is_active`, `created_on`, `updated_on`) VALUES
(253, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.B', '<b class="arrow"> </b>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#1575fbdd-9c39-4984-9e28-2f04671fab22 > a > b', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(254, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.Small', '<small>Posted on November 17, 2016</small>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#main > div:nth-child(2) > div > div > div:nth-child(2) > div > div:nth-child(1) > small', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(255, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.Small', '<small>Posted on October 26, 2016</small>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#main > div:nth-child(2) > div > div > div:nth-child(2) > div > div:nth-child(2) > small', 2, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(256, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Since 1932, Horizon BCBSNJ has ...</h5>', 'The heading structure is not logically nested. This h5 element should be an h2 to be properly nested.', '#block-aboutusdiversity > div > div > div > div:nth-child(1) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(257, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Diversity is part of who we are...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-aboutusdiversity > div > div > div > div:nth-child(2) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(258, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h5 class="text-gray">Caring, Connecting, Creating.<b...</h5>', 'The heading structure is not logically nested. This h5 element should be an h3 to be properly nested.', '#block-aboutusdiversity > div > div > div > div:nth-child(3) > div > div > div:nth-child(2) > h5', 1, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(259, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'error', 'Section508.D.HeadingOrder', '<h4>Connect with us</h4>', 'The heading structure is not logically nested. This h4 element should be an h3 to be properly nested.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > h4', 1, 1, '2017-01-18 04:32:02', '2017-01-18 04:32:02'),
(260, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-facebook">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(1) > a > i', 2, 1, '2017-01-18 04:32:03', '2017-01-18 04:32:03'),
(261, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-twiter">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(2) > a > i', 2, 1, '2017-01-18 04:32:03', '2017-01-18 04:32:03'),
(262, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-linkedin">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(3) > a > i', 2, 1, '2017-01-18 04:32:03', '2017-01-18 04:32:03'),
(263, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-instagram">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(4) > a > i', 2, 1, '2017-01-18 04:32:03', '2017-01-18 04:32:03'),
(264, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-youtube">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(5) > a > i', 2, 1, '2017-01-18 04:32:03', '2017-01-18 04:32:03'),
(265, 1, 1, 'https://www.horizonblue.com/about-us', 'Section508', 'warning', 'Section508.D.PresMarkup.I', '<i class="hbicon-rss">‌</i>', 'Semantic markup should be used to mark emphasised or special text so that it can be programmatically determined.', '#block-footer > div > div > footer > div > div > div > div:nth-child(1) > nav > ul > li:nth-child(6) > a > i', 2, 1, '2017-01-18 04:32:03', '2017-01-18 04:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` int(11) NOT NULL,
  `id_sites` int(11) NOT NULL,
  `url` varchar(512) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `id_cms_users` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `id_sites`, `url`, `hash`, `is_active`, `id_cms_users`, `created_on`, `updated_on`) VALUES
(1, 1, 'https://horizonblue.com', 'hgjgjh', 1, 1, '2017-01-15 00:00:00', '2017-01-17 19:42:22'),
(2, 1, 'https://www.horizonblue.com/members', 'hgjgjh', 1, 1, '2017-01-15 00:00:00', '2017-01-17 19:47:54'),
(3, 1, 'https://www.horizonblue.com/providers', 'sss', 1, 1, '2017-01-17 19:48:21', '2017-01-17 19:48:21'),
(4, 1, 'https://www.horizonblue.com/brokers', 'sss', 1, 1, '2017-01-17 19:48:57', '2017-01-17 19:48:57'),
(5, 1, 'https://www.horizonblue.com/employers', 'aas', 1, 1, '2017-01-17 19:49:32', '2017-01-17 19:49:32'),
(6, 1, 'https://www.horizonblue.com/contact-us/member-contacts', '222', 1, 1, '2017-01-17 19:49:48', '2017-01-17 19:49:48'),
(7, 1, 'https://www.horizonblue.com/about-us', 'eee', 1, 1, '2017-01-17 19:50:12', '2017-01-17 19:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `execution`
--
ALTER TABLE `execution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_standards` (`id_standards`),
  ADD KEY `id_sites` (`id_sites`),
  ADD KEY `id_cms_users` (`id_cms_users`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_standards` (`id_standards`),
  ADD KEY `id_cms_users` (`id_cms_users`);

--
-- Indexes for table `sites_urls`
--
ALTER TABLE `sites_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sites` (`id_sites`),
  ADD KEY `id_urls` (`id_urls`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `test_results`
--
ALTER TABLE `test_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_execution` (`id_execution`),
  ADD KEY `id_sites` (`id_sites`),
  ADD KEY `id_urls` (`url`),
  ADD KEY `error_type` (`type`),
  ADD KEY `id_standards` (`standard`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sites` (`id_sites`);
ALTER TABLE `urls` ADD FULLTEXT KEY `url` (`url`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `execution`
--
ALTER TABLE `execution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sites_urls`
--
ALTER TABLE `sites_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `Standards Mapping` FOREIGN KEY (`id_standards`) REFERENCES `standards` (`id`);

--
-- Constraints for table `test_results`
--
ALTER TABLE `test_results`
  ADD CONSTRAINT `execution` FOREIGN KEY (`id_execution`) REFERENCES `execution` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
