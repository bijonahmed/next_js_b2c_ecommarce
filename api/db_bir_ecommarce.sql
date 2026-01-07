-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2026 at 06:09 PM
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
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:6:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"d\";s:9:\"role_type\";s:1:\"e\";s:9:\"parent_id\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:63:{i:0;a:6:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"view posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:27;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:6:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"create posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:27;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:6:{s:1:\"a\";i:3;s:1:\"b\";s:10:\"edit posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:27;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:5:{s:1:\"a\";i:4;s:1:\"b\";s:12:\"delete posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:27;}i:4;a:6:{s:1:\"a\";i:5;s:1:\"b\";s:10:\"view users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:28;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:6:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"create users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:28;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:6:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"edit users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:28;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:5:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"delete users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:28;}i:8;a:6:{s:1:\"a\";i:9;s:1:\"b\";s:13:\"view products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:29;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:9;a:6:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"create products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:29;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:6:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"edit products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:29;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:5:{s:1:\"a\";i:12;s:1:\"b\";s:15:\"delete products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:29;}i:12;a:6:{s:1:\"a\";i:14;s:1:\"b\";s:19:\"view posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:6:{s:1:\"a\";i:15;s:1:\"b\";s:21:\"create posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:6:{s:1:\"a\";i:16;s:1:\"b\";s:19:\"edit posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:5:{s:1:\"a\";i:17;s:1:\"b\";s:21:\"delete posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:30;}i:16;a:6:{s:1:\"a\";i:22;s:1:\"b\";s:9:\"view role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:31;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:6:{s:1:\"a\";i:23;s:1:\"b\";s:11:\"create role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:31;s:1:\"r\";a:1:{i:0;i:2;}}i:18;a:6:{s:1:\"a\";i:24;s:1:\"b\";s:9:\"edit role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:31;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:5:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"delete role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:31;}i:20;a:5:{s:1:\"a\";i:26;s:1:\"b\";s:22:\"Update website setting\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:21;a:5:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"Post Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:22;a:5:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"User Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:23;a:5:{s:1:\"a\";i:29;s:1:\"b\";s:19:\"Products Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:24;a:5:{s:1:\"a\";i:30;s:1:\"b\";s:24:\"Post Category Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:25;a:5:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"Role Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:26;a:5:{s:1:\"a\";i:32;s:1:\"b\";s:21:\"Permission Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:27;a:6:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"view permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:6:{s:1:\"a\";i:34;s:1:\"b\";s:17:\"create permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:6:{s:1:\"a\";i:35;s:1:\"b\";s:15:\"edit permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:5:{s:1:\"a\";i:36;s:1:\"b\";s:17:\"delete permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;}i:31;a:5:{s:1:\"a\";i:37;s:1:\"b\";s:28:\"Products Category Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:32;a:6:{s:1:\"a\";i:38;s:1:\"b\";s:21:\"view product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:6:{s:1:\"a\";i:39;s:1:\"b\";s:23:\"create product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:6:{s:1:\"a\";i:40;s:1:\"b\";s:21:\"edit product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:5:{s:1:\"a\";i:41;s:1:\"b\";s:23:\"delete product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;}i:36;a:5:{s:1:\"a\";i:42;s:1:\"b\";s:17:\"Banner Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:37;a:6:{s:1:\"a\";i:43;s:1:\"b\";s:11:\"view banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:6:{s:1:\"a\";i:44;s:1:\"b\";s:13:\"create banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:6:{s:1:\"a\";i:45;s:1:\"b\";s:11:\"edit banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:5:{s:1:\"a\";i:46;s:1:\"b\";s:13:\"delete banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;}i:41;a:5:{s:1:\"a\";i:47;s:1:\"b\";s:19:\"Supplier Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:42;a:6:{s:1:\"a\";i:48;s:1:\"b\";s:13:\"view supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:6:{s:1:\"a\";i:49;s:1:\"b\";s:15:\"create supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:6:{s:1:\"a\";i:50;s:1:\"b\";s:13:\"edit supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:5:{s:1:\"a\";i:51;s:1:\"b\";s:15:\"delete supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;}i:46;a:5:{s:1:\"a\";i:52;s:1:\"b\";s:25:\"Purchase Order Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:47;a:6:{s:1:\"a\";i:53;s:1:\"b\";s:19:\"view purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:6:{s:1:\"a\";i:54;s:1:\"b\";s:21:\"create purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:6:{s:1:\"a\";i:55;s:1:\"b\";s:19:\"edit purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:5:{s:1:\"a\";i:56;s:1:\"b\";s:21:\"delete purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;}i:51;a:5:{s:1:\"a\";i:57;s:1:\"b\";s:18:\"Product Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:52;a:6:{s:1:\"a\";i:58;s:1:\"b\";s:12:\"view product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:6:{s:1:\"a\";i:59;s:1:\"b\";s:14:\"create product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:6:{s:1:\"a\";i:60;s:1:\"b\";s:12:\"edit product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:5:{s:1:\"a\";i:61;s:1:\"b\";s:14:\"delete product\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:57;}i:56;a:5:{s:1:\"a\";i:62;s:1:\"b\";s:16:\"Order Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:57;a:6:{s:1:\"a\";i:63;s:1:\"b\";s:10:\"view order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:6:{s:1:\"a\";i:64;s:1:\"b\";s:12:\"create order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:6:{s:1:\"a\";i:65;s:1:\"b\";s:10:\"edit order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:5:{s:1:\"a\";i:66;s:1:\"b\";s:12:\"delete order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:62;}i:61;a:5:{s:1:\"a\";i:67;s:1:\"b\";s:19:\"Customer Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:62;a:6:{s:1:\"a\";i:68;s:1:\"b\";s:13:\"view Customer\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:67;s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:1;}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"editor\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:2;}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"viewer\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:3;}}}', 1767798025);

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
(2, 'KGI Hardware', 'kgi-hardware', 0, 2, 1, 'uploads/categories/thumb_1761880670.gif', 'uploads/categories/thumb_1761911067.jpg', NULL, '2025-12-10 16:25:06'),
(27, 'Aluminium ladder - Industrial Grade I7100', 'aluminium-ladder-industrial-grade-i7100', 82, 1, 1, NULL, NULL, NULL, NULL),
(28, 'Aluminium ladder - Household Grade 1000', 'aluminium-ladder-household-grade-1000', 82, 2, 1, NULL, NULL, NULL, NULL),
(29, 'Aluminium ladder - Household Grade 700', 'aluminium-ladder-household-grade-700', 82, 3, 1, NULL, NULL, NULL, NULL),
(30, 'Concrete Nail - MS', 'concrete-nail-ms', 82, 4, 1, NULL, NULL, NULL, NULL),
(31, 'Stainless Steel Screws', 'stainless-steel-screws', 82, 5, 1, NULL, NULL, NULL, NULL),
(32, 'Brad Nails', 'brad-nails', 82, 6, 1, NULL, NULL, NULL, NULL),
(77, 'BMI', 'bmi', 0, 3, 1, 'uploads/categories/thumb_1761909117.gif', 'uploads/categories/thumb_1761968367.png', NULL, '2025-12-10 14:11:23'),
(78, 'Vikars Ladder', 'vikars-ladder', 0, 4, 1, 'uploads/categories/thumb_1761909181.gif', 'uploads/categories/thumb_1761966547.jpg', NULL, '2025-12-12 13:13:06'),
(79, 'WD-40 Anti Rust Spray', 'wd-40-anti-rust-spray', 0, 5, 1, 'uploads/categories/thumb_1761909067.gif', 'uploads/categories/thumb_1761966831.jpg', NULL, '2025-12-12 13:13:01'),
(80, 'Makita Power Tools', 'makita-power-tools', 0, 6, 0, 'uploads/categories/thumb_1761908999.gif', 'uploads/categories/thumb_1761968977.png', NULL, '2025-12-12 13:27:16'),
(81, 'Spare Parts-Power Tools', 'spare-parts-power-tools', 0, 7, 1, NULL, NULL, NULL, '2025-12-12 13:12:51'),
(82, 'Bir Consumer', 'bir-consumer', 0, 8, 1, 'uploads/categories/thumb_1765546049.gif', 'uploads/categories/thumb_1765546059.png', NULL, '2025-12-12 13:27:39'),
(96, 'Aluminium Level', 'aluminium-level', 1, 0, 1, NULL, NULL, '2025-12-07 20:49:13', '2025-12-07 20:49:13'),
(97, 'Cutting Disc', 'cutting-disc', 1, 0, 1, NULL, NULL, '2025-12-07 20:49:23', '2025-12-07 20:49:23'),
(98, 'Cutting Tools', 'cutting-tools', 1, 0, 1, NULL, NULL, '2025-12-07 20:49:31', '2025-12-07 20:49:31'),
(99, 'Dril Bit', 'dril-bit', 1, 0, 1, NULL, NULL, '2025-12-07 20:49:42', '2025-12-07 20:49:42'),
(100, 'Drill chuck', 'drill-chuck', 1, 0, 1, NULL, NULL, '2025-12-07 20:49:48', '2025-12-07 20:49:48'),
(101, 'File', 'file', 1, 0, 1, NULL, NULL, '2025-12-07 20:49:53', '2025-12-07 20:49:53'),
(102, 'Hammer', 'hammer', 1, 0, 1, NULL, NULL, '2025-12-07 20:49:58', '2025-12-07 20:49:58'),
(103, 'Hand Saw', 'hand-saw', 1, 0, 1, NULL, NULL, '2025-12-07 20:50:03', '2025-12-07 20:50:03'),
(104, 'House Tools', 'house-tools', 1, 0, 1, NULL, NULL, '2025-12-07 20:50:08', '2025-12-07 20:50:08'),
(105, 'LN Key', 'ln-key', 1, 0, 1, NULL, NULL, '2025-12-07 20:50:14', '2025-12-07 20:50:14'),
(108, 'Pad Lock', 'pad-lock', 1, 0, 1, NULL, NULL, '2025-12-07 20:50:54', '2025-12-07 20:50:54'),
(109, 'Plier', 'plier', 1, 0, 1, NULL, NULL, '2025-12-07 20:51:03', '2025-12-07 20:51:03'),
(110, 'Power Tools', 'power-tools', 1, 0, 1, NULL, NULL, '2025-12-07 20:51:09', '2025-12-07 20:51:09'),
(111, 'Rivet Gun', 'rivet-gun', 1, 0, 1, NULL, NULL, '2025-12-07 20:51:16', '2025-12-07 20:51:16'),
(112, 'Screw Driver', 'screw-driver', 1, 0, 1, NULL, NULL, '2025-12-07 20:51:21', '2025-12-07 20:51:21'),
(113, 'Socket', 'socket', 1, 0, 1, NULL, NULL, '2025-12-07 20:51:26', '2025-12-07 20:51:26'),
(114, 'Spanner', 'spanner', 1, 0, 1, NULL, NULL, '2025-12-07 20:51:32', '2025-12-07 20:51:32'),
(115, 'Tape', 'tape', 1, 0, 1, NULL, NULL, '2025-12-07 20:51:37', '2025-12-07 20:51:37'),
(116, 'Wrench', 'wrench', 1, 0, 1, NULL, NULL, '2025-12-07 20:51:42', '2025-12-07 20:51:42'),
(117, 'SS Door Hinge (এস এস দরজার কব্জা)', 'ss-door-hinge-es-es-drjar-kbja', 77, 0, 1, NULL, NULL, '2025-12-10 20:12:08', '2025-12-10 20:12:08'),
(118, 'Butterfy Hinge (প্রজাপতি কব্জা)', 'butterfy-hinge-prjapti-kbja', 77, 0, 1, NULL, NULL, '2025-12-10 20:12:15', '2025-12-10 20:12:15'),
(119, 'Tower Bolt - (ছিটকিনি)', 'tower-bolt-chitkini', 77, 0, 1, NULL, NULL, '2025-12-10 20:12:22', '2025-12-10 20:12:22'),
(120, '6\" Piano Hinge (পিয়ানো কব্জা)', '6-piano-hinge-piyano-kbja', 77, 0, 1, NULL, NULL, '2025-12-10 20:12:27', '2025-12-10 20:12:27'),
(121, 'Iron Drawer Lock (আইরন ড্রয়ের তালা)', 'iron-drawer-lock-airn-dryer-tala', 77, 0, 1, NULL, NULL, '2025-12-10 20:12:32', '2025-12-10 20:12:32'),
(122, 'Window Roller  (জানালার রোলার)', 'window-roller-janalar-rolar', 77, 0, 1, NULL, NULL, '2025-12-10 20:12:38', '2025-12-10 20:12:38'),
(123, 'SS Drawer Channel (এসএস ড্রয়ার চ্যানেল)', 'ss-drawer-channel-eses-drzar-czanel', 77, 0, 1, NULL, NULL, '2025-12-10 20:12:46', '2025-12-10 20:12:46'),
(129, 'Foldable Cloth Drying Rack (Stainless Steel & Aluminium Bar)', 'foldable-cloth-drying-rack-stainless-steel-aluminium-bar', 82, 0, 1, NULL, NULL, '2025-12-10 21:53:58', '2025-12-10 21:53:58'),
(130, 'Sponge Kit', 'sponge-kit', 2, 0, 0, NULL, NULL, '2025-12-10 22:27:08', '2025-12-10 22:27:08'),
(131, 'Painting Tools 7\" Roller', 'painting-tools-7-roller', 2, 0, 0, NULL, NULL, '2025-12-10 22:27:22', '2025-12-10 22:27:22'),
(132, 'Painting Tools 6\" Roller', 'painting-tools-6-roller', 2, 0, 1, NULL, NULL, '2025-12-10 22:27:30', '2025-12-10 22:27:30'),
(133, 'Hydrolic & Normal Concealed Hinge', 'hydrolic-normal-concealed-hinge', 2, 0, 0, NULL, NULL, '2025-12-10 22:27:39', '2025-12-10 22:27:39'),
(134, 'LPG Regulator', 'lpg-regulator', 2, 0, 1, NULL, NULL, '2025-12-10 22:27:55', '2025-12-10 22:27:55'),
(135, 'Drawer Lock-Zinc', 'drawer-lock-zinc', 2, 0, 1, NULL, NULL, '2025-12-10 22:28:00', '2025-12-10 22:28:00'),
(136, 'Piano Hinge', 'piano-hinge', 2, 0, 0, NULL, NULL, '2025-12-10 22:28:05', '2025-12-10 22:28:05'),
(137, 'Rim Lock-Iron', 'rim-lock-iron', 2, 0, 1, NULL, NULL, '2025-12-10 22:28:12', '2025-12-10 22:28:12'),
(138, 'Liver Lock-High Quality', 'liver-lock-high-quality', 2, 0, 1, NULL, NULL, '2025-12-10 22:28:38', '2025-12-10 22:28:38'),
(139, 'Door Closer- Can hold up to 80 kg', 'door-closer-can-hold-up-to-80-kg', 2, 0, 1, NULL, NULL, '2025-12-10 22:28:44', '2025-12-10 22:28:44'),
(140, 'Door Knocker with Viewer-Zinc', 'door-knocker-with-viewer-zinc', 2, 0, 1, NULL, NULL, '2025-12-10 22:28:50', '2025-12-10 22:28:50'),
(141, 'Door Chain-Zinc', 'door-chain-zinc', 2, 0, 1, NULL, NULL, '2025-12-10 22:28:55', '2025-12-10 22:28:55'),
(142, 'Door Viewer', 'door-viewer', 2, 0, 0, NULL, NULL, '2025-12-10 22:29:03', '2025-12-10 22:29:03'),
(143, 'Door Stopper', 'door-stopper', 2, 0, 1, NULL, NULL, '2025-12-10 22:29:09', '2025-12-10 22:29:09'),
(144, 'Dead Bolt / Security Lock', 'dead-bolt-security-lock', 2, 0, 1, NULL, NULL, '2025-12-10 22:29:14', '2025-12-10 22:29:14'),
(145, 'Handle Lock -Big - 68 MM X 60 MM. SS Body Cylinder & Latch Brass With SB Finish.', 'handle-lock-big-68-mm-x-60-mm-ss-body-cylinder-latch-brass-with-sb-finish', 2, 0, 0, NULL, NULL, '2025-12-10 22:29:34', '2025-12-10 22:29:34'),
(146, 'Zinc Handle Lock -Medium- 85 MM X 45 MM. SS Body. Cylinder & Latch Brass with SB Finish. 4 Pcs Computer key', 'zinc-handle-lock-medium-85-mm-x-45-mm-ss-body-cylinder-latch-brass-with-sb-finish-4-pcs-computer-key', 2, 0, 1, NULL, NULL, '2025-12-10 22:30:09', '2025-12-10 22:30:09'),
(147, 'Round Lock- Zinc-58 MM Knob.80 MM Rose Plate-Brass Key', 'round-lock-zinc-58-mm-knob80-mm-rose-plate-brass-key', 2, 0, 1, NULL, NULL, '2025-12-10 22:30:24', '2025-12-10 22:30:24'),
(148, 'Round Lock- SS Sheet - 58 MM Knob.80 MM Rose Plate-Brass Key', 'round-lock-ss-sheet-58-mm-knob80-mm-rose-plate-brass-key', 2, 0, 1, NULL, NULL, '2025-12-10 22:30:40', '2025-12-10 22:30:40');

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
  `pathao_consignment_id` varchar(255) DEFAULT NULL,
  `pathao_merchant_order_id` varchar(255) DEFAULT NULL,
  `pathao_order_status` varchar(100) DEFAULT NULL,
  `pathao_delivery_fee` varchar(50) DEFAULT NULL,
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

INSERT INTO `orders` (`id`, `orderId`, `pathao_consignment_id`, `pathao_merchant_order_id`, `pathao_order_status`, `pathao_delivery_fee`, `customer_id`, `shipping_phone`, `address`, `coupons`, `order_date`, `payment_type`, `subtotal`, `amount`, `discount`, `discount_amount`, `grand_total`, `advance`, `due`, `order_status`, `bkash_number`, `transaction_id`, `paymentMethod`, `devliery_charge`, `order_type`, `coupon_code`, `coupon_offer_status`, `orderUpdateDate`, `orderUpdateby`, `created_at`, `updated_at`) VALUES
(1, '00000001', NULL, NULL, NULL, NULL, 1, '01915728982', 'DHK', '', '2025-12-25', NULL, 20.00, NULL, 0, 0.00, 80.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-12-25 06:21:15', '2025-12-25 12:21:15'),
(2, '00000002', NULL, NULL, NULL, NULL, 1, '01915728982', 'DHK', '', '2025-12-25', NULL, 20.00, NULL, 0, 0.00, 80.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-12-25 06:23:00', '2025-12-25 12:23:00'),
(3, '00000003', NULL, NULL, NULL, NULL, 1, '01915728982', 'DHK', '', '2025-12-25', NULL, 20.00, NULL, 0, 0.00, 80.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-12-25 06:23:49', '2025-12-25 12:23:49'),
(4, '00000004', NULL, NULL, NULL, NULL, 1, '01915728982', 'sss', '', '2025-12-25', NULL, 10.00, NULL, 0, 0.00, 70.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-12-25 06:28:19', '2025-12-25 12:28:19'),
(5, '00000005', NULL, NULL, NULL, NULL, 1, '01915728982', 'DGJ', '', '2025-12-25', NULL, 10.00, NULL, 0, 0.00, 70.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-12-25 06:31:39', '2025-12-25 12:31:39'),
(6, '00000006', NULL, NULL, NULL, NULL, 1, '01915728982', 'DGJ', '', '2025-12-25', NULL, 10.00, NULL, 0, 0.00, 70.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-12-25 06:33:49', '2025-12-25 12:33:49'),
(7, '00000007', NULL, NULL, NULL, NULL, 1, '01915728982', 'DGHK', '', '2025-12-25', NULL, 10.00, NULL, 0, 0.00, 70.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-12-25 06:36:22', '2025-12-25 12:36:22'),
(8, '00000008', NULL, NULL, NULL, NULL, 1, '01915728982', 'DHK', '', '2025-12-25', NULL, 10.00, NULL, 0, 0.00, 70.00, NULL, NULL, 1, NULL, NULL, 'cash', 60.00, 1, NULL, NULL, NULL, NULL, '2025-12-25 06:38:06', '2025-12-25 12:38:06');

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
(1, 1, 406, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:21:15', '2025-12-25 06:21:15'),
(2, 1, 405, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:21:15', '2025-12-25 06:21:15'),
(3, 2, 406, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:23:00', '2025-12-25 06:23:00'),
(4, 2, 405, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:23:00', '2025-12-25 06:23:00'),
(5, 3, 406, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:23:49', '2025-12-25 06:23:49'),
(6, 3, 405, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:23:49', '2025-12-25 06:23:49'),
(7, 4, 406, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:28:19', '2025-12-25 06:28:19'),
(8, 5, 406, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:31:39', '2025-12-25 06:31:39'),
(9, 6, 406, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:33:49', '2025-12-25 06:33:49'),
(10, 7, 406, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:36:22', '2025-12-25 06:36:22'),
(11, 8, 406, NULL, '', 1, 10.00, 10.00, '2025-12-25 06:38:06', '2025-12-25 06:38:06');

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
(9, 'Return complete', 'A refund has been initiated and processed for the customer.', 1, '2023-12-04 11:15:23', '2023-12-04 05:59:17'),
(10, 'Order Received & Send to Pathao', 'Send to Pathao', 1, '2023-12-04 11:15:23', '2023-12-04 05:59:17');

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
-- Table structure for table `pathao_tokens`
--

CREATE TABLE `pathao_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `access_token` text NOT NULL,
  `refresh_token` text NOT NULL,
  `expires_in` int(11) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pathao_tokens`
--

INSERT INTO `pathao_tokens` (`id`, `access_token`, `refresh_token`, `expires_in`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIzNTIiLCJhdWQiOlsiMjY3Il0sImV4cCI6MTc3MjEwOTI3NCwibmJmIjoxNzY0MzMzMjc0LCJpYXQiOjE3NjQzMzMyNzQsImp0aSI6IjY1NjU4YzY1ZjU5NzRjZDZhNGE3OGE3MTIwZWIyZjVjNGQxOTYzOGM3MjBiYWYwOTQyOWMyOWVjNzk0MzgyYmIiLCJtZXJjaGFudF9pZCI6Iks0b2VFOWtlMEIiLCJzY29wZXMiOltdfQ.HdpzFl10Ul7lDW9x2lsDt73FGDnCD8JNYfmIjVKviSp0lyJ_E4YV9b_3XLcLzvkXk8wuCWcR3QM4K3Lp4e3gpQ114g5BLXNYxZGIkA6nRs23inWUv43oM8g73LYwPMMDyZo6nTpL6HMKbQaeilSfl7n8f-yf5h-e2U21uEoeHdE-u2NyXxLvkvW0kIhsnO-uhXyYmoCCEZXHv31Z_xFRTAEgGDb4NsifWgOcCNbzAU6tiZXymCGmSuKE1Kod0Xnw7znqWGULNVofSrogYwc0kuLFRnUvagBp6jvydhPxUJfAgSKu4561xC7HI3mmwsnfOZ-UeGVSgblkNAcFnvGy4xCx3OhU8of63BbFY9eGbmP1lVp8UvvoKLn03A7MZWP8qNOr4Cn9clhuVYc0ZdER3QprIqhVsknPvPRs-eodnKsCuxR-gNr3NCaLYZSKxpY7y_RcxtbIBdJOr04nj3s0HgnaZ_gbuI5aGfdqGdqTD7AtJDqUvZg7w1ukazHQJL-fScbvAGmbzIBN8wV5IsYp8QswGzfqFCJh6uYLBSCJ5ZajwViNVX10bXUFyrefrZ_8-uxG53ozyWjThtvyR7UoRJSNA9Hx2U76yvdXlZi4PxwsPgCw5EGVXmPi-n3hNM6McMP5bffey-PnSVsDhbu1CYRMVw417NdOPtdT7WWq0oI', 'def502006775528b6f041dbeb1e89312605e2aa5d92fc7daf9eaad2fabccfa35e54f4cba0474e063cf12770d72be55b346a7cfda987df6dca6159bdbee1a20ec686326b705e7cc90a062f52167901f4145fe19165d3882a57920cab75f8e3c42d388ed0e7bc7d3b6abd608700e4b36fdcf2f8b7a461611f1850e1aa4f46ceceed2344f15785ab03b3fa44572b2830206e2d35942c3f827e89b1fd20220db48b725857f9bba5d0442748e5f102c7f03eccd903572edb8c713ed251026d6a45838b10279a3ce092c0cb2f92ce93ccea8145191b6e48f38b5193ad3b10c2a2fd67b0da5eedc1a9834a01e7d1d4b50e4ecb0e8d599f2e6dd4128faa5ecc3aec51c086f04980d9f30165d3cf6fd652b6b134542c7dfc6e3aa48be5b38ba09c62f9994d9e770b1cd2c52a5385ed7d0f15f74fb13e518f1d5304473e2f91587ff5ae614a00dd1dbdf09fcf176d945520ff67acdbb72ecc088caf08514', 7776000, '2026-02-26 06:34:36', '2025-11-28 06:34:36', '2025-11-28 06:34:36');

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
(1, 'Air Heat Gun-2000 Watt (KT-22-600N)', 'air-heat-gun-2000-watt-kt-22-600n', '<p>Air Heat Gun-2000 Watt (KT-22-600N)<br>&nbsp;</p>', 12, 3, 1, 110, 'Air Heat Gun-2000 Watt (KT-22-600N)', 'Air Heat Gun-2000 Watt (KT-22-600N)', 'Air Heat Gun-2000 Watt (KT-22-600N)', NULL, NULL, 4.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765208742_air-heat-gun-2000-watt-kt-22-600n.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:45:42'),
(2, 'Angle Grinder-950 Watt,100mm (MTK-11100)', 'angle-grinder-950-watt100mm-mtk-11100', '<p>Angle Grinder-950 Watt,100mm (MTK-11100)</p>', 12, 3, 1, 110, 'Angle Grinder-950 Watt,100mm (MTK-11100)', 'Angle Grinder-950 Watt,100mm (MTK-11100)', 'Angle Grinder-950 Watt,100mm (MTK-11100)', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765208766_angle-grinder-950-watt100mm-mtk-11100.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:46:06'),
(3, 'Demolition Hammer 1300 Watt (MTK-9035)', 'demolition-hammer-1300-watt-mtk-9035', '<p>Demolition Hammer 1300 Watt (MTK-9035)</p>', 12, 3, 1, 110, 'Demolition Hammer 1300 Watt (MTK-9035)', 'Demolition Hammer 1300 Watt (MTK-9035)', 'Demolition Hammer 1300 Watt (MTK-9035)', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765208787_demolition-hammer-1300-watt-mtk-9035.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:46:27'),
(4, 'Electic Router 2200 Watt (MTK-5112)', 'electic-router-2200-watt-mtk-5112', '<p>Electic Router 2200 Watt (MTK-5112)</p>', 12, 3, 1, 110, 'Electic Router 2200 Watt (MTK-5112)', 'Electic Router 2200 Watt (MTK-5112)', 'Electic Router 2200 Watt (MTK-5112)', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765208874_electic-router-2200-watt-mtk-5112.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:47:54'),
(5, 'Electric Blower 650 Watt (KY-2125)', 'electric-blower-650-watt-ky-2125', '<p>Electric Blower 650 Watt (KY-2125)</p>', 12, 3, 1, 110, 'Electric Blower 650 Watt (KY-2125)', 'Electric Blower 650 Watt (KY-2125)', 'Electric Blower 650 Watt (KY-2125)', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765208892_electric-blower-650-watt-ky-2125.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:48:12'),
(6, 'Electric Planer -750 Watt (MTK-5182)', 'electric-planer-750-watt-mtk-5182', '<p>Electric Planer -750 Watt (MTK-5182)</p>', 12, 3, 1, 110, 'Electric Planer -750 Watt (MTK-5182)', 'Electric Planer -750 Watt (MTK-5182)', 'Electric Planer -750 Watt (MTK-5182)', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208916_electric-planer-750-watt-mtk-5182.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:48:36'),
(7, 'Impact Drill-750 Watt (MTK-2013)', 'impact-drill-750-watt-mtk-2013', '<p>Impact Drill-750 Watt (MTK-2013)</p>', 12, 3, 1, 110, 'Impact Drill-750 Watt (MTK-2013)', 'Impact Drill-750 Watt (MTK-2013)', 'Impact Drill-750 Watt (MTK-2013)', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208938_impact-drill-750-watt-mtk-2013.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:48:58'),
(8, 'Rotary Hammer 800 Watt (MTK-1626)', 'rotary-hammer-800-watt-mtk-1626', '<p>Rotary Hammer 800 Watt (MTK-1626)</p>', 12, 3, 1, 110, 'Rotary Hammer 800 Watt (MTK-1626)', 'Rotary Hammer 800 Watt (MTK-1626)', 'Rotary Hammer 800 Watt (MTK-1626)', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208964_rotary-hammer-800-watt-mtk-1626.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:49:24'),
(9, 'Hack Saw Frame-12\" Pro.Quality', 'hack-saw-frame-12-proquality', '<p>Hack Saw Frame-12\" Pro.Quality</p>', 12, 3, 1, 110, 'Hack Saw Frame-12\" Pro.Quality', 'Hack Saw Frame-12\" Pro.Quality', 'Hack Saw Frame-12\" Pro.Quality', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765208986_hack-saw-frame-12-proquality.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:49:46'),
(10, 'Pad Lock Pro Quality 63mm Cross Key', 'pad-lock-pro-quality-63mm-cross-key', '<p>Pad Lock Pro Quality 63mm Cross Key</p>', 12, 3, 1, 110, 'Pad Lock Pro Quality 63mm Cross Key', 'Pad Lock Pro Quality 63mm Cross Key', 'Pad Lock Pro Quality 63mm Cross Key', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209012_pad-lock-pro-quality-63mm-cross-key.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:50:12'),
(11, 'Pro Riveter-10.5\"', 'pro-riveter-105', '<p>Pro Riveter-10.5\"</p>', 12, 3, 1, 110, 'Pro Riveter-10.5\"', 'Pro Riveter-10.5\"', 'Pro Riveter-10.5\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209037_pro-riveter-105.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:50:37'),
(12, 'European & American Type Riveter-9.5\"', 'european-american-type-riveter-95', '<p>European &amp; American Type Riveter-9.5\"</p>', 12, 3, 1, 111, 'European & American Type Riveter-9.5\"', 'European & American Type Riveter-9.5\"', 'European & American Type Riveter-9.5\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208358_european-american-type-riveter-95.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:39:18'),
(13, 'Glue Gun- (60W)', 'glue-gun-60w', '<p>Glue Gun- (60W)</p>', 12, 3, 1, 111, 'Glue Gun- (60W)', 'Glue Gun- (60W)', 'Glue Gun- (60W)', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767718088_glue-gun-60w.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:48:08'),
(14, 'Silicone Gun Fram Type-9\"', 'silicone-gun-fram-type-9', '<p>Silicone Gun Fram Type-9\"</p>', 12, 3, 1, 111, 'Silicone Gun Fram Type-9\"', 'Silicone Gun Fram Type-9\"', 'Silicone Gun Fram Type-9\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208411_silicone-gun-fram-type-9.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:40:11'),
(15, 'Silicone Gun-Heavy Duty with Rubber Grip(Red) 9\"', 'silicone-gun-heavy-duty-with-rubber-gripred-9', '<p>Silicone Gun-Heavy Duty with Rubber Grip(Red) 9\"</p>', 12, 3, 1, 111, 'Silicone Gun-Heavy Duty with Rubber Grip(Red) 9\"', 'Silicone Gun-Heavy Duty with Rubber Grip(Red) 9\"', 'Silicone Gun-Heavy Duty with Rubber Grip(Red) 9\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208434_silicone-gun-heavy-duty-with-rubber-gripred-9.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:40:34'),
(16, 'Silicone Gun with Sheet 9\"', 'silicone-gun-with-sheet-9', '<p>Silicone Gun with Sheet 9\"</p>', 12, 3, 1, 111, 'Silicone Gun with Sheet 9\"', 'Silicone Gun with Sheet 9\"', 'Silicone Gun with Sheet 9\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208459_silicone-gun-with-sheet-9.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:40:59'),
(17, 'Silicon Gun Gold Color-15\'\'', 'silicon-gun-gold-color-15', '<p>Silicon Gun Gold Color-15\'\'</p>', 12, 3, 1, 111, 'Silicon Gun Gold Color-15\'\'', 'Silicon Gun Gold Color-15\'\'', 'Silicon Gun Gold Color-15\'\'', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208479_silicon-gun-gold-color-15.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:41:19'),
(18, 'Wire Strippier-7\"', 'wire-strippier-7', '<p>Wire Strippier-7\"</p>', 12, 3, 1, 111, 'Wire Strippier-7\"', 'Wire Strippier-7\"', 'Wire Strippier-7\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208502_wire-strippier-7.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:41:42'),
(19, 'Adjustable Screw Driver- KM-S32B-Two Way', 'adjustable-screw-driver-km-s32b-two-way', '<p>Adjustable Screw Driver- KM-S32B-Two Way</p>', 12, 3, 1, 112, 'Adjustable Screw Driver- KM-S32B-Two Way', 'Adjustable Screw Driver- KM-S32B-Two Way', 'Adjustable Screw Driver- KM-S32B-Two Way', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208082_adjustable-screw-driver-km-s32b-two-way.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:34:42'),
(20, 'Screw Driver 107 (Chrome Plated)- 6\" Plus', 'screw-driver-107-chrome-plated-6-plus', '<p>Screw Driver 107 (Chrome Plated)- 6\" Plus</p>', 12, 3, 1, 112, 'Screw Driver 107 (Chrome Plated)- 6\" Plus', 'Screw Driver 107 (Chrome Plated)- 6\" Plus', 'Screw Driver 107 (Chrome Plated)- 6\" Plus', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208104_screw-driver-107-chrome-plated-6-plus.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:35:04'),
(21, 'Screw Driver 603-4\" Two Way', 'screw-driver-603-4-two-way', '<p>Screw Driver 603-4\" Two Way</p>', 12, 3, 1, 112, 'Screw Driver 603-4\" Two Way', 'Screw Driver 603-4\" Two Way', 'Screw Driver 603-4\" Two Way', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208131_screw-driver-603-4-two-way.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:35:31'),
(22, 'Screw Driver 6637 Black Handle -6\"\"Plus', 'screw-driver-6637-black-handle-6plus', '<p>Screw Driver 6637 Black Handle -6\"\"Plus</p>', 12, 3, 1, 112, 'Screw Driver 6637 Black Handle -6\"\"Plus', 'Screw Driver 6637 Black Handle -6\"\"Plus', 'Screw Driver 6637 Black Handle -6\"\"Plus', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208160_screw-driver-6637-black-handle-6plus.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:36:00'),
(23, 'Screw Driver 815-6\" Plus', 'screw-driver-815-6-plus', '<p>Screw Driver 815-6\" Plus</p>', 12, 3, 1, 112, 'Screw Driver 815-6\" Plus', 'Screw Driver 815-6\" Plus', 'Screw Driver 815-6\" Plus', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765208184_screw-driver-815-6-plus.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:36:24'),
(24, 'Screw Driver HS24-6\" Flat', 'screw-driver-hs24-6-flat', '<p>Screw Driver HS24-6\" Flat</p>', 12, 3, 1, 112, 'Screw Driver HS24-6\" Flat', 'Screw Driver HS24-6\" Flat', 'Screw Driver HS24-6\" Flat', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765208204_screw-driver-hs24-6-flat.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:36:44'),
(25, 'Socket Chorme Plated-16 mm', 'socket-chorme-plated-16-mm', '<p>Socket Chorme Plated-16 mm</p>', 12, 3, 1, 113, 'Socket Chorme Plated-16 mm', 'Socket Chorme Plated-16 mm', 'Socket Chorme Plated-16 mm', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767718152_socket-chorme-plated-16-mm.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:49:12'),
(26, 'Combination Spanner Chrome 16*16mm', 'combination-spanner-chrome-1616mm', '<p>Combination Spanner Chrome 16*16mm</p>', 12, 3, 1, 114, 'Combination Spanner Chrome 16*16mm', 'Combination Spanner Chrome 16*16mm', 'Combination Spanner Chrome 16*16mm', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767718196_combination-spanner-chrome-1616mm.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:49:56'),
(27, 'Double Open Spanner Bright Chrome16*17mm', 'double-open-spanner-bright-chrome1617mm', '<p>Double Open Spanner Bright Chrome16*17mm</p>', 12, 3, 1, 114, 'Double Open Spanner Bright Chrome16*17mm', 'Double Open Spanner Bright Chrome16*17mm', 'Double Open Spanner Bright Chrome16*17mm', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767718224_double-open-spanner-bright-chrome1617mm.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:50:24'),
(28, 'Spanner Double Ring Bright Chrome-18*19 mm', 'spanner-double-ring-bright-chrome-1819-mm', '<p>Spanner Double Ring Bright Chrome-18*19 mm</p>', 12, 3, 1, 114, 'Spanner Double Ring Bright Chrome-18*19 mm', 'Spanner Double Ring Bright Chrome-18*19 mm', 'Spanner Double Ring Bright Chrome-18*19 mm', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767718254_spanner-double-ring-bright-chrome-1819-mm.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:50:54'),
(29, 'Fiber Tape-15 M ( Yellow)', 'fiber-tape-15-m-yellow', '<p>Fiber Tape-15 M ( Yellow)</p>', 12, 3, 1, 115, 'Fiber Tape-15 M ( Yellow)', 'Fiber Tape-15 M ( Yellow)', 'Fiber Tape-15 M ( Yellow)', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717916_fiber-tape-15-m-yellow.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:45:16'),
(30, 'Measurement Tape 2M (2x13 Non Magnet)-DX-02', 'measurement-tape-2m-2x13-non-magnet-dx-02', '<p>Measurement Tape 2M (2x13 Non Magnet)-DX-02</p>', 12, 3, 1, 115, 'Measurement Tape 2M (2x13 Non Magnet)-DX-02', 'Measurement Tape 2M (2x13 Non Magnet)-DX-02', 'Measurement Tape 2M (2x13 Non Magnet)-DX-02', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765207761_measurement-tape-2m-2x13-non-magnet-dx-02.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:29:21'),
(31, 'Measurement Tape 3M (2x13 Nickle Blade)-HL-03', 'measurement-tape-3m-2x13-nickle-blade-hl-03', '<p>Measurement Tape 3M (2x13 Nickle Blade)-HL-03</p>', 12, 3, 1, 115, 'Measurement Tape 3M (2x13 Nickle Blade)-HL-03', 'Measurement Tape 3M (2x13 Nickle Blade)-HL-03', 'Measurement Tape 3M (2x13 Nickle Blade)-HL-03', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717865_measurement-tape-3m-2x13-nickle-blade-hl-03.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:44:25'),
(32, 'Measurement Tape 3M (3x16  Magnet)-DX-15', 'measurement-tape-3m-3x16-magnet-dx-15', '<p>Measurement Tape 3M (3x16 &nbsp;Magnet)-DX-15</p>', 12, 3, 1, 115, 'Measurement Tape 3M (3x16  Magnet)-DX-15', 'Measurement Tape 3M (3x16  Magnet)-DX-15', 'Measurement Tape 3M (3x16  Magnet)-DX-15', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717784_measurement-tape-3m-3x16-magnet-dx-15.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:43:04'),
(33, 'Measurement Tape 3M (3x16 Non Magnet)-DX-37', 'measurement-tape-3m-3x16-non-magnet-dx-37', '<p>Measurement Tape 3M (3x16 Non Magnet)-DX-37</p>', 12, 3, 1, 115, 'Measurement Tape 3M (3x16 Non Magnet)-DX-37', 'Measurement Tape 3M (3x16 Non Magnet)-DX-37', 'Measurement Tape 3M (3x16 Non Magnet)-DX-37', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717835_measurement-tape-3m-3x16-non-magnet-dx-37.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:43:55'),
(34, 'Measurement Tape 3M (3x16 Non Magnet)-DX-T15', 'measurement-tape-3m-3x16-non-magnet-dx-t15', '<p>Measurement Tape 3M (3x16 Non Magnet)-DX-T15</p>', 12, 3, 1, 115, 'Measurement Tape 3M (3x16 Non Magnet)-DX-T15', 'Measurement Tape 3M (3x16 Non Magnet)-DX-T15', 'Measurement Tape 3M (3x16 Non Magnet)-DX-T15', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765207870_measurement-tape-3m-3x16-non-magnet-dx-t15.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:31:10'),
(35, 'Measurement Tape 3M (3x16 Non Magnetic)-A69', 'measurement-tape-3m-3x16-non-magnetic-a69', '<p>Measurement Tape 3M (3x16 Non Magnetic)-A69</p>', 12, 3, 1, 115, 'Measurement Tape 3M (3x16 Non Magnetic)-A69', 'Measurement Tape 3M (3x16 Non Magnetic)-A69', 'Measurement Tape 3M (3x16 Non Magnetic)-A69', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765207896_measurement-tape-3m-3x16-non-magnetic-a69.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:31:36'),
(36, 'Measurement Tape 3M (3x16 Non Magnetic)-A70', 'measurement-tape-3m-3x16-non-magnetic-a70', '<p>Measurement Tape 3M (3x16 Non Magnetic)-A70</p>', 12, 3, 1, 115, 'Measurement Tape 3M (3x16 Non Magnetic)-A70', 'Measurement Tape 3M (3x16 Non Magnetic)-A70', 'Measurement Tape 3M (3x16 Non Magnetic)-A70', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717694_measurement-tape-3m-3x16-non-magnetic-a70.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:41:34'),
(37, 'Measurement Tape 3M (3x19 Non Magnet)-DX-72', 'measurement-tape-3m-3x19-non-magnet-dx-72', '<p>Measurement Tape 3M (3x19 Non Magnet)-DX-72</p>', 12, 3, 1, 116, 'Measurement Tape 3M (3x19 Non Magnet)-DX-72', 'Measurement Tape 3M (3x19 Non Magnet)-DX-72', 'Measurement Tape 3M (3x19 Non Magnet)-DX-72', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765207948_measurement-tape-3m-3x19-non-magnet-dx-72.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:32:28'),
(38, 'Measurement Tape 3M (3x19 Non Magnet)-HL -05', 'measurement-tape-3m-3x19-non-magnet-hl-05', '<p>Measurement Tape 3M (3x19 Non Magnet)-HL -05</p>', 12, 3, 1, 115, 'Measurement Tape 3M (3x19 Non Magnet)-HL -05', 'Measurement Tape 3M (3x19 Non Magnet)-HL -05', 'Measurement Tape 3M (3x19 Non Magnet)-HL -05', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765207972_measurement-tape-3m-3x19-non-magnet-hl-05.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:32:52'),
(39, 'Steel Tape -30M', 'steel-tape-30m', NULL, 12, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-07 21:26:17', '2025-12-07 21:26:17'),
(40, 'Adjustable Wrecnh -Multi color-Bir Professional-10\"', 'adjustable-wrecnh-multi-color-bir-professional-10', '<p>Adjustable Wrecnh -Multi color-Bir Professional-10\"</p>', 12, 3, 1, 116, 'Adjustable Wrecnh -Multi color-Bir Professional-10\"', 'Adjustable Wrecnh -Multi color-Bir Professional-10\"', 'Adjustable Wrecnh -Multi color-Bir Professional-10\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767718458_adjustable-wrecnh-multi-color-bir-professional-10.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:54:18'),
(41, 'Adjustable Wrench Black Nickel Plated Non Grip-10\"', 'adjustable-wrench-black-nickel-plated-non-grip-10', '<p>Adjustable Wrench Black Nickel Plated Non Grip-10\"</p>', 12, 3, 1, 116, 'Adjustable Wrench Black Nickel Plated Non Grip-10\"', 'Adjustable Wrench Black Nickel Plated Non Grip-10\"', 'Adjustable Wrench Black Nickel Plated Non Grip-10\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767718328_adjustable-wrench-black-nickel-plated-non-grip-10.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:52:08'),
(42, 'Adjustable wrench -Black Nickle-Bir pro-10\'\'(blister Pack)', 'adjustable-wrench-black-nickle-bir-pro-10blister-pack', '<p>Adjustable wrench -Black Nickle-Bir pro-10\'\'(blister Pack)</p>', 12, 3, 1, 116, 'Adjustable wrench -Black Nickle-Bir pro-10\'\'(blister Pack)', 'Adjustable wrench -Black Nickle-Bir pro-10\'\'(blister Pack)', 'Adjustable wrench -Black Nickle-Bir pro-10\'\'(blister Pack)', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765207348_adjustable-wrench-black-nickle-bir-pro-10blister-pack.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:22:28'),
(43, 'Adjustable Wrench Red Handle (Bir Standard) 08\"', 'adjustable-wrench-red-handle-bir-standard-08', '<p>Adjustable Wrench Red Handle (Bir Standard) 08\"</p>', 12, 3, 1, 116, 'Adjustable Wrench Red Handle (Bir Standard) 08\"', 'Adjustable Wrench Red Handle (Bir Standard) 08\"', 'Adjustable Wrench Red Handle (Bir Standard) 08\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767718484_adjustable-wrench-red-handle-bir-standard-08.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:54:44'),
(44, 'Pipe Wrench ( Bir Super)-14\"', 'pipe-wrench-bir-super-14', '<p>Pipe Wrench ( Bir Super)-14\"</p>', 12, 3, 1, 116, 'Pipe Wrench ( Bir Super)-14\"', 'Pipe Wrench ( Bir Super)-14\"', 'Pipe Wrench ( Bir Super)-14\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767718364_pipe-wrench-bir-super-14.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:52:44'),
(45, 'Pipe Wrench ( Industrial )-14\"', 'pipe-wrench-industrial-14', '<p>Pipe Wrench ( Industrial )-14\"</p>', 12, 3, 1, 116, 'Pipe Wrench ( Industrial )-14\"', 'Pipe Wrench ( Industrial )-14\"', 'Pipe Wrench ( Industrial )-14\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765207429_pipe-wrench-industrial-14.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:23:49'),
(46, 'Pipe Wrench ( Industrial)-18\"', 'pipe-wrench-industrial-18', '<p>Pipe Wrench ( Industrial)-18\"</p>', 12, 3, 1, 116, 'Pipe Wrench ( Industrial)-18\"', 'Pipe Wrench ( Industrial)-18\"', 'Pipe Wrench ( Industrial)-18\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765207448_pipe-wrench-industrial-18.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:24:08'),
(47, 'Socket Set (10Pcs) Wrench', 'socket-set-10pcs-wrench', '<p>Socket Set (10Pcs) Wrench</p>', 12, 3, 1, 116, 'Socket Set (10Pcs) Wrench', 'Socket Set (10Pcs) Wrench', 'Socket Set (10Pcs) Wrench', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765207527_socket-set-10pcs-wrench.jpg', 1, 1, NULL, '2025-12-07 21:26:17', '2025-12-08 15:25:27'),
(48, 'Socuet Set(40 Pcs)Wrench-2003 Big', 'socuet-set40-pcswrench-2003-big', '<p>Socuet Set(40 Pcs)Wrench-2003 Big</p>', 12, 3, 1, 116, 'Socuet Set(40 Pcs)Wrench-2003 Big', 'Socuet Set(40 Pcs)Wrench-2003 Big', 'Socuet Set(40 Pcs)Wrench-2003 Big', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767718396_socuet-set40-pcswrench-2003-big.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:53:16'),
(49, 'T Handle Socket -10mm', 't-handle-socket-10mm', '<p>T Handle Socket -10mm</p>', 12, 3, 1, 116, 'T Handle Socket -10mm', 'T Handle Socket -10mm', 'T Handle Socket -10mm', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767718535_t-handle-socket-10mm.png', 1, 1, NULL, '2025-12-07 21:26:17', '2026-01-06 16:55:35'),
(50, 'Adjustable Roller Handle (Pro.Quality)-9\"', 'adjustable-roller-handle-proquality-9', '<p>Adjustable Roller Handle (Pro.Quality)-9\"<br>&nbsp;</p>', 11, 3, 1, 104, 'Adjustable Roller Handle (Pro.Quality)-9\"', 'Adjustable Roller Handle (Pro.Quality)-9\"', 'Adjustable Roller Handle (Pro.Quality)-9\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717033_adjustable-roller-handle-proquality-9.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:30:33'),
(51, 'Cup Hook 12 Pcs Set-1-1.5\'\'', 'cup-hook-12-pcs-set-1-15', '<p>Cup Hook 12 Pcs Set-1-1.5\'\'</p>', 11, 3, 1, 104, 'Cup Hook 12 Pcs Set-1-1.5\'\'', 'Cup Hook 12 Pcs Set-1-1.5\'\'', 'Cup Hook 12 Pcs Set-1-1.5\'\'', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717105_cup-hook-12-pcs-set-1-15.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:31:45'),
(52, 'Cup Wire Brush-3\"', 'cup-wire-brush-3', '<p>Cup Wire Brush-3\"</p>', 11, 3, 1, 104, 'Cup Wire Brush-3\"', 'Cup Wire Brush-3\"', 'Cup Wire Brush-3\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717168_cup-wire-brush-3.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:32:48'),
(53, 'Paint Brush (Super)-3\"', 'paint-brush-super-3', '<p>Paint Brush (Super)-3\"</p>', 11, 3, 1, 104, 'Paint Brush (Super)-3\"', 'Paint Brush (Super)-3\"', 'Paint Brush (Super)-3\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717286_paint-brush-super-3.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:34:46'),
(54, 'Roller Brush-4\"( White)', 'roller-brush-4-white', '<p>Roller Brush-4\"( White)</p>', 11, 3, 1, 104, 'Roller Brush-4\"( White)', 'Roller Brush-4\"( White)', 'Roller Brush-4\"( White)', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717330_roller-brush-4-white.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:35:30'),
(55, 'Roller Brush-4\'\'( Yellow)-New', 'roller-brush-4-yellow-new', '<p>Roller Brush-4\'\'( Yellow)-New</p>', 11, 3, 1, 104, 'Roller Brush-4\'\'( Yellow)-New', 'Roller Brush-4\'\'( Yellow)-New', 'Roller Brush-4\'\'( Yellow)-New', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717377_roller-brush-4-yellow-new.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:36:17'),
(56, 'Roller Brush-Green(Blister Pack)-9\"', 'roller-brush-greenblister-pack-9', '<p>Roller Brush-Green(Blister Pack)-9\"</p>', 11, 3, 1, 104, 'Roller Brush-Green(Blister Pack)-9\"', 'Roller Brush-Green(Blister Pack)-9\"', 'Roller Brush-Green(Blister Pack)-9\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209673_roller-brush-greenblister-pack-9.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 16:01:13'),
(57, 'Roller Brush with Handle-9\" ( Yellow)', 'roller-brush-with-handle-9-yellow', '<p>Roller Brush with Handle-9\" ( Yellow)</p>', 11, 3, 1, 104, 'Roller Brush with Handle-9\" ( Yellow)', 'Roller Brush with Handle-9\" ( Yellow)', 'Roller Brush with Handle-9\" ( Yellow)', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717444_roller-brush-with-handle-9-yellow.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:37:24'),
(58, 'Roller Brush-Yellow-9\'\' ( Cotton)-Std.', 'roller-brush-yellow-9-cotton-std', '<p>Roller Brush-Yellow-9\'\' ( Cotton)-Std.</p>', 11, 3, 1, 104, 'Roller Brush-Yellow-9\'\' ( Cotton)-Std.', 'Roller Brush-Yellow-9\'\' ( Cotton)-Std.', 'Roller Brush-Yellow-9\'\' ( Cotton)-Std.', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209726_roller-brush-yellow-9-cotton-std.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 16:02:06'),
(59, 'Roller Handle-4\"', 'roller-handle-4', '<p>Roller Handle-4\"</p>', 11, 3, 1, 104, 'Roller Handle-4\"', 'Roller Handle-4\"', 'Roller Handle-4\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717479_roller-handle-4.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:37:59'),
(60, 'Roller Handle Rubber Grip 09\"', 'roller-handle-rubber-grip-09', NULL, 11, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-07 21:26:28', '2025-12-07 21:26:28'),
(61, 'Scraper-2\"', 'scraper-2', '<p>Scraper-2\"</p>', 11, 3, 1, 104, 'Scraper-2\"', 'Scraper-2\"', 'Scraper-2\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209799_scraper-2.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 16:03:19'),
(62, 'Shovel-Steel Handel ( Round Shape)', 'shovel-steel-handel-round-shape', '<p>Shovel-Steel Handel ( Round Shape)</p>', 11, 3, 1, 104, 'Shovel-Steel Handel ( Round Shape)', 'Shovel-Steel Handel ( Round Shape)', 'Shovel-Steel Handel ( Round Shape)', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717514_shovel-steel-handel-round-shape.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:38:34'),
(63, 'Shovel -Steel Handle', 'shovel-steel-handle', '<p>Shovel -Steel Handle</p>', 11, 3, 1, 104, 'Shovel -Steel Handle', 'Shovel -Steel Handle', 'Shovel -Steel Handle', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209842_shovel-steel-handle.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 16:04:02'),
(64, 'Test Pencil', 'test-pencil', '<p>Test Pencil</p>', 11, 3, 1, 104, 'Test Pencil', 'Test Pencil', 'Test Pencil', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717544_test-pencil.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:39:04'),
(65, 'Test Pencil with Hook', 'test-pencil-with-hook', '<p>Test Pencil with Hook</p>', 11, 3, 1, 104, 'Test Pencil with Hook', 'Test Pencil with Hook', 'Test Pencil with Hook', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209867_test-pencil-with-hook.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 16:04:27'),
(66, 'Tools Box Set-38 Pcs', 'tools-box-set-38-pcs', '<p>Tools Box Set-38 Pcs</p>', 11, 3, 1, 104, 'Tools Box Set-38 Pcs', 'Tools Box Set-38 Pcs', 'Tools Box Set-38 Pcs', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767717569_tools-box-set-38-pcs.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:39:29'),
(67, 'Wire Brush (Super Quality)', 'wire-brush-super-quality', '<p>Wire Brush (Super Quality)</p>', 11, 3, 1, 104, 'Wire Brush (Super Quality)', 'Wire Brush (Super Quality)', 'Wire Brush (Super Quality)', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209930_wire-brush-super-quality.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 16:05:30'),
(68, 'Ln Key (Cross Head)Mediam', 'ln-key-cross-headmediam', '<p>Ln Key (Cross Head)Mediam</p>', 11, 3, 1, 105, 'Ln Key (Cross Head)Mediam', 'Ln Key (Cross Head)Mediam', 'Ln Key (Cross Head)Mediam', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717600_ln-key-cross-headmediam.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:40:00'),
(69, 'LN Key Flat Chrome Cf 02-Medium', 'ln-key-flat-chrome-cf-02-medium', '<p>LN Key Flat Chrome Cf 02-Medium</p>', 11, 3, 1, 105, 'LN Key Flat Chrome Cf 02-Medium', 'LN Key Flat Chrome Cf 02-Medium', 'LN Key Flat Chrome Cf 02-Medium', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717627_ln-key-flat-chrome-cf-02-medium.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:40:27'),
(70, 'Snake Key Pad Lock 50mm', 'snake-key-pad-lock-50mm', '<p>Snake Key Pad Lock 50mm</p>', 11, 3, 1, 108, 'Snake Key Pad Lock 50mm', 'Snake Key Pad Lock 50mm', 'Snake Key Pad Lock 50mm', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717978_snake-key-pad-lock-50mm.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:46:18'),
(71, 'Cross Key Pad Lock 50mm', 'cross-key-pad-lock-50mm', '<p>Cross Key Pad Lock 50mm</p>', 11, 3, 1, 108, 'Cross Key Pad Lock 50mm', 'Cross Key Pad Lock 50mm', 'Cross Key Pad Lock 50mm', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1767717954_cross-key-pad-lock-50mm.png', 1, 1, NULL, '2025-12-07 21:26:28', '2026-01-06 16:45:54'),
(72, 'Circle Plier External Stright 07\"', 'circle-plier-external-stright-07', '<p>Circle Plier External Stright 07\"</p>', 11, 3, 1, 109, 'Circle Plier External Stright 07\"', 'Circle Plier External Stright 07\"', 'Circle Plier External Stright 07\"', NULL, NULL, 5.00, 2.00, NULL, 100, NULL, NULL, 'uploads/products/1765209074_circle-plier-external-stright-07.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:51:14'),
(73, 'Circle Plier Internal Bent 07\"', 'circle-plier-internal-bent-07', '<p>Circle Plier Internal Bent 07\"</p>', 11, 3, 1, 109, 'Circle Plier Internal Bent 07\"', 'Circle Plier Internal Bent 07\"', 'Circle Plier Internal Bent 07\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209100_circle-plier-internal-bent-07.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:51:40'),
(74, 'Combination Plier-Fine Polish-8\"', 'combination-plier-fine-polish-8', '<p>Combination Plier-Fine Polish-8\"</p>', 11, 3, 1, 109, 'Combination Plier-Fine Polish-8\"', 'Combination Plier-Fine Polish-8\"', 'Combination Plier-Fine Polish-8\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209121_combination-plier-fine-polish-8.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:52:01'),
(75, 'Combination Pliers-Black Finish-8\"(Yellow& Black)', 'combination-pliers-black-finish-8yellow-black', '<p>Combination Pliers-Black Finish-8\"(Yellow&amp; Black)</p>', 11, 3, 1, 109, 'Combination Pliers-Black Finish-8\"(Yellow& Black)', 'Combination Pliers-Black Finish-8\"(Yellow& Black)', 'Combination Pliers-Black Finish-8\"(Yellow& Black)', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209144_combination-pliers-black-finish-8yellow-black.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:52:24'),
(76, 'Combination Pliers-Nickle Finish-8\"', 'combination-pliers-nickle-finish-8', '<p>Combination Pliers-Nickle Finish-8\"</p>', 11, 3, 1, 109, 'Combination Pliers-Nickle Finish-8\"', 'Combination Pliers-Nickle Finish-8\"', 'Combination Pliers-Nickle Finish-8\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209163_combination-pliers-nickle-finish-8.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:52:43'),
(77, 'Crimping Plier ( Duel Modular)', 'crimping-plier-duel-modular', '<p>Crimping Plier ( Duel Modular)</p>', 11, 3, 1, 109, 'Crimping Plier ( Duel Modular)', 'Crimping Plier ( Duel Modular)', 'Crimping Plier ( Duel Modular)', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209187_crimping-plier-duel-modular.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:53:07'),
(78, 'Crimpring Plier- 6\"', 'crimpring-plier-6', '<p>Crimpring Plier- 6\"</p>', 11, 3, 1, 109, 'Crimpring Plier- 6\"', 'Crimpring Plier- 6\"', 'Crimpring Plier- 6\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209206_crimpring-plier-6.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:53:26'),
(79, 'Cutting Plier-Fine Polished-6\"', 'cutting-plier-fine-polished-6', '<p>Cutting Plier-Fine Polished-6\"</p>', 11, 3, 1, 109, 'Cutting Plier-Fine Polished-6\"', 'Cutting Plier-Fine Polished-6\"', 'Cutting Plier-Fine Polished-6\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209231_cutting-plier-fine-polished-6.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:53:51'),
(80, 'Cutting Plier(Nicle Finish)-4\"', 'cutting-pliernicle-finish-4', '<p>Cutting Plier(Nicle Finish)-4\"</p>', 11, 3, 1, 109, 'Cutting Plier(Nicle Finish)-4\"', 'Cutting Plier(Nicle Finish)-4\"', 'Cutting Plier(Nicle Finish)-4\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209253_cutting-pliernicle-finish-4.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:54:13'),
(81, 'Locking Plier-10\"', 'locking-plier-10', '<p>Locking Plier-10\"</p>', 11, 3, 1, 109, 'Locking Plier-10\"', 'Locking Plier-10\"', 'Locking Plier-10\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209274_locking-plier-10.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:54:34'),
(82, 'Nose Plier-Fine Polished-6\"', 'nose-plier-fine-polished-6', '<p>Nose Plier-Fine Polished-6\"</p>', 11, 3, 1, 109, 'Nose Plier-Fine Polished-6\"', 'Nose Plier-Fine Polished-6\"', 'Nose Plier-Fine Polished-6\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1765209295_nose-plier-fine-polished-6.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:54:55'),
(83, 'Water Pump Plier Wrench -10\"', 'water-pump-plier-wrench-10', '<p>Water Pump Plier Wrench -10\"</p>', 11, 3, 1, 109, 'Water Pump Plier Wrench -10\"', 'Water Pump Plier Wrench -10\"', 'Water Pump Plier Wrench -10\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209317_water-pump-plier-wrench-10.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:55:17'),
(84, 'CTG.-Combination Plier(Nickle Finish)-6\"', 'ctg-combination-pliernickle-finish-6', '<p>CTG.-Combination Plier(Nickle Finish)-6\"</p>', 11, 3, 1, 109, 'CTG.-Combination Plier(Nickle Finish)-6\"', 'CTG.-Combination Plier(Nickle Finish)-6\"', 'CTG.-Combination Plier(Nickle Finish)-6\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209339_ctg-combination-pliernickle-finish-6.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:55:39'),
(85, 'CTG.-Combination Plier(Nicle Finish)-7\"', 'ctg-combination-pliernicle-finish-7', '<p>CTG.-Combination Plier(Nicle Finish)-7\"</p>', 11, 3, 1, 109, 'CTG.-Combination Plier(Nicle Finish)-7\"', 'CTG.-Combination Plier(Nicle Finish)-7\"', 'CTG.-Combination Plier(Nicle Finish)-7\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209363_ctg-combination-pliernicle-finish-7.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:56:03'),
(86, 'CTG.-Combination Plier(Nicle Finish)-8\"', 'ctg-combination-pliernicle-finish-8', '<p>CTG.-Combination Plier(Nicle Finish)-8\"</p>', 11, 3, 1, 109, 'CTG.-Combination Plier(Nicle Finish)-8\"', 'CTG.-Combination Plier(Nicle Finish)-8\"', 'CTG.-Combination Plier(Nicle Finish)-8\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209387_ctg-combination-pliernicle-finish-8.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:56:27'),
(87, 'CTG.-Cutting Plier Nikel Finish 6\"', 'ctg-cutting-plier-nikel-finish-6', '<p>CTG.-Cutting Plier Nikel Finish 6\"</p>', 11, 3, 1, 109, 'CTG.-Cutting Plier Nikel Finish 6\"', 'CTG.-Cutting Plier Nikel Finish 6\"', 'CTG.-Cutting Plier Nikel Finish 6\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209408_ctg-cutting-plier-nikel-finish-6.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:56:48'),
(88, 'CTG.-Nose Pliers-Nickle Finish-6\"', 'ctg-nose-pliers-nickle-finish-6', '<p>CTG.-Nose Pliers-Nickle Finish-6\"</p>', 11, 3, 1, 109, 'CTG.-Nose Pliers-Nickle Finish-6\"', 'CTG.-Nose Pliers-Nickle Finish-6\"', 'CTG.-Nose Pliers-Nickle Finish-6\"', NULL, NULL, 5.00, 3.00, NULL, 100, NULL, NULL, 'uploads/products/1765209431_ctg-nose-pliers-nickle-finish-6.jpg', 1, 1, NULL, '2025-12-07 21:26:28', '2025-12-08 15:57:11'),
(89, 'Hammer Drill Bit-(10*160mm)-6\"', 'hammer-drill-bit-10160mm-6', '<p>Hammer Drill Bit-(10*160mm)-6\"</p>', 10, 3, 1, 100, 'Hammer Drill Bit-(10*160mm)-6\"', '', '', NULL, NULL, 20.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382131_hammer-drill-bit-10160mm-6.jpg', 1, 1, NULL, '2025-12-07 21:26:33', '2025-12-10 15:55:31'),
(90, 'Hammer Drill Bit-(10*160mm)-6\"-Star', 'hammer-drill-bit-10160mm-6-star', '<p>Hammer Drill Bit-(10*160mm)-6\"-Star</p>', 10, 3, 1, 100, 'Hammer Drill Bit-(10*160mm)-6\"-Star', 'Hammer Drill Bit-(10*160mm)-6\"-Star', 'Hammer Drill Bit-(10*160mm)-6\"-Star', NULL, NULL, 20.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382108_hammer-drill-bit-10160mm-6-star.jpg', 1, 1, NULL, '2025-12-07 21:26:33', '2025-12-10 15:55:08'),
(91, 'HSS Drill Bit-3/16\"', 'hss-drill-bit-316', '<p>HSS Drill Bit-3/16\"</p>', 10, 3, 1, 100, 'HSS Drill Bit-3/16\"', '', '', NULL, NULL, 20.00, 15.00, NULL, 100, NULL, NULL, 'uploads/products/1765382085_hss-drill-bit-316.jpg', 1, 1, NULL, '2025-12-07 21:26:33', '2025-12-10 15:54:45'),
(92, 'Flat File With Plastic Handle(Bir Standard) 10\"', 'flat-file-with-plastic-handlebir-standard-10', '<p>Flat File With Plastic Handle(Bir Standard) 10\"</p>', 10, 3, 1, 101, 'Flat File With Plastic Handle(Bir Standard) 10\"', 'Flat File With Plastic Handle(Bir Standard) 10\"', 'Flat File With Plastic Handle(Bir Standard) 10\"', NULL, NULL, 20.00, 16.00, NULL, 100, NULL, NULL, 'uploads/products/1765206534_flat-file-with-plastic-handlebir-standard-10.jpg', 1, 1, NULL, '2025-12-07 21:26:33', '2025-12-08 15:08:54'),
(93, 'Half Round File Plastic Handle(Bir Standard) 10\"', 'half-round-file-plastic-handlebir-standard-10', '<p>Half Round File Plastic Handle(Bir Standard) 10\"</p>', 10, 3, 1, 101, 'Half Round File Plastic Handle(Bir Standard) 10\"', 'Half Round File Plastic Handle(Bir Standard) 10\"', 'Half Round File Plastic Handle(Bir Standard) 10\"', NULL, NULL, 20.00, 19.00, NULL, 100, NULL, NULL, 'uploads/products/1765206554_half-round-file-plastic-handlebir-standard-10.jpg', 1, 1, NULL, '2025-12-07 21:26:33', '2025-12-08 15:09:14'),
(94, 'Tri Angel File-4\" Mini (6pcs Set)-Super', 'tri-angel-file-4-mini-6pcs-set-super', '<p>Tri Angel File-4\" Mini (6pcs Set)-Super</p>', 10, 3, 1, 101, 'Tri Angel File-4\" Mini (6pcs Set)-Super', 'Tri Angel File-4\" Mini (6pcs Set)-Super', 'Tri Angel File-4\" Mini (6pcs Set)-Super', NULL, NULL, 20.00, 18.00, NULL, 100, NULL, NULL, 'uploads/products/1765206630_tri-angel-file-4-mini-6pcs-set-super.jpg', 1, 1, NULL, '2025-12-07 21:26:33', '2025-12-08 15:10:30'),
(95, 'American Claw Hammer with Fiber Glass-16OZ', 'american-claw-hammer-with-fiber-glass-16oz', '<p>American Claw Hammer with Fiber Glass-16OZ</p>', 10, 3, 1, 102, 'American Claw Hammer with Fiber Glass-16OZ', 'American Claw Hammer with Fiber Glass-16OZ', 'American Claw Hammer with Fiber Glass-16OZ', NULL, NULL, 20.00, 18.00, NULL, 100, NULL, NULL, 'uploads/products/1767714545_american-claw-hammer-with-fiber-glass-16oz.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:49:05'),
(96, 'Ball Pein Hammer-16 Oz (1 LB)', 'ball-pein-hammer-16-oz-1-lb', '<p>Ball Pein Hammer-16 Oz (1 LB)</p>', 10, 3, 1, 102, 'Ball Pein Hammer-16 Oz (1 LB)', 'Ball Pein Hammer-16 Oz (1 LB)', 'Ball Pein Hammer-16 Oz (1 LB)', NULL, NULL, 20.00, 15.00, NULL, 100, NULL, NULL, 'uploads/products/1767714789_ball-pein-hammer-16-oz-1-lb.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:53:09'),
(97, 'Ball Pein Hammer( BMI )-16 OZ', 'ball-pein-hammer-bmi-16-oz', '<p>Ball Pein Hammer( BMI )-16 OZ</p>', 10, 3, 1, 102, 'Ball Pein Hammer( BMI )-16 OZ', 'Ball Pein Hammer( BMI )-16 OZ', 'Ball Pein Hammer( BMI )-16 OZ', NULL, NULL, 20.00, 17.00, NULL, 100, NULL, NULL, 'uploads/products/1767714480_ball-pein-hammer-bmi-16-oz.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:48:00'),
(98, 'Chipping Hammer with Wooden Handle 500g', 'chipping-hammer-with-wooden-handle-500g', '<p>Chipping Hammer with Wooden Handle 500g</p>', 10, 3, 1, 102, 'Chipping Hammer with Wooden Handle 500g', 'Chipping Hammer with Wooden Handle 500g', 'Chipping Hammer with Wooden Handle 500g', NULL, NULL, 20.00, 14.00, NULL, 100, NULL, NULL, 'uploads/products/1767714512_chipping-hammer-with-wooden-handle-500g.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:48:32'),
(99, 'Claw Hammer Fiber Glass 08 OZ', 'claw-hammer-fiber-glass-08-oz', '<p>Claw Hammer Fiber Glass 08 OZ</p>', 10, 3, 1, 102, 'Claw Hammer Fiber Glass 08 OZ', 'Claw Hammer Fiber Glass 08 OZ', 'Claw Hammer Fiber Glass 08 OZ', NULL, NULL, 20.00, 16.00, NULL, 100, NULL, NULL, 'uploads/products/1767714762_claw-hammer-fiber-glass-08-oz.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:52:42'),
(100, 'Rubber Mallat Hammer with Fiber Glass Handle 16Oz', 'rubber-mallat-hammer-with-fiber-glass-handle-16oz', '<p>andle 16Oz</p>', 10, 3, 1, 102, 'Rubber Mallat Hammer with Fiber Glass Handle 16Oz', 'andle 16Oz', 'andle 16Oz', NULL, NULL, 20.00, 17.00, NULL, 100, NULL, NULL, 'uploads/products/1767714620_rubber-mallat-hammer-with-fiber-glass-handle-16oz.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:50:20'),
(101, 'Rubber Mallat Hammer with Fiber Glass Handle (BMI)- 16Oz', 'rubber-mallat-hammer-with-fiber-glass-handle-bmi-16oz', '<p>Rubber Mallat Hammer with Fiber Glass Handle (BMI)- 16Oz</p>', 10, 3, 1, 102, 'Rubber Mallat Hammer with Fiber Glass Handle (BMI)- 16Oz', 'Rubber Mallat Hammer with Fiber Glass Handle (BMI)- 16Oz', 'Rubber Mallat Hammer with Fiber Glass Handle (BMI)- 16Oz', NULL, NULL, 20.00, 16.00, NULL, 100, NULL, NULL, 'uploads/products/1767714708_rubber-mallat-hammer-with-fiber-glass-handle-bmi-16oz.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:51:48'),
(102, 'Two Way Mallat Hammer with Fiber Glass Handle 35mm', 'two-way-mallat-hammer-with-fiber-glass-handle-35mm', '<p>Two Way Mallat Hammer with Fiber Glass Handle 35mm</p>', 10, 3, 1, 102, 'Two Way Mallat Hammer with Fiber Glass Handle 35mm', 'Two Way Mallat Hammer with Fiber Glass Handle 35mm', 'Two Way Mallat Hammer with Fiber Glass Handle 35mm', NULL, NULL, 20.00, 19.00, NULL, 100, NULL, NULL, 'uploads/products/1767714731_two-way-mallat-hammer-with-fiber-glass-handle-35mm.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:52:11'),
(103, '16 Pcs Holes Saw Set', '16-pcs-holes-saw-set', '<p>16 Pcs Holes Saw Set</p>', 10, 3, 1, 103, '16 Pcs Holes Saw Set', '16 Pcs Holes Saw Set', '16 Pcs Holes Saw Set', NULL, NULL, 20.00, 19.00, NULL, 100, NULL, NULL, 'uploads/products/1767715112_16-pcs-holes-saw-set.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:58:32'),
(104, '5 Pcs Hole Saw Set', '5-pcs-hole-saw-set', '<p>5 Pcs Hole Saw Set</p>', 10, 3, 1, 103, '5 Pcs Hole Saw Set', '5 Pcs Hole Saw Set', '5 Pcs Hole Saw Set', NULL, NULL, 20.00, 17.00, NULL, 100, NULL, NULL, 'uploads/products/1767714910_5-pcs-hole-saw-set.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:55:10'),
(105, '5pcs Jig Saw Blade', '5pcs-jig-saw-blade', '<p>5pcs Jig Saw Blade</p>', 10, 3, 1, 103, '5pcs Jig Saw Blade', '5pcs Jig Saw Blade', '5pcs Jig Saw Blade', NULL, NULL, 20.00, 15.00, NULL, 100, NULL, NULL, 'uploads/products/1767715000_5pcs-jig-saw-blade.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:56:40'),
(106, 'Chisel for Wood-1 inch', 'chisel-for-wood-1-inch', '<p>Chisel for Wood-1 inch</p>', 10, 3, 1, 103, 'Chisel for Wood-1 inch', 'Chisel for Wood-1 inch', 'Chisel for Wood-1 inch', NULL, NULL, 20.00, 16.00, NULL, 100, NULL, NULL, 'uploads/products/1767715152_chisel-for-wood-1-inch.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 15:59:12'),
(107, 'Circular Saw Blade-110*40T', 'circular-saw-blade-11040t', '<p>Circular Saw Blade-110*40T</p>', 10, 3, 1, 103, 'Circular Saw Blade-110*40T', 'Circular Saw Blade-110*40T', 'Circular Saw Blade-110*40T', NULL, NULL, 20.00, 17.00, NULL, 100, NULL, NULL, 'uploads/products/1767715244_circular-saw-blade-11040t.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 16:00:44'),
(108, 'Compass Saw(Plastic Handle)-14\"', 'compass-sawplastic-handle-14', '<p>Compass Saw(Plastic Handle)-14\"</p>', 10, 3, 1, 103, 'Compass Saw(Plastic Handle)-14\"', 'Compass Saw(Plastic Handle)-14\"', 'Compass Saw(Plastic Handle)-14\"', NULL, NULL, 20.00, 17.00, NULL, 100, NULL, NULL, 'uploads/products/1767715319_compass-sawplastic-handle-14.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 16:01:59'),
(109, 'Compuss Saw ( Wooden Handle)-14\"', 'compuss-saw-wooden-handle-14', '<p>Compuss Saw ( Wooden Handle)-14\"</p>', 10, 3, 1, 103, 'Compuss Saw ( Wooden Handle)-14\"', 'Compuss Saw ( Wooden Handle)-14\"', 'Compuss Saw ( Wooden Handle)-14\"', NULL, NULL, 20.00, 17.00, NULL, 100, NULL, NULL, 'uploads/products/1765207058_compuss-saw-wooden-handle-14.jpg', 1, 1, NULL, '2025-12-07 21:26:33', '2025-12-08 15:17:38'),
(110, 'Electrode Holder-500A', 'electrode-holder-500a', '<p>Electrode Holder-500A</p>', 10, 3, 1, 103, 'Electrode Holder-500A', 'Electrode Holder-500A', 'Electrode Holder-500A', NULL, NULL, 20.00, 14.00, NULL, 100, NULL, NULL, 'uploads/products/1767715396_electrode-holder-500a.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 16:03:16'),
(111, 'Hack Saw Blade-12\"', 'hack-saw-blade-12', '<p>Hack Saw Blade-12\"</p>', 10, 3, 1, 103, 'Hack Saw Blade-12\"', 'Hack Saw Blade-12\"', 'Hack Saw Blade-12\"', NULL, NULL, 20.00, 16.00, NULL, 100, NULL, NULL, 'uploads/products/1767715494_hack-saw-blade-12.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 16:04:54'),
(112, 'Hac Saw Frame 834 Straight', 'hac-saw-frame-834-straight', '<p>Hac Saw Frame 834 Straight</p>', 10, 3, 1, 103, 'Hac Saw Frame 834 Straight', 'Hac Saw Frame 834 Straight', 'Hac Saw Frame 834 Straight', NULL, NULL, 20.00, 17.00, NULL, 100, NULL, NULL, 'uploads/products/1767715444_hac-saw-frame-834-straight.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 16:04:04'),
(113, 'Hac Saw Frame Adjustable CY 018-01-12\" ( Blue)', 'hac-saw-frame-adjustable-cy-018-01-12-blue', '<p>Hac Saw Frame Adjustable CY 018-01-12\" ( Blue)</p>', 10, 3, 1, 103, 'Hac Saw Frame Adjustable CY 018-01-12\" ( Blue)', 'Hac Saw Frame Adjustable CY 018-01-12\" ( Blue)', 'Hac Saw Frame Adjustable CY 018-01-12\" ( Blue)', NULL, NULL, 20.00, 14.00, NULL, 100, NULL, NULL, 'uploads/products/1765207165_hac-saw-frame-adjustable-cy-018-01-12-blue.jpg', 1, 1, NULL, '2025-12-07 21:26:33', '2025-12-08 15:19:25'),
(114, 'Hand Saw Wooden Handle with Fire Teeth-16\"', 'hand-saw-wooden-handle-with-fire-teeth-16', '<p>Hand Saw Wooden Handle with Fire Teeth-16\"</p>', 10, 3, 1, 103, 'Hand Saw Wooden Handle with Fire Teeth-16\"', 'Hand Saw Wooden Handle with Fire Teeth-16\"', 'Hand Saw Wooden Handle with Fire Teeth-16\"', NULL, NULL, 20.00, 14.00, NULL, 100, NULL, NULL, 'uploads/products/1767715529_hand-saw-wooden-handle-with-fire-teeth-16.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 16:05:29'),
(115, 'Hand Saw Wooden Rubber(Tri-Angle Teeth) 18-Black', 'hand-saw-wooden-rubbertri-angle-teeth-18-black', '<p>Hand Saw Wooden Rubber(Tri-Angle Teeth) 18-Black</p>', 10, 3, 1, 103, 'Hand Saw Wooden Rubber(Tri-Angle Teeth) 18-Black', 'Hand Saw Wooden Rubber(Tri-Angle Teeth) 18-Black', 'Hand Saw Wooden Rubber(Tri-Angle Teeth) 18-Black', NULL, NULL, 20.00, 14.00, NULL, 100, NULL, NULL, 'uploads/products/1765207212_hand-saw-wooden-rubbertri-angle-teeth-18-black.jpg', 1, 1, NULL, '2025-12-07 21:26:33', '2025-12-08 15:20:12'),
(116, 'Hand Saw Yellow Black Handle with Fire Teeth-18\"', 'hand-saw-yellow-black-handle-with-fire-teeth-18', '<p>Hand Saw Yellow Black Handle with Fire Teeth-18\"</p>', 10, 3, 1, 103, 'Hand Saw Yellow Black Handle with Fire Teeth-18\"', 'Hand Saw Yellow Black Handle with Fire Teeth-18\"', 'Hand Saw Yellow Black Handle with Fire Teeth-18\"', NULL, NULL, 20.00, 16.00, NULL, 100, NULL, NULL, 'uploads/products/1767715580_hand-saw-yellow-black-handle-with-fire-teeth-18.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 16:06:20'),
(117, 'Randher Fall / Iron Planner (1.75)', 'randher-fall-iron-planner-175', '<p>Randher Fall / Iron Planner (1.75)</p>', 10, 3, 1, 103, 'Randher Fall / Iron Planner (1.75)', 'Randher Fall / Iron Planner (1.75)', 'Randher Fall / Iron Planner (1.75)', NULL, NULL, 20.00, 14.00, NULL, 100, NULL, NULL, 'uploads/products/1767715632_randher-fall-iron-planner-175.png', 1, 1, NULL, '2025-12-07 21:26:33', '2026-01-06 16:07:12'),
(118, '4\" Daimond Cup Grinding Wheel-Std.Quality', '4-daimond-cup-grinding-wheel-stdquality', '<p>4\" Daimond Cup Grinding Wheel-Std.Quality</p>', 9, 3, 1, 97, '4\" Daimond Cup Grinding Wheel-Std.Quality', '4\" Daimond Cup Grinding Wheel-Std.Quality', '', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767713489_4-daimond-cup-grinding-wheel-stdquality.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:31:29'),
(119, '4\" Daimond Cutter-Professional Quality-Plain Saw', '4-daimond-cutter-professional-quality-plain-saw', '<p>4\" Daimond Cutter-Professional Quality-Plain Saw</p>', 9, 3, 1, 97, '4\" Daimond Cutter-Professional Quality-Plain Saw', '4\" Daimond Cutter-Professional Quality-Plain Saw', '4\" Daimond Cutter-Professional Quality-Plain Saw', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767713281_4-daimond-cutter-professional-quality-plain-saw.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:28:01');
INSERT INTO `product` (`id`, `name`, `slug`, `description_full`, `purchase_order_id`, `supplier_id`, `categoryId`, `subcategoryId`, `meta_title`, `meta_description`, `meta_keyword`, `sku`, `cash_dev_status`, `price`, `discount_price`, `unit`, `stock_qty`, `stock_mini_qty`, `shipping_days`, `thumnail_img`, `first_update`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(120, '4\" Daimond Cutter-Professional Quality-Seg.Cutting', '4-daimond-cutter-professional-quality-segcutting', '<p>4\" Daimond Cutter-Professional Quality-Seg.Cutting</p>', 9, 3, 1, 97, '4\" Daimond Cutter-Professional Quality-Seg.Cutting', '4\" Daimond Cutter-Professional Quality-Seg.Cutting', '4\" Daimond Cutter-Professional Quality-Seg.Cutting', NULL, NULL, 10.00, 5.00, NULL, 100, NULL, NULL, 'uploads/products/1767713199_4-daimond-cutter-professional-quality-segcutting.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:26:39'),
(121, '4\" Grinding Wheel', '4-grinding-wheel', '<p>4\" Grinding Wheel</p>', 9, 3, 1, 97, '4\" Grinding Wheel', '', '', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765378376_4-grinding-wheel.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-10 14:52:56'),
(122, '4\'\' Cutting Disc- Thin Turbo Blade', '4-cutting-disc-thin-turbo-blade', '<p>4\'\' Cutting Disc- Thin Turbo Blade</p>', 9, 3, 1, 97, '4\'\' Cutting Disc- Thin Turbo Blade', '', '', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765378362_4-cutting-disc-thin-turbo-blade.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-10 14:52:42'),
(123, '4\'\' Daimond Cutter-Standard Quality-Plain Saw', '4-daimond-cutter-standard-quality-plain-saw', '<p>4\'\' Daimond Cutter-Standard Quality-Plain Saw</p>', 9, 3, 1, 97, '4\'\' Daimond Cutter-Standard Quality-Plain Saw', '4\'\' Daimond Cutter-Standard Quality-Plain Saw', '4\'\' Daimond Cutter-Standard Quality-Plain Saw', NULL, NULL, 10.00, 6.00, NULL, 100, NULL, NULL, 'uploads/products/1765378346_4-daimond-cutter-standard-quality-plain-saw.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-10 14:52:26'),
(124, '4.5\" Daimond Cutter (Multi Prof.Quality)', '45-daimond-cutter-multi-profquality', '<p>4.5\" Daimond Cutter (Multi Prof.Quality)</p>', 9, 3, 1, 97, '4.5\" Daimond Cutter (Multi Prof.Quality)', '4.5\" Daimond Cutter (Multi Prof.Quality)', '4.5\" Daimond Cutter (Multi Prof.Quality)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767713593_45-daimond-cutter-multi-profquality.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:33:13'),
(125, '5\" Daimond Cup Grinding Wheel-Single', '5-daimond-cup-grinding-wheel-single', '<p>5\" Daimond Cup Grinding Wheel-Single</p>', 9, 3, 1, 97, '5\" Daimond Cup Grinding Wheel-Single', '5\" Daimond Cup Grinding Wheel-Single', '', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765378308_5-daimond-cup-grinding-wheel-single.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-10 14:51:48'),
(126, '5\" Daimond Cutter-Professional Quality-Seg.Cutting', '5-daimond-cutter-professional-quality-segcutting', '<p>5\" Daimond Cutter-Professional Quality-Seg.Cutting</p>', 9, 3, 1, 97, '5\" Daimond Cutter-Professional Quality-Seg.Cutting', '5\" Daimond Cutter-Professional Quality-Seg.Cutting', '5\" Daimond Cutter-Professional Quality-Seg.Cutting', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765378291_5-daimond-cutter-professional-quality-segcutting.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-10 14:51:31'),
(127, '5\" Diamond Cup Grinding Wheel', '5-diamond-cup-grinding-wheel', '<p>5\" Diamond Cup Grinding Wheel</p>', 9, 3, 1, 97, '5\" Diamond Cup Grinding Wheel', '5\" Diamond Cup Grinding Wheel', '5\" Diamond Cup Grinding Wheel', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765378273_5-diamond-cup-grinding-wheel.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-10 14:51:13'),
(128, '7\'\' Dimond Cutter Seg Cutting Proffessional Quality', '7-dimond-cutter-seg-cutting-proffessional-quality', '<p>7\'\' Dimond Cutter Seg Cutting Proffessional Quality</p>', 9, 3, 1, 97, '7\'\' Dimond Cutter Seg Cutting Proffessional Quality', '', '', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767713558_7-dimond-cutter-seg-cutting-proffessional-quality.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:32:38'),
(129, '9\" Dimond Cutter Seg Cutting Proffessional Quality', '9-dimond-cutter-seg-cutting-proffessional-quality', '<p>9\" Dimond Cutter Seg Cutting Proffessional Quality</p>', 9, 3, 1, 97, '9\" Dimond Cutter Seg Cutting Proffessional Quality', '9\" Dimond Cutter Seg Cutting Proffessional Quality', '', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765378217_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-10 14:50:17'),
(130, 'Metal Cuttting Disk 4\"', 'metal-cuttting-disk-4', '<p>Metal Cuttting Disk 4\"</p>', 9, 3, 1, NULL, 'Metal Cuttting Disk 4\"', 'Metal Cuttting Disk 4\"', 'Metal Cuttting Disk 4\"', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767713660_metal-cuttting-disk-4.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:34:20'),
(131, 'Aviation Snip-10\"', 'aviation-snip-10', '<p>Aviation Snip-10\"</p>', 9, 3, 1, 98, 'Aviation Snip-10\"', 'Aviation Snip-10\"', 'Aviation Snip-10\"', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765377610_aviation-snip-10.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-10 14:40:10'),
(132, 'Axe ( Bir Brand)-Premium Quality', 'axe-bir-brand-premium-quality', '<p>Axe ( Bir Brand)-Premium Quality</p>', 9, 3, 1, 98, 'Axe ( Bir Brand)-Premium Quality', '', '', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1767713751_axe-bir-brand-premium-quality.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:35:51'),
(133, 'Axe(Bir Brand)-Small', 'axebir-brand-small', '<p>Axe(Bir Brand)-Small</p>', 9, 3, 1, 98, 'Axe(Bir Brand)-Small', '', '', NULL, NULL, 10.00, 7.00, NULL, 100, NULL, NULL, 'uploads/products/1767713812_axebir-brand-small.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:36:52'),
(134, 'Bolt Cutter-24\"', 'bolt-cutter-24', '<p>Bolt Cutter-24\"</p>', 9, 3, 1, 98, 'Bolt Cutter-24\"', 'Bolt Cutter-24\"', 'Bolt Cutter-24\"', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767713868_bolt-cutter-24.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:37:48'),
(135, 'Carpenter Pincher-7\"', 'carpenter-pincher-7', '<p>Carpenter Pincher-7\"</p>', 9, 3, 1, 98, 'Carpenter Pincher-7\"', '', '', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767713927_carpenter-pincher-7.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:38:47'),
(136, 'Cutter Knif-2 Extra Blade', 'cutter-knif-2-extra-blade', '<p>Cutter Knif-2 Extra Blade</p>', 9, 3, 1, 98, 'Cutter Knif-2 Extra Blade', 'Cutter Knif-2 Extra Blade', 'Cutter Knif-2 Extra Blade', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767713967_cutter-knif-2-extra-blade.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:39:27'),
(137, 'Cutter Knife Blade-(10pcs Box)', 'cutter-knife-blade-10pcs-box', '<p>Cutter Knife Blade-(10pcs Box)</p>', 9, 3, 1, 98, 'Cutter Knife Blade-(10pcs Box)', 'Cutter Knife Blade-(10pcs Box)', 'Cutter Knife Blade-(10pcs Box)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765377512_cutter-knife-blade-10pcs-box.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-10 14:38:32'),
(138, 'Flap Disk-80 Grit', 'flap-disk-80-grit', '<p>Flap Disk-80 Grit</p>', 9, 3, 1, 98, 'Flap Disk-80 Grit', 'Flap Disk-80 Grit', 'Flap Disk-80 Grit', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767714004_flap-disk-80-grit.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:40:04'),
(139, 'Foam Disc-4\" (9P)', 'foam-disc-4-9p', '<p>Foam Disc-4\" (9P)</p>', 9, 3, 1, 98, 'Foam Disc-4\" (9P)', 'Foam Disc-4\" (9P)', 'Foam Disc-4\" (9P)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765123464_foam-disc-4-9p.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-07 16:04:24'),
(140, 'Garden Scissor-10\'\' ( Plastic Handle)', 'garden-scissor-10-plastic-handle', '<p>Garden Scissor-10\'\' ( Plastic Handle)</p>', 9, 3, 1, 98, 'Garden Scissor-10\'\' ( Plastic Handle)', 'Garden Scissor-10\'\' ( Plastic Handle)', 'Garden Scissor-10\'\' ( Plastic Handle)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767714056_garden-scissor-10-plastic-handle.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:40:56'),
(141, 'Glass Cutter-Black', 'glass-cutter-black', '<p>Glass Cutter-Black</p>', 9, 3, 1, 98, 'Glass Cutter-Black', 'Glass Cutter-Black', 'Glass Cutter-Black', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767714160_glass-cutter-black.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:42:40'),
(142, 'Glass Cutter-Golden', 'glass-cutter-golden', '<p>Glass Cutter-Golden</p>', 9, 3, 1, 98, 'Glass Cutter-Golden', 'Glass Cutter-Golden', 'Glass Cutter-Golden', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765123367_glass-cutter-golden.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-07 16:02:47'),
(143, 'Glass Cutter-White', 'glass-cutter-white', '<p>Glass Cutter-White</p>', 9, 3, 1, 98, 'Glass Cutter-White', 'Glass Cutter-White', 'Glass Cutter-White', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765123326_glass-cutter-white.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-07 16:02:06'),
(144, 'Pruning Share 8\"', 'pruning-share-8', '<p>Pruning Share 8\"</p>', 9, 3, 1, 98, 'Pruning Share 8\"', 'Pruning Share 8\"', 'Pruning Share 8\"', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765123290_pruning-share-8.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-07 16:01:30'),
(145, 'PVC Pipe Cutter-42mm', 'pvc-pipe-cutter-42mm', '<p>PVC Pipe Cutter-42mm</p>', 9, 3, 1, 98, 'PVC Pipe Cutter-42mm', 'PVC Pipe Cutter-42mm', 'PVC Pipe Cutter-42mm', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765123253_pvc-pipe-cutter-42mm.jpg', 1, 1, NULL, '2025-12-07 21:26:38', '2025-12-07 16:00:53'),
(146, 'Scissor-8\"', 'scissor-8', '<p>Scissor-8\"</p>', 9, 3, 1, 98, 'Scissor-8\"', 'Scissor-8\"', 'Scissor-8\"', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767714190_scissor-8.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:43:10'),
(147, 'Tiles Cutter Pen-140mm', 'tiles-cutter-pen-140mm', '<p>Tiles Cutter Pen-140mm</p>', 9, 3, 1, 98, 'Tiles Cutter Pen-140mm', 'Tiles Cutter Pen-140mm', 'Tiles Cutter Pen-140mm', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767714243_tiles-cutter-pen-140mm.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:44:03'),
(148, 'Tin Snip-12\"', 'tin-snip-12', '<p>Tin Snip-12\"</p>', 9, 3, 1, 98, 'Tin Snip-12\"', 'Tin Snip-12\"', 'Tin Snip-12\"', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1767714296_tin-snip-12.png', 1, 1, NULL, '2025-12-07 21:26:38', '2026-01-06 15:44:56'),
(149, 'Aluminium Level with Magnet-09\"', 'aluminium-level-with-magnet-09', '<p>Aluminium Level with Magnet-09\"</p>', 13, 3, 1, 96, 'Aluminium Level with Magnet-09\"', 'Aluminium Level with Magnet-09\"', 'Aluminium Level with Magnet-09\"', NULL, NULL, 5.00, 4.00, NULL, 100, NULL, NULL, 'uploads/products/1767712726_aluminium-level-with-magnet-09.png', 1, 1, NULL, '2025-12-08 22:06:28', '2026-01-06 15:18:46'),
(150, 'Door Chain-SS', 'door-chain-ss', '<p>Door Chain-SS</p>', 17, 2, 2, 141, 'Door Chain-SS', 'Door Chain-SS', 'Door Chain-SS', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765543868_door-chain-ss.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:51:08'),
(151, 'Door Chain-AC', 'door-chain-ac', '<p>Door Chain-AC</p>', 17, 2, 2, 141, 'Door Chain-AC', 'Door Chain-AC', 'Door Chain-AC', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767277359_door-chain-ac.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:22:39'),
(152, '728-Door Knocker with Viewer-AC', '728-door-knocker-with-viewer-ac', '<p>728-Door Knocker with Viewer-AC</p>', 17, 2, 2, 140, '728-Door Knocker with Viewer-AC', '728-Door Knocker with Viewer-AC', '728-Door Knocker with Viewer-AC', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767277528_728-door-knocker-with-viewer-ac.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:25:28'),
(153, '729-Door Knocker with Viewer-AC', '729-door-knocker-with-viewer-ac', '<p>729-Door Knocker with Viewer-AC</p>', 17, 2, 2, 141, '729-Door Knocker with Viewer-AC', '729-Door Knocker with Viewer-AC', '729-Door Knocker with Viewer-AC', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765543936_729-door-knocker-with-viewer-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:52:16'),
(154, 'XH-052- Door Closer-(Vikars)', 'xh-052-door-closer-vikars', '<p>XH-052- Door Closer-(Vikars)</p>', 17, 2, 2, 139, 'XH-052- Door Closer-(Vikars)', 'XH-052- Door Closer-(Vikars)', 'XH-052- Door Closer-(Vikars)', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767277471_xh-052-door-closer-vikars.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:24:31'),
(155, '6271-Black-Liver Lock', '6271-black-liver-lock', '<p>6271-Black-Liver Lock</p>', 17, 2, 2, 138, '6271-Black-Liver Lock', '6271-Black-Liver Lock', '6271-Black-Liver Lock', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767278132_6271-black-liver-lock.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:35:32'),
(156, '6271-AB-Liver Lock', '6271-ab-liver-lock', '<p>6271-AB-Liver Lock</p>', 17, 2, 2, 138, '6271-AB-Liver Lock', '6271-AB-Liver Lock', '6271-AB-Liver Lock', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767278089_6271-ab-liver-lock.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:34:49'),
(157, '6271-SS-Liver Lock', '6271-ss-liver-lock', '<p>6271-SS-Liver Lock</p>', 17, 2, 2, 138, '6271-SS-Liver Lock', '6271-SS-Liver Lock', '6271-SS-Liver Lock', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767278177_6271-ss-liver-lock.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:36:17'),
(158, '6211-SS-Liver Lock', '6211-ss-liver-lock', '<p>6211-SS-Liver Lock</p>', 17, 2, 2, 138, '6211-SS-Liver Lock', '6211-SS-Liver Lock', '6211-SS-Liver Lock', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767278210_6211-ss-liver-lock.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:36:50'),
(159, '1314 B-Bike Pad Lock', '1314-b-bike-pad-lock', '<p>1314 B-Bike Pad Lock</p>', 17, 2, 2, 138, '1314 B-Bike Pad Lock', '1314 B-Bike Pad Lock', '1314 B-Bike Pad Lock', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544097_1314-b-bike-pad-lock.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:54:57'),
(160, 'Bike Pad Lock-6865-65 MM', 'bike-pad-lock-6865-65-mm', '<p>Bike Pad Lock-6865-65 MM</p>', 17, 2, 2, 138, 'Bike Pad Lock-6865-65 MM', 'Bike Pad Lock-6865-65 MM', 'Bike Pad Lock-6865-65 MM', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544121_bike-pad-lock-6865-65-mm.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:55:21'),
(161, 'Bike Pad Lock-6875-75 MM', 'bike-pad-lock-6875-75-mm', '<p>Bike Pad Lock-6875-75 MM</p>', 17, 2, 2, 138, 'Bike Pad Lock-6875-75 MM', 'Bike Pad Lock-6875-75 MM', 'Bike Pad Lock-6875-75 MM', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544143_bike-pad-lock-6875-75-mm.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:55:43'),
(162, 'Pad Lock-CR-5350-Cross Key', 'pad-lock-cr-5350-cross-key', '<p>Pad Lock-CR-5350-Cross Key</p>', 17, 2, 2, 138, 'Pad Lock-CR-5350-Cross Key', 'Pad Lock-CR-5350-Cross Key', 'Pad Lock-CR-5350-Cross Key', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544166_pad-lock-cr-5350-cross-key.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:56:06'),
(163, 'Pad Lock-CR-5360-Cross Key', 'pad-lock-cr-5360-cross-key', '<p>Pad Lock-CR-5360-Cross Key</p>', 17, 2, 2, 138, 'Pad Lock-CR-5360-Cross Key', 'Pad Lock-CR-5360-Cross Key', 'Pad Lock-CR-5360-Cross Key', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544188_pad-lock-cr-5360-cross-key.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:56:28'),
(164, 'Pad Lock-NP-60-Matt', 'pad-lock-np-60-matt', '<p>Pad Lock-NP-60-Matt</p>', 17, 2, 2, 138, 'Pad Lock-NP-60-Matt', 'Pad Lock-NP-60-Matt', 'Pad Lock-NP-60-Matt', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544209_pad-lock-np-60-matt.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:56:49'),
(165, '310 Rim Lock-12 Key-AC-Without Chain', '310-rim-lock-12-key-ac-without-chain', '<p>310 Rim Lock-12 Key-AC-Without Chain</p>', 17, 2, 2, 137, '310 Rim Lock-12 Key-AC-Without Chain', '310 Rim Lock-12 Key-AC-Without Chain', '310 Rim Lock-12 Key-AC-Without Chain', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767278605_310-rim-lock-12-key-ac-without-chain.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:43:25'),
(166, '310 Rim Lock-12 Key-SS-Without Chain', '310-rim-lock-12-key-ss-without-chain', '<p>310 Rim Lock-12 Key-SS-Without Chain</p>', 17, 2, 2, 137, '310 Rim Lock-12 Key-SS-Without Chain', '310 Rim Lock-12 Key-SS-Without Chain', '310 Rim Lock-12 Key-SS-Without Chain', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765544357_310-rim-lock-12-key-ss-without-chain.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:59:17'),
(167, '310 Rim Lock-18 Key-SS-Without Chain', '310-rim-lock-18-key-ss-without-chain', '<p>310 Rim Lock-18 Key-SS-Without Chain</p>', 17, 2, 2, 137, '310 Rim Lock-18 Key-SS-Without Chain', '310 Rim Lock-18 Key-SS-Without Chain', '310 Rim Lock-18 Key-SS-Without Chain', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544382_310-rim-lock-18-key-ss-without-chain.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:59:42'),
(168, '310 Rim Lock-24 Key-SS-Without Chain', '310-rim-lock-24-key-ss-without-chain', '<p>310 Rim Lock-24 Key-SS-Without Chain</p>', 17, 2, 2, 137, '310 Rim Lock-24 Key-SS-Without Chain', '310 Rim Lock-24 Key-SS-Without Chain', '310 Rim Lock-24 Key-SS-Without Chain', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544403_310-rim-lock-24-key-ss-without-chain.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 13:00:03'),
(169, '310 Rim Lock-6 Key-AC-Without Chain', '310-rim-lock-6-key-ac-without-chain', '<p>310 Rim Lock-6 Key-AC-Without Chain</p>', 17, 2, 2, 137, '310 Rim Lock-6 Key-AC-Without Chain', '310 Rim Lock-6 Key-AC-Without Chain', '310 Rim Lock-6 Key-AC-Without Chain', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544428_310-rim-lock-6-key-ac-without-chain.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 13:00:28'),
(170, '310 Rim Lock-6 Key-SS-Without Chain', '310-rim-lock-6-key-ss-without-chain', '<p>310 Rim Lock-6 Key-SS-Without Chain</p>', 17, 2, 2, 137, '310 Rim Lock-6 Key-SS-Without Chain', '310 Rim Lock-6 Key-SS-Without Chain', '310 Rim Lock-6 Key-SS-Without Chain', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544450_310-rim-lock-6-key-ss-without-chain.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 13:00:50'),
(171, '564-AC- Auto Rim Lock', '564-ac-auto-rim-lock', '<p>564-AC- Auto Rim Lock</p>', 17, 2, 2, 137, '564-AC- Auto Rim Lock', '564-AC- Auto Rim Lock', '564-AC- Auto Rim Lock', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544478_564-ac-auto-rim-lock.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 13:01:18'),
(172, '3/4\"(.65MM) -Piano Hinge-ALL SS (PIN) (396 GM)', '3465mm-piano-hinge-all-ss-pin-396-gm', '<p>3/4\"(.65MM) -Piano Hinge-ALL SS (PIN) (396 GM)</p>', 17, 2, 2, 136, '3/4\"(.65MM) -Piano Hinge-ALL SS (PIN) (396 GM)', '3/4\"(.65MM) -Piano Hinge-ALL SS (PIN) (396 GM)', '3/4\"(.65MM) -Piano Hinge-ALL SS (PIN) (396 GM)', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765543222_3465mm-piano-hinge-all-ss-pin-396-gm.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:40:22'),
(173, '138-22-SS-Drawer Lock-JB Type', '138-22-ss-drawer-lock-jb-type', '<p>138-22-SS-Drawer Lock-JB Type</p>', 17, 2, 2, 135, '138-22-SS-Drawer Lock-JB Type', '138-22-SS-Drawer Lock-JB Type', '138-22-SS-Drawer Lock-JB Type', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767277918_138-22-ss-drawer-lock-jb-type.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:31:58'),
(174, '138-22-AC-Drawer Lock-JB type', '138-22-ac-drawer-lock-jb-type', '<p>138-22-AC-Drawer Lock-JB type</p>', 17, 2, 2, 135, '138-22-AC-Drawer Lock-JB type', '138-22-AC-Drawer Lock-JB type', '138-22-AC-Drawer Lock-JB type', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767277899_138-22-ac-drawer-lock-jb-type.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:31:39'),
(175, 'Furniture Lock-CP-Wave Computer Key', 'furniture-lock-cp-wave-computer-key', '<p>Furniture Lock-CP-Wave Computer Key</p>', 17, 2, 2, 135, 'Furniture Lock-CP-Wave Computer Key', 'Furniture Lock-CP-Wave Computer Key', 'Furniture Lock-CP-Wave Computer Key', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767277830_furniture-lock-cp-wave-computer-key.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:30:30'),
(176, 'Furniture Lock-AC-Wave Computer Key', 'furniture-lock-ac-wave-computer-key', '<p>Furniture Lock-AC-Wave Computer Key</p>', 17, 2, 2, 135, 'Furniture Lock-AC-Wave Computer Key', 'Furniture Lock-AC-Wave Computer Key', 'Furniture Lock-AC-Wave Computer Key', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767277860_furniture-lock-ac-wave-computer-key.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:31:00'),
(177, 'Showcase Lock', 'showcase-lock', '<p>Showcase Lock</p>', 17, 2, 2, 135, 'Showcase Lock', 'Showcase Lock', 'Showcase Lock', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767277779_showcase-lock.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:29:39'),
(178, 'LPG Regulator - Orange - 22 mm', 'lpg-regulator-orange-22-mm', '<p>LPG Regulator - Orange - 22 mm</p>', 17, 2, 2, 134, 'LPG Regulator - Orange - 22 mm', 'LPG Regulator - Orange - 22 mm', 'LPG Regulator - Orange - 22 mm', NULL, NULL, 50.00, 400.00, NULL, 100, NULL, NULL, 'uploads/products/1767278269_lpg-regulator-orange-22-mm.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:37:49'),
(179, 'LPG Regulator - Silver - 22 MM', 'lpg-regulator-silver-22-mm', '<p>LPG Regulator - Silver - 22 MM</p>', 17, 2, 2, 134, 'LPG Regulator - Silver - 22 MM', 'LPG Regulator - Silver - 22 MM', 'LPG Regulator - Silver - 22 MM', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767278294_lpg-regulator-silver-22-mm.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:38:14'),
(180, 'Hydrolic Concealed Hinge 888 F-HIGH-Soza-SS & 1/2 Baka', 'hydrolic-concealed-hinge-888-f-high-soza-ss-12-baka', '<p>Hydrolic Concealed Hinge 888 F-HIGH-Soza-SS &amp; 1/2 Baka</p>', 17, 2, 2, 133, 'Hydrolic Concealed Hinge 888 F-HIGH-Soza-SS & 1/2 Baka', 'Hydrolic Concealed Hinge 888 F-HIGH-Soza-SS & 1/2 Baka', 'Hydrolic Concealed Hinge 888 F-HIGH-Soza-SS & 1/2 Baka', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765543495_hydrolic-concealed-hinge-888-f-high-soza-ss-12-baka.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:44:55'),
(181, 'Normal Concealed Hinge 261-LOW-(Soza)', 'normal-concealed-hinge-261-low-soza', '<p>Normal Concealed Hinge 261-LOW-(Soza)</p>', 17, 2, 2, 133, 'Normal Concealed Hinge 261-LOW-(Soza)', 'Normal Concealed Hinge 261-LOW-(Soza)', 'Normal Concealed Hinge 261-LOW-(Soza)', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765543518_normal-concealed-hinge-261-low-soza.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:45:18'),
(182, 'SF-9601-(A) Decoration Machine-6\"', 'sf-9601-a-decoration-machine-6', '<p>SF-9601-(A) Decoration Machine-6\"</p>', 17, 2, 2, 132, 'SF-9601-(A) Decoration Machine-6\"', 'SF-9601-(A) Decoration Machine-6\"', 'SF-9601-(A) Decoration Machine-6\"', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767278507_sf-9601-a-decoration-machine-6.png', 1, 1, NULL, '2025-12-10 19:21:03', '2026-01-01 14:41:47'),
(183, 'GR-03-Soft Pattern Rubber-6\"', 'gr-03-soft-pattern-rubber-6', '<p>GR-03-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-03-Soft Pattern Rubber-6\"', 'GR-03-Soft Pattern Rubber-6\"', 'GR-03-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1765542829_gr-03-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:33:49'),
(184, 'GR-86-Soft Pattern Rubber-6\"', 'gr-86-soft-pattern-rubber-6', '<p>GR-86-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-86-Soft Pattern Rubber-6\"', 'GR-86-Soft Pattern Rubber-6\"', 'GR-86-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 34.00, NULL, 100, NULL, NULL, 'uploads/products/1765542849_gr-86-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:34:09'),
(185, 'GR-78-Soft Pattern Rubber-6\"', 'gr-78-soft-pattern-rubber-6', '<p>GR-78-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-78-Soft Pattern Rubber-6\"', 'GR-78-Soft Pattern Rubber-6\"', 'GR-78-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765542872_gr-78-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:34:32'),
(186, 'GR-126-Soft Pattern Rubber-6\"', 'gr-126-soft-pattern-rubber-6', '<p>GR-126-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-126-Soft Pattern Rubber-6\"', 'GR-126-Soft Pattern Rubber-6\"', 'GR-126-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765542892_gr-126-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:34:52'),
(187, 'GR-33-Soft Pattern Rubber-6\"', 'gr-33-soft-pattern-rubber-6', '<p>GR-33-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-33-Soft Pattern Rubber-6\"', 'GR-33-Soft Pattern Rubber-6\"', 'GR-33-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765542915_gr-33-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:35:15'),
(188, 'GR-09-Soft Pattern Rubber-6\"', 'gr-09-soft-pattern-rubber-6', '<p>GR-09-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-09-Soft Pattern Rubber-6\"', 'GR-09-Soft Pattern Rubber-6\"', 'GR-09-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765542998_gr-09-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:36:38'),
(189, 'GR-127-Soft Pattern Rubber-6\"', 'gr-127-soft-pattern-rubber-6', '<p>GR-127-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-127-Soft Pattern Rubber-6\"', 'GR-127-Soft Pattern Rubber-6\"', 'GR-127-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 34.00, NULL, 100, NULL, NULL, 'uploads/products/1765543022_gr-127-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:37:02'),
(190, 'GR-35-Soft Pattern Rubber-6\"', 'gr-35-soft-pattern-rubber-6', '<p>GR-35-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-35-Soft Pattern Rubber-6\"', 'GR-35-Soft Pattern Rubber-6\"', 'GR-35-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765543042_gr-35-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:37:22'),
(191, 'GR-46-Soft Pattern Rubber-6\"', 'gr-46-soft-pattern-rubber-6', '<p>GR-46-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-46-Soft Pattern Rubber-6\"', 'GR-46-Soft Pattern Rubber-6\"', 'GR-46-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 38.00, NULL, 100, NULL, NULL, 'uploads/products/1765543065_gr-46-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:37:45'),
(192, 'GR-70-Soft Pattern Rubber-6\"', 'gr-70-soft-pattern-rubber-6', '<p>GR-70-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-70-Soft Pattern Rubber-6\"', 'GR-70-Soft Pattern Rubber-6\"', 'GR-70-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765543090_gr-70-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:38:10'),
(193, 'GR-82-Soft Pattern Rubber-6\"', 'gr-82-soft-pattern-rubber-6', '<p>GR-82-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-82-Soft Pattern Rubber-6\"', 'GR-82-Soft Pattern Rubber-6\"', 'GR-82-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765543113_gr-82-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:38:33'),
(194, 'GR-77-Soft Pattern Rubber-6\"', 'gr-77-soft-pattern-rubber-6', '<p>GR-77-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-77-Soft Pattern Rubber-6\"', 'GR-77-Soft Pattern Rubber-6\"', 'GR-77-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765543138_gr-77-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:38:58'),
(195, 'GR-29-Soft Pattern Rubber-6\"', 'gr-29-soft-pattern-rubber-6', '<p>GR-29-Soft Pattern Rubber-6\"</p>', 17, 2, 2, 132, 'GR-29-Soft Pattern Rubber-6\"', 'GR-29-Soft Pattern Rubber-6\"', 'GR-29-Soft Pattern Rubber-6\"', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765543165_gr-29-soft-pattern-rubber-6.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:39:25'),
(196, 'SF-9501(A) Decoration Machine-7\"', 'sf-9501a-decoration-machine-7', '<p>SF-9501(A) Decoration Machine-7\"</p>', 17, 2, 2, 131, 'SF-9501(A) Decoration Machine-7\"', 'SF-9501(A) Decoration Machine-7\"', 'SF-9501(A) Decoration Machine-7\"', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765542716_sf-9501a-decoration-machine-7.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:31:56'),
(197, 'SF-008-Rubber Roller-7\"', 'sf-008-rubber-roller-7', '<p>SF-008-Rubber Roller-7\"</p>', 17, 2, 2, 131, 'SF-008-Rubber Roller-7\"', 'SF-008-Rubber Roller-7\"', 'SF-008-Rubber Roller-7\"', NULL, NULL, 50.00, 38.00, NULL, 100, NULL, NULL, 'uploads/products/1765542736_sf-008-rubber-roller-7.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:32:16'),
(198, 'SF-065-Rubber Roller-7\"', 'sf-065-rubber-roller-7', '<p>SF-065-Rubber Roller-7\"</p>', 17, 2, 2, 131, 'SF-065-Rubber Roller-7\"', 'SF-065-Rubber Roller-7\"', 'SF-065-Rubber Roller-7\"', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1765542755_sf-065-rubber-roller-7.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:32:35'),
(199, 'Sponge Kit Aj-01', 'sponge-kit-aj-01', '<p>Sponge Kit Aj-01</p>', 17, 2, 2, 130, 'Sponge Kit Aj-01', 'Sponge Kit Aj-01', 'Sponge Kit Aj-01', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765542489_sponge-kit-aj-01.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:29:23'),
(200, 'Sponge Kit Aj-08', 'sponge-kit-aj-08', '<p>Sponge Kit Aj-08</p>', 17, 2, 2, 130, 'Sponge Kit Aj-08', 'Sponge Kit Aj-08', 'Sponge Kit Aj-08', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765542510_sponge-kit-aj-08.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:29:33'),
(201, 'Sponge Kit Aj-27', 'sponge-kit-aj-27', '<p>Sponge Kit Aj-27</p>', 17, 2, 2, 130, 'Sponge Kit Aj-27', 'Sponge Kit Aj-27', 'Sponge Kit Aj-27', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765542542_sponge-kit-aj-27.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:29:02'),
(202, 'Sponge Kit Aj-28', 'sponge-kit-aj-28', '<p>Sponge Kit Aj-28</p>', 17, 2, 2, 130, 'Sponge Kit Aj-28', 'Sponge Kit Aj-28', 'Sponge Kit Aj-28', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765542605_sponge-kit-aj-28.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:30:05'),
(203, 'Sponge Kit Aj-29', 'sponge-kit-aj-29', '<p>Sponge Kit Aj-29</p>', 17, 2, 2, 130, 'Sponge Kit Aj-29', 'Sponge Kit Aj-29', 'Sponge Kit Aj-29', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765542624_sponge-kit-aj-29.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:30:24'),
(204, 'Sponge Kit Aj-69', 'sponge-kit-aj-69', '<p>Sponge Kit Aj-69</p>', 17, 2, 2, 130, 'Sponge Kit Aj-69', 'Sponge Kit Aj-69', 'Sponge Kit Aj-69', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765542645_sponge-kit-aj-69.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:30:45'),
(205, 'Sponge Kit FL-69', 'sponge-kit-fl-69', '<p>Sponge Kit FL-69</p>', 17, 2, 2, 130, 'Sponge Kit FL-69', 'Sponge Kit FL-69', 'Sponge Kit FL-69', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765542664_sponge-kit-fl-69.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:31:04'),
(206, 'Sponge Kit FL-70', 'sponge-kit-fl-70', '<p>Sponge Kit FL-70</p>', 17, 2, 2, 130, 'Sponge Kit FL-70', 'Sponge Kit FL-70', 'Sponge Kit FL-70', NULL, NULL, 50.00, 38.00, NULL, 100, NULL, NULL, 'uploads/products/1765542684_sponge-kit-fl-70.jpg', 1, 0, NULL, '2025-12-10 19:21:03', '2025-12-12 12:31:25'),
(207, '9000-AC-SS sheet', '9000-ac-ss-sheet', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(210, '5893-AC', '5893-ac', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(211, '5892-AC', '5892-ac', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(213, '5890-S', '5890-s', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(214, '5890-SB/PB', '5890-sbpb', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(215, '5890-Coffee', '5890-coffee', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(218, '5885-AC', '5885-ac', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(219, '5801-RG-Dimond Knob', '5801-rg-dimond-knob', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(220, '5801-SS-Dimond Knob', '5801-ss-dimond-knob', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(221, 'CNCI-CP', 'cnci-cp', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(222, 'CNCI-AC', 'cnci-ac', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(224, '1015 H 502-ORB', '1015-h-502-orb', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(226, '813-990-ORG', '813-990-org', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(227, '85138-377-ORB', '85138-377-orb', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(228, 'M-1200 H-741-DAB', 'm-1200-h-741-dab', NULL, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:12', '2025-12-10 19:21:12'),
(229, '691-537-AC-2 in 1', '691-537-ac-2-in-1', '<p>691-537-AC-2 in 1</p>', 16, 2, 2, 145, '691-537-AC-2 in 1', '691-537-AC-2 in 1', '691-537-AC-2 in 1', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544532_691-537-ac-2-in-1.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:02:12'),
(230, 'KG 01 XL 380-ORB', 'kg-01-xl-380-orb', '<p>KG 01 XL 380-ORB</p>', 16, 2, 2, 145, 'KG 01 XL 380-ORB', 'KG 01 XL 380-ORB', 'KG 01 XL 380-ORB', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544558_kg-01-xl-380-orb.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:02:38'),
(231, 'KG 02 XL 370-SN/CP', 'kg-02-xl-370-sncp', '<p>KG 02 XL 370-SN/CP</p>', 16, 2, 2, 145, 'KG 02 XL 370-SN/CP', 'KG 02 XL 370-SN/CP', 'KG 02 XL 370-SN/CP', NULL, NULL, 50.00, 34.00, NULL, 100, NULL, NULL, 'uploads/products/1765544577_kg-02-xl-370-sncp.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:02:57'),
(232, 'KG 03-XL-370-Black / AC-2 in 1', 'kg-03-xl-370-black-ac-2-in-1', '<p>KG 03-XL-370-Black / AC-2 in 1</p>', 16, 2, 2, 145, 'KG 03-XL-370-Black / AC-2 in 1', 'KG 03-XL-370-Black / AC-2 in 1', 'KG 03-XL-370-Black / AC-2 in 1', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544600_kg-03-xl-370-black-ac-2-in-1.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:03:20'),
(233, 'KG 03-XL-370-ORB-2 in 1', 'kg-03-xl-370-orb-2-in-1', '<p>KG 03-XL-370-ORB-2 in 1</p>', 16, 2, 2, 145, 'KG 03-XL-370-ORB-2 in 1', 'KG 03-XL-370-ORB-2 in 1', 'KG 03-XL-370-ORB-2 in 1', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544620_kg-03-xl-370-orb-2-in-1.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:03:40'),
(234, 'KG 04-XL-370-ORB-2 in 1', 'kg-04-xl-370-orb-2-in-1', '<p>KG 04-XL-370-ORB-2 in 1</p>', 16, 2, 2, 145, 'KG 04-XL-370-ORB-2 in 1', 'KG 04-XL-370-ORB-2 in 1', 'KG 04-XL-370-ORB-2 in 1', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544640_kg-04-xl-370-orb-2-in-1.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:04:00'),
(235, 'KG 04-XL-370-SN/CP-2 in 1', 'kg-04-xl-370-sncp-2-in-1', '<p>KG 04-XL-370-SN/CP-2 in 1</p>', 16, 2, 2, 145, 'KG 04-XL-370-SN/CP-2 in 1', 'KG 04-XL-370-SN/CP-2 in 1', 'KG 04-XL-370-SN/CP-2 in 1', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544672_kg-04-xl-370-sncp-2-in-1.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:04:32'),
(236, 'KG-05-Xl-375-RG-2 in 1', 'kg-05-xl-375-rg-2-in-1', '<p>KG-05-Xl-375-RG-2 in 1</p>', 16, 2, 2, 145, 'KG-05-Xl-375-RG-2 in 1', 'KG-05-Xl-375-RG-2 in 1', 'KG-05-Xl-375-RG-2 in 1', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544690_kg-05-xl-375-rg-2-in-1.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:04:50'),
(237, 'KG-05-Xl-375-ORB-2 in 1', 'kg-05-xl-375-orb-2-in-1', '<p>KG-05-Xl-375-ORB-2 in 1</p>', 16, 2, 2, 145, 'KG-05-Xl-375-ORB-2 in 1', 'KG-05-Xl-375-ORB-2 in 1', 'KG-05-Xl-375-ORB-2 in 1', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544709_kg-05-xl-375-orb-2-in-1.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:05:09'),
(238, 'KG 07 XL 375-MCF (COFFEE)', 'kg-07-xl-375-mcf-coffee', '<p>KG 07 XL 375-MCF (COFFEE)</p>', 16, 2, 2, 145, 'KG 07 XL 375-MCF (COFFEE)', 'KG 07 XL 375-MCF (COFFEE)', 'KG 07 XL 375-MCF (COFFEE)', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544731_kg-07-xl-375-mcf-coffee.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:05:31'),
(239, 'KG -08 XL-380-ORB', 'kg-08-xl-380-orb', '<p>KG -08 XL-380-ORB</p>', 16, 2, 2, 145, 'KG -08 XL-380-ORB', 'KG -08 XL-380-ORB', 'KG -08 XL-380-ORB', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544752_kg-08-xl-380-orb.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:05:52'),
(240, 'KG -08 XL-380-RG', 'kg-08-xl-380-rg', '<p>KG -08 XL-380-RG</p>', 16, 2, 2, 145, 'KG -08 XL-380-RG', 'KG -08 XL-380-RG', 'KG -08 XL-380-RG', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544769_kg-08-xl-380-rg.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:06:09'),
(241, 'KG 09-XL-381-ORB', 'kg-09-xl-381-orb', '<p>KG 09-XL-381-ORB</p>', 16, 2, 2, 145, 'KG 09-XL-381-ORB', 'KG 09-XL-381-ORB', 'KG 09-XL-381-ORB', NULL, NULL, 50.00, 20.00, NULL, 100, NULL, NULL, 'uploads/products/1765544817_kg-09-xl-381-orb.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:06:57'),
(242, 'KG 09-XL-381-RG', 'kg-09-xl-381-rg', '<p>KG 09-XL-381-RG</p>', 16, 2, 2, 145, 'KG 09-XL-381-RG', 'KG 09-XL-381-RG', 'KG 09-XL-381-RG', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544839_kg-09-xl-381-rg.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:07:19'),
(243, 'FD 9818-724 MAE', 'fd-9818-724-mae', '<p>FD 9818-724 MAE</p>', 16, 2, 2, 145, 'FD 9818-724 MAE', 'FD 9818-724 MAE', 'FD 9818-724 MAE', NULL, NULL, 50.00, 20.00, NULL, 100, NULL, NULL, 'uploads/products/1765544865_fd-9818-724-mae.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:07:45'),
(245, 'FD 9531-733 MCF', 'fd-9531-733-mcf', '<p>FD 9531-733 MCF</p>', 16, 2, 2, 145, 'FD 9531-733 MCF', 'FD 9531-733 MCF', 'FD 9531-733 MCF', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544889_fd-9531-733-mcf.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:08:09'),
(246, 'FD 9531-592 MCF', 'fd-9531-592-mcf', '<p>FD 9531-592 MCF</p>', 16, 2, 2, 145, 'FD 9531-592 MCF', 'FD 9531-592 MCF', 'FD 9531-592 MCF', NULL, NULL, 50.00, 10.00, NULL, 100, NULL, NULL, 'uploads/products/1765544928_fd-9531-592-mcf.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:08:48'),
(247, 'FD 9531-592 ORB', 'fd-9531-592-orb', '<p>FD 9531-592 ORB</p>', 16, 2, 2, 145, 'FD 9531-592 ORB', 'FD 9531-592 ORB', 'FD 9531-592 ORB', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765544988_fd-9531-592-orb.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:09:48'),
(248, 'FD 9325-536 RG', 'fd-9325-536-rg', '<p>FD 9325-536 RG</p>', 16, 2, 2, 145, 'FD 9325-536 RG', 'FD 9325-536 RG', 'FD 9325-536 RG', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765545009_fd-9325-536-rg.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:10:09'),
(249, 'FD 9764-536 RG', 'fd-9764-536-rg', '<p>FD 9764-536 RG</p>', 16, 2, 2, 145, 'FD 9764-536 RG', 'FD 9764-536 RG', 'FD 9764-536 RG', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765545027_fd-9764-536-rg.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:10:27'),
(250, 'FD 9208B-298B-RG', 'fd-9208b-298b-rg', '<p>FD 9208B-298B-RG</p>', 16, 2, 2, 145, 'FD 9208B-298B-RG', 'FD 9208B-298B-RG', 'FD 9208B-298B-RG', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765545047_fd-9208b-298b-rg.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:10:47'),
(251, 'FD 9395-44-RG', 'fd-9395-44-rg', '<p>FD 9395-44-RG</p>', 16, 2, 2, 145, 'FD 9395-44-RG', 'FD 9395-44-RG', 'FD 9395-44-RG', NULL, NULL, 50.00, 25.00, NULL, 100, NULL, NULL, 'uploads/products/1765545066_fd-9395-44-rg.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:11:06'),
(252, 'FD 9395-44-MCF', 'fd-9395-44-mcf', '<p>FD 9395-44-MCF</p>', 16, 2, 2, 145, 'FD 9395-44-MCF', 'FD 9395-44-MCF', 'FD 9395-44-MCF', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765545086_fd-9395-44-mcf.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 13:11:26'),
(253, 'D-812-SS-(Dead Bolt-Single)-Square', 'd-812-ss-dead-bolt-single-square', '<p>D-812-SS-(Dead Bolt-Single)-Square</p>', 16, 2, 2, 144, 'D-812-SS-(Dead Bolt-Single)-Square', 'D-812-SS-(Dead Bolt-Single)-Square', 'D-812-SS-(Dead Bolt-Single)-Square', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767277294_d-812-ss-dead-bolt-single-square.png', 1, 1, NULL, '2025-12-10 19:21:12', '2026-01-01 14:21:34'),
(254, '7301-AC-Dead Bolt-Single-Knob', '7301-ac-dead-bolt-single-knob', '<p>7301-AC-Dead Bolt-Single-Knob</p>', 16, 2, 2, 144, '7301-AC-Dead Bolt-Single-Knob', '7301-AC-Dead Bolt-Single-Knob', '7301-AC-Dead Bolt-Single-Knob', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765543591_7301-ac-dead-bolt-single-knob.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 12:46:31'),
(255, '7301-SS-Dead Bolt-Single-Knob', '7301-ss-dead-bolt-single-knob', '<p>7301-SS-Dead Bolt-Single-Knob</p>', 16, 2, 2, 144, '7301-SS-Dead Bolt-Single-Knob', '7301-SS-Dead Bolt-Single-Knob', '7301-SS-Dead Bolt-Single-Knob', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765543618_7301-ss-dead-bolt-single-knob.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 12:46:58'),
(256, '7312-SS -Dead Bolt-Doble', '7312-ss-dead-bolt-doble', '<p>7312-SS -Dead Bolt-Doble</p>', 16, 2, 2, 144, '7312-SS -Dead Bolt-Doble', '7312-SS -Dead Bolt-Doble', '7312-SS -Dead Bolt-Doble', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767277242_7312-ss-dead-bolt-doble.png', 1, 1, NULL, '2025-12-10 19:21:12', '2026-01-01 14:20:42'),
(257, '7312-AC -Dead Bolt-Doble', '7312-ac-dead-bolt-doble', '<p>7312-AC -Dead Bolt-Doble</p>', 16, 2, 2, 144, '7312-AC -Dead Bolt-Doble', '7312-AC -Dead Bolt-Doble', '7312-AC -Dead Bolt-Doble', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1767277194_7312-ac-dead-bolt-doble.png', 1, 1, NULL, '2025-12-10 19:21:12', '2026-01-01 14:19:54'),
(258, '838-(805) Door Stopper-SS-Vikars', '838-805-door-stopper-ss-vikars', '<p>838-(805) Door Stopper-SS-Vikars</p>', 16, 2, 2, 143, '838-(805) Door Stopper-SS-Vikars', '838-(805) Door Stopper-SS-Vikars', '838-(805) Door Stopper-SS-Vikars', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767277627_838-805-door-stopper-ss-vikars.png', 1, 1, NULL, '2025-12-10 19:21:12', '2026-01-01 14:27:07'),
(259, '888- Door Stopper-SS-(Vikars)', '888-door-stopper-ss-vikars', '<p>888- Door Stopper-SS-(Vikars)</p>', 16, 2, 2, 143, '888- Door Stopper-SS-(Vikars)', '888- Door Stopper-SS-(Vikars)', '888- Door Stopper-SS-(Vikars)', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767277571_888-door-stopper-ss-vikars.png', 1, 1, NULL, '2025-12-10 19:21:12', '2026-01-01 14:26:11'),
(260, '823 Door Stopper-SS-(Vikars)', '823-door-stopper-ss-vikars', '<p>823 Door Stopper-SS-(Vikars)</p>', 16, 2, 2, 143, '823 Door Stopper-SS-(Vikars)', '823 Door Stopper-SS-(Vikars)', '823 Door Stopper-SS-(Vikars)', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767277603_823-door-stopper-ss-vikars.png', 1, 1, NULL, '2025-12-10 19:21:12', '2026-01-01 14:26:43'),
(261, '666 Door Stopper-ACZinc (Vikars)', '666-door-stopper-aczinc-vikars', '<p>666 Door Stopper-ACZinc (Vikars)</p>', 16, 2, 2, 143, '666 Door Stopper-ACZinc (Vikars)', '666 Door Stopper-ACZinc (Vikars)', '666 Door Stopper-ACZinc (Vikars)', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765543765_666-door-stopper-aczinc-vikars.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 12:49:25'),
(262, 'Door Viewer with Shutter- AC', 'door-viewer-with-shutter-ac', '<p>Door Viewer with Shutter- AC</p>', 16, 2, 2, 142, 'Door Viewer with Shutter- AC', 'Door Viewer with Shutter- AC', 'Door Viewer with Shutter- AC', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765543796_door-viewer-with-shutter-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 12:49:56'),
(263, 'Door Viewer with Shutter-Coffee', 'door-viewer-with-shutter-coffee', '<p>Door Viewer with Shutter-Coffee</p>', 16, 2, 2, 142, 'Door Viewer with Shutter-Coffee', 'Door Viewer with Shutter-Coffee', 'Door Viewer with Shutter-Coffee', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765543818_door-viewer-with-shutter-coffee.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 12:50:18'),
(264, 'Door Viewer without Shutter-AC', 'door-viewer-without-shutter-ac', '<p>Door Viewer without Shutter-AC</p>', 16, 2, 2, 142, 'Door Viewer without Shutter-AC', 'Door Viewer without Shutter-AC', 'Door Viewer without Shutter-AC', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765543838_door-viewer-without-shutter-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:12', '2025-12-12 12:50:38'),
(265, '9577-583-BRED', '9577-583-bred', '<p>9577-583-BRED</p>', 15, 2, 2, 146, '9577-583-BRED', '9577-583-BRED', '9577-583-BRED', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767280894_9577-583-bred.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:21:34'),
(266, '9123-Z 454-SN/CP', '9123-z-454-sncp', '<p>9123-Z 454-SN/CP</p>', 15, 2, 2, 146, '9123-Z 454-SN/CP', '9123-Z 454-SN/CP', '9123-Z 454-SN/CP', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765541444_9123-z-454-sncp.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:10:44'),
(267, '9123-Z 454-MCF', '9123-z-454-mcf', '<p>9123-Z 454-MC</p>', 15, 2, 2, 146, '9123-Z 454-MCF', '9123-Z 454-MC', '9123-Z 454-MC', NULL, NULL, 50.00, 36.00, NULL, 100, NULL, NULL, 'uploads/products/1767280272_9123-z-454-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:11:12'),
(268, '9522-406-MCF', '9522-406-mcf', '<p>9522-406-MCF</p>', 15, 2, 2, 146, '9522-406-MCF', '9522-406-MCF', '9522-406-MCF', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767280868_9522-406-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:21:08'),
(269, '9349-821-MCF', '9349-821-mcf', '<p>9349-821-MCF</p>', 15, 2, 2, 146, '9349-821-MCF', '9349-821-MCF', '9349-821-MCF', NULL, NULL, 50.00, 36.00, NULL, 100, NULL, NULL, 'uploads/products/1765541509_9349-821-mcf.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:11:49'),
(270, '939-D-113-MSN/KGP', '939-d-113-msnkgp', '<p>939-D-113-MSN/KGP</p>', 15, 2, 2, 146, '939-D-113-MSN/KGP', '939-D-113-MSN/KGP', '939-D-113-MSN/KGP', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765541528_939-d-113-msnkgp.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:12:08');
INSERT INTO `product` (`id`, `name`, `slug`, `description_full`, `purchase_order_id`, `supplier_id`, `categoryId`, `subcategoryId`, `meta_title`, `meta_description`, `meta_keyword`, `sku`, `cash_dev_status`, `price`, `discount_price`, `unit`, `stock_qty`, `stock_mini_qty`, `shipping_days`, `thumnail_img`, `first_update`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(271, '939-D-113-MCF/KGP', '939-d-113-mcfkgp', '<p>939-D-113-MCF/KGP</p>', 15, 2, 2, 146, '939-D-113-MCF/KGP', '939-D-113-MCF/KGP', '939-D-113-MCF/KGP', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765541548_939-d-113-mcfkgp.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:12:28'),
(272, '9349-D-113-Black/ GP', '9349-d-113-black-gp', '<p>9349-D-113-Black/ GP</p>', 15, 2, 2, 146, '9349-D-113-Black/ GP', '9349-D-113-Black/ GP', '9349-D-113-Black/ GP', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765541568_9349-d-113-black-gp.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:12:48'),
(273, '9349-D-113-BSN/ MSN', '9349-d-113-bsn-msn', '<p>9349-D-113-BSN/ MSN</p>', 15, 2, 2, 146, '9349-D-113-BSN/ MSN', '9349-D-113-BSN/ MSN', '9349-D-113-BSN/ MSN', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767280833_9349-d-113-bsn-msn.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:20:33'),
(274, '9325-536-MCF', '9325-536-mcf', '<p>9325-536-MCF</p>', 15, 2, 2, 146, '9325-536-MCF', '9325-536-MCF', '9325-536-MCF', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767280805_9325-536-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:20:05'),
(275, '9325-536-BRED', '9325-536-bred', '<p>9325-536-BRED</p>', 15, 2, 2, 146, '9325-536-BRED', '9325-536-BRED', '9325-536-BRED', NULL, NULL, 50.00, 49.00, NULL, 100, NULL, NULL, 'uploads/products/1767280774_9325-536-bred.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:19:34'),
(276, '9302-442-MCF', '9302-442-mcf', '<p>9302-442-MCF</p>', 15, 2, 2, 146, '9302-442-MCF', '9302-442-MCF', '9302-442-MCF', NULL, NULL, 50.00, 38.00, NULL, 100, NULL, NULL, 'uploads/products/1767280509_9302-442-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:15:09'),
(277, '9302-E-16-MCF', '9302-e-16-mcf', '<p>9302-E-16-MCF</p>', 15, 2, 2, 146, '9302-E-16-MCF', '9302-E-16-MCF', '9302-E-16-MCF', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767280554_9302-e-16-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:15:54'),
(278, '9302-ER-16-BRED', '9302-er-16-bred', '<p>9302-ER-16-BRED</p>', 15, 2, 2, 146, '9302-ER-16-BRED', '9302-ER-16-BRED', '9302-ER-16-BRED', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767280736_9302-er-16-bred.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:18:56'),
(279, '95479-826-BRED', '95479-826-bred', '<p>95479-826-BRED</p>', 15, 2, 2, 146, '95479-826-BRED', '95479-826-BRED', '95479-826-BRED', NULL, NULL, 50.00, 38.00, NULL, 100, NULL, NULL, 'uploads/products/1767280973_95479-826-bred.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:22:53'),
(280, '9579-826-ORB', '9579-826-orb', '<p>9579-826-ORB</p>', 15, 2, 2, 146, '9579-826-ORB', '9579-826-ORB', '9579-826-ORB', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765541785_9579-826-orb.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:16:26'),
(281, '919-824-MSN/BSN', '919-824-msnbsn', '<p>919-824-MSN/BSN</p>', 15, 2, 2, 146, '919-824-MSN/BSN', '919-824-MSN/BSN', '919-824-MSN/BSN', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765541805_919-824-msnbsn.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:16:45'),
(282, '9252-301-SN/CP', '9252-301-sncp', '<p>9252-301-SN/CP</p>', 15, 2, 2, 146, '9252-301-SN/CP', '9252-301-SN/CP', '9252-301-SN/CP', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767280472_9252-301-sncp.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:14:32'),
(283, '85-12-ORB', '85-12-orb', '<p>85-12-ORB</p>', 15, 2, 2, 146, '85-12-ORB', '85-12-ORB', '85-12-ORB', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767279674_85-12-orb.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:01:14'),
(284, '85-11-AC', '85-11-ac', '<p>85-11-AC</p>', 15, 2, 2, 146, '85-11-AC', '85-11-AC', '85-11-AC', NULL, NULL, 50.00, 36.00, NULL, 100, NULL, NULL, 'uploads/products/1767279514_85-11-ac.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 14:58:34'),
(285, '85-11-MCF', '85-11-mcf', '<p>85-11-MCF</p>', 15, 2, 2, 146, '85-11-MCF', '85-11-MCF', '85-11-MCF', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767279579_85-11-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 14:59:39'),
(286, '85-11-ORB', '85-11-orb', '<p>85-11-ORB</p>', 15, 2, 2, 146, '85-11-ORB', '85-11-ORB', '85-11-ORB', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767279628_85-11-orb.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:00:28'),
(287, '1232 A 1501-BSN', '1232-a-1501-bsn', '<p>1232 A 1501-BSN</p>', 15, 2, 2, 146, '1232 A 1501-BSN', '1232 A 1501-BSN', '1232 A 1501-BSN', NULL, NULL, 50.00, 33.00, NULL, 100, NULL, NULL, 'uploads/products/1767280027_1232-a-1501-bsn.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:07:07'),
(288, '1232 A 1501-MCF', '1232-a-1501-mcf', '<p>1232 A 1501-MCF</p>', 15, 2, 2, 146, '1232 A 1501-MCF', '1232 A 1501-MCF', '1232 A 1501-MCF', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767280063_1232-a-1501-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:07:43'),
(289, '1232 A 1695-MSN', '1232-a-1695-msn', '<p>1232 A 1695-MSN</p>', 15, 2, 2, 146, '1232 A 1695-MSN', '1232 A 1695-MSN', '1232 A 1695-MSN', NULL, NULL, 50.00, 34.00, NULL, 100, NULL, NULL, 'uploads/products/1765541986_1232-a-1695-msn.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:19:46'),
(290, '1232A1695-MCF', '1232a1695-mcf', '<p>1232A1695-MCF</p>', 15, 2, 2, 146, '1232A1695-MCF', '1232A1695-MCF', '1232A1695-MCF', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1767280183_1232a1695-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:09:43'),
(291, '1232 A 1048-MSN', '1232-a-1048-msn', '<p>1232 A 1048-MSN</p>', 15, 2, 2, 146, '1232 A 1048-MSN', '1232 A 1048-MSN', '1232 A 1048-MSN', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1767279992_1232-a-1048-msn.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:06:32'),
(292, '1232 A 1048-MCF', '1232-a-1048-mcf', '<p>1232 A 1048-MCF</p>', 15, 2, 2, 146, '1232 A 1048-MCF', '1232 A 1048-MCF', '1232 A 1048-MCF', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1767279960_1232-a-1048-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:06:00'),
(293, '1232 A 9044-MSN', '1232-a-9044-msn', '<p>1232 A 9044-MSN</p>', 15, 2, 2, 146, '1232 A 9044-MSN', '1232 A 9044-MSN', '1232 A 9044-MSN', NULL, NULL, 50.00, 34.00, NULL, 100, NULL, NULL, 'uploads/products/1767280145_1232-a-9044-msn.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:09:05'),
(294, '1232 A 9044-MCF', '1232-a-9044-mcf', '<p>1232 A 9044-MCF</p>', 15, 2, 2, 146, '1232 A 9044-MCF', '1232 A 9044-MCF', '1232 A 9044-MCF', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1765542091_1232-a-9044-mcf.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:21:31'),
(295, '1232 A 9014-MCF', '1232-a-9014-mcf', '<p>1232 A 9014-MCF</p>', 15, 2, 2, 146, '1232 A 9014-MCF', '1232 A 9014-MCF', '1232 A 9014-MCF', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1765542110_1232-a-9014-mcf.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:21:50'),
(296, '1232 A 9014-MAB', '1232-a-9014-mab', '<p>1232 A 9014-MAB</p>', 15, 2, 2, 146, '1232 A 9014-MAB', '1232 A 9014-MAB', '1232 A 9014-MAB', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1767280106_1232-a-9014-mab.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:08:26'),
(297, '1248 A 9043-MCF', '1248-a-9043-mcf', '<p>1248 A 9043-MCF</p>', 15, 2, 2, 146, '1248 A 9043-MCF', '1248 A 9043-MCF', '1248 A 9043-MCF', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1767280222_1248-a-9043-mcf.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:10:22'),
(298, 'M-1158 H-655-AC', 'm-1158-h-655-ac', '<p>M-1158 H-655-AC</p>', 15, 2, 2, 146, 'M-1158 H-655-AC', 'M-1158 H-655-AC', 'M-1158 H-655-AC', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1767281271_m-1158-h-655-ac.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:27:51'),
(299, 'H-58177 H-192-ORG', 'h-58177-h-192-org', '<p>H-58177 H-192-ORG</p>', 15, 2, 2, 146, 'H-58177 H-192-ORG', 'H-58177 H-192-ORG', 'H-58177 H-192-ORG', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1767281101_h-58177-h-192-org.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:25:01'),
(300, 'H-58177 H-192-Black /AC', 'h-58177-h-192-black-ac', '<p>H-58177 H-192-Black /AC</p>', 15, 2, 2, 146, 'H-58177 H-192-Black /AC', 'H-58177 H-192-Black /AC', 'H-58177 H-192-Black /AC', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1767281060_h-58177-h-192-black-ac.png', 1, 1, NULL, '2025-12-10 19:21:18', '2026-01-01 15:24:20'),
(301, 'H-58178 H-193-ORG', 'h-58178-h-193-org', '<p>H-58178 H-193-ORG</p>', 15, 2, 2, 146, 'H-58178 H-193-ORG', 'H-58178 H-193-ORG', 'H-58178 H-193-ORG', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1765542238_h-58178-h-193-org.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:23:58'),
(302, 'H-58001 H-195-Black / AC', 'h-58001-h-195-black-ac', '<p>H-58001 H-195-Black / AC</p>', 15, 2, 2, 146, 'H-58001 H-195-Black / AC', 'H-58001 H-195-Black / AC', 'H-58001 H-195-Black / AC', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765542261_h-58001-h-195-black-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:24:21'),
(303, 'H-58001-H-195-ORG', 'h-58001-h-195-org', '<p>H-58001-H-195-ORG</p>', 15, 2, 2, 146, 'H-58001-H-195-ORG', 'H-58001-H-195-ORG', 'H-58001-H-195-ORG', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765542282_h-58001-h-195-org.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:24:42'),
(304, 'H-58001 H-194-ORG', 'h-58001-h-194-org', '<p>H-58001 H-194-ORG</p>', 15, 2, 2, 146, 'H-58001 H-194-ORG', 'H-58001 H-194-ORG', 'H-58001 H-194-ORG', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1765542309_h-58001-h-194-org.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:25:09'),
(305, 'H-58001-H-194-Black/ AC', 'h-58001-h-194-black-ac', '<p>H-58001-H-194-Black/ AC</p>', 15, 2, 2, 146, 'H-58001-H-194-Black/ AC', 'H-58001-H-194-Black/ AC', 'H-58001-H-194-Black/ AC', NULL, NULL, 50.00, 34.00, NULL, 100, NULL, NULL, 'uploads/products/1765542332_h-58001-h-194-black-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:25:32'),
(307, 'H-58175-H-190-Black / AC', 'h-58175-h-190-black-ac', '<p>H-58175-H-190-Black / AC</p>', 15, 2, 2, 146, 'H-58175-H-190-Black / AC', 'H-58175-H-190-Black / AC', 'H-58175-H-190-Black / AC', NULL, NULL, 50.00, 34.00, NULL, 100, NULL, NULL, 'uploads/products/1765542376_h-58175-h-190-black-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:26:16'),
(308, 'H-58005- H-540-ORG', 'h-58005-h-540-org', '<p>H-58005- H-540-ORG</p>', 15, 2, 2, 146, 'H-58005- H-540-ORG', 'H-58005- H-540-ORG', 'H-58005- H-540-ORG', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1765542406_h-58005-h-540-org.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:26:47'),
(309, 'H-58006 H-009-Black/ AC', 'h-58006-h-009-black-ac', '<p>H-58006 H-009-Black/ AC</p>', 15, 2, 2, 146, 'H-58006 H-009-Black/ AC', 'H-58006 H-009-Black/ AC', 'H-58006 H-009-Black/ AC', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765542426_h-58006-h-009-black-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2025-12-12 12:27:06'),
(310, 'AC H-58006 H-009-ORG', 'ac-h-58006-h-009-org', '<p>H-58006 H-009-ORG</p>', 15, 2, 2, 146, 'AC H-58006 H-009-ORG', 'H-58006 H-009-ORG', 'H-58006 H-009-ORG', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765542446_ac-h-58006-h-009-org.jpg', 1, 0, NULL, '2025-12-10 19:21:18', '2026-01-01 15:02:55'),
(311, '9000-AC-SS sheet', '9000-ac-ss-sheet', '<p>9000-AC-SS sheet</p>', 14, 2, 2, 148, '9000-AC-SS sheet', '9000-AC-SS sheet', '9000-AC-SS sheet', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767279353_9000-ac-ss-sheet.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:55:53'),
(312, '3871-SS', '3871-ss', '<p>3871-SS</p>', 14, 2, 2, 148, '3871-SS', '3871-SS', '3871-SS', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765540581_3871-ss.jpg', 1, 0, NULL, '2025-12-10 19:21:23', '2025-12-12 11:56:21'),
(313, '3871-AC', '3871-ac', '<p>3871-AC</p>', 14, 2, 2, 148, '3871-AC', '3871-AC', '3871-AC', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765540615_3871-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:23', '2025-12-12 11:56:55'),
(314, '5893-AC', '5893-ac', '<p>5893-AC</p>', 14, 2, 2, 147, '5893-AC', '5893-AC', '5893-AC', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767279174_5893-ac.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:52:54'),
(315, '5892-AC', '5892-ac', '<p>5892-AC</p>', 14, 2, 2, 147, '5892-AC', '5892-AC', '5892-AC', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767279127_5892-ac.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:52:07'),
(316, '5890-BN/PB', '5890-bnpb', '<p>5890-BN/PB</p>', 14, 2, 2, 147, '5890-BN/PB', '5890-BN/PB', '5890-BN/PB', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1765540720_5890-bnpb.jpg', 1, 0, NULL, '2025-12-10 19:21:23', '2025-12-12 11:58:40'),
(317, '5890-S', '5890-s', '<p>5890-S</p>', 14, 2, 2, 147, '5890-S', '5890-S', '5890-S', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767279091_5890-s.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:51:31'),
(318, '5890-SB/PB', '5890-sbpb', '<p>5890-SB/PB</p>', 14, 2, 2, 147, '5890-SB/PB', '5890-SB/PB', '5890-SB/PB', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767279048_5890-sbpb.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:50:48'),
(319, '5890-Coffee', '5890-coffee', NULL, 14, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:21:23', '2025-12-10 19:21:23'),
(320, '5887-SS/ CP', '5887-ss-cp', '<p>5887-SS/ CP&nbsp;&nbsp;&nbsp;</p>', 14, 2, 2, 147, '5887-SS/ CP', '5887-SS/ CP', '5887-SS/ CP', NULL, NULL, 50.00, 34.00, NULL, 100, NULL, NULL, 'uploads/products/1765540824_5887-ss-cp.jpg', 1, 0, NULL, '2025-12-10 19:21:23', '2025-12-12 12:00:24'),
(321, '5887-D-AC/PB-Full Zinc', '5887-d-acpb-full-zinc', '<p>5887-D-AC/PB-Full Zinc</p>', 14, 2, 2, 147, '5887-D-AC/PB-Full Zinc', '5887-D-AC/PB-Full Zinc', '5887-D-AC/PB-Full Zinc', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767278926_5887-d-acpb-full-zinc.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:48:46'),
(322, '5885-AC', '5885-ac', '<p>5885-AC</p>', 14, 2, 2, 147, '5885-AC', '5885-AC', '5885-AC', NULL, NULL, 50.00, 34.00, NULL, 100, NULL, NULL, 'uploads/products/1767278872_5885-ac.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:47:52'),
(323, '5801-RG-Dimond Knob', '5801-rg-dimond-knob', '<p>5801-RG-Dimond Knob</p>', 14, 2, 2, 147, '5801-RG-Dimond Knob', '5801-RG-Dimond Knob', '5801-RG-Dimond Knob', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767278823_5801-rg-dimond-knob.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:47:03'),
(324, '5801-SS-Dimond Knob', '5801-ss-dimond-knob', '<p>5801-SS-Dimond Knob</p>', 14, 2, 2, 147, '5801-SS-Dimond Knob', '5801-SS-Dimond Knob', '5801-SS-Dimond Knob', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1767278788_5801-ss-dimond-knob.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:46:28'),
(325, 'CNCI-CP', 'cnci-cp', '<p>CNCI-CP</p>', 14, 2, 2, 147, 'CNCI-CP', 'CNCI-CP', 'CNCI-CP', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767279308_cnci-cp.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:55:08'),
(326, 'CNCI-AC', 'cnci-ac', '<p>CNCI-AC</p>', 14, 2, 2, 147, 'CNCI-AC', 'CNCI-AC', 'CNCI-AC', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1767279275_cnci-ac.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 14:54:35'),
(327, 'CNCI-AB', 'cnci-ab', '<p>CNCI-AB</p>', 14, 2, 2, 147, 'CNCI-AB', 'CNCI-AB', 'CNCI-AB', NULL, NULL, 50.00, 48.00, NULL, 100, NULL, NULL, 'uploads/products/1765541092_cnci-ab.jpg', 1, 0, NULL, '2025-12-10 19:21:23', '2025-12-12 12:04:52'),
(328, '1015 H 502-ORB', '1015-h-502-orb', '<p>1015 H 502-ORB</p>', 14, 2, 2, 146, '1015 H 502-ORB', '1015 H 502-ORB', '1015 H 502-ORB', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767279891_1015-h-502-orb.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 15:04:51'),
(329, '813-990-Black / AC', '813-990-black-ac', '<p>813-990-Black / AC</p>', 14, 2, 2, 146, '813-990-Black / AC', '813-990-Black / AC', '813-990-Black / AC', NULL, NULL, 50.00, 44.00, NULL, 100, NULL, NULL, 'uploads/products/1765541197_813-990-black-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:23', '2025-12-12 12:06:37'),
(330, '813-990-ORG', '813-990-org', '<p>813-990-ORG</p>', 14, 2, 2, 146, '813-990-ORG', '813-990-ORG', '813-990-ORG', NULL, NULL, 50.00, 47.00, NULL, 100, NULL, NULL, 'uploads/products/1767279850_813-990-org.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 15:04:10'),
(331, '85138-377-ORB', '85138-377-orb', '<p>85138-377-ORB</p>', 14, 2, 2, 146, '85138-377-ORB', '85138-377-ORB', '85138-377-ORB', NULL, NULL, 50.00, 36.00, NULL, 100, NULL, NULL, 'uploads/products/1767280930_85138-377-orb.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 15:22:10'),
(332, 'M-1200 H-741-DAB', 'm-1200-h-741-dab', '<p>M-1200 H-741-DAB</p>', 14, 2, 2, 146, 'M-1200 H-741-DAB', 'M-1200 H-741-DAB', 'M-1200 H-741-DAB', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1767281216_m-1200-h-741-dab.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 15:26:56'),
(333, 'M-1200 H-741-DAC', 'm-1200-h-741-dac', '<p>M-1200 H-741-DAC</p>', 14, 2, 2, 146, 'M-1200 H-741-DAC', 'M-1200 H-741-DAC', 'M-1200 H-741-DAC', NULL, NULL, 50.00, 36.00, NULL, 100, NULL, NULL, 'uploads/products/1765541289_m-1200-h-741-dac.jpg', 1, 0, NULL, '2025-12-10 19:21:23', '2025-12-12 12:08:09'),
(334, 'Z 820-L8030-MSN', 'z-820-l8030-msn', '<p>Z 820-L8030-MSN</p>', 14, 2, 2, 146, 'Z 820-L8030-MSN', 'Z 820-L8030-MSN', 'Z 820-L8030-MSN', NULL, NULL, 50.00, 45.00, NULL, 100, NULL, NULL, 'uploads/products/1765541308_z-820-l8030-msn.jpg', 1, 0, NULL, '2025-12-10 19:21:23', '2025-12-12 12:08:28'),
(335, 'P-1166 H 254- DAC(BLACK +AC)', 'p-1166-h-254-dacblack-ac', '<p>P-1166 H 254- DAC</p>', 14, 2, 2, 146, 'P-1166 H 254- DAC(BLACK +AC)', 'P-1166 H 254- DAC', 'P-1166 H 254- DAC', NULL, NULL, 50.00, 35.00, NULL, 100, NULL, NULL, 'uploads/products/1767281315_p-1166-h-254-dacblack-ac.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 15:28:35'),
(336, 'Z 9106-Z 96-ORB', 'z-9106-z-96-orb', '<p>Z 9106-Z 96-ORB</p>', 14, 2, 2, 146, 'Z 9106-Z 96-ORB', 'Z 9106-Z 96-ORB', 'Z 9106-Z 96-ORB', NULL, NULL, 50.00, 36.00, NULL, 100, NULL, NULL, 'uploads/products/1767281413_z-9106-z-96-orb.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 15:30:13'),
(337, '9136-507-AC', '9136-507-ac', '<p>9136-507-AC</p>', 14, 2, 2, 146, '9136-507-AC', '9136-507-AC', '9136-507-AC', NULL, NULL, 50.00, 40.00, NULL, 100, NULL, NULL, 'uploads/products/1765541374_9136-507-ac.jpg', 1, 0, NULL, '2025-12-10 19:21:23', '2025-12-12 12:09:34'),
(338, '9136-507-MCF', '9136-507-mcf', '<p>9136-507-MCF</p>', 14, 2, 2, 146, '9136-507-MCF', '9136-507-MCF', '9136-507-MCF', NULL, NULL, 50.00, 30.00, NULL, 100, NULL, NULL, 'uploads/products/1767280434_9136-507-mcf.png', 1, 1, NULL, '2025-12-10 19:21:23', '2026-01-01 15:13:54'),
(339, '5/8 Steps | 200 Kg. (Capacity)', '58-steps-200-kg-capacity', '<p>5/8 Steps | 200 Kg. (Capacity)</p>', 18, 4, 82, 27, '5/8 Steps | 200 Kg. (Capacity)', '5/8 Steps | 200 Kg. (Capacity)', '5/8 Steps | 200 Kg. (Capacity)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382194_58-steps-200-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 15:56:34'),
(340, '6/10 Steps | 200 Kg. (Capacity)', '610-steps-200-kg-capacity', '<p>6/10 Steps | 200 Kg. (Capacity)</p>', 18, 4, 82, 27, '6/10 Steps | 200 Kg. (Capacity)', '6/10 Steps | 200 Kg. (Capacity)', '6/10 Steps | 200 Kg. (Capacity)', NULL, NULL, 100.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382222_610-steps-200-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 15:57:02'),
(341, '7/12 Steps | 200 Kg. (Capacity)', '712-steps-200-kg-capacity', '<p>7/12 Steps | 200 Kg. (Capacity)</p>', 18, 4, 82, 27, '7/12 Steps | 200 Kg. (Capacity)', '7/12 Steps | 200 Kg. (Capacity)', '7/12 Steps | 200 Kg. (Capacity)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382264_712-steps-200-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 15:57:44'),
(342, '6 Steps | 180 Kg. (Capacity)', '6-steps-180-kg-capacity', '<p>6 Steps | 180 Kg. (Capacity)</p>', 18, 4, 82, 28, '6 Steps | 180 Kg. (Capacity)', '6 Steps | 180 Kg. (Capacity)', '6 Steps | 180 Kg. (Capacity)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382315_6-steps-180-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 15:58:35'),
(343, '7 Steps | 180 Kg. (Capacity)', '7-steps-180-kg-capacity', '<p>7 Steps | 180 Kg. (Capacity)</p>', 18, 4, 82, 28, '7 Steps | 180 Kg. (Capacity)', '7 Steps | 180 Kg. (Capacity)', '7 Steps | 180 Kg. (Capacity)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382351_7-steps-180-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 15:59:11'),
(344, '8 Steps | 180 Kg. (Capacity)', '8-steps-180-kg-capacity', '<p>8 Steps | 180 Kg. (Capacity)</p>', 18, 4, 82, 28, '8 Steps | 180 Kg. (Capacity)', '8 Steps | 180 Kg. (Capacity)', '8 Steps | 180 Kg. (Capacity)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382375_8-steps-180-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 15:59:35'),
(345, '9 Steps | 180 Kg. (Capacity)', '9-steps-180-kg-capacity', '<p>9 Steps | 180 Kg. (Capacity)</p>', 18, 4, 82, 28, '9 Steps | 180 Kg. (Capacity)', '9 Steps | 180 Kg. (Capacity)', '9 Steps | 180 Kg. (Capacity)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382403_9-steps-180-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:00:03'),
(346, '5 Steps | 150 Kg. (Capacity)', '5-steps-150-kg-capacity', '<p>5 Steps | 150 Kg. (Capacity)</p>', 18, 4, 82, 29, '5 Steps | 150 Kg. (Capacity)', '5 Steps | 150 Kg. (Capacity)', '5 Steps | 150 Kg. (Capacity)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382458_5-steps-150-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:00:58'),
(347, '6 Steps | 150 Kg. (Capacity)', '6-steps-150-kg-capacity', NULL, 18, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, NULL, NULL, 100, NULL, NULL, NULL, 0, 0, NULL, '2025-12-10 19:52:18', '2025-12-10 19:52:18'),
(348, '7 Steps | 150 Kg. (Capacity)', '7-steps-150-kg-capacity', '<p>7 Steps | 150 Kg. (Capacity)</p>', 18, 4, 82, 29, '7 Steps | 150 Kg. (Capacity)', '7 Steps | 150 Kg. (Capacity)', '7 Steps | 150 Kg. (Capacity)', NULL, NULL, 100.00, 50.00, NULL, 100, NULL, NULL, 'uploads/products/1765382516_7-steps-150-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:01:56'),
(349, '8 Steps | 150 Kg. (Capacity)', '8-steps-150-kg-capacity', '<p>8 Steps | 150 Kg. (Capacity)</p>', 18, 4, 82, 29, '8 Steps | 150 Kg. (Capacity)', '8 Steps | 150 Kg. (Capacity)', '8 Steps | 150 Kg. (Capacity)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382543_8-steps-150-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:02:23'),
(350, '9 Steps | 150 Kg. (Capacity)', '9-steps-150-kg-capacity', '<p>9 Steps | 150 Kg. (Capacity)</p>', 18, 4, 82, 29, '9 Steps | 150 Kg. (Capacity)', '9 Steps | 150 Kg. (Capacity)', '9 Steps | 150 Kg. (Capacity)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765382570_9-steps-150-kg-capacity.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:02:50'),
(351, '1” Concrete Nail (Per KG)', '1-concrete-nail-per-kg', '<p>1” Concrete Nail (Per KG)</p>', 18, 4, 82, 30, '1” Concrete Nail (Per KG)', '1” Concrete Nail (Per KG)', '1” Concrete Nail (Per KG)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382631_1-concrete-nail-per-kg.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:03:51'),
(352, '1.5” Concrete Nail (Per KG)', '15-concrete-nail-per-kg', '<p>1.5” Concrete Nail (Per KG)</p>', 18, 4, 82, 30, '1.5” Concrete Nail (Per KG)', '1.5” Concrete Nail (Per KG)', '1.5” Concrete Nail (Per KG)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382654_15-concrete-nail-per-kg.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:04:14'),
(353, '2” Concrete Nail (Per KG)', '2-concrete-nail-per-kg', '<p>2” Concrete Nail (Per KG)</p>', 18, 4, 82, 30, '2” Concrete Nail (Per KG)', '2” Concrete Nail (Per KG)', '2” Concrete Nail (Per KG)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382680_2-concrete-nail-per-kg.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:04:40'),
(354, '2.5” Concrete Nail (Per KG)', '25-concrete-nail-per-kg', '<p>2.5” Concrete Nail (Per KG)</p>', 18, 4, 82, 30, '2.5” Concrete Nail (Per KG)', '2.5” Concrete Nail (Per KG)', '2.5” Concrete Nail (Per KG)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382707_25-concrete-nail-per-kg.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:05:07'),
(355, '3” Concrete Nail (Per KG)', '3-concrete-nail-per-kg', '<p>3” Concrete Nail (Per KG)</p>', 18, 4, 82, 30, '3” Concrete Nail (Per KG)', '3” Concrete Nail (Per KG)', '3” Concrete Nail (Per KG)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382728_3-concrete-nail-per-kg.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:05:28'),
(356, '4” Concrete Nail (Per KG)', '4-concrete-nail-per-kg', '<p>4” Concrete Nail (Per KG)</p>', 18, 4, 82, 30, '4” Concrete Nail (Per KG)', '4” Concrete Nail (Per KG)', '4” Concrete Nail (Per KG)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382750_4-concrete-nail-per-kg.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:05:50'),
(357, '7mm SS Screw 1” (Per KG)', '7mm-ss-screw-1-per-kg', '<p>7mm SS Screw 1” (Per KG)</p>', 18, 4, 82, 31, '7mm SS Screw 1” (Per KG)', '7mm SS Screw 1” (Per KG)', '7mm SS Screw 1” (Per KG)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382910_7mm-ss-screw-1-per-kg.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:08:30'),
(358, '7mm SS Screw 1.25” (Per KG)', '7mm-ss-screw-125-per-kg', '<p>7mm SS Screw 1.25” (Per KG)</p>', 18, 4, 82, 31, '7mm SS Screw 1.25” (Per KG)', '7mm SS Screw 1.25” (Per KG)', '7mm SS Screw 1.25” (Per KG)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382935_7mm-ss-screw-125-per-kg.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:08:55'),
(359, '7mm SS Screw 1.5” (Per KG)', '7mm-ss-screw-15-per-kg', '<p>7mm SS Screw 1.5” (Per KG)</p>', 18, 4, 82, 31, '7mm SS Screw 1.5” (Per KG)', '7mm SS Screw 1.5” (Per KG)', '7mm SS Screw 1.5” (Per KG)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382964_7mm-ss-screw-15-per-kg.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:09:24'),
(360, '8mm SS Screw 1” (Per KG) Nickel Coatings', '8mm-ss-screw-1-per-kg-nickel-coatings', '<p>8mm SS Screw 1” (Per KG) Nickel Coatings</p>', 18, 4, 82, 31, '8mm SS Screw 1” (Per KG) Nickel Coatings', '8mm SS Screw 1” (Per KG) Nickel Coatings', '8mm SS Screw 1” (Per KG) Nickel Coatings', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765382989_8mm-ss-screw-1-per-kg-nickel-coatings.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:09:49'),
(361, '8mm SS Screw 1.25” (Per KG) Nickel Coatings', '8mm-ss-screw-125-per-kg-nickel-coatings', '<p>8mm SS Screw 1.25” (Per KG) Nickel Coatings</p>', 18, 4, 82, 31, '8mm SS Screw 1.25” (Per KG) Nickel Coatings', '8mm SS Screw 1.25” (Per KG) Nickel Coatings', '8mm SS Screw 1.25” (Per KG) Nickel Coatings', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765383013_8mm-ss-screw-125-per-kg-nickel-coatings.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:10:13'),
(362, '8mm SS Screw 1.5” (Per KG) Nickel Coatings', '8mm-ss-screw-15-per-kg-nickel-coatings', '<p>8mm SS Screw 1.5” (Per KG) Nickel Coatings</p>', 18, 4, 82, 31, '8mm SS Screw 1.5” (Per KG) Nickel Coatings', '8mm SS Screw 1.5” (Per KG) Nickel Coatings', '8mm SS Screw 1.5” (Per KG) Nickel Coatings', NULL, NULL, 10.00, 10.00, NULL, 100, NULL, NULL, 'uploads/products/1765383044_8mm-ss-screw-15-per-kg-nickel-coatings.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:10:44'),
(363, '8mm SS Screw 2” (Per KG) Nickel Coatings', '8mm-ss-screw-2-per-kg-nickel-coatings', '<p>8mm SS Screw 2” (Per KG) Nickel Coatings</p>', 18, 4, 82, 31, '8mm SS Screw 2” (Per KG) Nickel Coatings', '8mm SS Screw 2” (Per KG) Nickel Coatings', '8mm SS Screw 2” (Per KG) Nickel Coatings', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765383070_8mm-ss-screw-2-per-kg-nickel-coatings.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:11:10'),
(364, '8mm SS Screw 1.5” (Per KG) Wash', '8mm-ss-screw-15-per-kg-wash', '<p>8mm SS Screw 1.5” (Per KG) Wash</p>', 18, 4, 82, 31, '8mm SS Screw 1.5” (Per KG) Wash', '8mm SS Screw 1.5” (Per KG) Wash', '8mm SS Screw 1.5” (Per KG) Wash', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765383095_8mm-ss-screw-15-per-kg-wash.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:11:35'),
(365, 'Size: T-20 (Per Box)', 'size-t-20-per-box', '<p>Size: T-20 (Per Box)</p>', 18, 4, 82, 32, 'Size: T-20 (Per Box)', 'Size: T-20 (Per Box)', 'Size: T-20 (Per Box)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765383152_size-t-20-per-box.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:12:32'),
(366, 'Size: T-25 (Per Box)', 'size-t-25-per-box', '<p>Size: T-25 (Per Box)</p>', 18, 4, 82, 32, 'Size: T-25 (Per Box)', 'Size: T-25 (Per Box)', 'Size: T-25 (Per Box)', NULL, NULL, 10.00, 5.00, NULL, 100, NULL, NULL, 'uploads/products/1765383204_size-t-25-per-box.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:13:25'),
(367, 'Size: T-32 (Per Box)', 'size-t-32-per-box', '<p>Size: T-32 (Per Box)</p>', 18, 4, 82, 32, 'Size: T-32 (Per Box)', 'Size: T-32 (Per Box)', 'Size: T-32 (Per Box)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765383249_size-t-32-per-box.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:14:09'),
(368, 'Size: T-38 (Per Box)', 'size-t-38-per-box', '<p>Size: T-38 (Per Box)</p>', 18, 4, 82, 32, 'Size: T-38 (Per Box)', 'Size: T-38 (Per Box)', 'Size: T-38 (Per Box)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765383284_size-t-38-per-box.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:14:44'),
(369, 'Size: T-50 (Per Box)', 'size-t-50-per-box', '<p>Size: T-50 (Per Box)</p>', 18, 4, 82, 32, 'Size: T-50 (Per Box)', 'Size: T-50 (Per Box)', 'Size: T-50 (Per Box)', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765383321_size-t-50-per-box.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:15:21'),
(370, 'Racks - 2 Feet - 8 Bar', 'racks-2-feet-8-bar', '<p>Racks - 2 Feet - 8 Bar</p>', 18, 4, 82, 129, 'Racks - 2 Feet - 8 Bar', 'Racks - 2 Feet - 8 Bar', 'Racks - 2 Feet - 8 Bar', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765383479_racks-2-feet-8-bar.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:17:59'),
(371, 'Racks - 2 Feet - 4 Bar', 'racks-2-feet-4-bar', '<p>Racks - 2 Feet - 4 Bar</p>', 18, 4, 82, 129, 'Racks - 2 Feet - 4 Bar', 'Racks - 2 Feet - 4 Bar', 'Racks - 2 Feet - 4 Bar', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765383571_racks-2-feet-4-bar.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:19:31'),
(372, 'Racks - 1.5 Feet - 8 Bar', 'racks-15-feet-8-bar', '<p>Racks - 1.5 Feet - 8 Bar</p>', 18, 4, 82, 129, 'Racks - 1.5 Feet - 8 Bar', 'Racks - 1.5 Feet - 8 Bar', 'Racks - 1.5 Feet - 8 Bar', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765383601_racks-15-feet-8-bar.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:20:01'),
(373, 'Racks - 1.5 Feet - 4 Bar', 'racks-15-feet-4-bar', '<p>Racks - 1.5 Feet - 4 Bar</p>', 18, 4, 82, 129, 'Racks - 1.5 Feet - 4 Bar', 'Racks - 1.5 Feet - 4 Bar', 'Racks - 1.5 Feet - 4 Bar', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765383627_racks-15-feet-4-bar.jpg', 1, 1, NULL, '2025-12-10 19:52:18', '2025-12-10 16:20:27'),
(374, '4 \" x 3 \" x 2.5 mm - Boss-SS Screw', '4-x-3-x-25-mm-boss-ss-screw', '<p>4 \" x 3 \" x 2.5 mm - Boss-SS Screw</p>', 19, 1, 77, 117, '4 \" x 3 \" x 2.5 mm - Boss-SS Screw', '4 \" x 3 \" x 2.5 mm - Boss-SS Screw', '4 \" x 3 \" x 2.5 mm - Boss-SS Screw', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765376111_4-x-3-x-25-mm-boss-ss-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:15:11'),
(375, '4 \" x 3 \" x 2.5 mm - Vikars / BMI-SS Screw', '4-x-3-x-25-mm-vikars-bmi-ss-screw', '<p>4 \" x 3 \" x 2.5 mm - Vikars / BMI-SS Screw</p>', 19, 1, 77, 117, '4 \" x 3 \" x 2.5 mm - Vikars / BMI-SS Screw', '4 \" x 3 \" x 2.5 mm - Vikars / BMI-SS Screw', '4 \" x 3 \" x 2.5 mm - Vikars / BMI-SS Screw', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1766321976_4-x-3-x-25-mm-vikars-bmi-ss-screw.png', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-21 12:59:36'),
(376, '4 \" x 3 \" x 2.7 mm - Boss- SS Screw', '4-x-3-x-27-mm-boss-ss-screw', '<p>4 \" x 3 \" x 2.7 mm - Boss- SS Screw</p>', 19, 1, 77, 117, '4 \" x 3 \" x 2.7 mm - Boss- SS Screw', '4 \" x 3 \" x 2.7 mm - Boss- SS Screw', '4 \" x 3 \" x 2.7 mm - Boss- SS Screw', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765376213_4-x-3-x-27-mm-boss-ss-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:16:53'),
(377, '4 \" x 3 \" x 2.7 mm - Vikars/ BMI -SS Screw', '4-x-3-x-27-mm-vikars-bmi-ss-screw', '<p>4 \" x 3 \" x 2.7 mm - Vikars/ BMI -SS Screw</p>', 19, 1, 77, 117, '4 \" x 3 \" x 2.7 mm - Vikars/ BMI -SS Screw', '4 \" x 3 \" x 2.7 mm - Vikars/ BMI -SS Screw', '4 \" x 3 \" x 2.7 mm - Vikars/ BMI -SS Screw', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765376236_4-x-3-x-27-mm-vikars-bmi-ss-screw.jpg', 1, 0, NULL, '2025-12-10 20:09:12', '2025-12-10 14:17:16'),
(378, '4 \" x 3 \" x 2.5 mm - Boss -MS Screw', '4-x-3-x-25-mm-boss-ms-screw', '<p>4 \" x 3 \" x 2.5 mm - Boss -MS Screw</p>', 19, 1, 77, 117, '4 \" x 3 \" x 2.5 mm - Boss -MS Screw', '4 \" x 3 \" x 2.5 mm - Boss -MS Screw', '4 \" x 3 \" x 2.5 mm - Boss -MS Screw', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376264_4-x-3-x-25-mm-boss-ms-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:17:44'),
(379, '4 \" x 3 \" x 2.5 mm - Vikars/BMI -MS Screw', '4-x-3-x-25-mm-vikarsbmi-ms-screw', '<p>4 \" x 3 \" x 2.5 mm - Vikars/BMI -MS Screw</p>', 19, 1, 77, 117, '4 \" x 3 \" x 2.5 mm - Vikars/BMI -MS Screw', '4 \" x 3 \" x 2.5 mm - Vikars/BMI -MS Screw', '4 \" x 3 \" x 2.5 mm - Vikars/BMI -MS Screw', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376285_4-x-3-x-25-mm-vikarsbmi-ms-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:18:05'),
(380, '4 \" x 3 \" x 2.7 mm - Boss -MS Screw', '4-x-3-x-27-mm-boss-ms-screw', '<p>4 \" x 3 \" x 2.7 mm - Boss -MS Screw</p>', 19, 1, 77, 117, '4 \" x 3 \" x 2.7 mm - Boss -MS Screw', '4 \" x 3 \" x 2.7 mm - Boss -MS Screw', '4 \" x 3 \" x 2.7 mm - Boss -MS Screw', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376304_4-x-3-x-27-mm-boss-ms-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:18:24'),
(381, '4 \" x 3 \" x 2.7 mm - Vikars/BMI- MS Screw', '4-x-3-x-27-mm-vikarsbmi-ms-screw', '<p>4 \" x 3 \" x 2.7 mm - Vikars/BMI- MS Screw</p>', 19, 1, 77, 117, '4 \" x 3 \" x 2.7 mm - Vikars/BMI- MS Screw', '4 \" x 3 \" x 2.7 mm - Vikars/BMI- MS Screw', '4 \" x 3 \" x 2.7 mm - Vikars/BMI- MS Screw', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376324_4-x-3-x-27-mm-vikarsbmi-ms-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:18:44'),
(382, '5 \" x 3 \" x 2.7 mm - Vikars - SS Screw', '5-x-3-x-27-mm-vikars-ss-screw', '<p>5 \" x 3 \" x 2.7 mm - Vikars - SS Screw</p>', 19, 1, 77, 117, '5 \" x 3 \" x 2.7 mm - Vikars - SS Screw', '5 \" x 3 \" x 2.7 mm - Vikars - SS Screw', '5 \" x 3 \" x 2.7 mm - Vikars - SS Screw', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376354_5-x-3-x-27-mm-vikars-ss-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:19:14'),
(383, '4\'\' Butterfy Hinge 2.0 mm -Vikars', '4-butterfy-hinge-20-mm-vikars', '<p>4\'\' Butterfy Hinge 2.0 mm -Vikars</p>', 19, 1, 77, 118, '4\'\' Butterfy Hinge 2.0 mm -Vikars', '4\'\' Butterfy Hinge 2.0 mm -Vikars', '4\'\' Butterfy Hinge 2.0 mm -Vikars', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376386_4-butterfy-hinge-20-mm-vikars.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:19:46'),
(384, '4\" Box Tower Bolt-Vikars/BMI', '4-box-tower-bolt-vikarsbmi', '<p>4\" Box Tower Bolt-Vikars/BMI</p>', 19, 1, 77, 119, '4\" Box Tower Bolt-Vikars/BMI', '4\" Box Tower Bolt-Vikars/BMI', '4\" Box Tower Bolt-Vikars/BMI', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376416_4-box-tower-bolt-vikarsbmi.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:20:16'),
(385, '6\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', '6-box-tower-bolt-vikars-bmi-boss-heavy', '<p>6\" Box Tower Bolt-Vikars / BMI / Boss-Heavy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 19, 1, 77, 119, '6\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', '6\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', '6\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376439_6-box-tower-bolt-vikars-bmi-boss-heavy.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:20:39'),
(386, '8\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', '8-box-tower-bolt-vikars-bmi-boss-heavy', '<p>8\" Box Tower Bolt-Vikars / BMI / Boss-Heavy</p>', 19, 1, 77, 119, '8\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', '8\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', '8\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376466_8-box-tower-bolt-vikars-bmi-boss-heavy.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:21:06'),
(387, '6\" Box Tower Bolt-Mirror - No Screw', '6-box-tower-bolt-mirror-no-screw', '<p>6\" Box Tower Bolt-Mirror - No Screw</p>', 19, 1, 77, 119, '6\" Box Tower Bolt-Mirror - No Screw', '6\" Box Tower Bolt-Mirror - No Screw', '6\" Box Tower Bolt-Mirror - No Screw', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376488_6-box-tower-bolt-mirror-no-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:21:28'),
(388, '8\" Box Tower Bolt-Mirror - No Screw', '8-box-tower-bolt-mirror-no-screw', '<p>8\" Box Tower Bolt-Mirror - No Screw&nbsp;&nbsp;&nbsp;&nbsp;</p>', 19, 1, 77, 119, '8\" Box Tower Bolt-Mirror - No Screw', '8\" Box Tower Bolt-Mirror - No Screw', '8\" Box Tower Bolt-Mirror - No Screw', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376514_8-box-tower-bolt-mirror-no-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:21:54'),
(389, '6\" Box Tower Bolt-Light-Boss / Vikars', '6-box-tower-bolt-light-boss-vikars', '<p>6\" Box Tower Bolt-Light-Boss / Vikars</p>', 19, 1, 77, 119, '6\" Box Tower Bolt-Light-Boss / Vikars', '6\" Box Tower Bolt-Light-Boss / Vikars', '6\" Box Tower Bolt-Light-Boss / Vikars', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376538_6-box-tower-bolt-light-boss-vikars.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:22:18'),
(390, '8\" Box Tower Bolt-Light-Boss / Vikars', '8-box-tower-bolt-light-boss-vikars', '<p>8\" Box Tower Bolt-Light-Boss / Vikars</p>', 19, 1, 77, 119, '8\" Box Tower Bolt-Light-Boss / Vikars', '8\" Box Tower Bolt-Light-Boss / Vikars', '8\" Box Tower Bolt-Light-Boss / Vikars', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765376560_8-box-tower-bolt-light-boss-vikars.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:22:40'),
(391, '6\" Wave Tower Bolt-Vikars / BMI', '6-wave-tower-bolt-vikars-bmi', '<p>6\" Wave Tower Bolt-Vikars / BMI</p>', 19, 1, 77, 119, '6\" Wave Tower Bolt-Vikars / BMI', '6\" Wave Tower Bolt-Vikars / BMI', '6\" Wave Tower Bolt-Vikars / BMI', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376579_6-wave-tower-bolt-vikars-bmi.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:22:59'),
(392, '8\" Wave Tower Bolt-Vikars / BMI', '8-wave-tower-bolt-vikars-bmi', '<p>8\" Wave Tower Bolt-Vikars / BMI</p>', 19, 1, 77, 119, '8\" Wave Tower Bolt-Vikars / BMI', '8\" Wave Tower Bolt-Vikars / BMI', '8\" Wave Tower Bolt-Vikars / BMI', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376614_8-wave-tower-bolt-vikars-bmi.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:23:34'),
(393, '6\" Tower Bolt - Mirror - Wave - No Screw', '6-tower-bolt-mirror-wave-no-screw', '<p>6\" Tower Bolt - Mirror - Wave - No Screw</p>', 19, 1, 77, 119, '6\" Tower Bolt - Mirror - Wave - No Screw', '6\" Tower Bolt - Mirror - Wave - No Screw', '6\" Tower Bolt - Mirror - Wave - No Screw', NULL, NULL, 100.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376635_6-tower-bolt-mirror-wave-no-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:23:55'),
(394, '8\" Tower Bolt- Mirror - Wave - No Screw', '8-tower-bolt-mirror-wave-no-screw', '<p>8\" Tower Bolt- Mirror - Wave - No Screw</p>', 19, 1, 77, 119, '8\" Tower Bolt- Mirror - Wave - No Screw', '8\" Tower Bolt- Mirror - Wave - No Screw', '8\" Tower Bolt- Mirror - Wave - No Screw', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376659_8-tower-bolt-mirror-wave-no-screw.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:24:19'),
(395, '3/4\" (.40 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '34-40-mm-piano-hinge-boss-vikars-iron-pin', '<p>3/4\" (.40 MM ) Piano Hinge - Boss / Vikars -Iron Pin</p>', 19, 1, 77, 120, '3/4\" (.40 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '3/4\" (.40 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '3/4\" (.40 MM ) Piano Hinge - Boss / Vikars -Iron Pin', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765376690_34-40-mm-piano-hinge-boss-vikars-iron-pin.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:24:50'),
(396, '3/4\" (.60 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '34-60-mm-piano-hinge-boss-vikars-iron-pin', '<p>3/4\" (.60 MM ) Piano Hinge - Boss / Vikars -Iron Pin</p>', 19, 1, 77, 120, '3/4\" (.60 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '3/4\" (.60 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '3/4\" (.60 MM ) Piano Hinge - Boss / Vikars -Iron Pin', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376723_34-60-mm-piano-hinge-boss-vikars-iron-pin.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:25:23'),
(397, '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '34-80-mm-piano-hinge-boss-vikars-iron-pin', '<p>3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -Iron Pin</p>', 19, 1, 77, 120, '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -Iron Pin', NULL, NULL, 10.00, 7.00, NULL, 100, NULL, NULL, 'uploads/products/1765376740_34-80-mm-piano-hinge-boss-vikars-iron-pin.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:25:40'),
(398, '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -SS Pin', '34-80-mm-piano-hinge-boss-vikars-ss-pin', '<p>3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -SS Pin</p>', 19, 1, 77, 120, '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -SS Pin', '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -SS Pin', '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -SS Pin', NULL, NULL, 10.00, 9.00, NULL, 100, NULL, NULL, 'uploads/products/1765376768_34-80-mm-piano-hinge-boss-vikars-ss-pin.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:26:08'),
(399, 'Iron Drawer Lock with Steel Key Brands: Vik', 'iron-drawer-lock-with-steel-key-brands-vik-ars-camel', '<p>Iron Drawer Lock with Steel Key Brands: Vik</p>', 19, 1, 77, 121, 'Iron Drawer Lock with Steel Key Brands: Vik', 'Iron Drawer Lock with Steel Key Brands: Vik', 'Iron Drawer Lock with Steel Key Brands: Vik', NULL, NULL, 10.00, 5.00, NULL, 100, NULL, NULL, 'uploads/products/1765376820_iron-drawer-lock-with-steel-key-brands-vik.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:27:00'),
(400, 'CL-298 Sliding Wheel (Vikers) - Full SS Body', 'cl-298-sliding-wheel-vikers-full-ss-body', '<p>&nbsp; CL-298 Sliding Wheel (Vikers) - Full SS Body</p>', 19, 1, 77, 122, 'CL-298 Sliding Wheel (Vikers) - Full SS Body', 'CL-298 Sliding Wheel (Vikers) - Full SS Body', 'CL-298 Sliding Wheel (Vikers) - Full SS Body', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376853_cl-298-sliding-wheel-vikers-full-ss-body.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:27:33'),
(401, 'CL-297 Sliding Wheel(Vikers) - Full SS Body', 'cl-297-sliding-wheelvikers-full-ss-body', '<p>&nbsp; CL-297 Sliding Wheel(Vikers) - Full SS Body</p>', 19, 1, 77, 122, 'CL-297 Sliding Wheel(Vikers) - Full SS Body', 'CL-297 Sliding Wheel(Vikers) - Full SS Body', 'CL-297 Sliding Wheel(Vikers) - Full SS Body', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376877_cl-297-sliding-wheelvikers-full-ss-body.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:27:57'),
(402, 'Window Roller Vikars-299', 'window-roller-vikars-299', '<p>Window Roller Vikars-299</p>', 19, 1, 77, 122, 'Window Roller Vikars-299', 'Window Roller Vikars-299', 'Window Roller Vikars-299', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376901_window-roller-vikars-299.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:28:21'),
(403, 'Window Roller Vikars-299 (Orange)', 'window-roller-vikars-299-orange', '<p>&nbsp; Window Roller Vikars-299 (Orange)</p>', 19, 1, 77, 122, 'Window Roller Vikars-299 (Orange)', 'Window Roller Vikars-299 (Orange)', 'Window Roller Vikars-299 (Orange)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376931_window-roller-vikars-299-orange.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:28:51'),
(404, 'CL-298 Sliding Wheel(Vikers)', 'cl-298-sliding-wheelvikers', '<p>&nbsp; CL-298 Sliding Wheel(Vikers)</p>', 19, 1, 77, 122, 'CL-298 Sliding Wheel(Vikers)', 'CL-298 Sliding Wheel(Vikers)', 'CL-298 Sliding Wheel(Vikers)', NULL, NULL, 10.00, 8.00, NULL, 100, NULL, NULL, 'uploads/products/1765376983_cl-298-sliding-wheelvikers.jpg', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-10 14:29:43'),
(405, 'CL-297 Sliding Wheel(Vikers)', 'cl-297-sliding-wheelvikers', '<p>&nbsp; CL-297 Sliding Wheel(Vikers)</p>', 19, 1, 77, 122, 'CL-297 Sliding Wheel(Vikers)', 'CL-297 Sliding Wheel(Vikers)', 'CL-297 Sliding Wheel(Vikers)', NULL, NULL, 10.00, 6.00, NULL, 100, NULL, NULL, 'uploads/products/1766322138_cl-297-sliding-wheelvikers.png', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-21 13:02:18'),
(406, 'SS Drawer Channel- with 4 Ball(12 \" / 14\" / 16\" / 18\" / 20 \")', 'ss-drawer-channel-with-4-ball12-14-16-18-20', '<p>&nbsp; SS Drawer Channel- with 4 Ball(12 \" / 14\" / 16\" / 18\" / 20 \")</p>', 19, 1, 77, 123, 'SS Drawer Channel- with 4 Ball(12 \" / 14\" / 16\" / 18\" / 20 \")', 'SS Drawer Channel- with 4 Ball(12 \" / 14\" / 16\" / 18\" / 20 \")', 'SS Drawer Channel- with 4 Ball(12 \" / 14\" / 16\" / 18\" / 20 \")', NULL, NULL, 10.00, 6.00, NULL, 100, NULL, NULL, 'uploads/products/1766322110_ss-drawer-channel-with-4-ball12-14-16-18-20.png', 1, 1, NULL, '2025-12-10 20:09:12', '2025-12-21 13:01:50');

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
(4, 145, 'uploads/product_gallery/1765123253_6935a4b572cf4_pvc-pipe-cutter-42mm.jpg', '2025-12-07 16:00:53', '2025-12-07 16:00:53'),
(5, 144, 'uploads/product_gallery/1765123290_6935a4dab4c06_pruning-share-8.jpg', '2025-12-07 16:01:30', '2025-12-07 16:01:30'),
(6, 143, 'uploads/product_gallery/1765123326_6935a4fe286b4_glass-cutter-white.jpg', '2025-12-07 16:02:06', '2025-12-07 16:02:06'),
(7, 142, 'uploads/product_gallery/1765123367_6935a527e83ca_glass-cutter-golden.jpg', '2025-12-07 16:02:47', '2025-12-07 16:02:47'),
(10, 139, 'uploads/product_gallery/1765123464_6935a588c2bf3_foam-disc-4-9p.jpg', '2025-12-07 16:04:24', '2025-12-07 16:04:24'),
(18, 137, 'uploads/product_gallery/1765205278_6936e51e48f04_cutter-knife-blade-10pcs-box.jpg', '2025-12-08 14:47:58', '2025-12-08 14:47:58'),
(30, 129, 'uploads/product_gallery/1765206028_6936e80c492ff_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', '2025-12-08 15:00:28', '2025-12-08 15:00:28'),
(35, 92, 'uploads/product_gallery/1765206534_6936ea063b381_flat-file-with-plastic-handlebir-standard-10.jpg', '2025-12-08 15:08:54', '2025-12-08 15:08:54'),
(36, 93, 'uploads/product_gallery/1765206554_6936ea1a4d2fe_half-round-file-plastic-handlebir-standard-10.jpg', '2025-12-08 15:09:14', '2025-12-08 15:09:14'),
(37, 94, 'uploads/product_gallery/1765206630_6936ea667af87_tri-angel-file-4-mini-6pcs-set-super.jpg', '2025-12-08 15:10:30', '2025-12-08 15:10:30'),
(52, 109, 'uploads/product_gallery/1765207058_6936ec128c9bf_compuss-saw-wooden-handle-14.jpg', '2025-12-08 15:17:38', '2025-12-08 15:17:38'),
(56, 113, 'uploads/product_gallery/1765207165_6936ec7dd505e_hac-saw-frame-adjustable-cy-018-01-12-blue.jpg', '2025-12-08 15:19:25', '2025-12-08 15:19:25'),
(58, 115, 'uploads/product_gallery/1765207212_6936ecacba11b_hand-saw-wooden-rubbertri-angle-teeth-18-black.jpg', '2025-12-08 15:20:12', '2025-12-08 15:20:12'),
(63, 42, 'uploads/product_gallery/1765207348_6936ed346b443_adjustable-wrench-black-nickle-bir-pro-10blister-pack.jpg', '2025-12-08 15:22:28', '2025-12-08 15:22:28'),
(66, 45, 'uploads/product_gallery/1765207429_6936ed856a7ae_pipe-wrench-industrial-14.jpg', '2025-12-08 15:23:49', '2025-12-08 15:23:49'),
(67, 46, 'uploads/product_gallery/1765207448_6936ed98d9af0_pipe-wrench-industrial-18.jpg', '2025-12-08 15:24:08', '2025-12-08 15:24:08'),
(68, 47, 'uploads/product_gallery/1765207527_6936ede787c06_socket-set-10pcs-wrench.jpg', '2025-12-08 15:25:27', '2025-12-08 15:25:27'),
(72, 30, 'uploads/product_gallery/1765207761_6936eed16e297_measurement-tape-2m-2x13-non-magnet-dx-02.jpg', '2025-12-08 15:29:21', '2025-12-08 15:29:21'),
(76, 34, 'uploads/product_gallery/1765207870_6936ef3e0c634_measurement-tape-3m-3x16-non-magnet-dx-t15.jpg', '2025-12-08 15:31:10', '2025-12-08 15:31:10'),
(77, 35, 'uploads/product_gallery/1765207896_6936ef58e5c01_measurement-tape-3m-3x16-non-magnetic-a69.jpg', '2025-12-08 15:31:36', '2025-12-08 15:31:36'),
(79, 37, 'uploads/product_gallery/1765207948_6936ef8ca7ae6_measurement-tape-3m-3x19-non-magnet-dx-72.jpg', '2025-12-08 15:32:28', '2025-12-08 15:32:28'),
(80, 38, 'uploads/product_gallery/1765207972_6936efa4bfae3_measurement-tape-3m-3x19-non-magnet-hl-05.jpg', '2025-12-08 15:32:52', '2025-12-08 15:32:52'),
(82, 19, 'uploads/product_gallery/1765208082_6936f0128d260_adjustable-screw-driver-km-s32b-two-way.jpg', '2025-12-08 15:34:42', '2025-12-08 15:34:42'),
(83, 20, 'uploads/product_gallery/1765208104_6936f0289f099_screw-driver-107-chrome-plated-6-plus.jpg', '2025-12-08 15:35:04', '2025-12-08 15:35:04'),
(84, 21, 'uploads/product_gallery/1765208131_6936f043ef9df_screw-driver-603-4-two-way.jpg', '2025-12-08 15:35:31', '2025-12-08 15:35:31'),
(85, 22, 'uploads/product_gallery/1765208160_6936f06090665_screw-driver-6637-black-handle-6plus.jpg', '2025-12-08 15:36:00', '2025-12-08 15:36:00'),
(86, 23, 'uploads/product_gallery/1765208184_6936f07870886_screw-driver-815-6-plus.jpg', '2025-12-08 15:36:24', '2025-12-08 15:36:24'),
(87, 24, 'uploads/product_gallery/1765208204_6936f08c9004d_screw-driver-hs24-6-flat.jpg', '2025-12-08 15:36:44', '2025-12-08 15:36:44'),
(91, 12, 'uploads/product_gallery/1765208358_6936f126e824e_european-american-type-riveter-95.jpg', '2025-12-08 15:39:18', '2025-12-08 15:39:18'),
(93, 14, 'uploads/product_gallery/1765208411_6936f15b906e2_silicone-gun-fram-type-9.jpg', '2025-12-08 15:40:11', '2025-12-08 15:40:11'),
(94, 15, 'uploads/product_gallery/1765208434_6936f1722a994_silicone-gun-heavy-duty-with-rubber-gripred-9.jpg', '2025-12-08 15:40:34', '2025-12-08 15:40:34'),
(95, 16, 'uploads/product_gallery/1765208459_6936f18b85848_silicone-gun-with-sheet-9.jpg', '2025-12-08 15:40:59', '2025-12-08 15:40:59'),
(96, 17, 'uploads/product_gallery/1765208479_6936f19f532c5_silicon-gun-gold-color-15.jpg', '2025-12-08 15:41:19', '2025-12-08 15:41:19'),
(97, 18, 'uploads/product_gallery/1765208502_6936f1b6a3a4b_wire-strippier-7.jpg', '2025-12-08 15:41:42', '2025-12-08 15:41:42'),
(102, 1, 'uploads/product_gallery/1765208742_6936f2a67c2e6_air-heat-gun-2000-watt-kt-22-600n.jpg', '2025-12-08 15:45:42', '2025-12-08 15:45:42'),
(103, 2, 'uploads/product_gallery/1765208766_6936f2be41949_angle-grinder-950-watt100mm-mtk-11100.jpg', '2025-12-08 15:46:06', '2025-12-08 15:46:06'),
(104, 3, 'uploads/product_gallery/1765208787_6936f2d389181_demolition-hammer-1300-watt-mtk-9035.jpg', '2025-12-08 15:46:27', '2025-12-08 15:46:27'),
(105, 4, 'uploads/product_gallery/1765208874_6936f32a581a5_electic-router-2200-watt-mtk-5112.jpg', '2025-12-08 15:47:54', '2025-12-08 15:47:54'),
(106, 5, 'uploads/product_gallery/1765208892_6936f33cda7a5_electric-blower-650-watt-ky-2125.jpg', '2025-12-08 15:48:12', '2025-12-08 15:48:12'),
(107, 6, 'uploads/product_gallery/1765208916_6936f354907e6_electric-planer-750-watt-mtk-5182.jpg', '2025-12-08 15:48:36', '2025-12-08 15:48:36'),
(108, 7, 'uploads/product_gallery/1765208938_6936f36a1a2d6_impact-drill-750-watt-mtk-2013.jpg', '2025-12-08 15:48:58', '2025-12-08 15:48:58'),
(109, 8, 'uploads/product_gallery/1765208964_6936f384dd617_rotary-hammer-800-watt-mtk-1626.jpg', '2025-12-08 15:49:24', '2025-12-08 15:49:24'),
(110, 9, 'uploads/product_gallery/1765208986_6936f39ad3cdb_hack-saw-frame-12-proquality.jpg', '2025-12-08 15:49:46', '2025-12-08 15:49:46'),
(111, 10, 'uploads/product_gallery/1765209012_6936f3b43d55e_pad-lock-pro-quality-63mm-cross-key.jpg', '2025-12-08 15:50:12', '2025-12-08 15:50:12'),
(112, 11, 'uploads/product_gallery/1765209037_6936f3cd234a6_pro-riveter-105.jpg', '2025-12-08 15:50:37', '2025-12-08 15:50:37'),
(113, 72, 'uploads/product_gallery/1765209074_6936f3f25f793_circle-plier-external-stright-07.jpg', '2025-12-08 15:51:14', '2025-12-08 15:51:14'),
(114, 73, 'uploads/product_gallery/1765209100_6936f40c8c9d0_circle-plier-internal-bent-07.jpg', '2025-12-08 15:51:40', '2025-12-08 15:51:40'),
(115, 74, 'uploads/product_gallery/1765209121_6936f421802c1_combination-plier-fine-polish-8.jpg', '2025-12-08 15:52:01', '2025-12-08 15:52:01'),
(116, 75, 'uploads/product_gallery/1765209144_6936f438debeb_combination-pliers-black-finish-8yellow-black.jpg', '2025-12-08 15:52:24', '2025-12-08 15:52:24'),
(117, 76, 'uploads/product_gallery/1765209163_6936f44ba6588_combination-pliers-nickle-finish-8.jpg', '2025-12-08 15:52:43', '2025-12-08 15:52:43'),
(118, 77, 'uploads/product_gallery/1765209187_6936f4638290d_crimping-plier-duel-modular.jpg', '2025-12-08 15:53:07', '2025-12-08 15:53:07'),
(119, 78, 'uploads/product_gallery/1765209206_6936f476e3e9f_crimpring-plier-6.jpg', '2025-12-08 15:53:26', '2025-12-08 15:53:26'),
(120, 79, 'uploads/product_gallery/1765209231_6936f48f518d1_cutting-plier-fine-polished-6.jpg', '2025-12-08 15:53:51', '2025-12-08 15:53:51'),
(121, 80, 'uploads/product_gallery/1765209253_6936f4a52fe8c_cutting-pliernicle-finish-4.jpg', '2025-12-08 15:54:13', '2025-12-08 15:54:13'),
(122, 81, 'uploads/product_gallery/1765209274_6936f4ba68316_locking-plier-10.jpg', '2025-12-08 15:54:34', '2025-12-08 15:54:34'),
(123, 82, 'uploads/product_gallery/1765209295_6936f4cf71447_nose-plier-fine-polished-6.jpg', '2025-12-08 15:54:55', '2025-12-08 15:54:55'),
(124, 83, 'uploads/product_gallery/1765209317_6936f4e54586f_water-pump-plier-wrench-10.jpg', '2025-12-08 15:55:17', '2025-12-08 15:55:17'),
(125, 84, 'uploads/product_gallery/1765209339_6936f4fb347bd_ctg-combination-pliernickle-finish-6.jpg', '2025-12-08 15:55:39', '2025-12-08 15:55:39'),
(126, 85, 'uploads/product_gallery/1765209363_6936f51398c50_ctg-combination-pliernicle-finish-7.jpg', '2025-12-08 15:56:03', '2025-12-08 15:56:03'),
(127, 86, 'uploads/product_gallery/1765209388_6936f52c009d7_ctg-combination-pliernicle-finish-8.jpg', '2025-12-08 15:56:28', '2025-12-08 15:56:28'),
(128, 87, 'uploads/product_gallery/1765209408_6936f5400bd73_ctg-cutting-plier-nikel-finish-6.jpg', '2025-12-08 15:56:48', '2025-12-08 15:56:48'),
(129, 88, 'uploads/product_gallery/1765209431_6936f55725418_ctg-nose-pliers-nickle-finish-6.jpg', '2025-12-08 15:57:11', '2025-12-08 15:57:11'),
(136, 56, 'uploads/product_gallery/1765209673_6936f6492cc4b_roller-brush-greenblister-pack-9.jpg', '2025-12-08 16:01:13', '2025-12-08 16:01:13'),
(138, 58, 'uploads/product_gallery/1765209726_6936f67eafbe6_roller-brush-yellow-9-cotton-std.jpg', '2025-12-08 16:02:06', '2025-12-08 16:02:06'),
(140, 61, 'uploads/product_gallery/1765209799_6936f6c7b6ab8_scraper-2.jpg', '2025-12-08 16:03:19', '2025-12-08 16:03:19'),
(142, 63, 'uploads/product_gallery/1765209842_6936f6f259050_shovel-steel-handle.jpg', '2025-12-08 16:04:02', '2025-12-08 16:04:02'),
(143, 65, 'uploads/product_gallery/1765209867_6936f70bc40ff_test-pencil-with-hook.jpg', '2025-12-08 16:04:27', '2025-12-08 16:04:27'),
(146, 67, 'uploads/product_gallery/1765209930_6936f74ac6f45_wire-brush-super-quality.jpg', '2025-12-08 16:05:30', '2025-12-08 16:05:30'),
(148, 374, 'uploads/product_gallery/1765376111_6939806f3f848_4-x-3-x-25-mm-boss-ss-screw.jpg', '2025-12-10 14:15:11', '2025-12-10 14:15:11'),
(150, 376, 'uploads/product_gallery/1765376213_693980d5389f1_4-x-3-x-27-mm-boss-ss-screw.jpg', '2025-12-10 14:16:53', '2025-12-10 14:16:53'),
(151, 377, 'uploads/product_gallery/1765376236_693980eccf905_4-x-3-x-27-mm-vikars-bmi-ss-screw.jpg', '2025-12-10 14:17:16', '2025-12-10 14:17:16'),
(152, 378, 'uploads/product_gallery/1765376264_6939810873b1a_4-x-3-x-25-mm-boss-ms-screw.jpg', '2025-12-10 14:17:44', '2025-12-10 14:17:44'),
(153, 379, 'uploads/product_gallery/1765376285_6939811d17252_4-x-3-x-25-mm-vikarsbmi-ms-screw.jpg', '2025-12-10 14:18:05', '2025-12-10 14:18:05'),
(154, 380, 'uploads/product_gallery/1765376304_69398130c142b_4-x-3-x-27-mm-boss-ms-screw.jpg', '2025-12-10 14:18:24', '2025-12-10 14:18:24'),
(155, 381, 'uploads/product_gallery/1765376324_69398144e9c2f_4-x-3-x-27-mm-vikarsbmi-ms-screw.jpg', '2025-12-10 14:18:44', '2025-12-10 14:18:44'),
(156, 382, 'uploads/product_gallery/1765376354_69398162248d4_5-x-3-x-27-mm-vikars-ss-screw.jpg', '2025-12-10 14:19:14', '2025-12-10 14:19:14'),
(157, 383, 'uploads/product_gallery/1765376386_6939818247513_4-butterfy-hinge-20-mm-vikars.jpg', '2025-12-10 14:19:46', '2025-12-10 14:19:46'),
(158, 384, 'uploads/product_gallery/1765376416_693981a02188f_4-box-tower-bolt-vikarsbmi.jpg', '2025-12-10 14:20:16', '2025-12-10 14:20:16'),
(159, 385, 'uploads/product_gallery/1765376439_693981b7c3dc1_6-box-tower-bolt-vikars-bmi-boss-heavy.jpg', '2025-12-10 14:20:39', '2025-12-10 14:20:39'),
(160, 386, 'uploads/product_gallery/1765376466_693981d2ce071_8-box-tower-bolt-vikars-bmi-boss-heavy.jpg', '2025-12-10 14:21:06', '2025-12-10 14:21:06'),
(161, 387, 'uploads/product_gallery/1765376488_693981e80a47d_6-box-tower-bolt-mirror-no-screw.jpg', '2025-12-10 14:21:28', '2025-12-10 14:21:28'),
(162, 388, 'uploads/product_gallery/1765376514_69398202d08e5_8-box-tower-bolt-mirror-no-screw.jpg', '2025-12-10 14:21:54', '2025-12-10 14:21:54'),
(163, 389, 'uploads/product_gallery/1765376538_6939821adf974_6-box-tower-bolt-light-boss-vikars.jpg', '2025-12-10 14:22:18', '2025-12-10 14:22:18'),
(164, 390, 'uploads/product_gallery/1765376560_6939823081d81_8-box-tower-bolt-light-boss-vikars.jpg', '2025-12-10 14:22:40', '2025-12-10 14:22:40'),
(165, 391, 'uploads/product_gallery/1765376579_69398243f3d57_6-wave-tower-bolt-vikars-bmi.jpg', '2025-12-10 14:22:59', '2025-12-10 14:22:59'),
(166, 392, 'uploads/product_gallery/1765376614_69398266c765c_8-wave-tower-bolt-vikars-bmi.jpg', '2025-12-10 14:23:34', '2025-12-10 14:23:34'),
(167, 393, 'uploads/product_gallery/1765376635_6939827b4540a_6-tower-bolt-mirror-wave-no-screw.jpg', '2025-12-10 14:23:55', '2025-12-10 14:23:55'),
(168, 394, 'uploads/product_gallery/1765376659_69398293d6170_8-tower-bolt-mirror-wave-no-screw.jpg', '2025-12-10 14:24:19', '2025-12-10 14:24:19'),
(169, 395, 'uploads/product_gallery/1765376690_693982b2579a2_34-40-mm-piano-hinge-boss-vikars-iron-pin.jpg', '2025-12-10 14:24:50', '2025-12-10 14:24:50'),
(170, 396, 'uploads/product_gallery/1765376723_693982d34fa2d_34-60-mm-piano-hinge-boss-vikars-iron-pin.jpg', '2025-12-10 14:25:23', '2025-12-10 14:25:23'),
(171, 397, 'uploads/product_gallery/1765376740_693982e4a490b_34-80-mm-piano-hinge-boss-vikars-iron-pin.jpg', '2025-12-10 14:25:40', '2025-12-10 14:25:40'),
(172, 398, 'uploads/product_gallery/1765376768_69398300c8e94_34-80-mm-piano-hinge-boss-vikars-ss-pin.jpg', '2025-12-10 14:26:08', '2025-12-10 14:26:08'),
(173, 399, 'uploads/product_gallery/1765376820_69398334df0a4_iron-drawer-lock-with-steel-key-brands-vik.jpg', '2025-12-10 14:27:00', '2025-12-10 14:27:00'),
(174, 400, 'uploads/product_gallery/1765376853_6939835507610_cl-298-sliding-wheel-vikers-full-ss-body.jpg', '2025-12-10 14:27:33', '2025-12-10 14:27:33'),
(175, 401, 'uploads/product_gallery/1765376877_6939836d757a3_cl-297-sliding-wheelvikers-full-ss-body.jpg', '2025-12-10 14:27:57', '2025-12-10 14:27:57'),
(176, 402, 'uploads/product_gallery/1765376901_693983859fe91_window-roller-vikars-299.jpg', '2025-12-10 14:28:21', '2025-12-10 14:28:21'),
(177, 403, 'uploads/product_gallery/1765376931_693983a3b03b5_window-roller-vikars-299-orange.jpg', '2025-12-10 14:28:51', '2025-12-10 14:28:51'),
(178, 404, 'uploads/product_gallery/1765376983_693983d735552_cl-298-sliding-wheelvikers.jpg', '2025-12-10 14:29:43', '2025-12-10 14:29:43'),
(183, 137, 'uploads/product_gallery/1765377512_693985e8d6ea2_cutter-knife-blade-10pcs-box.jpg', '2025-12-10 14:38:32', '2025-12-10 14:38:32'),
(189, 131, 'uploads/product_gallery/1765377610_6939864acc2cc_aviation-snip-10.jpg', '2025-12-10 14:40:10', '2025-12-10 14:40:10'),
(190, 129, 'uploads/product_gallery/1765378217_693988a92ded7_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', '2025-12-10 14:50:17', '2025-12-10 14:50:17'),
(193, 127, 'uploads/product_gallery/1765378273_693988e130a55_5-diamond-cup-grinding-wheel.jpg', '2025-12-10 14:51:13', '2025-12-10 14:51:13'),
(194, 126, 'uploads/product_gallery/1765378291_693988f3d6e79_5-daimond-cutter-professional-quality-segcutting.jpg', '2025-12-10 14:51:31', '2025-12-10 14:51:31'),
(195, 125, 'uploads/product_gallery/1765378308_69398904abf8f_5-daimond-cup-grinding-wheel-single.jpg', '2025-12-10 14:51:48', '2025-12-10 14:51:48'),
(197, 123, 'uploads/product_gallery/1765378346_6939892abd1bb_4-daimond-cutter-standard-quality-plain-saw.jpg', '2025-12-10 14:52:26', '2025-12-10 14:52:26'),
(198, 122, 'uploads/product_gallery/1765378362_6939893a9b822_4-cutting-disc-thin-turbo-blade.jpg', '2025-12-10 14:52:42', '2025-12-10 14:52:42'),
(199, 121, 'uploads/product_gallery/1765378376_6939894897ca3_4-grinding-wheel.jpg', '2025-12-10 14:52:56', '2025-12-10 14:52:56'),
(201, 91, 'uploads/product_gallery/1765382085_693997c5da795_hss-drill-bit-316.jpg', '2025-12-10 15:54:45', '2025-12-10 15:54:45'),
(202, 90, 'uploads/product_gallery/1765382108_693997dcd48f0_hammer-drill-bit-10160mm-6-star.jpg', '2025-12-10 15:55:08', '2025-12-10 15:55:08'),
(203, 89, 'uploads/product_gallery/1765382131_693997f3ef86f_hammer-drill-bit-10160mm-6.jpg', '2025-12-10 15:55:31', '2025-12-10 15:55:31'),
(204, 339, 'uploads/product_gallery/1765382194_69399832d2814_58-steps-200-kg-capacity.jpg', '2025-12-10 15:56:34', '2025-12-10 15:56:34'),
(205, 340, 'uploads/product_gallery/1765382222_6939984e97ff1_610-steps-200-kg-capacity.jpg', '2025-12-10 15:57:02', '2025-12-10 15:57:02'),
(206, 341, 'uploads/product_gallery/1765382264_69399878e8ff8_712-steps-200-kg-capacity.jpg', '2025-12-10 15:57:44', '2025-12-10 15:57:44'),
(207, 342, 'uploads/product_gallery/1765382315_693998ab7ea6c_6-steps-180-kg-capacity.jpg', '2025-12-10 15:58:35', '2025-12-10 15:58:35'),
(208, 343, 'uploads/product_gallery/1765382351_693998cf8f6e8_7-steps-180-kg-capacity.jpg', '2025-12-10 15:59:11', '2025-12-10 15:59:11'),
(209, 344, 'uploads/product_gallery/1765382375_693998e7d7e0f_8-steps-180-kg-capacity.jpg', '2025-12-10 15:59:35', '2025-12-10 15:59:35'),
(210, 345, 'uploads/product_gallery/1765382403_69399903c8c6d_9-steps-180-kg-capacity.jpg', '2025-12-10 16:00:03', '2025-12-10 16:00:03'),
(211, 346, 'uploads/product_gallery/1765382458_6939993ab4197_5-steps-150-kg-capacity.jpg', '2025-12-10 16:00:58', '2025-12-10 16:00:58'),
(212, 348, 'uploads/product_gallery/1765382516_69399974ccf2c_7-steps-150-kg-capacity.jpg', '2025-12-10 16:01:56', '2025-12-10 16:01:56'),
(213, 349, 'uploads/product_gallery/1765382543_6939998fa2a33_8-steps-150-kg-capacity.jpg', '2025-12-10 16:02:23', '2025-12-10 16:02:23'),
(214, 350, 'uploads/product_gallery/1765382570_693999aa2dc01_9-steps-150-kg-capacity.jpg', '2025-12-10 16:02:50', '2025-12-10 16:02:50'),
(215, 351, 'uploads/product_gallery/1765382631_693999e7a0bc6_1-concrete-nail-per-kg.jpg', '2025-12-10 16:03:51', '2025-12-10 16:03:51'),
(216, 352, 'uploads/product_gallery/1765382654_693999fe58ace_15-concrete-nail-per-kg.jpg', '2025-12-10 16:04:14', '2025-12-10 16:04:14'),
(217, 353, 'uploads/product_gallery/1765382680_69399a1838fd9_2-concrete-nail-per-kg.jpg', '2025-12-10 16:04:40', '2025-12-10 16:04:40'),
(218, 354, 'uploads/product_gallery/1765382707_69399a338f2b8_25-concrete-nail-per-kg.jpg', '2025-12-10 16:05:07', '2025-12-10 16:05:07'),
(219, 355, 'uploads/product_gallery/1765382728_69399a48b5416_3-concrete-nail-per-kg.jpg', '2025-12-10 16:05:28', '2025-12-10 16:05:28'),
(220, 356, 'uploads/product_gallery/1765382750_69399a5e5594b_4-concrete-nail-per-kg.jpg', '2025-12-10 16:05:50', '2025-12-10 16:05:50'),
(221, 357, 'uploads/product_gallery/1765382910_69399afea4f32_7mm-ss-screw-1-per-kg.jpg', '2025-12-10 16:08:30', '2025-12-10 16:08:30'),
(222, 358, 'uploads/product_gallery/1765382935_69399b175b444_7mm-ss-screw-125-per-kg.jpg', '2025-12-10 16:08:55', '2025-12-10 16:08:55'),
(223, 359, 'uploads/product_gallery/1765382964_69399b34cc1f8_7mm-ss-screw-15-per-kg.jpg', '2025-12-10 16:09:24', '2025-12-10 16:09:24'),
(224, 360, 'uploads/product_gallery/1765382989_69399b4d5729b_8mm-ss-screw-1-per-kg-nickel-coatings.jpg', '2025-12-10 16:09:49', '2025-12-10 16:09:49'),
(225, 361, 'uploads/product_gallery/1765383013_69399b65bc37c_8mm-ss-screw-125-per-kg-nickel-coatings.jpg', '2025-12-10 16:10:13', '2025-12-10 16:10:13'),
(226, 362, 'uploads/product_gallery/1765383044_69399b847a18e_8mm-ss-screw-15-per-kg-nickel-coatings.jpg', '2025-12-10 16:10:44', '2025-12-10 16:10:44'),
(227, 363, 'uploads/product_gallery/1765383070_69399b9e310bd_8mm-ss-screw-2-per-kg-nickel-coatings.jpg', '2025-12-10 16:11:10', '2025-12-10 16:11:10'),
(228, 364, 'uploads/product_gallery/1765383095_69399bb7906bb_8mm-ss-screw-15-per-kg-wash.jpg', '2025-12-10 16:11:35', '2025-12-10 16:11:35'),
(229, 365, 'uploads/product_gallery/1765383152_69399bf027df3_size-t-20-per-box.jpg', '2025-12-10 16:12:32', '2025-12-10 16:12:32'),
(230, 366, 'uploads/product_gallery/1765383205_69399c25050cc_size-t-25-per-box.jpg', '2025-12-10 16:13:25', '2025-12-10 16:13:25'),
(231, 367, 'uploads/product_gallery/1765383249_69399c514a764_size-t-32-per-box.jpg', '2025-12-10 16:14:09', '2025-12-10 16:14:09'),
(232, 368, 'uploads/product_gallery/1765383284_69399c74aee09_size-t-38-per-box.jpg', '2025-12-10 16:14:44', '2025-12-10 16:14:44'),
(233, 369, 'uploads/product_gallery/1765383321_69399c99cfd9b_size-t-50-per-box.jpg', '2025-12-10 16:15:21', '2025-12-10 16:15:21'),
(234, 370, 'uploads/product_gallery/1765383479_69399d37da82e_racks-2-feet-8-bar.jpg', '2025-12-10 16:17:59', '2025-12-10 16:17:59'),
(235, 371, 'uploads/product_gallery/1765383571_69399d934ed7e_racks-2-feet-4-bar.jpg', '2025-12-10 16:19:31', '2025-12-10 16:19:31'),
(236, 372, 'uploads/product_gallery/1765383601_69399db11b055_racks-15-feet-8-bar.jpg', '2025-12-10 16:20:01', '2025-12-10 16:20:01'),
(237, 373, 'uploads/product_gallery/1765383628_69399dcc00937_racks-15-feet-4-bar.jpg', '2025-12-10 16:20:28', '2025-12-10 16:20:28'),
(239, 312, 'uploads/product_gallery/1765540581_693c02e5c8ddd_3871-ss.jpg', '2025-12-12 11:56:21', '2025-12-12 11:56:21'),
(240, 313, 'uploads/product_gallery/1765540615_693c030797d5e_3871-ac.jpg', '2025-12-12 11:56:55', '2025-12-12 11:56:55'),
(243, 316, 'uploads/product_gallery/1765540720_693c0370cab5c_5890-bnpb.jpg', '2025-12-12 11:58:40', '2025-12-12 11:58:40'),
(246, 320, 'uploads/product_gallery/1765540824_693c03d885979_5887-ss-cp.jpg', '2025-12-12 12:00:24', '2025-12-12 12:00:24'),
(253, 327, 'uploads/product_gallery/1765541092_693c04e4e033a_cnci-ab.jpg', '2025-12-12 12:04:52', '2025-12-12 12:04:52'),
(255, 329, 'uploads/product_gallery/1765541197_693c054d1794c_813-990-black-ac.jpg', '2025-12-12 12:06:37', '2025-12-12 12:06:37'),
(259, 333, 'uploads/product_gallery/1765541289_693c05a9beefa_m-1200-h-741-dac.jpg', '2025-12-12 12:08:09', '2025-12-12 12:08:09'),
(260, 334, 'uploads/product_gallery/1765541308_693c05bc5e5c3_z-820-l8030-msn.jpg', '2025-12-12 12:08:28', '2025-12-12 12:08:28'),
(263, 337, 'uploads/product_gallery/1765541374_693c05fe4ea54_9136-507-ac.jpg', '2025-12-12 12:09:34', '2025-12-12 12:09:34'),
(266, 266, 'uploads/product_gallery/1765541444_693c06447cc25_9123-z-454-sncp.jpg', '2025-12-12 12:10:44', '2025-12-12 12:10:44'),
(269, 269, 'uploads/product_gallery/1765541509_693c0685e2674_9349-821-mcf.jpg', '2025-12-12 12:11:49', '2025-12-12 12:11:49'),
(270, 270, 'uploads/product_gallery/1765541528_693c0698c5b2a_939-d-113-msnkgp.jpg', '2025-12-12 12:12:08', '2025-12-12 12:12:08'),
(271, 271, 'uploads/product_gallery/1765541548_693c06ac45522_939-d-113-mcfkgp.jpg', '2025-12-12 12:12:28', '2025-12-12 12:12:28'),
(272, 272, 'uploads/product_gallery/1765541568_693c06c073658_9349-d-113-black-gp.jpg', '2025-12-12 12:12:48', '2025-12-12 12:12:48'),
(280, 280, 'uploads/product_gallery/1765541786_693c079a05dfe_9579-826-orb.jpg', '2025-12-12 12:16:26', '2025-12-12 12:16:26'),
(281, 281, 'uploads/product_gallery/1765541805_693c07ad7099a_919-824-msnbsn.jpg', '2025-12-12 12:16:45', '2025-12-12 12:16:45'),
(289, 289, 'uploads/product_gallery/1765541986_693c0862d7390_1232-a-1695-msn.jpg', '2025-12-12 12:19:46', '2025-12-12 12:19:46'),
(294, 294, 'uploads/product_gallery/1765542091_693c08cb4aec6_1232-a-9044-mcf.jpg', '2025-12-12 12:21:31', '2025-12-12 12:21:31'),
(295, 295, 'uploads/product_gallery/1765542110_693c08de21338_1232-a-9014-mcf.jpg', '2025-12-12 12:21:50', '2025-12-12 12:21:50'),
(301, 301, 'uploads/product_gallery/1765542238_693c095e739c5_h-58178-h-193-org.jpg', '2025-12-12 12:23:58', '2025-12-12 12:23:58'),
(302, 302, 'uploads/product_gallery/1765542261_693c0975521ab_h-58001-h-195-black-ac.jpg', '2025-12-12 12:24:21', '2025-12-12 12:24:21'),
(303, 303, 'uploads/product_gallery/1765542282_693c098a7ae24_h-58001-h-195-org.jpg', '2025-12-12 12:24:42', '2025-12-12 12:24:42'),
(304, 304, 'uploads/product_gallery/1765542309_693c09a5e70c7_h-58001-h-194-org.jpg', '2025-12-12 12:25:09', '2025-12-12 12:25:09'),
(305, 305, 'uploads/product_gallery/1765542332_693c09bc39542_h-58001-h-194-black-ac.jpg', '2025-12-12 12:25:32', '2025-12-12 12:25:32'),
(306, 307, 'uploads/product_gallery/1765542376_693c09e86c167_h-58175-h-190-black-ac.jpg', '2025-12-12 12:26:16', '2025-12-12 12:26:16'),
(307, 308, 'uploads/product_gallery/1765542407_693c0a0710703_h-58005-h-540-org.jpg', '2025-12-12 12:26:47', '2025-12-12 12:26:47'),
(308, 309, 'uploads/product_gallery/1765542426_693c0a1a7e9f1_h-58006-h-009-black-ac.jpg', '2025-12-12 12:27:06', '2025-12-12 12:27:06'),
(309, 310, 'uploads/product_gallery/1765542446_693c0a2e36edd_ac-h-58006-h-009-org.jpg', '2025-12-12 12:27:26', '2025-12-12 12:27:26'),
(310, 199, 'uploads/product_gallery/1765542489_693c0a5981071_sponge-kit-aj-01.jpg', '2025-12-12 12:28:09', '2025-12-12 12:28:09'),
(311, 200, 'uploads/product_gallery/1765542510_693c0a6ef4218_sponge-kit-aj-08.jpg', '2025-12-12 12:28:31', '2025-12-12 12:28:31'),
(312, 201, 'uploads/product_gallery/1765542542_693c0a8e254a2_sponge-kit-aj-27.jpg', '2025-12-12 12:29:02', '2025-12-12 12:29:02'),
(313, 202, 'uploads/product_gallery/1765542605_693c0acd1cdf7_sponge-kit-aj-28.jpg', '2025-12-12 12:30:05', '2025-12-12 12:30:05'),
(314, 203, 'uploads/product_gallery/1765542624_693c0ae0c1530_sponge-kit-aj-29.jpg', '2025-12-12 12:30:24', '2025-12-12 12:30:24'),
(315, 204, 'uploads/product_gallery/1765542645_693c0af509107_sponge-kit-aj-69.jpg', '2025-12-12 12:30:45', '2025-12-12 12:30:45'),
(316, 205, 'uploads/product_gallery/1765542664_693c0b0884064_sponge-kit-fl-69.jpg', '2025-12-12 12:31:04', '2025-12-12 12:31:04'),
(317, 206, 'uploads/product_gallery/1765542685_693c0b1d095fc_sponge-kit-fl-70.jpg', '2025-12-12 12:31:25', '2025-12-12 12:31:25'),
(318, 196, 'uploads/product_gallery/1765542716_693c0b3c7ed25_sf-9501a-decoration-machine-7.jpg', '2025-12-12 12:31:56', '2025-12-12 12:31:56'),
(319, 197, 'uploads/product_gallery/1765542736_693c0b5061e07_sf-008-rubber-roller-7.jpg', '2025-12-12 12:32:16', '2025-12-12 12:32:16'),
(320, 198, 'uploads/product_gallery/1765542755_693c0b63b3ce0_sf-065-rubber-roller-7.jpg', '2025-12-12 12:32:35', '2025-12-12 12:32:35'),
(322, 183, 'uploads/product_gallery/1765542829_693c0bad60b88_gr-03-soft-pattern-rubber-6.jpg', '2025-12-12 12:33:49', '2025-12-12 12:33:49'),
(323, 184, 'uploads/product_gallery/1765542849_693c0bc1d5a30_gr-86-soft-pattern-rubber-6.jpg', '2025-12-12 12:34:09', '2025-12-12 12:34:09'),
(324, 185, 'uploads/product_gallery/1765542872_693c0bd872887_gr-78-soft-pattern-rubber-6.jpg', '2025-12-12 12:34:32', '2025-12-12 12:34:32'),
(325, 186, 'uploads/product_gallery/1765542892_693c0becab82f_gr-126-soft-pattern-rubber-6.jpg', '2025-12-12 12:34:52', '2025-12-12 12:34:52'),
(326, 187, 'uploads/product_gallery/1765542915_693c0c030d256_gr-33-soft-pattern-rubber-6.jpg', '2025-12-12 12:35:15', '2025-12-12 12:35:15'),
(327, 188, 'uploads/product_gallery/1765542998_693c0c56e7fbd_gr-09-soft-pattern-rubber-6.jpg', '2025-12-12 12:36:38', '2025-12-12 12:36:38'),
(328, 189, 'uploads/product_gallery/1765543022_693c0c6ebbbe2_gr-127-soft-pattern-rubber-6.jpg', '2025-12-12 12:37:02', '2025-12-12 12:37:02'),
(329, 190, 'uploads/product_gallery/1765543042_693c0c82eeb23_gr-35-soft-pattern-rubber-6.jpg', '2025-12-12 12:37:22', '2025-12-12 12:37:22'),
(330, 191, 'uploads/product_gallery/1765543065_693c0c99d7d43_gr-46-soft-pattern-rubber-6.jpg', '2025-12-12 12:37:45', '2025-12-12 12:37:45'),
(331, 192, 'uploads/product_gallery/1765543090_693c0cb2ea366_gr-70-soft-pattern-rubber-6.jpg', '2025-12-12 12:38:10', '2025-12-12 12:38:10'),
(332, 193, 'uploads/product_gallery/1765543113_693c0cc924bbd_gr-82-soft-pattern-rubber-6.jpg', '2025-12-12 12:38:33', '2025-12-12 12:38:33'),
(333, 194, 'uploads/product_gallery/1765543138_693c0ce2d31bc_gr-77-soft-pattern-rubber-6.jpg', '2025-12-12 12:38:58', '2025-12-12 12:38:58'),
(334, 195, 'uploads/product_gallery/1765543165_693c0cfdc9548_gr-29-soft-pattern-rubber-6.jpg', '2025-12-12 12:39:25', '2025-12-12 12:39:25'),
(335, 172, 'uploads/product_gallery/1765543222_693c0d36e58d3_3465mm-piano-hinge-all-ss-pin-396-gm.jpg', '2025-12-12 12:40:22', '2025-12-12 12:40:22'),
(343, 180, 'uploads/product_gallery/1765543495_693c0e472482e_hydrolic-concealed-hinge-888-f-high-soza-ss-12-baka.jpg', '2025-12-12 12:44:55', '2025-12-12 12:44:55'),
(344, 181, 'uploads/product_gallery/1765543518_693c0e5e80f80_normal-concealed-hinge-261-low-soza.jpg', '2025-12-12 12:45:18', '2025-12-12 12:45:18'),
(346, 254, 'uploads/product_gallery/1765543591_693c0ea72d8d5_7301-ac-dead-bolt-single-knob.jpg', '2025-12-12 12:46:31', '2025-12-12 12:46:31'),
(347, 255, 'uploads/product_gallery/1765543618_693c0ec2196c2_7301-ss-dead-bolt-single-knob.jpg', '2025-12-12 12:46:58', '2025-12-12 12:46:58'),
(353, 261, 'uploads/product_gallery/1765543765_693c0f558b9a1_666-door-stopper-aczinc-vikars.jpg', '2025-12-12 12:49:25', '2025-12-12 12:49:25'),
(354, 262, 'uploads/product_gallery/1765543796_693c0f74ef625_door-viewer-with-shutter-ac.jpg', '2025-12-12 12:49:56', '2025-12-12 12:49:56'),
(355, 263, 'uploads/product_gallery/1765543818_693c0f8a467b2_door-viewer-with-shutter-coffee.jpg', '2025-12-12 12:50:18', '2025-12-12 12:50:18'),
(356, 264, 'uploads/product_gallery/1765543838_693c0f9ee7a19_door-viewer-without-shutter-ac.jpg', '2025-12-12 12:50:38', '2025-12-12 12:50:38'),
(357, 150, 'uploads/product_gallery/1765543868_693c0fbc11c8a_door-chain-ss.jpg', '2025-12-12 12:51:08', '2025-12-12 12:51:08'),
(360, 153, 'uploads/product_gallery/1765543937_693c100100c08_729-door-knocker-with-viewer-ac.jpg', '2025-12-12 12:52:17', '2025-12-12 12:52:17'),
(366, 159, 'uploads/product_gallery/1765544097_693c10a12ebaf_1314-b-bike-pad-lock.jpg', '2025-12-12 12:54:57', '2025-12-12 12:54:57'),
(367, 160, 'uploads/product_gallery/1765544121_693c10b9baefd_bike-pad-lock-6865-65-mm.jpg', '2025-12-12 12:55:21', '2025-12-12 12:55:21'),
(368, 161, 'uploads/product_gallery/1765544143_693c10cf3ccb5_bike-pad-lock-6875-75-mm.jpg', '2025-12-12 12:55:43', '2025-12-12 12:55:43'),
(369, 162, 'uploads/product_gallery/1765544166_693c10e689003_pad-lock-cr-5350-cross-key.jpg', '2025-12-12 12:56:06', '2025-12-12 12:56:06'),
(370, 163, 'uploads/product_gallery/1765544188_693c10fc59c3c_pad-lock-cr-5360-cross-key.jpg', '2025-12-12 12:56:28', '2025-12-12 12:56:28'),
(371, 164, 'uploads/product_gallery/1765544209_693c111152e68_pad-lock-np-60-matt.jpg', '2025-12-12 12:56:49', '2025-12-12 12:56:49'),
(373, 166, 'uploads/product_gallery/1765544357_693c11a50dd69_310-rim-lock-12-key-ss-without-chain.jpg', '2025-12-12 12:59:17', '2025-12-12 12:59:17'),
(374, 167, 'uploads/product_gallery/1765544382_693c11be28737_310-rim-lock-18-key-ss-without-chain.jpg', '2025-12-12 12:59:42', '2025-12-12 12:59:42'),
(375, 168, 'uploads/product_gallery/1765544403_693c11d360f81_310-rim-lock-24-key-ss-without-chain.jpg', '2025-12-12 13:00:03', '2025-12-12 13:00:03'),
(376, 169, 'uploads/product_gallery/1765544428_693c11ec9ebf6_310-rim-lock-6-key-ac-without-chain.jpg', '2025-12-12 13:00:28', '2025-12-12 13:00:28'),
(377, 170, 'uploads/product_gallery/1765544450_693c120282b32_310-rim-lock-6-key-ss-without-chain.jpg', '2025-12-12 13:00:50', '2025-12-12 13:00:50'),
(378, 171, 'uploads/product_gallery/1765544478_693c121e302ce_564-ac-auto-rim-lock.jpg', '2025-12-12 13:01:18', '2025-12-12 13:01:18'),
(379, 229, 'uploads/product_gallery/1765544532_693c125419595_691-537-ac-2-in-1.jpg', '2025-12-12 13:02:12', '2025-12-12 13:02:12'),
(380, 230, 'uploads/product_gallery/1765544558_693c126e768a7_kg-01-xl-380-orb.jpg', '2025-12-12 13:02:38', '2025-12-12 13:02:38'),
(381, 231, 'uploads/product_gallery/1765544577_693c1281c2d52_kg-02-xl-370-sncp.jpg', '2025-12-12 13:02:57', '2025-12-12 13:02:57'),
(382, 232, 'uploads/product_gallery/1765544600_693c129809ac9_kg-03-xl-370-black-ac-2-in-1.jpg', '2025-12-12 13:03:20', '2025-12-12 13:03:20'),
(383, 233, 'uploads/product_gallery/1765544620_693c12acc6396_kg-03-xl-370-orb-2-in-1.jpg', '2025-12-12 13:03:40', '2025-12-12 13:03:40'),
(384, 234, 'uploads/product_gallery/1765544640_693c12c02a7c7_kg-04-xl-370-orb-2-in-1.jpg', '2025-12-12 13:04:00', '2025-12-12 13:04:00'),
(385, 235, 'uploads/product_gallery/1765544672_693c12e02e699_kg-04-xl-370-sncp-2-in-1.jpg', '2025-12-12 13:04:32', '2025-12-12 13:04:32'),
(386, 236, 'uploads/product_gallery/1765544690_693c12f2d5751_kg-05-xl-375-rg-2-in-1.jpg', '2025-12-12 13:04:50', '2025-12-12 13:04:50'),
(387, 237, 'uploads/product_gallery/1765544709_693c1305cf5f9_kg-05-xl-375-orb-2-in-1.jpg', '2025-12-12 13:05:09', '2025-12-12 13:05:09'),
(388, 238, 'uploads/product_gallery/1765544731_693c131b8296c_kg-07-xl-375-mcf-coffee.jpg', '2025-12-12 13:05:31', '2025-12-12 13:05:31'),
(389, 239, 'uploads/product_gallery/1765544752_693c13304bba2_kg-08-xl-380-orb.jpg', '2025-12-12 13:05:52', '2025-12-12 13:05:52'),
(390, 240, 'uploads/product_gallery/1765544769_693c13417a0c0_kg-08-xl-380-rg.jpg', '2025-12-12 13:06:09', '2025-12-12 13:06:09'),
(391, 241, 'uploads/product_gallery/1765544817_693c137169073_kg-09-xl-381-orb.jpg', '2025-12-12 13:06:57', '2025-12-12 13:06:57'),
(392, 242, 'uploads/product_gallery/1765544839_693c1387512c3_kg-09-xl-381-rg.jpg', '2025-12-12 13:07:19', '2025-12-12 13:07:19'),
(393, 243, 'uploads/product_gallery/1765544865_693c13a196aa6_fd-9818-724-mae.jpg', '2025-12-12 13:07:45', '2025-12-12 13:07:45'),
(394, 245, 'uploads/product_gallery/1765544889_693c13b9b7644_fd-9531-733-mcf.jpg', '2025-12-12 13:08:09', '2025-12-12 13:08:09'),
(395, 246, 'uploads/product_gallery/1765544928_693c13e07cdcb_fd-9531-592-mcf.jpg', '2025-12-12 13:08:48', '2025-12-12 13:08:48'),
(396, 247, 'uploads/product_gallery/1765544988_693c141c180ef_fd-9531-592-orb.jpg', '2025-12-12 13:09:48', '2025-12-12 13:09:48'),
(397, 248, 'uploads/product_gallery/1765545009_693c14310f0e2_fd-9325-536-rg.jpg', '2025-12-12 13:10:09', '2025-12-12 13:10:09'),
(398, 249, 'uploads/product_gallery/1765545027_693c1443410ff_fd-9764-536-rg.jpg', '2025-12-12 13:10:27', '2025-12-12 13:10:27'),
(399, 250, 'uploads/product_gallery/1765545047_693c1457845bf_fd-9208b-298b-rg.jpg', '2025-12-12 13:10:47', '2025-12-12 13:10:47'),
(400, 251, 'uploads/product_gallery/1765545066_693c146ac41cf_fd-9395-44-rg.jpg', '2025-12-12 13:11:06', '2025-12-12 13:11:06'),
(401, 252, 'uploads/product_gallery/1765545086_693c147e14f6e_fd-9395-44-mcf.jpg', '2025-12-12 13:11:26', '2025-12-12 13:11:26'),
(402, 375, 'uploads/product_gallery/1766322055_6947ef87b6993_4-x-3-x-25-mm-vikars-bmi-ss-screw.png', '2025-12-21 13:00:55', '2025-12-21 13:00:55'),
(403, 406, 'uploads/product_gallery/1766322110_6947efbe9fca3_ss-drawer-channel-with-4-ball12-14-16-18-20.png', '2025-12-21 13:01:50', '2025-12-21 13:01:50'),
(404, 405, 'uploads/product_gallery/1766322138_6947efda7d153_cl-297-sliding-wheelvikers.png', '2025-12-21 13:02:18', '2025-12-21 13:02:18'),
(405, 257, 'uploads/product_gallery/1767277194_6956828a2b1b6_7312-ac-dead-bolt-doble.png', '2026-01-01 14:19:54', '2026-01-01 14:19:54'),
(406, 256, 'uploads/product_gallery/1767277242_695682bab6af0_7312-ss-dead-bolt-doble.png', '2026-01-01 14:20:42', '2026-01-01 14:20:42'),
(407, 253, 'uploads/product_gallery/1767277294_695682eea3d93_d-812-ss-dead-bolt-single-square.png', '2026-01-01 14:21:34', '2026-01-01 14:21:34'),
(408, 151, 'uploads/product_gallery/1767277359_6956832f37789_door-chain-ac.png', '2026-01-01 14:22:39', '2026-01-01 14:22:39'),
(409, 154, 'uploads/product_gallery/1767277471_6956839f89de5_xh-052-door-closer-vikars.png', '2026-01-01 14:24:31', '2026-01-01 14:24:31'),
(410, 152, 'uploads/product_gallery/1767277528_695683d840d49_728-door-knocker-with-viewer-ac.png', '2026-01-01 14:25:28', '2026-01-01 14:25:28'),
(411, 259, 'uploads/product_gallery/1767277571_695684036eddf_888-door-stopper-ss-vikars.png', '2026-01-01 14:26:11', '2026-01-01 14:26:11'),
(412, 260, 'uploads/product_gallery/1767277603_69568423884ba_823-door-stopper-ss-vikars.png', '2026-01-01 14:26:43', '2026-01-01 14:26:43'),
(413, 258, 'uploads/product_gallery/1767277627_6956843bcf415_838-805-door-stopper-ss-vikars.png', '2026-01-01 14:27:07', '2026-01-01 14:27:07'),
(414, 177, 'uploads/product_gallery/1767277779_695684d386432_showcase-lock.png', '2026-01-01 14:29:39', '2026-01-01 14:29:39'),
(415, 175, 'uploads/product_gallery/1767277830_695685060f18d_furniture-lock-cp-wave-computer-key.png', '2026-01-01 14:30:30', '2026-01-01 14:30:30'),
(416, 176, 'uploads/product_gallery/1767277860_6956852459677_furniture-lock-ac-wave-computer-key.png', '2026-01-01 14:31:00', '2026-01-01 14:31:00'),
(417, 174, 'uploads/product_gallery/1767277899_6956854b4d936_138-22-ac-drawer-lock-jb-type.png', '2026-01-01 14:31:39', '2026-01-01 14:31:39'),
(418, 173, 'uploads/product_gallery/1767277918_6956855ed19d1_138-22-ss-drawer-lock-jb-type.png', '2026-01-01 14:31:58', '2026-01-01 14:31:58'),
(419, 156, 'uploads/product_gallery/1767278089_695686097177c_6271-ab-liver-lock.png', '2026-01-01 14:34:49', '2026-01-01 14:34:49'),
(420, 155, 'uploads/product_gallery/1767278132_695686340d4c3_6271-black-liver-lock.png', '2026-01-01 14:35:32', '2026-01-01 14:35:32'),
(421, 157, 'uploads/product_gallery/1767278177_69568661da5b7_6271-ss-liver-lock.png', '2026-01-01 14:36:17', '2026-01-01 14:36:17'),
(422, 158, 'uploads/product_gallery/1767278210_6956868224d57_6211-ss-liver-lock.png', '2026-01-01 14:36:50', '2026-01-01 14:36:50'),
(423, 178, 'uploads/product_gallery/1767278269_695686bdd7f15_lpg-regulator-orange-22-mm.png', '2026-01-01 14:37:49', '2026-01-01 14:37:49'),
(424, 179, 'uploads/product_gallery/1767278294_695686d627c12_lpg-regulator-silver-22-mm.png', '2026-01-01 14:38:14', '2026-01-01 14:38:14'),
(425, 182, 'uploads/product_gallery/1767278507_695687abcc650_sf-9601-a-decoration-machine-6.png', '2026-01-01 14:41:47', '2026-01-01 14:41:47'),
(426, 165, 'uploads/product_gallery/1767278605_6956880d19a38_310-rim-lock-12-key-ac-without-chain.png', '2026-01-01 14:43:25', '2026-01-01 14:43:25'),
(427, 324, 'uploads/product_gallery/1767278788_695688c4a8423_5801-ss-dimond-knob.png', '2026-01-01 14:46:28', '2026-01-01 14:46:28'),
(428, 324, 'uploads/product_gallery/1767278788_695688c4a87c6_5801-ss-dimond-knob.png', '2026-01-01 14:46:28', '2026-01-01 14:46:28'),
(429, 323, 'uploads/product_gallery/1767278823_695688e7f21fc_5801-rg-dimond-knob.png', '2026-01-01 14:47:03', '2026-01-01 14:47:03'),
(430, 322, 'uploads/product_gallery/1767278872_69568918ee82a_5885-ac.png', '2026-01-01 14:47:52', '2026-01-01 14:47:52'),
(431, 321, 'uploads/product_gallery/1767278926_6956894e18a93_5887-d-acpb-full-zinc.png', '2026-01-01 14:48:46', '2026-01-01 14:48:46'),
(432, 321, 'uploads/product_gallery/1767278926_6956894e18c56_5887-d-acpb-full-zinc.png', '2026-01-01 14:48:46', '2026-01-01 14:48:46'),
(433, 321, 'uploads/product_gallery/1767278926_6956894e18daa_5887-d-acpb-full-zinc.png', '2026-01-01 14:48:46', '2026-01-01 14:48:46'),
(437, 318, 'uploads/product_gallery/1767279048_695689c8ccaf9_5890-sbpb.png', '2026-01-01 14:50:48', '2026-01-01 14:50:48'),
(438, 318, 'uploads/product_gallery/1767279048_695689c8ccd16_5890-sbpb.png', '2026-01-01 14:50:48', '2026-01-01 14:50:48'),
(439, 317, 'uploads/product_gallery/1767279091_695689f30e43c_5890-s.png', '2026-01-01 14:51:31', '2026-01-01 14:51:31'),
(440, 317, 'uploads/product_gallery/1767279091_695689f30e5e8_5890-s.png', '2026-01-01 14:51:31', '2026-01-01 14:51:31'),
(441, 317, 'uploads/product_gallery/1767279091_695689f30e741_5890-s.png', '2026-01-01 14:51:31', '2026-01-01 14:51:31'),
(442, 315, 'uploads/product_gallery/1767279127_69568a17b3f1a_5892-ac.png', '2026-01-01 14:52:07', '2026-01-01 14:52:07'),
(443, 315, 'uploads/product_gallery/1767279127_69568a17b4136_5892-ac.png', '2026-01-01 14:52:07', '2026-01-01 14:52:07'),
(444, 315, 'uploads/product_gallery/1767279127_69568a17b42e0_5892-ac.png', '2026-01-01 14:52:07', '2026-01-01 14:52:07'),
(446, 314, 'uploads/product_gallery/1767279195_69568a5b277fd_5893-ac.png', '2026-01-01 14:53:15', '2026-01-01 14:53:15'),
(447, 314, 'uploads/product_gallery/1767279195_69568a5b279cd_5893-ac.png', '2026-01-01 14:53:15', '2026-01-01 14:53:15'),
(448, 314, 'uploads/product_gallery/1767279195_69568a5b27b1b_5893-ac.png', '2026-01-01 14:53:15', '2026-01-01 14:53:15'),
(449, 326, 'uploads/product_gallery/1767279275_69568aab144ff_cnci-ac.png', '2026-01-01 14:54:35', '2026-01-01 14:54:35'),
(450, 326, 'uploads/product_gallery/1767279275_69568aab14737_cnci-ac.png', '2026-01-01 14:54:35', '2026-01-01 14:54:35'),
(451, 326, 'uploads/product_gallery/1767279275_69568aab148dd_cnci-ac.png', '2026-01-01 14:54:35', '2026-01-01 14:54:35'),
(452, 325, 'uploads/product_gallery/1767279308_69568acc4ed3b_cnci-cp.png', '2026-01-01 14:55:08', '2026-01-01 14:55:08'),
(453, 325, 'uploads/product_gallery/1767279308_69568acc4efd0_cnci-cp.png', '2026-01-01 14:55:08', '2026-01-01 14:55:08'),
(454, 311, 'uploads/product_gallery/1767279353_69568af9b112c_9000-ac-ss-sheet.png', '2026-01-01 14:55:53', '2026-01-01 14:55:53'),
(455, 284, 'uploads/product_gallery/1767279514_69568b9a3d853_85-11-ac.png', '2026-01-01 14:58:34', '2026-01-01 14:58:34'),
(456, 284, 'uploads/product_gallery/1767279514_69568b9a3da8c_85-11-ac.png', '2026-01-01 14:58:34', '2026-01-01 14:58:34'),
(457, 285, 'uploads/product_gallery/1767279579_69568bdb8294d_85-11-mcf.png', '2026-01-01 14:59:39', '2026-01-01 14:59:39'),
(458, 285, 'uploads/product_gallery/1767279579_69568bdb82b0b_85-11-mcf.png', '2026-01-01 14:59:39', '2026-01-01 14:59:39'),
(459, 286, 'uploads/product_gallery/1767279628_69568c0c3fd25_85-11-orb.png', '2026-01-01 15:00:28', '2026-01-01 15:00:28'),
(460, 286, 'uploads/product_gallery/1767279628_69568c0c3fedb_85-11-orb.png', '2026-01-01 15:00:28', '2026-01-01 15:00:28'),
(461, 286, 'uploads/product_gallery/1767279628_69568c0c4005d_85-11-orb.png', '2026-01-01 15:00:28', '2026-01-01 15:00:28'),
(462, 283, 'uploads/product_gallery/1767279674_69568c3a87aa9_85-12-orb.png', '2026-01-01 15:01:14', '2026-01-01 15:01:14'),
(463, 330, 'uploads/product_gallery/1767279850_69568cea3cefa_813-990-org.png', '2026-01-01 15:04:10', '2026-01-01 15:04:10'),
(464, 330, 'uploads/product_gallery/1767279850_69568cea3d0cf_813-990-org.png', '2026-01-01 15:04:10', '2026-01-01 15:04:10'),
(465, 330, 'uploads/product_gallery/1767279850_69568cea3d221_813-990-org.png', '2026-01-01 15:04:10', '2026-01-01 15:04:10'),
(466, 328, 'uploads/product_gallery/1767279891_69568d13eb47d_1015-h-502-orb.png', '2026-01-01 15:04:51', '2026-01-01 15:04:51'),
(467, 328, 'uploads/product_gallery/1767279891_69568d13eb64c_1015-h-502-orb.png', '2026-01-01 15:04:51', '2026-01-01 15:04:51'),
(468, 328, 'uploads/product_gallery/1767279891_69568d13eb7a3_1015-h-502-orb.png', '2026-01-01 15:04:51', '2026-01-01 15:04:51'),
(469, 328, 'uploads/product_gallery/1767279891_69568d13eb896_1015-h-502-orb.png', '2026-01-01 15:04:51', '2026-01-01 15:04:51'),
(470, 292, 'uploads/product_gallery/1767279960_69568d5854437_1232-a-1048-mcf.png', '2026-01-01 15:06:00', '2026-01-01 15:06:00'),
(471, 291, 'uploads/product_gallery/1767279992_69568d787629f_1232-a-1048-msn.png', '2026-01-01 15:06:32', '2026-01-01 15:06:32'),
(472, 287, 'uploads/product_gallery/1767280027_69568d9be6632_1232-a-1501-bsn.png', '2026-01-01 15:07:07', '2026-01-01 15:07:07'),
(473, 287, 'uploads/product_gallery/1767280027_69568d9be67e8_1232-a-1501-bsn.png', '2026-01-01 15:07:07', '2026-01-01 15:07:07'),
(474, 288, 'uploads/product_gallery/1767280063_69568dbfcdcff_1232-a-1501-mcf.png', '2026-01-01 15:07:43', '2026-01-01 15:07:43'),
(475, 288, 'uploads/product_gallery/1767280063_69568dbfcdf1a_1232-a-1501-mcf.png', '2026-01-01 15:07:43', '2026-01-01 15:07:43'),
(476, 296, 'uploads/product_gallery/1767280106_69568deac3161_1232-a-9014-mab.png', '2026-01-01 15:08:26', '2026-01-01 15:08:26'),
(477, 293, 'uploads/product_gallery/1767280145_69568e11230b8_1232-a-9044-msn.png', '2026-01-01 15:09:05', '2026-01-01 15:09:05'),
(478, 290, 'uploads/product_gallery/1767280183_69568e3729aca_1232a1695-mcf.png', '2026-01-01 15:09:43', '2026-01-01 15:09:43'),
(479, 290, 'uploads/product_gallery/1767280183_69568e3729ce6_1232a1695-mcf.png', '2026-01-01 15:09:43', '2026-01-01 15:09:43'),
(480, 297, 'uploads/product_gallery/1767280222_69568e5ebb582_1248-a-9043-mcf.png', '2026-01-01 15:10:22', '2026-01-01 15:10:22'),
(481, 297, 'uploads/product_gallery/1767280222_69568e5ebb756_1248-a-9043-mcf.png', '2026-01-01 15:10:22', '2026-01-01 15:10:22'),
(482, 267, 'uploads/product_gallery/1767280272_69568e906996b_9123-z-454-mcf.png', '2026-01-01 15:11:12', '2026-01-01 15:11:12'),
(483, 267, 'uploads/product_gallery/1767280272_69568e9069b1f_9123-z-454-mcf.png', '2026-01-01 15:11:12', '2026-01-01 15:11:12'),
(484, 338, 'uploads/product_gallery/1767280434_69568f32e5768_9136-507-mcf.png', '2026-01-01 15:13:54', '2026-01-01 15:13:54'),
(485, 338, 'uploads/product_gallery/1767280434_69568f32e5987_9136-507-mcf.png', '2026-01-01 15:13:54', '2026-01-01 15:13:54'),
(486, 282, 'uploads/product_gallery/1767280472_69568f58d501a_9252-301-sncp.png', '2026-01-01 15:14:32', '2026-01-01 15:14:32'),
(487, 282, 'uploads/product_gallery/1767280472_69568f58d523e_9252-301-sncp.png', '2026-01-01 15:14:32', '2026-01-01 15:14:32'),
(488, 282, 'uploads/product_gallery/1767280472_69568f58d5397_9252-301-sncp.png', '2026-01-01 15:14:32', '2026-01-01 15:14:32'),
(489, 276, 'uploads/product_gallery/1767280509_69568f7d4e247_9302-442-mcf.png', '2026-01-01 15:15:09', '2026-01-01 15:15:09'),
(490, 276, 'uploads/product_gallery/1767280509_69568f7d4e4bf_9302-442-mcf.png', '2026-01-01 15:15:09', '2026-01-01 15:15:09'),
(491, 276, 'uploads/product_gallery/1767280509_69568f7d4e64b_9302-442-mcf.png', '2026-01-01 15:15:09', '2026-01-01 15:15:09'),
(492, 276, 'uploads/product_gallery/1767280509_69568f7d4e807_9302-442-mcf.png', '2026-01-01 15:15:09', '2026-01-01 15:15:09'),
(493, 277, 'uploads/product_gallery/1767280554_69568faa873e8_9302-e-16-mcf.png', '2026-01-01 15:15:54', '2026-01-01 15:15:54'),
(494, 278, 'uploads/product_gallery/1767280736_69569060ad23f_9302-er-16-bred.png', '2026-01-01 15:18:56', '2026-01-01 15:18:56'),
(495, 275, 'uploads/product_gallery/1767280774_69569086366a3_9325-536-bred.png', '2026-01-01 15:19:34', '2026-01-01 15:19:34'),
(496, 275, 'uploads/product_gallery/1767280774_695690863689f_9325-536-bred.png', '2026-01-01 15:19:34', '2026-01-01 15:19:34'),
(497, 274, 'uploads/product_gallery/1767280805_695690a5068ed_9325-536-mcf.png', '2026-01-01 15:20:05', '2026-01-01 15:20:05'),
(498, 274, 'uploads/product_gallery/1767280805_695690a506b77_9325-536-mcf.png', '2026-01-01 15:20:05', '2026-01-01 15:20:05'),
(499, 273, 'uploads/product_gallery/1767280833_695690c1f17e9_9349-d-113-bsn-msn.png', '2026-01-01 15:20:33', '2026-01-01 15:20:33'),
(500, 268, 'uploads/product_gallery/1767280868_695690e45db81_9522-406-mcf.png', '2026-01-01 15:21:08', '2026-01-01 15:21:08'),
(501, 268, 'uploads/product_gallery/1767280868_695690e45dd2c_9522-406-mcf.png', '2026-01-01 15:21:08', '2026-01-01 15:21:08'),
(502, 265, 'uploads/product_gallery/1767280894_695690fee6f8b_9577-583-bred.png', '2026-01-01 15:21:34', '2026-01-01 15:21:34'),
(503, 331, 'uploads/product_gallery/1767280930_695691224cd73_85138-377-orb.png', '2026-01-01 15:22:10', '2026-01-01 15:22:10'),
(504, 331, 'uploads/product_gallery/1767280930_695691224cfbe_85138-377-orb.png', '2026-01-01 15:22:10', '2026-01-01 15:22:10'),
(505, 331, 'uploads/product_gallery/1767280930_695691224d0f9_85138-377-orb.png', '2026-01-01 15:22:10', '2026-01-01 15:22:10'),
(506, 279, 'uploads/product_gallery/1767280973_6956914d2e62e_95479-826-bred.png', '2026-01-01 15:22:53', '2026-01-01 15:22:53'),
(507, 279, 'uploads/product_gallery/1767280973_6956914d2e82e_95479-826-bred.png', '2026-01-01 15:22:53', '2026-01-01 15:22:53'),
(508, 300, 'uploads/product_gallery/1767281060_695691a425d72_h-58177-h-192-black-ac.png', '2026-01-01 15:24:20', '2026-01-01 15:24:20'),
(509, 299, 'uploads/product_gallery/1767281101_695691cd5e820_h-58177-h-192-org.png', '2026-01-01 15:25:01', '2026-01-01 15:25:01'),
(510, 332, 'uploads/product_gallery/1767281216_69569240d33ca_m-1200-h-741-dab.png', '2026-01-01 15:26:56', '2026-01-01 15:26:56'),
(511, 332, 'uploads/product_gallery/1767281216_69569240d3684_m-1200-h-741-dab.png', '2026-01-01 15:26:56', '2026-01-01 15:26:56'),
(512, 298, 'uploads/product_gallery/1767281271_6956927752dd4_m-1158-h-655-ac.png', '2026-01-01 15:27:51', '2026-01-01 15:27:51'),
(513, 298, 'uploads/product_gallery/1767281271_6956927752f99_m-1158-h-655-ac.png', '2026-01-01 15:27:51', '2026-01-01 15:27:51'),
(514, 298, 'uploads/product_gallery/1767281271_69569277530a9_m-1158-h-655-ac.png', '2026-01-01 15:27:51', '2026-01-01 15:27:51'),
(515, 335, 'uploads/product_gallery/1767281315_695692a39d1c4_p-1166-h-254-dacblack-ac.png', '2026-01-01 15:28:35', '2026-01-01 15:28:35'),
(516, 335, 'uploads/product_gallery/1767281315_695692a39d39e_p-1166-h-254-dacblack-ac.png', '2026-01-01 15:28:35', '2026-01-01 15:28:35'),
(517, 336, 'uploads/product_gallery/1767281413_69569305e5ad0_z-9106-z-96-orb.png', '2026-01-01 15:30:13', '2026-01-01 15:30:13'),
(518, 336, 'uploads/product_gallery/1767281413_69569305e5c9c_z-9106-z-96-orb.png', '2026-01-01 15:30:13', '2026-01-01 15:30:13'),
(519, 149, 'uploads/product_gallery/1767712726_695d27d65cf85_aluminium-level-with-magnet-09.png', '2026-01-06 15:18:46', '2026-01-06 15:18:46'),
(520, 149, 'uploads/product_gallery/1767712726_695d27d65d181_aluminium-level-with-magnet-09.png', '2026-01-06 15:18:46', '2026-01-06 15:18:46'),
(521, 120, 'uploads/product_gallery/1767713199_695d29afd94e5_4-daimond-cutter-professional-quality-segcutting.png', '2026-01-06 15:26:39', '2026-01-06 15:26:39'),
(522, 119, 'uploads/product_gallery/1767713281_695d2a01b8a18_4-daimond-cutter-professional-quality-plain-saw.png', '2026-01-06 15:28:01', '2026-01-06 15:28:01'),
(523, 119, 'uploads/product_gallery/1767713281_695d2a01b8c43_4-daimond-cutter-professional-quality-plain-saw.png', '2026-01-06 15:28:01', '2026-01-06 15:28:01'),
(524, 118, 'uploads/product_gallery/1767713489_695d2ad12cfd2_4-daimond-cup-grinding-wheel-stdquality.png', '2026-01-06 15:31:29', '2026-01-06 15:31:29'),
(525, 118, 'uploads/product_gallery/1767713489_695d2ad12d21b_4-daimond-cup-grinding-wheel-stdquality.png', '2026-01-06 15:31:29', '2026-01-06 15:31:29'),
(526, 128, 'uploads/product_gallery/1767713558_695d2b16afdc4_7-dimond-cutter-seg-cutting-proffessional-quality.png', '2026-01-06 15:32:38', '2026-01-06 15:32:38'),
(527, 124, 'uploads/product_gallery/1767713593_695d2b39645c5_45-daimond-cutter-multi-profquality.png', '2026-01-06 15:33:13', '2026-01-06 15:33:13'),
(528, 124, 'uploads/product_gallery/1767713593_695d2b3964848_45-daimond-cutter-multi-profquality.png', '2026-01-06 15:33:13', '2026-01-06 15:33:13'),
(529, 130, 'uploads/product_gallery/1767713660_695d2b7c6c0d3_metal-cuttting-disk-4.png', '2026-01-06 15:34:20', '2026-01-06 15:34:20'),
(530, 130, 'uploads/product_gallery/1767713660_695d2b7c6c29c_metal-cuttting-disk-4.png', '2026-01-06 15:34:20', '2026-01-06 15:34:20');
INSERT INTO `product_img_history` (`id`, `product_id`, `gallery_image`, `created_at`, `updated_at`) VALUES
(531, 132, 'uploads/product_gallery/1767713751_695d2bd7d3989_axe-bir-brand-premium-quality.png', '2026-01-06 15:35:51', '2026-01-06 15:35:51'),
(532, 133, 'uploads/product_gallery/1767713812_695d2c1491fef_axebir-brand-small.png', '2026-01-06 15:36:52', '2026-01-06 15:36:52'),
(533, 133, 'uploads/product_gallery/1767713812_695d2c149224e_axebir-brand-small.png', '2026-01-06 15:36:52', '2026-01-06 15:36:52'),
(534, 134, 'uploads/product_gallery/1767713868_695d2c4c362fd_bolt-cutter-24.png', '2026-01-06 15:37:48', '2026-01-06 15:37:48'),
(535, 135, 'uploads/product_gallery/1767713927_695d2c87e1888_carpenter-pincher-7.png', '2026-01-06 15:38:47', '2026-01-06 15:38:47'),
(536, 136, 'uploads/product_gallery/1767713967_695d2cafb11ab_cutter-knif-2-extra-blade.png', '2026-01-06 15:39:27', '2026-01-06 15:39:27'),
(537, 138, 'uploads/product_gallery/1767714004_695d2cd4dd6f1_flap-disk-80-grit.png', '2026-01-06 15:40:04', '2026-01-06 15:40:04'),
(538, 138, 'uploads/product_gallery/1767714004_695d2cd4dd8de_flap-disk-80-grit.png', '2026-01-06 15:40:04', '2026-01-06 15:40:04'),
(539, 138, 'uploads/product_gallery/1767714004_695d2cd4dda02_flap-disk-80-grit.png', '2026-01-06 15:40:04', '2026-01-06 15:40:04'),
(540, 140, 'uploads/product_gallery/1767714056_695d2d083acc0_garden-scissor-10-plastic-handle.png', '2026-01-06 15:40:56', '2026-01-06 15:40:56'),
(541, 140, 'uploads/product_gallery/1767714056_695d2d083aef8_garden-scissor-10-plastic-handle.png', '2026-01-06 15:40:56', '2026-01-06 15:40:56'),
(542, 141, 'uploads/product_gallery/1767714160_695d2d70b5654_glass-cutter-black.png', '2026-01-06 15:42:40', '2026-01-06 15:42:40'),
(543, 141, 'uploads/product_gallery/1767714160_695d2d70b5833_glass-cutter-black.png', '2026-01-06 15:42:40', '2026-01-06 15:42:40'),
(544, 141, 'uploads/product_gallery/1767714160_695d2d70b5947_glass-cutter-black.png', '2026-01-06 15:42:40', '2026-01-06 15:42:40'),
(545, 146, 'uploads/product_gallery/1767714190_695d2d8e30125_scissor-8.png', '2026-01-06 15:43:10', '2026-01-06 15:43:10'),
(546, 147, 'uploads/product_gallery/1767714243_695d2dc329580_tiles-cutter-pen-140mm.png', '2026-01-06 15:44:03', '2026-01-06 15:44:03'),
(547, 148, 'uploads/product_gallery/1767714296_695d2df863ece_tin-snip-12.png', '2026-01-06 15:44:56', '2026-01-06 15:44:56'),
(548, 148, 'uploads/product_gallery/1767714296_695d2df8640b9_tin-snip-12.png', '2026-01-06 15:44:56', '2026-01-06 15:44:56'),
(549, 148, 'uploads/product_gallery/1767714296_695d2df8641d1_tin-snip-12.png', '2026-01-06 15:44:56', '2026-01-06 15:44:56'),
(550, 97, 'uploads/product_gallery/1767714480_695d2eb042a90_ball-pein-hammer-bmi-16-oz.png', '2026-01-06 15:48:00', '2026-01-06 15:48:00'),
(551, 98, 'uploads/product_gallery/1767714512_695d2ed041150_chipping-hammer-with-wooden-handle-500g.png', '2026-01-06 15:48:32', '2026-01-06 15:48:32'),
(552, 95, 'uploads/product_gallery/1767714545_695d2ef147889_american-claw-hammer-with-fiber-glass-16oz.png', '2026-01-06 15:49:05', '2026-01-06 15:49:05'),
(554, 100, 'uploads/product_gallery/1767714620_695d2f3c20ffb_rubber-mallat-hammer-with-fiber-glass-handle-16oz.png', '2026-01-06 15:50:20', '2026-01-06 15:50:20'),
(555, 101, 'uploads/product_gallery/1767714708_695d2f9484968_rubber-mallat-hammer-with-fiber-glass-handle-bmi-16oz.png', '2026-01-06 15:51:48', '2026-01-06 15:51:48'),
(556, 102, 'uploads/product_gallery/1767714731_695d2fabadc4a_two-way-mallat-hammer-with-fiber-glass-handle-35mm.png', '2026-01-06 15:52:11', '2026-01-06 15:52:11'),
(557, 99, 'uploads/product_gallery/1767714762_695d2fca7a66c_claw-hammer-fiber-glass-08-oz.png', '2026-01-06 15:52:42', '2026-01-06 15:52:42'),
(558, 96, 'uploads/product_gallery/1767714789_695d2fe58c4ff_ball-pein-hammer-16-oz-1-lb.png', '2026-01-06 15:53:09', '2026-01-06 15:53:09'),
(559, 104, 'uploads/product_gallery/1767714910_695d305ec3954_5-pcs-hole-saw-set.png', '2026-01-06 15:55:10', '2026-01-06 15:55:10'),
(560, 104, 'uploads/product_gallery/1767714910_695d305ec3b79_5-pcs-hole-saw-set.png', '2026-01-06 15:55:10', '2026-01-06 15:55:10'),
(561, 105, 'uploads/product_gallery/1767715000_695d30b866e15_5pcs-jig-saw-blade.png', '2026-01-06 15:56:40', '2026-01-06 15:56:40'),
(562, 105, 'uploads/product_gallery/1767715032_695d30d837a56_5pcs-jig-saw-blade.png', '2026-01-06 15:57:12', '2026-01-06 15:57:12'),
(563, 103, 'uploads/product_gallery/1767715112_695d3128f356c_16-pcs-holes-saw-set.png', '2026-01-06 15:58:32', '2026-01-06 15:58:32'),
(564, 103, 'uploads/product_gallery/1767715112_695d3128f3838_16-pcs-holes-saw-set.png', '2026-01-06 15:58:33', '2026-01-06 15:58:33'),
(565, 103, 'uploads/product_gallery/1767715112_695d3128f3989_16-pcs-holes-saw-set.png', '2026-01-06 15:58:33', '2026-01-06 15:58:33'),
(566, 106, 'uploads/product_gallery/1767715152_695d31505ad73_chisel-for-wood-1-inch.png', '2026-01-06 15:59:12', '2026-01-06 15:59:12'),
(567, 106, 'uploads/product_gallery/1767715187_695d3173b958d_chisel-for-wood-1-inch.png', '2026-01-06 15:59:47', '2026-01-06 15:59:47'),
(568, 107, 'uploads/product_gallery/1767715244_695d31acf029b_circular-saw-blade-11040t.png', '2026-01-06 16:00:44', '2026-01-06 16:00:44'),
(569, 107, 'uploads/product_gallery/1767715244_695d31acf04e0_circular-saw-blade-11040t.png', '2026-01-06 16:00:44', '2026-01-06 16:00:44'),
(570, 108, 'uploads/product_gallery/1767715319_695d31f769dee_compass-sawplastic-handle-14.png', '2026-01-06 16:01:59', '2026-01-06 16:01:59'),
(571, 108, 'uploads/product_gallery/1767715319_695d31f76a01b_compass-sawplastic-handle-14.png', '2026-01-06 16:01:59', '2026-01-06 16:01:59'),
(572, 108, 'uploads/product_gallery/1767715319_695d31f76a166_compass-sawplastic-handle-14.png', '2026-01-06 16:01:59', '2026-01-06 16:01:59'),
(573, 108, 'uploads/product_gallery/1767715319_695d31f76a29d_compass-sawplastic-handle-14.png', '2026-01-06 16:01:59', '2026-01-06 16:01:59'),
(574, 110, 'uploads/product_gallery/1767715396_695d3244326ce_electrode-holder-500a.png', '2026-01-06 16:03:16', '2026-01-06 16:03:16'),
(575, 110, 'uploads/product_gallery/1767715396_695d3244329d9_electrode-holder-500a.png', '2026-01-06 16:03:16', '2026-01-06 16:03:16'),
(576, 110, 'uploads/product_gallery/1767715396_695d324432b11_electrode-holder-500a.png', '2026-01-06 16:03:16', '2026-01-06 16:03:16'),
(577, 112, 'uploads/product_gallery/1767715444_695d3274666b1_hac-saw-frame-834-straight.png', '2026-01-06 16:04:04', '2026-01-06 16:04:04'),
(578, 112, 'uploads/product_gallery/1767715444_695d3274668db_hac-saw-frame-834-straight.png', '2026-01-06 16:04:04', '2026-01-06 16:04:04'),
(579, 111, 'uploads/product_gallery/1767715494_695d32a6723f7_hack-saw-blade-12.png', '2026-01-06 16:04:54', '2026-01-06 16:04:54'),
(580, 111, 'uploads/product_gallery/1767715494_695d32a6725e5_hack-saw-blade-12.png', '2026-01-06 16:04:54', '2026-01-06 16:04:54'),
(581, 114, 'uploads/product_gallery/1767715529_695d32c9be607_hand-saw-wooden-handle-with-fire-teeth-16.png', '2026-01-06 16:05:29', '2026-01-06 16:05:29'),
(582, 114, 'uploads/product_gallery/1767715529_695d32c9be8ed_hand-saw-wooden-handle-with-fire-teeth-16.png', '2026-01-06 16:05:29', '2026-01-06 16:05:29'),
(583, 116, 'uploads/product_gallery/1767715580_695d32fc02f16_hand-saw-yellow-black-handle-with-fire-teeth-18.png', '2026-01-06 16:06:20', '2026-01-06 16:06:20'),
(584, 116, 'uploads/product_gallery/1767715580_695d32fc03128_hand-saw-yellow-black-handle-with-fire-teeth-18.png', '2026-01-06 16:06:20', '2026-01-06 16:06:20'),
(585, 116, 'uploads/product_gallery/1767715580_695d32fc03236_hand-saw-yellow-black-handle-with-fire-teeth-18.png', '2026-01-06 16:06:20', '2026-01-06 16:06:20'),
(586, 117, 'uploads/product_gallery/1767715632_695d33301126c_randher-fall-iron-planner-175.png', '2026-01-06 16:07:12', '2026-01-06 16:07:12'),
(587, 117, 'uploads/product_gallery/1767715632_695d333011498_randher-fall-iron-planner-175.png', '2026-01-06 16:07:12', '2026-01-06 16:07:12'),
(591, 50, 'uploads/product_gallery/1767717033_695d38a93b72e_adjustable-roller-handle-proquality-9.png', '2026-01-06 16:30:33', '2026-01-06 16:30:33'),
(592, 50, 'uploads/product_gallery/1767717033_695d38a93b964_adjustable-roller-handle-proquality-9.png', '2026-01-06 16:30:33', '2026-01-06 16:30:33'),
(593, 51, 'uploads/product_gallery/1767717105_695d38f1c4d2a_cup-hook-12-pcs-set-1-15.png', '2026-01-06 16:31:45', '2026-01-06 16:31:45'),
(594, 52, 'uploads/product_gallery/1767717168_695d39306f1e8_cup-wire-brush-3.png', '2026-01-06 16:32:48', '2026-01-06 16:32:48'),
(595, 52, 'uploads/product_gallery/1767717168_695d39306f40d_cup-wire-brush-3.png', '2026-01-06 16:32:48', '2026-01-06 16:32:48'),
(596, 52, 'uploads/product_gallery/1767717168_695d39306f5c4_cup-wire-brush-3.png', '2026-01-06 16:32:48', '2026-01-06 16:32:48'),
(597, 52, 'uploads/product_gallery/1767717168_695d39306f6da_cup-wire-brush-3.png', '2026-01-06 16:32:48', '2026-01-06 16:32:48'),
(598, 53, 'uploads/product_gallery/1767717286_695d39a636184_paint-brush-super-3.png', '2026-01-06 16:34:46', '2026-01-06 16:34:46'),
(599, 54, 'uploads/product_gallery/1767717331_695d39d300a0c_roller-brush-4-white.png', '2026-01-06 16:35:31', '2026-01-06 16:35:31'),
(600, 54, 'uploads/product_gallery/1767717331_695d39d300d16_roller-brush-4-white.png', '2026-01-06 16:35:31', '2026-01-06 16:35:31'),
(601, 55, 'uploads/product_gallery/1767717377_695d3a0186520_roller-brush-4-yellow-new.png', '2026-01-06 16:36:17', '2026-01-06 16:36:17'),
(602, 55, 'uploads/product_gallery/1767717377_695d3a0186766_roller-brush-4-yellow-new.png', '2026-01-06 16:36:17', '2026-01-06 16:36:17'),
(603, 55, 'uploads/product_gallery/1767717377_695d3a018690d_roller-brush-4-yellow-new.png', '2026-01-06 16:36:17', '2026-01-06 16:36:17'),
(604, 55, 'uploads/product_gallery/1767717377_695d3a0186a79_roller-brush-4-yellow-new.png', '2026-01-06 16:36:17', '2026-01-06 16:36:17'),
(605, 57, 'uploads/product_gallery/1767717444_695d3a44c9734_roller-brush-with-handle-9-yellow.png', '2026-01-06 16:37:24', '2026-01-06 16:37:24'),
(606, 59, 'uploads/product_gallery/1767717479_695d3a67b6764_roller-handle-4.png', '2026-01-06 16:37:59', '2026-01-06 16:37:59'),
(607, 62, 'uploads/product_gallery/1767717514_695d3a8a40c0e_shovel-steel-handel-round-shape.png', '2026-01-06 16:38:34', '2026-01-06 16:38:34'),
(608, 62, 'uploads/product_gallery/1767717514_695d3a8a40e50_shovel-steel-handel-round-shape.png', '2026-01-06 16:38:34', '2026-01-06 16:38:34'),
(609, 62, 'uploads/product_gallery/1767717514_695d3a8a40fb0_shovel-steel-handel-round-shape.png', '2026-01-06 16:38:34', '2026-01-06 16:38:34'),
(610, 64, 'uploads/product_gallery/1767717544_695d3aa88bcd1_test-pencil.png', '2026-01-06 16:39:04', '2026-01-06 16:39:04'),
(611, 66, 'uploads/product_gallery/1767717569_695d3ac12dc26_tools-box-set-38-pcs.png', '2026-01-06 16:39:29', '2026-01-06 16:39:29'),
(612, 66, 'uploads/product_gallery/1767717569_695d3ac12de28_tools-box-set-38-pcs.png', '2026-01-06 16:39:29', '2026-01-06 16:39:29'),
(613, 68, 'uploads/product_gallery/1767717600_695d3ae04dae6_ln-key-cross-headmediam.png', '2026-01-06 16:40:00', '2026-01-06 16:40:00'),
(614, 69, 'uploads/product_gallery/1767717627_695d3afb361fa_ln-key-flat-chrome-cf-02-medium.png', '2026-01-06 16:40:27', '2026-01-06 16:40:27'),
(615, 36, 'uploads/product_gallery/1767717694_695d3b3e3a685_measurement-tape-3m-3x16-non-magnetic-a70.png', '2026-01-06 16:41:34', '2026-01-06 16:41:34'),
(616, 32, 'uploads/product_gallery/1767717784_695d3b986dee6_measurement-tape-3m-3x16-magnet-dx-15.png', '2026-01-06 16:43:04', '2026-01-06 16:43:04'),
(617, 32, 'uploads/product_gallery/1767717784_695d3b986e1fd_measurement-tape-3m-3x16-magnet-dx-15.png', '2026-01-06 16:43:04', '2026-01-06 16:43:04'),
(618, 32, 'uploads/product_gallery/1767717784_695d3b986e3ca_measurement-tape-3m-3x16-magnet-dx-15.png', '2026-01-06 16:43:04', '2026-01-06 16:43:04'),
(619, 33, 'uploads/product_gallery/1767717835_695d3bcb214b6_measurement-tape-3m-3x16-non-magnet-dx-37.png', '2026-01-06 16:43:55', '2026-01-06 16:43:55'),
(620, 33, 'uploads/product_gallery/1767717835_695d3bcb216f7_measurement-tape-3m-3x16-non-magnet-dx-37.png', '2026-01-06 16:43:55', '2026-01-06 16:43:55'),
(621, 31, 'uploads/product_gallery/1767717865_695d3be99b5ad_measurement-tape-3m-2x13-nickle-blade-hl-03.png', '2026-01-06 16:44:25', '2026-01-06 16:44:25'),
(622, 31, 'uploads/product_gallery/1767717865_695d3be99b788_measurement-tape-3m-2x13-nickle-blade-hl-03.png', '2026-01-06 16:44:25', '2026-01-06 16:44:25'),
(623, 31, 'uploads/product_gallery/1767717865_695d3be99b8b5_measurement-tape-3m-2x13-nickle-blade-hl-03.png', '2026-01-06 16:44:25', '2026-01-06 16:44:25'),
(624, 31, 'uploads/product_gallery/1767717865_695d3be99b9d0_measurement-tape-3m-2x13-nickle-blade-hl-03.png', '2026-01-06 16:44:25', '2026-01-06 16:44:25'),
(625, 29, 'uploads/product_gallery/1767717916_695d3c1c3b674_fiber-tape-15-m-yellow.png', '2026-01-06 16:45:16', '2026-01-06 16:45:16'),
(626, 29, 'uploads/product_gallery/1767717916_695d3c1c3b89a_fiber-tape-15-m-yellow.png', '2026-01-06 16:45:16', '2026-01-06 16:45:16'),
(627, 29, 'uploads/product_gallery/1767717916_695d3c1c3b9da_fiber-tape-15-m-yellow.png', '2026-01-06 16:45:16', '2026-01-06 16:45:16'),
(628, 71, 'uploads/product_gallery/1767717954_695d3c428f40d_cross-key-pad-lock-50mm.png', '2026-01-06 16:45:54', '2026-01-06 16:45:54'),
(629, 71, 'uploads/product_gallery/1767717954_695d3c428f633_cross-key-pad-lock-50mm.png', '2026-01-06 16:45:54', '2026-01-06 16:45:54'),
(630, 71, 'uploads/product_gallery/1767717954_695d3c428f76d_cross-key-pad-lock-50mm.png', '2026-01-06 16:45:54', '2026-01-06 16:45:54'),
(631, 70, 'uploads/product_gallery/1767717978_695d3c5a2cf1d_snake-key-pad-lock-50mm.png', '2026-01-06 16:46:18', '2026-01-06 16:46:18'),
(632, 70, 'uploads/product_gallery/1767717978_695d3c5a2d156_snake-key-pad-lock-50mm.png', '2026-01-06 16:46:18', '2026-01-06 16:46:18'),
(633, 70, 'uploads/product_gallery/1767717978_695d3c5a2d297_snake-key-pad-lock-50mm.png', '2026-01-06 16:46:18', '2026-01-06 16:46:18'),
(634, 70, 'uploads/product_gallery/1767717978_695d3c5a2d3ba_snake-key-pad-lock-50mm.png', '2026-01-06 16:46:18', '2026-01-06 16:46:18'),
(635, 13, 'uploads/product_gallery/1767718088_695d3cc8be962_glue-gun-60w.png', '2026-01-06 16:48:08', '2026-01-06 16:48:08'),
(636, 13, 'uploads/product_gallery/1767718088_695d3cc8bec14_glue-gun-60w.png', '2026-01-06 16:48:08', '2026-01-06 16:48:08'),
(637, 25, 'uploads/product_gallery/1767718152_695d3d08cb595_socket-chorme-plated-16-mm.png', '2026-01-06 16:49:12', '2026-01-06 16:49:12'),
(638, 25, 'uploads/product_gallery/1767718152_695d3d08cb7a0_socket-chorme-plated-16-mm.png', '2026-01-06 16:49:12', '2026-01-06 16:49:12'),
(639, 25, 'uploads/product_gallery/1767718152_695d3d08cb8d7_socket-chorme-plated-16-mm.png', '2026-01-06 16:49:12', '2026-01-06 16:49:12'),
(640, 25, 'uploads/product_gallery/1767718152_695d3d08cb9eb_socket-chorme-plated-16-mm.png', '2026-01-06 16:49:12', '2026-01-06 16:49:12'),
(641, 26, 'uploads/product_gallery/1767718196_695d3d34ecc5d_combination-spanner-chrome-1616mm.png', '2026-01-06 16:49:56', '2026-01-06 16:49:56'),
(642, 26, 'uploads/product_gallery/1767718196_695d3d34ece8c_combination-spanner-chrome-1616mm.png', '2026-01-06 16:49:56', '2026-01-06 16:49:56'),
(643, 26, 'uploads/product_gallery/1767718196_695d3d34ecfed_combination-spanner-chrome-1616mm.png', '2026-01-06 16:49:56', '2026-01-06 16:49:56'),
(644, 26, 'uploads/product_gallery/1767718196_695d3d34ed13f_combination-spanner-chrome-1616mm.png', '2026-01-06 16:49:56', '2026-01-06 16:49:56'),
(645, 27, 'uploads/product_gallery/1767718224_695d3d506355a_double-open-spanner-bright-chrome1617mm.png', '2026-01-06 16:50:24', '2026-01-06 16:50:24'),
(646, 27, 'uploads/product_gallery/1767718224_695d3d5063781_double-open-spanner-bright-chrome1617mm.png', '2026-01-06 16:50:24', '2026-01-06 16:50:24'),
(647, 27, 'uploads/product_gallery/1767718224_695d3d50638be_double-open-spanner-bright-chrome1617mm.png', '2026-01-06 16:50:24', '2026-01-06 16:50:24'),
(648, 28, 'uploads/product_gallery/1767718254_695d3d6e1c053_spanner-double-ring-bright-chrome-1819-mm.png', '2026-01-06 16:50:54', '2026-01-06 16:50:54'),
(649, 28, 'uploads/product_gallery/1767718254_695d3d6e1c286_spanner-double-ring-bright-chrome-1819-mm.png', '2026-01-06 16:50:54', '2026-01-06 16:50:54'),
(650, 28, 'uploads/product_gallery/1767718254_695d3d6e1c42a_spanner-double-ring-bright-chrome-1819-mm.png', '2026-01-06 16:50:54', '2026-01-06 16:50:54'),
(651, 28, 'uploads/product_gallery/1767718254_695d3d6e1c581_spanner-double-ring-bright-chrome-1819-mm.png', '2026-01-06 16:50:54', '2026-01-06 16:50:54'),
(652, 28, 'uploads/product_gallery/1767718254_695d3d6e1c6bc_spanner-double-ring-bright-chrome-1819-mm.png', '2026-01-06 16:50:54', '2026-01-06 16:50:54'),
(653, 41, 'uploads/product_gallery/1767718328_695d3db8def73_adjustable-wrench-black-nickel-plated-non-grip-10.png', '2026-01-06 16:52:08', '2026-01-06 16:52:08'),
(654, 41, 'uploads/product_gallery/1767718328_695d3db8df18f_adjustable-wrench-black-nickel-plated-non-grip-10.png', '2026-01-06 16:52:08', '2026-01-06 16:52:08'),
(655, 41, 'uploads/product_gallery/1767718328_695d3db8df2d7_adjustable-wrench-black-nickel-plated-non-grip-10.png', '2026-01-06 16:52:08', '2026-01-06 16:52:08'),
(656, 41, 'uploads/product_gallery/1767718328_695d3db8df458_adjustable-wrench-black-nickel-plated-non-grip-10.png', '2026-01-06 16:52:08', '2026-01-06 16:52:08'),
(657, 41, 'uploads/product_gallery/1767718328_695d3db8df592_adjustable-wrench-black-nickel-plated-non-grip-10.png', '2026-01-06 16:52:08', '2026-01-06 16:52:08'),
(658, 41, 'uploads/product_gallery/1767718328_695d3db8df8f9_adjustable-wrench-black-nickel-plated-non-grip-10.png', '2026-01-06 16:52:08', '2026-01-06 16:52:08'),
(659, 44, 'uploads/product_gallery/1767718364_695d3ddc0f3bd_pipe-wrench-bir-super-14.png', '2026-01-06 16:52:44', '2026-01-06 16:52:44'),
(660, 44, 'uploads/product_gallery/1767718364_695d3ddc0f5d3_pipe-wrench-bir-super-14.png', '2026-01-06 16:52:44', '2026-01-06 16:52:44'),
(661, 44, 'uploads/product_gallery/1767718364_695d3ddc0f722_pipe-wrench-bir-super-14.png', '2026-01-06 16:52:44', '2026-01-06 16:52:44'),
(662, 44, 'uploads/product_gallery/1767718364_695d3ddc0f83b_pipe-wrench-bir-super-14.png', '2026-01-06 16:52:44', '2026-01-06 16:52:44'),
(663, 44, 'uploads/product_gallery/1767718364_695d3ddc0f962_pipe-wrench-bir-super-14.png', '2026-01-06 16:52:44', '2026-01-06 16:52:44'),
(664, 48, 'uploads/product_gallery/1767718396_695d3dfcd33c3_socuet-set40-pcswrench-2003-big.png', '2026-01-06 16:53:16', '2026-01-06 16:53:16'),
(665, 48, 'uploads/product_gallery/1767718396_695d3dfcd35af_socuet-set40-pcswrench-2003-big.png', '2026-01-06 16:53:16', '2026-01-06 16:53:16'),
(666, 48, 'uploads/product_gallery/1767718396_695d3dfcd371e_socuet-set40-pcswrench-2003-big.png', '2026-01-06 16:53:16', '2026-01-06 16:53:16'),
(667, 40, 'uploads/product_gallery/1767718458_695d3e3ab8879_adjustable-wrecnh-multi-color-bir-professional-10.png', '2026-01-06 16:54:18', '2026-01-06 16:54:18'),
(668, 40, 'uploads/product_gallery/1767718458_695d3e3ab8a98_adjustable-wrecnh-multi-color-bir-professional-10.png', '2026-01-06 16:54:18', '2026-01-06 16:54:18'),
(669, 40, 'uploads/product_gallery/1767718458_695d3e3ab8bdb_adjustable-wrecnh-multi-color-bir-professional-10.png', '2026-01-06 16:54:18', '2026-01-06 16:54:18'),
(670, 43, 'uploads/product_gallery/1767718484_695d3e54dcbd4_adjustable-wrench-red-handle-bir-standard-08.png', '2026-01-06 16:54:44', '2026-01-06 16:54:44'),
(671, 49, 'uploads/product_gallery/1767718535_695d3e873579f_t-handle-socket-10mm.png', '2026-01-06 16:55:35', '2026-01-06 16:55:35'),
(672, 49, 'uploads/product_gallery/1767718535_695d3e8735989_t-handle-socket-10mm.png', '2026-01-06 16:55:35', '2026-01-06 16:55:35');

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
(1, 1, 148, NULL, 100, '2025-12-07', '2025-12-07 09:48:47', '2025-12-07 09:48:47'),
(2, 1, 147, NULL, 100, '2025-12-07', '2025-12-07 09:58:38', '2025-12-07 09:58:38'),
(3, 1, 146, NULL, 100, '2025-12-07', '2025-12-07 10:00:12', '2025-12-07 10:00:12'),
(4, 1, 145, NULL, 100, '2025-12-07', '2025-12-07 10:00:53', '2025-12-07 10:00:53'),
(5, 1, 144, NULL, 100, '2025-12-07', '2025-12-07 10:01:30', '2025-12-07 10:01:30'),
(6, 1, 143, NULL, 100, '2025-12-07', '2025-12-07 10:02:06', '2025-12-07 10:02:06'),
(7, 1, 142, NULL, 100, '2025-12-07', '2025-12-07 10:02:47', '2025-12-07 10:02:47'),
(8, 1, 141, NULL, 100, '2025-12-07', '2025-12-07 10:03:33', '2025-12-07 10:03:33'),
(9, 1, 140, NULL, 100, '2025-12-07', '2025-12-07 10:03:58', '2025-12-07 10:03:58'),
(10, 1, 139, NULL, 100, '2025-12-07', '2025-12-07 10:04:24', '2025-12-07 10:04:24'),
(11, 1, 138, NULL, 100, '2025-12-08', '2025-12-08 08:41:31', '2025-12-08 08:41:31'),
(12, 1, 131, NULL, 100, '2025-12-08', '2025-12-08 08:42:55', '2025-12-08 08:42:55'),
(13, 1, 132, NULL, 100, '2025-12-08', '2025-12-08 08:43:40', '2025-12-08 08:43:40'),
(14, 1, 133, NULL, 100, '2025-12-08', '2025-12-08 08:44:22', '2025-12-08 08:44:22'),
(15, 1, 134, NULL, 100, '2025-12-08', '2025-12-08 08:45:33', '2025-12-08 08:45:33'),
(16, 1, 135, NULL, 100, '2025-12-08', '2025-12-08 08:46:20', '2025-12-08 08:46:20'),
(17, 1, 136, NULL, 100, '2025-12-08', '2025-12-08 08:46:59', '2025-12-08 08:46:59'),
(18, 1, 137, NULL, 100, '2025-12-08', '2025-12-08 08:47:58', '2025-12-08 08:47:58'),
(19, 1, 119, NULL, 100, '2025-12-08', '2025-12-08 08:50:13', '2025-12-08 08:50:13'),
(20, 1, 118, NULL, 100, '2025-12-08', '2025-12-08 08:51:02', '2025-12-08 08:51:02'),
(21, 1, 120, NULL, 100, '2025-12-08', '2025-12-08 08:53:26', '2025-12-08 08:53:26'),
(22, 1, 121, NULL, 100, '2025-12-08', '2025-12-08 08:54:58', '2025-12-08 08:54:58'),
(23, 1, 122, NULL, 100, '2025-12-08', '2025-12-08 08:55:36', '2025-12-08 08:55:36'),
(24, 1, 123, NULL, 100, '2025-12-08', '2025-12-08 08:56:21', '2025-12-08 08:56:21'),
(25, 1, 124, NULL, 100, '2025-12-08', '2025-12-08 08:57:03', '2025-12-08 08:57:03'),
(26, 1, 125, NULL, 100, '2025-12-08', '2025-12-08 08:57:38', '2025-12-08 08:57:38'),
(27, 1, 126, NULL, 100, '2025-12-08', '2025-12-08 08:58:45', '2025-12-08 08:58:45'),
(28, 1, 127, NULL, 100, '2025-12-08', '2025-12-08 08:59:21', '2025-12-08 08:59:21'),
(29, 1, 128, NULL, 100, '2025-12-08', '2025-12-08 08:59:57', '2025-12-08 08:59:57'),
(30, 1, 129, NULL, 100, '2025-12-08', '2025-12-08 09:00:28', '2025-12-08 09:00:28'),
(31, 1, 130, NULL, 100, '2025-12-08', '2025-12-08 09:01:28', '2025-12-08 09:01:28'),
(32, 1, 90, NULL, 100, '2025-12-08', '2025-12-08 09:02:42', '2025-12-08 09:02:42'),
(33, 1, 89, NULL, 100, '2025-12-08', '2025-12-08 09:03:38', '2025-12-08 09:03:38'),
(34, 1, 91, NULL, 100, '2025-12-08', '2025-12-08 09:04:16', '2025-12-08 09:04:16'),
(35, 1, 92, NULL, 100, '2025-12-08', '2025-12-08 09:08:54', '2025-12-08 09:08:54'),
(36, 1, 93, NULL, 100, '2025-12-08', '2025-12-08 09:09:14', '2025-12-08 09:09:14'),
(37, 1, 94, NULL, 100, '2025-12-08', '2025-12-08 09:10:30', '2025-12-08 09:10:30'),
(38, 1, 95, NULL, 100, '2025-12-08', '2025-12-08 09:11:18', '2025-12-08 09:11:18'),
(39, 1, 96, NULL, 100, '2025-12-08', '2025-12-08 09:11:50', '2025-12-08 09:11:50'),
(40, 1, 97, NULL, 100, '2025-12-08', '2025-12-08 09:12:16', '2025-12-08 09:12:16'),
(41, 1, 98, NULL, 100, '2025-12-08', '2025-12-08 09:12:58', '2025-12-08 09:12:58'),
(42, 1, 99, NULL, 100, '2025-12-08', '2025-12-08 09:13:19', '2025-12-08 09:13:19'),
(43, 1, 100, NULL, 100, '2025-12-08', '2025-12-08 09:13:43', '2025-12-08 09:13:43'),
(44, 1, 101, NULL, 100, '2025-12-08', '2025-12-08 09:14:06', '2025-12-08 09:14:06'),
(45, 1, 102, NULL, 100, '2025-12-08', '2025-12-08 09:14:29', '2025-12-08 09:14:29'),
(46, 1, 103, NULL, 100, '2025-12-08', '2025-12-08 09:14:57', '2025-12-08 09:14:57'),
(47, 1, 104, NULL, 100, '2025-12-08', '2025-12-08 09:15:26', '2025-12-08 09:15:26'),
(48, 1, 105, NULL, 100, '2025-12-08', '2025-12-08 09:15:52', '2025-12-08 09:15:52'),
(49, 1, 106, NULL, 100, '2025-12-08', '2025-12-08 09:16:16', '2025-12-08 09:16:16'),
(50, 1, 108, NULL, 100, '2025-12-08', '2025-12-08 09:16:58', '2025-12-08 09:16:58'),
(51, 1, 109, NULL, 100, '2025-12-08', '2025-12-08 09:17:38', '2025-12-08 09:17:38'),
(52, 1, 110, NULL, 100, '2025-12-08', '2025-12-08 09:18:03', '2025-12-08 09:18:03'),
(53, 1, 111, NULL, 100, '2025-12-08', '2025-12-08 09:18:25', '2025-12-08 09:18:25'),
(54, 1, 112, NULL, 100, '2025-12-08', '2025-12-08 09:18:50', '2025-12-08 09:18:50'),
(55, 1, 113, NULL, 100, '2025-12-08', '2025-12-08 09:19:25', '2025-12-08 09:19:25'),
(56, 1, 114, NULL, 100, '2025-12-08', '2025-12-08 09:19:46', '2025-12-08 09:19:46'),
(57, 1, 115, NULL, 100, '2025-12-08', '2025-12-08 09:20:12', '2025-12-08 09:20:12'),
(58, 1, 116, NULL, 100, '2025-12-08', '2025-12-08 09:20:38', '2025-12-08 09:20:38'),
(59, 1, 117, NULL, 100, '2025-12-08', '2025-12-08 09:21:01', '2025-12-08 09:21:01'),
(60, 1, 40, NULL, 100, '2025-12-08', '2025-12-08 09:21:45', '2025-12-08 09:21:45'),
(61, 1, 41, NULL, 100, '2025-12-08', '2025-12-08 09:22:09', '2025-12-08 09:22:09'),
(62, 1, 42, NULL, 100, '2025-12-08', '2025-12-08 09:22:28', '2025-12-08 09:22:28'),
(63, 1, 43, NULL, 100, '2025-12-08', '2025-12-08 09:22:47', '2025-12-08 09:22:47'),
(64, 1, 44, NULL, 100, '2025-12-08', '2025-12-08 09:23:27', '2025-12-08 09:23:27'),
(65, 1, 45, NULL, 100, '2025-12-08', '2025-12-08 09:23:49', '2025-12-08 09:23:49'),
(66, 1, 46, NULL, 100, '2025-12-08', '2025-12-08 09:24:08', '2025-12-08 09:24:08'),
(67, 1, 47, NULL, 100, '2025-12-08', '2025-12-08 09:25:27', '2025-12-08 09:25:27'),
(68, 1, 48, NULL, 100, '2025-12-08', '2025-12-08 09:25:49', '2025-12-08 09:25:49'),
(69, 1, 49, NULL, 100, '2025-12-08', '2025-12-08 09:26:10', '2025-12-08 09:26:10'),
(70, 1, 29, NULL, 100, '2025-12-08', '2025-12-08 09:28:50', '2025-12-08 09:28:50'),
(71, 1, 30, NULL, 100, '2025-12-08', '2025-12-08 09:29:21', '2025-12-08 09:29:21'),
(72, 1, 31, NULL, 100, '2025-12-08', '2025-12-08 09:29:47', '2025-12-08 09:29:47'),
(73, 1, 33, NULL, 100, '2025-12-08', '2025-12-08 09:30:47', '2025-12-08 09:30:47'),
(74, 1, 34, NULL, 100, '2025-12-08', '2025-12-08 09:31:10', '2025-12-08 09:31:10'),
(75, 1, 35, NULL, 100, '2025-12-08', '2025-12-08 09:31:36', '2025-12-08 09:31:36'),
(76, 1, 36, NULL, 100, '2025-12-08', '2025-12-08 09:32:02', '2025-12-08 09:32:02'),
(77, 1, 37, NULL, 100, '2025-12-08', '2025-12-08 09:32:28', '2025-12-08 09:32:28'),
(78, 1, 38, NULL, 100, '2025-12-08', '2025-12-08 09:32:52', '2025-12-08 09:32:52'),
(79, 1, 25, NULL, 100, '2025-12-08', '2025-12-08 09:34:07', '2025-12-08 09:34:07'),
(80, 1, 19, NULL, 100, '2025-12-08', '2025-12-08 09:34:42', '2025-12-08 09:34:42'),
(81, 1, 20, NULL, 100, '2025-12-08', '2025-12-08 09:35:04', '2025-12-08 09:35:04'),
(82, 1, 21, NULL, 100, '2025-12-08', '2025-12-08 09:35:31', '2025-12-08 09:35:31'),
(83, 1, 22, NULL, 100, '2025-12-08', '2025-12-08 09:36:00', '2025-12-08 09:36:00'),
(84, 1, 23, NULL, 100, '2025-12-08', '2025-12-08 09:36:24', '2025-12-08 09:36:24'),
(85, 1, 24, NULL, 100, '2025-12-08', '2025-12-08 09:36:44', '2025-12-08 09:36:44'),
(86, 1, 27, NULL, 100, '2025-12-08', '2025-12-08 09:37:54', '2025-12-08 09:37:54'),
(87, 1, 28, NULL, 100, '2025-12-08', '2025-12-08 09:38:20', '2025-12-08 09:38:20'),
(88, 1, 12, NULL, 100, '2025-12-08', '2025-12-08 09:39:18', '2025-12-08 09:39:18'),
(89, 1, 13, NULL, 100, '2025-12-08', '2025-12-08 09:39:46', '2025-12-08 09:39:46'),
(90, 1, 14, NULL, 100, '2025-12-08', '2025-12-08 09:40:11', '2025-12-08 09:40:11'),
(91, 1, 15, NULL, 100, '2025-12-08', '2025-12-08 09:40:34', '2025-12-08 09:40:34'),
(92, 1, 16, NULL, 100, '2025-12-08', '2025-12-08 09:40:59', '2025-12-08 09:40:59'),
(93, 1, 17, NULL, 100, '2025-12-08', '2025-12-08 09:41:19', '2025-12-08 09:41:19'),
(94, 1, 18, NULL, 100, '2025-12-08', '2025-12-08 09:41:42', '2025-12-08 09:41:42'),
(95, 1, 68, NULL, 100, '2025-12-08', '2025-12-08 09:42:22', '2025-12-08 09:42:22'),
(96, 1, 69, NULL, 100, '2025-12-08', '2025-12-08 09:42:47', '2025-12-08 09:42:47'),
(97, 1, 70, NULL, 100, '2025-12-08', '2025-12-08 09:43:28', '2025-12-08 09:43:28'),
(98, 1, 71, NULL, 100, '2025-12-08', '2025-12-08 09:43:50', '2025-12-08 09:43:50'),
(99, 1, 1, NULL, 100, '2025-12-08', '2025-12-08 09:45:42', '2025-12-08 09:45:42'),
(100, 1, 2, NULL, 100, '2025-12-08', '2025-12-08 09:46:06', '2025-12-08 09:46:06'),
(101, 1, 3, NULL, 100, '2025-12-08', '2025-12-08 09:46:27', '2025-12-08 09:46:27'),
(102, 1, 4, NULL, 100, '2025-12-08', '2025-12-08 09:47:54', '2025-12-08 09:47:54'),
(103, 1, 5, NULL, 100, '2025-12-08', '2025-12-08 09:48:12', '2025-12-08 09:48:12'),
(104, 1, 6, NULL, 100, '2025-12-08', '2025-12-08 09:48:36', '2025-12-08 09:48:36'),
(105, 1, 7, NULL, 100, '2025-12-08', '2025-12-08 09:48:58', '2025-12-08 09:48:58'),
(106, 1, 8, NULL, 100, '2025-12-08', '2025-12-08 09:49:24', '2025-12-08 09:49:24'),
(107, 1, 9, NULL, 100, '2025-12-08', '2025-12-08 09:49:46', '2025-12-08 09:49:46'),
(108, 1, 10, NULL, 100, '2025-12-08', '2025-12-08 09:50:12', '2025-12-08 09:50:12'),
(109, 1, 11, NULL, 100, '2025-12-08', '2025-12-08 09:50:37', '2025-12-08 09:50:37'),
(110, 1, 72, NULL, 100, '2025-12-08', '2025-12-08 09:51:14', '2025-12-08 09:51:14'),
(111, 1, 73, NULL, 100, '2025-12-08', '2025-12-08 09:51:40', '2025-12-08 09:51:40'),
(112, 1, 74, NULL, 100, '2025-12-08', '2025-12-08 09:52:01', '2025-12-08 09:52:01'),
(113, 1, 75, NULL, 100, '2025-12-08', '2025-12-08 09:52:24', '2025-12-08 09:52:24'),
(114, 1, 76, NULL, 100, '2025-12-08', '2025-12-08 09:52:43', '2025-12-08 09:52:43'),
(115, 1, 77, NULL, 100, '2025-12-08', '2025-12-08 09:53:07', '2025-12-08 09:53:07'),
(116, 1, 78, NULL, 100, '2025-12-08', '2025-12-08 09:53:26', '2025-12-08 09:53:26'),
(117, 1, 79, NULL, 100, '2025-12-08', '2025-12-08 09:53:51', '2025-12-08 09:53:51'),
(118, 1, 80, NULL, 100, '2025-12-08', '2025-12-08 09:54:13', '2025-12-08 09:54:13'),
(119, 1, 81, NULL, 100, '2025-12-08', '2025-12-08 09:54:34', '2025-12-08 09:54:34'),
(120, 1, 82, NULL, 100, '2025-12-08', '2025-12-08 09:54:55', '2025-12-08 09:54:55'),
(121, 1, 83, NULL, 100, '2025-12-08', '2025-12-08 09:55:17', '2025-12-08 09:55:17'),
(122, 1, 84, NULL, 100, '2025-12-08', '2025-12-08 09:55:39', '2025-12-08 09:55:39'),
(123, 1, 85, NULL, 100, '2025-12-08', '2025-12-08 09:56:03', '2025-12-08 09:56:03'),
(124, 1, 86, NULL, 100, '2025-12-08', '2025-12-08 09:56:27', '2025-12-08 09:56:27'),
(125, 1, 87, NULL, 100, '2025-12-08', '2025-12-08 09:56:48', '2025-12-08 09:56:48'),
(126, 1, 88, NULL, 100, '2025-12-08', '2025-12-08 09:57:11', '2025-12-08 09:57:11'),
(127, 1, 50, NULL, 100, '2025-12-08', '2025-12-08 09:58:37', '2025-12-08 09:58:37'),
(128, 1, 51, NULL, 100, '2025-12-08', '2025-12-08 09:59:05', '2025-12-08 09:59:05'),
(129, 1, 52, NULL, 100, '2025-12-08', '2025-12-08 09:59:29', '2025-12-08 09:59:29'),
(130, 1, 53, NULL, 100, '2025-12-08', '2025-12-08 09:59:59', '2025-12-08 09:59:59'),
(131, 1, 54, NULL, 100, '2025-12-08', '2025-12-08 10:00:25', '2025-12-08 10:00:25'),
(132, 1, 55, NULL, 100, '2025-12-08', '2025-12-08 10:00:52', '2025-12-08 10:00:52'),
(133, 1, 56, NULL, 100, '2025-12-08', '2025-12-08 10:01:13', '2025-12-08 10:01:13'),
(134, 1, 57, NULL, 100, '2025-12-08', '2025-12-08 10:01:46', '2025-12-08 10:01:46'),
(135, 1, 58, NULL, 100, '2025-12-08', '2025-12-08 10:02:06', '2025-12-08 10:02:06'),
(136, 1, 59, NULL, 100, '2025-12-08', '2025-12-08 10:02:50', '2025-12-08 10:02:50'),
(137, 1, 61, NULL, 100, '2025-12-08', '2025-12-08 10:03:19', '2025-12-08 10:03:19'),
(138, 1, 62, NULL, 100, '2025-12-08', '2025-12-08 10:03:42', '2025-12-08 10:03:42'),
(139, 1, 63, NULL, 100, '2025-12-08', '2025-12-08 10:04:02', '2025-12-08 10:04:02'),
(140, 1, 65, NULL, 100, '2025-12-08', '2025-12-08 10:04:27', '2025-12-08 10:04:27'),
(141, 1, 64, NULL, 100, '2025-12-08', '2025-12-08 10:04:48', '2025-12-08 10:04:48'),
(142, 1, 66, NULL, 100, '2025-12-08', '2025-12-08 10:05:09', '2025-12-08 10:05:09'),
(143, 1, 67, NULL, 100, '2025-12-08', '2025-12-08 10:05:30', '2025-12-08 10:05:30'),
(144, 1, 149, NULL, 100, '2025-12-08', '2025-12-08 10:06:53', '2025-12-08 10:06:53'),
(145, 1, 374, NULL, 100, '2025-12-10', '2025-12-10 08:15:11', '2025-12-10 08:15:11'),
(146, 1, 375, NULL, 100, '2025-12-10', '2025-12-10 08:15:56', '2025-12-10 08:15:56'),
(147, 1, 376, NULL, 100, '2025-12-10', '2025-12-10 08:16:53', '2025-12-10 08:16:53'),
(148, 1, 378, NULL, 100, '2025-12-10', '2025-12-10 08:17:44', '2025-12-10 08:17:44'),
(149, 1, 379, NULL, 100, '2025-12-10', '2025-12-10 08:18:05', '2025-12-10 08:18:05'),
(150, 1, 380, NULL, 100, '2025-12-10', '2025-12-10 08:18:24', '2025-12-10 08:18:24'),
(151, 1, 381, NULL, 100, '2025-12-10', '2025-12-10 08:18:44', '2025-12-10 08:18:44'),
(152, 1, 382, NULL, 100, '2025-12-10', '2025-12-10 08:19:14', '2025-12-10 08:19:14'),
(153, 1, 383, NULL, 100, '2025-12-10', '2025-12-10 08:19:46', '2025-12-10 08:19:46'),
(154, 1, 384, NULL, 100, '2025-12-10', '2025-12-10 08:20:16', '2025-12-10 08:20:16'),
(155, 1, 385, NULL, 100, '2025-12-10', '2025-12-10 08:20:39', '2025-12-10 08:20:39'),
(156, 1, 386, NULL, 100, '2025-12-10', '2025-12-10 08:21:06', '2025-12-10 08:21:06'),
(157, 1, 387, NULL, 100, '2025-12-10', '2025-12-10 08:21:28', '2025-12-10 08:21:28'),
(158, 1, 388, NULL, 100, '2025-12-10', '2025-12-10 08:21:54', '2025-12-10 08:21:54'),
(159, 1, 389, NULL, 100, '2025-12-10', '2025-12-10 08:22:18', '2025-12-10 08:22:18'),
(160, 1, 390, NULL, 100, '2025-12-10', '2025-12-10 08:22:40', '2025-12-10 08:22:40'),
(161, 1, 391, NULL, 100, '2025-12-10', '2025-12-10 08:22:59', '2025-12-10 08:22:59'),
(162, 1, 392, NULL, 100, '2025-12-10', '2025-12-10 08:23:34', '2025-12-10 08:23:34'),
(163, 1, 393, NULL, 100, '2025-12-10', '2025-12-10 08:23:55', '2025-12-10 08:23:55'),
(164, 1, 394, NULL, 100, '2025-12-10', '2025-12-10 08:24:19', '2025-12-10 08:24:19'),
(165, 1, 395, NULL, 100, '2025-12-10', '2025-12-10 08:24:50', '2025-12-10 08:24:50'),
(166, 1, 396, NULL, 100, '2025-12-10', '2025-12-10 08:25:23', '2025-12-10 08:25:23'),
(167, 1, 397, NULL, 100, '2025-12-10', '2025-12-10 08:25:40', '2025-12-10 08:25:40'),
(168, 1, 398, NULL, 100, '2025-12-10', '2025-12-10 08:26:08', '2025-12-10 08:26:08'),
(169, 1, 399, NULL, 100, '2025-12-10', '2025-12-10 08:27:00', '2025-12-10 08:27:00'),
(170, 1, 400, NULL, 100, '2025-12-10', '2025-12-10 08:27:33', '2025-12-10 08:27:33'),
(171, 1, 401, NULL, 100, '2025-12-10', '2025-12-10 08:27:57', '2025-12-10 08:27:57'),
(172, 1, 402, NULL, 100, '2025-12-10', '2025-12-10 08:28:21', '2025-12-10 08:28:21'),
(173, 1, 403, NULL, 100, '2025-12-10', '2025-12-10 08:28:51', '2025-12-10 08:28:51'),
(174, 1, 404, NULL, 100, '2025-12-10', '2025-12-10 08:29:43', '2025-12-10 08:29:43'),
(175, 1, 405, NULL, 100, '2025-12-10', '2025-12-10 08:30:26', '2025-12-10 08:30:26'),
(176, 1, 406, NULL, 100, '2025-12-10', '2025-12-10 08:31:30', '2025-12-10 08:31:30'),
(177, 1, 339, NULL, 100, '2025-12-10', '2025-12-10 09:56:34', '2025-12-10 09:56:34'),
(178, 1, 340, NULL, 100, '2025-12-10', '2025-12-10 09:57:02', '2025-12-10 09:57:02'),
(179, 1, 341, NULL, 100, '2025-12-10', '2025-12-10 09:57:44', '2025-12-10 09:57:44'),
(180, 1, 342, NULL, 100, '2025-12-10', '2025-12-10 09:58:35', '2025-12-10 09:58:35'),
(181, 1, 343, NULL, 100, '2025-12-10', '2025-12-10 09:59:11', '2025-12-10 09:59:11'),
(182, 1, 344, NULL, 100, '2025-12-10', '2025-12-10 09:59:35', '2025-12-10 09:59:35'),
(183, 1, 345, NULL, 100, '2025-12-10', '2025-12-10 10:00:03', '2025-12-10 10:00:03'),
(184, 1, 346, NULL, 100, '2025-12-10', '2025-12-10 10:00:58', '2025-12-10 10:00:58'),
(185, 1, 348, NULL, 100, '2025-12-10', '2025-12-10 10:01:56', '2025-12-10 10:01:56'),
(186, 1, 349, NULL, 100, '2025-12-10', '2025-12-10 10:02:23', '2025-12-10 10:02:23'),
(187, 1, 350, NULL, 100, '2025-12-10', '2025-12-10 10:02:50', '2025-12-10 10:02:50'),
(188, 1, 351, NULL, 100, '2025-12-10', '2025-12-10 10:03:51', '2025-12-10 10:03:51'),
(189, 1, 352, NULL, 100, '2025-12-10', '2025-12-10 10:04:14', '2025-12-10 10:04:14'),
(190, 1, 353, NULL, 100, '2025-12-10', '2025-12-10 10:04:40', '2025-12-10 10:04:40'),
(191, 1, 354, NULL, 100, '2025-12-10', '2025-12-10 10:05:07', '2025-12-10 10:05:07'),
(192, 1, 355, NULL, 100, '2025-12-10', '2025-12-10 10:05:28', '2025-12-10 10:05:28'),
(193, 1, 356, NULL, 100, '2025-12-10', '2025-12-10 10:05:50', '2025-12-10 10:05:50'),
(194, 1, 6, NULL, 500, '2025-12-10', '2025-12-10 10:07:14', '2025-12-10 10:07:14'),
(195, 1, 357, NULL, 100, '2025-12-10', '2025-12-10 10:08:30', '2025-12-10 10:08:30'),
(196, 1, 358, NULL, 100, '2025-12-10', '2025-12-10 10:08:55', '2025-12-10 10:08:55'),
(197, 1, 359, NULL, 100, '2025-12-10', '2025-12-10 10:09:24', '2025-12-10 10:09:24'),
(198, 1, 360, NULL, 100, '2025-12-10', '2025-12-10 10:09:49', '2025-12-10 10:09:49'),
(199, 1, 361, NULL, 100, '2025-12-10', '2025-12-10 10:10:13', '2025-12-10 10:10:13'),
(200, 1, 362, NULL, 100, '2025-12-10', '2025-12-10 10:10:44', '2025-12-10 10:10:44'),
(201, 1, 363, NULL, 100, '2025-12-10', '2025-12-10 10:11:10', '2025-12-10 10:11:10'),
(202, 1, 364, NULL, 100, '2025-12-10', '2025-12-10 10:11:35', '2025-12-10 10:11:35'),
(203, 1, 365, NULL, 100, '2025-12-10', '2025-12-10 10:12:32', '2025-12-10 10:12:32'),
(204, 1, 366, NULL, 100, '2025-12-10', '2025-12-10 10:13:24', '2025-12-10 10:13:24'),
(205, 1, 367, NULL, 100, '2025-12-10', '2025-12-10 10:14:09', '2025-12-10 10:14:09'),
(206, 1, 368, NULL, 100, '2025-12-10', '2025-12-10 10:14:44', '2025-12-10 10:14:44'),
(207, 1, 369, NULL, 100, '2025-12-10', '2025-12-10 10:15:21', '2025-12-10 10:15:21'),
(208, 1, 370, NULL, 100, '2025-12-10', '2025-12-10 10:17:59', '2025-12-10 10:17:59'),
(209, 1, 371, NULL, 100, '2025-12-10', '2025-12-10 10:19:31', '2025-12-10 10:19:31'),
(210, 1, 372, NULL, 100, '2025-12-10', '2025-12-10 10:20:01', '2025-12-10 10:20:01'),
(211, 1, 373, NULL, 100, '2025-12-10', '2025-12-10 10:20:27', '2025-12-10 10:20:27'),
(212, 1, 311, NULL, 100, '2025-12-12', '2025-12-12 05:55:30', '2025-12-12 05:55:30'),
(213, 1, 312, NULL, 100, '2025-12-12', '2025-12-12 05:56:21', '2025-12-12 05:56:21'),
(214, 1, 313, NULL, 100, '2025-12-12', '2025-12-12 05:56:55', '2025-12-12 05:56:55'),
(215, 1, 314, NULL, 100, '2025-12-12', '2025-12-12 05:57:42', '2025-12-12 05:57:42'),
(216, 1, 315, NULL, 100, '2025-12-12', '2025-12-12 05:58:16', '2025-12-12 05:58:16'),
(217, 1, 316, NULL, 100, '2025-12-12', '2025-12-12 05:58:40', '2025-12-12 05:58:40'),
(218, 1, 317, NULL, 100, '2025-12-12', '2025-12-12 05:59:15', '2025-12-12 05:59:15'),
(219, 1, 318, NULL, 100, '2025-12-12', '2025-12-12 05:59:49', '2025-12-12 05:59:49'),
(220, 1, 320, NULL, 100, '2025-12-12', '2025-12-12 06:00:24', '2025-12-12 06:00:24'),
(221, 1, 321, NULL, 100, '2025-12-12', '2025-12-12 06:00:51', '2025-12-12 06:00:51'),
(222, 1, 322, NULL, 100, '2025-12-12', '2025-12-12 06:01:16', '2025-12-12 06:01:16'),
(223, 1, 323, NULL, 100, '2025-12-12', '2025-12-12 06:02:33', '2025-12-12 06:02:33'),
(224, 1, 324, NULL, 100, '2025-12-12', '2025-12-12 06:02:59', '2025-12-12 06:02:59'),
(225, 1, 325, NULL, 100, '2025-12-12', '2025-12-12 06:03:24', '2025-12-12 06:03:24'),
(226, 1, 326, NULL, 100, '2025-12-12', '2025-12-12 06:03:45', '2025-12-12 06:03:45'),
(227, 1, 327, NULL, 100, '2025-12-12', '2025-12-12 06:04:52', '2025-12-12 06:04:52'),
(228, 1, 328, NULL, 100, '2025-12-12', '2025-12-12 06:05:58', '2025-12-12 06:05:58'),
(229, 1, 329, NULL, 100, '2025-12-12', '2025-12-12 06:06:37', '2025-12-12 06:06:37'),
(230, 1, 330, NULL, 100, '2025-12-12', '2025-12-12 06:06:58', '2025-12-12 06:06:58'),
(231, 1, 331, NULL, 100, '2025-12-12', '2025-12-12 06:07:22', '2025-12-12 06:07:22'),
(232, 1, 332, NULL, 100, '2025-12-12', '2025-12-12 06:07:46', '2025-12-12 06:07:46'),
(233, 1, 333, NULL, 100, '2025-12-12', '2025-12-12 06:08:09', '2025-12-12 06:08:09'),
(234, 1, 334, NULL, 100, '2025-12-12', '2025-12-12 06:08:28', '2025-12-12 06:08:28'),
(235, 1, 335, NULL, 100, '2025-12-12', '2025-12-12 06:08:50', '2025-12-12 06:08:50'),
(236, 1, 336, NULL, 100, '2025-12-12', '2025-12-12 06:09:12', '2025-12-12 06:09:12'),
(237, 1, 337, NULL, 100, '2025-12-12', '2025-12-12 06:09:34', '2025-12-12 06:09:34'),
(238, 1, 338, NULL, 100, '2025-12-12', '2025-12-12 06:09:57', '2025-12-12 06:09:57'),
(239, 1, 265, NULL, 100, '2025-12-12', '2025-12-12 06:10:24', '2025-12-12 06:10:24'),
(240, 1, 266, NULL, 100, '2025-12-12', '2025-12-12 06:10:44', '2025-12-12 06:10:44'),
(241, 1, 267, NULL, 100, '2025-12-12', '2025-12-12 06:11:05', '2025-12-12 06:11:05'),
(242, 1, 268, NULL, 100, '2025-12-12', '2025-12-12 06:11:30', '2025-12-12 06:11:30'),
(243, 1, 269, NULL, 100, '2025-12-12', '2025-12-12 06:11:49', '2025-12-12 06:11:49'),
(244, 1, 270, NULL, 100, '2025-12-12', '2025-12-12 06:12:08', '2025-12-12 06:12:08'),
(245, 1, 271, NULL, 100, '2025-12-12', '2025-12-12 06:12:28', '2025-12-12 06:12:28'),
(246, 1, 272, NULL, 100, '2025-12-12', '2025-12-12 06:12:48', '2025-12-12 06:12:48'),
(247, 1, 273, NULL, 100, '2025-12-12', '2025-12-12 06:13:09', '2025-12-12 06:13:09'),
(248, 1, 274, NULL, 100, '2025-12-12', '2025-12-12 06:13:34', '2025-12-12 06:13:34'),
(249, 1, 275, NULL, 100, '2025-12-12', '2025-12-12 06:13:58', '2025-12-12 06:13:58'),
(250, 1, 276, NULL, 100, '2025-12-12', '2025-12-12 06:15:03', '2025-12-12 06:15:03'),
(251, 1, 277, NULL, 100, '2025-12-12', '2025-12-12 06:15:23', '2025-12-12 06:15:23'),
(252, 1, 278, NULL, 100, '2025-12-12', '2025-12-12 06:15:41', '2025-12-12 06:15:41'),
(253, 1, 279, NULL, 100, '2025-12-12', '2025-12-12 06:16:04', '2025-12-12 06:16:04'),
(254, 1, 280, NULL, 100, '2025-12-12', '2025-12-12 06:16:25', '2025-12-12 06:16:25'),
(255, 1, 281, NULL, 100, '2025-12-12', '2025-12-12 06:16:45', '2025-12-12 06:16:45'),
(256, 1, 282, NULL, 100, '2025-12-12', '2025-12-12 06:17:05', '2025-12-12 06:17:05'),
(257, 1, 283, NULL, 100, '2025-12-12', '2025-12-12 06:17:34', '2025-12-12 06:17:34'),
(258, 1, 284, NULL, 100, '2025-12-12', '2025-12-12 06:17:55', '2025-12-12 06:17:55'),
(259, 1, 285, NULL, 100, '2025-12-12', '2025-12-12 06:18:14', '2025-12-12 06:18:14'),
(260, 1, 286, NULL, 100, '2025-12-12', '2025-12-12 06:18:36', '2025-12-12 06:18:36'),
(261, 1, 287, NULL, 100, '2025-12-12', '2025-12-12 06:18:56', '2025-12-12 06:18:56'),
(262, 1, 288, NULL, 100, '2025-12-12', '2025-12-12 06:19:19', '2025-12-12 06:19:19'),
(263, 1, 289, NULL, 100, '2025-12-12', '2025-12-12 06:19:46', '2025-12-12 06:19:46'),
(264, 1, 290, NULL, 100, '2025-12-12', '2025-12-12 06:20:06', '2025-12-12 06:20:06'),
(265, 1, 291, NULL, 100, '2025-12-12', '2025-12-12 06:20:23', '2025-12-12 06:20:23'),
(266, 1, 292, NULL, 100, '2025-12-12', '2025-12-12 06:20:42', '2025-12-12 06:20:42'),
(267, 1, 293, NULL, 100, '2025-12-12', '2025-12-12 06:21:03', '2025-12-12 06:21:03'),
(268, 1, 294, NULL, 100, '2025-12-12', '2025-12-12 06:21:31', '2025-12-12 06:21:31'),
(269, 1, 295, NULL, 100, '2025-12-12', '2025-12-12 06:21:50', '2025-12-12 06:21:50'),
(270, 1, 296, NULL, 100, '2025-12-12', '2025-12-12 06:22:11', '2025-12-12 06:22:11'),
(271, 1, 297, NULL, 100, '2025-12-12', '2025-12-12 06:22:35', '2025-12-12 06:22:35'),
(272, 1, 298, NULL, 100, '2025-12-12', '2025-12-12 06:22:58', '2025-12-12 06:22:58'),
(273, 1, 299, NULL, 100, '2025-12-12', '2025-12-12 06:23:18', '2025-12-12 06:23:18'),
(274, 1, 300, NULL, 100, '2025-12-12', '2025-12-12 06:23:39', '2025-12-12 06:23:39'),
(275, 1, 301, NULL, 100, '2025-12-12', '2025-12-12 06:23:58', '2025-12-12 06:23:58'),
(276, 1, 302, NULL, 100, '2025-12-12', '2025-12-12 06:24:21', '2025-12-12 06:24:21'),
(277, 1, 303, NULL, 100, '2025-12-12', '2025-12-12 06:24:42', '2025-12-12 06:24:42'),
(278, 1, 304, NULL, 100, '2025-12-12', '2025-12-12 06:25:09', '2025-12-12 06:25:09'),
(279, 1, 305, NULL, 100, '2025-12-12', '2025-12-12 06:25:32', '2025-12-12 06:25:32'),
(280, 1, 307, NULL, 100, '2025-12-12', '2025-12-12 06:26:16', '2025-12-12 06:26:16'),
(281, 1, 308, NULL, 100, '2025-12-12', '2025-12-12 06:26:46', '2025-12-12 06:26:46'),
(282, 1, 309, NULL, 100, '2025-12-12', '2025-12-12 06:27:06', '2025-12-12 06:27:06'),
(283, 1, 310, NULL, 100, '2025-12-12', '2025-12-12 06:27:26', '2025-12-12 06:27:26'),
(284, 1, 199, NULL, 100, '2025-12-12', '2025-12-12 06:28:09', '2025-12-12 06:28:09'),
(285, 1, 200, NULL, 100, '2025-12-12', '2025-12-12 06:28:30', '2025-12-12 06:28:30'),
(286, 1, 201, NULL, 100, '2025-12-12', '2025-12-12 06:29:02', '2025-12-12 06:29:02'),
(287, 1, 202, NULL, 100, '2025-12-12', '2025-12-12 06:30:05', '2025-12-12 06:30:05'),
(288, 1, 203, NULL, 100, '2025-12-12', '2025-12-12 06:30:24', '2025-12-12 06:30:24'),
(289, 1, 204, NULL, 100, '2025-12-12', '2025-12-12 06:30:45', '2025-12-12 06:30:45'),
(290, 1, 205, NULL, 100, '2025-12-12', '2025-12-12 06:31:04', '2025-12-12 06:31:04'),
(291, 1, 206, NULL, 100, '2025-12-12', '2025-12-12 06:31:24', '2025-12-12 06:31:24'),
(292, 1, 196, NULL, 100, '2025-12-12', '2025-12-12 06:31:56', '2025-12-12 06:31:56'),
(293, 1, 197, NULL, 100, '2025-12-12', '2025-12-12 06:32:16', '2025-12-12 06:32:16'),
(294, 1, 198, NULL, 100, '2025-12-12', '2025-12-12 06:32:35', '2025-12-12 06:32:35'),
(295, 1, 182, NULL, 100, '2025-12-12', '2025-12-12 06:33:27', '2025-12-12 06:33:27'),
(296, 1, 183, NULL, 100, '2025-12-12', '2025-12-12 06:33:49', '2025-12-12 06:33:49'),
(297, 1, 184, NULL, 100, '2025-12-12', '2025-12-12 06:34:09', '2025-12-12 06:34:09'),
(298, 1, 185, NULL, 100, '2025-12-12', '2025-12-12 06:34:32', '2025-12-12 06:34:32'),
(299, 1, 186, NULL, 100, '2025-12-12', '2025-12-12 06:34:52', '2025-12-12 06:34:52'),
(300, 1, 187, NULL, 100, '2025-12-12', '2025-12-12 06:35:15', '2025-12-12 06:35:15'),
(301, 1, 188, NULL, 100, '2025-12-12', '2025-12-12 06:36:38', '2025-12-12 06:36:38'),
(302, 1, 189, NULL, 100, '2025-12-12', '2025-12-12 06:37:02', '2025-12-12 06:37:02'),
(303, 1, 190, NULL, 100, '2025-12-12', '2025-12-12 06:37:22', '2025-12-12 06:37:22'),
(304, 1, 191, NULL, 100, '2025-12-12', '2025-12-12 06:37:45', '2025-12-12 06:37:45'),
(305, 1, 192, NULL, 100, '2025-12-12', '2025-12-12 06:38:10', '2025-12-12 06:38:10'),
(306, 1, 193, NULL, 100, '2025-12-12', '2025-12-12 06:38:33', '2025-12-12 06:38:33'),
(307, 1, 194, NULL, 100, '2025-12-12', '2025-12-12 06:38:58', '2025-12-12 06:38:58'),
(308, 1, 195, NULL, 100, '2025-12-12', '2025-12-12 06:39:25', '2025-12-12 06:39:25'),
(309, 1, 172, NULL, 100, '2025-12-12', '2025-12-12 06:40:22', '2025-12-12 06:40:22'),
(310, 1, 173, NULL, 100, '2025-12-12', '2025-12-12 06:40:55', '2025-12-12 06:40:55'),
(311, 1, 174, NULL, 100, '2025-12-12', '2025-12-12 06:41:51', '2025-12-12 06:41:51'),
(312, 1, 175, NULL, 100, '2025-12-12', '2025-12-12 06:42:27', '2025-12-12 06:42:27'),
(313, 1, 176, NULL, 100, '2025-12-12', '2025-12-12 06:42:49', '2025-12-12 06:42:49'),
(314, 1, 177, NULL, 100, '2025-12-12', '2025-12-12 06:43:19', '2025-12-12 06:43:19'),
(315, 1, 178, NULL, 100, '2025-12-12', '2025-12-12 06:43:56', '2025-12-12 06:43:56'),
(316, 1, 179, NULL, 100, '2025-12-12', '2025-12-12 06:44:21', '2025-12-12 06:44:21'),
(317, 1, 180, NULL, 100, '2025-12-12', '2025-12-12 06:44:55', '2025-12-12 06:44:55'),
(318, 1, 181, NULL, 100, '2025-12-12', '2025-12-12 06:45:18', '2025-12-12 06:45:18'),
(319, 1, 253, NULL, 100, '2025-12-12', '2025-12-12 06:45:54', '2025-12-12 06:45:54'),
(320, 1, 254, NULL, 100, '2025-12-12', '2025-12-12 06:46:31', '2025-12-12 06:46:31'),
(321, 1, 255, NULL, 100, '2025-12-12', '2025-12-12 06:46:58', '2025-12-12 06:46:58'),
(322, 1, 256, NULL, 100, '2025-12-12', '2025-12-12 06:47:28', '2025-12-12 06:47:28'),
(323, 1, 257, NULL, 100, '2025-12-12', '2025-12-12 06:47:50', '2025-12-12 06:47:50'),
(324, 1, 258, NULL, 100, '2025-12-12', '2025-12-12 06:48:22', '2025-12-12 06:48:22'),
(325, 1, 259, NULL, 100, '2025-12-12', '2025-12-12 06:48:43', '2025-12-12 06:48:43'),
(326, 1, 260, NULL, 100, '2025-12-12', '2025-12-12 06:49:05', '2025-12-12 06:49:05'),
(327, 1, 261, NULL, 100, '2025-12-12', '2025-12-12 06:49:25', '2025-12-12 06:49:25'),
(328, 1, 262, NULL, 100, '2025-12-12', '2025-12-12 06:49:56', '2025-12-12 06:49:56'),
(329, 1, 263, NULL, 100, '2025-12-12', '2025-12-12 06:50:18', '2025-12-12 06:50:18'),
(330, 1, 264, NULL, 100, '2025-12-12', '2025-12-12 06:50:38', '2025-12-12 06:50:38'),
(331, 1, 150, NULL, 100, '2025-12-12', '2025-12-12 06:51:08', '2025-12-12 06:51:08'),
(332, 1, 151, NULL, 100, '2025-12-12', '2025-12-12 06:51:28', '2025-12-12 06:51:28'),
(333, 1, 152, NULL, 100, '2025-12-12', '2025-12-12 06:51:56', '2025-12-12 06:51:56'),
(334, 1, 153, NULL, 100, '2025-12-12', '2025-12-12 06:52:16', '2025-12-12 06:52:16'),
(335, 1, 154, NULL, 100, '2025-12-12', '2025-12-12 06:52:45', '2025-12-12 06:52:45'),
(336, 1, 155, NULL, 100, '2025-12-12', '2025-12-12 06:53:25', '2025-12-12 06:53:25'),
(337, 1, 156, NULL, 100, '2025-12-12', '2025-12-12 06:53:53', '2025-12-12 06:53:53'),
(338, 1, 157, NULL, 100, '2025-12-12', '2025-12-12 06:54:12', '2025-12-12 06:54:12'),
(339, 1, 158, NULL, 100, '2025-12-12', '2025-12-12 06:54:34', '2025-12-12 06:54:34'),
(340, 1, 159, NULL, 100, '2025-12-12', '2025-12-12 06:54:57', '2025-12-12 06:54:57'),
(341, 1, 160, NULL, 100, '2025-12-12', '2025-12-12 06:55:21', '2025-12-12 06:55:21'),
(342, 1, 161, NULL, 100, '2025-12-12', '2025-12-12 06:55:43', '2025-12-12 06:55:43'),
(343, 1, 162, NULL, 100, '2025-12-12', '2025-12-12 06:56:06', '2025-12-12 06:56:06'),
(344, 1, 163, NULL, 100, '2025-12-12', '2025-12-12 06:56:28', '2025-12-12 06:56:28'),
(345, 1, 164, NULL, 100, '2025-12-12', '2025-12-12 06:56:49', '2025-12-12 06:56:49'),
(346, 1, 165, NULL, 100, '2025-12-12', '2025-12-12 06:58:47', '2025-12-12 06:58:47'),
(347, 1, 166, NULL, 100, '2025-12-12', '2025-12-12 06:59:17', '2025-12-12 06:59:17'),
(348, 1, 167, NULL, 100, '2025-12-12', '2025-12-12 06:59:42', '2025-12-12 06:59:42'),
(349, 1, 168, NULL, 100, '2025-12-12', '2025-12-12 07:00:03', '2025-12-12 07:00:03'),
(350, 1, 169, NULL, 100, '2025-12-12', '2025-12-12 07:00:28', '2025-12-12 07:00:28'),
(351, 1, 170, NULL, 100, '2025-12-12', '2025-12-12 07:00:50', '2025-12-12 07:00:50'),
(352, 1, 171, NULL, 100, '2025-12-12', '2025-12-12 07:01:18', '2025-12-12 07:01:18'),
(353, 1, 229, NULL, 100, '2025-12-12', '2025-12-12 07:02:12', '2025-12-12 07:02:12'),
(354, 1, 230, NULL, 100, '2025-12-12', '2025-12-12 07:02:38', '2025-12-12 07:02:38'),
(355, 1, 231, NULL, 100, '2025-12-12', '2025-12-12 07:02:57', '2025-12-12 07:02:57'),
(356, 1, 232, NULL, 100, '2025-12-12', '2025-12-12 07:03:20', '2025-12-12 07:03:20'),
(357, 1, 233, NULL, 100, '2025-12-12', '2025-12-12 07:03:40', '2025-12-12 07:03:40'),
(358, 1, 234, NULL, 100, '2025-12-12', '2025-12-12 07:04:00', '2025-12-12 07:04:00'),
(359, 1, 235, NULL, 100, '2025-12-12', '2025-12-12 07:04:32', '2025-12-12 07:04:32'),
(360, 1, 236, NULL, 100, '2025-12-12', '2025-12-12 07:04:50', '2025-12-12 07:04:50'),
(361, 1, 237, NULL, 100, '2025-12-12', '2025-12-12 07:05:09', '2025-12-12 07:05:09'),
(362, 1, 238, NULL, 100, '2025-12-12', '2025-12-12 07:05:31', '2025-12-12 07:05:31'),
(363, 1, 239, NULL, 100, '2025-12-12', '2025-12-12 07:05:52', '2025-12-12 07:05:52'),
(364, 1, 240, NULL, 100, '2025-12-12', '2025-12-12 07:06:09', '2025-12-12 07:06:09'),
(365, 1, 241, NULL, 100, '2025-12-12', '2025-12-12 07:06:57', '2025-12-12 07:06:57'),
(366, 1, 242, NULL, 100, '2025-12-12', '2025-12-12 07:07:19', '2025-12-12 07:07:19'),
(367, 1, 243, NULL, 100, '2025-12-12', '2025-12-12 07:07:45', '2025-12-12 07:07:45'),
(368, 1, 245, NULL, 100, '2025-12-12', '2025-12-12 07:08:09', '2025-12-12 07:08:09'),
(369, 1, 246, NULL, 100, '2025-12-12', '2025-12-12 07:08:48', '2025-12-12 07:08:48'),
(370, 1, 247, NULL, 100, '2025-12-12', '2025-12-12 07:09:48', '2025-12-12 07:09:48'),
(371, 1, 248, NULL, 100, '2025-12-12', '2025-12-12 07:10:09', '2025-12-12 07:10:09'),
(372, 1, 249, NULL, 100, '2025-12-12', '2025-12-12 07:10:27', '2025-12-12 07:10:27'),
(373, 1, 250, NULL, 100, '2025-12-12', '2025-12-12 07:10:47', '2025-12-12 07:10:47'),
(374, 1, 251, NULL, 100, '2025-12-12', '2025-12-12 07:11:06', '2025-12-12 07:11:06'),
(375, 1, 252, NULL, 100, '2025-12-12', '2025-12-12 07:11:26', '2025-12-12 07:11:26'),
(376, 1, 107, NULL, 100, '2026-01-06', '2026-01-06 10:00:44', '2026-01-06 10:00:44'),
(377, 1, 32, NULL, 100, '2026-01-06', '2026-01-06 10:43:04', '2026-01-06 10:43:04'),
(378, 1, 26, NULL, 100, '2026-01-06', '2026-01-06 10:49:56', '2026-01-06 10:49:56');

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
(9, '4\" Daimond Cup Grinding Wheel-Std.Quality', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '4\" Daimond Cutter-Professional Quality-Plain Saw', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '4\" Daimond Cutter-Professional Quality-Seg.Cutting', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '4\" Grinding Wheel', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '4\'\' Cutting Disc- Thin Turbo Blade', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '4\'\' Daimond Cutter-Standard Quality-Plain Saw', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '4.5\" Daimond Cutter (Multi Prof.Quality)', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '5\" Daimond Cup Grinding Wheel-Single', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '5\" Daimond Cutter-Professional Quality-Seg.Cutting', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '5\" Diamond Cup Grinding Wheel', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '7\'\' Dimond Cutter Seg Cutting Proffessional Quality', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, '9\" Dimond Cutter Seg Cutting Proffessional Quality', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Metal Cuttting Disk 4\"', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Aviation Snip-10\"', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Axe ( Bir Brand)-Premium Quality', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Axe(Bir Brand)-Small', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Bolt Cutter-24\"', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Carpenter Pincher-7\"', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Cutter Knif-2 Extra Blade', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Cutter Knife Blade-(10pcs Box)', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Flap Disk-80 Grit', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Foam Disc-4\" (9P)', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Garden Scissor-10\'\' ( Plastic Handle)', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Glass Cutter-Black', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Glass Cutter-Golden', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Glass Cutter-White', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Pruning Share 8\"', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'PVC Pipe Cutter-42mm', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Scissor-8\"', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Tiles Cutter Pen-140mm', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(9, 'Tin Snip-12\"', '', '', 100, 10.00, '2025-12-07 09:05:18', '2025-12-07 09:05:18'),
(10, 'Hammer Drill Bit-(10*160mm)-6\"', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Hammer Drill Bit-(10*160mm)-6\"-Star', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'HSS Drill Bit-3/16\"', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Flat File With Plastic Handle(Bir Standard) 10\"', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Half Round File Plastic Handle(Bir Standard) 10\"', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Tri Angel File-4\" Mini (6pcs Set)-Super', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'American Claw Hammer with Fiber Glass-16OZ', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Ball Pein Hammer-16 Oz (1 LB)', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Ball Pein Hammer( BMI )-16 OZ', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Chipping Hammer with Wooden Handle 500g', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Claw Hammer Fiber Glass 08 OZ', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Rubber Mallat Hammer with Fiber Glass Handle 16Oz', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Rubber Mallat Hammer with Fiber Glass Handle (BMI)- 16Oz', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Two Way Mallat Hammer with Fiber Glass Handle 35mm', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, '16 Pcs Holes Saw Set', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, '5 Pcs Hole Saw Set', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, '5pcs Jig Saw Blade', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Chisel for Wood-1 inch', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Circular Saw Blade-110*40T', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Compass Saw(Plastic Handle)-14\"', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Compuss Saw ( Wooden Handle)-14\"', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Electrode Holder-500A', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Hack Saw Blade-12\"', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Hac Saw Frame 834 Straight', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Hac Saw Frame Adjustable CY 018-01-12\" ( Blue)', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Hand Saw Wooden Handle with Fire Teeth-16\"', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Hand Saw Wooden Rubber(Tri-Angle Teeth) 18-Black', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Hand Saw Yellow Black Handle with Fire Teeth-18\"', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(10, 'Randher Fall / Iron Planner (1.75)', '', '', 100, 20.00, '2025-12-07 09:14:12', '2025-12-07 09:14:12'),
(11, 'Adjustable Roller Handle (Pro.Quality)-9\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Cup Hook 12 Pcs Set-1-1.5\'\'', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Cup Wire Brush-3\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Paint Brush (Super)-3\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Roller Brush-4\"( White)', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Roller Brush-4\'\'( Yellow)-New', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Roller Brush-Green(Blister Pack)-9\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Roller Brush with Handle-9\" ( Yellow)', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Roller Brush-Yellow-9\'\' ( Cotton)-Std.', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Roller Handle-4\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Roller Handle Rubber Grip 09\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Scraper-2\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Shovel-Steel Handel ( Round Shape)', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Shovel -Steel Handle', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Test Pencil', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Test Pencil with Hook', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Tools Box Set-38 Pcs', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Wire Brush (Super Quality)', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Ln Key (Cross Head)Mediam', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'LN Key Flat Chrome Cf 02-Medium', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Snake Key Pad Lock 50mm', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Cross Key Pad Lock 50mm', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Circle Plier External Stright 07\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Circle Plier Internal Bent 07\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Combination Plier-Fine Polish-8\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Combination Pliers-Black Finish-8\"(Yellow& Black)', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Combination Pliers-Nickle Finish-8\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Crimping Plier ( Duel Modular)', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Crimpring Plier- 6\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Cutting Plier-Fine Polished-6\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Cutting Plier(Nicle Finish)-4\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Locking Plier-10\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Nose Plier-Fine Polished-6\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'Water Pump Plier Wrench -10\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'CTG.-Combination Plier(Nickle Finish)-6\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'CTG.-Combination Plier(Nicle Finish)-7\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'CTG.-Combination Plier(Nicle Finish)-8\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'CTG.-Cutting Plier Nikel Finish 6\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(11, 'CTG.-Nose Pliers-Nickle Finish-6\"', '', '', 100, 5.00, '2025-12-07 09:19:18', '2025-12-07 09:19:18'),
(12, 'Air Heat Gun-2000 Watt (KT-22-600N)', '', '', 100, 4.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Angle Grinder-950 Watt,100mm (MTK-11100)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Demolition Hammer 1300 Watt (MTK-9035)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Electic Router 2200 Watt (MTK-5112)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Electric Blower 650 Watt (KY-2125)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Electric Planer -750 Watt (MTK-5182)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Impact Drill-750 Watt (MTK-2013)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Rotary Hammer 800 Watt (MTK-1626)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Hack Saw Frame-12\" Pro.Quality', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Pad Lock Pro Quality 63mm Cross Key', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Pro Riveter-10.5\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'European & American Type Riveter-9.5\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Glue Gun- (60W)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Silicone Gun Fram Type-9\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Silicone Gun-Heavy Duty with Rubber Grip(Red) 9\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Silicone Gun with Sheet 9\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Silicon Gun Gold Color-15\'\'', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Wire Strippier-7\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Adjustable Screw Driver- KM-S32B-Two Way', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Screw Driver 107 (Chrome Plated)- 6\" Plus', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Screw Driver 603-4\" Two Way', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Screw Driver 6637 Black Handle -6\"\"Plus', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Screw Driver 815-6\" Plus', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Screw Driver HS24-6\" Flat', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Socket Chorme Plated-16 mm', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Combination Spanner Chrome 16*16mm', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Double Open Spanner Bright Chrome16*17mm', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Spanner Double Ring Bright Chrome-18*19 mm', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Fiber Tape-15 M ( Yellow)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Measurement Tape 2M (2x13 Non Magnet)-DX-02', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Measurement Tape 3M (2x13 Nickle Blade)-HL-03', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Measurement Tape 3M (3x16  Magnet)-DX-15', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Measurement Tape 3M (3x16 Non Magnet)-DX-37', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Measurement Tape 3M (3x16 Non Magnet)-DX-T15', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Measurement Tape 3M (3x16 Non Magnetic)-A69', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Measurement Tape 3M (3x16 Non Magnetic)-A70', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Measurement Tape 3M (3x19 Non Magnet)-DX-72', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Measurement Tape 3M (3x19 Non Magnet)-HL -05', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Steel Tape -30M', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Adjustable Wrecnh -Multi color-Bir Professional-10\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Adjustable Wrench Black Nickel Plated Non Grip-10\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Adjustable wrench -Black Nickle-Bir pro-10\'\'(blister Pack)', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Adjustable Wrench Red Handle (Bir Standard) 08\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Pipe Wrench ( Bir Super)-14\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Pipe Wrench ( Industrial )-14\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Pipe Wrench ( Industrial)-18\"', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Socket Set (10Pcs) Wrench', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'Socuet Set(40 Pcs)Wrench-2003 Big', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(12, 'T Handle Socket -10mm', '', '', 100, 5.00, '2025-12-07 09:25:41', '2025-12-07 09:25:41'),
(13, 'Aluminium Level with Magnet-09\"', '', '', 100, 5.00, '2025-12-08 10:06:23', '2025-12-08 10:06:23'),
(14, '9000-AC-SS sheet', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '3871-SS', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '3871-AC', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5893-AC', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5892-AC', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5890-BN/PB', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5890-S', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5890-SB/PB', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5890-Coffee', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5887-SS/ CP', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5887-D-AC/PB-Full Zinc', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5885-AC', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5801-RG-Dimond Knob', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '5801-SS-Dimond Knob', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, 'CNCI-CP', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, 'CNCI-AC', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, 'CNCI-AB', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '1015 H 502-ORB', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '813-990-Black / AC', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '813-990-ORG', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '85138-377-ORB', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, 'M-1200 H-741-DAB', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, 'M-1200 H-741-DAC', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, 'Z 820-L8030-MSN', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, 'P-1166 H 254- DAC(BLACK +AC)', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, 'Z 9106-Z 96-ORB', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '9136-507-AC', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(14, '9136-507-MCF', '', '', 100, 50.00, '2025-12-10 06:59:10', '2025-12-10 06:59:10'),
(15, '9577-583-BRED', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9123-Z 454-SN/CP', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9123-Z 454-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9522-406-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9349-821-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '939-D-113-MSN/KGP', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '939-D-113-MCF/KGP', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9349-D-113-Black/ GP', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9349-D-113-BSN/ MSN', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9325-536-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9325-536-BRED', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9302-442-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9302-E-16-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9302-ER-16-BRED', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '95479-826-BRED', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9579-826-ORB', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '919-824-MSN/BSN', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '9252-301-SN/CP', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '85-12-ORB', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '85-11-AC', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '85-11-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '85-11-ORB', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232 A 1501-BSN', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232 A 1501-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232 A 1695-MSN', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232A1695-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232 A 1048-MSN', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232 A 1048-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232 A 9044-MSN', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232 A 9044-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232 A 9014-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1232 A 9014-MAB', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '1248 A 9043-MCF', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'M-1158 H-655-AC', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58177 H-192-ORG', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58177 H-192-Black /AC', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58178 H-193-ORG', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58001 H-195-Black / AC', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58001-H-195-ORG', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58001 H-194-ORG', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58001-H-194-Black/ AC', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58175-H-190-Black / AC', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58175-H-190-Black / AC', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58005- H-540-ORG', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, 'H-58006 H-009-Black/ AC', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(15, '/ AC	 H-58006 H-009-ORG', '', '', 100, 50.00, '2025-12-10 07:04:58', '2025-12-10 07:04:58'),
(16, '9000-AC-SS sheet', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '3871-SS', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '3871-AC', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5893-AC', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5892-AC', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5890-BN/PB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5890-S', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5890-SB/PB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5890-Coffee', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5887-SS/ CP', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5887-SS/ CP	 5887-D-AC/PB-Full Zinc', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5885-AC', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5801-RG-Dimond Knob', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '5801-SS-Dimond Knob', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'CNCI-CP', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'CNCI-AC', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'CNCI-AB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '1015 H 502-ORB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '813-990-Black / AC', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '813-990-ORG', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '85138-377-ORB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'M-1200 H-741-DAB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '691-537-AC-2 in 1', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG 01 XL 380-ORB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG 02 XL 370-SN/CP', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG 03-XL-370-Black / AC-2 in 1', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG 03-XL-370-ORB-2 in 1', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG 04-XL-370-ORB-2 in 1', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG 04-XL-370-SN/CP-2 in 1', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG-05-Xl-375-RG-2 in 1', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG-05-Xl-375-ORB-2 in 1', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG 07 XL 375-MCF (COFFEE)', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG -08 XL-380-ORB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG -08 XL-380-RG', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG 09-XL-381-ORB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'KG 09-XL-381-RG', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9818-724 MAE', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9531-733 MCF', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9531-733 MCF', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9531-592 MCF', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9531-592 ORB', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9325-536 RG', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9764-536 RG', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9208B-298B-RG', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9395-44-RG', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'FD 9395-44-MCF', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, 'D-812-SS-(Dead Bolt-Single)-Square', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '7301-AC-Dead Bolt-Single-Knob', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '7301-SS-Dead Bolt-Single-Knob', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '7312-SS -Dead Bolt-Doble', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '7312-AC -Dead Bolt-Doble', '', '', 100, 50.00, '2025-12-10 07:14:34', '2025-12-10 07:14:34'),
(16, '838-(805) Door Stopper-SS-Vikars', '', '', 100, 50.00, '2025-12-10 07:14:35', '2025-12-10 07:14:35'),
(16, '888- Door Stopper-SS-(Vikars)', '', '', 100, 50.00, '2025-12-10 07:14:35', '2025-12-10 07:14:35'),
(16, '823 Door Stopper-SS-(Vikars)', '', '', 100, 50.00, '2025-12-10 07:14:35', '2025-12-10 07:14:35'),
(16, '666 Door Stopper-ACZinc (Vikars)', '', '', 100, 50.00, '2025-12-10 07:14:35', '2025-12-10 07:14:35'),
(16, 'Door Viewer with Shutter- AC', '', '', 100, 50.00, '2025-12-10 07:14:35', '2025-12-10 07:14:35'),
(16, 'Door Viewer with Shutter-Coffee', '', '', 100, 50.00, '2025-12-10 07:14:35', '2025-12-10 07:14:35'),
(16, 'Door Viewer without Shutter-AC', '', '', 100, 50.00, '2025-12-10 07:14:35', '2025-12-10 07:14:35'),
(17, 'Door Chain-SS', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Door Chain-AC', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '728-Door Knocker with Viewer-AC', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '729-Door Knocker with Viewer-AC', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'XH-052- Door Closer-(Vikars)', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '6271-Black-Liver Lock', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '6271-AB-Liver Lock', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '6271-SS-Liver Lock', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '6211-SS-Liver Lock', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '1314 B-Bike Pad Lock', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Bike Pad Lock-6865-65 MM', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Bike Pad Lock-6875-75 MM', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Pad Lock-CR-5350-Cross Key', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Pad Lock-CR-5360-Cross Key', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Pad Lock-NP-60-Matt', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '310 Rim Lock-12 Key-AC-Without Chain', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '310 Rim Lock-12 Key-SS-Without Chain', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '310 Rim Lock-18 Key-SS-Without Chain', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '310 Rim Lock-24 Key-SS-Without Chain', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '310 Rim Lock-6 Key-AC-Without Chain', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '310 Rim Lock-6 Key-SS-Without Chain', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '564-AC- Auto Rim Lock', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '3/4\"(.65MM) -Piano Hinge-ALL SS (PIN) (396 GM)', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '138-22-SS-Drawer Lock-JB Type', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, '138-22-AC-Drawer Lock-JB type', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Furniture Lock-CP-Wave Computer Key', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Furniture Lock-AC-Wave Computer Key', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Showcase Lock', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'LPG Regulator - Orange - 22 mm', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'LPG Regulator - Silver - 22 MM', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Hydrolic Concealed Hinge 888 F-HIGH-Soza-SS & 1/2 Baka', '', '', 100, 50.00, '2025-12-10 07:20:39', '2025-12-10 07:20:39'),
(17, 'Normal Concealed Hinge 261-LOW-(Soza)', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'SF-9601-(A) Decoration Machine-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-03-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-86-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-78-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-126-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-33-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-09-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-127-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-35-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-46-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-70-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-82-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-77-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'GR-29-Soft Pattern Rubber-6\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'SF-9501(A) Decoration Machine-7\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'SF-008-Rubber Roller-7\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'SF-065-Rubber Roller-7\"', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'Sponge Kit Aj-01', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'Sponge Kit Aj-08', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'Sponge Kit Aj-27', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'Sponge Kit Aj-28', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'Sponge Kit Aj-29', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'Sponge Kit Aj-69', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'Sponge Kit FL-69', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(17, 'Sponge Kit FL-70', '', '', 100, 50.00, '2025-12-10 07:20:40', '2025-12-10 07:20:40'),
(18, '5/8 Steps | 200 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '6/10 Steps | 200 Kg. (Capacity)', '', '', 100, 100.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '7/12 Steps | 200 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '6 Steps | 180 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '7 Steps | 180 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '8 Steps | 180 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '9 Steps | 180 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '5 Steps | 150 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '6 Steps | 150 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '7 Steps | 150 Kg. (Capacity)', '', '', 100, 100.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '8 Steps | 150 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '9 Steps | 150 Kg. (Capacity)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '1” Concrete Nail (Per KG)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '1.5” Concrete Nail (Per KG)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '2” Concrete Nail (Per KG)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '2.5” Concrete Nail (Per KG)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '3” Concrete Nail (Per KG)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '4” Concrete Nail (Per KG)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '7mm SS Screw 1” (Per KG)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '7mm SS Screw 1.25” (Per KG)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '7mm SS Screw 1.5” (Per KG)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '8mm SS Screw 1” (Per KG) Nickel Coatings', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '8mm SS Screw 1.25” (Per KG) Nickel Coatings', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '8mm SS Screw 1.5” (Per KG) Nickel Coatings', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '8mm SS Screw 2” (Per KG) Nickel Coatings', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, '8mm SS Screw 1.5” (Per KG) Wash', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, 'Size: T-20 (Per Box)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, 'Size: T-25 (Per Box)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, 'Size: T-32 (Per Box)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, 'Size: T-38 (Per Box)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, 'Size: T-50 (Per Box)', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, 'Racks - 2 Feet - 8 Bar', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, 'Racks - 2 Feet - 4 Bar', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, 'Racks - 1.5 Feet - 8 Bar', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(18, 'Racks - 1.5 Feet - 4 Bar', '', '', 100, 10.00, '2025-12-10 07:51:58', '2025-12-10 07:51:58'),
(19, '4 \" x 3 \" x 2.5 mm - Boss-SS Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '4 \" x 3 \" x 2.5 mm - Vikars / BMI-SS Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '4 \" x 3 \" x 2.7 mm - Boss- SS Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '4 \" x 3 \" x 2.7 mm - Vikars/ BMI -SS Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '4 \" x 3 \" x 2.5 mm - Boss -MS Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '4 \" x 3 \" x 2.5 mm - Vikars/BMI -MS Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '4 \" x 3 \" x 2.7 mm - Boss -MS Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '4 \" x 3 \" x 2.7 mm - Vikars/BMI- MS Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '5 \" x 3 \" x 2.7 mm - Vikars - SS Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '4\'\' Butterfy Hinge 2.0 mm -Vikars', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '4\" Box Tower Bolt-Vikars/BMI', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '6\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '8\" Box Tower Bolt-Vikars / BMI / Boss-Heavy', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '6\" Box Tower Bolt-Mirror - No Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '8\" Box Tower Bolt-Mirror - No Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '6\" Box Tower Bolt-Light-Boss / Vikars', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '8\" Box Tower Bolt-Light-Boss / Vikars', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '6\" Wave Tower Bolt-Vikars / BMI', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '8\" Wave Tower Bolt-Vikars / BMI', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '6\" Tower Bolt - Mirror - Wave - No Screw', '', '', 100, 100.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '8\" Tower Bolt- Mirror - Wave - No Screw', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '3/4\" (.40 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '3/4\" (.60 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -Iron Pin', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, '3/4\" (.80 MM ) Piano Hinge - Boss / Vikars -SS Pin', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, 'Iron Drawer Lock with Steel Key Brands: Vik	ars / Camel', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, 'CL-298 Sliding Wheel (Vikers) - Full SS Body', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, 'CL-297 Sliding Wheel(Vikers) - Full SS Body', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, 'Window Roller Vikars-299', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, 'Window Roller Vikars-299 (Orange)', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, 'CL-298 Sliding Wheel(Vikers)', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, 'CL-297 Sliding Wheel(Vikers)', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07'),
(19, 'SS Drawer Channel- with 4 Ball(12 \" / 14\" / 16\" / 18\" / 20 \")', '', '', 100, 10.00, '2025-12-10 08:09:07', '2025-12-10 08:09:07');

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
(9, '3', '00001', '2025-12-07', 31000.00, 1, '', '', '', '2025-12-07 09:05:18', '2025-12-07 09:26:38'),
(10, '3', '00002', '2025-12-07', 58000.00, 1, '', '', '', '2025-12-07 09:13:45', '2025-12-07 09:26:33'),
(11, '3', '00003', '2025-12-07', 19500.00, 1, '', '', '', '2025-12-07 09:19:07', '2025-12-07 09:26:28'),
(12, '3', '00004', '2025-12-07', 24400.00, 1, '', '', '', '2025-12-07 09:25:41', '2025-12-07 09:26:17'),
(13, '3', '00005', '2025-12-01', 500.00, 1, '', '', '', '2025-12-08 10:06:23', '2025-12-08 10:06:28'),
(14, '2', '00006', '2025-12-10', 140000.00, 1, '', '', '', '2025-12-10 06:59:10', '2025-12-10 07:21:23'),
(15, '2', '00007', '2025-12-10', 230000.00, 1, '', '', '', '2025-12-10 07:04:57', '2025-12-10 07:21:18'),
(16, '2', '00008', '2025-12-10', 290000.00, 1, '', '', '', '2025-12-10 07:14:34', '2025-12-10 07:21:12'),
(17, '2', '00009', '2025-12-10', 285000.00, 1, '', '', '', '2025-12-10 07:20:39', '2025-12-10 07:21:03'),
(18, '4', '00010', '2025-12-10', 53000.00, 1, '', '', '', '2025-12-10 07:51:58', '2025-12-10 07:52:18'),
(19, '1', '00011', '2025-12-10', 42000.00, 1, '', '', '', '2025-12-10 08:09:07', '2025-12-10 08:09:12');

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
('32ze1GEjg01sLAWd12yWSiQL9pz6yOHzKPYw95nw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVzFFbklDZWtTWEtsak1yckdqV3RPNlMzUGJld0paNFVJM3hWMmY2WCI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxMTQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91cGxvYWRzL3Byb2R1Y3RfZ2FsbGVyeS8xNzY1MjA1NDYyXzY5MzZlNWQ2MzEwMzZfNC1kYWltb25kLWN1cC1ncmluZGluZy13aGVlbC1zdGRxdWFsaXR5LmpwZyI7fX0=', 1767713470),
('4AQJhsUTzKCpmWegeK1IHqCcOOdxJsKwNGUBxACG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUWkyQUlXS1RtbjJMVXBmWkIyWjhhUFhQTHg0WlJsbTBzQ2N5MjYzZCI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxMDQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91cGxvYWRzL3Byb2R1Y3RfZ2FsbGVyeS8xNzY1MjA1MDIwXzY5MzZlNDFjMTk0ZThfYXhlLWJpci1icmFuZC1wcmVtaXVtLXF1YWxpdHkuanBnIjt9fQ==', 1767713720),
('4D1RInZYkfk5mYgnhVXsYbc7gXihEP7Dw0NZVWWY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaU9RM1QzVk9QMXhPVDV5c2pnMldVd0dFT29MTjZWNGswWnFJdlFNbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713470),
('5cFwsvdGDXQc5QtMffJFZo6lheJPpYYZeHSxGPZU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZGtPaHhtdDlmWWxaeFFiZjlBWndHclZhOU9EcUg1ZWJSZ3c0S3M3NSI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdF9nYWxsZXJ5LzE3NjUyMDUxMzNfNjkzNmU0OGQ0OWYyYl9ib2x0LWN1dHRlci0yNC5qcGciO319', 1767713842),
('5cZBc6ToGkR5iPIeAndeWhq425JPri7Z9jRLI02j', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczJJbG1XNVpPdHRLVWoxMWxIQzdBSXF3SDdrc0dybUM5OG5taGVCTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713799),
('5l5NXLNF5Ad5afj9rj84tS9mc2KyMnXUOtlOXcWN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXdzQ1JkUUN3Z1FBa0E5NVJ5UVdKUzBQemdoWEpOMnVWUG11NzRkOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713151),
('5PRgn0mLl1k5joIUrd81ZJbbqlbbfBOruGTBbS8y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVEZ5bTdWNUFrZVJEcmVJMVNBNDZwOGwwNHprTHNVclVESFVTWFoxNSI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxMjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91cGxvYWRzL3Byb2R1Y3RfZ2FsbGVyeS8xNzY1MjA1NDEzXzY5MzZlNWE1OTI5NTNfNC1kYWltb25kLWN1dHRlci1wcm9mZXNzaW9uYWwtcXVhbGl0eS1wbGFpbi1zYXcuanBnIjt9fQ==', 1767713257),
('6IcQ3zc9FSnrpA2harEB2Df1TRmFPte9Cwy72Mnu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVBQRTRZM1ZlcE5sOUZ1Mm9xalVuNXhMamhZQzlyYmFvSmxJRG42VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713640),
('6picCUP3znjADttG9BzMG1yT58ledJ5iD1XfmE2O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWnFSTzV3ZndLaUVpSDVpSExFVEcxd0k0NHdLMWM5SVBua2xzb3F2YyI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxMDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91cGxvYWRzL3Byb2R1Y3RfZ2FsbGVyeS8xNzY1MjA1MjE5XzY5MzZlNGUzYzNkMTdfY3V0dGVyLWtuaWYtMi1leHRyYS1ibGFkZS5qcGciO319', 1767713954),
('8aNU4iH46DkqVQaoEsNBJudoLW8fC6a1PG5952eG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHN0eVRINFQwSzVtZjQ1NExST25OanZwTmExN2lydDE1TmJaV29aaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767712878),
('b0PJ1t604nCcvp04I8p5O6sc5yoQfm9DbP13B0zX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFFmVXNaWjVpdXFYbmdpMU5yM2x5a29NdXJ5UzZmSmt6YTBCWEc3bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713422),
('bjynTagkVmY7wLBlDV77GaBCGEWFAmZP2B0pHI1P', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemwwNHZKVlFyOVhmdWpDeDhFVEhsMUNnN0RZYkxUR2xXYWxSN21hcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713906),
('cNrAFVDOeqz4oigpsxONhX16kRS38E8PwfemwxK6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGZGWUk1YTJaUWIwc2F0dXJwSGRlRUIzbHE4WVJkcTV5M2lWVGo3SCI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3NToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdHMvMTc2NTIwNjA4OF9tZXRhbC1jdXR0dGluZy1kaXNrLTQuanBnIjt9fQ==', 1767713536),
('dOztRNxEsMIYf5BnFKLImJ7MZRqvOKvQViQOwMF6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNnh0a1Q2MnBoZXBnUWx3SFJVS00xeVFXWWhBUTR4MnY1aWNOQ0VSciI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxMTQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91cGxvYWRzL3Byb2R1Y3RfZ2FsbGVyeS8xNzY1MjA1NDYyXzY5MzZlNWQ2MzEwMzZfNC1kYWltb25kLWN1cC1ncmluZGluZy13aGVlbC1zdGRxdWFsaXR5LmpwZyI7fX0=', 1767712878),
('dtUYoJFDLegH4w9zz10dX1ks0b9ZEgxisvFIvBN7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDR1Sk5RMGxlMVpGTzVYaVBHeXF5N3Z0Z2xuTXVmRGZRQkw1VzhVUyI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo5NjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdF9nYWxsZXJ5LzE3NjUyMDYwODhfNjkzNmU4NDhhY2ZmOF9tZXRhbC1jdXR0dGluZy1kaXNrLTQuanBnIjt9fQ==', 1767713640),
('fCxnMlfUWbDZWHpmiriaOsYxRrzUY2coj03OjHaf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSFZUU0xFcWQ3bnRscmxiVzZDOVlNclp4THpXM0hSdU1ZQWRIbGk2SSI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo5MzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdF9nYWxsZXJ5LzE3NjUyMDUwNjJfNjkzNmU0NDY2MjBhOF9heGViaXItYnJhbmQtc21hbGwuanBnIjt9fQ==', 1767713799),
('FDUw2KdQSVtRnvWa0HAEyMiIZoqkxMzWdwD4ZERC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejNKOHhlMFU3UFo5cEdnQ3ZCVVE2Zmd1WDhodWdzek56Tk9mdmJveiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713954),
('fHpkqmRfnRDkZzSdR7LXQn9J7YX3fRXCcif0yunZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOWgxcFFmcFpnd29udWtBNzNsVlZUdEZWc1VyU2JjeHdhRmVwT3dHcSI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo5NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdF9nYWxsZXJ5LzE3NjUyMDUxODBfNjkzNmU0YmNhYmUwNl9jYXJwZW50ZXItcGluY2hlci03LmpwZyI7fX0=', 1767713906),
('H9nDY6WgI2Rd65ddvam8Rww88YS7BqcOtV3oRycQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNExGSVY4TmdZc0VKRVdyWXl6VTNkemRNWmZWdWNpZ3FxTEE4c2luWCI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3NToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdHMvMTc2NTIwNjA4OF9tZXRhbC1jdXR0dGluZy1kaXNrLTQuanBnIjt9fQ==', 1767713422),
('iqYmetB2sdxAuceL0fR5yLbM5jjQE2XETeT4nMMB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVFTUnU5elczRER2TTljREpOcDNWamFUZG0wR0dGYUpUZ2gzRzBEeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713257),
('L1ldq5Rabpof0463h6JkEHmBxQh36haJQK9nJurQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkhDaTlRb0JYZ1Q3TFJQUzNmN0ZsTzhPdkVacGxsSkxnVml3WXFLSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713640),
('nhweBzcIpViBTbTgR5xjJGUg5SNeGh28GWvwbQxn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUtGMGhvZTFZOTF3T0FCbmpwYVpoVGhMWUxPekFRYzFPNFRiYmUzVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713635),
('OT7UE90LqpSJJTmB5WtkSEPON3Q3MMWqMssJJsoa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoialZQUDBOWGtLbUF1dXVkbmJMVERuQkJ3M3BOckNKSmpibjZ5MlQ3NiI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3NToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdHMvMTc2NTIwNjA4OF9tZXRhbC1jdXR0dGluZy1kaXNrLTQuanBnIjt9fQ==', 1767713635),
('Q8RUV9OYKZ3xnm25r4b6DVkKTXjAnfaGpn3LdJ2c', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZEtaTWZIRFZhclFFVGs3VlpWNjFneTc5Z2tXb2thWFp1WXZOOUM3aCI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3NToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdHMvMTc2NTIwNjA4OF9tZXRhbC1jdXR0dGluZy1kaXNrLTQuanBnIjt9fQ==', 1767713640),
('QxgVvwYWoAKNl2hXYPiZGdQ7tV47YTO57ngb69Yb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3VjNnduTGltQ1NzNGZQa0tKZEQ0M3pEODIxR1B5UElPcDJUN2FrRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713988),
('RxrUAgd6ibUpcyYx6TvWK7908PlMQQyz6CP8aNC8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRENlWUw1VGxEZTEycU5LNGtlUk9FUk1ZbVFnOU5UWEE1a0pzVFN1cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713536),
('tljox1oJ46rODECuAyTxRKdeXZN3DYvKsLQGEWlW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ3NLRWxGWUF5T2k3MktWcTg2WWY2VzJGSm5BSTNtNmxOMkE5Z3BIQSI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3NToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdHMvMTc2NTIwNjA4OF9tZXRhbC1jdXR0dGluZy1kaXNrLTQuanBnIjt9fQ==', 1767712654),
('u1PjCnKe3PIxkWKirvEi1RuoLfZyu1esHxAatNhi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDc3dDRCUzloN1JLWUx2WlhxcU9JbGJrNXl3YkgwNkN0NGFJRjdEeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713720),
('uOMcyM7d3PjlurRppaZMCyFh6u35OliXdWPv9lcU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlVWVWxZVzVZSldDaUJwWFc3R1JLZFRoR1Z3SEs0c2tCam5SOUkwQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767712655),
('wR8rweKQOLbi49hAypzgCLXk8lzFS3iO9he9IvlD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWhOTUtWVVRpcUgwRzd0UkV0WEYyN1RBMmx4bUhHTmRjeGRhUFJ5ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1767713843),
('XLrlQSLlPYmfAwmsmOL0rXdMITCvaR6Jb84bUZTm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmFwQll6UEQ3bGcwVE1CODVyZ0cwS1o5ZEliWlJDbDVkRkd2Z09NbCI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxMjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91cGxvYWRzL3Byb2R1Y3RfZ2FsbGVyeS8xNzY1MjA1NDEzXzY5MzZlNWE1OTI5NTNfNC1kYWltb25kLWN1dHRlci1wcm9mZXNzaW9uYWwtcXVhbGl0eS1wbGFpbi1zYXcuanBnIjt9fQ==', 1767713151),
('YiA2HrkBWpcM1sSVRkYpYGIqpAfRPofFuekrOjNY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGhYTDVEVkhXNWFwa1ZzNkcxTW1VU3FXaW1PY3g2Q1dqTURwMDVaUyI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo5MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdF9nYWxsZXJ5LzE3NjUyMDQ4OTFfNjkzNmUzOWI5MGY3Nl9mbGFwLWRpc2stODAtZ3JpdC5qcGciO319', 1767713988);

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
(1, 'Bir Group', '+880 1301-047166', 'info@vogexi.com', 'Address: 6th & 7th Floor, Navana Osman @link, 214/d Bir Uttam Mir Shawkat Sarak, Dhaka 1208', '+8801301047166', '01740586574', '+880 1301-047166', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'Bir Group Holdings aspires to become one of Bangladesh’s leading diversified distribution and manufacturing companies. The company envisions achieving this by delivering high-quality products across the nation and taking full responsibility for everything it manufactures and distributes. A key part of this vision is treating all retailers and customers fairly and equally, fostering long-term trust and loyalty.', 'Copyright © 2025 birgroup. All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', '', 5, '#', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '', '#', '#', 60, 130, 5, 0, 0, 0, NULL, '2024-05-12 05:32:50', '2025-12-04 10:24:22');

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
(1, 'BMI', 1, '2025-11-03 00:09:06', '2025-12-10 08:03:01'),
(2, 'KGI HARDWARE ACCESSORIES LTD.', 1, '2025-11-03 00:09:16', '2025-11-03 00:09:16'),
(3, 'Bir Tools', 1, '2025-11-03 00:09:30', '2025-12-07 08:58:04'),
(4, 'Bir Consumer', 1, '2025-11-03 00:09:49', '2025-12-10 07:46:23');

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
(22, 'Joynal', 'joynal@gmail.com', 4, NULL, '$2y$12$nQ5CIq1SHCYlH9XHcRBM0.say.Rg3IWsnOxGGM.dRwKEoMeDsj.I2', '06569899898', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-30 09:35:12', '2025-11-30 09:35:12'),
(23, 'Jannat', 'jannat@gmail.com', 4, NULL, '$2y$12$0rxFFHOG/L3HnzgkYWCmO.TCCak29MclFJi4xl14U.X/Z7wVvssOK', '01915728983', 'Mirpur-1,Dhaka, Bangladesh,', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-05 00:11:08', '2025-12-05 00:11:08'),
(24, 'Bijon ahmed', 'bijonahmed@gmail.com', 4, NULL, '$2y$12$bKQRaAnr1NYjDLPg4p3Y4eecuzRRiNK220gldASqjP/qa9wEFKxhO', '01915728988', 'Mirpur, Dhaka-1203', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-05 05:33:06', '2025-12-05 05:33:06'),
(25, 'Ebim123', 'ebim123@gmail.com', 4, NULL, '$2y$12$j/koKPbPOR2vsyUn7hyfou9/n3DDTf9BJezCiIcZufKQLBj4VyNhi', '4556748578', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-12 07:38:25', '2025-12-12 07:38:25'),
(26, 'ayesha', 'ayesha@gmail.com', 4, NULL, '$2y$12$D.QBuqD.eMI55WyVe9c8Pu6UWvbbnA89tCV3G3AWUi8ryZQE8uGoy', '018748975454', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-12-12 07:40:05', '2025-12-12 07:40:05');

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
-- Indexes for table `pathao_tokens`
--
ALTER TABLE `pathao_tokens`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pathao_tokens`
--
ALTER TABLE `pathao_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `product_attribue`
--
ALTER TABLE `product_attribue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_img_history`
--
ALTER TABLE `product_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT for table `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `purchase_order_particular`
--
ALTER TABLE `purchase_order_particular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
