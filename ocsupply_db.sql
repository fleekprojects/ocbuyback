-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 26, 2018 at 08:34 AM
-- Server version: 10.2.17-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocsupply_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'iPhone', 'iphone', 1, '2018-08-28 14:11:31', '2018-09-03 08:44:52'),
(2, 'Samsung', 'samsung', 1, '2018-08-28 14:34:23', '2018-09-03 08:45:00'),
(3, 'iPad', 'ipad', 1, '2018-09-03 08:14:40', '2018-09-03 08:45:07'),
(4, 'Google', 'google', 1, '2018-09-03 08:14:49', '2018-09-03 08:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Brand New', 'brand-new', '<p><span class=\"condition_description_title\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 18px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: myriad-pro !important;\">If&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background: transparent; vertical-align: baseline; font-weight: 700;\">ALL</span>&nbsp;of the following are true:</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"></span></p><p style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\"><br></p><p style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">* Sealed in original box</p><p style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">*&nbsp;Device has never been activated or used</p>', 1, '2018-08-30 10:50:47', '2018-09-25 04:05:54'),
(2, 'Mint', 'mint', '<p><span class=\"condition_description_title\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 18px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: myriad-pro !important;\">If&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background: transparent; vertical-align: baseline; font-weight: 700;\">ALL</span>&nbsp;of the following are true:</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"></span></p><ul id=\"double\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 20px 0px 23px 16px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 14px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; line-height: 26px; width: 856px; overflow: hidden; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Like New with no signs of use</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Fully functional with no operational problems</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? No cracks, scratches, dings or dents</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Battery health in good standing</li></ul>', 1, '2018-08-30 10:58:23', '2018-09-03 12:42:21'),
(3, 'Used', 'used', '<p><span class=\"condition_description_title\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 18px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: myriad-pro !important;\">If&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background: transparent; vertical-align: baseline; font-weight: 700;\">ALL</span>&nbsp;of the following are true:</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"></span></p><ul id=\"double\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 20px 0px 23px 16px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 14px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; line-height: 26px; width: 856px; overflow: hidden; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Device has signs of use but no major cosmetic damage</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Fully functional with no operational problems</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? No chips or cracks in front or back glass</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Battery health in good standing</li></ul>', 1, '2018-09-01 09:00:43', '2018-09-03 12:42:26'),
(4, 'Damaged', 'damaged', '<p><span class=\"condition_description_title\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 18px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: myriad-pro !important;\">If&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background: transparent; vertical-align: baseline; font-weight: 700;\">ANY</span>&nbsp;of the following are true:</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"></span></p><ul id=\"double\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 20px 0px 23px 16px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 14px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; line-height: 26px; width: 856px; overflow: hidden; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Cracked front glass with no LCD damage</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Non-working buttons</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Non-working headphone jack</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Non-working speaker or microphone</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 840px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Poor battery life</li></ul>', 1, '2018-09-01 09:01:21', '2018-09-03 12:42:32'),
(5, 'Broken', 'broken', '<p><span class=\"condition_description_title\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 18px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: myriad-pro !important;\">If&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background: transparent; vertical-align: baseline; font-weight: 700;\">ANY</span>&nbsp;of the following are true:</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\"></span></p><ul id=\"double\" class=\"display_in_two_column\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 20px 0px 23px 16px; border: 0px; outline: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 14px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; line-height: 26px; width: 856px; overflow: hidden; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Does not recognize a SIM card</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Does not connect to Wi-Fi</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Unable to make phone calls</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Non-working fingerprint sensor</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Non-working touchscreen</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Bad LCD (damage, burns, or no display)</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Bent frame</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Passcode lock</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Water damage</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; font-family: myriad-pro, sans-serif !important;\">? Phone does not power on</li><li style=\"margin: 0px; padding: 5px; border: 0px; outline: 0px; background: transparent; font-size: 18px; vertical-align: baseline; width: 420px; display: inline; float: left; line-height: 1.5em; color: rgb(221, 25, 43); font-family: myriad-pro, sans-serif !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background: transparent; font-size: 14px; vertical-align: baseline; font-weight: 700;\">We do not accept iCloud locked devices</span></li></ul>', 1, '2018-09-01 09:01:43', '2018-09-03 12:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `category_id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'iPhone 6S Plus', 'iphone-6s-plus', '', 1, '2018-08-29 07:50:56', '2018-09-03 09:00:03'),
(4, 2, 'Galaxy Note 8', 'galaxy-note-8', '4-galaxynote8.jpg', 1, '2018-08-31 09:59:51', '2018-08-31 10:04:09'),
(5, 1, 'iPhone SE', 'iphone-se', '', 1, '2018-09-03 09:03:02', NULL),
(6, 1, 'iPhone X', 'iphone-x', '', 1, '2018-09-03 09:03:27', NULL),
(7, 1, 'iPhone 8 Plus', 'iphone-8-plus', '', 1, '2018-09-03 09:03:39', NULL),
(8, 1, 'iPhone 8', 'iphone-8', '', 1, '2018-09-03 09:03:48', NULL),
(9, 1, 'iPhone 10', 'iphone-10', '', 1, '2018-09-17 05:25:59', NULL),
(10, 1, 'iPhone 7', 'iphone-7', '', 1, '2018-09-18 11:34:31', NULL),
(11, 1, 'iPhone 7 Plus', 'iphone-7-plus', '', 1, '2018-09-18 12:22:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `trade_details` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(99) NOT NULL,
  `zip` varchar(25) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `status` varchar(25) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `email`, `paypal_email`, `first_name`, `last_name`, `trade_details`, `address`, `city`, `zip`, `phone`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'qmerchant@yopmail.com', '', 'school1', 'Merchant', '', 'checking checking, sss, sss, sss, sss', 'Atlanta', '76543', '2345678', 951.00, 'paid', '2018-09-05 09:33:34', NULL),
(2, 'qmerchant@yopmail.com', '', 'school1', 'Merchant', '', 'checking checking, sss, sss, sss, sss', 'Atlanta', '76543', '2345678', 951.00, 'received', '2018-09-05 09:36:37', NULL),
(3, 'qmerchant@yopmail.com', '', 'school1', 'Merchant', '', 'checking checking, sss, sss, sss, sss', 'Atlanta', '76543', '2345678', 140.00, 'recycled', '2018-09-05 09:58:33', NULL),
(4, 'qmerchant@yopmail.com', 'qmerchant@yopmail.coms', 'school1', 'Merchant', '', 'checking checking, sss, sss, sss, sss, sss', 'Atlanta', '76543', '2345678', 251.00, 'received', '2018-09-05 10:23:42', NULL),
(5, 'nick.norris@jxcreations.com', '', 'Noman', 'Nadeem', '', 'abc', 'khi', '12345', '111111111', 111.00, '', '2018-09-05 10:53:08', NULL),
(6, 'devs@yopmail.com', '', 'justin', 'william', '', 'wedfghjk', 'NY', '555454', '5455445545454544', 391.00, '0', '2018-09-05 14:10:46', NULL),
(7, 'qmerchant@yopmail.com', '', 'school1', 'Merchant', '', 'checking checking, sss, sss, sss, sss, sss, sss', 'Atlanta', '76543', '111-111-1111', 140.00, 'received', '2018-09-05 14:37:35', NULL),
(8, 'qmerchant@yopmail.com', '', 'school1', 'Merchant', '', 'checking checking, sss, sss, sss, sss, sss, sss', 'Atlanta', '76543', '111-111-1111', 140.00, 'paid', '2018-09-05 14:40:36', NULL),
(9, 'nick.norris@jxcreations.com', '', 'Noman', 'Nadeem', '', 'abc, cc', 'khi', '12345', '111-111-1111', 140.00, 'recycled', '2018-09-06 13:13:31', NULL),
(10, 'devs@yopmail.com', '', 'asassasaas', 'assaassa', '', 'aasssaaasas', 'NY', '555454', '111-111-1111', 140.00, 'returned', '2018-09-06 13:13:59', NULL),
(11, 'cely@ocsupplywholesale.com', '', 'celi', 'De Rosas', '', '126 viking ave', 'Brea', '92821', '714-248-4468', 111.00, '0', '2018-09-06 17:28:55', NULL),
(12, 'cely@ocsupplywholesale.com', '', 'celi', 'De Rosas', '', '126 viking ave', 'Brea', '92821', '714-248-4468', 111.00, '0', '2018-09-06 17:58:06', NULL),
(13, 'qmerchant@yopmail.com', 'qmerchant@yopmail.coms', 'school1', 'Merchant', '', 'checking checking, sss, sss, sss, sss, sss, sss', 'Atlanta', '76543', '111-111-1111', 560.00, '0', '2018-09-07 05:34:33', NULL),
(14, 'devs@yopmail.com', '', 'asassasaas', 'assaassa', '', 'assasa', 'NY', '212121', '111-111-1111', 111.00, '0', '2018-09-07 08:26:22', NULL),
(15, 'devs@yopmail.com', '', 'asassasaas', 'assaassa', '', 'assasa', 'NY', '212121', '111-111-1111', 280.00, '0', '2018-09-07 09:20:59', NULL),
(16, 'devs@yopmail.com', '', 'asassasaas', 'assaassa', '', 'assasa', 'NY', '212121', '111-111-1111', 140.00, '0', '2018-09-07 10:31:23', NULL),
(17, 'devs@yopmail.com', '', 'saas', 'assaassa', '', 'saas', 'NY', 'assasaas', '111-111-1111', 111.00, '0', '2018-09-07 13:03:05', NULL),
(18, 'qmerchant@yopmail.com', '', 'school1', 'Merchant', '', 'checking checking, sss, sss, sss, sss, sss, sss', 'Atlanta', '76543', '111-111-1111', 140.00, '0', '2018-09-07 13:41:39', NULL),
(19, 'devs@yopmail.com', '', 'saas', 'assaassa', '', 'saas', 'NY', 'assasaas', '111-111-1111', 140.00, '0', '2018-09-07 13:52:57', NULL),
(20, 'rogerjust@yopmail.com', '', 'John', 'Stout', '', 'Meydan Racecourse Grandstand Rooftop,, Nad Al Sheba 1', 'Dubai', '00000', '111-111-1111', 140.00, '0', '2018-09-08 05:30:00', NULL),
(21, 'nick.norris@jxcreations.com', '', 'Noman', 'Nadeem', 'Prepaid Label', 'abc, cc', 'khi', '12345', '111-111-1111', 420.00, '0', '2018-09-12 11:53:16', NULL),
(22, 'developers@scrap.space', 'qmerchant@yopmail.com', 'Q', 'Merchant', 'Local Drop Off (18th Sep 2018-01:00 PM)', '5773, Poppy Tree Lane, GA, ', 'Tucker', '30084', '111-111-1111', 835.00, '0', '2018-09-17 07:46:33', NULL),
(23, 'developers@scrap.space', 'qmerchant@yopmail.com', 'Q', 'Merchant', 'Local Drop Off (18th Sep 2018 at 01:00 PM)', '5773, Poppy Tree Lane, GA, ', 'Tucker', '30084', '111-111-1111', 111.00, '0', '2018-09-17 01:59:52', NULL),
(24, 'developers@scrap.space', 'qmerchant@yopmail.com', 'Q', 'Merchant', 'Local Drop Off (18th Sep 2018 at 01:00 PM)', '5773, Poppy Tree Lane, GA, ', 'Tucker', '30084', '111-111-1111', 140.00, '0', '2018-09-17 02:11:56', NULL),
(25, 'developers@scrap.space', '', 'Q', 'Merchant', 'Local Drop Off (18th Sep 2018 at 03:00 PM)', '5773, Poppy Tree Lane, GA, ', 'Tucker', '30084', '111-111-1111', 111.00, NULL, '2018-09-17 08:30:41', NULL),
(26, 'developers@scrap.space', '', 'Q', 'Merchant', 'Local Drop Off (18th Sep 2018 at 03:00 PM)', '5773, Poppy Tree Lane, GA, ', 'Tucker', '30084', '111-111-1111', 140.00, NULL, '2018-09-17 08:31:27', NULL),
(27, 'developers@scrap.space', '', 'Q', 'Merchant', 'Prepaid Label', '5777, Avenida Rivadavia, CABA, ', '', 'C1406', '111-111-1111', 140.00, NULL, '2018-09-18 00:34:42', NULL),
(28, 'developers@scrap.space', '', 'Q', 'Merchant', 'Prepaid Label', '5777, Avenida Rivadavia, CABA, ', '', 'C1406', '111-111-1111', 140.00, NULL, '2018-09-18 00:39:56', NULL),
(29, 'developers@scrap.space', '', 'Q', 'Merchant', 'Prepaid Label', '5777, Avenida Rivadavia, CABA, ', '', 'C1406', '111-111-1111', 140.00, NULL, '2018-09-18 00:40:29', NULL),
(30, 'developers@scrap.space', '', 'Q', 'Merchant', 'Prepaid Label', '2340, Avenida Corrientes, CABA, ', '', 'C1046', '111-111-1111', 111.00, NULL, '2018-09-18 05:25:09', NULL),
(31, 'developers@scrap.space', '', 'Q', 'Merchant', 'Prepaid Label', ', Poppy Tree Lane, GA, ', '', '30084', '111-111-1111', 140.00, NULL, '2018-09-18 05:29:46', NULL),
(32, 'developers@scrap.space', '', 'Q', 'Merchant', 'Prepaid Label', '5776, 9th Avenue, NY, ', 'New York', '10034', '111-111-1111', 140.00, NULL, '2018-09-18 07:09:15', NULL),
(33, 'developers@scrap.space', '', 'Q', 'Merchant', 'Prepaid Label', '5776, 9th Avenue, NY, ', 'New York', '10034', '111-111-1111', 140.00, NULL, '2018-09-18 07:15:22', NULL),
(34, 'test@yopmail.com', '', 'jim', 'Morris', 'Local Drop Off (19th Sep 2018 at 03:00 PM)', '123, 1321, NY, ', 'New York', '10001', '111-111-1111', 280.00, NULL, '2018-09-18 07:26:01', NULL),
(35, 'test@yopmail.com', '', 'jim', 'Morris', 'Local Drop Off (19th Sep 2018 at 03:00 PM)', '123, 1321, NY, ', 'New York', '10001', '111-111-1111', 140.00, NULL, '2018-09-18 07:33:32', NULL),
(36, 'nick.norris@jxcreations.com', '', 'Noman', 'Nadeem', 'Prepaid Label', ', , , ', '', '', '111-111-1111', 140.00, NULL, '2018-09-18 07:35:55', NULL),
(37, 'cely@ocsupplywholesale.com', '', 'Araceli', 'De Rosas', 'Local Drop Off (19th Sep 2018 at 9:00 AM)', '126, Viking Avenue, CA, ', 'Brea', '92821', '174-248-4468', 280.00, NULL, '2018-09-18 15:20:09', NULL),
(38, 'developers@scrap.space', 'qmerchant@yopmail.com', 'Q', 'Merchant', 'Local Drop Off (25th Sep 2018 at 10:00 AM)', ', Poppy Tree Lane, GA, ', '', '30084', '111-111-1111', 140.00, NULL, '2018-09-25 04:00:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `offer` float(11,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `provider`, `device`, `condition`, `offer`, `quantity`, `subtotal`) VALUES
(1, 1, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 6, 840.00),
(2, 1, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(3, 2, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 6, 840.00),
(4, 2, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(5, 3, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(6, 4, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(7, 4, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(8, 5, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(9, 6, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 2, 280.00),
(10, 6, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(11, 7, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(12, 8, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(13, 9, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(14, 10, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(15, 11, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(16, 12, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(17, 13, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 4, 560.00),
(18, 14, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(19, 15, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 2, 280.00),
(20, 16, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(21, 17, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(22, 18, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(23, 19, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(24, 20, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(25, 21, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 3, 420.00),
(26, 22, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 2, 280.00),
(27, 22, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 5, 555.00),
(28, 23, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(29, 24, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(30, 25, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(31, 26, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(32, 27, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(33, 29, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(34, 30, 'T-Mobile', 'iPhone 6S Plus', 'Brand New', 111.00, 1, 111.00),
(35, 31, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(36, 32, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(37, 33, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(38, 34, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 2, 280.00),
(39, 35, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(40, 36, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00),
(41, 37, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 2, 280.00),
(42, 38, 'Sprint', 'iPhone 6S Plus', 'Brand New', 140.00, 1, 140.00);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `condition_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `price` float(11,2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `category_id`, `condition_id`, `model_id`, `provider_id`, `storage_id`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 141.00, 1, '2018-09-01 08:48:59', '2018-09-25 04:04:33'),
(2, 1, 2, 1, 1, 1, 120.00, 1, '2018-09-01 08:48:59', '2018-09-17 05:48:37'),
(3, 1, 1, 1, 2, 1, 111.00, 1, '2018-09-01 12:03:00', '2018-09-17 05:48:42'),
(4, 1, 0, 0, 0, 0, 0.00, 1, '2018-09-24 08:07:00', NULL),
(5, 1, 5, 5, 1, 5, 222.00, 1, '2018-09-24 08:09:40', '2018-09-24 08:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `title`, `slug`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sprint', 'sprint', '1-sprint.png', 1, '2018-09-01 08:58:24', '2018-09-03 09:19:13'),
(2, 'T-Mobile', 't-mobile', '2-t-mobile.png', 1, '2018-09-01 08:58:42', '2018-09-03 09:19:23'),
(3, 'Factory Unlocked', 'factory-unlocked', '3-factoryunlocked.png', 1, '2018-09-01 08:58:52', '2018-09-03 09:19:29'),
(4, 'AT&T', 'at-t', '4-att.png', 1, '2018-09-01 08:59:02', '2018-09-03 09:19:34'),
(5, 'Verizon', 'verizon', '5-verizon.png', 1, '2018-09-01 08:59:32', '2018-09-03 09:19:40'),
(6, 'Other', 'other', '', 1, '2018-09-01 09:05:50', '2018-09-03 09:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `ID` int(11) NOT NULL,
  `Site_Title` varchar(100) NOT NULL,
  `Admin_Title` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Website` varchar(50) NOT NULL,
  `Facebook` varchar(50) NOT NULL,
  `Twitter` varchar(50) NOT NULL,
  `Linkedin` varchar(50) NOT NULL,
  `Timezone` varchar(50) NOT NULL,
  `SMTP_Host` varchar(50) NOT NULL,
  `SMTP_Email` varchar(100) NOT NULL,
  `SMTP_Pass` varchar(50) NOT NULL,
  `SMTP_Port` int(4) NOT NULL,
  `LastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`ID`, `Site_Title`, `Admin_Title`, `Email`, `Address`, `Phone`, `Website`, `Facebook`, `Twitter`, `Linkedin`, `Timezone`, `SMTP_Host`, `SMTP_Email`, `SMTP_Pass`, `SMTP_Port`, `LastUpdated`) VALUES
(1, 'OC Buyback', 'OC Buyback | Admin', 'support@ocbuyback.com', '126 Viking Ave, Brea, CA, 92821', '+44 208 5531123', 'www.ocbuyback.com', '', '', '', 'America/Chicago', 'smtp.gmail.com', 'bcdeveloper3@gmail.com', 'Developer', 465, '2017-02-23 11:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '16GB', '16gb', 1, '2018-08-30 08:49:05', '2018-09-03 09:45:20'),
(2, '32GB', '32gb', 1, '2018-08-30 08:49:13', '2018-09-03 09:45:25'),
(3, '64GB', '64gb', 1, '2018-08-30 08:49:27', '2018-09-03 09:45:30'),
(4, '128GB', '128gb', 1, '2018-08-30 08:49:45', '2018-09-03 09:45:34'),
(5, '256GB', '256gb', 1, '2018-08-30 08:49:52', '2018-09-03 09:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `email` text DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `user_name`, `password`, `email`, `name`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@ocsupply.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UserName` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
