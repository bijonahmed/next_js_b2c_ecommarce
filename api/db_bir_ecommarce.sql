-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2025 at 07:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bir_ecommarce`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `home_slider` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `type`, `home_slider`, `banner_image`, `created_at`, `updated_at`) VALUES
(7, 'For Slider', 'slider', 'uploads/banner/thumb_1762003419.jpg', NULL, '2025-11-01 07:23:39', '2025-11-01 07:23:39'),
(8, 'For Slider', 'slider', 'uploads/banner/thumb_1762003424.jpg', NULL, '2025-11-01 07:23:44', '2025-11-01 07:23:44'),
(9, 'For Slider', 'slider', 'uploads/banner/thumb_1762003429.jpg', NULL, '2025-11-01 07:23:49', '2025-11-01 07:23:49'),
(14, 'For Top Banner', 'top_banner', NULL, 'uploads/banner/thumb_1762004608.jpg', '2025-11-01 07:43:28', '2025-11-01 07:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:6:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"d\";s:9:\"role_type\";s:1:\"e\";s:9:\"parent_id\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:63:{i:0;a:6:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"view posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:27;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:6:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"create posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:27;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:6:{s:1:\"a\";i:3;s:1:\"b\";s:10:\"edit posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:27;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:5:{s:1:\"a\";i:4;s:1:\"b\";s:12:\"delete posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:27;}i:4;a:6:{s:1:\"a\";i:5;s:1:\"b\";s:10:\"view users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:28;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:6:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"create users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:28;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:6:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"edit users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:28;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:5:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"delete users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:28;}i:8;a:6:{s:1:\"a\";i:9;s:1:\"b\";s:13:\"view products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:29;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:9;a:6:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"create products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:29;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:6:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"edit products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:29;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:5:{s:1:\"a\";i:12;s:1:\"b\";s:15:\"delete products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:29;}i:12;a:6:{s:1:\"a\";i:14;s:1:\"b\";s:19:\"view posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:6:{s:1:\"a\";i:15;s:1:\"b\";s:21:\"create posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:6:{s:1:\"a\";i:16;s:1:\"b\";s:19:\"edit posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:5:{s:1:\"a\";i:17;s:1:\"b\";s:21:\"delete posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:30;}i:16;a:6:{s:1:\"a\";i:22;s:1:\"b\";s:9:\"view role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:31;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:6:{s:1:\"a\";i:23;s:1:\"b\";s:11:\"create role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:31;s:1:\"r\";a:1:{i:0;i:2;}}i:18;a:6:{s:1:\"a\";i:24;s:1:\"b\";s:9:\"edit role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:31;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:5:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"delete role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:31;}i:20;a:5:{s:1:\"a\";i:26;s:1:\"b\";s:22:\"Update website setting\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:21;a:5:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"Post Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:22;a:5:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"User Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:23;a:5:{s:1:\"a\";i:29;s:1:\"b\";s:19:\"Products Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:24;a:5:{s:1:\"a\";i:30;s:1:\"b\";s:24:\"Post Category Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:25;a:5:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"Role Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:26;a:5:{s:1:\"a\";i:32;s:1:\"b\";s:21:\"Permission Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:27;a:6:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"view permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:6:{s:1:\"a\";i:34;s:1:\"b\";s:17:\"create permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:6:{s:1:\"a\";i:35;s:1:\"b\";s:15:\"edit permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:5:{s:1:\"a\";i:36;s:1:\"b\";s:17:\"delete permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;}i:31;a:5:{s:1:\"a\";i:37;s:1:\"b\";s:28:\"Products Category Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:32;a:6:{s:1:\"a\";i:38;s:1:\"b\";s:21:\"view product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:6:{s:1:\"a\";i:39;s:1:\"b\";s:23:\"create product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:6:{s:1:\"a\";i:40;s:1:\"b\";s:21:\"edit product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:5:{s:1:\"a\";i:41;s:1:\"b\";s:23:\"delete product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;}i:36;a:5:{s:1:\"a\";i:42;s:1:\"b\";s:17:\"Banner Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:37;a:6:{s:1:\"a\";i:43;s:1:\"b\";s:11:\"view banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:6:{s:1:\"a\";i:44;s:1:\"b\";s:13:\"create banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:6:{s:1:\"a\";i:45;s:1:\"b\";s:11:\"edit banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:5:{s:1:\"a\";i:46;s:1:\"b\";s:13:\"delete banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;}i:41;a:5:{s:1:\"a\";i:47;s:1:\"b\";s:19:\"Supplier Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:42;a:6:{s:1:\"a\";i:48;s:1:\"b\";s:13:\"view supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:6:{s:1:\"a\";i:49;s:1:\"b\";s:15:\"create supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:6:{s:1:\"a\";i:50;s:1:\"b\";s:13:\"edit supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:5:{s:1:\"a\";i:51;s:1:\"b\";s:15:\"delete supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;}i:46;a:5:{s:1:\"a\";i:52;s:1:\"b\";s:25:\"Purchase Order Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:47;a:6:{s:1:\"a\";i:53;s:1:\"b\";s:19:\"view purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:6:{s:1:\"a\";i:54;s:1:\"b\";s:21:\"create purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:6:{s:1:\"a\";i:55;s:1:\"b\";s:19:\"edit purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:5:{s:1:\"a\";i:56;s:1:\"b\";s:21:\"delete purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;}i:51;a:5:{s:1:\"a\";i:57;s:1:\"b\";s:18:\"Product Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:52;a:6:{s:1:\"a\";i:58;s:1:\"b\";s:12:\"view product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:6:{s:1:\"a\";i:59;s:1:\"b\";s:14:\"create product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:6:{s:1:\"a\";i:60;s:1:\"b\";s:12:\"edit product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:5:{s:1:\"a\";i:61;s:1:\"b\";s:14:\"delete product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;}i:56;a:5:{s:1:\"a\";i:62;s:1:\"b\";s:16:\"Order Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:57;a:6:{s:1:\"a\";i:63;s:1:\"b\";s:10:\"view order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:6:{s:1:\"a\";i:64;s:1:\"b\";s:12:\"create order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:6:{s:1:\"a\";i:65;s:1:\"b\";s:10:\"edit order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:5:{s:1:\"a\";i:66;s:1:\"b\";s:12:\"delete order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;}i:61;a:5:{s:1:\"a\";i:67;s:1:\"b\";s:19:\"Customer Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:62;a:6:{s:1:\"a\";i:68;s:1:\"b\";s:13:\"view Customer\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:67;s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:1;}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"editor\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:2;}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"viewer\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:3;}}}', 1763996609);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `sort_order` int(11) DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `status`, `thumbnail_image`, `banner_image`, `created_at`, `updated_at`) VALUES
(1, 'Bir Tools', 'bir-tools', 0, 1, 1, 'uploads/categories/thumb_1761908947.gif', 'uploads/categories/thumb_1761909766.png', NULL, '2025-10-31 11:22:46'),
(2, 'Hardware', 'hardware', 0, 2, 1, 'uploads/categories/thumb_1761880670.gif', 'uploads/categories/thumb_1761911067.jpg', NULL, '2025-10-31 11:44:27'),
(3, 'Aluminium Level', 'aluminium-level', 1, 1, 1, NULL, NULL, NULL, NULL),
(4, 'Cutting Disc', 'cutting-disc', 1, 2, 1, NULL, NULL, NULL, NULL),
(5, 'Cutting Tools', 'cutting-tools', 1, 3, 1, NULL, NULL, NULL, NULL),
(6, 'Dril Bit', 'dril-bit', 1, 4, 1, NULL, NULL, NULL, NULL),
(7, 'File', 'file', 1, 5, 1, NULL, NULL, NULL, NULL),
(8, 'Hammer', 'hammer', 1, 6, 1, NULL, NULL, NULL, NULL),
(9, 'Hand Saw', 'hand-saw', 1, 7, 1, NULL, NULL, NULL, NULL),
(10, 'House Tools', 'house-tools', 1, 8, 1, NULL, NULL, NULL, NULL),
(11, 'LN Key', 'ln-key', 1, 9, 1, NULL, NULL, NULL, NULL),
(12, 'Pad Lock', 'pad-lock', 1, 10, 1, NULL, NULL, NULL, NULL),
(13, 'Plier', 'plier', 1, 11, 1, NULL, NULL, NULL, NULL),
(14, 'Power Tools', 'power-tools', 1, 12, 1, NULL, NULL, NULL, NULL),
(15, 'Professional Tools', 'professional-tools', 1, 13, 1, NULL, NULL, NULL, NULL),
(16, 'Rivet Gun', 'rivet-gun', 1, 14, 1, NULL, NULL, NULL, NULL),
(17, 'Royal Bolt', 'royal-bolt', 1, 15, 1, NULL, NULL, NULL, NULL),
(18, 'Safety Iteam', 'safety-iteam', 1, 16, 1, NULL, NULL, NULL, NULL),
(19, 'Sanitary Tools', 'sanitary-tools', 1, 17, 1, NULL, NULL, NULL, NULL),
(20, 'Screw Driver', 'screw-driver', 1, 18, 1, NULL, NULL, NULL, NULL),
(21, 'Socket', 'socket', 1, 19, 1, NULL, NULL, NULL, NULL),
(22, 'Spanner', 'spanner', 1, 20, 1, NULL, NULL, NULL, NULL),
(23, 'Spare Parts-Power Tools', 'spare-parts-power-tools', 1, 21, 1, NULL, NULL, NULL, NULL),
(24, 'Tape', 'tape', 1, 22, 1, NULL, NULL, NULL, NULL),
(25, 'Wrench', 'wrench', 1, 23, 1, NULL, NULL, NULL, NULL),
(26, 'Water Proofing', 'water-proofing', 1, 24, 1, NULL, NULL, NULL, NULL),
(27, 'Aluminium ladder - Industrial Grade I7100', 'aluminium-ladder-industrial-grade-i7100', 2, 1, 1, NULL, NULL, NULL, NULL),
(28, 'Aluminium ladder - Household Grade 1000', 'aluminium-ladder-household-grade-1000', 2, 2, 1, NULL, NULL, NULL, NULL),
(29, 'Aluminium ladder - Household Grade 700', 'aluminium-ladder-household-grade-700', 2, 3, 1, NULL, NULL, NULL, NULL),
(30, 'Concrete Nail - MS', 'concrete-nail-ms', 2, 4, 1, NULL, NULL, NULL, NULL),
(31, 'Stainless Steel Screws', 'stainless-steel-screws', 2, 5, 1, NULL, NULL, NULL, NULL),
(32, 'Brad Nails', 'brad-nails', 2, 6, 1, NULL, NULL, NULL, NULL),
(33, 'Foldable Cloth Drying Rack', 'foldable-cloth-drying-rack', 2, 7, 1, NULL, NULL, NULL, NULL),
(56, 'Round Lock- SS Sheet -58 MM Knob.80 MM Rose Plate-Brass Key', 'round-lock-ss-sheet-58-mm-knob-80-mm-rose-plate-brass-key', 2, 8, 1, NULL, NULL, NULL, NULL),
(57, 'Round Lock- Zinc-58 MM Knob.80 MM Rose Plate-Brass Key', 'round-lock-zinc-58-mm-knob-80-mm-rose-plate-brass-key', 2, 9, 1, NULL, NULL, NULL, NULL),
(58, 'Handle Lock -Medium- 85 MM X 45 MM. SS Body. Cylinder & Latch Brass with SB Finish. 4 Pcs Computer key', 'handle-lock-medium-85-mm-x-45-mm-ss-body-cylinder-latch-brass-with-sb-finish-4-pcs-computer-key', 2, 10, 1, NULL, NULL, NULL, NULL),
(59, 'Aluminium Handle Lock -Medium- 85 MM X 45 MM. SS Body. Cylinder & Latch Brass With SB Finish. 4 Pcs Computer key', 'aluminium-handle-lock-medium-85-mm-x-45-mm-ss-body-cylinder-latch-brass-with-sb-finish-4-pcs-computer-key', 2, 11, 1, NULL, NULL, NULL, NULL),
(60, 'Handle Lock -Small - 58 MM X 45 MM. SS Body. Cylinder & Latch Brass with SB Finish. 4 Pcs Computer key', 'handle-lock-small-58-mm-x-45-mm-ss-body-cylinder-latch-brass-with-sb-finish-4-pcs-computer-key', 2, 12, 1, NULL, NULL, NULL, NULL),
(61, 'Handle Lock -Big - 68 MM X 60 MM. SS Body. Cylinder & Latch Brass With SB Finish.', 'handle-lock-big-68-mm-x-60-mm-ss-body-cylinder-latch-brass-with-sb-finish', 2, 13, 1, NULL, NULL, NULL, NULL),
(62, 'Dead Bolt / Security Lock', 'dead-bolt-security-lock', 2, 14, 1, NULL, NULL, NULL, NULL),
(63, 'Door Stopper', 'door-stopper', 2, 15, 1, NULL, NULL, NULL, NULL),
(64, 'Door Viewer', 'door-viewer', 2, 16, 1, NULL, NULL, NULL, NULL),
(65, 'Door Chain-Zinc', 'door-chain-zinc', 2, 17, 1, NULL, NULL, NULL, NULL),
(66, 'Door Knocker with Viewer-Zinc', 'door-knocker-with-viewer-zinc', 2, 18, 1, NULL, NULL, NULL, NULL),
(67, 'Door Closer', 'door-closer', 2, 19, 1, NULL, NULL, NULL, NULL),
(68, 'Rim Lock-Iron', 'rim-lock-iron', 2, 20, 1, NULL, NULL, NULL, NULL),
(69, 'Liver Lock-High Quality', 'liver-lock-high-quality', 2, 21, 1, NULL, NULL, NULL, NULL),
(70, 'Piano Hinge', 'piano-hinge', 2, 23, 1, NULL, NULL, NULL, NULL),
(71, 'Drawer Lock-Zinc', 'drawer-lock-zinc', 2, 24, 1, NULL, NULL, NULL, NULL),
(72, 'Hydrolic & Normal Concealed Hinge', 'hydrolic-normal-concealed-hinge', 2, 25, 1, NULL, NULL, NULL, NULL),
(73, 'Painting Tools 6\" Roller', 'painting-tools-6-inch-roller', 2, 26, 1, NULL, NULL, NULL, NULL),
(74, 'Painting Tools 7\" Roller', 'painting-tools-7-inch-roller', 2, 27, 1, NULL, NULL, NULL, NULL),
(75, 'Sponge Kit', 'sponge-kit', 2, 28, 1, NULL, NULL, NULL, NULL),
(76, 'Tower Bolt', 'tower-bolt', 2, 29, 1, NULL, NULL, NULL, NULL),
(77, 'Foldable Clothes Drying Racks', 'foldable-clothes-drying-racks', 0, 3, 1, 'uploads/categories/thumb_1761909117.gif', 'uploads/categories/thumb_1761968367.png', NULL, '2025-11-01 03:39:27'),
(78, 'Vikars Ladder', 'vikars-ladder', 0, 4, 1, 'uploads/categories/thumb_1761909181.gif', 'uploads/categories/thumb_1761966547.jpg', NULL, '2025-11-01 03:09:07'),
(79, 'WD-40 Anti Rust Spray', 'wd-40-anti-rust-spray', 0, 5, 1, 'uploads/categories/thumb_1761909067.gif', 'uploads/categories/thumb_1761966831.jpg', NULL, '2025-11-01 03:13:51'),
(80, 'Makita Power Tools', 'makita-power-tools', 0, 6, 1, 'uploads/categories/thumb_1761908999.gif', 'uploads/categories/thumb_1761968977.png', NULL, '2025-11-01 03:49:37'),
(81, 'Spare Parts-Power Tools', 'spare-part-pwr-tools', 0, 7, 1, NULL, NULL, NULL, NULL),
(82, 'Water Proofing', 'water-proofing-products', 0, 8, 1, NULL, NULL, NULL, '2025-10-31 11:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_10_09_160506_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL COMMENT 'ref users table role_id=2',
  `shipping_phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `coupons` text DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL COMMENT '%',
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `advance` decimal(10,2) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `order_status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Pending\r\n2=Order Received\r\n3=Shipped\r\n4=Out for Delivery\r\n5=Delivered\r\n6=Cancelled\r\n7=Returned\r\n8=Refunded\r\n9=Return complete\r\n',
  `bkash_number` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `paymentMethod` varchar(255) DEFAULT NULL,
  `devliery_charge` decimal(10,2) DEFAULT NULL,
  `order_type` int(1) NOT NULL COMMENT '1=online\r\n2=instant_order',
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_offer_status` int(11) DEFAULT NULL,
  `orderUpdateDate` date DEFAULT NULL,
  `orderUpdateby` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderId`, `customer_id`, `shipping_phone`, `address`, `coupons`, `order_date`, `payment_type`, `subtotal`, `amount`, `discount`, `discount_amount`, `grand_total`, `advance`, `due`, `order_status`, `bkash_number`, `transaction_id`, `paymentMethod`, `devliery_charge`, `order_type`, `coupon_code`, `coupon_offer_status`, `orderUpdateDate`, `orderUpdateby`, `created_at`, `updated_at`) VALUES
(1, '00000001', 1, '32094830948', 'DHK', '', '2025-11-23', NULL, 1160.00, NULL, 0, 0.00, 1220.00, NULL, NULL, 5, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-11-23 09:41:39', '2025-11-23 15:41:39'),
(2, '00000002', 20, '09875498989', 'DHK', '', '2025-11-23', NULL, 565.00, NULL, 0, 0.00, 625.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-11-23 09:47:40', '2025-11-23 15:47:40'),
(3, '00000003', 1, '01915728982', 'DHK', '', '2025-11-23', NULL, 3955.00, NULL, 0, 0.00, 4015.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-11-23 09:53:41', '2025-11-23 15:53:41'),
(4, '00000004', 21, '01938484848', 'DHK', '', '2025-11-23', NULL, 4180.00, NULL, 0, 0.00, 4240.00, NULL, NULL, 5, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-11-23 09:55:44', '2025-11-23 15:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribue_id` int(11) DEFAULT NULL,
  `variation_value` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `order_id`, `product_id`, `attribue_id`, `variation_value`, `qty`, `price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 69, NULL, '', 1, 290.00, 290.00, '2025-11-23 09:41:39', '2025-11-23 09:41:39'),
(2, 1, 68, NULL, '', 1, 290.00, 290.00, '2025-11-23 09:41:39', '2025-11-23 09:41:39'),
(3, 1, 67, NULL, '', 1, 290.00, 290.00, '2025-11-23 09:41:39', '2025-11-23 09:41:39'),
(4, 1, 66, NULL, '', 1, 290.00, 290.00, '2025-11-23 09:41:39', '2025-11-23 09:41:39'),
(5, 2, 69, 156, 'FL-90', 1, 280.00, 280.00, '2025-11-23 09:47:40', '2025-11-23 09:47:40'),
(6, 2, 66, NULL, '', 1, 285.00, 285.00, '2025-11-23 09:47:40', '2025-11-23 09:47:40'),
(7, 3, 69, 156, 'FL-90', 7, 280.00, 1960.00, '2025-11-23 09:53:41', '2025-11-23 09:53:41'),
(8, 3, 66, NULL, '', 7, 285.00, 1995.00, '2025-11-23 09:53:41', '2025-11-23 09:53:41'),
(9, 4, 69, 156, 'FL-90', 6, 280.00, 1680.00, '2025-11-23 09:55:44', '2025-11-23 09:55:44'),
(10, 4, 67, 134, 'Aj-67', 10, 250.00, 2500.00, '2025-11-23 09:55:44', '2025-11-23 09:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'The order has been placed but not yet confirmed or paid.', 1, '2023-12-04 11:15:23', '2023-12-04 05:55:06'),
(2, 'Order Received', 'Payment has been received (for prepaid), and the order is being prepared.', 1, '2023-12-04 11:15:23', '2023-12-04 05:55:48'),
(3, 'Shipped', 'The order has been dispatched from the warehouse and is in transit.', 1, '2023-12-04 11:15:23', '2023-12-04 05:56:14'),
(4, 'Out for Delivery', 'The order is with the delivery agent and will reach the customer soon.', 1, '2023-12-04 11:15:23', '2023-12-04 05:56:45'),
(5, 'Delivered', 'The order has successfully reached the customer.', 1, '2023-12-04 11:15:23', '2023-12-04 05:57:14'),
(6, 'Cancelled', 'The order has been cancelled either by the user or the system (e.g., due to payment failure or stock issues).', 1, '2023-12-04 11:15:23', '2023-12-04 05:57:42'),
(7, 'Returned', 'The customer has returned the product after delivery.', 1, '2023-12-04 11:15:23', '2023-12-04 05:58:19'),
(8, 'Refunded', 'Returning', 1, '2023-12-04 11:15:23', '2023-12-04 05:58:53'),
(9, 'Return complete', 'A refund has been initiated and processed for the customer.', 1, '2023-12-04 11:15:23', '2023-12-04 05:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `role_type` varchar(255) DEFAULT NULL COMMENT '1=admin, 2=Editor, 3=Viewer, 4=General Post 5=Product Manage 6=User Manage ',
  `parent_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `role_type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'view posts', 'api', '1,2,3', 27, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(2, 'create posts', 'api', '1,2', 27, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(3, 'edit posts', 'api', '1,2', 27, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(4, 'delete posts', 'api', '1,2,3', 27, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(5, 'view users', 'api', '1,2,3', 28, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(6, 'create users', 'api', '1,2', 28, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(7, 'edit users', 'api', '1,2', 28, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(8, 'delete users', 'api', '1,2,3', 28, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(9, 'view products', 'api', '1,2,3', 29, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(10, 'create products', 'api', '1,2', 29, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(11, 'edit products', 'api', '1,2', 29, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(12, 'delete products', 'api', '1,2,3', 29, '2025-10-09 14:53:43', '2025-10-09 14:53:43'),
(14, 'view posts category', 'api', '1,2,3', 30, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(15, 'create posts category', 'api', '1,2', 30, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(16, 'edit posts category', 'api', '1,2', 30, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(17, 'delete posts category', 'api', '1,2,3', 30, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(22, 'view role', 'api', '1,2,3', 31, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(23, 'create role', 'api', '1,2', 31, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(24, 'edit role', 'api', '1,2', 31, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(25, 'delete role', 'api', '1,2,3', 31, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(26, 'Update website setting', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(27, 'Post Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(28, 'User Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(29, 'Products Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(30, 'Post Category Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(31, 'Role Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(32, 'Permission Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(33, 'view permission', 'api', '1', 32, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(34, 'create permission', 'api', '1', 32, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(35, 'edit permission', 'api', '1', 32, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(36, 'delete permission', 'api', '1', 32, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(37, 'Products Category Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(38, 'view product category', 'api', '1', 37, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(39, 'create product category', 'api', '1', 37, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(40, 'edit product category', 'api', '1', 37, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(41, 'delete product category', 'api', '1', 37, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(42, 'Banner Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(43, 'view banner', 'api', '1', 42, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(44, 'create banner', 'api', '1', 42, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(45, 'edit banner', 'api', '1', 42, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(46, 'delete banner', 'api', '1', 42, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(47, 'Supplier Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(48, 'view supplier', 'api', '1', 47, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(49, 'create supplier', 'api', '1', 47, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(50, 'edit supplier', 'api', '1', 47, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(51, 'delete supplier', 'api', '1', 47, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(52, 'Purchase Order Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(53, 'view purchase order', 'api', '1', 52, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(54, 'create purchase order', 'api', '1', 52, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(55, 'edit purchase order', 'api', '1', 52, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(56, 'delete purchase order', 'api', '1', 52, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(57, 'Product Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(58, 'view product', 'api', '1', 57, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(59, 'create product', 'api', '1', 57, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(60, 'edit product', 'api', '1', 57, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(61, 'delete product', 'api', '1', 57, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(62, 'Order Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(63, 'view order', 'api', '1', 62, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(64, 'create order', 'api', '1', 62, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(65, 'edit order', 'api', '1', 62, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(66, 'delete order', 'api', '1', 62, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(67, 'Customer Management', 'api', '1', 0, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(68, 'view Customer', 'api', '1', 67, '2025-10-09 10:09:35', '2025-10-09 10:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description_short` text DEFAULT NULL,
  `description_full` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL COMMENT '\r\n1=pdf\r\n2=torrent',
  `entry_by` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `description_short`, `description_full`, `meta_title`, `meta_description`, `meta_keyword`, `question`, `answer`, `categoryId`, `entry_by`, `thumnail_img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Bir Group Holdings', 'about-bir-group-holdings', '', '<p>Bir Group Holdings aspires to become one of Bangladesh’s leading diversified distribution and manufacturing companies. The company envisions achieving this by delivering high-quality products across the nation and taking full responsibility for everything it manufactures and distributes. A key part of this vision is treating all retailers and customers fairly and equally, fostering long-term trust and loyalty.</p><p>To accomplish this vision, Bir Group Holdings pursues a clear mission. The company leverages the growth potential of its existing brands and products in the ever-expanding market, introduces new products to its established networks, and continuously expands the distribution of its current brands throughout the domestic market. By following these strategies, the company ensures consistent growth and strengthens its market presence year after year.</p><p>Bir Group Holdings also adheres to a set of core principles that guide its daily operations. These include maintaining equality in a competitive workplace, being open to innovative ideas and advice, taking calculated risks to promote growth and prosperity, and conducting all business activities with the highest ethical standards. Together, these values help the company grow responsibly while maintaining trust with customers, partners, and employees.</p>', 'About Bir Group Holdings', 'About Bir Group Holdings', 'About Bir Group Holdings', NULL, NULL, 1, 1, NULL, 1, '2025-11-04 16:03:29', '2025-11-15 22:09:52'),
(2, 'Terms and Conditions', 'terms-and-conditions', '', '<p>Welcome to Bir-ecommerce &nbsp;By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.</p><p>All products listed on our website are subject to availability. We reserve the right to modify, discontinue, or limit products at any time without prior notice. While we strive to provide accurate images, descriptions, and pricing, slight differences may occur between the displayed product and the actual item.</p><p>When placing an order, you acknowledge that all orders are subject to acceptance by [Your E-commerce Site Name]. Payments must be completed using the methods provided on our checkout page before we can process your order. Prices listed on the website are inclusive/exclusive of applicable taxes, as specified.</p><p>We make every effort to ensure timely delivery; however, delivery timelines are estimates and may vary due to location, product availability, or unforeseen circumstances. Ownership of the products passes to the customer upon delivery, and we are not liable for delays caused by courier services or external factors beyond our control.</p><p>Returns and refunds are processed in accordance with our Return Policy. Products must be returned in their original condition, with all tags and packaging intact. Refunds are issued only after the returned items have been inspected and approved.</p><p>To place an order, you may be required to create an account. You are responsible for maintaining the confidentiality of your account information and password, and for notifying us immediately of any unauthorized use of your account. Misuse of your account or any attempt to compromise the security of our website may result in termination of your account.</p><p>All content on our website, including text, images, logos, and designs, is the intellectual property of [Your E-commerce Site Name] or its licensors and may not be copied, reproduced, or distributed without prior written permission. You agree not to use our website for any unlawful purposes or to transmit harmful, offensive, or unauthorized content.</p><p>While we strive to maintain a secure and error-free website, [Your E-commerce Site Name] is not liable for any direct, indirect, or incidental damages resulting from the use of our website or products. We reserve the right to update these Terms and Conditions at any time, and continued use of our services after such changes constitutes acceptance of the updated terms.</p><p>These Terms and Conditions are governed by the laws of Bangladesh, and any disputes arising from them will be subject to the exclusive jurisdiction of courts in Bangladesh. For any questions or concerns regarding these Terms and Conditions</p>', 'Welcome to Bir-ecommerce  By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.', 'Welcome to Bir-ecommerce  By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.', 'Welcome to Bir-ecommerce  By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.', NULL, NULL, 2, 1, NULL, 1, '2025-11-04 16:06:51', '2025-11-04 16:06:51'),
(3, 'Bir E-commerce Privacy and Policy', 'bir-e-commerce-privacy-and-policy', '', '<p>At Bir E-commerce, we respect your privacy and are committed to protecting the personal information you share with us. This Privacy Policy explains how we collect, use, and safeguard your information when you visit or make purchases on our website. By using our services, you consent to the practices described in this policy.</p><p>We collect personal information that you voluntarily provide to us when creating an account, placing an order, subscribing to our newsletter, or contacting our customer service. This may include your name, email address, phone number, shipping and billing addresses, payment information, and other details necessary to complete your purchase or provide support.</p><p>The information we collect is used to process orders, manage your account, provide customer support, improve our website and services, and communicate with you about your orders, promotions, or updates that may interest you. We may also use your data to analyze shopping trends and improve our product offerings.</p><p>We are committed to protecting your personal information. All sensitive data, such as payment information, is encrypted and transmitted securely through trusted payment gateways. We implement reasonable administrative, technical, and physical safeguards to protect your data from unauthorized access, disclosure, alteration, or destruction.</p><p>We do not sell, trade, or rent your personal information to third parties. However, we may share your information with trusted service providers, such as delivery partners, payment processors, or IT service providers, strictly for the purpose of fulfilling your orders or improving our services. We require that these partners maintain confidentiality and use your data only for the purposes specified by us.</p><p>Our website may contain links to third-party websites. Please note that we are not responsible for the privacy practices or content of these external websites, and we encourage you to review their privacy policies before providing any personal information.</p><p>You have the right to access, update, or delete your personal information stored with us. If you wish to exercise any of these rights, please contact our support team at birgh.group.digital@gmail.com. We will respond to your request promptly in accordance with applicable laws.</p>', 'Bir E-commerce Privacy and Policy', 'Bir E-commerce Privacy and Policy', 'Bir E-commerce Privacy and Policy', NULL, NULL, 4, 1, NULL, 1, '2025-11-04 16:10:04', '2025-11-04 16:10:04'),
(4, 'Return Policy', 'return-policy', '', '<p>At Bir E-commerce, we want you to be completely satisfied with your purchase. If for any reason you are not satisfied, our return policy allows you to return or exchange products under certain conditions. Please read this policy carefully to understand your rights and responsibilities.</p><p>Products can be returned or exchanged within [insert number] days from the date of delivery. To be eligible for a return, the product must be in its original condition, unused, and with all original packaging, tags, and accessories intact. Products that are damaged, altered, or missing parts will not be accepted for return or refund.</p><p>To initiate a return &nbsp;with your order details and reason for the return. Our team will guide you through the return process, including the return shipping instructions.</p><p>Once we receive and inspect the returned product, we will notify you about the approval or rejection of your return. If approved, your refund will be processed using the original payment method within 5 business days. Shipping costs, unless the return is due to our error, are typically the responsibility of the customer.</p><p>Certain items are non-returnable, including:</p><p>Personalized or custom-made products</p><p>Sale or clearance items (unless defective)</p><p>Products damaged due to misuse or mishandling</p><p>We strive to ensure all products are delivered in perfect condition. If you receive a defective or damaged product, please contact us immediately, and we will arrange a replacement or full refund at no additional cost to you.</p>', 'Return Policy', 'Return Policy', 'Return Policy', NULL, NULL, 5, 1, NULL, 1, '2025-11-04 16:11:56', '2025-11-15 23:09:04'),
(5, 'FAQ — Bir Group Holdings', 'faq-bir-group-holdings', '', '<p><strong>1. What is Bir Group Holdings?</strong></p><p>Bir Group Holdings is a diversified distribution and manufacturing company in Bangladesh. The company is committed to delivering high-quality products nationwide while taking full responsibility for everything it produces and distributes.</p><p><strong>2. What is the vision of Bir Group Holdings?</strong></p><p>The company aims to become one of Bangladesh’s leading diversified distribution and manufacturing organizations. Its vision includes ensuring fair treatment for all retailers and customers and building long-term trust and loyalty.</p><p><strong>3. What is the mission of Bir Group Holdings?</strong></p><p>Bir Group Holdings focuses on expanding the potential of its existing brands, introducing new products into established networks, and increasing distribution coverage across domestic markets. Through these strategies, the company strives for continuous growth and strong market presence.</p><p><strong>4. What core principles guide the company?</strong></p><p>Bir Group Holdings follows several key principles:</p><p><strong>Equality</strong> in a competitive workplace</p><p><strong>Encouragement of innovative ideas</strong></p><p><strong>Taking calculated risks</strong> to drive growth</p><p><strong>Upholding strong ethical standards</strong> in all business activities</p><p>These values help the company operate responsibly and maintain trust with all stakeholders.</p><p><strong>5. How does Bir Group Holdings ensure product quality?</strong></p><p>The company maintains responsibility for all its distributed and manufactured goods. It prioritizes quality control and ensures that products meet consistent standards before reaching retailers and customers.</p><p><strong>6. How does the company support its retailers and partners?</strong></p><p>Bir Group Holdings treats all partners fairly and equally. It focuses on building long-term relationships through transparency, dependable service, and ethical business practices.</p><p><strong>7. Is Bir Group Holdings planning to expand?</strong></p><p>Yes. The company continuously explores new product opportunities and expands the distribution network within domestic markets to strengthen its growth and reach new customers nationwide.</p>', 'Faq', 'Faq', 'Faq', NULL, NULL, 12, 1, NULL, 1, '2025-11-16 05:12:12', '2025-11-15 23:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 1, '2025-10-11 19:01:22', '2025-10-11 13:01:35'),
(2, 'Terms & Conditions', 1, '2025-10-11 19:01:22', '2025-10-11 19:01:22'),
(4, 'Privacy Policy', 1, '2025-10-11 19:01:22', '2025-10-11 19:01:22'),
(5, 'Return Policy', 1, '2025-10-11 19:01:22', '2025-10-11 19:01:22'),
(12, 'FAQ', 1, '2025-11-16 05:09:19', '2025-11-16 05:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description_full` text DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `subcategoryId` int(11) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `cash_dev_status` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL COMMENT 'regular_price',
  `discount_price` decimal(10,2) DEFAULT NULL COMMENT 'discount_price',
  `unit` varchar(255) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `stock_mini_qty` int(11) DEFAULT NULL,
  `shipping_days` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `first_update` int(11) NOT NULL DEFAULT 0 COMMENT '1=first update\r\n0=no update',
  `status` int(11) DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `description_full`, `purchase_order_id`, `supplier_id`, `categoryId`, `subcategoryId`, `meta_title`, `meta_description`, `meta_keyword`, `sku`, `cash_dev_status`, `price`, `discount_price`, `unit`, `stock_qty`, `stock_mini_qty`, `shipping_days`, `thumnail_img`, `first_update`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(2, 'Half Round File ( Wooden)-10\'\'', 'half-round-file-wooden-10', '<p>The <strong>Half Round File (Wooden) – 10\"</strong> is a durable and versatile hand tool designed for shaping, smoothing, and finishing metal, wood, and plastic surfaces. Its half-round cross-section allows it to work efficiently on both flat and curved surfaces, providing precision and flexibility in various tasks. Made from high-quality hardened steel, the file ensures long-lasting sharpness and reliable performance. The sturdy wooden handle offers a comfortable and secure grip, reducing hand fatigue during extended use. Ideal for professional craftsmen, workshops, and DIY enthusiasts, this <strong>10\" half-round wooden file</strong> delivers <strong>accuracy, durability, and ease of handling</strong> for detailed filing and finishing projects.</p>', 6, 1, 80, NULL, 'Half Round File ( Wooden)-10\'\'', 'Half Round File ( Wooden)-10\'\'', 'Half Round File ( Wooden)-10\'\'', NULL, NULL, 130.00, 120.00, NULL, 61, NULL, NULL, 'uploads/products/1762688669_half-round-file-wooden-10.jpg', 1, 1, NULL, '2025-11-06 10:15:26', '2025-11-09 11:44:29'),
(3, 'Half Round File ( Wooden)-8\'\'', 'half-round-file-wooden-8', '<p>The <strong>Half Round File (Wooden) – 8\"</strong> is a versatile hand tool designed for precise shaping, smoothing, and finishing of metal, wood, and plastic surfaces. Featuring a half-round cross-section, it is ideal for working on both flat and curved surfaces, providing flexibility and accuracy in a variety of tasks. The file is made from high-quality hardened steel, ensuring long-lasting sharpness and durability. Its wooden handle offers a comfortable, secure grip, reducing hand fatigue during extended use. Perfect for professional workshops, craftsmen, and DIY enthusiasts, this <strong>8\" half-round wooden file</strong> combines <strong>precision, reliability, and ease of use</strong> for all detailed filing and finishing work.</p>', 6, 1, 80, NULL, 'Half Round File ( Wooden)-8\'\'', 'Half Round File ( Wooden)-8\'\'', 'Half Round File ( Wooden)-8\'\'', NULL, NULL, 104.00, 100.00, NULL, 86, NULL, NULL, 'uploads/products/1762688586_half-round-file-wooden-8.jpg', 1, 1, NULL, '2025-11-06 10:15:26', '2025-11-09 11:43:16'),
(4, 'Tri Angel File-4\" Mini (6pcs Set)-Super', 'tri-angel-file-4-mini-6pcs-set-super', '<p>The <strong>Triangular File – 4\" Mini (6 pcs Set) – Super</strong> is a premium-quality precision tool set designed for detailed filing, shaping, and smoothing of metal, wood, plastic, and other materials. Each 4-inch file features a triangular cross-section, perfect for working on internal angles, corners, and tight spaces. Made from superior hardened steel, these files offer exceptional sharpness, durability, and long-lasting performance. The set of six mini files provides versatility for a variety of intricate projects, ensuring consistent and accurate results. With ergonomically designed handles for a comfortable and secure grip, this <strong>Super 6-piece mini triangular file set</strong> is ideal for professionals, hobbyists, and DIY enthusiasts seeking <strong>precision, control, and superior quality</strong> in every task.</p>', 6, 1, 80, NULL, 'Tri Angel File-4\" Mini (6pcs Set)-Super', 'Tri Angel File-4\" Mini (6pcs Set)-Super', 'Tri Angel File-4\" Mini (6pcs Set)-Super', NULL, NULL, 155.00, 150.00, NULL, 187, NULL, NULL, 'uploads/products/1762688521_tri-angel-file-4-mini-6pcs-set-super.jpg', 1, 1, NULL, '2025-11-06 10:15:26', '2025-11-09 11:42:01'),
(5, 'Tri Angle File-Mini-4\" ( 6pcs Set)', 'tri-angle-file-mini-4-6pcs-set', '<p>The <strong>Triangular File – Mini – 4\" (6 pcs Set)</strong> is a precision hand tool set designed for detailed filing, shaping, and smoothing of metal, wood, plastic, and other materials. Each 4-inch file features a triangular cross-section, making it ideal for filing internal angles, corners, and hard-to-reach areas. Crafted from high-quality hardened steel, these files provide durability, sharpness, and long-lasting performance. The set includes six mini files, offering versatility for a variety of small-scale projects and intricate work. With comfortable handles for a secure grip, this <strong>6-piece mini triangular file set</strong> is perfect for professionals, hobbyists, and DIY enthusiasts seeking precision, control, and reliable results.</p>', 6, 1, 80, NULL, 'Tri Angle File-Mini-4\" ( 6pcs Set)', 'Tri Angle File-Mini-4\" ( 6pcs Set)', 'Tri Angle File-Mini-4\" ( 6pcs Set)', NULL, NULL, 125.00, 120.00, NULL, 1095, NULL, NULL, 'uploads/products/1762688471_tri-angle-file-mini-4-6pcs-set.jpg', 1, 1, NULL, '2025-11-06 10:15:26', '2025-11-09 11:41:11'),
(6, 'American Claw Hammer with Fiber Glass-16OZ', 'american-claw-hammer-with-fiber-glass-16oz', '<p>The <strong>American Claw Hammer with Fiberglass Handle – 16 Oz</strong> is a durable and reliable hand tool designed for general construction, carpentry, and DIY tasks. Featuring a hardened steel head, it provides long-lasting strength and efficient striking performance. The curved claw allows for easy nail removal, prying, and general demolition work. Its fiberglass handle offers excellent shock absorption, a comfortable grip, and enhanced control, reducing hand fatigue during extended use. Combining <strong>durability, precision, and ergonomic comfort</strong>, this 16 Oz American claw hammer is perfect for both professional tradesmen and home users.</p>', 6, 1, 80, NULL, 'American Claw Hammer with Fiber Glass-16OZ', 'American Claw Hammer with Fiber Glass-16OZ', 'American Claw Hammer with Fiber Glass-16OZ', NULL, NULL, 252.00, 200.00, NULL, 4985, NULL, NULL, 'uploads/products/1762688421_american-claw-hammer-with-fiber-glass-16oz.jpg', 1, 1, NULL, '2025-11-06 10:15:26', '2025-11-09 11:40:21'),
(7, 'Ball Peen Hammer (Standard) -16 Oz (1 LB)', 'ball-peen-hammer-standard-16-oz-1-lb', '<p>The <strong>Ball Peen Hammer (Standard) – 16 Oz (1 LB)</strong> is a robust and versatile hand tool designed for heavy-duty metalworking, striking, and shaping tasks. It features a hardened steel head for maximum durability and long-lasting performance. The flat face is ideal for driving punches, chisels, and other tools, while the rounded peen end is perfect for shaping, bending, and peening metal. Its ergonomic handle provides a comfortable and secure grip, ensuring precise control and reducing user fatigue during prolonged use. Combining <strong>strength, reliability, and precision</strong>, this 16 Oz ball peen hammer is an essential tool for mechanics, metalworkers, and professional workshops.</p>', 6, 1, 80, NULL, 'Ball Peen Hammer (Standard) -16 Oz (1 LB)', 'Ball Peen Hammer (Standard) -16 Oz (1 LB)', 'Ball Peen Hammer (Standard) -16 Oz (1 LB)', NULL, NULL, 125.00, 100.00, NULL, 1, NULL, NULL, 'uploads/products/1762688377_ball-peen-hammer-standard-16-oz-1-lb.jpg', 1, 1, NULL, '2025-11-06 10:15:26', '2025-11-09 11:39:37'),
(8, 'Ball Pein Hammer-04 OZ ( 1/4 LB)', 'ball-pein-hammer-04-oz-14-lb', '<p>The <strong>Ball Pein Hammer – 4 Oz (1/4 LB)</strong> is a compact and versatile hand tool designed for precision metalworking and light-duty striking tasks. It features a hardened steel head for durability and long-lasting performance. The flat face is ideal for driving punches and chisels, while the rounded pein end is perfect for shaping, bending, and peening metal. Its lightweight design and ergonomic handle provide comfortable grip and control, reducing hand fatigue during use. Combining <strong>precision, strength, and reliability</strong>, this 4 Oz ball pein hammer is perfect for mechanics, metalworkers, and DIY enthusiasts requiring accuracy in small-scale tasks.</p>', 6, 1, 80, NULL, 'Ball Pein Hammer-04 OZ ( 1/4 LB)', 'Ball Pein Hammer-04 OZ ( 1/4 LB)', 'Ball Pein Hammer-04 OZ ( 1/4 LB)', NULL, NULL, 164.00, 160.00, NULL, 222, NULL, NULL, 'uploads/products/1762687490_ball-pein-hammer-04-oz-14-lb.jpg', 1, 1, NULL, '2025-11-06 10:15:26', '2025-11-09 11:24:50'),
(9, 'Ball Pein Hammer-08 Oz (1/2 LB)', 'ball-pein-hammer-08-oz-12-lb', '<p>The <strong>Ball Pein Hammer – 8 Oz (1/2 LB)</strong> is a versatile hand tool designed for metalworking, shaping, and striking tasks.<br>&nbsp;Featuring a hardened steel head, it provides durability and long-lasting performance for heavy-duty use. One end of the hammer has a flat striking face, ideal for driving punches and chisels, while the rounded pein end is perfect for shaping, bending, and peening metal. The ergonomic handle ensures a comfortable grip and reduces hand fatigue during extended use. Combining <strong>strength, precision, and reliability</strong>, this 8 Oz ball pein hammer is an essential tool for mechanics, metalworkers, and DIY enthusiasts.<br><br>&nbsp;</p>', 6, 1, 80, NULL, 'Ball Pein Hammer-08 Oz (1/2 LB)', 'Ball Pein Hammer-08 Oz (1/2 LB)', 'Ball Pein Hammer-08 Oz (1/2 LB)', NULL, NULL, 188.00, 180.00, NULL, 1889, NULL, NULL, 'uploads/products/1762687421_ball-pein-hammer-08-oz-12-lb.jpg', 1, 1, NULL, '2025-11-06 10:15:26', '2025-11-09 11:23:41'),
(10, 'Axe(Bir Brand)-Fiber Handle', 'axebir-brand-fiber-handle', '<p>The <strong>Axe (Bir Brand) – Fiber Handle</strong> is a durable and lightweight tool designed for efficient chopping, splitting, and outdoor work. It features a high-quality steel blade that ensures sharp, precise, and long-lasting cutting performance. The fiber-reinforced handle provides excellent strength, shock absorption, and a comfortable, non-slip grip for safer use. Its balanced design allows for better control and reduces user fatigue during extended tasks. Combining <strong>durability, precision, and ergonomic comfort</strong>, this Bir Brand axe with a fiber handle is perfect for gardening, camping, and heavy-duty woodcutting projects.</p>', 4, 2, 79, NULL, 'Axe(Bir Brand)-Fiber Handle', 'Axe(Bir Brand)-Fiber Handle', 'Axe(Bir Brand)-Fiber Handle', NULL, NULL, 430.00, 400.00, NULL, 25, NULL, NULL, 'uploads/products/1762687020_axebir-brand-fiber-handle.jpg', 1, 1, NULL, '2025-11-06 10:15:40', '2025-11-09 11:17:00'),
(11, 'Axe ( Bir Brand)-Premium Quality', 'axe-bir-brand-premium-quality', '<p>The <strong>Axe (Bir Brand) – Premium Quality</strong> is a high-performance tool designed for professional and heavy-duty chopping, splitting, and outdoor tasks. It features a superior-grade steel blade that delivers sharp, precise, and long-lasting cutting performance. The ergonomically designed handle ensures a comfortable and secure grip, providing excellent control and reducing fatigue during extended use. Built for strength and reliability, this axe can handle tough wood and demanding outdoor projects with ease. Combining <strong>premium quality, durability, and precision</strong>, the Bir Brand Axe is ideal for professionals, campers, and woodworking enthusiasts alike.</p>', 4, 2, 79, NULL, 'Axe ( Bir Brand)-Premium Quality', 'Axe ( Bir Brand)-Premium Quality', 'Axe ( Bir Brand)-Premium Quality', NULL, NULL, 520.00, 500.00, NULL, 284, NULL, NULL, 'uploads/products/1762686980_axe-bir-brand-premium-quality.jpg', 1, 1, NULL, '2025-11-06 10:15:40', '2025-11-09 11:16:20'),
(12, 'Axe(Bir Brand)-Small', 'axebir-brand-small', '<p>The <strong>Axe (Bir Brand) – Small</strong> is a compact and durable tool designed for chopping, splitting, and general outdoor tasks. Featuring a sharp, high-quality steel blade, it delivers efficient and precise cutting performance. The sturdy handle provides a comfortable grip and excellent control, making it easy to handle for extended use. Its small size and lightweight design make it ideal for camping, gardening, and household projects. Combining <strong>durability, precision, and portability</strong>, this small Bir Brand axe is perfect for both professional and recreational use.</p>', 4, 2, 79, NULL, 'Axe(Bir Brand)-Small', 'Axe(Bir Brand)-Small', 'Axe(Bir Brand)-Small', NULL, NULL, 455.00, 400.00, NULL, 3326, NULL, NULL, 'uploads/products/1762686898_axebir-brand-small.jpg', 1, 1, NULL, '2025-11-06 10:15:40', '2025-11-09 11:14:58'),
(13, 'Drill Bit ( 6.5mm-Super)', 'drill-bit-65mm-super', '<p>The <strong>Drill Bit (6.5mm – Super)</strong> is a high-performance cutting tool designed for precise and efficient drilling in a variety of materials. Made from premium-quality steel, it ensures sharpness, durability, and long-lasting performance even under heavy use. The 6.5mm size is ideal for creating clean, accurate holes in wood, metal, plastic, and masonry surfaces. Its precision-ground tip allows for smooth penetration and reduces the risk of wandering or chipping. Perfect for professional tradesmen and DIY enthusiasts alike, this <strong>super-quality drill bit</strong> delivers consistent, reliable, and precise results for every drilling task.</p>', 4, 2, 79, NULL, 'Drill Bit ( 6.5mm-Super)', 'Drill Bit ( 6.5mm-Super)', 'Drill Bit ( 6.5mm-Super)', NULL, NULL, 16.50, 10.00, NULL, 402, NULL, NULL, 'uploads/products/1762686858_drill-bit-65mm-super.jpg', 1, 1, NULL, '2025-11-06 10:15:40', '2025-11-09 11:14:18'),
(14, 'Drill Chuck (1.5-13mm)', 'drill-chuck-15-13mm', '<p>The <strong>Drill Chuck (1.5–13mm)</strong> is a versatile and durable accessory designed for securely holding drill bits of various sizes. Made from high-quality hardened steel, it ensures long-lasting strength and precision during drilling operations. The 1.5–13mm capacity accommodates a wide range of drill bits, making it suitable for wood, metal, plastic, and other materials. Its keyless or keyed design provides easy and quick bit changes while maintaining a tight grip to prevent slipping. Ideal for both professional workshops and DIY projects, this drill chuck delivers <strong>reliability, precision, and convenience</strong> for all your drilling needs.</p>', 4, 2, 79, NULL, 'Drill Chuck (1.5-13mm)', 'Drill Chuck (1.5-13mm)', 'Drill Chuck (1.5-13mm)', NULL, NULL, 245.00, 200.00, NULL, 2609, NULL, NULL, 'uploads/products/1762686808_drill-chuck-15-13mm.jpg', 1, 1, NULL, '2025-11-06 10:15:40', '2025-11-09 11:13:28'),
(15, 'Cutting Tools', 'cutting-tools', '<p><strong>Cutting Tools</strong> are essential hand and power tools designed to cut, shape, or remove material from various surfaces such as metal, wood, stone, plastic, or tile. They come in a wide range of types, including saws, cutters, snips, bolt cutters, grinding wheels, and diamond blades, each engineered for specific applications and materials. High-quality cutting tools are typically made from hardened steel, tungsten carbide, or diamond-tipped edges to ensure sharpness, durability, and precision. Ergonomic designs, such as comfortable handles or fiber grips, improve control and reduce user fatigue during extended use. Widely used in construction, fabrication, metalworking, woodworking, and DIY projects, cutting tools provide <strong>efficiency, accuracy, and reliable performance</strong>, making them indispensable in both professional and home workshops.</p>', 3, 2, 79, NULL, 'Cutting Tools', 'Cutting Tools', 'Cutting Tools', NULL, NULL, 143.31, 140.00, NULL, 57563, NULL, NULL, 'uploads/products/1762686721_cutting-tools.jpg', 1, 1, NULL, '2025-11-06 10:15:59', '2025-11-09 11:12:01'),
(16, 'Abresive Paper Sheet-(120-White)', 'abresive-paper-sheet-120-white', '<p>The <strong>Abrasive Paper Sheet – 120 Grit (White)</strong> is a high-quality sanding sheet designed for smooth and efficient surface preparation. Made with durable abrasive grains, it effectively removes rust, paint, and minor surface imperfections from wood, metal, plastic, and other materials. The 120-grit texture provides a medium level of coarseness, ideal for shaping, smoothing, and finishing surfaces. Lightweight and flexible, it conforms easily to curves and edges, allowing precise sanding in tight or intricate areas. Perfect for both professional workshops and DIY projects, this abrasive sheet delivers <strong>consistency, durability, and excellent finishing results</strong> every time.</p>', 3, 2, 79, NULL, 'Abresive Paper Sheet-(120-White)', 'Abresive Paper Sheet-(120-White)', 'Abresive Paper Sheet-(120-White)', NULL, NULL, 12.50, 10.00, NULL, 442, NULL, NULL, 'uploads/products/1762686637_abresive-paper-sheet-120-white.jpg', 1, 1, NULL, '2025-11-06 10:15:59', '2025-11-09 11:10:37'),
(17, 'Aluminium Cutter-12\"', 'aluminium-cutter-12', '<p>The <strong>Aluminium Cutter – 12\"</strong> is a professional-grade hand tool designed for clean and precise cutting of aluminium profiles, rods, pipes, and other soft metals. Made from high-quality hardened steel, it ensures long-lasting sharpness and durability for repeated use. The ergonomic handles provide a comfortable grip and leverage, making cutting easier and reducing hand fatigue. Ideal for construction, fabrication, and DIY projects, it delivers smooth, accurate cuts every time. Combining <strong>strength, precision, and reliability</strong>, the 12\" Aluminium Cutter is an essential tool for both professional tradesmen and home users.</p>', 3, 2, 78, NULL, 'Aluminium Cutter-12\"', 'Aluminium Cutter-12\"', 'Aluminium Cutter-12\"', NULL, NULL, 1300.00, 1200.00, NULL, 159, NULL, NULL, 'uploads/products/1762686556_aluminium-cutter-12.jpg', 1, 1, NULL, '2025-11-06 10:15:59', '2025-11-09 11:09:16'),
(18, 'American Snip-12\"', 'american-snip-12', '<p>The <strong>American Snip – 12\"</strong> is a heavy-duty cutting tool designed for precise and effortless cutting of sheet metal, wires, and other tough materials.&nbsp;<br><br>Constructed with high-quality, hardened steel, it provides sharp, long-lasting blades for clean and accurate cuts. Its ergonomic handles offer a comfortable grip and excellent leverage, reducing hand fatigue during extended use. Ideal for electricians, metalworkers, and DIY enthusiasts, this 12\" snip can handle straight, left, and right cuts with ease. Combining <strong>strength, precision, and durability</strong>, the American Snip – 12\" is an essential tool for any professional or home workshop.</p>', 3, 2, 78, NULL, 'American Snip-12\"', 'American Snip-12\"', '', NULL, NULL, 295.00, 200.00, NULL, 102, NULL, NULL, 'uploads/products/1762686471_american-snip-12.jpg', 1, 1, NULL, '2025-11-06 10:15:59', '2025-11-09 11:07:51'),
(19, 'Axe(Bir Brand)-Fiber Handle', 'axebir-brand-fiber-handle', '<p>The <strong>Axe (Bir Brand) – Fiber Handle</strong> is a durable and lightweight tool designed for efficient chopping, splitting, and outdoor tasks. Featuring a high-quality steel blade, it delivers sharp, precise cuts with long-lasting performance. The fiber-reinforced handle provides excellent strength, shock absorption, and a comfortable, non-slip grip for safer use. Its balanced design ensures better control and reduced fatigue, making it ideal for both professional and DIY applications. Combining <strong>durability, precision, and ergonomic comfort</strong>, this Bir Brand axe with a fiber handle is perfect for gardening, camping, and heavy-duty woodwork.</p>', 3, 2, 78, NULL, 'Axe(Bir Brand)-Fiber Handle', 'Axe(Bir Brand)-Fiber Handle', 'Axe(Bir Brand)-Fiber Handle', NULL, NULL, 430.00, 400.00, NULL, 25, NULL, NULL, 'uploads/products/1762686410_axebir-brand-fiber-handle.jpg', 1, 1, NULL, '2025-11-06 10:15:59', '2025-11-09 11:06:50'),
(20, 'Axe ( Bir Brand)-Premium Quality', 'axe-bir-brand-premium-quality', '<p>The <strong>Axe (Bir Brand) – Premium Quality</strong> is a high-performance tool designed for professional and heavy-duty chopping, splitting, and outdoor tasks. Crafted with superior-grade steel, its sharp, precision-forged blade ensures efficient cutting and long-lasting durability.&nbsp;<br><br>The ergonomically designed handle provides a comfortable and secure grip, allowing for maximum control and reduced fatigue during extended use. Built for strength and reliability, this axe can handle tough wood and demanding outdoor work with ease. Combining <strong>premium quality, precision, and durability</strong>, the Bir Brand Axe is an essential tool for professionals, campers, and woodworking enthusiasts alike.</p>', 3, 2, 78, NULL, 'Axe ( Bir Brand)-Premium Quality', 'Axe ( Bir Brand)-Premium Quality', '', NULL, NULL, 520.00, 500.00, NULL, 284, NULL, NULL, 'uploads/products/1762685701_axe-bir-brand-premium-quality.jpg', 1, 1, NULL, '2025-11-06 10:15:59', '2025-11-09 10:55:01'),
(21, 'Axe(Bir Brand)-Small', 'axebir-brand-small', '<p>The <strong>Axe (Bir Brand) – Small</strong> is a compact and durable tool designed for chopping, splitting, and general outdoor use. Made with high-quality steel, its sharp blade ensures efficient cutting and long-lasting performance. The sturdy wooden handle provides a comfortable grip and excellent control during use. Its small size makes it lightweight and easy to carry, perfect for camping, gardening, and household tasks. Combining <strong>precision, durability, and portability</strong>, this small Bir Brand axe is ideal for both professional and recreational use.</p>', 3, 2, 78, NULL, 'Axe(Bir Brand)-Small', 'Axe(Bir Brand)-Small', 'Axe(Bir Brand)-Small', NULL, NULL, 455.00, 400.00, NULL, 3326, NULL, NULL, 'uploads/products/1762685581_axebir-brand-small.jpg', 1, 1, NULL, '2025-11-06 10:15:59', '2025-11-09 10:53:01'),
(22, 'Bolt Cutter-12\"', 'bolt-cutter-12', '<p>The <strong>12\" Bolt Cutter</strong> is a robust and durable hand tool designed for cutting bolts, chains, padlocks, rods, and wire mesh with ease. Made from high-quality hardened steel, it provides long-lasting strength and sharp, precise cutting edges. The ergonomic handles ensure a comfortable grip and leverage, reducing hand fatigue while delivering maximum cutting power. Ideal for construction, industrial, and DIY applications, it can efficiently handle medium-duty cutting tasks. Combining <strong>durability, precision, and reliability</strong>, the 12\" Bolt Cutter is an essential tool for professionals and home users alike.</p>', 3, 2, 78, NULL, 'Bolt Cutter-12\"', 'Bolt Cutter-12\"', 'Bolt Cutter-12\"', NULL, NULL, 520.00, 500.00, NULL, 432, NULL, NULL, 'uploads/products/1762685537_bolt-cutter-12.jpg', 1, 1, NULL, '2025-11-06 10:15:59', '2025-11-09 10:52:17'),
(23, 'Cable Cutter-10\"', 'cable-cutter-10', '<p>The <strong>10\" Cable Cutter</strong> is a heavy-duty hand tool designed for clean and efficient cutting of electrical wires, cables, and ropes. Made from high-quality hardened steel, it delivers long-lasting durability and sharp cutting edges for precise, effortless cuts. Its ergonomic handles provide a comfortable grip and reduce hand fatigue during extended use. Ideal for electricians, technicians, and DIY enthusiasts, this cutter can handle copper, aluminum, and multi-strand cables with ease. Combining <strong>strength, precision, and reliability</strong>, the 10\" Cable Cutter is an essential tool for any electrical or wiring project.</p>', 3, 2, 78, NULL, 'Cable Cutter-10\"', 'Cable Cutter-10\"', 'Cable Cutter-10\"', NULL, NULL, 235.00, 200.00, NULL, 42, NULL, NULL, 'uploads/products/1762685408_cable-cutter-10.jpg', 1, 1, NULL, '2025-11-06 10:15:59', '2025-11-09 10:50:08'),
(24, 'Aluminium Level with Magnet-09', 'aluminium-level-with-magnet-09', '<p>The <strong>Aluminium Level with Magnet – 09</strong> is a durable and precise tool designed for accurate leveling in construction, carpentry, and DIY projects. Made from high-quality aluminium, it is lightweight yet sturdy, providing long-lasting performance and resistance to bending or warping.&nbsp;<br><br>The built-in magnet allows for hands-free use on metal surfaces, making it easier to work on pipes, beams, or steel structures. Its clear, easy-to-read vials ensure precise horizontal, vertical, and 45-degree measurements every time. Ideal for professionals and home users alike, this aluminium level combines <strong>accuracy, durability, and convenience</strong> for all leveling tasks.</p>', 1, 4, 78, NULL, 'Aluminium Level with Magnet-09', 'Aluminium Level with Magnet-09', 'Aluminium Level with Magnet-09', NULL, NULL, 215.00, 210.00, NULL, 210, NULL, NULL, 'uploads/products/1762685283_aluminium-level-with-magnet-09.jpg', 1, 1, NULL, '2025-11-06 10:16:13', '2025-11-09 10:48:03'),
(25, '4\" Daimond  Cup Grinding Disk-Single', '4-daimond-cup-grinding-disk-single', '<p>The <strong>4\" Diamond Cup Grinding Disk – Single</strong> is a professional-grade tool designed for precise and efficient grinding on hard surfaces. Constructed with durable diamond segments, it delivers fast material removal and smooth finishes on concrete, granite, marble, and stone. Its single-row cup design provides excellent control, stability, and reduced vibration during operation, ensuring accurate and consistent results. Lightweight and easy to handle, it is ideal for surface leveling, coating removal, and edge grinding tasks. Built for durability and long-lasting performance, this grinding disk combines <strong>precision, power, and reliability</strong>, making it an essential tool for both professional and DIY projects.</p>', 1, 4, 77, NULL, '4\" Daimond  Cup Grinding Disk-Single', '4\" Daimond  Cup Grinding Disk-Single', '4\" Daimond  Cup Grinding Disk-Single', NULL, NULL, 240.00, 100.00, NULL, 7, NULL, NULL, 'uploads/products/1762684954_4-daimond-cup-grinding-disk-single.jpg', 1, 1, NULL, '2025-11-06 10:16:13', '2025-11-09 10:42:34'),
(26, '4\" Daimond Cup Grinding Wheel-Std.Quality', '4-daimond-cup-grinding-wheel-stdquality', '<p>The <strong>4\" Diamond Cup Grinding Wheel – Standard Quality</strong> is a reliable and durable tool designed for efficient grinding and surface preparation on hard materials. Made with high-quality diamond segments, it delivers consistent performance on concrete, granite, marble, and stone surfaces. Its cup-shaped design ensures excellent control, stability, and smooth operation with reduced vibration. Ideal for surface leveling, coating removal, and edge grinding, it provides precise and uniform results. Built for long-lasting performance, this standard-quality diamond cup wheel combines <strong>efficiency, durability, and reliability</strong>, making it an essential tool for both professional and DIY applications.</p>', 1, 4, 77, NULL, '4\" Daimond Cup Grinding Wheel-Std.Quality', '4\" Daimond Cup Grinding Wheel-Std.Quality', '4\" Daimond Cup Grinding Wheel-Std.Quality', NULL, NULL, 230.00, 200.00, NULL, 251, NULL, NULL, 'uploads/products/1762684867_4-daimond-cup-grinding-wheel-stdquality.jpg', 1, 1, NULL, '2025-11-06 10:16:13', '2025-11-09 10:41:07'),
(27, '4\" Daimond Cutter-Professional Quality-Plain Saw', '4-daimond-cutter-professional-quality-plain-saw', '<p>The <strong>4\" Diamond Cutter – Professional Quality – Plain Saw</strong> is a high-performance cutting blade designed for smooth, precise, and efficient cutting on a variety of hard materials.&nbsp;<br>Crafted with premium diamond particles, it ensures clean and accurate cuts on concrete, marble, granite, tiles, and stone. The plain rim design provides a continuous cutting edge, resulting in minimal chipping and a flawless finish, making it ideal for fine and delicate work. Lightweight and easy to handle, it offers excellent control and stability for both professional and DIY use. Built for durability, this blade maintains sharpness even under extended use, combining <strong>precision, reliability, and long-lasting performance</strong> for every cutting task.</p>', 1, 4, 77, NULL, '4\" Daimond Cutter-Professional Quality-Plain Saw', '4\" Daimond Cutter-Professional Quality-Plain Saw', '4\" Daimond Cutter-Professional Quality-Plain Saw', NULL, NULL, 105.00, 100.00, NULL, 3684, NULL, NULL, 'uploads/products/1762684801_4-daimond-cutter-professional-quality-plain-saw.jpg', 1, 1, NULL, '2025-11-06 10:16:13', '2025-11-09 10:40:01'),
(28, '4\" Daimond Cutter-Professional Quality-Seg.Cutting', '4-daimond-cutter-professional-quality-segcutting', '<p>The <strong>4\" Diamond Cutter – Professional Quality – Segmented Cutting</strong> blade is engineered for superior performance, precision, and durability in demanding cutting applications.&nbsp;<br>Made with high-quality diamond segments, it delivers fast, clean, and accurate cuts through concrete, marble, granite, tiles, and other hard materials. The segmented rim design ensures efficient heat dissipation and debris removal, allowing for continuous heavy-duty use without compromising performance. Lightweight and easy to handle, it offers excellent control and stability for both professional and DIY tasks. Ideal for construction, renovation, and stone fabrication, this cutter combines <strong>professional-grade power, precision, and long-lasting reliability</strong>, ensuring smooth and flawless results every time.</p>', 1, 4, 77, NULL, '4\" Daimond Cutter-Professional Quality-Seg.Cutting', '4\" Daimond Cutter-Professional Quality-Seg.Cutting', '4\" Daimond Cutter-Professional Quality-Seg.Cutting', NULL, NULL, 108.00, 100.00, NULL, 80, NULL, NULL, 'uploads/products/1762684727_4-daimond-cutter-professional-quality-segcutting.jpg', 1, 1, NULL, '2025-11-06 10:16:13', '2025-11-09 10:38:47'),
(29, '4\" Daimond Cutter-Standard Quality-Seg.Cutting', '4-daimond-cutter-standard-quality-segcutting', '<p>The <strong>4\" Diamond Cutter – Standard Quality – Segmented Cutting</strong> blade is a reliable and efficient tool designed for professional-grade cutting tasks.&nbsp;</p><p>Constructed with durable diamond segments, it delivers clean, precise cuts on materials like concrete, marble, granite, tiles, and other hard surfaces.&nbsp;<br>The segmented rim design ensures excellent heat dissipation and debris removal, reducing friction and prolonging the blade’s life. Lightweight and easy to handle, it provides stability and control, making it suitable for both professional and DIY projects. Perfect for construction, renovation, and stonework, this cutter combines <strong>efficiency, precision, and long-lasting performance</strong> in a compact and versatile package.</p>', 1, 4, 77, NULL, '4\" Daimond Cutter-Standard Quality-Seg.Cutting', '4\" Daimond Cutter-Standard Quality-Seg.Cutting', '4\" Daimond Cutter-Standard Quality-Seg.Cutting', NULL, NULL, 94.00, 90.00, NULL, 39735, NULL, NULL, 'uploads/products/1762684648_4-daimond-cutter-standard-quality-segcutting.jpg', 1, 1, NULL, '2025-11-06 10:16:13', '2025-11-09 10:37:28'),
(30, '4\" Diamond Cup Grinding Wheel (Double)', '4-diamond-cup-grinding-wheel-double', '<p>The <strong>4\" Diamond Cup Grinding Wheel (Double)</strong> is a professional-grade tool designed for fast and efficient grinding on hard surfaces.&nbsp;<br><br>Featuring double-row diamond segments, it provides superior material removal and smooth, even finishes on concrete, granite, marble, and stone. Its cup-shaped design ensures excellent control, stability, and reduced vibration during operation, allowing for precise and consistent results. Built for durability, the double-segment construction enhances heat dissipation and extends the wheel’s lifespan, even under heavy-duty use. Ideal for surface leveling, coating removal, and edge grinding, this 4\" diamond cup wheel delivers <strong>power, precision, and long-lasting performance</strong> for both professional and industrial applications.</p>', 1, 4, 77, NULL, '4\" Diamond Cup Grinding Wheel (Double)', '4\" Diamond Cup Grinding Wheel (Double)', '4\" Diamond Cup Grinding Wheel (Double)', NULL, NULL, 382.00, 350.00, NULL, 400, NULL, NULL, 'uploads/products/1762684373_4-diamond-cup-grinding-wheel-double.jpg', 1, 1, NULL, '2025-11-06 10:16:13', '2025-11-09 10:32:53'),
(31, '4\" Grinding Wheel', '4-grinding-wheel', '<p>The <strong>4\" Grinding Wheel</strong> is a versatile and durable tool designed for efficient material removal and surface finishing.<br><br>&nbsp;Made with high-quality abrasive materials, it provides consistent performance on metal, steel, and other hard surfaces. Its compact size allows for precision grinding in tight spaces while maintaining stability and control during use. Ideal for sharpening, deburring, rust removal, and shaping tasks, it is suitable for both professional and DIY applications. Built for long-lasting performance, the 4\" grinding wheel ensures smooth, reliable operation, making it an essential tool for workshops, construction, and metalworking projects.</p>', 1, 4, 77, NULL, '4\" Grinding Wheel', '4\" Grinding Wheel', '4\" Grinding Wheel', NULL, NULL, 120.00, 100.00, NULL, 710, NULL, NULL, 'uploads/products/1762684298_4-grinding-wheel.jpg', 1, 1, NULL, '2025-11-06 10:16:13', '2025-11-09 10:31:38'),
(32, '4\'\' Cutting Disc- Thin Turbo Blade', '4-cutting-disc-thin-turbo-blade', '<p>The <strong>4\" Cutting Disc – Thin Turbo Blade</strong> is a high-performance cutting tool designed for fast, precise, and efficient material removal. Engineered with premium abrasive and turbo-edge technology, it delivers clean cuts with minimal effort on metal, stainless steel, tiles, and other hard surfaces. Its thin design allows for high-speed cutting while reducing material wastage and ensuring smooth, accurate results.&nbsp;<br><br>Lightweight and easy to handle, the blade provides excellent control and stability during operation. Ideal for both professional and DIY applications, it is perfect for cutting, shaping, and trimming tasks. Built for durability and long-lasting performance, this thin turbo blade ensures consistent results even during intensive use. With the <strong>4\" Cutting Disc – Thin Turbo Blade</strong>, every cut is fast, precise, and reliable, making it a must-have tool in any workshop or construction toolkit.</p>', 1, 4, 77, NULL, '4\'\' Cutting Disc- Thin Turbo Blade', '4\'\' Cutting Disc- Thin Turbo Blade', '4\'\' Cutting Disc- Thin Turbo Blade', NULL, NULL, 150.00, 100.00, NULL, 6826, NULL, NULL, 'uploads/products/1762682979_4-cutting-disc-thin-turbo-blade.jpg', 1, 1, NULL, '2025-11-06 10:16:13', '2025-11-09 10:09:39'),
(33, '4\'\' Daimond Cutter-Standard Quality-Plain Saw', '4-daimond-cutter-standard-quality-plain-saw', '<p>The <strong>4\" Diamond Cutter – Standard Quality – Plain Saw</strong> is a reliable and efficient cutting blade designed for smooth and precise cuts on a variety of materials.</p><p>Constructed with durable diamond particles, it provides consistent performance on concrete, marble, granite, tiles, and other hard surfaces.</p><p>The plain rim design ensures a continuous edge, delivering clean cuts with minimal chipping, making it ideal for fine finishing work.</p><p>Lightweight and easy to handle, this cutter offers excellent control and stability for both professional and DIY tasks.</p><p>Its sturdy construction ensures long-lasting durability and maintains sharpness even during extended use.</p><p>Perfect for small-scale construction, renovation, and craft projects, it combines efficiency and precision.</p><p>The blade is suitable for both dry and wet cutting, enhancing its versatility across different applications.</p><p>With the <strong>4\" Diamond Cutter – Plain Saw</strong>, users can achieve smooth, accurate, and professional-quality results every time.</p><p>It is an essential tool for anyone seeking <strong>reliable performance and precise cutting</strong> in a compact size.</p>', 2, 3, 2, 71, '4\'\' Daimond Cutter-Standard Quality-Plain Saw', '4\'\' Daimond Cutter-Standard Quality-Plain Saw', '4\'\' Daimond Cutter-Standard Quality-Plain Saw', NULL, NULL, 450.00, 440.00, NULL, 24429, NULL, NULL, 'uploads/products/1762682405_4-daimond-cutter-standard-quality-plain-saw.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 10:00:05'),
(34, '4.5\" Daimond Cutter (Multi Prof.Quality)', '45-daimond-cutter-multi-profquality', '<p>The <strong>4.5\" Diamond Cutter (Multi Professional Quality)</strong> is a compact yet powerful cutting blade designed for precision and efficiency in a variety of professional applications. Crafted with high-grade diamond segments, it ensures clean, smooth, and accurate cuts through tough materials such as concrete, marble, granite, tiles, and stone. Its multi-purpose design makes it suitable for both dry and wet cutting, providing versatility for different work environments. The segmented rim allows for excellent heat dissipation and reduced friction, extending the blade’s lifespan and maintaining cutting performance over time.<br><br>&nbsp;Lightweight and easy to handle, it offers superior control and stability, minimizing user fatigue during prolonged use. Engineered for durability, this diamond cutter withstands heavy-duty operations without chipping or breaking. Its fine edge design ensures minimal material wastage and precise results, even in intricate cutting tasks. Ideal for construction sites, renovation projects, and stone fabrication, it meets the demands of professional craftsmen.<br><br>&nbsp;Combining speed, power, and long-lasting reliability, it delivers exceptional value for professionals and serious DIY enthusiasts alike. With the <strong>4.5\" Diamond Cutter</strong>, every cut is smooth, accurate, and hassle-free, making it a must-have tool for precision cutting work.</p>', 2, 3, 2, 65, '4.5\" Daimond Cutter (Multi Prof.Quality)', '4.5\" Daimond Cutter (Multi Prof.Quality)', '4.5\" Daimond Cutter (Multi Prof.Quality)', NULL, NULL, 115.00, 110.00, NULL, 7212, NULL, NULL, 'uploads/products/1762682257_45-daimond-cutter-multi-profquality.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:57:37'),
(35, '5\" Daimond Cup Grinding Wheel-Single', '5-daimond-cup-grinding-wheel-single', '<p>The <strong>5\" Diamond Cup Grinding Wheel – Single</strong> is a high-quality tool designed for efficient grinding and surface preparation on hard materials. Made with durable diamond segments, it delivers fast and precise grinding on concrete, granite, marble, and stone surfaces. Its cup-shaped design ensures smooth operation, excellent control, and reduced vibration for consistent results. Built for longevity, it effectively dissipates heat and withstands heavy-duty use. Ideal for professionals and industrial applications, this grinding wheel provides <strong>power, precision, and reliable performance</strong> in every task.</p>', 2, 3, 1, 3, '5\" Daimond Cup Grinding Wheel-Single', '5\" Daimond Cup Grinding Wheel-Single', '5\" Daimond Cup Grinding Wheel-Single', NULL, NULL, 330.00, 320.00, NULL, 1177, NULL, NULL, 'uploads/products/1762682093_5-daimond-cup-grinding-wheel-single.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:54:53'),
(36, '5\" Daimond Cutter -Platinum Quality-Seg Cutting', '5-daimond-cutter-platinum-quality-seg-cutting', '<p>The <strong>5\" Diamond Cutter – Platinum Quality – Segmented Cutting</strong> blade is a top-tier professional tool engineered for unmatched durability and cutting performance. Manufactured with premium-grade diamond segments, it delivers powerful, precise, and efficient cuts through concrete, stone, granite, marble, and tiles. The segmented rim design ensures superior heat dissipation and debris removal, allowing continuous heavy-duty operation without compromising sharpness or speed. Built for professionals who demand the best, this blade combines cutting-edge technology with long-lasting strength. Offering <strong>platinum-level precision, power, and reliability</strong>, it guarantees smooth, fast, and flawless results in every project.</p>', 2, 3, 1, 3, '5\" Daimond Cutter -Platinum Quality-Seg Cutting', '5\" Daimond Cutter -Platinum Quality-Seg Cutting', '5\" Daimond Cutter -Platinum Quality-Seg Cutting', NULL, NULL, 750.00, 560.00, NULL, 467, NULL, NULL, 'uploads/products/1762681828_5-daimond-cutter-platinum-quality-seg-cutting.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:50:28'),
(37, '5\" Daimond Cutter -Professional Quality-Plain Saw', '5-daimond-cutter-professional-quality-plain-saw', '<p>The <strong>5\" Diamond Cutter – Professional Quality – Plain Saw</strong> is a premium-grade cutting blade designed for smooth, precise, and fast cutting performance.&nbsp;</p><p>Built with high-quality industrial diamond particles, it ensures clean and accurate cuts on materials such as marble, granite, concrete, and ceramic tiles. The plain rim design provides a continuous edge for ultra-smooth cutting with minimal chipping, making it ideal for fine finishing and delicate work. Engineered for long life and stable operation, it maintains consistent sharpness even under extended use. Perfect for professionals seeking <strong>precision, durability, and flawless cutting results</strong>, this blade delivers exceptional performance on every job.</p>', 2, 3, 2, 74, '5\" Daimond Cutter -Professional Quality-Plain Saw', '5\" Daimond Cutter -Professional Quality-Plain Saw', '5\" Daimond Cutter -Professional Quality-Plain Saw', NULL, NULL, 133.00, 130.00, NULL, 37585, NULL, NULL, 'uploads/products/1762681675_5-daimond-cutter-professional-quality-plain-saw.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:47:55'),
(38, '5\" Daimond Cutter-Professional Quality-Seg.Cutting', '5-daimond-cutter-professional-quality-segcutting', '<p>The <strong>5\" Diamond Cutter – Professional Quality – Segmented Cutting</strong> blade is engineered for high precision, speed, and durability in tough cutting applications.&nbsp;<br>Constructed with premium diamond segments, it delivers clean, smooth cuts on concrete, marble, granite, tiles, and other hard materials.&nbsp;<br><br>The segmented rim design ensures excellent cooling and debris removal, reducing friction and extending the blade’s lifespan. Perfect for professional use in construction, renovation, and stonework, it offers stable performance and minimal chipping even under heavy loads. Combining <strong>power, precision, and long-lasting quality</strong>, this cutter guarantees outstanding results for every project.</p>', 2, 3, 2, 72, '5\" Daimond Cutter-Professional Quality-Seg.Cutting', '5\" Daimond Cutter-Professional Quality-Seg.Cutting', '5\" Daimond Cutter-Professional Quality-Seg.Cutting', NULL, NULL, 150.00, 145.00, NULL, 600, NULL, NULL, 'uploads/products/1762681589_5-daimond-cutter-professional-quality-segcutting.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:46:29'),
(39, '5\" Diamond Cup Grinding Wheel', '5-diamond-cup-grinding-wheel', '<p>The <strong>5\" Diamond Cup Grinding Wheel</strong> is a professional-grade tool designed for fast, efficient grinding and surface preparation. Made with high-quality diamond segments, it delivers exceptional performance on concrete, stone, granite, marble, and other hard materials. Its balanced cup design ensures smooth operation with reduced vibration, allowing for precise control and a fine surface finish.&nbsp;<br><br>The wheel’s durable construction and excellent heat dissipation extend its life even under continuous heavy use. Ideal for surface leveling, coating removal, and edge grinding, this diamond cup wheel offers <strong>power, precision, and long-lasting reliability</strong> for both professionals and industrial users.</p>', 2, 3, 2, 76, '5\" Diamond Cup Grinding Wheel', '5\" Diamond Cup Grinding Wheel', '5\" Diamond Cup Grinding Wheel', NULL, NULL, 550.00, 540.00, NULL, 250, NULL, NULL, 'uploads/products/1762681468_5-diamond-cup-grinding-wheel.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:44:28'),
(40, '7\" Daimond Cutter( Super Quality)', '7-daimond-cutter-super-quality', '<p>The <strong>7\" Diamond Cutter (Super Quality)</strong> is a high-performance cutting blade engineered for precision, speed, and durability. Made with ultra-sharp, industrial-grade diamond segments,<br>It delivers smooth and efficient cutting through concrete, marble, granite, tiles, and other hard surfaces. Its robust construction ensures long-lasting strength, while the optimized segment design enhances cooling and minimizes friction for extended blade life.&nbsp;<br><br>Perfect for both professional and industrial use, this cutter provides clean, chip-free edges with every cut. Built for <strong>superior performance and reliability</strong>, it’s the perfect choice for those who demand top-quality results.</p>', 2, 3, 1, 21, '7\" Daimond Cutter( Super Quality)', '7\" Daimond Cutter( Super Quality)', '7\" Daimond Cutter( Super Quality)', NULL, NULL, 285.00, 250.00, NULL, 103, NULL, NULL, 'uploads/products/1762681345_7-daimond-cutter-super-quality.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:42:25'),
(41, '7\'\' Dimond Cutter Seg Cutting Proffessional Quality', '7-dimond-cutter-seg-cutting-proffessional-quality', '<p>The <strong>7\" Diamond Cutter Seg Cutting Professional Quality</strong> blade is crafted for superior performance and long-lasting precision in demanding cutting applications.&nbsp;<br>Designed with premium-grade diamond segments, it effortlessly cuts through materials such as concrete, marble, granite, and tile with clean, smooth edges.&nbsp;<br><br>The segmented rim ensures effective heat dissipation and reduced blade wear, allowing for continuous heavy-duty use without compromising efficiency.&nbsp;<br>Its sturdy construction provides stability and accuracy, making it ideal for both professional contractors and workshop use.&nbsp;<br>Combining <strong>power, durability, and precision</strong>, this diamond cutter guarantees fast, reliable, and professional-quality results every time.</p>', 2, 3, 1, 24, '7\'\' Dimond Cutter Seg Cutting Proffessional Quality', '7\'\' Dimond Cutter Seg Cutting Proffessional Quality', '7\'\' Dimond Cutter Seg Cutting Proffessional Quality', NULL, NULL, 650.00, 550.00, NULL, 100, NULL, NULL, 'uploads/products/1762679602_7-dimond-cutter-seg-cutting-proffessional-quality.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:38:14'),
(42, '7\' Grinding Wheel (180x6mmx22mm)', '7-grinding-wheel-180x6mmx22mm', '<p>The <strong>7\" Grinding Wheel (180x6mmx22mm)</strong> is a heavy-duty industrial-grade tool designed for efficient material removal and surface preparation. Built with high-quality abrasive grains, it delivers fast grinding performance on metal, steel, and other hard surfaces. Its balanced design ensures smooth operation with minimal vibration, providing greater control and accuracy during use.&nbsp;</p><p>The 6mm thickness offers excellent durability for prolonged tasks, while the 22mm arbor fits most standard angle grinders. Ideal for weld cleanup, rust removal, and general metal fabrication, this grinding wheel combines <strong>strength, precision, and reliability</strong> for professional results.</p>', 2, 3, 1, 25, '7\' Grinding Wheel (180x6mmx22mm)', '7\' Grinding Wheel (180x6mmx22mm)', '7\' Grinding Wheel (180x6mmx22mm)', NULL, NULL, 500.00, 400.00, NULL, 177, NULL, NULL, 'uploads/products/1762679503_7-grinding-wheel-180x6mmx22mm.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:37:28'),
(43, '9\" Dimond Cutter Seg Cutting Proffessional Quality', '9-dimond-cutter-seg-cutting-proffessional-quality', '<p>The <strong>“9” Diamond Cutter Seg Cutting Professional Quality</strong> blade is designed for precision, durability, and performance that meets professional standards. Made with high-grade industrial diamonds, it ensures clean and accurate cuts through tough materials like granite, marble, concrete, and tiles. Its segmented rim design allows for efficient cooling and reduced friction, extending the blade’s life even under continuous heavy-duty use.&nbsp;</p><p>&nbsp;</p><p>Whether used in construction, renovation, or stone fabrication, this diamond cutter offers exceptional speed and stability, minimizing chipping and ensuring a smooth finish. Perfect for both professionals and serious DIY users, it combines <strong>power, precision, and long-lasting reliability</strong> in every cut.</p>', 2, 3, 1, 25, '9\" Dimond Cutter Seg Cutting Proffessional Quality', '9\" Dimond Cutter Seg Cutting Proffessional Quality9\" Dimond Cutter Seg Cutting Proffessional Quality9\" Dimond Cutter Seg Cutting Proffessional Quality', '9\" Dimond Cutter Seg Cutting Proffessional Quality', NULL, NULL, 390.00, 290.00, NULL, 1873, NULL, NULL, 'uploads/products/1762466648_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-09 09:37:00');
INSERT INTO `product` (`id`, `name`, `slug`, `description_full`, `purchase_order_id`, `supplier_id`, `categoryId`, `subcategoryId`, `meta_title`, `meta_description`, `meta_keyword`, `sku`, `cash_dev_status`, `price`, `discount_price`, `unit`, `stock_qty`, `stock_mini_qty`, `shipping_days`, `thumnail_img`, `first_update`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(44, 'Metal Cutting Disk', 'metal-cutting-disk', '<p><strong>Vikars Premium Foldable Drying Rack – Space-Saving &amp; Heavy-Duty</strong></p><p>The <strong>Vikars Foldable Drying Rack</strong> is designed to make laundry simple, efficient, and space-friendly. Built with high-grade aluminum and stainless steel, it’s completely rust-proof and safe for delicate clothes. With a 30kg load capacity, you can dry everything from everyday wear to heavy towels and bedsheets with ease.</p><p>Its smart design lets you hook it onto balconies and window grills without tools or mount it permanently on the wall for a fixed solution. Perfect for apartments and small homes, the foldable frame saves space when not in use and allows faster drying thanks to open-air airflow.</p><p>&nbsp;</p><p><strong>Key Features:</strong></p><ol><li>✅ <strong>Premium Build:</strong> High-grade aluminum bars &amp; 100% stainless steel</li><li>✅ <strong>Rust-Proof &amp; Long-Lasting:</strong> Safe for delicate clothes</li><li>✅ <strong>Heavy Load Capacity:</strong> Holds up to 30kg of laundry</li><li>✅ <strong>Easy Installation:</strong> Hook on grills or drill to walls</li><li>✅ <strong>Space-Saving:</strong> Compact &amp; foldable design</li><li>✅ <strong>Versatile Use:</strong> Suitable for indoor &amp; outdoor drying</li><li>✅ <strong>Quick Drying:</strong> Maximizes airflow for faster results</li></ol><p>&nbsp;</p><p>Upgrade your laundry routine with a drying rack that combines durability, convenience, and style—all in one.</p><p>&nbsp;</p>', 2, 3, 2, 27, '333', 'hh', 'hh', NULL, NULL, 150.00, 170.00, NULL, 800, NULL, NULL, 'uploads/products/1762453039_metal-cutting-disk.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-06 20:49:55'),
(45, 'SF-065-Rubber Roller-7\"', 'sf-065-rubber-roller-7', NULL, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-11-09 17:59:34', '2025-11-09 17:59:34'),
(46, 'SF-008-Rubber Roller-7\"', 'sf-008-rubber-roller-7', NULL, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300.00, NULL, NULL, 150, NULL, NULL, NULL, 0, 0, NULL, '2025-11-09 17:59:34', '2025-11-09 17:59:34'),
(47, 'SF-9501(A) Decoration Machine-7\"', 'sf-9501a-decoration-machine-7', NULL, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200.00, NULL, NULL, 150, NULL, NULL, NULL, 0, 0, NULL, '2025-11-09 17:59:34', '2025-11-09 17:59:34'),
(48, 'GR-03-Soft Pattern Rubber-6\"', 'gr-03-soft-pattern-rubber-6', NULL, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 500.00, NULL, NULL, 150, NULL, NULL, NULL, 0, 0, NULL, '2025-11-09 17:59:34', '2025-11-09 17:59:34'),
(49, 'GR-86-Soft Pattern Rubber-6\"', 'gr-86-soft-pattern-rubber-6', NULL, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400.00, NULL, NULL, 150, NULL, NULL, NULL, 0, 0, NULL, '2025-11-09 17:59:34', '2025-11-09 17:59:34'),
(50, 'GR-78-Soft Pattern Rubber-6\"', 'gr-78-soft-pattern-rubber-6', NULL, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 600.00, NULL, NULL, 150, NULL, NULL, NULL, 0, 0, NULL, '2025-11-09 17:59:34', '2025-11-09 17:59:34'),
(51, 'GR-126-Soft Pattern Rubber-6\"', 'gr-126-soft-pattern-rubber-6', NULL, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400.00, NULL, NULL, 150, NULL, NULL, NULL, 0, 0, NULL, '2025-11-09 17:59:34', '2025-11-09 17:59:34'),
(52, 'GR-33-Soft Pattern Rubber-6\"', 'gr-33-soft-pattern-rubber-6', '<p>The <strong>GR-127 Soft Pattern Rubber – 6\"</strong> is a high-quality tool designed for precise polishing, finishing, and decorative patterning on a variety of surfaces. Made from soft yet durable rubber, it provides excellent flexibility, easily adapting to curves and contours for consistent and smooth application. Its 6-inch size allows for efficient coverage while maintaining accuracy and control during use. Ideal for professional workshops, artisans, and DIY enthusiasts, the GR-127 Soft Pattern Rubber ensures detailed, uniform, and high-quality results. Combining <strong>durability, precision, and ease of handling</strong>, it is an essential tool for all finishing and decorative tasks.</p>', 8, 1, 82, NULL, 'GR-33-Soft Pattern Rubber-6\"', 'GR-33-Soft Pattern Rubber-6\"', 'GR-33-Soft Pattern Rubber-6\"', NULL, NULL, 150.00, 100.00, NULL, 200, NULL, NULL, 'uploads/products/1762696432_gr-33-soft-pattern-rubber-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 13:53:52'),
(53, 'GR-09-Soft Pattern Rubber-6\"', 'gr-09-soft-pattern-rubber-6', '<p>The <strong>GR-127 Soft Pattern Rubber – 6\"</strong> is a high-quality tool designed for precise polishing, finishing, and decorative patterning on a variety of surfaces. Made from soft yet durable rubber, it provides excellent flexibility, easily adapting to curves and contours for consistent and smooth application. Its 6-inch size allows for efficient coverage while maintaining accuracy and control during use. Ideal for professional workshops, artisans, and DIY enthusiasts, the GR-127 Soft Pattern Rubber ensures detailed, uniform, and high-quality results. Combining <strong>durability, precision, and ease of handling</strong>, it is an essential tool for all finishing and decorative tasks.</p>', 8, 1, 82, NULL, 'GR-09-Soft Pattern Rubber-6\"', 'GR-09-Soft Pattern Rubber-6\"', 'GR-09-Soft Pattern Rubber-6\"', NULL, NULL, 30.00, 35.00, NULL, 200, NULL, NULL, 'uploads/products/1762694916_gr-09-soft-pattern-rubber-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 13:28:36'),
(54, 'GR-127-Soft Pattern Rubber-6\"', 'gr-127-soft-pattern-rubber-6', '<p>The <strong>GR-127 Soft Pattern Rubber – 6\"</strong> is a high-quality tool designed for precise polishing, finishing, and decorative patterning on a variety of surfaces. Made from soft yet durable rubber, it provides excellent flexibility, easily adapting to curves and contours for consistent and smooth application. Its 6-inch size allows for efficient coverage while maintaining accuracy and control during use. Ideal for professional workshops, artisans, and DIY enthusiasts, the GR-127 Soft Pattern Rubber ensures detailed, uniform, and high-quality results. Combining <strong>durability, precision, and ease of handling</strong>, it is an essential tool for all finishing and decorative tasks.</p>', 8, 1, 82, NULL, 'GR-127-Soft Pattern Rubber-6\"', 'GR-127-Soft Pattern Rubber-6\"', 'GR-127-Soft Pattern Rubber-6\"', NULL, NULL, 40.00, 30.00, NULL, 200, NULL, NULL, 'uploads/products/1762694829_gr-127-soft-pattern-rubber-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 13:27:09'),
(55, 'GR-35-Soft Pattern Rubber-6\"', 'gr-35-soft-pattern-rubber-6', '<p>The <strong>Rubber – 6\"</strong> is a versatile and durable tool designed for polishing, finishing, and smoothing surfaces across a variety of materials. Made from high-quality rubber, it provides excellent flexibility, allowing it to conform to curves and contours for consistent and even application. Its 6-inch size ensures efficient coverage while maintaining control and precision during use. Ideal for workshops, DIY projects, and professional applications, this rubber tool helps achieve smooth, polished, and uniform results. Combining <strong>durability, precision, and ease of handling</strong>, the 6\" rubber is an essential tool for finishing and decorative tasks.</p>', 8, 1, 82, NULL, 'GR-35-Soft Pattern Rubber-6\"', 'GR-35-Soft Pattern Rubber-6\"', 'GR-35-Soft Pattern Rubber-6\"', NULL, NULL, 60.00, 50.00, NULL, 200, NULL, NULL, 'uploads/products/1762694716_gr-35-soft-pattern-rubber-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 13:25:16'),
(56, 'GR-46-Soft Pattern Rubber-6\"', 'gr-46-soft-pattern-rubber-6', '', 8, 1, 82, NULL, 'GR-46-Soft Pattern Rubber-6\"', 'GR-46-Soft Pattern Rubber-6\"', 'GR-46-Soft Pattern Rubber-6\"', NULL, NULL, 400.00, 350.00, NULL, 200, NULL, NULL, 'uploads/products/1762694490_gr-46-soft-pattern-rubber-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 13:21:30'),
(57, 'GR-82-Soft Pattern Rubber-6\"', 'gr-82-soft-pattern-rubber-6', '<p>The <strong>GR-82 Soft Pattern Rubber – 6\"</strong> is a versatile and durable tool designed for precise surface finishing, polishing, and decorative patterning. Made from high-quality soft rubber, it provides excellent flexibility and adapts easily to curves and contours, ensuring uniform application on materials such as wood, metal, and plastic. Its 6-inch size allows for efficient coverage while maintaining control and accuracy during use. Ideal for professional workshops, artisans, and DIY enthusiasts, the GR-82 Soft Pattern Rubber delivers smooth, consistent, and detailed results. Combining <strong>precision, durability, and ease of handling</strong>, it is an essential tool for all decorative and finishing tasks.</p>', 8, 1, 82, NULL, 'GR-82-Soft Pattern Rubber-6\"', 'GR-82-Soft Pattern Rubber-6\"', 'GR-82-Soft Pattern Rubber-6\"', NULL, NULL, 36.00, 20.00, NULL, 200, NULL, NULL, 'uploads/products/1762694285_gr-82-soft-pattern-rubber-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 13:18:05'),
(58, 'GR-70-Soft Pattern Rubber-6\"', 'gr-70-soft-pattern-rubber-6', '<p>The <strong>GR-77 Soft Pattern Rubber – 6\"</strong> is a high-quality tool designed for precise surface finishing, polishing, and patterning tasks. Made from soft yet durable rubber, it provides excellent flexibility and conforms easily to curves and contours, ensuring uniform application on various materials such as wood, metal, and plastic. Its 6-inch size allows for efficient coverage while maintaining control and accuracy during use. Ideal for professional workshops and DIY projects, the GR-77 Soft Pattern Rubber delivers smooth, consistent, and detailed results. Combining <strong>durability, precision, and ease of handling</strong>, it is an essential tool for decorative and finishing applications.</p>', 8, 1, 82, NULL, 'GR-70-Soft Pattern Rubber-6\"', 'GR-70-Soft Pattern Rubber-6\"', 'GR-70-Soft Pattern Rubber-6\"', NULL, NULL, 600.00, 560.00, NULL, 200, NULL, NULL, 'uploads/products/1762690820_gr-70-soft-pattern-rubber-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 12:20:20'),
(59, 'GR-77-Soft Pattern Rubber-6\"', 'gr-77-soft-pattern-rubber-6', '<p>The <strong>GR-77 Soft Pattern Rubber – 6\"</strong> is a high-quality tool designed for precise surface finishing, polishing, and patterning tasks. Made from soft yet durable rubber, it provides excellent flexibility and conforms easily to curves and contours, ensuring uniform application on various materials such as wood, metal, and plastic. Its 6-inch size allows for efficient coverage while maintaining control and accuracy during use. Ideal for professional workshops and DIY projects, the GR-77 Soft Pattern Rubber delivers smooth, consistent, and detailed results. Combining <strong>durability, precision, and ease of handling</strong>, it is an essential tool for decorative and finishing applications.</p>', 8, 1, 82, NULL, 'GR-77-Soft Pattern Rubber-6\"', 'GR-77-Soft Pattern Rubber-6\"', 'GR-77-Soft Pattern Rubber-6\"', NULL, NULL, 45.00, 45.00, NULL, 200, NULL, NULL, 'uploads/products/1762690765_gr-77-soft-pattern-rubber-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 12:19:25'),
(60, 'GR-29-Soft Pattern Rubber-6\"', 'gr-29-soft-pattern-rubber-6', '<p>The <strong>SF-9601-(A) Decoration Machine – 6\"</strong> is a high-performance tool designed for precision surface decoration, polishing, and finishing tasks. Equipped with a 6-inch working surface, it allows for efficient and consistent application on a variety of materials such as wood, metal, and plastic. Built with durable components, the machine ensures long-lasting performance and smooth operation during extended use. Its ergonomic design provides comfort and control, making it easy to handle for detailed decorative work. Ideal for professionals and DIY enthusiasts, the <strong>SF-9601-(A) Decoration Machine – 6\"</strong> delivers <strong>accuracy, efficiency, and superior finishing results</strong> for all decorative projects.</p>', 8, 1, 81, NULL, 'GR-29-Soft Pattern Rubber-6\"', 'GR-29-Soft Pattern Rubber-6\"', 'GR-29-Soft Pattern Rubber-6\"', NULL, NULL, 69.00, 50.00, NULL, 200, NULL, NULL, 'uploads/products/1762690493_gr-29-soft-pattern-rubber-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 12:14:53'),
(61, 'SF-9601-(A) Decoration Machine-6\"', 'sf-9601-a-decoration-machine-6', '<p>The <strong>SF-9601-(A) Decoration Machine – 6\"</strong> is a high-performance tool designed for precision surface decoration, polishing, and finishing tasks. Equipped with a 6-inch working surface, it allows for efficient and consistent application on a variety of materials such as wood, metal, and plastic. Built with durable components, the machine ensures long-lasting performance and smooth operation during extended use. Its ergonomic design provides comfort and control, making it easy to handle for detailed decorative work. Ideal for professionals and DIY enthusiasts, the <strong>SF-9601-(A) Decoration Machine – 6\"</strong> delivers <strong>accuracy, efficiency, and superior finishing results</strong> for all decorative projects.</p>', 8, 1, 81, NULL, 'SF-9601-(A) Decoration Machine-6\"', 'SF-9601-(A) Decoration Machine-6\"', 'SF-9601-(A) Decoration Machine-6\"', NULL, NULL, 700.00, 560.00, NULL, 200, NULL, NULL, 'uploads/products/1762690461_sf-9601-a-decoration-machine-6.jpg', 1, 1, NULL, '2025-11-09 17:59:34', '2025-11-09 12:14:21'),
(62, 'Sponge Kit Aj-01', 'sponge-kit-aj-01', '<p>The <strong>Sponge Kit AJ-01</strong> is a versatile and durable set designed for cleaning, polishing, and finishing a variety of surfaces. It includes high-quality sponges in different shapes and textures, making it ideal for use on metal, wood, plastic, and painted surfaces. The sponges efficiently remove dirt, grease, and minor scratches while delivering a smooth and polished finish. Lightweight and easy to handle, the kit provides comfort and precision for both professional and DIY applications. The <strong>Sponge Kit AJ-01</strong> combines <strong>reliability, efficiency, and long-lasting performance</strong>, making it an essential tool for workshops, garages, and home use.</p>', 7, 1, 81, NULL, 'Sponge Kit Aj-01', 'Sponge Kit Aj-01', 'Sponge Kit Aj-01', NULL, NULL, 290.00, 280.00, NULL, 1, NULL, NULL, 'uploads/products/1762690423_sponge-kit-aj-01.jpg', 1, 1, NULL, '2025-11-09 18:00:08', '2025-11-09 12:13:43'),
(63, 'Sponge Kit Aj-08', 'sponge-kit-aj-08', '<p>The <strong>Sponge Kit AJ-08</strong> is a versatile and reliable tool set designed for cleaning, polishing, and finishing various surfaces. It includes high-quality sponges in multiple shapes and textures, suitable for metal, wood, plastic, and painted surfaces. The sponges efficiently remove dirt, grime, and minor scratches while providing a smooth, polished finish. Lightweight and easy to handle, the kit ensures comfort and precision for both professional and DIY tasks. The <strong>Sponge Kit AJ-08</strong> combines <strong>durability, efficiency, and consistent performance</strong>, making it an essential addition to any workshop, garage, or home toolkit.</p>', 7, 1, 81, NULL, 'Sponge Kit Aj-08', 'Sponge Kit Aj-08', 'Sponge Kit Aj-08', NULL, NULL, 290.00, 260.00, NULL, 1, NULL, NULL, 'uploads/products/1762690350_sponge-kit-aj-08.jpg', 1, 1, NULL, '2025-11-09 18:00:08', '2025-11-09 12:12:30'),
(64, 'Sponge Kit Aj-27', 'sponge-kit-aj-27', '<p>The <strong>Sponge Kit AJ-27</strong> is a practical and versatile tool set designed for cleaning, polishing, and finishing a variety of surfaces. It includes high-quality sponges in different shapes and textures, making it suitable for use on metal, wood, plastic, and painted surfaces. The sponges effectively remove dirt, grease, and minor scratches while leaving a smooth, polished finish. Lightweight and easy to handle, the kit offers precision and comfort for both professional and DIY applications. The <strong>Sponge Kit AJ-27</strong> combines <strong>durability, efficiency, and reliable performance</strong>, making it an essential tool for workshops, garages, and home use.</p>', 7, 1, 81, NULL, 'Sponge Kit Aj-27', 'Sponge Kit Aj-27', 'Sponge Kit Aj-27', NULL, NULL, 290.00, 260.00, NULL, 1, NULL, NULL, 'uploads/products/1762690302_sponge-kit-aj-27.jpg', 1, 1, NULL, '2025-11-09 18:00:08', '2025-11-09 12:11:42'),
(65, 'Sponge Kit Aj-28', 'sponge-kit-aj-28', '<p>The <strong>Sponge Kit AJ-28</strong> is a versatile and durable tool set designed for cleaning, polishing, and finishing various surfaces. It features high-quality sponges in different shapes and textures, making it suitable for metal, wood, plastic, and painted surfaces. The sponges efficiently remove dirt, grease, and minor scratches while leaving a smooth and polished finish. Lightweight and easy to handle, the kit ensures comfort and precision during both professional and DIY tasks. The <strong>Sponge Kit AJ-28</strong> combines <strong>reliability, efficiency, and long-lasting performance</strong>, making it an essential addition to any workshop or home toolkit.</p>', 7, 1, 81, NULL, 'Sponge Kit Aj-28', 'Sponge Kit Aj-28', 'Sponge Kit Aj-28', NULL, NULL, 290.00, 260.00, NULL, 1, NULL, NULL, 'uploads/products/1762690222_sponge-kit-aj-28.jpg', 1, 1, NULL, '2025-11-09 18:00:08', '2025-11-09 12:10:22'),
(66, 'Sponge Kit Aj-29', 'sponge-kit-aj-29', '<p>The <strong>Sponge Kit AJ-29</strong> is a versatile and practical set designed for cleaning, polishing, and finishing tasks on a variety of surfaces. It includes high-quality sponges in multiple shapes and textures, suitable for use on metal, wood, plastic, and painted surfaces. The sponges effectively remove dirt, grime, and minor scratches while delivering a smooth, polished finish. Lightweight and easy to handle, the kit offers comfort and precision for both professional and DIY applications. The <strong>Sponge Kit AJ-29</strong> combines <strong>durability, efficiency, and reliable performance</strong>, making it an essential tool for workshops, garages, and home use.<br><br>The <strong>Sponge Kit AJ-29</strong> is a versatile and practical set designed for cleaning, polishing, and finishing tasks on a variety of surfaces. It includes high-quality sponges in multiple shapes and textures, suitable for use on metal, wood, plastic, and painted surfaces. The sponges effectively remove dirt, grime, and minor scratches while delivering a smooth, polished finish. Lightweight and easy to handle, the kit offers comfort and precision for both professional and DIY applications. The <strong>Sponge Kit AJ-29</strong> combines <strong>durability, efficiency, and reliable performance</strong>, making it an essential tool for workshops, garages, and home use.</p>', 7, 1, 81, NULL, 'Sponge Kit Aj-29', 'Sponge Kit Aj-29', 'Sponge Kit Aj-29', NULL, NULL, 290.00, 285.00, NULL, 1, NULL, NULL, 'uploads/products/1762690167_sponge-kit-aj-29.jpg', 1, 1, NULL, '2025-11-09 18:00:08', '2025-11-09 12:09:27'),
(67, 'Sponge Kit Aj-69', 'sponge-kit-aj-69', '<p>The <strong>Sponge Kit AJ-69</strong> is a versatile and durable tool set designed for cleaning, polishing, and finishing a variety of surfaces. It includes high-quality sponges in different shapes and textures, making it ideal for use on metal, wood, plastic, and painted surfaces. The sponges efficiently remove dirt, grease, and minor scratches while leaving a smooth, polished finish. Lightweight and easy to handle, the kit provides precision and comfort for both professional and DIY applications. The <strong>Sponge Kit AJ-69</strong> combines <strong>reliability, durability, and superior cleaning performance</strong>, making it an essential addition to any workshop or home toolkit.</p>', 7, 1, 81, NULL, 'Sponge Kit Aj-69', '', 'Sponge Kit Aj-69', NULL, NULL, 290.00, 250.00, NULL, 1, NULL, NULL, 'uploads/products/1762690127_sponge-kit-aj-69.jpg', 1, 1, NULL, '2025-11-09 18:00:08', '2025-11-09 12:08:47'),
(68, 'Sponge Kit FL-69', 'sponge-kit-fl-69', '<p>The <strong>Sponge Kit FL-69</strong> is a versatile and practical set designed for cleaning, polishing, and finishing tasks across a variety of surfaces. It includes high-quality sponges of different shapes and textures, making it suitable for metal, wood, plastic, and painted surfaces. The sponges efficiently remove dirt, grime, and minor scratches while providing a smooth, polished finish. Lightweight and easy to handle, the kit offers precision and comfort for both professional and DIY projects. The <strong>Sponge Kit FL-69</strong> combines <strong>durability, efficiency, and reliability</strong>, making it an essential tool for workshops, garages, and home use.</p>', 7, 1, 81, NULL, 'Sponge Kit FL-69', 'Sponge Kit FL-69', 'Sponge Kit FL-69', NULL, NULL, 290.00, 250.00, NULL, 1, NULL, NULL, 'uploads/products/1762690058_sponge-kit-fl-69.jpg', 1, 1, NULL, '2025-11-09 18:00:08', '2025-11-09 12:07:38'),
(69, 'Sponge Kit FL-70', 'sponge-kit-fl-70', '<p>The <strong>Sponge Kit FL-70</strong> is a versatile and practical tool set designed for cleaning, polishing, and finishing tasks in workshops, garages, and household applications. It includes high-quality sponges of various shapes and textures to handle different surfaces and materials effectively. Ideal for metal, wood, plastic, and painted surfaces, the kit ensures efficient removal of dirt, grime, and minor scratches while providing a smooth finish. Lightweight and easy to handle, the sponges offer comfort and precision during use. Perfect for both professional and DIY projects, the <strong>Sponge Kit FL-70</strong> delivers <strong>reliability, durability, and excellent cleaning performance</strong> for a wide range of tasks.</p>', 7, 1, 81, NULL, 'Sponge Kit FL-70', '', '', NULL, NULL, 290.00, 280.00, NULL, 1, NULL, NULL, 'uploads/products/1762689973_sponge-kit-fl-70.jpg', 1, 1, NULL, '2025-11-09 18:00:08', '2025-11-09 12:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribue`
--

CREATE TABLE `product_attribue` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attributeName` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sellingPrice` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_attribue`
--

INSERT INTO `product_attribue` (`id`, `product_id`, `attributeName`, `quantity`, `sellingPrice`, `created_at`, `updated_at`) VALUES
(35, 44, 'asdfasdf', 10, 33.00, '2025-11-07 04:53:46', '2025-11-07 04:53:46'),
(36, 44, 'Test', 33, 700.00, '2025-11-07 04:53:46', '2025-11-07 04:53:46'),
(37, 44, 'Test-4', 50, 600.00, '2025-11-07 04:53:46', '2025-11-07 04:53:46'),
(44, 43, 'Test', 56, 700.00, '2025-11-09 03:37:00', '2025-11-09 03:37:00'),
(45, 43, 'Test-1', 67, 6000.00, '2025-11-09 03:37:00', '2025-11-09 03:37:00'),
(46, 42, '8\'', 100, 400.00, '2025-11-09 03:37:28', '2025-11-09 03:37:28'),
(47, 42, '9\'', 150, 350.00, '2025-11-09 03:37:28', '2025-11-09 03:37:28'),
(48, 41, '10\"', 100, 450.00, '2025-11-09 03:38:14', '2025-11-09 03:38:14'),
(49, 41, '11\"', 150, 350.00, '2025-11-09 03:38:14', '2025-11-09 03:38:14'),
(50, 41, '12\"', 60, 400.00, '2025-11-09 03:38:14', '2025-11-09 03:38:14'),
(51, 41, '13\"', 70, 600.00, '2025-11-09 03:38:14', '2025-11-09 03:38:14'),
(52, 40, '7\"', 100, 450.00, '2025-11-09 03:42:25', '2025-11-09 03:42:25'),
(53, 40, '8\"', 150, 650.00, '2025-11-09 03:42:25', '2025-11-09 03:42:25'),
(54, 40, '10\"', 200, 250.00, '2025-11-09 03:42:25', '2025-11-09 03:42:25'),
(55, 39, '5\" Diamond', 100, 650.00, '2025-11-09 03:44:28', '2025-11-09 03:44:28'),
(56, 39, '6\" Diamond', 150, 750.00, '2025-11-09 03:44:28', '2025-11-09 03:44:28'),
(57, 38, '5\" ', 10, 650.00, '2025-11-09 03:46:29', '2025-11-09 03:46:29'),
(58, 38, '10\" ', 20, 750.00, '2025-11-09 03:46:29', '2025-11-09 03:46:29'),
(59, 38, '15\" ', 30, 630.00, '2025-11-09 03:46:29', '2025-11-09 03:46:29'),
(60, 36, '6\" Daimond Cutter', 10, 560.00, '2025-11-09 03:50:28', '2025-11-09 03:50:28'),
(61, 36, '7\" Daimond Cutter', 20, 570.00, '2025-11-09 03:50:28', '2025-11-09 03:50:28'),
(62, 36, '8\" Daimond Cutter', 30, 565.00, '2025-11-09 03:50:28', '2025-11-09 03:50:28'),
(63, 36, '9\" Daimond Cutter', 40, 650.00, '2025-11-09 03:50:28', '2025-11-09 03:50:28'),
(64, 36, '10\" Daimond Cutter', 50, 700.00, '2025-11-09 03:50:28', '2025-11-09 03:50:28'),
(65, 35, '5\" Daimond Cup', 15, 350.00, '2025-11-09 03:54:53', '2025-11-09 03:54:53'),
(66, 35, '6\" Daimond Cup', 26, 450.00, '2025-11-09 03:54:53', '2025-11-09 03:54:53'),
(67, 35, '7\" Daimond Cup', 30, 456.00, '2025-11-09 03:54:53', '2025-11-09 03:54:53'),
(68, 35, '8\" Daimond Cup', 40, 500.00, '2025-11-09 03:54:53', '2025-11-09 03:54:53'),
(69, 34, '4.5\"', 10, 600.00, '2025-11-09 03:57:37', '2025-11-09 03:57:37'),
(70, 34, '5.5\"', 15, 700.00, '2025-11-09 03:57:37', '2025-11-09 03:57:37'),
(71, 33, '4\'\'', 100, 150.00, '2025-11-09 04:00:05', '2025-11-09 04:00:05'),
(72, 33, '5\'\'', 600, 456.00, '2025-11-09 04:00:05', '2025-11-09 04:00:05'),
(73, 33, '6\'\'', 700, 700.00, '2025-11-09 04:00:05', '2025-11-09 04:00:05'),
(74, 32, '4\'\'', 600, 700.00, '2025-11-09 04:09:39', '2025-11-09 04:09:39'),
(75, 32, '5\'\'', 750, 200.00, '2025-11-09 04:09:39', '2025-11-09 04:09:39'),
(76, 31, '4\"', 100, 500.00, '2025-11-09 04:31:38', '2025-11-09 04:31:38'),
(77, 31, '5\"', 110, 510.00, '2025-11-09 04:31:38', '2025-11-09 04:31:38'),
(78, 31, '6\"', 115, 490.00, '2025-11-09 04:31:38', '2025-11-09 04:31:38'),
(79, 31, '7\"', 120, 300.00, '2025-11-09 04:31:38', '2025-11-09 04:31:38'),
(80, 30, '4\" Diamond Cup ', 10, 120.00, '2025-11-09 04:32:53', '2025-11-09 04:32:53'),
(81, 30, '5\" Diamond Cup ', 20, 150.00, '2025-11-09 04:32:53', '2025-11-09 04:32:53'),
(82, 29, '4\"', 10, 500.00, '2025-11-09 04:37:28', '2025-11-09 04:37:28'),
(83, 29, '5\"', 11, 510.00, '2025-11-09 04:37:28', '2025-11-09 04:37:28'),
(84, 29, '6\"', 12, 560.00, '2025-11-09 04:37:28', '2025-11-09 04:37:28'),
(85, 28, '4\"', 100, 500.00, '2025-11-09 04:38:47', '2025-11-09 04:38:47'),
(86, 28, '5\"', 200, 490.00, '2025-11-09 04:38:48', '2025-11-09 04:38:48'),
(89, 27, '4\" Daimond ', 100, 450.00, '2025-11-09 04:40:01', '2025-11-09 04:40:01'),
(90, 27, '5\" Daimond ', 250, 500.00, '2025-11-09 04:40:01', '2025-11-09 04:40:01'),
(91, 26, '4\" Daimond Cup ', 200, 150.00, '2025-11-09 04:41:07', '2025-11-09 04:41:07'),
(92, 26, '5\" Daimond Cup ', 199, 140.00, '2025-11-09 04:41:07', '2025-11-09 04:41:07'),
(93, 25, '6\"', 100, 150.00, '2025-11-09 04:42:34', '2025-11-09 04:42:34'),
(94, 25, '7\"', 120, 170.00, '2025-11-09 04:42:34', '2025-11-09 04:42:34'),
(95, 24, ' Magnet-09', 100, 500.00, '2025-11-09 04:48:03', '2025-11-09 04:48:03'),
(96, 24, ' Magnet-10', 110, 600.00, '2025-11-09 04:48:03', '2025-11-09 04:48:03'),
(97, 24, ' Magnet-11', 115, 700.00, '2025-11-09 04:48:03', '2025-11-09 04:48:03'),
(98, 23, ' Cutter-10\"', 150, 200.00, '2025-11-09 04:50:08', '2025-11-09 04:50:08'),
(99, 23, ' Cutter-11\"', 200, 250.00, '2025-11-09 04:50:08', '2025-11-09 04:50:08'),
(100, 20, 'Axe (Bir Brand)-1', 100, 200.00, '2025-11-09 04:55:01', '2025-11-09 04:55:01'),
(101, 20, 'Axe (Bir Brand)-2', 150, 250.00, '2025-11-09 04:55:01', '2025-11-09 04:55:01'),
(102, 18, 'Snip-12\"', 100, 100.00, '2025-11-09 05:07:51', '2025-11-09 05:07:51'),
(103, 18, 'Snip-13\"', 120, 110.00, '2025-11-09 05:07:51', '2025-11-09 05:07:51'),
(104, 17, 'Cutter-12\"', 100, 500.00, '2025-11-09 05:09:16', '2025-11-09 05:09:16'),
(105, 17, 'Cutter-13\"', 125, 165.00, '2025-11-09 05:09:16', '2025-11-09 05:09:16'),
(106, 17, 'Cutter-14\"', 200, 200.00, '2025-11-09 05:09:16', '2025-11-09 05:09:16'),
(107, 17, 'Cutter-15\"', 300, 250.00, '2025-11-09 05:09:16', '2025-11-09 05:09:16'),
(108, 16, '120-White', 400, 200.00, '2025-11-09 05:10:37', '2025-11-09 05:10:37'),
(109, 16, '122-White', 450, 250.00, '2025-11-09 05:10:37', '2025-11-09 05:10:37'),
(110, 16, '123-White', 1255, 300.00, '2025-11-09 05:10:37', '2025-11-09 05:10:37'),
(111, 15, 'Cutting Tools -1', 500, 600.00, '2025-11-09 05:12:01', '2025-11-09 05:12:01'),
(112, 15, 'Cutting Tools -2', 600, 750.00, '2025-11-09 05:12:01', '2025-11-09 05:12:01'),
(113, 11, 'Axe-1', 100, 300.00, '2025-11-09 05:16:20', '2025-11-09 05:16:20'),
(114, 11, 'Axe-2', 120, 350.00, '2025-11-09 05:16:20', '2025-11-09 05:16:20'),
(115, 11, 'Axe-3', 150, 500.00, '2025-11-09 05:16:20', '2025-11-09 05:16:20'),
(116, 8, '4 Oz (1/4 LB)', 100, 160.00, '2025-11-09 05:24:50', '2025-11-09 05:24:50'),
(117, 8, '5 Oz (1/4 LB)', 150, 200.00, '2025-11-09 05:24:50', '2025-11-09 05:24:50'),
(118, 7, '15 Oz (1 LB)', 100, 200.00, '2025-11-09 05:39:37', '2025-11-09 05:39:37'),
(119, 7, '16 Oz (1 LB)', 150, 250.00, '2025-11-09 05:39:37', '2025-11-09 05:39:37'),
(122, 3, '(Wooden)-8\'\'', 10, 150.00, '2025-11-09 05:43:16', '2025-11-09 05:43:16'),
(123, 3, '(Wooden)-9\"', 20, 600.00, '2025-11-09 05:43:16', '2025-11-09 05:43:16'),
(124, 2, '10\'\'', 120, 500.00, '2025-11-09 05:44:29', '2025-11-09 05:44:29'),
(125, 2, '11\'\'', 110, 600.00, '2025-11-09 05:44:29', '2025-11-09 05:44:29'),
(126, 2, '12\'\'', 160, 700.00, '2025-11-09 05:44:29', '2025-11-09 05:44:29'),
(130, 68, ' FL-66', 100, 150.00, '2025-11-09 06:07:38', '2025-11-09 06:07:38'),
(131, 68, ' FL-67', 200, 250.00, '2025-11-09 06:07:38', '2025-11-09 06:07:38'),
(132, 68, ' FL-68', 300, 300.00, '2025-11-09 06:07:38', '2025-11-09 06:07:38'),
(133, 67, 'Aj-69', 200, 250.00, '2025-11-09 06:08:47', '2025-11-09 06:08:47'),
(134, 67, 'Aj-67', 300, 350.00, '2025-11-09 06:08:47', '2025-11-09 06:08:47'),
(135, 64, 'Aj-25', 100, 500.00, '2025-11-09 06:11:42', '2025-11-09 06:11:42'),
(136, 64, 'Aj-26', 150, 560.00, '2025-11-09 06:11:42', '2025-11-09 06:11:42'),
(137, 64, 'Aj-27', 160, 750.00, '2025-11-09 06:11:42', '2025-11-09 06:11:42'),
(140, 59, 'Rubber-5\"', 100, 200.00, '2025-11-09 06:19:25', '2025-11-09 06:19:25'),
(141, 59, 'Rubber-6\"', 150, 250.00, '2025-11-09 06:19:25', '2025-11-09 06:19:25'),
(142, 59, 'Rubber-7\"', 160, 260.00, '2025-11-09 06:19:25', '2025-11-09 06:19:25'),
(145, 56, ' Rubber-5\"', 200, 300.00, '2025-11-09 07:21:30', '2025-11-09 07:21:30'),
(146, 56, ' Rubber-6\"', 350, 450.00, '2025-11-09 07:21:30', '2025-11-09 07:21:30'),
(147, 55, 'Rubber-3\"', 250, 450.00, '2025-11-09 07:25:16', '2025-11-09 07:25:16'),
(148, 55, 'Rubber-4\"', 300, 600.00, '2025-11-09 07:25:16', '2025-11-09 07:25:16'),
(149, 53, '5\"', 100, 300.00, '2025-11-09 07:28:36', '2025-11-09 07:28:36'),
(150, 53, '6\"', 150, 350.00, '2025-11-09 07:28:36', '2025-11-09 07:28:36'),
(151, 53, '7\"', 200, 350.00, '2025-11-09 07:28:36', '2025-11-09 07:28:36'),
(152, 52, 'Rubber-5\"', 10, 100.00, '2025-11-09 07:53:52', '2025-11-09 07:53:52'),
(153, 52, 'Rubber-6\"', 20, 200.00, '2025-11-09 07:53:52', '2025-11-09 07:53:52'),
(154, 52, 'Rubber-7\"', 30, 250.00, '2025-11-09 07:53:52', '2025-11-09 07:53:52'),
(155, 69, 'FL-80', 100, 400.00, '2025-11-23 09:13:59', '2025-11-23 09:13:59'),
(156, 69, 'FL-90', 800, 50.00, '2025-11-23 09:13:59', '2025-11-23 09:13:59'),
(157, 69, 'FL-100', 120, 60.00, '2025-11-23 09:13:59', '2025-11-23 09:13:59'),
(158, 62, ' Aj-01', 200, 350.00, '2025-11-23 12:22:41', '2025-11-23 12:22:41'),
(159, 62, ' Aj-02', 250, 450.00, '2025-11-23 12:22:41', '2025-11-23 12:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_img_history`
--

CREATE TABLE `product_img_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `gallery_image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_img_history`
--

INSERT INTO `product_img_history` (`id`, `product_id`, `gallery_image`, `created_at`, `updated_at`) VALUES
(1, 44, 'uploads/product_gallery/1762458619_690cfbfb89022_metal-cutting-disk.jpg', '2025-11-06 19:50:19', '2025-11-06 19:50:19'),
(3, 44, 'uploads/product_gallery/1762458764_690cfc8c79cd3_metal-cutting-disk.jpg', '2025-11-06 19:52:44', '2025-11-06 19:52:44'),
(4, 44, 'uploads/product_gallery/1762458764_690cfc8c79ec8_metal-cutting-disk.jpg', '2025-11-06 19:52:44', '2025-11-06 19:52:44'),
(5, 43, 'uploads/product_gallery/1762466648_690d1b58e0b78_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', '2025-11-06 22:04:08', '2025-11-06 22:04:08'),
(6, 43, 'uploads/product_gallery/1762466648_690d1b58e0d4d_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', '2025-11-06 22:04:08', '2025-11-06 22:04:08'),
(7, 43, 'uploads/product_gallery/1762466648_690d1b58e0e5c_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', '2025-11-06 22:04:08', '2025-11-06 22:04:08'),
(8, 43, 'uploads/product_gallery/1762466648_690d1b58e0f5b_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', '2025-11-06 22:04:08', '2025-11-06 22:04:08'),
(9, 42, 'uploads/product_gallery/1762679503_69105acf483aa_7-grinding-wheel-180x6mmx22mm.jpg', '2025-11-09 09:11:43', '2025-11-09 09:11:43'),
(10, 42, 'uploads/product_gallery/1762679503_69105acf485d1_7-grinding-wheel-180x6mmx22mm.jpg', '2025-11-09 09:11:43', '2025-11-09 09:11:43'),
(11, 41, 'uploads/product_gallery/1762679602_69105b32563b2_7-dimond-cutter-seg-cutting-proffessional-quality.jpg', '2025-11-09 09:13:22', '2025-11-09 09:13:22'),
(12, 41, 'uploads/product_gallery/1762679602_69105b325658d_7-dimond-cutter-seg-cutting-proffessional-quality.jpg', '2025-11-09 09:13:22', '2025-11-09 09:13:22'),
(13, 40, 'uploads/product_gallery/1762681345_691062012c513_7-daimond-cutter-super-quality.jpg', '2025-11-09 09:42:25', '2025-11-09 09:42:25'),
(14, 40, 'uploads/product_gallery/1762681345_691062012c72d_7-daimond-cutter-super-quality.jpg', '2025-11-09 09:42:25', '2025-11-09 09:42:25'),
(15, 39, 'uploads/product_gallery/1762681468_6910627c66342_5-diamond-cup-grinding-wheel.jpg', '2025-11-09 09:44:28', '2025-11-09 09:44:28'),
(16, 39, 'uploads/product_gallery/1762681468_6910627c66570_5-diamond-cup-grinding-wheel.jpg', '2025-11-09 09:44:28', '2025-11-09 09:44:28'),
(17, 38, 'uploads/product_gallery/1762681589_691062f544e10_5-daimond-cutter-professional-quality-segcutting.jpg', '2025-11-09 09:46:29', '2025-11-09 09:46:29'),
(18, 38, 'uploads/product_gallery/1762681589_691062f545023_5-daimond-cutter-professional-quality-segcutting.jpg', '2025-11-09 09:46:29', '2025-11-09 09:46:29'),
(19, 37, 'uploads/product_gallery/1762681675_6910634b962c0_5-daimond-cutter-professional-quality-plain-saw.jpg', '2025-11-09 09:47:55', '2025-11-09 09:47:55'),
(20, 37, 'uploads/product_gallery/1762681675_6910634b96441_5-daimond-cutter-professional-quality-plain-saw.jpg', '2025-11-09 09:47:55', '2025-11-09 09:47:55'),
(21, 36, 'uploads/product_gallery/1762681828_691063e4a9d2f_5-daimond-cutter-platinum-quality-seg-cutting.jpg', '2025-11-09 09:50:28', '2025-11-09 09:50:28'),
(22, 36, 'uploads/product_gallery/1762681828_691063e4aa012_5-daimond-cutter-platinum-quality-seg-cutting.jpg', '2025-11-09 09:50:28', '2025-11-09 09:50:28'),
(23, 35, 'uploads/product_gallery/1762682093_691064ed6a2f0_5-daimond-cup-grinding-wheel-single.jpg', '2025-11-09 09:54:53', '2025-11-09 09:54:53'),
(24, 35, 'uploads/product_gallery/1762682093_691064ed6a4ef_5-daimond-cup-grinding-wheel-single.jpg', '2025-11-09 09:54:53', '2025-11-09 09:54:53'),
(25, 35, 'uploads/product_gallery/1762682093_691064ed6a609_5-daimond-cup-grinding-wheel-single.jpg', '2025-11-09 09:54:53', '2025-11-09 09:54:53'),
(26, 35, 'uploads/product_gallery/1762682093_691064ed6a738_5-daimond-cup-grinding-wheel-single.jpg', '2025-11-09 09:54:53', '2025-11-09 09:54:53'),
(27, 34, 'uploads/product_gallery/1762682257_69106591ea63a_45-daimond-cutter-multi-profquality.jpg', '2025-11-09 09:57:37', '2025-11-09 09:57:37'),
(28, 34, 'uploads/product_gallery/1762682257_69106591ea850_45-daimond-cutter-multi-profquality.jpg', '2025-11-09 09:57:37', '2025-11-09 09:57:37'),
(29, 33, 'uploads/product_gallery/1762682405_69106625ab14f_4-daimond-cutter-standard-quality-plain-saw.jpg', '2025-11-09 10:00:05', '2025-11-09 10:00:05'),
(30, 33, 'uploads/product_gallery/1762682405_69106625ab364_4-daimond-cutter-standard-quality-plain-saw.jpg', '2025-11-09 10:00:05', '2025-11-09 10:00:05'),
(31, 33, 'uploads/product_gallery/1762682405_69106625ab4cf_4-daimond-cutter-standard-quality-plain-saw.jpg', '2025-11-09 10:00:05', '2025-11-09 10:00:05'),
(32, 32, 'uploads/product_gallery/1762682979_6910686312c25_4-cutting-disc-thin-turbo-blade.jpg', '2025-11-09 10:09:39', '2025-11-09 10:09:39'),
(33, 32, 'uploads/product_gallery/1762682979_6910686312e7d_4-cutting-disc-thin-turbo-blade.jpg', '2025-11-09 10:09:39', '2025-11-09 10:09:39'),
(34, 31, 'uploads/product_gallery/1762684298_69106d8a6000f_4-grinding-wheel.jpg', '2025-11-09 10:31:38', '2025-11-09 10:31:38'),
(35, 31, 'uploads/product_gallery/1762684298_69106d8a60272_4-grinding-wheel.jpg', '2025-11-09 10:31:38', '2025-11-09 10:31:38'),
(36, 30, 'uploads/product_gallery/1762684373_69106dd51d200_4-diamond-cup-grinding-wheel-double.jpg', '2025-11-09 10:32:53', '2025-11-09 10:32:53'),
(37, 30, 'uploads/product_gallery/1762684373_69106dd51d387_4-diamond-cup-grinding-wheel-double.jpg', '2025-11-09 10:32:53', '2025-11-09 10:32:53'),
(38, 29, 'uploads/product_gallery/1762684648_69106ee8ea2e1_4-daimond-cutter-standard-quality-segcutting.jpg', '2025-11-09 10:37:28', '2025-11-09 10:37:28'),
(39, 29, 'uploads/product_gallery/1762684648_69106ee8ea561_4-daimond-cutter-standard-quality-segcutting.jpg', '2025-11-09 10:37:28', '2025-11-09 10:37:28'),
(40, 28, 'uploads/product_gallery/1762684727_69106f37ef584_4-daimond-cutter-professional-quality-segcutting.jpg', '2025-11-09 10:38:47', '2025-11-09 10:38:47'),
(41, 28, 'uploads/product_gallery/1762684727_69106f37ef75a_4-daimond-cutter-professional-quality-segcutting.jpg', '2025-11-09 10:38:47', '2025-11-09 10:38:47'),
(42, 28, 'uploads/product_gallery/1762684727_69106f37efa10_4-daimond-cutter-professional-quality-segcutting.jpg', '2025-11-09 10:38:47', '2025-11-09 10:38:47'),
(43, 27, 'uploads/product_gallery/1762684801_69106f8132d0d_4-daimond-cutter-professional-quality-plain-saw.jpg', '2025-11-09 10:40:01', '2025-11-09 10:40:01'),
(44, 27, 'uploads/product_gallery/1762684801_69106f8132f44_4-daimond-cutter-professional-quality-plain-saw.jpg', '2025-11-09 10:40:01', '2025-11-09 10:40:01'),
(45, 27, 'uploads/product_gallery/1762684801_69106f8133095_4-daimond-cutter-professional-quality-plain-saw.jpg', '2025-11-09 10:40:01', '2025-11-09 10:40:01'),
(46, 27, 'uploads/product_gallery/1762684801_69106f81a53d7_4-daimond-cutter-professional-quality-plain-saw.jpg', '2025-11-09 10:40:01', '2025-11-09 10:40:01'),
(47, 27, 'uploads/product_gallery/1762684801_69106f81a5561_4-daimond-cutter-professional-quality-plain-saw.jpg', '2025-11-09 10:40:01', '2025-11-09 10:40:01'),
(48, 27, 'uploads/product_gallery/1762684801_69106f81a5737_4-daimond-cutter-professional-quality-plain-saw.jpg', '2025-11-09 10:40:01', '2025-11-09 10:40:01'),
(49, 26, 'uploads/product_gallery/1762684867_69106fc37c946_4-daimond-cup-grinding-wheel-stdquality.jpg', '2025-11-09 10:41:07', '2025-11-09 10:41:07'),
(50, 26, 'uploads/product_gallery/1762684867_69106fc37cb0c_4-daimond-cup-grinding-wheel-stdquality.jpg', '2025-11-09 10:41:07', '2025-11-09 10:41:07'),
(51, 25, 'uploads/product_gallery/1762684954_6910701a38047_4-daimond-cup-grinding-disk-single.jpg', '2025-11-09 10:42:34', '2025-11-09 10:42:34'),
(52, 25, 'uploads/product_gallery/1762684954_6910701a38287_4-daimond-cup-grinding-disk-single.jpg', '2025-11-09 10:42:34', '2025-11-09 10:42:34'),
(53, 24, 'uploads/product_gallery/1762685283_691071636a4e9_aluminium-level-with-magnet-09.jpg', '2025-11-09 10:48:03', '2025-11-09 10:48:03'),
(54, 23, 'uploads/product_gallery/1762685408_691071e0ea879_cable-cutter-10.jpg', '2025-11-09 10:50:08', '2025-11-09 10:50:08'),
(55, 23, 'uploads/product_gallery/1762685408_691071e0eaa8d_cable-cutter-10.jpg', '2025-11-09 10:50:08', '2025-11-09 10:50:08'),
(56, 23, 'uploads/product_gallery/1762685408_691071e0eac58_cable-cutter-10.jpg', '2025-11-09 10:50:08', '2025-11-09 10:50:08'),
(57, 22, 'uploads/product_gallery/1762685537_69107261b7b5f_bolt-cutter-12.jpg', '2025-11-09 10:52:17', '2025-11-09 10:52:17'),
(58, 21, 'uploads/product_gallery/1762685581_6910728d4fded_axebir-brand-small.jpg', '2025-11-09 10:53:01', '2025-11-09 10:53:01'),
(59, 21, 'uploads/product_gallery/1762685581_6910728d4ffb7_axebir-brand-small.jpg', '2025-11-09 10:53:01', '2025-11-09 10:53:01'),
(60, 21, 'uploads/product_gallery/1762685581_6910728d500ff_axebir-brand-small.jpg', '2025-11-09 10:53:01', '2025-11-09 10:53:01'),
(61, 20, 'uploads/product_gallery/1762685701_691073059b109_axe-bir-brand-premium-quality.jpg', '2025-11-09 10:55:01', '2025-11-09 10:55:01'),
(62, 20, 'uploads/product_gallery/1762685701_691073059b2f9_axe-bir-brand-premium-quality.jpg', '2025-11-09 10:55:01', '2025-11-09 10:55:01'),
(63, 19, 'uploads/product_gallery/1762686410_691075ca79b7f_axebir-brand-fiber-handle.jpg', '2025-11-09 11:06:50', '2025-11-09 11:06:50'),
(64, 19, 'uploads/product_gallery/1762686410_691075ca79e7d_axebir-brand-fiber-handle.jpg', '2025-11-09 11:06:50', '2025-11-09 11:06:50'),
(65, 19, 'uploads/product_gallery/1762686410_691075ca7a00c_axebir-brand-fiber-handle.jpg', '2025-11-09 11:06:50', '2025-11-09 11:06:50'),
(66, 18, 'uploads/product_gallery/1762686471_691076073b9cd_american-snip-12.jpg', '2025-11-09 11:07:51', '2025-11-09 11:07:51'),
(67, 18, 'uploads/product_gallery/1762686471_691076073bb83_american-snip-12.jpg', '2025-11-09 11:07:51', '2025-11-09 11:07:51'),
(68, 18, 'uploads/product_gallery/1762686471_691076073bc96_american-snip-12.jpg', '2025-11-09 11:07:51', '2025-11-09 11:07:51'),
(69, 17, 'uploads/product_gallery/1762686556_6910765c71890_aluminium-cutter-12.jpg', '2025-11-09 11:09:16', '2025-11-09 11:09:16'),
(70, 17, 'uploads/product_gallery/1762686556_6910765c71ac0_aluminium-cutter-12.jpg', '2025-11-09 11:09:16', '2025-11-09 11:09:16'),
(71, 16, 'uploads/product_gallery/1762686618_6910769a01267_abresive-paper-sheet-120-white.jpg', '2025-11-09 11:10:18', '2025-11-09 11:10:18'),
(72, 16, 'uploads/product_gallery/1762686618_6910769a01436_abresive-paper-sheet-120-white.jpg', '2025-11-09 11:10:18', '2025-11-09 11:10:18'),
(73, 16, 'uploads/product_gallery/1762686618_6910769a015b0_abresive-paper-sheet-120-white.jpg', '2025-11-09 11:10:18', '2025-11-09 11:10:18'),
(74, 16, 'uploads/product_gallery/1762686637_691076ada737d_abresive-paper-sheet-120-white.jpg', '2025-11-09 11:10:37', '2025-11-09 11:10:37'),
(75, 16, 'uploads/product_gallery/1762686637_691076ada7554_abresive-paper-sheet-120-white.jpg', '2025-11-09 11:10:37', '2025-11-09 11:10:37'),
(76, 16, 'uploads/product_gallery/1762686637_691076ada76b9_abresive-paper-sheet-120-white.jpg', '2025-11-09 11:10:37', '2025-11-09 11:10:37'),
(77, 15, 'uploads/product_gallery/1762686721_6910770113e7e_cutting-tools.jpg', '2025-11-09 11:12:01', '2025-11-09 11:12:01'),
(78, 15, 'uploads/product_gallery/1762686721_6910770114058_cutting-tools.jpg', '2025-11-09 11:12:01', '2025-11-09 11:12:01'),
(79, 14, 'uploads/product_gallery/1762686808_691077589bcf7_drill-chuck-15-13mm.jpg', '2025-11-09 11:13:28', '2025-11-09 11:13:28'),
(80, 14, 'uploads/product_gallery/1762686808_691077589bec4_drill-chuck-15-13mm.jpg', '2025-11-09 11:13:28', '2025-11-09 11:13:28'),
(81, 14, 'uploads/product_gallery/1762686808_691077589c023_drill-chuck-15-13mm.jpg', '2025-11-09 11:13:28', '2025-11-09 11:13:28'),
(82, 13, 'uploads/product_gallery/1762686858_6910778a37a8d_drill-bit-65mm-super.jpg', '2025-11-09 11:14:18', '2025-11-09 11:14:18'),
(83, 13, 'uploads/product_gallery/1762686858_6910778a37e04_drill-bit-65mm-super.jpg', '2025-11-09 11:14:18', '2025-11-09 11:14:18'),
(84, 13, 'uploads/product_gallery/1762686858_6910778a380c2_drill-bit-65mm-super.jpg', '2025-11-09 11:14:18', '2025-11-09 11:14:18'),
(85, 12, 'uploads/product_gallery/1762686898_691077b2827d3_axebir-brand-small.jpg', '2025-11-09 11:14:58', '2025-11-09 11:14:58'),
(86, 12, 'uploads/product_gallery/1762686898_691077b28295f_axebir-brand-small.jpg', '2025-11-09 11:14:58', '2025-11-09 11:14:58'),
(87, 12, 'uploads/product_gallery/1762686898_691077b282b03_axebir-brand-small.jpg', '2025-11-09 11:14:58', '2025-11-09 11:14:58'),
(88, 11, 'uploads/product_gallery/1762686980_69107804ade83_axe-bir-brand-premium-quality.jpg', '2025-11-09 11:16:20', '2025-11-09 11:16:20'),
(89, 11, 'uploads/product_gallery/1762686980_69107804ae218_axe-bir-brand-premium-quality.jpg', '2025-11-09 11:16:20', '2025-11-09 11:16:20'),
(90, 10, 'uploads/product_gallery/1762687020_6910782c7d177_axebir-brand-fiber-handle.jpg', '2025-11-09 11:17:00', '2025-11-09 11:17:00'),
(91, 10, 'uploads/product_gallery/1762687020_6910782c7d309_axebir-brand-fiber-handle.jpg', '2025-11-09 11:17:00', '2025-11-09 11:17:00'),
(92, 10, 'uploads/product_gallery/1762687020_6910782c7d47e_axebir-brand-fiber-handle.jpg', '2025-11-09 11:17:00', '2025-11-09 11:17:00'),
(93, 9, 'uploads/product_gallery/1762687421_691079bd04086_ball-pein-hammer-08-oz-12-lb.jpg', '2025-11-09 11:23:41', '2025-11-09 11:23:41'),
(94, 9, 'uploads/product_gallery/1762687421_691079bd04288_ball-pein-hammer-08-oz-12-lb.jpg', '2025-11-09 11:23:41', '2025-11-09 11:23:41'),
(95, 9, 'uploads/product_gallery/1762687421_691079bd043e2_ball-pein-hammer-08-oz-12-lb.jpg', '2025-11-09 11:23:41', '2025-11-09 11:23:41'),
(96, 8, 'uploads/product_gallery/1762687490_69107a02b913e_ball-pein-hammer-04-oz-14-lb.jpg', '2025-11-09 11:24:50', '2025-11-09 11:24:50'),
(97, 8, 'uploads/product_gallery/1762687490_69107a02b9319_ball-pein-hammer-04-oz-14-lb.jpg', '2025-11-09 11:24:50', '2025-11-09 11:24:50'),
(98, 7, 'uploads/product_gallery/1762688377_69107d79ed016_ball-peen-hammer-standard-16-oz-1-lb.jpg', '2025-11-09 11:39:37', '2025-11-09 11:39:37'),
(99, 7, 'uploads/product_gallery/1762688377_69107d79ed23f_ball-peen-hammer-standard-16-oz-1-lb.jpg', '2025-11-09 11:39:37', '2025-11-09 11:39:37'),
(100, 7, 'uploads/product_gallery/1762688377_69107d79ed385_ball-peen-hammer-standard-16-oz-1-lb.jpg', '2025-11-09 11:39:37', '2025-11-09 11:39:37'),
(101, 6, 'uploads/product_gallery/1762688421_69107da5abdba_american-claw-hammer-with-fiber-glass-16oz.jpg', '2025-11-09 11:40:21', '2025-11-09 11:40:21'),
(102, 6, 'uploads/product_gallery/1762688421_69107da5abf82_american-claw-hammer-with-fiber-glass-16oz.jpg', '2025-11-09 11:40:21', '2025-11-09 11:40:21'),
(103, 6, 'uploads/product_gallery/1762688421_69107da5ac0f5_american-claw-hammer-with-fiber-glass-16oz.jpg', '2025-11-09 11:40:21', '2025-11-09 11:40:21'),
(104, 5, 'uploads/product_gallery/1762688471_69107dd718b6f_tri-angle-file-mini-4-6pcs-set.jpg', '2025-11-09 11:41:11', '2025-11-09 11:41:11'),
(105, 5, 'uploads/product_gallery/1762688471_69107dd718def_tri-angle-file-mini-4-6pcs-set.jpg', '2025-11-09 11:41:11', '2025-11-09 11:41:11'),
(106, 5, 'uploads/product_gallery/1762688471_69107dd718fae_tri-angle-file-mini-4-6pcs-set.jpg', '2025-11-09 11:41:11', '2025-11-09 11:41:11'),
(107, 5, 'uploads/product_gallery/1762688471_69107dd7190ed_tri-angle-file-mini-4-6pcs-set.jpg', '2025-11-09 11:41:11', '2025-11-09 11:41:11'),
(108, 4, 'uploads/product_gallery/1762688521_69107e09f1364_tri-angel-file-4-mini-6pcs-set-super.jpg', '2025-11-09 11:42:01', '2025-11-09 11:42:01'),
(109, 4, 'uploads/product_gallery/1762688521_69107e09f158b_tri-angel-file-4-mini-6pcs-set-super.jpg', '2025-11-09 11:42:01', '2025-11-09 11:42:01'),
(110, 4, 'uploads/product_gallery/1762688521_69107e09f16e6_tri-angel-file-4-mini-6pcs-set-super.jpg', '2025-11-09 11:42:01', '2025-11-09 11:42:01'),
(111, 3, 'uploads/product_gallery/1762688586_69107e4aa58ea_half-round-file-wooden-8.jpg', '2025-11-09 11:43:06', '2025-11-09 11:43:06'),
(112, 3, 'uploads/product_gallery/1762688586_69107e4aa5aae_half-round-file-wooden-8.jpg', '2025-11-09 11:43:06', '2025-11-09 11:43:06'),
(113, 3, 'uploads/product_gallery/1762688586_69107e4aa5bf5_half-round-file-wooden-8.jpg', '2025-11-09 11:43:06', '2025-11-09 11:43:06'),
(114, 3, 'uploads/product_gallery/1762688586_69107e4aa5d58_half-round-file-wooden-8.jpg', '2025-11-09 11:43:06', '2025-11-09 11:43:06'),
(115, 2, 'uploads/product_gallery/1762688669_69107e9d9e3cd_half-round-file-wooden-10.jpg', '2025-11-09 11:44:29', '2025-11-09 11:44:29'),
(116, 2, 'uploads/product_gallery/1762688669_69107e9d9e6ce_half-round-file-wooden-10.jpg', '2025-11-09 11:44:29', '2025-11-09 11:44:29'),
(117, 2, 'uploads/product_gallery/1762688669_69107e9d9e838_half-round-file-wooden-10.jpg', '2025-11-09 11:44:29', '2025-11-09 11:44:29'),
(118, 2, 'uploads/product_gallery/1762688669_69107e9d9e973_half-round-file-wooden-10.jpg', '2025-11-09 11:44:29', '2025-11-09 11:44:29'),
(119, 69, 'uploads/product_gallery/1762689973_691083b51b168_sponge-kit-fl-70.jpg', '2025-11-09 12:06:13', '2025-11-09 12:06:13'),
(120, 69, 'uploads/product_gallery/1762689973_691083b51b33e_sponge-kit-fl-70.jpg', '2025-11-09 12:06:13', '2025-11-09 12:06:13'),
(121, 69, 'uploads/product_gallery/1762689973_691083b51b448_sponge-kit-fl-70.jpg', '2025-11-09 12:06:13', '2025-11-09 12:06:13'),
(122, 68, 'uploads/product_gallery/1762690058_6910840a8fd40_sponge-kit-fl-69.jpg', '2025-11-09 12:07:38', '2025-11-09 12:07:38'),
(123, 68, 'uploads/product_gallery/1762690058_6910840a8ff08_sponge-kit-fl-69.jpg', '2025-11-09 12:07:38', '2025-11-09 12:07:38'),
(124, 67, 'uploads/product_gallery/1762690127_6910844f592a1_sponge-kit-aj-69.jpg', '2025-11-09 12:08:47', '2025-11-09 12:08:47'),
(125, 67, 'uploads/product_gallery/1762690127_6910844f5946e_sponge-kit-aj-69.jpg', '2025-11-09 12:08:47', '2025-11-09 12:08:47'),
(126, 66, 'uploads/product_gallery/1762690167_6910847705d89_sponge-kit-aj-29.jpg', '2025-11-09 12:09:27', '2025-11-09 12:09:27'),
(127, 66, 'uploads/product_gallery/1762690167_6910847705f58_sponge-kit-aj-29.jpg', '2025-11-09 12:09:27', '2025-11-09 12:09:27'),
(128, 66, 'uploads/product_gallery/1762690167_691084770608a_sponge-kit-aj-29.jpg', '2025-11-09 12:09:27', '2025-11-09 12:09:27'),
(129, 66, 'uploads/product_gallery/1762690167_69108477061c5_sponge-kit-aj-29.jpg', '2025-11-09 12:09:27', '2025-11-09 12:09:27'),
(130, 65, 'uploads/product_gallery/1762690222_691084aee6f63_sponge-kit-aj-28.jpg', '2025-11-09 12:10:22', '2025-11-09 12:10:22'),
(131, 65, 'uploads/product_gallery/1762690222_691084aee71c1_sponge-kit-aj-28.jpg', '2025-11-09 12:10:22', '2025-11-09 12:10:22'),
(132, 65, 'uploads/product_gallery/1762690222_691084aee7342_sponge-kit-aj-28.jpg', '2025-11-09 12:10:22', '2025-11-09 12:10:22'),
(133, 64, 'uploads/product_gallery/1762690302_691084feb1d7d_sponge-kit-aj-27.jpg', '2025-11-09 12:11:42', '2025-11-09 12:11:42'),
(134, 64, 'uploads/product_gallery/1762690302_691084feb2080_sponge-kit-aj-27.jpg', '2025-11-09 12:11:42', '2025-11-09 12:11:42'),
(135, 64, 'uploads/product_gallery/1762690302_691084feb2262_sponge-kit-aj-27.jpg', '2025-11-09 12:11:42', '2025-11-09 12:11:42'),
(136, 63, 'uploads/product_gallery/1762690350_6910852e8f30c_sponge-kit-aj-08.jpg', '2025-11-09 12:12:30', '2025-11-09 12:12:30'),
(137, 63, 'uploads/product_gallery/1762690350_6910852e8f4b4_sponge-kit-aj-08.jpg', '2025-11-09 12:12:30', '2025-11-09 12:12:30'),
(138, 63, 'uploads/product_gallery/1762690350_6910852e8f641_sponge-kit-aj-08.jpg', '2025-11-09 12:12:30', '2025-11-09 12:12:30'),
(139, 62, 'uploads/product_gallery/1762690423_6910857796ce3_sponge-kit-aj-01.jpg', '2025-11-09 12:13:43', '2025-11-09 12:13:43'),
(140, 62, 'uploads/product_gallery/1762690423_6910857796f20_sponge-kit-aj-01.jpg', '2025-11-09 12:13:43', '2025-11-09 12:13:43'),
(141, 62, 'uploads/product_gallery/1762690423_6910857797090_sponge-kit-aj-01.jpg', '2025-11-09 12:13:43', '2025-11-09 12:13:43'),
(142, 61, 'uploads/product_gallery/1762690461_6910859d3c5c2_sf-9601-a-decoration-machine-6.jpg', '2025-11-09 12:14:21', '2025-11-09 12:14:21'),
(143, 61, 'uploads/product_gallery/1762690461_6910859d3c7a8_sf-9601-a-decoration-machine-6.jpg', '2025-11-09 12:14:21', '2025-11-09 12:14:21'),
(144, 60, 'uploads/product_gallery/1762690493_691085bde557c_gr-29-soft-pattern-rubber-6.jpg', '2025-11-09 12:14:53', '2025-11-09 12:14:53'),
(145, 60, 'uploads/product_gallery/1762690493_691085bde573b_gr-29-soft-pattern-rubber-6.jpg', '2025-11-09 12:14:53', '2025-11-09 12:14:53'),
(146, 60, 'uploads/product_gallery/1762690493_691085bde5876_gr-29-soft-pattern-rubber-6.jpg', '2025-11-09 12:14:53', '2025-11-09 12:14:53'),
(147, 59, 'uploads/product_gallery/1762690765_691086cd186ff_gr-77-soft-pattern-rubber-6.jpg', '2025-11-09 12:19:25', '2025-11-09 12:19:25'),
(148, 59, 'uploads/product_gallery/1762690765_691086cd18939_gr-77-soft-pattern-rubber-6.jpg', '2025-11-09 12:19:25', '2025-11-09 12:19:25'),
(149, 59, 'uploads/product_gallery/1762690765_691086cd18ad0_gr-77-soft-pattern-rubber-6.jpg', '2025-11-09 12:19:25', '2025-11-09 12:19:25'),
(150, 58, 'uploads/product_gallery/1762690820_691087040a21b_gr-70-soft-pattern-rubber-6.jpg', '2025-11-09 12:20:20', '2025-11-09 12:20:20'),
(151, 58, 'uploads/product_gallery/1762690820_691087040a3ea_gr-70-soft-pattern-rubber-6.jpg', '2025-11-09 12:20:20', '2025-11-09 12:20:20'),
(152, 58, 'uploads/product_gallery/1762690820_691087040a56a_gr-70-soft-pattern-rubber-6.jpg', '2025-11-09 12:20:20', '2025-11-09 12:20:20'),
(153, 57, 'uploads/product_gallery/1762694285_6910948d9100c_gr-82-soft-pattern-rubber-6.jpg', '2025-11-09 13:18:05', '2025-11-09 13:18:05'),
(154, 57, 'uploads/product_gallery/1762694285_6910948d912ff_gr-82-soft-pattern-rubber-6.jpg', '2025-11-09 13:18:05', '2025-11-09 13:18:05'),
(155, 57, 'uploads/product_gallery/1762694285_6910948d914c7_gr-82-soft-pattern-rubber-6.jpg', '2025-11-09 13:18:05', '2025-11-09 13:18:05'),
(156, 56, 'uploads/product_gallery/1762694478_6910954e58e80_gr-46-soft-pattern-rubber-6.jpg', '2025-11-09 13:21:18', '2025-11-09 13:21:18'),
(157, 56, 'uploads/product_gallery/1762694478_6910954e590b2_gr-46-soft-pattern-rubber-6.jpg', '2025-11-09 13:21:18', '2025-11-09 13:21:18'),
(158, 55, 'uploads/product_gallery/1762694716_6910963c161d5_gr-35-soft-pattern-rubber-6.jpg', '2025-11-09 13:25:16', '2025-11-09 13:25:16'),
(159, 55, 'uploads/product_gallery/1762694716_6910963c163ad_gr-35-soft-pattern-rubber-6.jpg', '2025-11-09 13:25:16', '2025-11-09 13:25:16'),
(160, 54, 'uploads/product_gallery/1762694829_691096adeefa8_gr-127-soft-pattern-rubber-6.jpg', '2025-11-09 13:27:09', '2025-11-09 13:27:09'),
(161, 54, 'uploads/product_gallery/1762694829_691096adef2e7_gr-127-soft-pattern-rubber-6.jpg', '2025-11-09 13:27:09', '2025-11-09 13:27:09'),
(162, 54, 'uploads/product_gallery/1762694829_691096adef46a_gr-127-soft-pattern-rubber-6.jpg', '2025-11-09 13:27:09', '2025-11-09 13:27:09'),
(163, 53, 'uploads/product_gallery/1762694916_691097046a4eb_gr-09-soft-pattern-rubber-6.jpg', '2025-11-09 13:28:36', '2025-11-09 13:28:36'),
(164, 53, 'uploads/product_gallery/1762694916_691097046a6f7_gr-09-soft-pattern-rubber-6.jpg', '2025-11-09 13:28:36', '2025-11-09 13:28:36'),
(165, 52, 'uploads/product_gallery/1762696432_69109cf063cd3_gr-33-soft-pattern-rubber-6.jpg', '2025-11-09 13:53:52', '2025-11-09 13:53:52'),
(166, 52, 'uploads/product_gallery/1762696432_69109cf063ef2_gr-33-soft-pattern-rubber-6.jpg', '2025-11-09 13:53:52', '2025-11-09 13:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory`
--

CREATE TABLE `product_inventory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribute_variation` varchar(255) DEFAULT NULL,
  `qty_in` int(11) NOT NULL,
  `stock_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_inventory`
--

INSERT INTO `product_inventory` (`id`, `user_id`, `product_id`, `attribute_variation`, `qty_in`, `stock_date`, `created_at`, `updated_at`) VALUES
(1, 1, 69, NULL, 50, '2025-01-01', '2025-11-23 15:21:25', '2025-11-23 15:43:20'),
(2, 1, 69, NULL, 40, '2025-01-02', '2025-11-23 15:21:25', '2025-11-23 15:43:22'),
(3, 1, 69, NULL, 30, '2025-01-03', '2025-11-23 15:21:25', '2025-11-23 15:43:26'),
(4, 2, 67, NULL, 25, '2025-01-05', '2025-11-23 15:21:25', '2025-11-23 15:43:44'),
(5, 2, 67, NULL, 20, '2025-01-06', '2025-11-23 15:21:25', '2025-11-23 15:43:52'),
(6, 3, 69, NULL, 100, '2025-01-04', '2025-11-23 15:21:25', '2025-11-23 15:44:03'),
(7, 3, 68, NULL, 70, '2025-01-07', '2025-11-23 15:21:25', '2025-11-23 15:44:15'),
(13, 3, 50, NULL, 70, '2025-01-07', '2025-11-23 15:21:25', '2025-11-23 15:44:15'),
(17, NULL, 62, ' Aj-01', 200, '2025-11-23', '2025-11-23 12:22:41', '2025-11-23 12:22:41'),
(18, NULL, 62, ' Aj-02', 250, '2025-11-23', '2025-11-23 12:22:41', '2025-11-23 12:22:41'),
(19, NULL, 62, '', 1, '2025-11-23', '2025-11-23 12:22:41', '2025-11-23 12:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_invoice`
--

CREATE TABLE `purchase_order_invoice` (
  `purchase_order_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sku` varchar(100) NOT NULL,
  `attribute` text DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_invoice`
--

INSERT INTO `purchase_order_invoice` (`purchase_order_id`, `description`, `sku`, `attribute`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(6, 'Flat File With Plastic Handle(Bir Standard) 08\"', '', '10\"|12\"|08\"', 50, 150.00, '2025-11-04 09:48:10', '2025-11-04 09:48:10'),
(6, 'Half Round File ( Wooden)-10\'\'', '', '', 61, 130.00, '2025-11-04 09:48:10', '2025-11-04 09:48:10'),
(6, 'Half Round File ( Wooden)-8\'\'', '', '', 86, 104.00, '2025-11-04 09:48:10', '2025-11-04 09:48:10'),
(6, 'Tri Angel File-4\" Mini (6pcs Set)-Super', '', '', 187, 155.00, '2025-11-04 09:48:10', '2025-11-04 09:48:10'),
(6, 'Tri Angle File-Mini-4\" ( 6pcs Set)', '', '', 1095, 125.00, '2025-11-04 09:48:10', '2025-11-04 09:48:10'),
(6, 'American Claw Hammer with Fiber Glass-16OZ', '', '', 4985, 252.00, '2025-11-04 09:48:10', '2025-11-04 09:48:10'),
(6, 'Ball Peen Hammer (Standard) -16 Oz (1 LB)', '', '', 1, 125.00, '2025-11-04 09:48:10', '2025-11-04 09:48:10'),
(6, 'Ball Pein Hammer-04 OZ ( 1/4 LB)', '', '', 222, 164.00, '2025-11-04 09:48:10', '2025-11-04 09:48:10'),
(6, 'Ball Pein Hammer-08 Oz (1/2 LB)', '', '', 1889, 188.00, '2025-11-04 09:48:10', '2025-11-04 09:48:10'),
(4, 'Axe(Bir Brand)-Fiber Handle', '', '', 25, 430.00, '2025-11-04 09:48:47', '2025-11-04 09:48:47'),
(4, 'Axe ( Bir Brand)-Premium Quality', '', '', 284, 520.00, '2025-11-04 09:48:47', '2025-11-04 09:48:47'),
(4, 'Axe(Bir Brand)-Small', '', '', 3326, 455.00, '2025-11-04 09:48:47', '2025-11-04 09:48:47'),
(4, 'Drill Bit ( 6.5mm-Super)', '', '', 402, 16.50, '2025-11-04 09:48:47', '2025-11-04 09:48:47'),
(4, 'Drill Chuck (1.5-13mm)', '', '', 2609, 245.00, '2025-11-04 09:48:47', '2025-11-04 09:48:47'),
(3, 'Cutting Tools', '', '', 57563, 143.31, '2025-11-04 09:49:01', '2025-11-04 09:49:01'),
(3, 'Abresive Paper Sheet-(120-White)', '', '', 442, 12.50, '2025-11-04 09:49:01', '2025-11-04 09:49:01'),
(3, 'Aluminium Cutter-12\"', '', '', 159, 1300.00, '2025-11-04 09:49:01', '2025-11-04 09:49:01'),
(3, 'American Snip-12\"', '', '10\"', 102, 295.00, '2025-11-04 09:49:01', '2025-11-04 09:49:01'),
(3, 'Axe(Bir Brand)-Fiber Handle', '', '', 25, 430.00, '2025-11-04 09:49:01', '2025-11-04 09:49:01'),
(3, 'Axe ( Bir Brand)-Premium Quality', '', '', 284, 520.00, '2025-11-04 09:49:01', '2025-11-04 09:49:01'),
(3, 'Axe(Bir Brand)-Small', '', '', 3326, 455.00, '2025-11-04 09:49:01', '2025-11-04 09:49:01'),
(3, 'Bolt Cutter-12\"', '', '12\"|24\"|36\"', 432, 520.00, '2025-11-04 09:49:01', '2025-11-04 09:49:01'),
(3, 'Cable Cutter-10\"', '', '', 42, 235.00, '2025-11-04 09:49:01', '2025-11-04 09:49:01'),
(2, '4\'\' Daimond Cutter-Standard Quality-Plain Saw', '', '', 24429, 94.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '4.5\" Daimond Cutter (Multi Prof.Quality)', '', '', 7212, 115.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '5\" Daimond Cup Grinding Wheel-Single', '', '', 1177, 330.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '5\" Daimond Cutter -Platinum Quality-Seg Cutting', '', '', 467, 155.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '5\" Daimond Cutter -Professional Quality-Plain Saw', '', '', 37585, 133.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '5\" Daimond Cutter-Professional Quality-Seg.Cutting', '', '', 74470, 133.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '5\" Diamond Cup Grinding Wheel', '', '', 250, 550.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '7\" Daimond Cutter( Super Quality)', '', '', 103, 285.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '7\'\' Dimond Cutter Seg Cutting Proffessional Quality', '', '', 13225, 250.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '7\' Grinding Wheel (180x6mmx22mm)', '', '', 177, 138.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, '9\" Dimond Cutter Seg Cutting Proffessional Quality', '', '', 1873, 390.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(2, 'Metal Cutting Disk', '', '14|16|4', 800, 150.00, '2025-11-04 09:49:20', '2025-11-04 09:49:20'),
(1, 'Aluminium Level with Magnet-09', '', '', 210, 215.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31'),
(1, '4\" Daimond  Cup Grinding Disk-Single', '', '', 7, 240.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31'),
(1, '4\" Daimond Cup Grinding Wheel-Std.Quality', '', '', 251, 230.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31'),
(1, '4\" Daimond Cutter-Professional Quality-Plain Saw', '', '', 3684, 105.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31'),
(1, '4\" Daimond Cutter-Professional Quality-Seg.Cutting', '', '', 80, 108.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31'),
(1, '4\" Daimond Cutter-Standard Quality-Seg.Cutting', '', '', 39735, 94.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31'),
(1, '4\" Diamond Cup Grinding Wheel (Double)', '', '', 400, 382.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31'),
(1, '4\" Grinding Wheel', '', '', 710, 40.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31'),
(1, '4\'\' Cutting Disc- Thin Turbo Blade', '', '', 6826, 150.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31'),
(7, 'Sponge Kit Aj-01', '', '', 1, 290.00, '2025-11-09 05:55:03', '2025-11-09 05:55:03'),
(7, 'Sponge Kit Aj-08', '', '', 1, 290.00, '2025-11-09 05:55:03', '2025-11-09 05:55:03'),
(7, 'Sponge Kit Aj-27', '', '', 1, 290.00, '2025-11-09 05:55:03', '2025-11-09 05:55:03'),
(7, 'Sponge Kit Aj-28', '', '', 1, 290.00, '2025-11-09 05:55:03', '2025-11-09 05:55:03'),
(7, 'Sponge Kit Aj-29', '', '', 1, 290.00, '2025-11-09 05:55:03', '2025-11-09 05:55:03'),
(7, 'Sponge Kit Aj-69', '', '', 1, 290.00, '2025-11-09 05:55:03', '2025-11-09 05:55:03'),
(7, 'Sponge Kit FL-69', '', '', 1, 290.00, '2025-11-09 05:55:03', '2025-11-09 05:55:03'),
(7, 'Sponge Kit FL-70', '', '', 1, 290.00, '2025-11-09 05:55:03', '2025-11-09 05:55:03'),
(8, 'SF-065-Rubber Roller-7\"', '', '', 100, 400.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'SF-008-Rubber Roller-7\"', '', '', 150, 300.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'SF-9501(A) Decoration Machine-7\"', '', '', 150, 200.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'GR-03-Soft Pattern Rubber-6\"', '', '', 150, 500.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'GR-86-Soft Pattern Rubber-6\"', '', '', 150, 400.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'GR-78-Soft Pattern Rubber-6\"', '', '', 150, 600.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'GR-126-Soft Pattern Rubber-6\"', '', '', 150, 400.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'GR-33-Soft Pattern Rubber-6\"', '', '', 200, 150.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'GR-09-Soft Pattern Rubber-6\"', '', '', 200, 30.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'GR-127-Soft Pattern Rubber-6\"', '', '', 200, 40.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'GR-35-Soft Pattern Rubber-6\"', '', '', 200, 60.00, '2025-11-09 05:58:14', '2025-11-09 05:58:14'),
(8, 'GR-46-Soft Pattern Rubber-6\"', '', '', 200, 400.00, '2025-11-09 05:58:15', '2025-11-09 05:58:15'),
(8, 'GR-82-Soft Pattern Rubber-6\"', '', '', 200, 36.00, '2025-11-09 05:58:15', '2025-11-09 05:58:15'),
(8, 'GR-70-Soft Pattern Rubber-6\"', '', '', 200, 600.00, '2025-11-09 05:58:15', '2025-11-09 05:58:15'),
(8, 'GR-77-Soft Pattern Rubber-6\"', '', '', 200, 45.00, '2025-11-09 05:58:15', '2025-11-09 05:58:15'),
(8, 'GR-29-Soft Pattern Rubber-6\"', '', '', 200, 69.00, '2025-11-09 05:58:15', '2025-11-09 05:58:15'),
(8, 'SF-9601-(A) Decoration Machine-6\"', '', '', 200, 700.00, '2025-11-09 05:58:15', '2025-11-09 05:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_particular`
--

CREATE TABLE `purchase_order_particular` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(255) NOT NULL,
  `invNumber` varchar(255) DEFAULT NULL,
  `orderDate` date NOT NULL,
  `grandTotal` decimal(10,2) NOT NULL,
  `transfer_status` int(10) NOT NULL DEFAULT 0 COMMENT '1=Transfer\r\n0=Not transfer',
  `billingAddress` varchar(255) DEFAULT NULL,
  `shippingAddress` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_particular`
--

INSERT INTO `purchase_order_particular` (`id`, `supplier_id`, `invNumber`, `orderDate`, `grandTotal`, `transfer_status`, `billingAddress`, `shippingAddress`, `remarks`, `created_at`, `updated_at`) VALUES
(1, '4', '0001448', '2025-11-04', 5440210.00, 1, '', '', '', '2025-11-04 09:10:17', '2025-11-05 22:16:13'),
(2, '3', '0001441', '2025-11-04', 22837817.00, 1, '', '', '', '2025-11-04 09:18:25', '2025-11-05 22:16:23'),
(3, '2', '0001445', '2025-11-05', 10397938.53, 1, '', '', '', '2025-11-04 09:28:50', '2025-11-05 22:15:59'),
(4, '2', '0001455', '2025-11-04', 2317598.00, 1, '', '', '', '2025-11-04 09:41:04', '2025-11-05 22:15:40'),
(6, '1', '0001456', '2025-11-05', 1838119.00, 1, '', '', '', '2025-11-04 09:48:10', '2025-11-05 22:15:26'),
(7, '1', '0001450', '2025-11-09', 2320.00, 1, 'Dhaka', '', '', '2025-11-09 05:55:03', '2025-11-09 06:00:08'),
(8, '1', '0001460', '2025-11-10', 826000.00, 1, '', '', '', '2025-11-09 05:58:14', '2025-11-09 05:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `role_type` int(11) NOT NULL COMMENT '1=admin,\r\n2=Editor,\r\n3=Viewer,\r\n4=General Post\r\n5=Product Manage\r\n6=User Manage\r\n\r\n\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'api', 1, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(2, 'editor', 'api', 2, '2025-10-09 10:09:35', '2025-10-09 10:09:35'),
(3, 'viewer', 'api', 3, '2025-10-09 10:09:35', '2025-10-09 10:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles_type`
--

CREATE TABLE `roles_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles_type`
--

INSERT INTO `roles_type` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'api', '2023-01-08 12:10:18', '2023-01-08 12:10:18'),
(2, 'Editor', 'api', '2023-01-23 14:58:53', '2023-01-23 14:58:53'),
(3, 'Viewer', 'api', '2023-01-23 15:01:22', '2023-01-23 15:01:22'),
(4, 'Customer', 'api', '2023-01-23 15:01:22', '2023-01-23 15:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(22, 1),
(22, 2),
(23, 2),
(24, 1),
(24, 2),
(33, 1),
(34, 1),
(35, 1),
(38, 1),
(39, 1),
(40, 1),
(43, 1),
(44, 1),
(45, 1),
(48, 1),
(49, 1),
(50, 1),
(53, 1),
(54, 1),
(55, 1),
(58, 1),
(59, 1),
(60, 1),
(63, 1),
(64, 1),
(65, 1),
(68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2S4klZnox55fD199jzfO2UfGRJ8gwd9TpV3UmEGY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3NoRm9EWklhaTluWTV5VUk4WE1pOXhsMGRITEFJeW1GcVFoRVRObSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264912),
('2WX027sfoYBJUPt81RhWZrf4cWp93CMEKOK9Md9b', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUZjbzhMeXdBU3d3ZFZZZXhNd3diZ2E0TjVScEVJYzAxQnBqQ0lHZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763265005),
('3v2EYaH1mY722a6boaDZ2CgEo7lQ9LJVVLAjIx18', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnFNUmFxb0hvWTVDcFN6TDVPRlkwRUVPVkpDT1lpYmVralNqV21OUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710700),
('4eqiklz9KGAgCZDaq2KExjHF6lVlEgLTAS1rt97J', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFZ1ZzlXNERTRllmWWhpTVM2MmdDbU5KRk1neWhyeTBmRWtwNG8yYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264920),
('5iPogroS6oEtUBLKA4FASg0vBDimZfi2oF5nXtqh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0k2eE5xQVBwaDlIcEtNTVJlY3A2emdtUlZ4RnJqTFJBenhhY0hxbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264915),
('8Ae8YRjFQQM229FQ35VHry21ompiAoCSyiIUQnoa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkVWa1lqcWt3Z2tOUHk4TThHdGZoTUl4aE5hTG5qZndhVG9WUnFhZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763265512),
('8PalsWxGBcFOrY9WPrTgVv8uqLXm3bepbyWEXoNT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0FvOWY1WVB3cVAxWFlsc1lyYXJ3WFJKdmJ0ajhLb2hkVjhYU0RYSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264914),
('a4LZ9S5urD7lIiXsgJMcqGOmp5r9mdTgT3dz9B8h', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1ZKdDMzRzdRVWZZMk1rQm9PQUVHU1hQTmNoZ1k0VGkwcUZtZXBGSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763040080),
('A5uNBTsDGmsog1jrs02iBtHSIVhIJzsmqGkzeIXs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTRaR1pXRG55YU96cHlYbUZOZk5ET1BTQWVHa3pRVlpuTjBsb1JkRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264915),
('aIb3fh5xyNfjAoKQX3IfYHQkhPYHROjstVsFauyI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVFkTE5iaXB5NXBCRU9ZSkRlcnYwdlFHeW9nenlLZExmWVJLYVdrQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762970217),
('aIKmNXfg6geoiBznnnrZaYIB966XfkwcH2sai1hD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVF1Y2VDdDByVkF4YU5kMmRsQVlYVmZzSG0weHFLb1pJZTdIUVYyZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264912),
('Aiz7cRSsyxCBZNT9rFq5PbHm0jn58C3wdb8l2fDh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTlVN291dHBJRWtsREwzclVFSE5raHlxYW1oeWM4UmRCd0dSUktvRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264829),
('aPZPdzp5hF6dWtGSFcdOyWHndDpPPElrwZqfkzqV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXN1VFRFV2tvTjE1ZHNTanhaQmE1VEw4VFZsUm9BSzliS0paZ3BLeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264922),
('BC28JRTxOriTVfqJrp0njTrWnxTgdc21F4SPhCxe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3VaNlRHeFVxZ3EweVY4eFBDQ1F4ZzhqYmhKYnBFWnJnTlFrVlAwUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710406),
('beC5tExG7wz6fwumQX2N1tnamOGZFtbxVbJ1DfDb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0dibGRWSk9zSVlDVHdHTVJMajFFbE91YThNb3B6d0I0NU03WmdqRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264920),
('BjtKoOU3K9082FfOpdI02GLPDqvLgangEhjQ7rXz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDRGYlZxdVVickZrRFp6ZFlEY2hZbUx3R1U2YXEyUFVxZllVM1BQVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264919),
('bPDZighjf6K7u1ibnSiYfcUzpWnytTVNEYOE9Mvq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHBhbXhJZm0xa1NnRXFYM01PZEFROTFyakVGV216Q0JxdHVrTFdsUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264920),
('BUXghL5jQ0Ao8E9HOxo1Wdk4g96MOgkSzwHXzGJp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE5xRU5jZFZERGNkM0k0OWV1UnowaEE2UmIxdFZtZ1pya3BIcWtIOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264914),
('clnR31GaLk64g1ZjhygWISTzUYqKoCUDOmAos3gE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDN1VjBnTWxKWGdDZnlMSTBJREg1QmpFZ2lORnMzRmN0RUxBbW40MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710521),
('DNFIPqjZQOOaxN1ueQy5OonS2SF6g7mh796ZBFww', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3dwaDBMbFU1ZlVlTUlkY0tkTUhoN0REclR4T3B2Mm9EaWs1M1NydiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710445),
('e7tLziB0XNKdaQge8lPmcDJ8AbOnsETRQm1LiAqL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm9Mc0N1V2VmbXk1SXVkNDFpY2lRYjFTSEhJcVlXQ0c2WUlzdDdxbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710238),
('eFQEjqn23vhZ8uxS3TQ3T4m4t6gJY0KM3cpjhGcS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWlTQlZhblM1aGtQdDlzZ3RiTXY4dXJESDR0b0JhSVluQjBKdDdPZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763272046),
('EIV47WFwEOiMu2UGb2pXpzZDPy31Y7DEwQdPx2nY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjRxSHBndVNtTVBwdFoyRlJtSjltaE9VcngzQmd6SmxXQ0I5NEFUNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264921),
('foEG51qEaxFkMxiS6tNDmssBYmrRPh89V1AGetka', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEU3c0ZrVkhBNHBsR21xb0F3WG9uT0IwTlMzZVJ5QW0yd0hrdlBwVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264922),
('G8hLDIUj10kd8mxuaN7RJTqKDszvQVAXsvxy8yx4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2dWUkZ2czNqeEM1MUs1ckRIREJjd3hDOHVROFpuVDFjRlVGSFZOSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264948),
('gTiSMYcv6cxrLKpPB7KoMJBSAsr6NZ0qKzZuyEC2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXdJdDF2b1BsdkVzWHBNRlY3bzlwcDMxa2p4blBGak5rNUNiMER1MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264681),
('gXf3P2GqWoceTKWUCdvi0KhIbFkrY6rhzMejWvDX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnp3TUw3MDZBTDFCSDd4QnlNN2FuVk5waTZhQ2RqWWx2cFg4WURlUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264915),
('hfpXVjfybtq2Li2SmMkPGfn17CZokjLX72GDTu30', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmkyNENNeTd4ZURaeHZqMkw3NEgyMUlRSkc3QU8wQk9NRFRaYUxXaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264931),
('hNok0EClFMvTPOIeL1DZgvFYow9PebwlzTpGTfUE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmF4S3RQem93c0lPelJvaHdPU2ZmbXl1WkR3dDR4Zzg2WWZidk9RNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763265529),
('irYURvqmmXYQaZUDUAYizssB3ZSekSsoLHkuK6DD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGY4MGV0VjkxRUtTREkzdWZBM1dNTGdGampoWVh5NmlMeGZZaVdBMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710214),
('jqZU6uaLogQLyo2579UCPtMlE9k5fQpmvRljkkqP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3B5NnU5UlJraEt6UlNBNVdQSlJQSzdsOUtqRU1QRGdFMjBsaGpObCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264911),
('jyxbrUFzUMf2U0cAAUvGM5m2dVuvjWtfaqqt41sn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3pGcFlRdTAxNEJjSUhBVTk1cTI1TW0zdHFmUUFzQ0twM2FsNHBOciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264912),
('klQxQH1xXpoHeEFTHMlLQaBHeYAlrJxF822m6zHv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY25BdlZCRUtFa0dSWGZCN2hiekJLMTRtUVYzTWJaYXpaS0ZoTEJtdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763265482),
('L94a4lcGWMEuh2NKpvw3QHgmz6k5cKLq5IfwaXgU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjZ4dDE1TjdmRndpWllQM29hZm1qWWFEQ1M2c3dqbEdiY1BVNmVJNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264921),
('lOGvRp8ryDSt6Vdbwf5T9LbzFaSPTt3StbNgObYu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRk9JdGlqRXg5eG96SGhSZHI0MEEwMWxkV1plVEVDblJSUVdKWlV6UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763265482),
('lTjn70HKJSgBJEntbZPGXN1CKynviwCdwLjxUwIn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWlzWERqSzZVQ0VsdlZhM0ZycnB4NExab0NRb0JHY3lyc0w0M054YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264921),
('LXJPdxhoEbxqnrEfX0rPN5DCL3VzoSmq0Nva6vfY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibk8yNWNSWFlnVFNpMVVPYkdGQVRGNm0xa0x6aW0xeklhcFd0c004aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264841),
('mh51XyDKLyw4XoRDbqY2pGdC4pi6ntchPrxAK7BQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1RLb2docjg0ajJUUzJwTHA1bGJ5c3ZzamVFMUNJWUg3V3lReDdncyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763272050),
('n6cdATojgBUcvlk78yUaQc7LxiV7UE0q2FNhzBcx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmJ1dnowOHE4RzJyZnlRM0xXSkZLeEtaZktCbVJXaE5MdnhYYktOQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710280),
('nH8awyyMfnhEKZa3coYU84O5jNCNugqdlFcUr8qy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjV1R1N2dnVjZVFVajAweFhXMkVpNFBBQjk5OExXazNNWGdZakE1dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264684),
('O70IYsjqBlz8TPjXtnNCRjIIZOcsbZcqqkfvu5qM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFRmcEZpSUhoMDNQTzd2RnJUaGJOTXZTWk9TRTI2aXNjeUNEMlc3byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763265528),
('O9IHNPCoNdaL2hysIbRnIla3N6QAqJBAB1YsBNRy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHJ3NHRkQjNzY3JHNlRHejNyQnlOWnEyajRQNDRpS1NHWHVqckh5eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264921),
('PDinU2vJ53gSH3xXvSRHniQeeXT7GMetNx8XFqWX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamV0aEwyRm1ISGM5YkpQbnhLeGdZeXZoV2hzVURodmRZQWhSN1BZWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763265535),
('Pf6K61PGnJFkcnd4IfzWdvGl3TwBRT7qOIwxK6jf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDFFWUNqaEVvY3BreGhZc24ySWNoN3RpR2xrbGZSUmtpV1MxWWNrTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264919),
('poyKqXzW5SGJ2RYVmNnehDkY2l0ocKzBdZGvURkn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDYyTnkwM1R4OEd5OEphUUNTZUZzMGpXYmExWWdIVGdSVkd3VTh3WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710468),
('QwkVLEJbWVpKD8rR0gEur3Q44RATqPIHJo8c2STh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmltMkdXSVVsd3UxVGduQVoxQVprY3c1VFU2MmV3NjJrVXFUSnduVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264914),
('R4BUhaG2AsplSfqWZFphnMq449j37SjhIh3qSDSt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQU04QmFYQVdtcldpNEQ5UWhMejU1bExkZG90Nm44QWVYRFc0WmYwOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763272072),
('r4KzFxAVYgHozpenKmFOS0UkNa3He0xRmN7sIWVl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1pFQW9CS0JQSGF5VTRuRUdZY1JjQ09YY0paZXhuZkxSSW5mUTZNUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710406),
('rdEGX8kI0oPpmsNjLKjKaTjSFHFdWq8EfNfqbm77', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHF3aDJhMlI3ZXpSQzNteXFuNHlaZ21lRVZUbzg0MWtreDVqeVU4YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264919),
('rkG8pHr4soyQ9L7MXQtvEFUz8hdTSP1sK23be4kn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1JiNkJLNldmajh0T3dyemdrRGUyTTQ2SWc3RTAyMnkxNlZ3RVRXNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710457),
('S8kYgV0A8MwRi8PMBs8Eq2ikNeBFH5BYYVuh7ybS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0lPeW9ZZFdqbm9oS245M2UxS1Z5QXBPbnRPaURvdmRSN1VlNVRocyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264911),
('tNC23JCMBa7HAAGUnnMOnGQUmYy3UNG4y0uJNjQJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicE9FdHk2UmJTeTNFRXplbmJIaWlSV1hXU1Axc1YwQ2RYemRlSHV6NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264915),
('UGNhMg8Kh5hRwbLCBw2IGiD8QXzHxxT28z3yHWF9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2RKMHpDZ1VMUmlFNnZNV1RzSmhZVjJrbUZkWDVkaFhDOTZiWjhITyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763272061),
('uQ7YZ2MPFKMDhc8VA3mYBgArQXpi0kOt55FyHilI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS21YRHlnZkRoczF0ejY0N3lvUEJINE5kd2E4Q3FENXZXU3BEbGtERSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264921),
('wMYqOxAhSbc5kDOg1AxmmEv1o0gNTvCLHVje2Eyr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWFtdzZpWHE2NUNmT3NKZHVMOUFEb3FuNnF5YlhzbWp6aXZZQVpTVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264919),
('WxejY8iSfBSuoRtnLsbWIH6OVWEcDDyJyyT3GnVi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVF4b0l6R1RiOFRZRGo2NHBuUk5ZNlM1NDIxa21XRzRZZGJsTWU2MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264914),
('x369qteQzCsU0t5JXFNiaUoDmRACWVTV2MfLgsh1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickh3Y0Zsc3hoVWttQk93YmE5OTJnbGdEUW44dEhqYlBvOWU4V0ZMVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264920),
('XR1zFFdtYlwsefTcbTv6BrDPf6RAFlsZZLr8AcqH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUG81RFdxNFlJU2drcmhUQzl3cHB4MXBxOGJQMjYyeWV6bUhTbzZqMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762710521),
('xXJYNDvNmfcnCSuoTyVHDQXWG0qK5H66vADw8N1B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickxCREhqejlwY3BWcGRqNkpWcjAxRUdJNkh4Ym54UGdBYUJIaENRdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264912),
('yr6XNyo9yu8oweMHFOOkdbw3mCz0goI9us4Q5Unn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzk4WkRuRVIwQkZOZ24yS2d2Tjk5d09LMUZQR0hoNVQ1dElkaHJzcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264920),
('zVVuNKosZ6d85GnnqMBNslsokb2nofKEhZNb9dz9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:145.0) Gecko/20100101 Firefox/145.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFpubW1peE5GeTFnV1ZJWU1xVnllRmNmU3pVSnZNRjZzZVBINXVGNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1763264919);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `whatsApp` varchar(255) NOT NULL,
  `bkash_number` varchar(255) DEFAULT NULL,
  `emergency` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `admin_photo` varchar(244) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `meta_keywords` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `pphoto` varchar(255) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `currency` varchar(150) DEFAULT NULL,
  `reffer_bonus` int(11) DEFAULT NULL,
  `fblink` varchar(255) DEFAULT NULL,
  `twitterlink` varchar(255) DEFAULT NULL,
  `linkdinlink` varchar(255) DEFAULT NULL,
  `instragramlink` varchar(255) DEFAULT NULL,
  `store_policy` longtext DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `devliery_charge_inside_dhk` int(10) DEFAULT NULL,
  `devliery_charge_outside_dhk` int(10) DEFAULT NULL,
  `register_bonus` int(11) DEFAULT NULL,
  `level_1_bonus` int(11) DEFAULT NULL,
  `level_2_bonus` int(11) DEFAULT NULL,
  `level_3_bonus` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `tel`, `email`, `address`, `whatsApp`, `bkash_number`, `emergency`, `photo`, `description`, `copyright`, `status`, `admin_photo`, `admin_name`, `admin_email`, `admin_phone`, `meta_keywords`, `meta_description`, `pphoto`, `bg_color`, `currency`, `reffer_bonus`, `fblink`, `twitterlink`, `linkdinlink`, `instragramlink`, `store_policy`, `website`, `telegram`, `devliery_charge_inside_dhk`, `devliery_charge_outside_dhk`, `register_bonus`, `level_1_bonus`, `level_2_bonus`, `level_3_bonus`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 'Bir Group', '+880 1301-047166', 'info@vogexi.com', 'Address: 6th & 7th Floor, Navana Osman @link, 214/d Bir Uttam Mir Shawkat Sarak, Dhaka 1208', '+8801301047166', '01740586574', '+880 1301-047166', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'Bir Group Holdings aspires to become one of Bangladesh’s leading diversified distribution and manufacturing companies. The company envisions achieving this by delivering high-quality products across the nation and taking full responsibility for everything it manufactures and distributes. A key part of this vision is treating all retailers and customers fairly and equally, fostering long-term trust and loyalty.', 'Copyright © 2025 birgroup. All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', '', 5, '#', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '', '#', '#', 60, 130, 5, 0, 0, 0, NULL, '2024-05-12 05:32:50', '2025-11-15 23:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'KAI INTERNATIONAL LTD', 1, '2025-11-03 00:09:06', '2025-11-03 00:09:06'),
(2, 'KGI HARDWARE ACCESSORIES LTD.', 1, '2025-11-03 00:09:16', '2025-11-03 00:09:16'),
(3, 'BIR METAL ENGINEERING & MANUFACTURING CO. LTD.', 1, '2025-11-03 00:09:30', '2025-11-03 00:09:30'),
(4, 'XINPENG-BIR INDUSTRIAL CO. LTD.', 1, '2025-11-03 00:09:49', '2025-11-03 00:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_type` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_type`, `email_verified_at`, `password`, `phone_number`, `address`, `facebook`, `website`, `github`, `twitter`, `instagram`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bijon', 'mdbijon@gmail.com', NULL, NULL, '$2y$10$twPRnHMLuDEr0zXTdnKfyuYhy3nR0ulRaS5pQivZxZSuxPyrVKSt2', '01915728982', 'DHK', 'https://www.facebook.com/watch/?ref=tab', '', '', '', '', 1, NULL, '2025-10-09 10:28:23', '2025-10-10 10:36:15'),
(2, 'editor', 'editor@gmail.com', NULL, NULL, '$2y$12$kcRYrErMlXw1PxXC/B3wd.5WCf0Nwbo1fLFWmhsxM/mOfLCdJvI3q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-10-09 11:02:48', '2025-10-09 11:02:48'),
(3, 'admin2', 'admin2@gmail.com', NULL, NULL, '$2y$12$z.nUwSbaASsmm3h2W3BJW.nw17cCDk6wd2F4Et9hIpomsg54NX/u2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-10-09 11:08:24', '2025-10-09 11:08:24'),
(4, 'Viewer', 'viewer@gmail.com', NULL, NULL, '$2y$12$wXWrf0u9FvaM.6x12P7FbuN0JYbVeR7/j1psZenKQWbx5HlOl6M5G', '000564578788', 'DHK', '', '', '', '', '', 1, NULL, '2025-10-09 14:39:31', '2025-10-11 09:20:17'),
(5, 'bijon', 'bijons@gmail.com', NULL, NULL, '$2y$12$6Ci/BJvP8ZAThn7n2VN2Vu6DTjhp7pRzNA7pcJXleN7bjTF1jA.sW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-10-10 08:23:02', '2025-10-10 08:23:02'),
(6, 'Test User', 'test@example.com', NULL, '2025-10-11 09:50:24', '$2y$12$m6LZ2OJvETDpPSIWu6yZKu7N7jGhyPUPxgHyCKtpRvrdKDajSH.D2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zsLFWlsD7r', '2025-10-11 09:50:24', '2025-10-11 09:50:24'),
(7, 'Kamrul Hossain', 'kamrul@gmail.com', 4, NULL, '$2y$12$UQMgC/d8tGbvKhzQYA3b/Ojin0JQWNMvoYsmTwmWPdJ/ZNmQhLBbq', '019157289822', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-10-29 02:11:39', '2025-10-29 02:11:39'),
(8, 'Ibraheem', 'Ibraheem@gmail.com', 4, NULL, '$2y$12$iReLNr8NUqIb1nosueFEcupcx.T2D3mXwZHbmA1VwCVR1FSAIXlqm', '01915729689789', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-10-29 02:17:07', '2025-10-29 02:17:07'),
(9, 'TestCustomer', 'testCustomer@gmail.com', 4, NULL, '$2y$12$CDEhfRkDNQqJ3Rkg1ySiTOyQN7NbMgesRjHvty.CTXFbfRsuHgG32', '02598989899', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-02 03:41:10', '2025-11-02 03:41:10'),
(10, 'test1', 'test1@gmail.com', 4, NULL, '$2y$12$wzaLJmZ8YnxG0MP5yk48POa8b27JgVTy0QBRGrTTX1WrAyHdMfE1S', '01915728985', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-02 03:42:41', '2025-11-02 03:42:41'),
(11, 'sdfsdf', 'mdbion@gmail.com', 4, NULL, '$2y$12$AuaqFCG4trBvP8HFHnak6OdIeRVdKRWeQ.COJd/Fm/gBZ6.7yD.Jm', '29989999', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-16 09:17:25', '2025-11-16 09:17:25'),
(12, 'fgfg', 'df@gmail.com', 4, NULL, '$2y$12$6bs4NPy9OGRhHv5T9sC6WOl2jqFUO84SIL5ekh1cgdHrZf9bDhMk.', '59878888', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-16 09:40:59', '2025-11-16 09:40:59'),
(13, 'Bijon', 'bijon@gmail.com', 4, NULL, '$2y$12$HgYJ9Ikf/QAnlE9gYJilMOHjPYMli51X/BoxgmNQh7Te0LbgjgdO2', '018578785885', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-16 09:46:01', '2025-11-16 09:46:01'),
(14, 'Kabir', 'kabir@gmail.com', 4, NULL, '$2y$12$fBqbEWJD7cCilCN1J70yXOeJcFrWej8ZTma8Z522zX3ZTd40C1USW', '934893489349', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-16 10:13:19', '2025-11-16 10:13:19'),
(15, 'jons', 'jons@gmail.com', 4, NULL, '$2y$12$SH3zPbqNRpYzqIHwflVG/.f7u08JQED7r139wptkSn3iHbG8tHOhW', '39489348934', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-16 10:15:53', '2025-11-16 10:15:53'),
(16, 'Kabir', 'kab@gmail.com', 4, NULL, '$2y$12$zqdA4OiIc7raLrsaA/uonOZDPmFFymFcOu0X7kV7Or.WUccgedjnq', '123456', 'DHKA', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-16 10:51:59', '2025-11-16 10:51:59'),
(17, 'kazol123', 'kazol@gmail.com', 4, NULL, '$2y$12$KFsCv/YOTLZhzUWVm78R1OTSDCsDsc3qkqPgOHuxMGLoRCK/2F0xe', '01915728983', 'DHK', '', '', '', '', '', 1, NULL, '2025-11-16 10:54:17', '2025-11-17 15:10:50'),
(18, 'Sujon', 'sujonahmed@gmail.com', 4, NULL, '$2y$12$W6oVE3e0910nvj4gUxrpt.HUCZCzeTOmE7EEW54hsr3n0/b1AfrbG', '3940850', 'DHK', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-16 22:08:29', '2025-11-16 22:08:29'),
(19, 'roman', 'roman@gmail.com', 4, NULL, '$2y$12$84ERbB5kPpczQ3PeqUMXWugpz0dSblx.9AGRnTPXpi4bvsyhHn3wm', '01929838494', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-17 14:26:22', '2025-11-17 15:09:15'),
(20, 'Korban', 'Korban@gmail.com', 4, NULL, '$2y$12$rK1yaMOvA5eUZT30Ck84v.q/KPXiMSE5yltxjRxmcDvkwZf5R4NLq', '01915263566', 'DHK', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-23 09:47:40', '2025-11-23 09:47:40'),
(21, 'Jonaki', 'jonaki@gmail.com', 4, NULL, '$2y$12$SoP4SyD2Xr9Ck17N7WHtXuqaMvKPX1EdFLGZFw3D3PJwPh9JQ34F2', '01938484848', 'DHK', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-23 09:55:44', '2025-11-23 09:55:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `product_attribue`
--
ALTER TABLE `product_attribue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_img_history`
--
ALTER TABLE `product_img_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_inventory`
--
ALTER TABLE `product_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_invoice`
--
ALTER TABLE `purchase_order_invoice`
  ADD KEY `order_id` (`purchase_order_id`);

--
-- Indexes for table `purchase_order_particular`
--
ALTER TABLE `purchase_order_particular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles_type`
--
ALTER TABLE `roles_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `product_attribue`
--
ALTER TABLE `product_attribue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `product_img_history`
--
ALTER TABLE `product_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `purchase_order_particular`
--
ALTER TABLE `purchase_order_particular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles_type`
--
ALTER TABLE `roles_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_order_invoice`
--
ALTER TABLE `purchase_order_invoice`
  ADD CONSTRAINT `purchase_order_invoice_ibfk_1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order_particular` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
