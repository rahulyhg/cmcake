-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2017 at 08:55 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslevel`
--

CREATE TABLE IF NOT EXISTS `accesslevel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accesslevel`
--

INSERT INTO `accesslevel` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `cakeimage`
--

CREATE TABLE IF NOT EXISTS `cakeimage` (
  `id` int(11) NOT NULL,
  `cake` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `description` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cakeimage`
--

INSERT INTO `cakeimage` (`id`, `cake`, `image`, `order`, `description`, `timestamp`) VALUES
(1, 6, '17474436_1300754833348025_167168868_o.jpg', 1, 'demo description', '2017-04-22 06:47:32'),
(2, 1, '17474465_1300754663348042_2143551898_o.jpg', 1, 'demo description', '2017-04-22 06:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `caketype`
--

CREATE TABLE IF NOT EXISTS `caketype` (
  `id` int(11) NOT NULL,
  `cake` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caketype`
--

INSERT INTO `caketype` (`id`, `cake`, `type`) VALUES
(11, 6, 1),
(12, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('0581adaf351fb46e85581c2eaae9737c', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460617319, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('0cea13af02a1a784228e4cf7abc7edfe', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458626144, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('0d331426b02e88556ea6216fc548a5ae', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458624918, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('114a6265244d1fca1cd9b4b37276cb4d', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460618888, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('11919e858766e3ad5415b4d19c68e9cc', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458638389, ''),
('15a66c7c89e5ae6699d5d03d8e8549c3', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1492688101, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('15b23a172860e63b1601e72f2164ff97', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', 1459921222, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('1b6304af3c22ca6481aa0bb0de51ee5f', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458630576, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('21e8a59cea415ffa53b2e5236c9bac4a', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', 1460097101, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('21f458692e502df57abbc5d9a941d313', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', 1460466870, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('22b509fb5bba78ed213dbb67bf15875a', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1459167758, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('335fc2adbdfaa8cee602fcdf02ece4e6', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460617013, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('386b1f214a6c8cf18b74a2c03fadfb1d', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460616385, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('39fb92879cfd36d3268fdb894c5f6564', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460618703, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('3a7ba6f9f95c1e3a5db6f030510f591a', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1461733745, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('3e010e5478e9ccc659c309765377e977', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1492687759, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('40855956c05333cf0ed73cbbdf1fc4e1', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460525416, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('42d46347f5f7a82b6ae556af0015da64', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458625479, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('53646bafedddae26894a657cda5def20', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1461733476, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('53fad32c7089063417b7db6a012ca1a0', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1459165464, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('56ddf919c598210baffc6e33c8c37a43', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458633286, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('5efe3bb3ceaff728c65ddfa3d8051cb5', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460618211, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('5fac9b164b034b1c6286f6370d7ddf7d', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458624748, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('600f332a317c84cb6bb6c6eab05940dd', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', 1460101564, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('62d21eba26c36841cd75d21073d97352', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458624852, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('662f5f7936ae8ec9b837f02c6ec7dce1', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1461733391, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('6973032745278edf8aaa1e918587386e', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458624706, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('6d989dcc08eec80605eddae8201ddf9f', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458625132, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('6f98420e2fbdff987c80751730964168', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460616578, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('748f6d284813f79baf385724ba926f29', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458627136, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('76f482e9e34babbebaeb34a08b64a807', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458625110, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('80e946c45f52c42bbc80a18b4a0c83bb', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1461733577, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('81252980e3856eb4916fefb959edc8dc', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458628057, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('8537d3517192598341f1867eaaa6307a', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460616355, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('87399122b43319196ae65408ba015679', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1492684527, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('8e3d27c04df835071221f5efe4199b35', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1491819219, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('90d2d0a6d22a8e65fc07b13e75af8ed9', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458624534, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('90f3cd24c919668d00fb081bf9ac8ccc', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460617254, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('94426f8cb469e5fbe3a27f38a7a13279', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1492750419, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('9640289075d06939fbfe35e06bc2c71d', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460618776, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('98b55dbaf00815a953e8bca6337ec170', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1459169297, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('98bb9a6554649dc188416f9a989a97cc', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1459167591, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('a031201446bcba52dfbf3f19e342824b', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1459170608, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('a09b51daf574217e1062da3d33e11bf4', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458624689, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('a3b781740030cb23beb296789116b21b', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', 1459919394, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('a79e072335a6088fce2e39393b6b2cb4', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1461733965, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('a7f92865f27890749e31ef8605221c3c', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1459166037, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('ad733e49625c8b5bab64ef166bad6119', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460617238, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('b619285db2edce5f4f9ff9785bace78e', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458626259, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('d47844e9b442b1bfe8508eedc4d82074', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460618481, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('d6ff8649006d6bfd26aec8027fb92b07', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458624902, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('da3276d96463b9f190fabac8913c04d1', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460617448, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('dfcbc18362b7fbacb11d3e97258a8f91', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', 1460097297, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('e1337fe313553a36b6452c0be904f7cf', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458625274, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('e60e6730dcc5f8074ee98846107a26ac', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1461733614, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('e80eeb178884c81a12130bba64118683', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', 1460095337, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('e8356401c441cd396933cbdbf25f50d4', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458625241, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('ec40cfaefd3cdf3ace1fc80ae8e5e9de', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1492840066, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('ef5f0c4fe2180ae2f9762a0f5ba67182', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1458624993, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('f30cc4b8ed47762f2586791fe90c9909', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36', 1459167037, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}'),
('f335701b00257649b0b55e3194d71fbb', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 1460618501, 'a:6:{s:9:"user_data";s:0:"";s:2:"id";s:1:"1";s:5:"email";s:17:"wohlig@wohlig.com";s:4:"name";s:6:"wohlig";s:11:"accesslevel";s:1:"1";s:9:"logged_in";s:4:"true";}');

-- --------------------------------------------------------

--
-- Table structure for table `cm_cake`
--

CREATE TABLE IF NOT EXISTS `cm_cake` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cm_cake`
--

INSERT INTO `cm_cake` (`id`, `name`, `description`, `image`, `price`, `status`) VALUES
(1, '1', 'Created for couple Mr. & Ms. Patil for their first Wedding Anniversary.', '17500481_1300754060014769_871535150_o.jpg', 2000, 2),
(6, 'Birthday', 'demo desc', '17500120_1300751226681719_904930689_o4.jpg', 1700, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cm_contact`
--

CREATE TABLE IF NOT EXISTS `cm_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cm_contact`
--

INSERT INTO `cm_contact` (`id`, `name`, `email`, `contact`, `message`, `status`) VALUES
(1, 'avi', 'avinashghare572@gmail.com', '87687687', 'hgbjhjhvhjv', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cm_type`
--

CREATE TABLE IF NOT EXISTS `cm_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cm_type`
--

INSERT INTO `cm_type` (`id`, `name`, `image`, `icon`, `status`) VALUES
(1, 'Wedding', '2014_-_11.jpg', 'no icon', 1),
(2, 'Birthday', '17453393_1300751533348355_1828632115_o.jpg', 'no icon', 1);

-- --------------------------------------------------------

--
-- Table structure for table `companypackage`
--

CREATE TABLE IF NOT EXISTS `companypackage` (
  `id` int(11) NOT NULL,
  `company` int(11) NOT NULL,
  `package` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companypackage`
--

INSERT INTO `companypackage` (`id`, `company`, `package`) VALUES
(1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `logintype`
--

CREATE TABLE IF NOT EXISTS `logintype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintype`
--

INSERT INTO `logintype` (`id`, `name`) VALUES
(1, 'Facebook'),
(2, 'Twitter'),
(3, 'Email'),
(4, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `master_company`
--

CREATE TABLE IF NOT EXISTS `master_company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `package` varchar(255) NOT NULL,
  `isblock` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `sector` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_company`
--

INSERT INTO `master_company` (`id`, `name`, `email`, `package`, `isblock`, `startdate`, `enddate`, `sector`) VALUES
(1, 'Pooja Thakare', 'pooja.wohlig@gmail.com', '4', 0, '2016-04-15', '2016-04-29', 1),
(2, '', '', '0', 0, '2017-04-04', '2017-04-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `linktype` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `keyword`, `url`, `linktype`, `parent`, `isactive`, `order`, `icon`) VALUES
(1, 'Admins', '', '', 'site/viewusers', 1, 0, 1, 1, 'icon-user'),
(2, 'Company', '', '', 'site/viewcompany', 1, 0, 1, 2, 'icon-dashboard'),
(3, 'Packages', '', '', 'site/viewpackage', 1, 0, 1, 3, 'icon-dashboard'),
(4, 'Dashboard', '', '', 'site/index', 1, 0, 1, 0, 'icon-dashboard'),
(5, 'Create Company', '', '', 'site/createcompany', 1, 0, 1, 4, 'icon-dashboard'),
(6, 'Type', '', '', 'site/viewtype', 1, 0, 1, 6, 'icon-dashboard'),
(7, 'Cakes', '', '', 'site/viewcake', 1, 0, 1, 7, 'icon-dashboard'),
(8, 'Contact', '', '', 'site/viewcontact', 1, 0, 1, 8, 'icon-dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `menuaccess`
--

CREATE TABLE IF NOT EXISTS `menuaccess` (
  `menu` int(11) NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuaccess`
--

INSERT INTO `menuaccess` (`menu`, `access`) VALUES
(1, 1),
(2, 2),
(4, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `startdate`, `enddate`, `status`) VALUES
(1, 'Starter', '0000-00-00', '0000-00-00', 1),
(2, 'Advance', '0000-00-00', '0000-00-00', 1),
(3, 'Pro', '0000-00-00', '0000-00-00', 1),
(4, 'Pro Plus', '0000-00-00', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE IF NOT EXISTS `sector` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`id`, `name`) VALUES
(1, 'Agriculture'),
(2, 'Apparel & Fashion'),
(3, 'Architecture & Planning'),
(4, 'Automobiles'),
(5, 'Auto Components'),
(6, 'Aviation'),
(7, 'Banking'),
(8, 'Biotechnology'),
(9, 'Broadcast Media'),
(10, 'Business Supplies & Equipment'),
(11, 'Capital Markets'),
(12, 'Cement'),
(13, 'Civic & Social Organization'),
(14, 'Consumer Markets'),
(15, 'Dairy'),
(16, 'Design'),
(17, 'Education and Training'),
(18, 'E-Learning'),
(19, 'Engineering'),
(20, 'Entertainment'),
(21, 'Event Management'),
(22, 'Food & Beverages'),
(23, 'Facilities Services'),
(24, 'Farming'),
(25, 'Financial Services'),
(26, 'Fishery'),
(27, 'Food Industry'),
(28, 'Government Administration'),
(29, 'Gems and Jewellery'),
(30, 'Healthcare'),
(31, 'Human Resources'),
(32, 'Infrastructure'),
(33, 'International Trade & Development'),
(34, 'Insurance'),
(35, 'Investment Banking'),
(36, 'IT & ITES'),
(37, 'Logistics & Supply Chain '),
(38, 'Machinery'),
(39, 'Manufacturing'),
(40, 'Maritime'),
(41, 'Market Research'),
(42, 'Media & Entertainment'),
(43, 'Management Consulting'),
(44, 'Oil & Gas'),
(45, 'Package & Freight Delivery'),
(46, 'Performing Arts'),
(47, 'Pharmaceuticals'),
(48, 'Public Relations & Communications'),
(49, 'Real Estate'),
(50, 'Recreational Facilities & Services'),
(51, 'Research & Development'),
(52, 'Retail'),
(53, 'Science & Technology'),
(54, 'Semiconductor'),
(55, 'Services'),
(56, 'Steel'),
(57, 'Telecommunications'),
(58, 'Textiles'),
(59, 'Tourism & Hospitality'),
(60, 'Transportation'),
(61, 'Urban Market'),
(62, 'Venture Capital & Private Equity');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'Active'),
(2, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accesslevel` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `socialid` varchar(255) NOT NULL,
  `logintype` varchar(255) NOT NULL,
  `json` text NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `billingaddress` text NOT NULL,
  `billingcity` varchar(255) NOT NULL,
  `billingstate` varchar(255) NOT NULL,
  `billingcountry` varchar(255) NOT NULL,
  `billingcontact` varchar(255) NOT NULL,
  `billingpincode` varchar(255) NOT NULL,
  `shippingaddress` text NOT NULL,
  `shippingcity` varchar(255) NOT NULL,
  `shippingcountry` varchar(255) NOT NULL,
  `shippingstate` varchar(255) NOT NULL,
  `shippingpincode` varchar(255) NOT NULL,
  `shippingname` varchar(255) NOT NULL,
  `shippingcontact` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `registrationno` varchar(255) NOT NULL,
  `vatnumber` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `accesslevel`, `timestamp`, `status`, `image`, `username`, `socialid`, `logintype`, `json`, `firstname`, `lastname`, `phone`, `billingaddress`, `billingcity`, `billingstate`, `billingcountry`, `billingcontact`, `billingpincode`, `shippingaddress`, `shippingcity`, `shippingcountry`, `shippingstate`, `shippingpincode`, `shippingname`, `shippingcontact`, `currency`, `credit`, `companyname`, `registrationno`, `vatnumber`, `country`, `fax`, `gender`, `facebook`, `google`, `twitter`, `street`, `address`, `dob`, `city`, `state`, `pincode`) VALUES
(1, 'Avinash', 'a63526467438df9566c508027d9cb06b', 'wohlig@wohlig.com', 1, '0000-00-00 00:00:00', 1, '1.jpg', '', '', 'Email', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', 0, '', '', '', '', '', '0000-00-00', '', '', ''),
(11, 'Avinash', '9189e4085a9a76fd59d76d688adb4bee', 'avinashghare572@gmail.com', 1, '0000-00-00 00:00:00', 1, '1.jpg', '', '', 'Email', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', 0, '', '', '', '', '', '0000-00-00', '', '', ''),
(12, 'Tushar', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@gmail.com', 1, '0000-00-00 00:00:00', 1, '1.jpg', '', '', 'Email', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', 0, '', '', '', '', '', '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL,
  `onuser` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `onuser`, `status`, `description`, `timestamp`) VALUES
(1, 1, 1, 'User Address Edited', '2014-05-12 06:50:21'),
(2, 1, 1, 'User Details Edited', '2014-05-12 06:51:43'),
(3, 1, 1, 'User Details Edited', '2014-05-12 06:51:53'),
(4, 4, 1, 'User Created', '2014-05-12 06:52:44'),
(5, 4, 1, 'User Address Edited', '2014-05-12 12:31:48'),
(6, 23, 2, 'User Created', '2014-10-07 06:46:55'),
(7, 24, 2, 'User Created', '2014-10-07 06:48:25'),
(8, 25, 2, 'User Created', '2014-10-07 06:49:04'),
(9, 26, 2, 'User Created', '2014-10-07 06:49:16'),
(10, 27, 2, 'User Created', '2014-10-07 06:52:18'),
(11, 28, 2, 'User Created', '2014-10-07 06:52:45'),
(12, 29, 2, 'User Created', '2014-10-07 06:53:10'),
(13, 30, 2, 'User Created', '2014-10-07 06:53:33'),
(14, 31, 2, 'User Created', '2014-10-07 06:55:03'),
(15, 32, 2, 'User Created', '2014-10-07 06:55:33'),
(16, 33, 2, 'User Created', '2014-10-07 06:59:32'),
(17, 34, 2, 'User Created', '2014-10-07 07:01:18'),
(18, 35, 2, 'User Created', '2014-10-07 07:01:50'),
(19, 34, 2, 'User Details Edited', '2014-10-07 07:04:34'),
(20, 18, 2, 'User Details Edited', '2014-10-07 07:05:11'),
(21, 18, 2, 'User Details Edited', '2014-10-07 07:05:45'),
(22, 18, 2, 'User Details Edited', '2014-10-07 07:06:03'),
(23, 7, 6, 'User Created', '2014-10-17 06:22:29'),
(24, 7, 6, 'User Details Edited', '2014-10-17 06:32:22'),
(25, 7, 6, 'User Details Edited', '2014-10-17 06:32:37'),
(26, 8, 6, 'User Created', '2014-11-15 12:05:52'),
(27, 9, 6, 'User Created', '2014-12-02 10:46:36'),
(28, 9, 6, 'User Details Edited', '2014-12-02 10:47:34'),
(29, 4, 6, 'User Details Edited', '2014-12-03 10:34:49'),
(30, 4, 6, 'User Details Edited', '2014-12-03 10:36:34'),
(31, 4, 6, 'User Details Edited', '2014-12-03 10:36:49'),
(32, 8, 6, 'User Details Edited', '2014-12-03 10:47:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesslevel`
--
ALTER TABLE `accesslevel`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `cakeimage`
--
ALTER TABLE `cakeimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caketype`
--
ALTER TABLE `caketype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`), ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `cm_cake`
--
ALTER TABLE `cm_cake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cm_contact`
--
ALTER TABLE `cm_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cm_type`
--
ALTER TABLE `cm_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companypackage`
--
ALTER TABLE `companypackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logintype`
--
ALTER TABLE `logintype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_company`
--
ALTER TABLE `master_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuaccess`
--
ALTER TABLE `menuaccess`
  ADD UNIQUE KEY `menu` (`menu`,`access`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesslevel`
--
ALTER TABLE `accesslevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cakeimage`
--
ALTER TABLE `cakeimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `caketype`
--
ALTER TABLE `caketype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cm_cake`
--
ALTER TABLE `cm_cake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cm_contact`
--
ALTER TABLE `cm_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cm_type`
--
ALTER TABLE `cm_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `companypackage`
--
ALTER TABLE `companypackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logintype`
--
ALTER TABLE `logintype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `master_company`
--
ALTER TABLE `master_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
