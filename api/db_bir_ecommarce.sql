-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2025 at 11:11 PM
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
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:6:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"d\";s:9:\"role_type\";s:1:\"e\";s:9:\"parent_id\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:51:{i:0;a:6:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"view posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:27;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:1;a:6:{s:1:\"a\";i:2;s:1:\"b\";s:12:\"create posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:27;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:6:{s:1:\"a\";i:3;s:1:\"b\";s:10:\"edit posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:27;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:6:{s:1:\"a\";i:4;s:1:\"b\";s:12:\"delete posts\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:27;s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:6:{s:1:\"a\";i:5;s:1:\"b\";s:10:\"view users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:28;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:6:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"create users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:28;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:6:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"edit users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:28;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:6:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"delete users\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:28;s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:6:{s:1:\"a\";i:9;s:1:\"b\";s:13:\"view products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:29;s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:9;a:6:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"create products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:29;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:6:{s:1:\"a\";i:11;s:1:\"b\";s:13:\"edit products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:29;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:6:{s:1:\"a\";i:12;s:1:\"b\";s:15:\"delete products\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:29;s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:6:{s:1:\"a\";i:14;s:1:\"b\";s:19:\"view posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:6:{s:1:\"a\";i:15;s:1:\"b\";s:21:\"create posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:6:{s:1:\"a\";i:16;s:1:\"b\";s:19:\"edit posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:30;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:6:{s:1:\"a\";i:17;s:1:\"b\";s:21:\"delete posts category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:30;s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:6:{s:1:\"a\";i:22;s:1:\"b\";s:9:\"view role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:31;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:6:{s:1:\"a\";i:23;s:1:\"b\";s:11:\"create role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:31;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:6:{s:1:\"a\";i:24;s:1:\"b\";s:9:\"edit role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:3:\"1,2\";s:1:\"e\";i:31;s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:6:{s:1:\"a\";i:25;s:1:\"b\";s:11:\"delete role\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:5:\"1,2,3\";s:1:\"e\";i:31;s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:5:{s:1:\"a\";i:26;s:1:\"b\";s:22:\"Update website setting\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:21;a:5:{s:1:\"a\";i:27;s:1:\"b\";s:15:\"Post Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:22;a:5:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"User Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:23;a:5:{s:1:\"a\";i:29;s:1:\"b\";s:19:\"Products Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:24;a:5:{s:1:\"a\";i:30;s:1:\"b\";s:24:\"Post Category Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:25;a:5:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"Role Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:26;a:5:{s:1:\"a\";i:32;s:1:\"b\";s:21:\"Permission Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:27;a:6:{s:1:\"a\";i:33;s:1:\"b\";s:15:\"view permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:6:{s:1:\"a\";i:34;s:1:\"b\";s:17:\"create permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:6:{s:1:\"a\";i:35;s:1:\"b\";s:15:\"edit permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:6:{s:1:\"a\";i:36;s:1:\"b\";s:17:\"delete permission\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:32;s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:5:{s:1:\"a\";i:37;s:1:\"b\";s:28:\"Products Category Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:32;a:6:{s:1:\"a\";i:38;s:1:\"b\";s:21:\"view product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:6:{s:1:\"a\";i:39;s:1:\"b\";s:23:\"create product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:6:{s:1:\"a\";i:40;s:1:\"b\";s:21:\"edit product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:6:{s:1:\"a\";i:41;s:1:\"b\";s:23:\"delete product category\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:37;s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:5:{s:1:\"a\";i:42;s:1:\"b\";s:17:\"Banner Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:37;a:6:{s:1:\"a\";i:43;s:1:\"b\";s:11:\"view banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:6:{s:1:\"a\";i:44;s:1:\"b\";s:13:\"create banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:6:{s:1:\"a\";i:45;s:1:\"b\";s:11:\"edit banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:6:{s:1:\"a\";i:46;s:1:\"b\";s:13:\"delete banner\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:42;s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:5:{s:1:\"a\";i:47;s:1:\"b\";s:19:\"Supplier Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:42;a:6:{s:1:\"a\";i:48;s:1:\"b\";s:13:\"view supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:6:{s:1:\"a\";i:49;s:1:\"b\";s:15:\"create supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:6:{s:1:\"a\";i:50;s:1:\"b\";s:13:\"edit supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:6:{s:1:\"a\";i:51;s:1:\"b\";s:15:\"delete supplier\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:47;s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:5:{s:1:\"a\";i:52;s:1:\"b\";s:25:\"Purchase Order Management\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:0;}i:47;a:6:{s:1:\"a\";i:53;s:1:\"b\";s:19:\"view purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:6:{s:1:\"a\";i:54;s:1:\"b\";s:21:\"create purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:6:{s:1:\"a\";i:55;s:1:\"b\";s:19:\"edit purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:6:{s:1:\"a\";i:56;s:1:\"b\";s:21:\"delete purchase order\";s:1:\"c\";s:3:\"api\";s:1:\"d\";s:1:\"1\";s:1:\"e\";i:52;s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:1;}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"editor\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:2;}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"viewer\";s:1:\"c\";s:3:\"api\";s:1:\"d\";i:3;}}}', 1762488178);

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
(56, 'delete purchase order', 'api', '1', 52, '2025-10-09 10:09:35', '2025-10-09 10:09:35');

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
  `categoryId` int(11) DEFAULT NULL COMMENT 'Post Category ID \r\n1=pdf\r\n2=torrent',
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
(1, 'About Bir Group Holdings', 'about-bir-group-holdings', '', '<h2>About Bir Group Holdings</h2><p>Bir Group Holdings aspires to become one of Bangladesh’s leading diversified distribution and manufacturing companies. The company envisions achieving this by delivering high-quality products across the nation and taking full responsibility for everything it manufactures and distributes. A key part of this vision is treating all retailers and customers fairly and equally, fostering long-term trust and loyalty.</p><p>To accomplish this vision, Bir Group Holdings pursues a clear mission. The company leverages the growth potential of its existing brands and products in the ever-expanding market, introduces new products to its established networks, and continuously expands the distribution of its current brands throughout the domestic market. By following these strategies, the company ensures consistent growth and strengthens its market presence year after year.</p><p>Bir Group Holdings also adheres to a set of core principles that guide its daily operations. These include maintaining equality in a competitive workplace, being open to innovative ideas and advice, taking calculated risks to promote growth and prosperity, and conducting all business activities with the highest ethical standards. Together, these values help the company grow responsibly while maintaining trust with customers, partners, and employees.</p>', 'About Bir Group Holdings', 'About Bir Group Holdings', 'About Bir Group Holdings', NULL, NULL, 1, 1, NULL, 1, '2025-11-04 16:03:29', '2025-11-04 16:03:29'),
(2, 'Terms and Conditions', 'terms-and-conditions', '', '<p>Welcome to Bir-ecommerce &nbsp;By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.</p><p>All products listed on our website are subject to availability. We reserve the right to modify, discontinue, or limit products at any time without prior notice. While we strive to provide accurate images, descriptions, and pricing, slight differences may occur between the displayed product and the actual item.</p><p>When placing an order, you acknowledge that all orders are subject to acceptance by [Your E-commerce Site Name]. Payments must be completed using the methods provided on our checkout page before we can process your order. Prices listed on the website are inclusive/exclusive of applicable taxes, as specified.</p><p>We make every effort to ensure timely delivery; however, delivery timelines are estimates and may vary due to location, product availability, or unforeseen circumstances. Ownership of the products passes to the customer upon delivery, and we are not liable for delays caused by courier services or external factors beyond our control.</p><p>Returns and refunds are processed in accordance with our Return Policy. Products must be returned in their original condition, with all tags and packaging intact. Refunds are issued only after the returned items have been inspected and approved.</p><p>To place an order, you may be required to create an account. You are responsible for maintaining the confidentiality of your account information and password, and for notifying us immediately of any unauthorized use of your account. Misuse of your account or any attempt to compromise the security of our website may result in termination of your account.</p><p>All content on our website, including text, images, logos, and designs, is the intellectual property of [Your E-commerce Site Name] or its licensors and may not be copied, reproduced, or distributed without prior written permission. You agree not to use our website for any unlawful purposes or to transmit harmful, offensive, or unauthorized content.</p><p>While we strive to maintain a secure and error-free website, [Your E-commerce Site Name] is not liable for any direct, indirect, or incidental damages resulting from the use of our website or products. We reserve the right to update these Terms and Conditions at any time, and continued use of our services after such changes constitutes acceptance of the updated terms.</p><p>These Terms and Conditions are governed by the laws of Bangladesh, and any disputes arising from them will be subject to the exclusive jurisdiction of courts in Bangladesh. For any questions or concerns regarding these Terms and Conditions</p>', 'Welcome to Bir-ecommerce  By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.', 'Welcome to Bir-ecommerce  By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.', 'Welcome to Bir-ecommerce  By accessing or using our website and services, you agree to comply with and be bound by these Terms and Conditions and our Privacy Policy. If you do not agree with any part of these terms, please refrain from using our website or services.', NULL, NULL, 2, 1, NULL, 1, '2025-11-04 16:06:51', '2025-11-04 16:06:51'),
(3, 'Bir E-commerce Privacy and Policy', 'bir-e-commerce-privacy-and-policy', '', '<p>At Bir E-commerce, we respect your privacy and are committed to protecting the personal information you share with us. This Privacy Policy explains how we collect, use, and safeguard your information when you visit or make purchases on our website. By using our services, you consent to the practices described in this policy.</p><p>We collect personal information that you voluntarily provide to us when creating an account, placing an order, subscribing to our newsletter, or contacting our customer service. This may include your name, email address, phone number, shipping and billing addresses, payment information, and other details necessary to complete your purchase or provide support.</p><p>The information we collect is used to process orders, manage your account, provide customer support, improve our website and services, and communicate with you about your orders, promotions, or updates that may interest you. We may also use your data to analyze shopping trends and improve our product offerings.</p><p>We are committed to protecting your personal information. All sensitive data, such as payment information, is encrypted and transmitted securely through trusted payment gateways. We implement reasonable administrative, technical, and physical safeguards to protect your data from unauthorized access, disclosure, alteration, or destruction.</p><p>We do not sell, trade, or rent your personal information to third parties. However, we may share your information with trusted service providers, such as delivery partners, payment processors, or IT service providers, strictly for the purpose of fulfilling your orders or improving our services. We require that these partners maintain confidentiality and use your data only for the purposes specified by us.</p><p>Our website may contain links to third-party websites. Please note that we are not responsible for the privacy practices or content of these external websites, and we encourage you to review their privacy policies before providing any personal information.</p><p>You have the right to access, update, or delete your personal information stored with us. If you wish to exercise any of these rights, please contact our support team at birgh.group.digital@gmail.com. We will respond to your request promptly in accordance with applicable laws.</p>', 'Bir E-commerce Privacy and Policy', 'Bir E-commerce Privacy and Policy', 'Bir E-commerce Privacy and Policy', NULL, NULL, 4, 1, NULL, 1, '2025-11-04 16:10:04', '2025-11-04 16:10:04'),
(4, 'Return Policy', 'return-policy', '', '<p>At Bir E-commerce, we want you to be completely satisfied with your purchase. If for any reason you are not satisfied, our return policy allows you to return or exchange products under certain conditions. Please read this policy carefully to understand your rights and responsibilities.</p><p>Products can be returned or exchanged within [insert number] days from the date of delivery. To be eligible for a return, the product must be in its original condition, unused, and with all original packaging, tags, and accessories intact. Products that are damaged, altered, or missing parts will not be accepted for return or refund.</p><p>To initiate a return, please contact our customer service team at [your-email@example.com<br>] or [your-phone-number] with your order details and reason for the return. Our team will guide you through the return process, including the return shipping instructions.</p><p>Once we receive and inspect the returned product, we will notify you about the approval or rejection of your return. If approved, your refund will be processed using the original payment method within 5 business days. Shipping costs, unless the return is due to our error, are typically the responsibility of the customer.</p><p>Certain items are non-returnable, including:</p><p>Personalized or custom-made products</p><p>Sale or clearance items (unless defective)</p><p>Products damaged due to misuse or mishandling</p><p>We strive to ensure all products are delivered in perfect condition. If you receive a defective or damaged product, please contact us immediately, and we will arrange a replacement or full refund at no additional cost to you.</p>', 'Return Policy', 'Return Policy', 'Return Policy', NULL, NULL, 5, 1, NULL, 1, '2025-11-04 16:11:56', '2025-11-04 16:11:56');

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
(5, 'Return Policy', 1, '2025-10-11 19:01:22', '2025-10-11 19:01:22');

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
  `first_update` int(11) NOT NULL COMMENT '1=first update\r\n0=no update',
  `status` int(11) DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `description_full`, `purchase_order_id`, `supplier_id`, `categoryId`, `subcategoryId`, `meta_title`, `meta_description`, `meta_keyword`, `sku`, `cash_dev_status`, `price`, `discount_price`, `unit`, `stock_qty`, `stock_mini_qty`, `shipping_days`, `thumnail_img`, `first_update`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 'Flat File With Plastic Handle(Bir Standard) 08\"', 'flat-file-with-plastic-handlebir-standard-08', NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150.00, NULL, NULL, 50, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:26', '2025-11-06 10:15:26'),
(2, 'Half Round File ( Wooden)-10\'\'', 'half-round-file-wooden-10', NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130.00, NULL, NULL, 61, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:26', '2025-11-06 10:15:26'),
(3, 'Half Round File ( Wooden)-8\'\'', 'half-round-file-wooden-8', NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 104.00, NULL, NULL, 86, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:26', '2025-11-06 10:15:26'),
(4, 'Tri Angel File-4\" Mini (6pcs Set)-Super', 'tri-angel-file-4-mini-6pcs-set-super', NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 155.00, NULL, NULL, 187, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:26', '2025-11-06 10:15:26'),
(5, 'Tri Angle File-Mini-4\" ( 6pcs Set)', 'tri-angle-file-mini-4-6pcs-set', NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125.00, NULL, NULL, 1095, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:26', '2025-11-06 10:15:26'),
(6, 'American Claw Hammer with Fiber Glass-16OZ', 'american-claw-hammer-with-fiber-glass-16oz', NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 252.00, NULL, NULL, 4985, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:26', '2025-11-06 10:15:26'),
(7, 'Ball Peen Hammer (Standard) -16 Oz (1 LB)', 'ball-peen-hammer-standard-16-oz-1-lb', NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125.00, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:26', '2025-11-06 10:15:26'),
(8, 'Ball Pein Hammer-04 OZ ( 1/4 LB)', 'ball-pein-hammer-04-oz-14-lb', NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 164.00, NULL, NULL, 222, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:26', '2025-11-06 10:15:26'),
(9, 'Ball Pein Hammer-08 Oz (1/2 LB)', 'ball-pein-hammer-08-oz-12-lb', NULL, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 188.00, NULL, NULL, 1889, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:26', '2025-11-06 10:15:26'),
(10, 'Axe(Bir Brand)-Fiber Handle', 'axebir-brand-fiber-handle', NULL, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 430.00, NULL, NULL, 25, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:40', '2025-11-06 10:15:40'),
(11, 'Axe ( Bir Brand)-Premium Quality', 'axe-bir-brand-premium-quality', NULL, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 520.00, NULL, NULL, 284, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:40', '2025-11-06 10:15:40'),
(12, 'Axe(Bir Brand)-Small', 'axebir-brand-small', NULL, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 455.00, NULL, NULL, 3326, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:40', '2025-11-06 10:15:40'),
(13, 'Drill Bit ( 6.5mm-Super)', 'drill-bit-65mm-super', NULL, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16.50, NULL, NULL, 402, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:40', '2025-11-06 10:15:40'),
(14, 'Drill Chuck (1.5-13mm)', 'drill-chuck-15-13mm', NULL, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 245.00, NULL, NULL, 2609, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:40', '2025-11-06 10:15:40'),
(15, 'Cutting Tools', 'cutting-tools', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 143.31, NULL, NULL, 57563, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:59', '2025-11-06 10:15:59'),
(16, 'Abresive Paper Sheet-(120-White)', 'abresive-paper-sheet-120-white', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12.50, NULL, NULL, 442, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:59', '2025-11-06 10:15:59'),
(17, 'Aluminium Cutter-12\"', 'aluminium-cutter-12', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1300.00, NULL, NULL, 159, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:59', '2025-11-06 10:15:59'),
(18, 'American Snip-12\"', 'american-snip-12', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 295.00, NULL, NULL, 102, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:59', '2025-11-06 10:15:59'),
(19, 'Axe(Bir Brand)-Fiber Handle', 'axebir-brand-fiber-handle', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 430.00, NULL, NULL, 25, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:59', '2025-11-06 10:15:59'),
(20, 'Axe ( Bir Brand)-Premium Quality', 'axe-bir-brand-premium-quality', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 520.00, NULL, NULL, 284, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:59', '2025-11-06 10:15:59'),
(21, 'Axe(Bir Brand)-Small', 'axebir-brand-small', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 455.00, NULL, NULL, 3326, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:59', '2025-11-06 10:15:59'),
(22, 'Bolt Cutter-12\"', 'bolt-cutter-12', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 520.00, NULL, NULL, 432, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:59', '2025-11-06 10:15:59'),
(23, 'Cable Cutter-10\"', 'cable-cutter-10', NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 235.00, NULL, NULL, 42, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:15:59', '2025-11-06 10:15:59'),
(24, 'Aluminium Level with Magnet-09', 'aluminium-level-with-magnet-09', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 215.00, NULL, NULL, 210, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:13', '2025-11-06 10:16:13'),
(25, '4\" Daimond  Cup Grinding Disk-Single', '4-daimond-cup-grinding-disk-single', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 240.00, NULL, NULL, 7, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:13', '2025-11-06 10:16:13'),
(26, '4\" Daimond Cup Grinding Wheel-Std.Quality', '4-daimond-cup-grinding-wheel-stdquality', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 230.00, NULL, NULL, 251, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:13', '2025-11-06 10:16:13'),
(27, '4\" Daimond Cutter-Professional Quality-Plain Saw', '4-daimond-cutter-professional-quality-plain-saw', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 105.00, NULL, NULL, 3684, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:13', '2025-11-06 10:16:13'),
(28, '4\" Daimond Cutter-Professional Quality-Seg.Cutting', '4-daimond-cutter-professional-quality-segcutting', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108.00, NULL, NULL, 80, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:13', '2025-11-06 10:16:13'),
(29, '4\" Daimond Cutter-Standard Quality-Seg.Cutting', '4-daimond-cutter-standard-quality-segcutting', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 94.00, NULL, NULL, 39735, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:13', '2025-11-06 10:16:13'),
(30, '4\" Diamond Cup Grinding Wheel (Double)', '4-diamond-cup-grinding-wheel-double', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 382.00, NULL, NULL, 400, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:13', '2025-11-06 10:16:13'),
(31, '4\" Grinding Wheel', '4-grinding-wheel', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40.00, NULL, NULL, 710, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:13', '2025-11-06 10:16:13'),
(32, '4\'\' Cutting Disc- Thin Turbo Blade', '4-cutting-disc-thin-turbo-blade', NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150.00, NULL, NULL, 6826, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:13', '2025-11-06 10:16:13'),
(33, '4\'\' Daimond Cutter-Standard Quality-Plain Saw', '4-daimond-cutter-standard-quality-plain-saw', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 94.00, NULL, NULL, 24429, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(34, '4.5\" Daimond Cutter (Multi Prof.Quality)', '45-daimond-cutter-multi-profquality', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 115.00, NULL, NULL, 7212, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(35, '5\" Daimond Cup Grinding Wheel-Single', '5-daimond-cup-grinding-wheel-single', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 330.00, NULL, NULL, 1177, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(36, '5\" Daimond Cutter -Platinum Quality-Seg Cutting', '5-daimond-cutter-platinum-quality-seg-cutting', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 155.00, NULL, NULL, 467, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(37, '5\" Daimond Cutter -Professional Quality-Plain Saw', '5-daimond-cutter-professional-quality-plain-saw', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133.00, NULL, NULL, 37585, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(38, '5\" Daimond Cutter-Professional Quality-Seg.Cutting', '5-daimond-cutter-professional-quality-segcutting', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133.00, NULL, NULL, 74470, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(39, '5\" Diamond Cup Grinding Wheel', '5-diamond-cup-grinding-wheel', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 550.00, NULL, NULL, 250, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(40, '7\" Daimond Cutter( Super Quality)', '7-daimond-cutter-super-quality', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 285.00, NULL, NULL, 103, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(41, '7\'\' Dimond Cutter Seg Cutting Proffessional Quality', '7-dimond-cutter-seg-cutting-proffessional-quality', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 250.00, NULL, NULL, 13225, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(42, '7\' Grinding Wheel (180x6mmx22mm)', '7-grinding-wheel-180x6mmx22mm', NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138.00, NULL, NULL, 177, NULL, NULL, NULL, 0, 0, NULL, '2025-11-06 10:16:23', '2025-11-06 10:16:23'),
(43, '9\" Dimond Cutter Seg Cutting Proffessional Quality', '9-dimond-cutter-seg-cutting-proffessional-quality', '', 2, 3, 1, 25, '9\" Dimond Cutter Seg Cutting Proffessional Quality', '9\" Dimond Cutter Seg Cutting Proffessional Quality9\" Dimond Cutter Seg Cutting Proffessional Quality9\" Dimond Cutter Seg Cutting Proffessional Quality', '9\" Dimond Cutter Seg Cutting Proffessional Quality', NULL, NULL, 390.00, 290.00, NULL, 1873, NULL, NULL, 'uploads/products/1762466648_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-06 22:04:08'),
(44, 'Metal Cutting Disk', 'metal-cutting-disk', '<p><strong>Vikars Premium Foldable Drying Rack – Space-Saving &amp; Heavy-Duty</strong></p><p>The <strong>Vikars Foldable Drying Rack</strong> is designed to make laundry simple, efficient, and space-friendly. Built with high-grade aluminum and stainless steel, it’s completely rust-proof and safe for delicate clothes. With a 30kg load capacity, you can dry everything from everyday wear to heavy towels and bedsheets with ease.</p><p>Its smart design lets you hook it onto balconies and window grills without tools or mount it permanently on the wall for a fixed solution. Perfect for apartments and small homes, the foldable frame saves space when not in use and allows faster drying thanks to open-air airflow.</p><p>&nbsp;</p><p><strong>Key Features:</strong></p><ol><li>✅ <strong>Premium Build:</strong> High-grade aluminum bars &amp; 100% stainless steel</li><li>✅ <strong>Rust-Proof &amp; Long-Lasting:</strong> Safe for delicate clothes</li><li>✅ <strong>Heavy Load Capacity:</strong> Holds up to 30kg of laundry</li><li>✅ <strong>Easy Installation:</strong> Hook on grills or drill to walls</li><li>✅ <strong>Space-Saving:</strong> Compact &amp; foldable design</li><li>✅ <strong>Versatile Use:</strong> Suitable for indoor &amp; outdoor drying</li><li>✅ <strong>Quick Drying:</strong> Maximizes airflow for faster results</li></ol><p>&nbsp;</p><p>Upgrade your laundry routine with a drying rack that combines durability, convenience, and style—all in one.</p><p>&nbsp;</p>', 2, 3, 2, 27, '333', 'hh', 'hh', NULL, NULL, 150.00, 170.00, NULL, 800, NULL, NULL, 'uploads/products/1762453039_metal-cutting-disk.jpg', 1, 1, NULL, '2025-11-06 10:16:23', '2025-11-06 20:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribue`
--

CREATE TABLE `product_attribue` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attributeName` varchar(255) DEFAULT NULL,
  `buyingPrice` decimal(10,2) DEFAULT NULL,
  `sellingPrice` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_attribue`
--

INSERT INTO `product_attribue` (`id`, `product_id`, `attributeName`, `buyingPrice`, `sellingPrice`, `created_at`, `updated_at`) VALUES
(19, 44, 'asdfasdf', 33.00, 33.00, '2025-11-06 15:38:39', '2025-11-06 15:38:39'),
(20, 44, 'Test', 2222.00, 3333333.00, '2025-11-06 15:38:39', '2025-11-06 15:38:39'),
(23, 43, 'Test', 500.00, 700.00, '2025-11-06 16:10:30', '2025-11-06 16:10:30'),
(24, 43, 'Test-1', 5000.00, 6000.00, '2025-11-06 16:10:30', '2025-11-06 16:10:30');

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
(8, 43, 'uploads/product_gallery/1762466648_690d1b58e0f5b_9-dimond-cutter-seg-cutting-proffessional-quality.jpg', '2025-11-06 22:04:08', '2025-11-06 22:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory`
--

CREATE TABLE `product_inventory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attributeId` int(11) DEFAULT NULL,
  `product_attribue_id` int(11) DEFAULT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `qty_in` int(11) NOT NULL,
  `stock_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, '4\'\' Cutting Disc- Thin Turbo Blade', '', '', 6826, 150.00, '2025-11-04 09:49:31', '2025-11-04 09:49:31');

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
(6, '1', '0001456', '2025-11-05', 1838119.00, 1, '', '', '', '2025-11-04 09:48:10', '2025-11-05 22:15:26');

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
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

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
('5DaVpALc9TQRNNtlj79TMDIuwD3FXSXuhRBkngXz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieFBEbFJFQWZwMGFYenBURVdJc0xTTm5rZEp6U2xGeHJHaHBSWDB1ZiI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdHMvMTc2MjQ1Mjg2OF9tZXRhbC1jdXR0aW5nLWRpc2suanBnIjt9fQ==', 1762452921),
('9CN1UKrS69XZXjj1m5QDWeSEjguDpdEaL7ALqzaI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3N4YnR3VlZ5Sk5GcllwTDhaQnR1YVZNWkw3dGR3TE5JbnlUUnRsRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762452723),
('efs7tipJ5EzeJnZ0auszXc5CNzyTIWobHe7NckLf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFFIWURSd1VpRjROSUdTWmhoOXdjdkNOU1ZhYWFjSzN6Y0ZDakdGTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1761881044),
('eJbDNwaKWhZj2mIgoERcITQRVCCZNLUJFKcIGGRm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0xSRkl3ZmxoSVlBZDhqVnlwNkJNN1hHYWpoZWJwcEdTNHd3RFIyTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762323151),
('GorcfXOpzrhavNcKGijKPiLt2h9hQ7xDAjNa5eiG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNU9SS1NhdWJhdVBQRE5iSU5YbGRNbVhYV2dPRjhXRkE1UDVCOGZNcyI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdHMvMTc2MjQ1MDk3N19tZXRhbC1jdXR0aW5nLWRpc2suanBnIjt9fQ==', 1762452770),
('hGpOWPtr4XspCKpFngVdv1nKH0Xp9cDzGMbsN4cY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY3F4R0FpbFhobTdZaG11cldTRmF1MzQxMnljOWROQWVuUk9TYmozdiI7czo1OiJlcnJvciI7czozODoiT29wcyEgSW52YWxpZCBVUkwsIHJlZGlyZWN0ZWQgdG8gaG9tZS4iO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YToxOntpOjA7czo1OiJlcnJvciI7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3VwbG9hZHMvcHJvZHVjdHMvMTc2MjQ1MDk3N19tZXRhbC1jdXR0aW5nLWRpc2suanBnIjt9fQ==', 1762452722),
('iAKJpaVSwUSnDld3LbNvU8A6GSOOMrh24jFQVoBb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHBtOThhb1BjY1QzUkNGVVpvM2h3eTM1a25GMlNNaDE2Q2RsakdBMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1761881086),
('IxIVkuVlhVRYmeQK2DG7iDZ1zhWnDWfUbyOmj0u7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVpVcWFzN1NhNERmQmF4aXd3cFA2V042MVZBTHI2aktKYWRTRVFkRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762323152),
('IXzsXxXxifUvfg7xvzW2FSXEhF8waBIXvwnyCgym', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHRtZXNvM1RTZklJTDZ4bmR5b1IyWHU1UXQ1TEFHaXNiWGZjT1BHMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1762452782),
('j7FtBdbEbrLDtD8wGi0smw633XW4Ny9dagUiH0Xn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmozdjFXZ24zbUlxa0tIdkFtNWppMmp2bjR3WDJiMFpkaWRxbmZCNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762323146),
('muKRZxlfoNHYoizduqfoFI3WymEpJxAnltBJQ0rO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2lnRElvYTFqZGNrM3RZM0ZXdEpkczFLeEc3emxQRGVGV0ZoOVpLaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762452922),
('OhcktcyqQgEVZQgnQxQ2PNcs0OHV1IyNEliW4GGJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFNzWTBqdmI4dU9YWHJQQ1E3UzNOWXN0c2F5SzFuQzZtQXFNRmVOViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762323151),
('qQE2kqqL80QuXEqrCm0bd8ipIQpg8V66JZ0D7ALm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjRVNnlCR25WN3VrVnM5eWp4RTNYN2V6NDUzVllQU3VzWmNqWE45NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762452771),
('TfHFT6C1vj1dxMvkPOqgA9XJNF7EKUnse6GmSV6G', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUVvVFN3clMyNmRxY1YzQnNpY0lONEZIMkdrSXVUVHpxY01yOWhDayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762323151),
('Uy1eqwCFWq5y1Udx4huiNZ7X17duljhv2W5iUxGq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0YwNzFQdmNqVFV5cTU3aFF2SzBxTVgxbVo5U1YyUWJiOXBmd3E2RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762323151),
('VSjdrNnBmkmgGhlTy88YdIg39LNr5Qcx4RvHxK2G', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:144.0) Gecko/20100101 Firefox/144.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3B0cjg5Z1k5RENldjhoanVnOGlWUzdNSHdWdUlLcXFEdDZ2T0VUSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1761881021);

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
(1, 'Vogexi', '+880 1301-047166', 'info@vogexi.com', 'Section 1, Mirpur, Dhaka-1216, Bangladesh', '+8801301047166', '01740586574', '+880 1301-047166', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'At VOGEXI, fashion is more than just clothing — it is a reflection of identity, a canvas for expression, and a statement of elegance. Our philosophy centers on empowering individuals to express their unique personalities through premium apparel that blends timeless aesthetics with contemporary edge. We believe that confidence begins with how you present yourself to the world, and VOGEXI is here to ensure that every detail of your outfit speaks volumes about your style, strength, and sophistication.', 'Copyright © 2025 uic . All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', '', 5, 'https://www.facebook.com/vogexi', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '', 'https://vogexi.com/', '+880 1301-047166', 60, 130, 5, 0, 0, 0, NULL, '2024-05-12 05:32:50', '2025-10-18 22:29:40');

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
(10, 'test1', 'test1@gmail.com', 4, NULL, '$2y$12$wzaLJmZ8YnxG0MP5yk48POa8b27JgVTy0QBRGrTTX1WrAyHdMfE1S', '01915728985', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-11-02 03:42:41', '2025-11-02 03:42:41');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_attribue`
--
ALTER TABLE `product_attribue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_img_history`
--
ALTER TABLE `product_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_inventory`
--
ALTER TABLE `product_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_particular`
--
ALTER TABLE `purchase_order_particular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
