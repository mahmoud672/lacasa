-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 12:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lacasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `mission_image_id` int(10) UNSIGNED DEFAULT NULL,
  `vision_image_id` int(10) UNSIGNED DEFAULT NULL,
  `values_image_id` int(10) UNSIGNED DEFAULT NULL,
  `approach_image_id` int(10) UNSIGNED DEFAULT NULL,
  `goals_image_id` int(10) UNSIGNED DEFAULT NULL,
  `career_image_id` int(11) DEFAULT NULL,
  `bio_image_id` int(10) UNSIGNED DEFAULT NULL,
  `video_id` int(10) UNSIGNED DEFAULT NULL,
  `bio_video_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image_id`, `mission_image_id`, `vision_image_id`, `values_image_id`, `approach_image_id`, `goals_image_id`, `career_image_id`, `bio_image_id`, `video_id`, `bio_video_id`, `created_at`, `updated_at`) VALUES
(1, 1920, 1921, 1922, 1923, 908, 1452, NULL, 1807, 54, 55, '2019-08-19 22:00:00', '2021-11-03 11:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `type`, `image_id`, `created_by`, `created_at`, `updated_at`) VALUES
(3, '1', 1865, 3, '2020-01-08 13:24:41', '2021-07-26 06:45:28'),
(10, '2', 1334, 3, '2021-02-16 13:23:41', '2021-02-16 13:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `service_id` int(10) DEFAULT NULL,
  `gender` int(10) DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `came_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `age` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `email`, `phone`, `birth_date`, `service_id`, `gender`, `file_id`, `message`, `came_from`, `created_at`, `updated_at`, `age`, `weight`, `height`) VALUES
(2, 'mahmoud gad', 'mahmoudgad672@gmail.com', '01111111111', NULL, NULL, NULL, 2, NULL, NULL, '2020-06-11 10:26:19', '2020-06-11 10:26:19', NULL, NULL, NULL),
(3, 'mr fifty', 'fifty@gmail.com', '01111111111', NULL, NULL, NULL, 3, NULL, NULL, '2021-02-16 12:51:06', '2021-02-16 12:51:06', NULL, NULL, NULL),
(4, 'mr fifty', 'fifty@gmail.com', '01111111111', NULL, NULL, NULL, 4, NULL, NULL, '2021-03-18 14:53:47', '2021-03-18 14:53:47', NULL, NULL, NULL),
(5, '7oda Gad', '7odagad@gmail.com', '+11111111', NULL, NULL, NULL, 5, NULL, NULL, '2021-04-22 10:21:11', '2021-04-22 10:21:11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) DEFAULT NULL,
  `open_graph_id` int(10) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `url`, `image_id`, `page_id`, `open_graph_id`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'first-blog-011611', 1728, 104, 101, 3, NULL, '2019-12-22 10:45:50', '2021-06-22 12:44:12'),
(2, 'second-blog-011655', 1729, 105, 102, 3, NULL, '2019-12-22 10:46:41', '2021-06-22 12:44:22'),
(3, 'third-blog-011729', 1730, 106, 103, 3, NULL, '2019-12-22 10:47:22', '2021-06-22 12:44:34'),
(4, 'forth-blog', 1731, 107, 104, 3, NULL, '2019-12-22 10:47:59', '2021-06-22 12:44:45'),
(5, 'first-event-014009', 1679, 229, 227, 3, 'events', '2021-06-15 11:40:09', '2021-06-15 11:40:09'),
(6, 'second-event-014134', 1680, 230, 228, 3, 'events', '2021-06-15 11:41:34', '2021-06-15 11:41:34'),
(7, 'third-event-014517', 1681, 231, 229, 3, 'events', '2021-06-15 11:45:17', '2021-06-15 11:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `url`, `image_id`, `phone`, `email`, `phone_alt`, `location`, `created_at`, `updated_at`) VALUES
(1, 'melbourne-headquarters-015635', 1504, '+111 22-33-44', 'info@canvas.com', '+111 22-33-44', NULL, '2019-09-07 22:00:00', '2021-07-05 11:56:35'),
(7, 'london-headquaters-015659', 1505, '+111 22-33-44', 'info@canvas.com', '+111 22-33-44', NULL, '2021-05-20 08:01:12', '2021-07-05 11:56:59'),
(8, 'warehouse-015722', NULL, '+111 22-33-44', 'info@canvas.com', '+111 22-33-44', NULL, '2021-07-05 11:38:13', '2021-07-05 11:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `branch_client_images`
--

CREATE TABLE `branch_client_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch_client_images`
--

INSERT INTO `branch_client_images` (`id`, `branch_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1500, '2021-05-20 06:12:45', '2021-05-20 06:12:45'),
(2, 1, 1501, '2021-05-20 06:12:45', '2021-05-20 06:12:45'),
(3, 1, 1502, '2021-05-20 06:12:45', '2021-05-20 06:12:45'),
(4, 1, 1503, '2021-05-20 06:12:45', '2021-05-20 06:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `open_graph_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `image_id`, `icon`, `url`, `video_id`, `parent_category_id`, `location`, `city_id`, `open_graph_id`, `page_id`, `form_id`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 1340, 1341, 'women-products', NULL, NULL, NULL, NULL, 182, 185, 80, 3, '2021-02-17 11:07:36', '2021-02-17 09:07:36', NULL),
(12, 1342, 1343, 'men-prodiucts', NULL, NULL, NULL, NULL, 184, 187, 82, 3, '2021-02-17 11:08:02', '2021-02-17 09:08:02', NULL),
(13, 1344, 1345, 'kids-products', NULL, NULL, NULL, NULL, 196, 199, 93, 3, '2021-02-17 11:08:25', '2021-02-17 09:08:25', NULL),
(14, 1346, 1347, 'face-beauty', NULL, NULL, NULL, NULL, 200, 203, 97, 3, '2021-02-17 11:08:42', '2021-02-17 09:08:42', NULL),
(15, 1348, 1349, 'first-feminine-product-111207', NULL, 10, NULL, NULL, 211, 214, 108, 3, '2021-02-17 09:12:08', '2021-02-17 09:12:08', NULL),
(16, 1350, 1351, 'second-feminine-product-111307', NULL, 10, NULL, NULL, 212, 215, 109, 3, '2021-02-17 09:13:07', '2021-02-17 09:13:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `parent_city_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `country_id`, `parent_city_id`, `region_id`, `created_by`, `created_at`, `updated_at`) VALUES
(8, NULL, NULL, NULL, 3, '2020-01-05 15:17:53', '2020-01-05 15:17:53'),
(9, NULL, NULL, NULL, 3, '2020-01-05 15:20:00', '2020-01-05 15:20:00'),
(10, NULL, 8, NULL, 3, '2020-01-05 15:50:24', '2020-01-05 15:50:24'),
(11, NULL, 8, NULL, 3, '2020-01-05 16:18:11', '2020-01-05 16:18:11'),
(12, NULL, 9, NULL, 3, '2020-01-05 16:19:29', '2020-01-05 16:19:29'),
(13, NULL, 9, NULL, 3, '2020-01-06 09:55:21', '2020-01-06 09:55:21'),
(14, NULL, NULL, NULL, 3, '2020-01-06 14:51:34', '2020-01-06 14:51:34'),
(15, NULL, 14, NULL, 3, '2020-01-06 14:53:08', '2020-01-06 14:53:08'),
(16, NULL, 14, NULL, 3, '2020-01-06 14:53:43', '2020-01-06 14:53:43'),
(17, NULL, 8, NULL, 3, '2020-01-09 10:41:34', '2020-01-09 10:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `image_id`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1457, NULL, 3, '2021-04-14 09:30:22', '2021-04-14 07:30:22', NULL),
(2, 1458, NULL, 3, '2021-04-14 09:30:37', '2021-04-14 07:30:37', NULL),
(3, 1459, NULL, 3, '2021-04-14 09:30:49', '2021-04-14 07:30:49', NULL),
(4, 1460, NULL, 3, '2021-04-14 09:31:02', '2021-04-14 07:31:02', NULL),
(5, 1461, NULL, 3, '2021-04-14 09:31:14', '2021-04-14 07:31:14', NULL),
(9, 704, '1', 3, '2019-12-31 16:40:34', '2019-12-31 16:40:34', NULL),
(10, 705, '1', 3, '2019-12-31 16:41:02', '2019-12-31 16:41:02', NULL),
(11, 706, '1', 3, '2019-12-31 16:41:25', '2019-12-31 16:41:25', NULL),
(12, 707, '1', 3, '2019-12-31 16:42:06', '2019-12-31 16:42:06', NULL),
(13, 708, '1', 3, '2019-12-31 16:53:11', '2019-12-31 16:53:11', NULL),
(14, 709, '1', 3, '2019-12-31 16:53:37', '2019-12-31 16:53:37', NULL),
(15, 710, '1', 3, '2019-12-31 16:54:50', '2019-12-31 16:54:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone3` varchar(191) DEFAULT NULL,
  `email2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `address_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_en2` text DEFAULT NULL,
  `address_ar2` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pintrest` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snapchat` varchar(191) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `phone`, `phone_alt`, `phone2`, `phone3`, `email2`, `file_id`, `address_en`, `address_ar`, `address_en2`, `address_ar2`, `location`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `pintrest`, `behance`, `whatsapp`, `google_plus`, `snapchat`, `updated_at`, `created_at`) VALUES
(1, 'mahmoudgad672@gmail.com', '0228124305', '0228124306', NULL, NULL, NULL, NULL, '78- عمارات رابعة الاستثماري - مدينة نصر - القاهرة', '78- عمارات رابعة الاستثماري - مدينة نصر - القاهرة', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d13810.273315112216!2d31.342725649999995!3d30.077905700000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sar!2seg!4v1565798249797!5m2!1sar!2seg', 'https://www.facebook.com/', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.youtube.com', NULL, 'https://pintrest.com', NULL, '+201004996929', 'https://plus.google.com', 'https://www.snapchat.com', '2021-07-29 13:27:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `image_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1520, NULL, '2020-01-18 19:36:59', '2021-05-23 10:36:42'),
(2, 1521, NULL, '2020-01-18 19:44:59', '2021-05-23 10:37:40'),
(3, 1522, NULL, '2020-01-18 19:46:09', '2021-05-23 10:39:09'),
(7, 1044, '1', '2020-06-14 11:26:50', '2020-06-14 11:26:50'),
(11, 1774, '2', '2021-03-21 10:34:06', '2021-07-06 08:13:43'),
(12, 1775, '2', '2021-03-21 10:35:07', '2021-07-06 08:14:34'),
(13, 1776, '2', '2021-03-21 10:35:52', '2021-07-06 08:14:54'),
(15, NULL, '3', '2021-05-23 09:54:10', '2021-05-23 09:54:10'),
(16, NULL, '3', '2021-05-23 10:30:57', '2021-05-23 10:30:57'),
(17, NULL, '3', '2021-05-23 10:32:40', '2021-05-23 10:32:40'),
(18, NULL, '3', '2021-05-23 10:34:42', '2021-05-23 10:34:42'),
(19, NULL, '1', '2021-05-25 08:12:04', '2021-05-25 08:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `path`, `created_at`, `updated_at`) VALUES
(1, '1577713064_1.5-erd.pdf', 'dashboardImages/file/1577713064_1.5-erd.pdf', '2019-12-30 21:37:44', '2019-12-30 21:37:44'),
(2, '1591878379_21.pdf', 'dashboardImages/file/1591878379_21.pdf', '2020-06-11 10:26:19', '2020-06-11 10:26:19'),
(3, '210216-025106_swiss_cv_01.jpeg', 'dashboardImages/file/210216-025106_swiss_cv_01.jpeg', '2021-02-16 12:51:06', '2021-02-16 12:51:06'),
(4, '210318-045346_white-cv-template-with-blue-grey-details_1435-74.jpg', 'dashboardImages/file/210318-045346_white-cv-template-with-blue-grey-details_1435-74.jpg', '2021-03-18 14:53:46', '2021-03-18 14:53:46'),
(5, '210422-122111_t4-orange.jpg', 'dashboardImages/file/210422-122111_t4-orange.jpg', '2021-04-22 10:21:11', '2021-04-22 10:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `formId`, `page_id`, `tracking_id`, `header_code`, `body_code`, `created_at`, `updated_at`) VALUES
(4, 'تكميم المعدة', NULL, NULL, NULL, NULL, NULL, '2019-09-10 11:46:31', '2019-09-10 11:46:31'),
(5, 'تحويل مسار المعدة', NULL, NULL, NULL, NULL, NULL, '2019-09-10 11:50:03', '2019-09-10 11:50:03'),
(6, 'حزام المعدة', NULL, NULL, NULL, NULL, NULL, '2019-09-10 11:52:28', '2019-09-10 11:52:28'),
(7, 'fd', NULL, NULL, NULL, NULL, NULL, '2019-12-05 14:01:47', '2019-12-05 14:01:47'),
(8, 'شءشء', NULL, NULL, NULL, NULL, NULL, '2019-12-05 14:14:15', '2019-12-05 14:14:15'),
(9, 'Gastroscopy', NULL, NULL, NULL, NULL, NULL, '2019-12-16 08:26:20', '2019-12-16 08:26:20'),
(10, 're', NULL, NULL, NULL, NULL, NULL, '2019-12-16 08:32:45', '2019-12-16 08:32:45'),
(11, 'rihanna', NULL, NULL, NULL, NULL, NULL, '2019-12-16 08:36:08', '2019-12-16 08:36:08'),
(12, 'wdewd', NULL, NULL, NULL, NULL, NULL, '2019-12-16 08:37:49', '2019-12-16 08:37:49'),
(13, 'sfef', NULL, NULL, NULL, NULL, NULL, '2019-12-16 09:43:17', '2019-12-16 09:43:17'),
(14, 'edfe efe', NULL, NULL, NULL, NULL, NULL, '2019-12-16 09:48:25', '2019-12-16 09:48:25'),
(15, 'fdfdf', NULL, NULL, NULL, NULL, NULL, '2019-12-16 09:52:16', '2019-12-16 09:52:16'),
(16, 'efef', NULL, NULL, NULL, NULL, NULL, '2019-12-16 10:13:37', '2019-12-16 10:13:37'),
(17, 'فقدان العظام', NULL, NULL, NULL, NULL, NULL, '2019-12-22 09:38:56', '2019-12-22 09:38:56'),
(18, 'فقدان العظام', NULL, NULL, NULL, NULL, NULL, '2019-12-22 09:39:28', '2019-12-22 09:39:28'),
(19, 'فقدان العظام', NULL, NULL, NULL, NULL, NULL, '2019-12-22 09:40:28', '2019-12-22 09:40:28'),
(20, 'فقدان العظام', NULL, NULL, NULL, NULL, NULL, '2019-12-22 09:42:28', '2019-12-22 09:42:28'),
(21, 'حالات شلل الأطفال', NULL, NULL, NULL, NULL, NULL, '2019-12-22 09:45:32', '2019-12-22 09:45:32'),
(22, 'الام الكتف الايمن', NULL, NULL, NULL, NULL, NULL, '2019-12-22 09:46:33', '2019-12-22 09:46:33'),
(23, 'حالات فقدان الانسجة', NULL, NULL, NULL, NULL, NULL, '2019-12-22 09:47:44', '2019-12-22 09:47:44'),
(24, 'تشنج العضلات', NULL, NULL, NULL, NULL, NULL, '2019-12-22 09:48:34', '2019-12-22 09:48:34'),
(25, 'التهاب المفاصل', NULL, NULL, NULL, NULL, NULL, '2019-12-22 09:49:23', '2019-12-22 09:49:23'),
(26, 'katy perry', NULL, NULL, NULL, NULL, NULL, '2019-12-24 23:05:55', '2019-12-24 23:05:55'),
(27, 'katy perry', NULL, NULL, NULL, NULL, NULL, '2019-12-24 23:06:47', '2019-12-24 23:06:47'),
(28, 'katy perry', NULL, NULL, NULL, NULL, NULL, '2019-12-24 23:08:50', '2019-12-24 23:08:50'),
(29, 'asadas', NULL, NULL, NULL, NULL, NULL, '2019-12-24 23:51:23', '2019-12-24 23:51:23'),
(30, 'asadas', NULL, NULL, NULL, NULL, NULL, '2019-12-24 23:52:05', '2019-12-24 23:52:05'),
(31, 'erete', NULL, NULL, NULL, NULL, NULL, '2019-12-25 00:13:44', '2019-12-25 00:13:44'),
(32, 'erete', NULL, NULL, NULL, NULL, NULL, '2019-12-25 00:15:16', '2019-12-25 00:15:16'),
(33, 'fdfedfedrg rgrf', NULL, NULL, NULL, NULL, NULL, '2019-12-25 00:18:14', '2019-12-25 00:18:14'),
(34, 'sfdsfged', NULL, NULL, NULL, NULL, NULL, '2019-12-25 01:01:31', '2019-12-25 01:01:31'),
(35, 'dfgrgrfg', NULL, NULL, NULL, NULL, NULL, '2019-12-25 01:09:54', '2019-12-25 01:09:54'),
(36, 'shady', NULL, NULL, NULL, NULL, NULL, '2019-12-25 01:30:15', '2019-12-25 01:30:15'),
(37, 'uniform', NULL, NULL, NULL, NULL, NULL, '2019-12-25 01:56:02', '2019-12-25 01:56:02'),
(38, 'hospitality', NULL, NULL, NULL, NULL, NULL, '2019-12-25 02:08:18', '2019-12-25 02:08:18'),
(39, 'linen', NULL, NULL, NULL, NULL, NULL, '2019-12-25 18:41:58', '2019-12-25 18:41:58'),
(40, 'bath', NULL, NULL, NULL, NULL, NULL, '2019-12-25 19:05:47', '2019-12-25 19:05:47'),
(41, 'bedding', NULL, NULL, NULL, NULL, NULL, '2019-12-25 19:10:42', '2019-12-25 19:10:42'),
(42, 'table', NULL, NULL, NULL, NULL, NULL, '2019-12-25 19:12:43', '2019-12-25 19:12:43'),
(43, 'business wear', NULL, NULL, NULL, NULL, NULL, '2019-12-25 19:17:56', '2019-12-25 19:17:56'),
(44, 'work wear', NULL, NULL, NULL, NULL, NULL, '2019-12-25 19:19:57', '2019-12-25 19:19:57'),
(45, 'health care', NULL, NULL, NULL, NULL, NULL, '2019-12-25 19:21:33', '2019-12-25 19:21:33'),
(46, 'school uniforms', NULL, NULL, NULL, NULL, NULL, '2019-12-25 19:22:37', '2019-12-25 19:22:37'),
(47, 'hospitality', NULL, NULL, NULL, NULL, NULL, '2019-12-26 01:34:42', '2019-12-26 01:34:42'),
(48, 'equipments', NULL, NULL, NULL, NULL, NULL, '2019-12-26 01:37:03', '2019-12-26 01:37:03'),
(49, 'business wear', NULL, NULL, NULL, NULL, NULL, '2019-12-26 17:46:30', '2019-12-26 17:46:30'),
(50, 'work wear', NULL, NULL, NULL, NULL, NULL, '2019-12-26 17:48:33', '2019-12-26 17:48:33'),
(51, 'health care', NULL, NULL, NULL, NULL, NULL, '2019-12-26 17:51:48', '2019-12-26 17:51:48'),
(52, 'school uniforms', NULL, NULL, NULL, NULL, NULL, '2019-12-26 17:55:44', '2019-12-26 17:55:44'),
(53, 'ergrgrg', NULL, NULL, NULL, NULL, NULL, '2019-12-26 17:57:34', '2019-12-26 17:57:34'),
(54, 'bath', NULL, NULL, NULL, NULL, NULL, '2019-12-26 18:02:19', '2019-12-26 18:02:19'),
(55, 'bedding', NULL, NULL, NULL, NULL, NULL, '2019-12-26 18:04:05', '2019-12-26 18:04:05'),
(56, 'table', NULL, NULL, NULL, NULL, NULL, '2019-12-26 18:06:33', '2019-12-26 18:06:33'),
(57, 'dg', NULL, NULL, NULL, NULL, NULL, '2019-12-26 21:55:10', '2019-12-26 21:55:10'),
(58, 'eefedfed edefdf edf', NULL, NULL, NULL, NULL, NULL, '2019-12-26 21:56:23', '2019-12-26 21:56:23'),
(59, 'ثصبثق ثثلثقلق', NULL, NULL, NULL, NULL, NULL, '2019-12-26 21:59:00', '2019-12-26 21:59:00'),
(60, 'ثف 5غ5 غفقغ ثقغافبل اتفبلا فيقايفقب', NULL, NULL, NULL, NULL, NULL, '2019-12-26 21:59:54', '2019-12-26 21:59:54'),
(61, 'hotels', NULL, NULL, NULL, NULL, NULL, '2019-12-31 21:05:22', '2019-12-31 21:05:22'),
(62, 'administration', NULL, NULL, NULL, NULL, NULL, '2019-12-31 21:07:50', '2019-12-31 21:07:50'),
(63, 'bellman doorman', NULL, NULL, NULL, NULL, NULL, '2019-12-31 21:21:21', '2019-12-31 21:21:21'),
(64, 'katy perry', NULL, NULL, NULL, NULL, NULL, '2019-12-31 21:29:17', '2019-12-31 21:29:17'),
(65, 'engineering', NULL, NULL, NULL, NULL, NULL, '2019-12-31 22:48:46', '2019-12-31 22:48:46'),
(66, 'gardening', NULL, NULL, NULL, NULL, NULL, '2019-12-31 22:56:51', '2019-12-31 22:56:51'),
(67, 'house keeping', NULL, NULL, NULL, NULL, NULL, '2019-12-31 23:02:30', '2019-12-31 23:02:30'),
(68, 'honeymoon', NULL, NULL, NULL, NULL, NULL, '2020-01-05 10:57:52', '2020-01-05 10:57:52'),
(69, 'Pilgrimage', NULL, NULL, NULL, NULL, NULL, '2020-01-05 11:00:36', '2020-01-05 11:00:36'),
(70, 'Umrah', NULL, NULL, NULL, NULL, NULL, '2020-01-05 11:02:31', '2020-01-05 11:02:31'),
(71, 'Foreign trips', NULL, NULL, NULL, NULL, NULL, '2020-01-05 11:05:26', '2020-01-05 11:05:26'),
(72, 'Domestic flights', NULL, NULL, NULL, NULL, NULL, '2020-01-05 11:07:07', '2020-01-05 11:07:07'),
(73, 'Religious trips', NULL, NULL, NULL, NULL, NULL, '2020-01-05 13:37:23', '2020-01-05 13:37:23'),
(74, 'يسؤسؤسس', NULL, NULL, NULL, NULL, NULL, '2020-01-05 17:19:39', '2020-01-05 17:19:39'),
(75, 'program 1', NULL, NULL, NULL, NULL, NULL, '2020-01-06 07:48:36', '2020-01-06 07:48:36'),
(76, 'program 1', NULL, NULL, NULL, NULL, NULL, '2020-01-06 07:49:28', '2020-01-06 07:49:28'),
(78, 'Domestic flights', NULL, NULL, NULL, NULL, NULL, '2020-01-06 09:48:19', '2020-01-06 09:48:19'),
(79, 'Foreign trips', NULL, NULL, NULL, NULL, NULL, '2020-01-06 09:50:22', '2020-01-06 09:50:22'),
(80, 'Face and body Product line', NULL, NULL, NULL, NULL, NULL, '2020-01-18 01:58:57', '2020-01-18 01:58:57'),
(81, 'Face and body Product line', NULL, NULL, NULL, NULL, NULL, '2020-01-18 01:59:25', '2020-01-18 01:59:25'),
(82, 'Hair product line', NULL, NULL, NULL, NULL, NULL, '2020-01-18 02:04:37', '2020-01-18 02:04:37'),
(83, 'BioASM 01 Face and body cleanser', NULL, NULL, NULL, NULL, NULL, '2020-01-18 02:15:06', '2020-01-18 02:15:06'),
(84, 'BioASM 24 cream', NULL, NULL, NULL, NULL, NULL, '2020-01-18 06:00:11', '2020-01-18 06:00:11'),
(85, 'BioASM 24 cream', NULL, NULL, NULL, NULL, NULL, '2020-01-18 06:03:41', '2020-01-18 06:03:41'),
(86, 'BioASM 24 cream: indications', NULL, NULL, NULL, NULL, NULL, '2020-01-18 06:04:42', '2020-01-18 06:04:42'),
(87, 'rihanna', NULL, NULL, NULL, NULL, NULL, '2020-01-22 10:33:13', '2020-01-22 10:33:13'),
(88, 'hey now', NULL, NULL, NULL, NULL, NULL, '2020-01-22 10:42:13', '2020-01-22 10:42:13'),
(89, 'hey now', NULL, NULL, NULL, NULL, NULL, '2020-01-22 10:43:43', '2020-01-22 10:43:43'),
(90, 'first men products', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:07:17', '2020-06-14 09:07:17'),
(91, 'second men products', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:08:39', '2020-06-14 09:08:39'),
(92, 'third men products', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:09:39', '2020-06-14 09:09:39'),
(93, 'kids products', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:11:06', '2020-06-14 09:11:06'),
(94, 'first kids product', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:12:11', '2020-06-14 09:12:11'),
(95, 'second kids product', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:13:09', '2020-06-14 09:13:09'),
(96, 'third kids product', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:13:59', '2020-06-14 09:13:59'),
(97, 'face & beauty', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:41:24', '2020-06-14 09:41:24'),
(98, 'first face and beauty product', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:43:00', '2020-06-14 09:43:00'),
(99, 'second face and beauty product', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:46:40', '2020-06-14 09:46:40'),
(100, 'third face and beauty product', NULL, NULL, NULL, NULL, NULL, '2020-06-14 09:52:48', '2020-06-14 09:52:48'),
(101, 'any title', NULL, NULL, NULL, NULL, NULL, '2020-10-05 10:16:34', '2020-10-05 10:16:34'),
(102, 'service', NULL, NULL, NULL, NULL, NULL, '2020-11-17 06:46:21', '2020-11-17 06:46:21'),
(103, 'service array', NULL, NULL, NULL, NULL, NULL, '2020-11-17 06:55:52', '2020-11-17 06:55:52'),
(104, 'service array', NULL, NULL, NULL, NULL, NULL, '2020-11-17 06:58:12', '2020-11-17 06:58:12'),
(105, 'service array service', NULL, NULL, NULL, NULL, NULL, '2020-11-17 06:59:27', '2020-11-17 06:59:27'),
(106, 'المياه البيضاء', NULL, NULL, NULL, NULL, NULL, '2021-01-10 13:49:17', '2021-01-10 13:49:17'),
(107, 'المياه الزرقاء', NULL, NULL, NULL, NULL, NULL, '2021-01-10 13:52:01', '2021-01-10 13:52:01'),
(108, 'first feminine product', NULL, NULL, NULL, NULL, NULL, '2021-02-17 09:12:08', '2021-02-17 09:12:08'),
(109, 'second feminine product', NULL, NULL, NULL, NULL, NULL, '2021-02-17 09:13:07', '2021-02-17 09:13:07'),
(110, 'greasy hair', NULL, NULL, NULL, NULL, NULL, '2021-02-17 09:48:55', '2021-02-17 09:48:55'),
(111, 'greasy hair', NULL, NULL, NULL, NULL, NULL, '2021-02-17 09:51:10', '2021-02-17 09:51:10'),
(112, 'greasy hair II', NULL, NULL, NULL, NULL, NULL, '2021-02-17 09:56:22', '2021-02-17 09:56:22'),
(113, 'greasy hair III', NULL, NULL, NULL, NULL, NULL, '2021-02-17 11:35:16', '2021-02-17 11:35:16'),
(114, 'seat', NULL, NULL, NULL, NULL, NULL, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(115, 'service 2', NULL, NULL, NULL, NULL, NULL, '2021-05-25 07:19:50', '2021-05-25 07:19:50'),
(116, 'service 3', NULL, NULL, NULL, NULL, NULL, '2021-05-25 07:21:27', '2021-05-25 07:21:27'),
(117, 'service 4', NULL, NULL, NULL, NULL, NULL, '2021-05-25 08:27:57', '2021-05-25 08:27:57'),
(118, 'emapen', NULL, NULL, NULL, NULL, NULL, '2021-05-31 11:15:07', '2021-05-31 11:15:07'),
(119, 'kompen', NULL, NULL, NULL, NULL, NULL, '2021-05-31 11:47:48', '2021-05-31 11:47:48'),
(120, 'third product', NULL, NULL, NULL, NULL, NULL, '2021-06-08 08:48:33', '2021-06-08 08:48:33'),
(121, 'معالجة مصادر المياه', NULL, NULL, NULL, NULL, NULL, '2021-06-08 09:10:31', '2021-06-08 09:10:31'),
(122, 'معالجة المياه الصناعية', NULL, NULL, NULL, NULL, NULL, '2021-06-08 09:12:37', '2021-06-08 09:12:37'),
(123, 'service 6', NULL, NULL, NULL, NULL, NULL, '2021-07-15 10:57:25', '2021-07-15 10:57:25'),
(124, 'service1 sub', NULL, NULL, NULL, NULL, NULL, '2021-07-29 13:14:17', '2021-07-29 13:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) NOT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `video_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image_id`, `video_id`, `status`, `video_name`, `video_url`, `created_at`, `updated_at`) VALUES
(64, 1406, NULL, 'partners', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(65, 1407, NULL, 'partners', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(66, 1408, NULL, 'partners', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(67, 1409, NULL, 'partners', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(68, 1410, NULL, 'partners', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(69, 1411, NULL, 'partners', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(123, 1591, NULL, 'projects', NULL, NULL, '2021-05-31 07:55:58', '2021-05-31 07:55:58'),
(124, 1592, NULL, 'projects', NULL, NULL, '2021-05-31 07:55:58', '2021-05-31 07:55:58'),
(125, 1593, NULL, 'projects', NULL, NULL, '2021-05-31 07:55:58', '2021-05-31 07:55:58'),
(126, 1594, NULL, 'projects', NULL, NULL, '2021-05-31 07:55:58', '2021-05-31 07:55:58'),
(138, 1673, NULL, 'offers', NULL, NULL, '2021-06-14 14:19:16', '2021-06-14 14:19:16'),
(139, 1674, NULL, 'offers', NULL, NULL, '2021-06-14 14:19:16', '2021-06-14 14:19:16'),
(140, 1675, NULL, 'offers', NULL, NULL, '2021-06-14 14:19:16', '2021-06-14 14:19:16'),
(141, 1676, NULL, 'portfolio', NULL, NULL, '2021-06-14 14:29:37', '2021-06-14 14:29:37'),
(142, 1677, NULL, 'portfolio', NULL, NULL, '2021-06-14 14:29:38', '2021-06-14 14:29:38'),
(143, 1678, NULL, 'portfolio', NULL, NULL, '2021-06-14 14:29:38', '2021-06-14 14:29:38'),
(166, 1803, NULL, 'certificates', NULL, NULL, '2021-07-15 09:20:43', '2021-07-15 09:20:43'),
(167, 1804, NULL, 'certificates', NULL, NULL, '2021-07-15 09:20:43', '2021-07-15 09:20:43'),
(168, 1805, NULL, 'certificates', NULL, NULL, '2021-07-15 09:20:43', '2021-07-15 09:20:43'),
(179, 1911, NULL, NULL, NULL, NULL, '2021-11-03 11:10:22', '2021-11-03 11:10:22'),
(180, 1912, NULL, NULL, NULL, NULL, '2021-11-03 11:10:22', '2021-11-03 11:10:22'),
(181, 1913, NULL, NULL, NULL, NULL, '2021-11-03 11:10:22', '2021-11-03 11:10:22'),
(182, 1914, NULL, NULL, NULL, NULL, '2021-11-03 11:10:22', '2021-11-03 11:10:22'),
(183, 1915, NULL, 'clients', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08'),
(184, 1916, NULL, 'clients', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08'),
(185, 1917, NULL, 'clients', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08'),
(186, 1918, NULL, 'clients', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08'),
(187, 1919, NULL, 'clients', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `is_offer` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) NOT NULL,
  `icon` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `open_graph_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `is_offer`, `image_id`, `icon`, `city_id`, `category_id`, `price`, `rate`, `location`, `url`, `video_id`, `open_graph_id`, `page_id`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, '1', 780, NULL, 12, 9, '300$', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237685.0692972276!2d39.706458218109006!3d21.435957141086337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c21b4ced818775%3A0x98ab2469cf70c9ce!2sMecca%20Saudi%20Arabia!5e0!3m2!1sen!2seg!4v1578304067735!5m2!1sen!2seg', 'program-1', NULL, 166, 169, 3, NULL, '2020-01-06 09:08:11', '2020-01-09 10:40:02'),
(5, '1', 788, NULL, 11, 8, '300$', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237685.0692972276!2d39.706458218109006!3d21.435957141086337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c21b4ced818775%3A0x98ab2469cf70c9ce!2sMecca%20Saudi%20Arabia!5e0!3m2!1sen!2seg!4v1578304067735!5m2!1sen!2seg', 'program-2', NULL, 169, 172, 3, NULL, '2020-01-06 09:54:38', '2020-01-09 10:40:17'),
(6, NULL, 799, NULL, 10, 8, '300$', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237685.0692972276!2d39.706458218109006!3d21.435957141086337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c21b4ced818775%3A0x98ab2469cf70c9ce!2sMecca%20Saudi%20Arabia!5e0!3m2!1sen!2seg!4v1578304067735!5m2!1sen!2seg', 'program-3', NULL, 170, 173, 3, NULL, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(7, NULL, 803, NULL, 11, 8, '300$', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237685.0692972276!2d39.706458218109006!3d21.435957141086337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c21b4ced818775%3A0x98ab2469cf70c9ce!2sMecca%20Saudi%20Arabia!5e0!3m2!1sen!2seg!4v1578304067735!5m2!1sen!2seg', 'program-4', NULL, 171, 174, 3, NULL, '2020-01-06 14:33:03', '2020-01-06 14:33:03'),
(8, NULL, 807, NULL, 10, 8, '300$', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237685.0692972276!2d39.706458218109006!3d21.435957141086337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c21b4ced818775%3A0x98ab2469cf70c9ce!2sMecca%20Saudi%20Arabia!5e0!3m2!1sen!2seg!4v1578304067735!5m2!1sen!2seg', 'program-5', NULL, 172, 175, 3, NULL, '2020-01-06 14:36:47', '2020-01-06 14:36:47'),
(9, NULL, 811, NULL, 12, 9, '300$', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237685.0692972276!2d39.706458218109006!3d21.435957141086337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c21b4ced818775%3A0x98ab2469cf70c9ce!2sMecca%20Saudi%20Arabia!5e0!3m2!1sen!2seg!4v1578304067735!5m2!1sen!2seg', 'program-6', NULL, 173, 176, 3, NULL, '2020-01-06 14:39:47', '2020-01-06 14:39:47'),
(10, NULL, 815, NULL, 15, 2, '300$', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237685.0692972276!2d39.706458218109006!3d21.435957141086337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c21b4ced818775%3A0x98ab2469cf70c9ce!2sMecca%20Saudi%20Arabia!5e0!3m2!1sen!2seg!4v1578304067735!5m2!1sen!2seg', 'program-7', NULL, 174, 177, 3, NULL, '2020-01-06 14:59:04', '2020-01-06 14:59:04'),
(11, NULL, 823, NULL, 15, 3, '300$', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237685.0692972276!2d39.706458218109006!3d21.435957141086337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c21b4ced818775%3A0x98ab2469cf70c9ce!2sMecca%20Saudi%20Arabia!5e0!3m2!1sen!2seg!4v1578304067735!5m2!1sen!2seg', 'program-8', NULL, 175, 178, 3, NULL, '2020-01-08 07:40:55', '2020-01-08 07:40:55'),
(12, '1', 855, NULL, 17, 8, '300$', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3453.1036751950073!2d31.340956015444927!3d30.062562581875703!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583f54edcae07d%3A0xde2645918c9dfd3f!2sShuttle%20Travel!5e0!3m2!1sen!2sus!4v1569765069936!5m2!1sen!2sus', 'program-9', NULL, 180, 183, 3, NULL, '2020-01-09 10:45:45', '2020-01-09 10:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_images`
--

CREATE TABLE `hotel_images` (
  `hotel_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_images`
--

INSERT INTO `hotel_images` (`hotel_id`, `image_id`, `created_at`, `updated_at`) VALUES
(4, 781, '2020-01-06 09:08:11', '2020-01-06 09:08:11'),
(4, 782, '2020-01-06 09:08:11', '2020-01-06 09:08:11'),
(4, 783, '2020-01-06 09:08:11', '2020-01-06 09:08:11'),
(5, 789, '2020-01-06 09:54:40', '2020-01-06 09:54:40'),
(5, 790, '2020-01-06 09:54:40', '2020-01-06 09:54:40'),
(5, 791, '2020-01-06 09:54:40', '2020-01-06 09:54:40'),
(5, 792, '2020-01-06 09:54:40', '2020-01-06 09:54:40'),
(4, 793, '2020-01-06 09:57:23', '2020-01-06 09:57:23'),
(4, 794, '2020-01-06 09:57:23', '2020-01-06 09:57:23'),
(4, 795, '2020-01-06 09:57:23', '2020-01-06 09:57:23'),
(6, 800, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(6, 801, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(6, 802, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(7, 804, '2020-01-06 14:33:04', '2020-01-06 14:33:04'),
(7, 805, '2020-01-06 14:33:04', '2020-01-06 14:33:04'),
(7, 806, '2020-01-06 14:33:04', '2020-01-06 14:33:04'),
(8, 808, '2020-01-06 14:36:48', '2020-01-06 14:36:48'),
(8, 809, '2020-01-06 14:36:48', '2020-01-06 14:36:48'),
(8, 810, '2020-01-06 14:36:48', '2020-01-06 14:36:48'),
(9, 812, '2020-01-06 14:39:48', '2020-01-06 14:39:48'),
(9, 813, '2020-01-06 14:39:48', '2020-01-06 14:39:48'),
(9, 814, '2020-01-06 14:39:48', '2020-01-06 14:39:48'),
(10, 816, '2020-01-06 14:59:04', '2020-01-06 14:59:04'),
(10, 817, '2020-01-06 14:59:04', '2020-01-06 14:59:04'),
(10, 818, '2020-01-06 14:59:04', '2020-01-06 14:59:04'),
(11, 824, '2020-01-08 07:40:55', '2020-01-08 07:40:55'),
(11, 825, '2020-01-08 07:40:55', '2020-01-08 07:40:55'),
(11, 826, '2020-01-08 07:40:55', '2020-01-08 07:40:55'),
(12, 856, '2020-01-09 10:45:46', '2020-01-09 10:45:46'),
(12, 857, '2020-01-09 10:45:46', '2020-01-09 10:45:46'),
(12, 858, '2020-01-09 10:45:46', '2020-01-09 10:45:46'),
(12, 859, '2020-01-09 10:45:46', '2020-01-09 10:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `path`, `alt`, `album_id`, `created_at`, `updated_at`) VALUES
(239, '156621131517-650x350.jpg', 'dashboardImages/service/156621131517-650x350.jpg', NULL, NULL, '2019-08-19 08:41:55', '2019-08-19 08:41:55'),
(242, '1566224675picture.png', 'dashboardImages/service/1566224675picture.png', NULL, NULL, '2019-08-19 12:24:35', '2019-08-19 12:24:35'),
(244, '1566226496picture.png', 'dashboardImages/album/1566226496picture.png', NULL, NULL, '2019-08-19 12:54:56', '2019-08-19 12:54:56'),
(249, '1566292192picture.png', 'dashboardImages/album/1566292192picture.png', NULL, NULL, '2019-08-20 07:09:52', '2019-08-20 07:09:52'),
(288, '15667408862.jpg', 'dashboardImages/product/15667408862.jpg', NULL, NULL, '2019-08-25 11:48:06', '2019-08-25 11:48:06'),
(290, '1566742028logo-new.png', 'dashboardImages/setting/1566742028logo-new.png', NULL, NULL, '2019-08-25 12:07:08', '2019-08-25 12:07:08'),
(295, '1567499842logo.png', 'dashboardImages/setting/1567499842logo.png', NULL, NULL, '2019-09-03 06:37:22', '2019-09-03 06:37:22'),
(296, '1567500147slide-1.jpg', 'dashboardImages/slider/1567500147slide-1.jpg', 'suwy@mailinator.com', NULL, '2019-09-03 06:42:27', '2019-09-03 06:42:27'),
(297, '1567500156slide-2.jpg', 'dashboardImages/slider/1567500156slide-2.jpg', 'fumarykuzo@mailinator.com', NULL, '2019-09-03 06:42:36', '2019-09-03 06:42:36'),
(299, '15675027471.png', 'dashboardImages/service/15675027471.png', NULL, NULL, '2019-09-03 07:25:47', '2019-09-03 07:25:47'),
(300, '15675028001.png', 'dashboardImages/service/15675028001.png', NULL, NULL, '2019-09-03 07:26:40', '2019-09-03 07:26:40'),
(301, '15675028431.png', 'dashboardImages/service/15675028431.png', NULL, NULL, '2019-09-03 07:27:23', '2019-09-03 07:27:23'),
(302, '15675030161.png', 'dashboardImages/service/15675030161.png', NULL, NULL, '2019-09-03 07:30:16', '2019-09-03 07:30:16'),
(303, '15675035471.png', 'dashboardImages/service/15675035471.png', 'adad', NULL, '2019-09-03 07:39:07', '2019-09-05 06:27:16'),
(304, '15675047791.png', 'dashboardImages/service/15675047791.png', NULL, NULL, '2019-09-03 07:59:39', '2019-09-03 07:59:39'),
(305, '15675049391.png', 'dashboardImages/service/15675049391.png', 'img', NULL, '2019-09-03 08:02:19', '2019-09-05 06:26:28'),
(307, '15675089841.jpg', 'dashboardImages/openGraph/15675089841.jpg', NULL, NULL, '2019-09-03 09:09:44', '2019-09-03 09:09:44'),
(308, '156751516417-650x350.jpg', 'dashboardImages/service/156751516417-650x350.jpg', NULL, NULL, '2019-09-03 10:52:44', '2019-09-03 10:52:44'),
(310, '15675186721.jpg', 'dashboardImages/testimonial/15675186721.jpg', NULL, NULL, '2019-09-03 11:51:12', '2019-09-03 11:51:12'),
(311, '1567524774mission.jpg', 'dashboardImages/about/1567524774mission.jpg', NULL, NULL, '2019-09-03 13:32:54', '2019-09-03 13:32:54'),
(312, '1567524774vision.jpg', 'dashboardImages/about/1567524774vision.jpg', NULL, NULL, '2019-09-03 13:32:54', '2019-09-03 13:32:54'),
(313, '1567524774values.jpg', 'dashboardImages/about/1567524774values.jpg', NULL, NULL, '2019-09-03 13:32:54', '2019-09-03 13:32:54'),
(314, '1567524880values.jpg', 'dashboardImages/about/1567524880values.jpg', NULL, NULL, '2019-09-03 13:34:40', '2019-09-03 13:34:40'),
(316, '1567671382mission.jpg', 'dashboardImages/service/1567671382mission.jpg', 'nypamaru@mailinator.net', NULL, '2019-09-05 06:16:22', '2019-09-05 06:16:22'),
(317, '15676718491.png', 'dashboardImages/service/15676718491.png', 'img', NULL, '2019-09-05 06:24:09', '2019-09-05 06:24:09'),
(318, '15676719871.png', 'dashboardImages/service/15676719871.png', 'img', NULL, '2019-09-05 06:26:27', '2019-09-05 06:26:27'),
(319, '15676720361.png', 'dashboardImages/service/15676720361.png', 'dads', NULL, '2019-09-05 06:27:16', '2019-09-05 06:27:16'),
(320, '15676735441.jpg', 'dashboardImages/slider/15676735441.jpg', 'img', NULL, '2019-09-05 06:52:24', '2019-09-05 06:52:24'),
(321, '15679272861.jpg', 'dashboardImages/album/15679272861.jpg', NULL, NULL, '2019-09-08 05:21:26', '2019-09-08 05:21:26'),
(322, '15679273931.jpg', 'dashboardImages/album/15679273931.jpg', NULL, NULL, '2019-09-08 05:23:13', '2019-09-08 05:23:13'),
(336, '15679278586.jpg', 'dashboardImages/album/15679278586.jpg', NULL, NULL, '2019-09-08 05:30:58', '2019-09-08 05:30:58'),
(337, '15679297701.jpg', 'dashboardImages/testimonial/15679297701.jpg', NULL, NULL, '2019-09-08 06:02:50', '2019-09-08 06:02:50'),
(338, '15680174396.jpg', 'dashboardImages/slider/15680174396.jpg', 'adad', NULL, '2019-09-09 06:23:59', '2019-09-09 06:23:59'),
(339, '15680174392.png', 'dashboardImages/service/15680174392.png', 'dads', NULL, '2019-09-09 06:23:59', '2019-09-09 06:23:59'),
(341, '15680180043.png', 'dashboardImages/service/15680180043.png', 'magavi@.com', NULL, '2019-09-09 06:33:24', '2019-09-09 06:33:24'),
(342, '15680181311.jpg', 'dashboardImages/service/15680181311.jpg', 'rodonuwaw@mailinator.com', NULL, '2019-09-09 06:35:31', '2019-09-09 06:35:31'),
(343, '15680181323.png', 'dashboardImages/service/15680181323.png', 'masyzymy@.net', NULL, '2019-09-09 06:35:32', '2019-09-09 06:35:32'),
(345, '15680181473.png', 'dashboardImages/service/15680181473.png', 'masyzymy@.net', NULL, '2019-09-09 06:35:47', '2019-09-09 06:35:47'),
(347, '15680184951.png', 'dashboardImages/service/15680184951.png', 'kasypix@mailinator.com', NULL, '2019-09-09 06:41:35', '2019-09-09 06:41:35'),
(349, '15680192204.png', 'dashboardImages/service/15680192204.png', 'jywizazi@mailinator.com', NULL, '2019-09-09 06:53:40', '2019-09-09 06:53:40'),
(350, '15681231911.jpg', 'dashboardImages/service/15681231911.jpg', 'IMG', NULL, '2019-09-10 11:46:31', '2019-09-10 11:46:31'),
(351, '15681231911.png', 'dashboardImages/service/15681231911.png', 'IMG', NULL, '2019-09-10 11:46:31', '2019-09-10 11:46:31'),
(352, '15681234021.jpg', 'dashboardImages/service/15681234021.jpg', 'IMG', NULL, '2019-09-10 11:50:02', '2019-09-10 11:50:02'),
(353, '15681234032.png', 'dashboardImages/service/15681234032.png', 'IMG', NULL, '2019-09-10 11:50:03', '2019-09-10 11:50:03'),
(354, '15681235481.jpg', 'dashboardImages/service/15681235481.jpg', 'IMG', NULL, '2019-09-10 11:52:28', '2019-09-10 11:52:28'),
(355, '15681235484.png', 'dashboardImages/service/15681235484.png', 'IMG', NULL, '2019-09-10 11:52:28', '2019-09-10 11:52:28'),
(356, '156812891123-650x350.jpg', 'dashboardImages/openGraph/156812891123-650x350.jpg', NULL, NULL, '2019-09-10 19:21:51', '2019-09-10 19:21:51'),
(357, '1568129038ceo.jpg', 'dashboardImages/openGraph/1568129038ceo.jpg', NULL, NULL, '2019-09-10 19:23:58', '2019-09-10 19:23:58'),
(358, '1568196761WhatsApp Image 2019-09-10 at 10.09.17 AM.jpeg', 'dashboardImages/slider/1568196761WhatsApp Image 2019-09-10 at 10.09.17 AM.jpeg', 'suwy@mailinator.com', NULL, '2019-09-11 14:12:41', '2019-09-11 14:12:41'),
(359, '1568199654WhatsApp Image 2019-09-10 at 10.09.17 AM.jpeg', 'dashboardImages/slider/1568199654WhatsApp Image 2019-09-10 at 10.09.17 AM.jpeg', 'suwy@mailinator.com', NULL, '2019-09-11 15:00:54', '2019-09-11 15:00:54'),
(360, '156824576519_2018-636603360039264923-926.jpg', 'dashboardImages/blog/156824576519_2018-636603360039264923-926.jpg', 'السمنة تسبب امراض الكبد', NULL, '2019-09-12 03:49:25', '2019-09-12 03:49:25'),
(361, '1568246821images.jfif', 'dashboardImages/blog/1568246821images.jfif', 'لمن تُجرى عملية تصغير المعدة بالقص', NULL, '2019-09-12 04:07:01', '2019-09-12 04:07:01'),
(362, '1568247321دراسات-وتقارير.jpg', 'dashboardImages/blog/1568247321دراسات-وتقارير.jpg', 'دراسات حول تصغير المعدة جراحيا', NULL, '2019-09-12 04:15:21', '2019-09-12 04:15:21'),
(363, '1568247712intelligence-cerveau-tunisie.jpeg', 'dashboardImages/blog/1568247712intelligence-cerveau-tunisie.jpeg', 'تأثير السمنة على القدرات الذهنية', NULL, '2019-09-12 04:21:52', '2019-09-12 04:21:52'),
(364, '1568250006ويكيبيديا.jpg', 'dashboardImages/blog/1568250006ويكيبيديا.jpg', 'جراحات علاج البدانة', NULL, '2019-09-12 05:00:06', '2019-09-12 05:00:06'),
(367, '1568310190WhatsApp Image 2019-09-12 at 4.48.55 PM.jpeg', 'dashboardImages/testimonial/1568310190WhatsApp Image 2019-09-12 at 4.48.55 PM.jpeg', NULL, NULL, '2019-09-12 21:43:10', '2019-09-12 21:43:10'),
(368, '1568310260WhatsApp Image 2019-09-12 at 4.49.02 PM.jpeg', 'dashboardImages/testimonial/1568310260WhatsApp Image 2019-09-12 at 4.49.02 PM.jpeg', NULL, NULL, '2019-09-12 21:44:20', '2019-09-12 21:44:20'),
(369, '1568310336WhatsApp Image 2019-09-12 at 4.48.59 PM.jpeg', 'dashboardImages/testimonial/1568310336WhatsApp Image 2019-09-12 at 4.48.59 PM.jpeg', NULL, NULL, '2019-09-12 21:45:36', '2019-09-12 21:45:36'),
(370, '15693393961567500156slide-2.jpg', 'dashboardImages/slider/15693393961567500156slide-2.jpg', 'fumarykuzo@mailinator.com', NULL, '2019-09-24 19:36:36', '2019-09-24 19:36:36'),
(371, '15693394531568199654WhatsApp Image 2019-09-10 at 10.09.17 AM (1).jpeg', 'dashboardImages/slider/15693394531568199654WhatsApp Image 2019-09-10 at 10.09.17 AM (1).jpeg', 'suwy@mailinator.com', NULL, '2019-09-24 19:37:33', '2019-09-24 19:37:33'),
(372, '15693395671568199654WhatsApp Image 2019-09-10 at 10.09.17 AM (1).jpeg', 'dashboardImages/slider/15693395671568199654WhatsApp Image 2019-09-10 at 10.09.17 AM (1).jpeg', 'suwy@mailinator.com', NULL, '2019-09-24 19:39:27', '2019-09-24 19:39:27'),
(376, '1569399015WhatsApp Image 2019-09-12 at 4.49.04 PM.jpeg', 'dashboardImages/testimonial/1569399015WhatsApp Image 2019-09-12 at 4.49.04 PM.jpeg', NULL, NULL, '2019-09-25 12:10:15', '2019-09-25 12:10:15'),
(377, '1569399085WhatsApp Image 2019-09-12 at 4.48.59 PM.jpeg', 'dashboardImages/testimonial/1569399085WhatsApp Image 2019-09-12 at 4.48.59 PM.jpeg', NULL, NULL, '2019-09-25 12:11:25', '2019-09-25 12:11:25'),
(378, '1569399211WhatsApp Image 2019-09-12 at 4.48.52 PM.jpeg', 'dashboardImages/testimonial/1569399211WhatsApp Image 2019-09-12 at 4.48.52 PM.jpeg', NULL, NULL, '2019-09-25 12:13:31', '2019-09-25 12:13:31'),
(379, '1569399261WhatsApp Image 2019-09-12 at 4.49.07 PM.jpeg', 'dashboardImages/testimonial/1569399261WhatsApp Image 2019-09-12 at 4.49.07 PM.jpeg', NULL, NULL, '2019-09-25 12:14:21', '2019-09-25 12:14:21'),
(380, '1569399296WhatsApp Image 2019-09-12 at 4.48.57 PM.jpeg', 'dashboardImages/testimonial/1569399296WhatsApp Image 2019-09-12 at 4.48.57 PM.jpeg', NULL, NULL, '2019-09-25 12:14:56', '2019-09-25 12:14:56'),
(381, '1569485649714.jfif', 'dashboardImages/blog/1569485649714.jfif', 'لمن تُجرى عملية تصغير المعدة بالقص', NULL, '2019-09-26 12:14:09', '2019-09-26 12:14:09'),
(382, '1569486064medium_2019-09-23-2e0c48d83e.jpg', 'dashboardImages/blog/1569486064medium_2019-09-23-2e0c48d83e.jpg', 'السمنة تسبب امراض الكبد', NULL, '2019-09-26 12:21:04', '2019-09-26 12:21:04'),
(383, '1569486156كيف_أتخلص_من_ترهلات_الجسم.jpg', 'dashboardImages/blog/1569486156كيف_أتخلص_من_ترهلات_الجسم.jpg', 'السمنة تسبب امراض الكبد', NULL, '2019-09-26 12:22:36', '2019-09-26 12:22:36'),
(384, '1569486244وصفات-طبيعية-لشد-ترهلات-الجسم.jpg', 'dashboardImages/blog/1569486244وصفات-طبيعية-لشد-ترهلات-الجسم.jpg', 'السمنة تسبب امراض الكبد', NULL, '2019-09-26 12:24:04', '2019-09-26 12:24:04'),
(385, '1569486475download (1).jfif', 'dashboardImages/blog/1569486475download (1).jfif', 'لمن تُجرى عملية تصغير المعدة بالقص', NULL, '2019-09-26 12:27:55', '2019-09-26 12:27:55'),
(386, '1569486846كيفية_انقاص_الوزن_في_فصل_الشتاء.jpg', 'dashboardImages/blog/1569486846كيفية_انقاص_الوزن_في_فصل_الشتاء.jpg', 'انقاص الوزن في الشتاء', NULL, '2019-09-26 12:34:06', '2019-09-26 12:34:06'),
(387, '1569487057_والحمل_شفاء.jpg', 'dashboardImages/blog/1569487057_والحمل_شفاء.jpg', 'السمنة والحمل', NULL, '2019-09-26 12:37:37', '2019-09-26 12:37:37'),
(389, '1569487584204.jpg', 'dashboardImages/blog/1569487584204.jpg', 'تمدد المعدة', NULL, '2019-09-26 12:46:24', '2019-09-26 12:46:24'),
(390, '1569487752بحث-كامل-عن-أهمية-الرياضة-في-حياتنا.png', 'dashboardImages/blog/1569487752بحث-كامل-عن-أهمية-الرياضة-في-حياتنا.png', 'الرياضة', NULL, '2019-09-26 12:49:12', '2019-09-26 12:49:12'),
(391, '1569487916علاج_زيادة_الوزن.jpg', 'dashboardImages/blog/1569487916علاج_زيادة_الوزن.jpg', 'زيادة الوزن', NULL, '2019-09-26 12:51:56', '2019-09-26 12:51:56'),
(392, '1569488650أسباب آلام البطن حسب المكان.jpg', 'dashboardImages/blog/1569488650أسباب آلام البطن حسب المكان.jpg', 'ألا مالمعدة', NULL, '2019-09-26 13:04:10', '2019-09-26 13:04:10'),
(393, '1569488987procedures-1024x307.jpg', 'dashboardImages/blog/1569488987procedures-1024x307.jpg', 'p', NULL, '2019-09-26 13:09:47', '2019-09-26 13:09:47'),
(394, '15695043791.png', 'dashboardImages/service/15695043791.png', 'IMG', NULL, '2019-09-26 17:26:31', '2019-09-26 17:26:31'),
(395, '1569704241service.jpg', 'dashboardImages/service/1569704241service.jpg', 'IMG', NULL, '2019-09-29 00:57:21', '2019-09-29 00:57:21'),
(396, '156970435815695043791.png', 'dashboardImages/service/156970435815695043791.png', 'IMG', NULL, '2019-09-29 00:59:30', '2019-09-29 00:59:30'),
(397, '1569704445service.jpg', 'dashboardImages/service/1569704445service.jpg', 'IMG', NULL, '2019-09-29 01:00:45', '2019-09-29 01:00:45'),
(398, '15697548662.png', 'dashboardImages/service/15697548662.png', 'IMG', NULL, '2019-09-29 15:01:06', '2019-09-29 15:01:06'),
(399, '1569758771WhatsApp Image 2019-09-29 at 2.02.58 PM.jpeg', 'dashboardImages/service/1569758771WhatsApp Image 2019-09-29 at 2.02.58 PM.jpeg', 'IMG', NULL, '2019-09-29 16:06:11', '2019-09-29 16:06:11'),
(400, '1569758819WhatsApp Image 2019-09-29 at 2.02.56 PM.jpeg', 'dashboardImages/service/1569758819WhatsApp Image 2019-09-29 at 2.02.56 PM.jpeg', 'IMG', NULL, '2019-09-29 16:06:59', '2019-09-29 16:06:59'),
(401, '1569758845WhatsApp Image 2019-09-29 at 2.03.47 PM.jpeg', 'dashboardImages/service/1569758845WhatsApp Image 2019-09-29 at 2.03.47 PM.jpeg', 'IMG', NULL, '2019-09-29 16:07:25', '2019-09-29 16:07:25'),
(402, '1569759323WhatsApp Image 2019-09-29 at 2.12.11 PM.jpeg', 'dashboardImages/slider/1569759323WhatsApp Image 2019-09-29 at 2.12.11 PM.jpeg', 'ijojjojo', NULL, '2019-09-29 16:15:23', '2019-09-29 16:15:23'),
(403, '15697594093...jpg', 'dashboardImages/slider/15697594093...jpg', 'suwy@mailinator.com', NULL, '2019-09-29 16:16:49', '2019-09-29 16:16:49'),
(404, '1569759513WhatsApp Image 2019-09-29 at 2.12.11 PM.jpeg', 'dashboardImages/slider/1569759513WhatsApp Image 2019-09-29 at 2.12.11 PM.jpeg', 'suwy@mailinator.com', NULL, '2019-09-29 16:18:33', '2019-09-29 16:18:33'),
(405, '15697595483...jpg', 'dashboardImages/slider/15697595483...jpg', 'ijojjojo', NULL, '2019-09-29 16:19:08', '2019-09-29 16:19:08'),
(406, '1569769735WhatsApp Image 2019-09-29 at 2.33.21 PM.jpeg', 'dashboardImages/slider/1569769735WhatsApp Image 2019-09-29 at 2.33.21 PM.jpeg', 'IMG', NULL, '2019-09-29 19:08:55', '2019-09-29 19:08:55'),
(409, '1569833022WhatsApp Image 2019-09-29 at 2.33.22 PM.jpeg', 'dashboardImages/service/1569833022WhatsApp Image 2019-09-29 at 2.33.22 PM.jpeg', 'IMG', NULL, '2019-09-30 12:43:42', '2019-09-30 12:43:42'),
(410, '1569835605WhatsApp Image 2019-09-29 at 2.33.21 PM(2).jpeg', 'dashboardImages/slider/1569835605WhatsApp Image 2019-09-29 at 2.33.21 PM(2).jpeg', 'IMG', NULL, '2019-09-30 13:26:45', '2019-09-30 13:26:45'),
(411, '1569835669WhatsApp Image 2019-09-29 at 2.33.22 PM.jpeg', 'dashboardImages/service/1569835669WhatsApp Image 2019-09-29 at 2.33.22 PM.jpeg', 'IMG', NULL, '2019-09-30 13:27:49', '2019-09-30 13:27:49'),
(413, '1569835756WhatsApp Image 2019-09-29 at 2.03.47 PM.jpeg', 'dashboardImages/service/1569835756WhatsApp Image 2019-09-29 at 2.03.47 PM.jpeg', 'IMG', NULL, '2019-09-30 13:29:16', '2019-09-30 13:29:16'),
(420, '15699161981.jpg', 'dashboardImages/album/15699161981.jpg', NULL, NULL, '2019-10-01 11:49:58', '2019-10-01 11:49:58'),
(422, '1575536507images (3).jpg', 'dashboardImages/service/1575536507images (3).jpg', 'Hot Offer', NULL, '2019-12-05 14:01:47', '2019-12-05 14:01:47'),
(424, '1575537255images (3).jpg', 'dashboardImages/service/1575537255images (3).jpg', 'Hot Offer', NULL, '2019-12-05 14:14:15', '2019-12-05 14:14:15'),
(425, '15764198202.jpg', 'dashboardImages/client/15764198202.jpg', NULL, NULL, '2019-12-15 12:23:40', '2019-12-15 12:23:40'),
(434, '1576426503logo.png', 'dashboardImages/setting/1576426503logo.png', NULL, NULL, '2019-12-15 14:15:03', '2019-12-15 14:15:03'),
(435, '1576427862mission.jpg', 'dashboardImages/about/1576427862mission.jpg', NULL, NULL, '2019-12-15 14:37:42', '2019-12-15 14:37:42'),
(436, '1576427862vision.jpg', 'dashboardImages/about/1576427862vision.jpg', NULL, NULL, '2019-12-15 14:37:42', '2019-12-15 14:37:42'),
(437, '1576427862values.jpg', 'dashboardImages/about/1576427862values.jpg', NULL, NULL, '2019-12-15 14:37:42', '2019-12-15 14:37:42'),
(439, '15764919805.png', 'dashboardImages/service/15764919805.png', 'icon image', NULL, '2019-12-16 08:26:20', '2019-12-16 08:26:20'),
(441, '15764923654.png', 'dashboardImages/service/15764923654.png', 'sdfsdf', NULL, '2019-12-16 08:32:45', '2019-12-16 08:32:45'),
(443, '15764925684.png', 'dashboardImages/service/15764925684.png', 'efef', NULL, '2019-12-16 08:36:08', '2019-12-16 08:36:08'),
(445, '15764926691.png', 'dashboardImages/service/15764926691.png', 'scds', NULL, '2019-12-16 08:37:49', '2019-12-16 08:37:49'),
(454, '1576496315_1.png', 'dashboardImages/service/1576496315_1.png', 'تكميم المعدة', NULL, '2019-12-16 09:38:35', '2019-12-16 09:38:35'),
(455, '1576496315_2.png', 'dashboardImages/service/1576496315_2.png', 'تكميم المعدة', NULL, '2019-12-16 09:38:35', '2019-12-16 09:38:35'),
(456, '1576496315_3.png', 'dashboardImages/service/1576496315_3.png', 'تكميم المعدة', NULL, '2019-12-16 09:38:35', '2019-12-16 09:38:35'),
(457, '1.png', 'dashboardImages/service/1.png', NULL, NULL, '2019-12-16 09:38:59', '2019-12-16 09:38:59'),
(458, '2.png', 'dashboardImages/service/2.png', NULL, NULL, '2019-12-16 09:38:59', '2019-12-16 09:38:59'),
(459, '3.png', 'dashboardImages/service/3.png', NULL, NULL, '2019-12-16 09:38:59', '2019-12-16 09:38:59'),
(460, '1576496358_2.png', 'dashboardImages/service/1576496358_2.png', 'حزام المعدة', NULL, '2019-12-16 09:39:18', '2019-12-16 09:39:18'),
(461, '1576496358_3.png', 'dashboardImages/service/1576496358_3.png', 'حزام المعدة', NULL, '2019-12-16 09:39:18', '2019-12-16 09:39:18'),
(462, '1576496358_4.png', 'dashboardImages/service/1576496358_4.png', 'حزام المعدة', NULL, '2019-12-16 09:39:18', '2019-12-16 09:39:18'),
(463, '1576496405_1.png', 'dashboardImages/service/1576496405_1.png', 'Gastroscopy', NULL, '2019-12-16 09:40:05', '2019-12-16 09:40:05'),
(464, '1576496405_2.png', 'dashboardImages/service/1576496405_2.png', 'Gastroscopy', NULL, '2019-12-16 09:40:05', '2019-12-16 09:40:05'),
(465, '1576496405_3.png', 'dashboardImages/service/1576496405_3.png', 'Gastroscopy', NULL, '2019-12-16 09:40:05', '2019-12-16 09:40:05'),
(466, '1576496405_4.png', 'dashboardImages/service/1576496405_4.png', 'Gastroscopy', NULL, '2019-12-16 09:40:05', '2019-12-16 09:40:05'),
(467, '15764965971.png', 'dashboardImages/service/15764965971.png', 'efed', NULL, '2019-12-16 09:43:17', '2019-12-16 09:43:17'),
(468, '15764965974.png', 'dashboardImages/service/15764965974.png', 'wdwsd', NULL, '2019-12-16 09:43:17', '2019-12-16 09:43:17'),
(472, '15764969044.png', 'dashboardImages/service/15764969044.png', 'ewfef', NULL, '2019-12-16 09:48:24', '2019-12-16 09:48:24'),
(473, '2.png', 'dashboardImages/service/2.png', NULL, NULL, '2019-12-16 09:48:25', '2019-12-16 09:48:25'),
(474, '3.png', 'dashboardImages/service/3.png', NULL, NULL, '2019-12-16 09:48:25', '2019-12-16 09:48:25'),
(476, '15764971354.png', 'dashboardImages/service/15764971354.png', 'wfefedf', NULL, '2019-12-16 09:52:15', '2019-12-16 09:52:15'),
(477, '2.png', 'dashboardImages/service/2.png', NULL, NULL, '2019-12-16 09:52:16', '2019-12-16 09:52:16'),
(478, '3.png', 'dashboardImages/service/3.png', NULL, NULL, '2019-12-16 09:52:16', '2019-12-16 09:52:16'),
(479, '15764979231.png', 'dashboardImages/service/15764979231.png', 'sdfedfe', NULL, '2019-12-16 10:05:23', '2019-12-16 10:05:23'),
(480, '15764979234.png', 'dashboardImages/service/15764979234.png', 'fdedfef', NULL, '2019-12-16 10:05:23', '2019-12-16 10:05:23'),
(481, '15764979741.png', 'dashboardImages/service/15764979741.png', 'sdfedfe', NULL, '2019-12-16 10:06:14', '2019-12-16 10:06:14'),
(482, '15764979744.png', 'dashboardImages/service/15764979744.png', 'fdedfef', NULL, '2019-12-16 10:06:14', '2019-12-16 10:06:14'),
(484, '15764984173.png', 'dashboardImages/service/15764984173.png', 'fefefefefe', NULL, '2019-12-16 10:13:37', '2019-12-16 10:13:37'),
(485, '2.png', 'dashboardImages/service/2.png', NULL, NULL, '2019-12-16 10:13:38', '2019-12-16 10:13:38'),
(486, '3.png', 'dashboardImages/service/3.png', NULL, NULL, '2019-12-16 10:13:39', '2019-12-16 10:13:39'),
(487, '157657914120190925_221737.jpg', 'dashboardImages/album/157657914120190925_221737.jpg', NULL, NULL, '2019-12-17 08:39:01', '2019-12-17 08:39:01'),
(488, '1576589900ceo.jpg', 'dashboardImages/about/1576589900ceo.jpg', NULL, NULL, '2019-12-17 11:38:20', '2019-12-17 11:38:20'),
(489, '1577014676service18.jpg', 'dashboardImages/service/1577014676service18.jpg', 'فقدان العظام', NULL, '2019-12-22 09:37:56', '2019-12-22 09:37:56'),
(490, '1577014676service18.jpg', 'dashboardImages/service/1577014676service18.jpg', 'فقدان العظام', NULL, '2019-12-22 09:37:56', '2019-12-22 09:37:56'),
(492, '1577014736service18.jpg', 'dashboardImages/service/1577014736service18.jpg', 'فقدان العظام', NULL, '2019-12-22 09:38:56', '2019-12-22 09:38:56'),
(494, '1577014768service18.jpg', 'dashboardImages/service/1577014768service18.jpg', 'فقدان العظام', NULL, '2019-12-22 09:39:28', '2019-12-22 09:39:28'),
(496, '1577014828service18.jpg', 'dashboardImages/service/1577014828service18.jpg', 'فقدان العظام', NULL, '2019-12-22 09:40:28', '2019-12-22 09:40:28'),
(497, '1577014947service18.jpg', 'dashboardImages/service/1577014947service18.jpg', 'فقدان العظام', NULL, '2019-12-22 09:42:27', '2019-12-22 09:42:27'),
(498, '1577014947service18.jpg', 'dashboardImages/service/1577014947service18.jpg', 'فقدان العظام', NULL, '2019-12-22 09:42:27', '2019-12-22 09:42:27'),
(499, '1577015132service20.jpg', 'dashboardImages/service/1577015132service20.jpg', 'حالات شلل الأطفال', NULL, '2019-12-22 09:45:32', '2019-12-22 09:45:32'),
(500, '1577015132service20.jpg', 'dashboardImages/service/1577015132service20.jpg', 'حالات شلل الأطفال', NULL, '2019-12-22 09:45:32', '2019-12-22 09:45:32'),
(501, '1577015193service14.jpg', 'dashboardImages/service/1577015193service14.jpg', 'الام الكتف الايمن', NULL, '2019-12-22 09:46:33', '2019-12-22 09:46:33'),
(502, '1577015193service14.jpg', 'dashboardImages/service/1577015193service14.jpg', 'الام الكتف الايمن', NULL, '2019-12-22 09:46:33', '2019-12-22 09:46:33'),
(503, '1577015263service4.jpg', 'dashboardImages/service/1577015263service4.jpg', 'حالات فقدان الانسجة', NULL, '2019-12-22 09:47:43', '2019-12-22 09:47:43'),
(504, '1577015263service4.jpg', 'dashboardImages/service/1577015263service4.jpg', 'حالات فقدان الانسجة', NULL, '2019-12-22 09:47:43', '2019-12-22 09:47:43'),
(505, '1577015313service6.jpg', 'dashboardImages/service/1577015313service6.jpg', 'تشنج العضلات', NULL, '2019-12-22 09:48:33', '2019-12-22 09:48:33'),
(506, '1577015313service6.jpg', 'dashboardImages/service/1577015313service6.jpg', 'تشنج العضلات', NULL, '2019-12-22 09:48:33', '2019-12-22 09:48:33'),
(507, '1577015363service8.jpg', 'dashboardImages/service/1577015363service8.jpg', 'any title', NULL, '2019-12-22 09:49:23', '2020-10-05 10:17:49'),
(508, '1577015363service8.jpg', 'dashboardImages/service/1577015363service8.jpg', 'any title', NULL, '2019-12-22 09:49:23', '2020-10-05 10:17:49'),
(509, '1577018750news1.jpg', 'dashboardImages/blog/1577018750news1.jpg', 'اسباب خلع الكتف', NULL, '2019-12-22 10:45:50', '2019-12-22 10:45:50'),
(510, '1577018800news2.jpg', 'dashboardImages/blog/1577018800news2.jpg', 'الراحة النفسية', NULL, '2019-12-22 10:46:40', '2019-12-22 10:46:40'),
(511, '1577018842news3.jpg', 'dashboardImages/blog/1577018842news3.jpg', 'حمام الملح', NULL, '2019-12-22 10:47:22', '2019-12-22 10:47:22'),
(512, '1577018879news4.jpg', 'dashboardImages/blog/1577018879news4.jpg', 'علاج الام الكوع', NULL, '2019-12-22 10:47:59', '2019-12-22 10:47:59'),
(513, '1577023913service7.jpg', 'dashboardImages/album/1577023913service7.jpg', NULL, NULL, '2019-12-22 12:11:53', '2019-12-22 12:11:53'),
(520, '1577024100logo-1-2.png', 'dashboardImages/setting/1577024100logo-1-2.png', NULL, NULL, '2019-12-22 12:15:00', '2019-12-22 12:15:00'),
(521, '1577024161logo-1-3.png', 'dashboardImages/setting/1577024161logo-1-3.png', NULL, NULL, '2019-12-22 12:16:01', '2019-12-22 12:16:01'),
(522, '1577024802logo-1.png', 'dashboardImages/setting/1577024802logo-1.png', NULL, NULL, '2019-12-22 12:26:42', '2019-12-22 12:26:42'),
(526, '1577025476about-1.jpg', 'dashboardImages/about/1577025476about-1.jpg', NULL, NULL, '2019-12-22 12:37:56', '2019-12-22 12:37:56'),
(527, '1577025476about-2.jpg', 'dashboardImages/about/1577025476about-2.jpg', NULL, NULL, '2019-12-22 12:37:56', '2019-12-22 12:37:56'),
(528, '1577025476logo-1.png', 'dashboardImages/about/1577025476logo-1.png', NULL, NULL, '2019-12-22 12:37:56', '2019-12-22 12:37:56'),
(529, '1577025476slide-2.jpg', 'dashboardImages/about/1577025476slide-2.jpg', NULL, NULL, '2019-12-22 12:37:56', '2019-12-22 12:37:56'),
(530, '1577025851about-1.jpg', 'dashboardImages/openGraph/1577025851about-1.jpg', NULL, NULL, '2019-12-22 12:44:11', '2019-12-22 12:44:11'),
(531, '1577025875about-2.jpg', 'dashboardImages/openGraph/1577025875about-2.jpg', NULL, NULL, '2019-12-22 12:44:35', '2019-12-22 12:44:35'),
(532, '1577025967service6.jpg', 'dashboardImages/openGraph/1577025967service6.jpg', NULL, NULL, '2019-12-22 12:46:07', '2019-12-22 12:46:07'),
(533, '1577026345client2.jpg', 'dashboardImages/testimonial/1577026345client2.jpg', NULL, NULL, '2019-12-22 12:52:25', '2019-12-22 12:52:25'),
(534, '1577026383client1.jpg', 'dashboardImages/testimonial/1577026383client1.jpg', NULL, NULL, '2019-12-22 12:53:03', '2019-12-22 12:53:03'),
(535, '1577185919logo-1.png', 'dashboardImages/setting/1577185919logo-1.png', NULL, NULL, '2019-12-24 19:11:59', '2019-12-24 19:11:59'),
(536, '1577185919logo-2.png', 'dashboardImages/setting/1577185919logo-2.png', NULL, NULL, '2019-12-24 19:11:59', '2019-12-24 19:11:59'),
(537, '1577187685slider-1.jpg', 'dashboardImages/slider/1577187685slider-1.jpg', 'slider1', NULL, '2019-12-24 19:41:25', '2019-12-24 19:41:25'),
(538, '1577187731slider-2.jpg', 'dashboardImages/slider/1577187731slider-2.jpg', 'slider2', NULL, '2019-12-24 19:42:11', '2019-12-24 19:42:11'),
(539, '1577199955prod-1.jpg', 'dashboardImages/product/1577199955prod-1.jpg', 'product1 image', NULL, '2019-12-24 23:05:55', '2019-12-24 23:05:55'),
(540, '1577199955prod-1.jpg', 'dashboardImages/product/1577199955prod-1.jpg', 'product1 icon', NULL, '2019-12-24 23:05:55', '2019-12-24 23:05:55'),
(541, '1577200007prod-1.jpg', 'dashboardImages/product/1577200007prod-1.jpg', 'product1 image', NULL, '2019-12-24 23:06:47', '2019-12-24 23:06:47'),
(542, '1577200007prod-1.jpg', 'dashboardImages/product/1577200007prod-1.jpg', 'product1 icon', NULL, '2019-12-24 23:06:47', '2019-12-24 23:06:47'),
(543, '1577200130prod-1.jpg', 'dashboardImages/product/1577200130prod-1.jpg', 'product1 image', NULL, '2019-12-24 23:08:50', '2019-12-24 23:08:50'),
(544, '1577200130prod-1.jpg', 'dashboardImages/product/1577200130prod-1.jpg', 'product1 icon', NULL, '2019-12-24 23:08:50', '2019-12-24 23:08:50'),
(545, 'prod-1.jpg', 'dashboardImages/product/prod-1.jpg', NULL, NULL, '2019-12-24 23:08:50', '2019-12-24 23:08:50'),
(546, 'prod-2.jpg', 'dashboardImages/product/prod-2.jpg', NULL, NULL, '2019-12-24 23:08:50', '2019-12-24 23:08:50'),
(548, '1577200716_prod-3.jpg', 'dashboardImages/product/1577200716_prod-3.jpg', 'katy perrys', NULL, '2019-12-24 23:18:36', '2019-12-24 23:18:36'),
(552, '1577201505service-detials-1.jpg', 'dashboardImages/product/1577201505service-detials-1.jpg', 'product1 icon', NULL, '2019-12-24 23:31:45', '2019-12-24 23:31:45'),
(553, 'prod-16.jpg', 'dashboardImages/product/prod-16.jpg', NULL, NULL, '2019-12-24 23:31:45', '2019-12-24 23:31:45'),
(554, 'service-details-1.jpg', 'dashboardImages/product/service-details-1.jpg', NULL, NULL, '2019-12-24 23:31:45', '2019-12-24 23:31:45'),
(555, 'service-detials-1.jpg', 'dashboardImages/product/service-detials-1.jpg', NULL, NULL, '2019-12-24 23:31:45', '2019-12-24 23:31:45'),
(556, '1577202683prod-4.jpg', 'dashboardImages/category/1577202683prod-4.jpg', 'rtrytgr', NULL, '2019-12-24 23:51:23', '2019-12-24 23:51:23'),
(557, '1577202683prod-4.jpg', 'dashboardImages/category/1577202683prod-4.jpg', 'sdfdsfg', NULL, '2019-12-24 23:51:23', '2019-12-24 23:51:23'),
(558, '1577202725prod-4.jpg', 'dashboardImages/category/1577202725prod-4.jpg', 'rtrytgr', NULL, '2019-12-24 23:52:05', '2019-12-24 23:52:05'),
(559, '1577202725prod-4.jpg', 'dashboardImages/category/1577202725prod-4.jpg', 'sdfdsfg', NULL, '2019-12-24 23:52:05', '2019-12-24 23:52:05'),
(560, '1577204024prod-1.jpg', 'dashboardImages/category/1577204024prod-1.jpg', 'tht fga', NULL, '2019-12-25 00:13:44', '2019-12-25 00:13:44'),
(561, '1577204024prod-1.jpg', 'dashboardImages/category/1577204024prod-1.jpg', 'rtg dfgfdgdf', NULL, '2019-12-25 00:13:44', '2019-12-25 00:13:44'),
(563, '1577204116prod-1.jpg', 'dashboardImages/category/1577204116prod-1.jpg', 'rtg dfgfdgdf', NULL, '2019-12-25 00:15:16', '2019-12-25 00:15:16'),
(564, '1577204294prod-3.jpg', 'dashboardImages/category/1577204294prod-3.jpg', 'rgr rhtrh rhgr', NULL, '2019-12-25 00:18:14', '2019-12-25 00:18:14'),
(565, '1577204294prod-3.jpg', 'dashboardImages/category/1577204294prod-3.jpg', 'rfedtfgegt rh', NULL, '2019-12-25 00:18:14', '2019-12-25 00:18:14'),
(567, '1577205272prod-8.jpg', 'dashboardImages/category/1577205272prod-8.jpg', 'rfedtfgegt rh', NULL, '2019-12-25 00:34:32', '2019-12-25 00:34:32'),
(569, '1577206891partner-7.jpg', 'dashboardImages/product/1577206891partner-7.jpg', 'erfefe', NULL, '2019-12-25 01:01:31', '2019-12-25 01:01:31'),
(570, 'partner-3.jpg', 'dashboardImages/product/partner-3.jpg', NULL, NULL, '2019-12-25 01:01:31', '2019-12-25 01:01:31'),
(571, 'partner-8.jpg', 'dashboardImages/product/partner-8.jpg', NULL, NULL, '2019-12-25 01:01:31', '2019-12-25 01:01:31'),
(573, '1577207394partner-4.jpg', 'dashboardImages/product/1577207394partner-4.jpg', 'tgrgr', NULL, '2019-12-25 01:09:54', '2019-12-25 01:09:54'),
(574, 'partner-3.jpg', 'dashboardImages/product/partner-3.jpg', NULL, NULL, '2019-12-25 01:09:54', '2019-12-25 01:09:54'),
(575, 'partner-4.jpg', 'dashboardImages/product/partner-4.jpg', NULL, NULL, '2019-12-25 01:09:54', '2019-12-25 01:09:54'),
(576, 'partner-5.jpg', 'dashboardImages/product/partner-5.jpg', NULL, NULL, '2019-12-25 01:09:54', '2019-12-25 01:09:54'),
(578, '1577208615partner-1.jpg', 'dashboardImages/product/1577208615partner-1.jpg', 'err rgrhtr', NULL, '2019-12-25 01:30:15', '2019-12-25 01:30:15'),
(579, 'partner-6.jpg', 'dashboardImages/product/partner-6.jpg', NULL, NULL, '2019-12-25 01:30:15', '2019-12-25 01:30:15'),
(580, 'partner-7.jpg', 'dashboardImages/product/partner-7.jpg', NULL, NULL, '2019-12-25 01:30:15', '2019-12-25 01:30:15'),
(582, '1577210162prod-4.jpg', 'dashboardImages/category/1577210162prod-4.jpg', 'uniform-image', NULL, '2019-12-25 01:56:02', '2019-12-25 01:56:02'),
(583, '1577210162prod-4.jpg', 'dashboardImages/category/1577210162prod-4.jpg', 'uniform-icon', NULL, '2019-12-25 01:56:02', '2019-12-25 01:56:02'),
(585, '1577210898prod-2.jpg', 'dashboardImages/product/1577210898prod-2.jpg', 'hospitality-icon', NULL, '2019-12-25 02:08:18', '2019-12-25 02:08:18'),
(586, 'prod-2.jpg', 'dashboardImages/product/prod-2.jpg', NULL, NULL, '2019-12-25 02:08:18', '2019-12-25 02:08:18'),
(587, 'prod-6.jpg', 'dashboardImages/product/prod-6.jpg', NULL, NULL, '2019-12-25 02:08:18', '2019-12-25 02:08:18'),
(588, '1577268006about-1.jpg', 'dashboardImages/about/1577268006about-1.jpg', NULL, NULL, '2019-12-25 18:00:06', '2019-12-25 18:00:06'),
(589, '1577268006about-3.jpg', 'dashboardImages/about/1577268006about-3.jpg', NULL, NULL, '2019-12-25 18:00:06', '2019-12-25 18:00:06'),
(590, '1577268006about-4.jpg', 'dashboardImages/about/1577268006about-4.jpg', NULL, NULL, '2019-12-25 18:00:06', '2019-12-25 18:00:06'),
(591, '1577270518about-1.jpg', 'dashboardImages/category/1577270518about-1.jpg', 'linen-image', NULL, '2019-12-25 18:41:58', '2019-12-25 18:41:58'),
(592, '1577270518about-1.jpg', 'dashboardImages/category/1577270518about-1.jpg', 'linen-icon', NULL, '2019-12-25 18:41:58', '2019-12-25 18:41:58'),
(594, '1577271947service-details-1.jpg', 'dashboardImages/product/1577271947service-details-1.jpg', 'bath-product-icon', NULL, '2019-12-25 19:05:47', '2019-12-25 19:05:47'),
(595, 'service-details-1.jpg', 'dashboardImages/product/service-details-1.jpg', NULL, NULL, '2019-12-25 19:05:47', '2019-12-25 19:05:47'),
(596, 'service-details-2.jpg', 'dashboardImages/product/service-details-2.jpg', NULL, NULL, '2019-12-25 19:05:47', '2019-12-25 19:05:47'),
(597, 'service-details-3.jpg', 'dashboardImages/product/service-details-3.jpg', NULL, NULL, '2019-12-25 19:05:47', '2019-12-25 19:05:47'),
(599, '1577272242prod-12.jpg', 'dashboardImages/product/1577272242prod-12.jpg', 'bedding-icon', NULL, '2019-12-25 19:10:42', '2019-12-25 19:10:42'),
(600, 'prod-12.jpg', 'dashboardImages/product/prod-12.jpg', NULL, NULL, '2019-12-25 19:10:42', '2019-12-25 19:10:42'),
(601, 'service-details-1.jpg', 'dashboardImages/product/service-details-1.jpg', NULL, NULL, '2019-12-25 19:10:42', '2019-12-25 19:10:42'),
(602, 'service-details-3.jpg', 'dashboardImages/product/service-details-3.jpg', NULL, NULL, '2019-12-25 19:10:42', '2019-12-25 19:10:42'),
(604, '1577272363prod-11.jpg', 'dashboardImages/product/1577272363prod-11.jpg', 'table-icon', NULL, '2019-12-25 19:12:43', '2019-12-25 19:12:43'),
(605, 'prod-11.jpg', 'dashboardImages/product/prod-11.jpg', NULL, NULL, '2019-12-25 19:12:43', '2019-12-25 19:12:43'),
(606, 'prod-13.jpg', 'dashboardImages/product/prod-13.jpg', NULL, NULL, '2019-12-25 19:12:43', '2019-12-25 19:12:43'),
(608, '1577272676prod-5.jpg', 'dashboardImages/product/1577272676prod-5.jpg', 'product icon', NULL, '2019-12-25 19:17:56', '2019-12-25 19:17:56'),
(609, 'prod-3.jpg', 'dashboardImages/product/prod-3.jpg', NULL, NULL, '2019-12-25 19:17:56', '2019-12-25 19:17:56'),
(610, 'prod-4.jpg', 'dashboardImages/product/prod-4.jpg', NULL, NULL, '2019-12-25 19:17:56', '2019-12-25 19:17:56'),
(611, 'prod-5.jpg', 'dashboardImages/product/prod-5.jpg', NULL, NULL, '2019-12-25 19:17:56', '2019-12-25 19:17:56'),
(612, 'prod-8.jpg', 'dashboardImages/product/prod-8.jpg', NULL, NULL, '2019-12-25 19:17:56', '2019-12-25 19:17:56'),
(614, '1577272797prod-6.jpg', 'dashboardImages/product/1577272797prod-6.jpg', 'product icon', NULL, '2019-12-25 19:19:57', '2019-12-25 19:19:57'),
(615, 'prod-1.jpg', 'dashboardImages/product/prod-1.jpg', NULL, NULL, '2019-12-25 19:19:57', '2019-12-25 19:19:57'),
(616, 'prod-6.jpg', 'dashboardImages/product/prod-6.jpg', NULL, NULL, '2019-12-25 19:19:57', '2019-12-25 19:19:57'),
(617, 'prod-7.jpg', 'dashboardImages/product/prod-7.jpg', NULL, NULL, '2019-12-25 19:19:57', '2019-12-25 19:19:57'),
(619, '1577272893prod-2.jpg', 'dashboardImages/product/1577272893prod-2.jpg', 'product icon', NULL, '2019-12-25 19:21:33', '2019-12-25 19:21:33'),
(620, 'prod-2.jpg', 'dashboardImages/product/prod-2.jpg', NULL, NULL, '2019-12-25 19:21:33', '2019-12-25 19:21:33'),
(621, 'prod-6.jpg', 'dashboardImages/product/prod-6.jpg', NULL, NULL, '2019-12-25 19:21:33', '2019-12-25 19:21:33'),
(623, '1577272957prod-5.jpg', 'dashboardImages/product/1577272957prod-5.jpg', 'product icon', NULL, '2019-12-25 19:22:37', '2019-12-25 19:22:37'),
(624, 'prod-5.jpg', 'dashboardImages/product/prod-5.jpg', NULL, NULL, '2019-12-25 19:22:37', '2019-12-25 19:22:37'),
(625, 'prod-8.jpg', 'dashboardImages/product/prod-8.jpg', NULL, NULL, '2019-12-25 19:22:37', '2019-12-25 19:22:37'),
(626, '1577273796partner-7.jpg', 'dashboardImages/client/1577273796partner-7.jpg', NULL, NULL, '2019-12-25 19:36:36', '2019-12-25 19:36:36'),
(627, '1577273842partner-1.jpg', 'dashboardImages/client/1577273842partner-1.jpg', NULL, NULL, '2019-12-25 19:37:22', '2019-12-25 19:37:22'),
(628, '1577273859partner-2.jpg', 'dashboardImages/client/1577273859partner-2.jpg', NULL, NULL, '2019-12-25 19:37:39', '2019-12-25 19:37:39'),
(629, '1577273881partner-3.jpg', 'dashboardImages/client/1577273881partner-3.jpg', NULL, NULL, '2019-12-25 19:38:01', '2019-12-25 19:38:01'),
(630, '1577273901partner-4.jpg', 'dashboardImages/client/1577273901partner-4.jpg', NULL, NULL, '2019-12-25 19:38:21', '2019-12-25 19:38:21'),
(631, '1577273919partner-5.jpg', 'dashboardImages/client/1577273919partner-5.jpg', NULL, NULL, '2019-12-25 19:38:39', '2019-12-25 19:38:39'),
(632, '1577273932partner-6.jpg', 'dashboardImages/client/1577273932partner-6.jpg', NULL, NULL, '2019-12-25 19:38:52', '2019-12-25 19:38:52'),
(633, '1577273946partner-7.jpg', 'dashboardImages/client/1577273946partner-7.jpg', NULL, NULL, '2019-12-25 19:39:06', '2019-12-25 19:39:06'),
(634, '1577273983partner-8.jpg', 'dashboardImages/client/1577273983partner-8.jpg', NULL, NULL, '2019-12-25 19:39:43', '2019-12-25 19:39:43'),
(635, '1577279301about-2.jpg', 'dashboardImages/about/1577279301about-2.jpg', NULL, NULL, '2019-12-25 21:08:21', '2019-12-25 21:08:21'),
(636, '1577279375about-2.jpg', 'dashboardImages/about/1577279375about-2.jpg', NULL, NULL, '2019-12-25 21:09:35', '2019-12-25 21:09:35'),
(637, '1577295282prod-2.jpg', 'dashboardImages/category/1577295282prod-2.jpg', 'category image', NULL, '2019-12-26 01:34:42', '2019-12-26 01:34:42'),
(638, '1577295282prod-2.jpg', 'dashboardImages/category/1577295282prod-2.jpg', 'category icon', NULL, '2019-12-26 01:34:42', '2019-12-26 01:34:42'),
(640, '1577295423prod-7.jpg', 'dashboardImages/category/1577295423prod-7.jpg', 'category icon', NULL, '2019-12-26 01:37:03', '2019-12-26 01:37:03'),
(641, '1577353590prod-4.jpg', 'dashboardImages/category/1577353590prod-4.jpg', 'category image', NULL, '2019-12-26 17:46:30', '2019-12-26 17:46:30'),
(642, '1577353590images.jfif', 'dashboardImages/category/1577353590images.jfif', 'category icon', NULL, '2019-12-26 17:46:30', '2019-12-26 17:46:30'),
(643, '1577353713prod-7.jpg', 'dashboardImages/category/1577353713prod-7.jpg', 'category image', NULL, '2019-12-26 17:48:33', '2019-12-26 17:48:33'),
(644, '1577353713industrial-workwear-500x500.jpg', 'dashboardImages/category/1577353713industrial-workwear-500x500.jpg', 'category icon', NULL, '2019-12-26 17:48:33', '2019-12-26 17:48:33'),
(645, '15773539081.jpg', 'dashboardImages/category/15773539081.jpg', 'category image', NULL, '2019-12-26 17:51:48', '2019-12-26 17:51:48'),
(646, '1577353908White-Lab-Coat-Laboratory-Unisex-Doctor-Wear-Hospital.jpg', 'dashboardImages/category/1577353908White-Lab-Coat-Laboratory-Unisex-Doctor-Wear-Hospital.jpg', 'category icon', NULL, '2019-12-26 17:51:48', '2019-12-26 17:51:48'),
(647, '1577354144indexss.jfif', 'dashboardImages/category/1577354144indexss.jfif', 'category image', NULL, '2019-12-26 17:55:44', '2019-12-26 17:55:44'),
(648, '1577354144apink-for-skoolooks-hd-woman-wearing-red-and-gray-school-uniform-png-clipart.jpg', 'dashboardImages/category/1577354144apink-for-skoolooks-hd-woman-wearing-red-and-gray-school-uniform-png-clipart.jpg', 'category icon', NULL, '2019-12-26 17:55:44', '2019-12-26 17:55:44'),
(649, '157735425453-532403_doctor-formal-wear-hd-png-download.png.jfif', 'dashboardImages/product/157735425453-532403_doctor-formal-wear-hd-png-download.png.jfif', 'product image', NULL, '2019-12-26 17:57:34', '2019-12-26 17:57:34'),
(650, '1577354254391315.jpg', 'dashboardImages/product/1577354254391315.jpg', 'product icon', NULL, '2019-12-26 17:57:34', '2019-12-26 17:57:34'),
(651, '12.jpg', 'dashboardImages/product/12.jpg', NULL, NULL, '2019-12-26 17:57:34', '2019-12-26 17:57:34'),
(652, '53-532403_doctor-formal-wear-hd-png-download.png.jfif', 'dashboardImages/product/53-532403_doctor-formal-wear-hd-png-download.png.jfif', NULL, NULL, '2019-12-26 17:57:34', '2019-12-26 17:57:34'),
(653, '122.jpg', 'dashboardImages/product/122.jpg', NULL, NULL, '2019-12-26 17:57:34', '2019-12-26 17:57:34'),
(654, '1577354539service-details-4.jpg', 'dashboardImages/category/1577354539service-details-4.jpg', 'category image', NULL, '2019-12-26 18:02:19', '2019-12-26 18:02:19'),
(655, '1577354539prod-10.jpg', 'dashboardImages/category/1577354539prod-10.jpg', 'category icon', NULL, '2019-12-26 18:02:19', '2019-12-26 18:02:19'),
(656, '1577354645service-details-3.jpg', 'dashboardImages/category/1577354645service-details-3.jpg', 'category image', NULL, '2019-12-26 18:04:05', '2019-12-26 18:04:05'),
(657, '1577354645prod-12.jpg', 'dashboardImages/category/1577354645prod-12.jpg', 'product icon', NULL, '2019-12-26 18:04:05', '2019-12-26 18:04:05'),
(658, '1577354793tbmy68-hd-original-imaf8emhs6xryjdt.jpeg.webp', 'dashboardImages/category/1577354793tbmy68-hd-original-imaf8emhs6xryjdt.jpeg.webp', 'category image', NULL, '2019-12-26 18:06:33', '2019-12-26 18:06:33'),
(659, '157735479371-6fVBtuiL._SY355_.jpg', 'dashboardImages/category/157735479371-6fVBtuiL._SY355_.jpg', 'category icon', NULL, '2019-12-26 18:06:33', '2019-12-26 18:06:33'),
(660, '1577368510White-Lab-Coat-Laboratory-Unisex-Doctor-Wear-Hospital.jpg', 'dashboardImages/product/1577368510White-Lab-Coat-Laboratory-Unisex-Doctor-Wear-Hospital.jpg', 'product image', NULL, '2019-12-26 21:55:10', '2019-12-26 21:55:10'),
(661, '15773685101.jpg', 'dashboardImages/product/15773685101.jpg', 'product icon', NULL, '2019-12-26 21:55:10', '2019-12-26 21:55:10'),
(662, '1 GuikI8iradTPYqbSJGnVsQ.jpeg', 'dashboardImages/product/1 GuikI8iradTPYqbSJGnVsQ.jpeg', NULL, NULL, '2019-12-26 21:55:10', '2019-12-26 21:55:10'),
(663, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2019-12-26 21:55:10', '2019-12-26 21:55:10'),
(664, '12.jpg', 'dashboardImages/product/12.jpg', NULL, NULL, '2019-12-26 21:55:10', '2019-12-26 21:55:10'),
(665, 'White-Lab-Coat-Laboratory-Unisex-Doctor-Wear-Hospital.jpg', 'dashboardImages/product/White-Lab-Coat-Laboratory-Unisex-Doctor-Wear-Hospital.jpg', NULL, NULL, '2019-12-26 21:55:10', '2019-12-26 21:55:10'),
(666, '1577368583dae931c5c655f86e4740b16a5b98f22c.jpg', 'dashboardImages/product/1577368583dae931c5c655f86e4740b16a5b98f22c.jpg', 'product image', NULL, '2019-12-26 21:56:23', '2019-12-26 21:56:23'),
(667, '1577368583apink-for-skoolooks-hd-woman-wearing-red-and-gray-school-uniform-png-clipart.jpg', 'dashboardImages/product/1577368583apink-for-skoolooks-hd-woman-wearing-red-and-gray-school-uniform-png-clipart.jpg', 'product1 icon', NULL, '2019-12-26 21:56:23', '2019-12-26 21:56:23'),
(668, 'industrial-workwear-500x500.jpg', 'dashboardImages/product/industrial-workwear-500x500.jpg', NULL, NULL, '2019-12-26 21:56:23', '2019-12-26 21:56:23'),
(669, 'kisspng-national-primary-school-school-uniform-student-edu-school-uniform-png-hd-youville-org-5d0a4764a77929.948678211560954724686.jpg', 'dashboardImages/product/kisspng-national-primary-school-school-uniform-student-edu-school-uniform-png-hd-youville-org-5d0a4764a77929.948678211560954724686.jpg', NULL, NULL, '2019-12-26 21:56:23', '2019-12-26 21:56:23'),
(670, 'large-RW32-3Z1Y.jpg', 'dashboardImages/product/large-RW32-3Z1Y.jpg', NULL, NULL, '2019-12-26 21:56:23', '2019-12-26 21:56:23'),
(671, '15773687401.jpg', 'dashboardImages/product/15773687401.jpg', 'product image', NULL, '2019-12-26 21:59:00', '2019-12-26 21:59:00'),
(672, '1577368740391315.jpg', 'dashboardImages/product/1577368740391315.jpg', 'product icon', NULL, '2019-12-26 21:59:00', '2019-12-26 21:59:00'),
(673, '1 GuikI8iradTPYqbSJGnVsQ.jpeg', 'dashboardImages/product/1 GuikI8iradTPYqbSJGnVsQ.jpeg', NULL, NULL, '2019-12-26 21:59:00', '2019-12-26 21:59:00'),
(674, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2019-12-26 21:59:00', '2019-12-26 21:59:00'),
(675, '12.jpg', 'dashboardImages/product/12.jpg', NULL, NULL, '2019-12-26 21:59:00', '2019-12-26 21:59:00'),
(676, '71-6fVBtuiL._SY355_.jpg', 'dashboardImages/product/71-6fVBtuiL._SY355_.jpg', NULL, NULL, '2019-12-26 21:59:00', '2019-12-26 21:59:00'),
(677, '1577368794image-asset.jpeg', 'dashboardImages/product/1577368794image-asset.jpeg', 'product image', NULL, '2019-12-26 21:59:54', '2019-12-26 21:59:54'),
(678, '157736879453-532403_doctor-formal-wear-hd-png-download.png.jfif', 'dashboardImages/product/157736879453-532403_doctor-formal-wear-hd-png-download.png.jfif', 'product icon', NULL, '2019-12-26 21:59:54', '2019-12-26 21:59:54'),
(679, '122.jpg', 'dashboardImages/product/122.jpg', NULL, NULL, '2019-12-26 21:59:54', '2019-12-26 21:59:54'),
(680, '391315.jpg', 'dashboardImages/product/391315.jpg', NULL, NULL, '2019-12-26 21:59:54', '2019-12-26 21:59:54'),
(681, 'B12791_BI1.JPG', 'dashboardImages/product/B12791_BI1.JPG', NULL, NULL, '2019-12-26 21:59:54', '2019-12-26 21:59:54'),
(682, '15777036741 GuikI8iradTPYqbSJGnVsQ.jpeg', 'dashboardImages/openGraph/15777036741 GuikI8iradTPYqbSJGnVsQ.jpeg', NULL, NULL, '2019-12-30 19:01:14', '2019-12-30 19:01:14'),
(683, '1577703692industrial-workwear-500x500.jpg', 'dashboardImages/openGraph/1577703692industrial-workwear-500x500.jpg', NULL, NULL, '2019-12-30 19:01:32', '2019-12-30 19:01:32'),
(684, '15777196691.jpg', 'dashboardImages/gallery/15777196691.jpg', NULL, NULL, '2019-12-30 23:27:49', '2019-12-30 23:27:49'),
(685, '157771966912.jpg', 'dashboardImages/gallery/157771966912.jpg', NULL, NULL, '2019-12-30 23:27:49', '2019-12-30 23:27:49'),
(688, '1577719924image-asset.jpeg', 'dashboardImages/gallery/1577719924image-asset.jpeg', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(689, '1577719924images.jfif', 'dashboardImages/gallery/1577719924images.jfif', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(690, '1577719924imagesa.jfif', 'dashboardImages/gallery/1577719924imagesa.jfif', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(691, '1577719924imagesaa.jfif', 'dashboardImages/gallery/1577719924imagesaa.jfif', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(692, '1577719924imagesadws.jfif', 'dashboardImages/gallery/1577719924imagesadws.jfif', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(693, '1577719924imagesssss.jfif', 'dashboardImages/gallery/1577719924imagesssss.jfif', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(694, '1577719924imageswork.jfif', 'dashboardImages/gallery/1577719924imageswork.jfif', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(695, '1577719924index.jfif', 'dashboardImages/gallery/1577719924index.jfif', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(696, '1577719924indexaa.jfif', 'dashboardImages/gallery/1577719924indexaa.jfif', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(697, '1577719924indexsdfs.jfif', 'dashboardImages/gallery/1577719924indexsdfs.jfif', NULL, NULL, '2019-12-30 23:32:04', '2019-12-30 23:32:04'),
(698, '1577720130ppe-png-hd-workwear-ppe-549.png', 'dashboardImages/gallery/1577720130ppe-png-hd-workwear-ppe-549.png', NULL, NULL, '2019-12-30 23:35:30', '2019-12-30 23:35:30'),
(699, '1577720130tbmy68-hd-original-imaf8emhs6xryjdt.jpeg.webp', 'dashboardImages/gallery/1577720130tbmy68-hd-original-imaf8emhs6xryjdt.jpeg.webp', NULL, NULL, '2019-12-30 23:35:30', '2019-12-30 23:35:30'),
(700, '1577720130towels-linens-store-bath-linen.jpg', 'dashboardImages/gallery/1577720130towels-linens-store-bath-linen.jpg', NULL, NULL, '2019-12-30 23:35:30', '2019-12-30 23:35:30'),
(701, '1577720130Unisex-White-Lab-Coat-Laboratory-Coat-Doctors-Jacket.jpg', 'dashboardImages/gallery/1577720130Unisex-White-Lab-Coat-Laboratory-Coat-Doctors-Jacket.jpg', NULL, NULL, '2019-12-30 23:35:30', '2019-12-30 23:35:30'),
(704, '1577781634samsung-logo-preview.png', 'dashboardImages/client/1577781634samsung-logo-preview.png', NULL, NULL, '2019-12-31 16:40:34', '2019-12-31 16:40:34'),
(705, '1577781662download (2).jfif', 'dashboardImages/client/1577781662download (2).jfif', NULL, NULL, '2019-12-31 16:41:02', '2019-12-31 16:41:02'),
(706, '1577781685LG-Logo.jpg', 'dashboardImages/client/1577781685LG-Logo.jpg', NULL, NULL, '2019-12-31 16:41:25', '2019-12-31 16:41:25'),
(707, '157778172641y0x5bWC8L.jpg', 'dashboardImages/client/157778172641y0x5bWC8L.jpg', NULL, NULL, '2019-12-31 16:42:06', '2019-12-31 16:42:06'),
(708, '1577782391Font-Toshiba-Logo.jpg', 'dashboardImages/client/1577782391Font-Toshiba-Logo.jpg', NULL, NULL, '2019-12-31 16:53:11', '2019-12-31 16:53:11'),
(709, '15777824172000px-Pepsi_logo_2014.svg.png', 'dashboardImages/client/15777824172000px-Pepsi_logo_2014.svg.png', NULL, NULL, '2019-12-31 16:53:37', '2019-12-31 16:53:37'),
(710, '15777824901280px-Ford_logo_flat.svg.png', 'dashboardImages/client/15777824901280px-Ford_logo_flat.svg.png', NULL, NULL, '2019-12-31 16:54:50', '2019-12-31 16:54:50'),
(711, '1577782520992df5ee3be05ee7_800x800ar.jpg', 'dashboardImages/client/1577782520992df5ee3be05ee7_800x800ar.jpg', NULL, NULL, '2019-12-31 16:55:20', '2019-12-31 16:55:20'),
(712, '1577797522a4376552c9bc71344d51b26492c91792.jpg', 'dashboardImages/category/1577797522a4376552c9bc71344d51b26492c91792.jpg', 'category image', NULL, '2019-12-31 21:05:22', '2019-12-31 21:05:22'),
(713, '1577797522DBw2jPAUIAAnkl9-1200x566.jpg', 'dashboardImages/category/1577797522DBw2jPAUIAAnkl9-1200x566.jpg', 'category icon', NULL, '2019-12-31 21:05:22', '2019-12-31 21:05:22'),
(714, '1577797670dae931c5c655f86e4740b16a5b98f22c.jpg', 'dashboardImages/product/1577797670dae931c5c655f86e4740b16a5b98f22c.jpg', 'product image', NULL, '2019-12-31 21:07:50', '2019-12-31 21:07:50'),
(715, '1577797670fashion-men-suits-businessman.jpg', 'dashboardImages/product/1577797670fashion-men-suits-businessman.jpg', 'product icon', NULL, '2019-12-31 21:07:50', '2019-12-31 21:07:50'),
(716, 'Dangerous-khiladi-2-hd-wallpapers18.jpg', 'dashboardImages/product/Dangerous-khiladi-2-hd-wallpapers18.jpg', NULL, NULL, '2019-12-31 21:07:50', '2019-12-31 21:07:50'),
(717, 'images.jfif', 'dashboardImages/product/images.jfif', NULL, NULL, '2019-12-31 21:07:50', '2019-12-31 21:07:50'),
(718, 'man-fashion-business-suit.jpg', 'dashboardImages/product/man-fashion-business-suit.jpg', NULL, NULL, '2019-12-31 21:07:50', '2019-12-31 21:07:50'),
(719, '1577798481Dangerous-khiladi-2-hd-wallpapers18.jpg', 'dashboardImages/product/1577798481Dangerous-khiladi-2-hd-wallpapers18.jpg', 'product image', NULL, '2019-12-31 21:21:21', '2019-12-31 21:21:21'),
(720, '1577798481apink-for-skoolooks-hd-woman-wearing-red-and-gray-school-uniform-png-clipart.jpg', 'dashboardImages/product/1577798481apink-for-skoolooks-hd-woman-wearing-red-and-gray-school-uniform-png-clipart.jpg', 'product icon', NULL, '2019-12-31 21:21:21', '2019-12-31 21:21:21');
INSERT INTO `image` (`id`, `name`, `path`, `alt`, `album_id`, `created_at`, `updated_at`) VALUES
(721, 'apink-for-skoolooks-hd-woman-wearing-red-and-gray-school-uniform-png-clipart.jpg', 'dashboardImages/product/apink-for-skoolooks-hd-woman-wearing-red-and-gray-school-uniform-png-clipart.jpg', NULL, NULL, '2019-12-31 21:21:21', '2019-12-31 21:21:21'),
(722, 'dae931c5c655f86e4740b16a5b98f22c.jpg', 'dashboardImages/product/dae931c5c655f86e4740b16a5b98f22c.jpg', NULL, NULL, '2019-12-31 21:21:21', '2019-12-31 21:21:21'),
(723, 'Dangerous-khiladi-2-hd-wallpapers18.jpg', 'dashboardImages/product/Dangerous-khiladi-2-hd-wallpapers18.jpg', NULL, NULL, '2019-12-31 21:21:21', '2019-12-31 21:21:21'),
(724, 'DBw2jPAUIAAnkl9-1200x566.jpg', 'dashboardImages/product/DBw2jPAUIAAnkl9-1200x566.jpg', NULL, NULL, '2019-12-31 21:21:21', '2019-12-31 21:21:21'),
(725, '15777989571be7c3553e12f20825090e70d0dff4c6.jpg', 'dashboardImages/product/15777989571be7c3553e12f20825090e70d0dff4c6.jpg', 'product image', NULL, '2019-12-31 21:29:17', '2019-12-31 21:29:17'),
(726, '15777989571.jpg', 'dashboardImages/product/15777989571.jpg', 'product icon', NULL, '2019-12-31 21:29:17', '2019-12-31 21:29:17'),
(727, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2019-12-31 21:29:17', '2019-12-31 21:29:17'),
(728, '1be7c3553e12f20825090e70d0dff4c6.jpg', 'dashboardImages/product/1be7c3553e12f20825090e70d0dff4c6.jpg', NULL, NULL, '2019-12-31 21:29:17', '2019-12-31 21:29:17'),
(729, '12.jpg', 'dashboardImages/product/12.jpg', NULL, NULL, '2019-12-31 21:29:17', '2020-01-01 18:19:38'),
(730, '1577803726man-fashion-business-suit.jpg', 'dashboardImages/product/1577803726man-fashion-business-suit.jpg', 'product image', NULL, '2019-12-31 22:48:46', '2019-12-31 22:48:46'),
(731, '1577803726Dangerous-khiladi-2-hd-wallpapers18.jpg', 'dashboardImages/product/1577803726Dangerous-khiladi-2-hd-wallpapers18.jpg', 'product icon', NULL, '2019-12-31 22:48:46', '2019-12-31 22:48:46'),
(732, 'dae931c5c655f86e4740b16a5b98f22c.jpg', 'dashboardImages/product/dae931c5c655f86e4740b16a5b98f22c.jpg', NULL, NULL, '2019-12-31 22:48:46', '2019-12-31 22:48:46'),
(733, 'Dangerous-khiladi-2-hd-wallpapers18.jpg', 'dashboardImages/product/Dangerous-khiladi-2-hd-wallpapers18.jpg', NULL, NULL, '2019-12-31 22:48:46', '2019-12-31 22:48:46'),
(734, 'fashion-men-suits-businessman.jpg', 'dashboardImages/product/fashion-men-suits-businessman.jpg', NULL, NULL, '2019-12-31 22:48:46', '2019-12-31 22:48:46'),
(735, '15778042111a.jpg', 'dashboardImages/product/15778042111a.jpg', 'product image', NULL, '2019-12-31 22:56:51', '2019-12-31 22:56:51'),
(736, '1577804211eyeem-122176151.jpg', 'dashboardImages/product/1577804211eyeem-122176151.jpg', 'product icon', NULL, '2019-12-31 22:56:51', '2019-12-31 22:56:51'),
(737, '1a.jpg', 'dashboardImages/product/1a.jpg', NULL, NULL, '2019-12-31 22:56:52', '2019-12-31 22:56:52'),
(738, '1qw.jpg', 'dashboardImages/product/1qw.jpg', NULL, NULL, '2019-12-31 22:56:52', '2019-12-31 22:56:52'),
(739, '308364372-contremaitre-direction-de-chantier-ingenieur-du-batiment-projet.jpg', 'dashboardImages/product/308364372-contremaitre-direction-de-chantier-ingenieur-du-batiment-projet.jpg', NULL, NULL, '2019-12-31 22:56:52', '2019-12-31 22:56:52'),
(740, 'ppe-png-hd-workwear-ppe-549.png', 'dashboardImages/product/ppe-png-hd-workwear-ppe-549.png', NULL, NULL, '2019-12-31 22:56:52', '2019-12-31 22:56:52'),
(741, '1577804550classic-black-and-white-housekeeping-dress-p283-1404_image.jpg', 'dashboardImages/product/1577804550classic-black-and-white-housekeeping-dress-p283-1404_image.jpg', 'product image', NULL, '2019-12-31 23:02:30', '2019-12-31 23:02:30'),
(742, '157780455051yZCPDUbrL._SX425_.jpg', 'dashboardImages/product/157780455051yZCPDUbrL._SX425_.jpg', 'product icon', NULL, '2019-12-31 23:02:30', '2019-12-31 23:02:30'),
(743, '4890-010_7890-010__97755.1534894517.1280.1280.jpg', 'dashboardImages/product/4890-010_7890-010__97755.1534894517.1280.1280.jpg', NULL, NULL, '2019-12-31 23:02:30', '2019-12-31 23:02:30'),
(744, '9891imb-185x325.jpg', 'dashboardImages/product/9891imb-185x325.jpg', NULL, NULL, '2019-12-31 23:02:30', '2019-12-31 23:02:30'),
(745, 'house-keeping-uniform-500x500.jpg', 'dashboardImages/product/house-keeping-uniform-500x500.jpg', NULL, NULL, '2019-12-31 23:02:30', '2019-12-31 23:02:30'),
(746, '1577874022_industrial-security-logistic-work-clothes.jpg', 'dashboardImages/open_graph/1577874022_industrial-security-logistic-work-clothes.jpg', 'og-certificate-image', NULL, '2020-01-01 18:20:22', '2020-01-01 18:20:22'),
(747, '1577874078_41y0x5bWC8L.jpg', 'dashboardImages/open_graph/1577874078_41y0x5bWC8L.jpg', 'og partner-imae', NULL, '2020-01-01 18:21:18', '2020-01-01 18:21:18'),
(748, '1577874158_logo-1.png', 'dashboardImages/open_graph/1577874158_logo-1.png', 'og home-image', NULL, '2020-01-01 18:22:38', '2020-01-01 18:22:38'),
(749, '1577874237_about-1.jpg', 'dashboardImages/open_graph/1577874237_about-1.jpg', 'og-about-image', NULL, '2020-01-01 18:23:57', '2020-01-01 18:23:57'),
(750, '1577874281_about-4.jpg', 'dashboardImages/open_graph/1577874281_about-4.jpg', 'og-contact-image', NULL, '2020-01-01 18:24:41', '2020-01-01 18:24:41'),
(751, '1577874859_about-3.jpg', 'dashboardImages/open_graph/1577874859_about-3.jpg', NULL, NULL, '2020-01-01 18:34:19', '2020-01-01 18:34:19'),
(752, '1577963344logo-1.png', 'dashboardImages/setting/1577963344logo-1.png', NULL, NULL, '2020-01-02 09:09:04', '2020-01-02 09:09:04'),
(753, '1577963344shuttle-logo.png', 'dashboardImages/setting/1577963344shuttle-logo.png', NULL, NULL, '2020-01-02 09:09:04', '2020-01-02 09:09:04'),
(754, '1578229072gallery1.jpg', 'dashboardImages/category/1578229072gallery1.jpg', 'honeymoon image', NULL, '2020-01-05 10:57:52', '2020-01-05 10:57:52'),
(755, '1578229072gallery1.jpg', 'dashboardImages/category/1578229072gallery1.jpg', 'honeymoon icon', NULL, '2020-01-05 10:57:52', '2020-01-05 10:57:52'),
(756, '1578229235tour-6.jpg', 'dashboardImages/category/1578229235tour-6.jpg', 'pilgrimage image', NULL, '2020-01-05 11:00:35', '2020-01-05 11:00:35'),
(757, '1578229236tour-7.jpg', 'dashboardImages/category/1578229236tour-7.jpg', 'pilgrimage icon', NULL, '2020-01-05 11:00:36', '2020-01-05 11:00:36'),
(758, '1578229351tour-7.jpg', 'dashboardImages/category/1578229351tour-7.jpg', 'Umarh image', NULL, '2020-01-05 11:02:31', '2020-01-05 11:02:31'),
(759, '1578229351tour-8.jpg', 'dashboardImages/category/1578229351tour-8.jpg', 'umrah icon', NULL, '2020-01-05 11:02:31', '2020-01-05 11:02:31'),
(760, '1578229526service-10.jpg', 'dashboardImages/category/1578229526service-10.jpg', 'foreign trips image', NULL, '2020-01-05 11:05:26', '2020-01-05 11:05:26'),
(761, '1578229526service-11.jpg', 'dashboardImages/category/1578229526service-11.jpg', 'foreign trips icon', NULL, '2020-01-05 11:05:26', '2020-01-05 11:05:26'),
(763, '1578229627service-11.jpg', 'dashboardImages/category/1578229627service-11.jpg', 'Domestic flights icon', NULL, '2020-01-05 11:07:07', '2020-01-05 11:07:07'),
(764, '1578238643tour-8.jpg', 'dashboardImages/category/1578238643tour-8.jpg', 'Religious trips image', NULL, '2020-01-05 13:37:23', '2020-01-05 13:37:23'),
(765, '1578238643tour-6.jpg', 'dashboardImages/category/1578238643tour-6.jpg', 'Religious trips icon', NULL, '2020-01-05 13:37:23', '2020-01-05 13:37:23'),
(767, '1578251978gallery1.jpg', 'dashboardImages/category/1578251978gallery1.jpg', 'سييسيؤس', NULL, '2020-01-05 17:19:38', '2020-01-05 17:19:38'),
(768, 'gallery1.jpg', 'dashboardImages/category/gallery1.jpg', NULL, NULL, '2020-01-05 17:19:39', '2020-01-05 17:19:39'),
(769, 'gallery2.jpg', 'dashboardImages/category/gallery2.jpg', NULL, NULL, '2020-01-05 17:19:39', '2020-01-05 17:19:39'),
(770, '1578304115service-2.png', 'dashboardImages/hotel/1578304115service-2.png', 'program 1 image', NULL, '2020-01-06 07:48:35', '2020-01-06 07:48:35'),
(771, '1578304168service-2.png', 'dashboardImages/hotel/1578304168service-2.png', 'program 1 image', NULL, '2020-01-06 07:49:28', '2020-01-06 07:49:28'),
(772, '1578304209service-2.png', 'dashboardImages/hotel/1578304209service-2.png', 'program 1 image', NULL, '2020-01-06 07:50:09', '2020-01-06 07:50:09'),
(773, '1578304634service-2.png', 'dashboardImages/hotel/1578304634service-2.png', 'program 1 image', NULL, '2020-01-06 07:57:14', '2020-01-06 07:57:14'),
(774, '1578304682service-2.png', 'dashboardImages/hotel/1578304682service-2.png', 'program 1 image', NULL, '2020-01-06 07:58:02', '2020-01-06 07:58:02'),
(777, 'service-2.png', 'dashboardImages/hotel/service-2.png', NULL, NULL, '2020-01-06 08:12:10', '2020-01-06 08:12:10'),
(778, 'service-3.png', 'dashboardImages/hotel/service-3.png', NULL, NULL, '2020-01-06 08:12:10', '2020-01-06 08:12:10'),
(779, 'service-4.jpg', 'dashboardImages/hotel/service-4.jpg', NULL, NULL, '2020-01-06 08:12:10', '2020-01-06 08:12:10'),
(780, '1578308891service-2.png', 'dashboardImages/hotel/1578308891service-2.png', 'program 1 image', NULL, '2020-01-06 09:08:11', '2020-01-06 09:08:11'),
(781, 'service-2.png', 'dashboardImages/hotel/service-2.png', NULL, NULL, '2020-01-06 09:08:11', '2020-01-06 09:08:11'),
(782, 'service-3.png', 'dashboardImages/hotel/service-3.png', NULL, NULL, '2020-01-06 09:08:11', '2020-01-06 09:08:11'),
(783, 'service-4.jpg', 'dashboardImages/hotel/service-4.jpg', NULL, NULL, '2020-01-06 09:08:11', '2020-01-06 09:08:11'),
(784, '1578311298service-11.jpg', 'dashboardImages/category/1578311298service-11.jpg', 'Domestic flights image', NULL, '2020-01-06 09:48:18', '2020-01-06 09:48:18'),
(785, '1578311298tour-1.jpg', 'dashboardImages/category/1578311298tour-1.jpg', 'Domestic flights icon', NULL, '2020-01-06 09:48:18', '2020-01-06 09:48:18'),
(786, '1578311422service-9.jpg', 'dashboardImages/category/1578311422service-9.jpg', 'Foreign trips image', NULL, '2020-01-06 09:50:22', '2020-01-06 09:50:22'),
(787, '1578311422service-10.jpg', 'dashboardImages/category/1578311422service-10.jpg', 'Foreign trips icon', NULL, '2020-01-06 09:50:22', '2020-01-06 09:50:22'),
(788, '1578311677tour-1.jpg', 'dashboardImages/hotel/1578311677tour-1.jpg', 'program 2 image', NULL, '2020-01-06 09:54:37', '2020-01-06 09:54:37'),
(789, 'service-9.jpg', 'dashboardImages/hotel/service-9.jpg', NULL, NULL, '2020-01-06 09:54:39', '2020-01-06 09:54:39'),
(790, 'service-10.jpg', 'dashboardImages/hotel/service-10.jpg', NULL, NULL, '2020-01-06 09:54:39', '2020-01-06 09:54:39'),
(791, 'service-11.jpg', 'dashboardImages/hotel/service-11.jpg', NULL, NULL, '2020-01-06 09:54:39', '2020-01-06 09:54:39'),
(792, 'tour-1.jpg', 'dashboardImages/hotel/tour-1.jpg', NULL, NULL, '2020-01-06 09:54:40', '2020-01-06 09:54:40'),
(793, '1578311843_service-1.png', 'dashboardImages/hotel/1578311843_service-1.png', 'program 1', NULL, '2020-01-06 09:57:23', '2020-01-06 09:57:23'),
(794, '1578311843_service-5.jpg', 'dashboardImages/hotel/1578311843_service-5.jpg', 'program 1', NULL, '2020-01-06 09:57:23', '2020-01-06 09:57:23'),
(795, '1578311843_service-6.jpg', 'dashboardImages/hotel/1578311843_service-6.jpg', 'program 1', NULL, '2020-01-06 09:57:23', '2020-01-06 09:57:23'),
(796, '1578324893slider-1.jpg', 'dashboardImages/slider/1578324893slider-1.jpg', 'slider-1 image', NULL, '2020-01-06 13:34:53', '2020-01-06 13:34:53'),
(797, '1578325005slider-3.jpg', 'dashboardImages/slider/1578325005slider-3.jpg', 'slider-2 image', NULL, '2020-01-06 13:36:45', '2020-01-06 13:36:45'),
(798, '1578325119slider-2.jpg', 'dashboardImages/slider/1578325119slider-2.jpg', 'slider-3 image', NULL, '2020-01-06 13:38:39', '2020-01-06 13:38:39'),
(799, '1578328257tour-5.jpg', 'dashboardImages/hotel/1578328257tour-5.jpg', 'program 3 image', NULL, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(800, 'tour-3.jpg', 'dashboardImages/hotel/tour-3.jpg', NULL, NULL, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(801, 'tour-4.jpg', 'dashboardImages/hotel/tour-4.jpg', NULL, NULL, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(802, 'tour-5.jpg', 'dashboardImages/hotel/tour-5.jpg', NULL, NULL, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(803, '1578328383tour-1.jpg', 'dashboardImages/hotel/1578328383tour-1.jpg', 'program 4 image', NULL, '2020-01-06 14:33:03', '2020-01-06 14:33:03'),
(804, 'service-1.png', 'dashboardImages/hotel/service-1.png', NULL, NULL, '2020-01-06 14:33:04', '2020-01-06 14:33:04'),
(805, 'service-10.jpg', 'dashboardImages/hotel/service-10.jpg', NULL, NULL, '2020-01-06 14:33:04', '2020-01-06 14:33:04'),
(806, 'service-11.jpg', 'dashboardImages/hotel/service-11.jpg', NULL, NULL, '2020-01-06 14:33:04', '2020-01-06 14:33:04'),
(807, '1578328607tour-3.jpg', 'dashboardImages/hotel/1578328607tour-3.jpg', 'program 5 image', NULL, '2020-01-06 14:36:47', '2020-01-06 14:36:47'),
(808, 'tour-1.jpg', 'dashboardImages/hotel/tour-1.jpg', NULL, NULL, '2020-01-06 14:36:48', '2020-01-06 14:36:48'),
(809, 'tour-2.jpg', 'dashboardImages/hotel/tour-2.jpg', NULL, NULL, '2020-01-06 14:36:48', '2020-01-06 14:36:48'),
(810, 'tour-3.jpg', 'dashboardImages/hotel/tour-3.jpg', NULL, NULL, '2020-01-06 14:36:48', '2020-01-06 14:36:48'),
(811, '1578328787service-8.jpg', 'dashboardImages/hotel/1578328787service-8.jpg', 'program 6 image', NULL, '2020-01-06 14:39:47', '2020-01-06 14:39:47'),
(812, 'service-8.jpg', 'dashboardImages/hotel/service-8.jpg', NULL, NULL, '2020-01-06 14:39:47', '2020-01-06 14:39:47'),
(813, 'service-9.jpg', 'dashboardImages/hotel/service-9.jpg', NULL, NULL, '2020-01-06 14:39:47', '2020-01-06 14:39:47'),
(814, 'service-10.jpg', 'dashboardImages/hotel/service-10.jpg', NULL, NULL, '2020-01-06 14:39:48', '2020-01-06 14:39:48'),
(815, '1578329943service-1.png', 'dashboardImages/hotel/1578329943service-1.png', 'program 7 image', NULL, '2020-01-06 14:59:03', '2020-01-06 14:59:03'),
(816, 'service-1.png', 'dashboardImages/hotel/service-1.png', NULL, NULL, '2020-01-06 14:59:04', '2020-01-06 14:59:04'),
(817, 'service-2.png', 'dashboardImages/hotel/service-2.png', NULL, NULL, '2020-01-06 14:59:04', '2020-01-06 14:59:04'),
(818, 'service-3.png', 'dashboardImages/hotel/service-3.png', NULL, NULL, '2020-01-06 14:59:04', '2020-01-06 14:59:04'),
(819, '1578475115avatar-1.jpg', 'dashboardImages/testimonial/1578475115avatar-1.jpg', NULL, NULL, '2020-01-08 07:18:35', '2020-01-08 07:18:35'),
(820, '1578475162avatar-2.jpg', 'dashboardImages/testimonial/1578475162avatar-2.jpg', NULL, NULL, '2020-01-08 07:19:22', '2020-01-08 07:19:22'),
(821, '1578475228avatar-3.jpg', 'dashboardImages/testimonial/1578475228avatar-3.jpg', NULL, NULL, '2020-01-08 07:20:28', '2020-01-08 07:20:28'),
(822, '1578475334about-1.jpg', 'dashboardImages/about/1578475334about-1.jpg', NULL, NULL, '2020-01-08 07:22:14', '2020-01-08 07:22:14'),
(823, '1578476454service-6.jpg', 'dashboardImages/hotel/1578476454service-6.jpg', 'program 8 image', NULL, '2020-01-08 07:40:54', '2020-01-08 07:40:54'),
(824, 'service-1.png', 'dashboardImages/hotel/service-1.png', NULL, NULL, '2020-01-08 07:40:55', '2020-01-08 07:40:55'),
(825, 'service-4.png', 'dashboardImages/hotel/service-4.png', NULL, NULL, '2020-01-08 07:40:55', '2020-01-08 07:40:55'),
(826, 'service-5.jpg', 'dashboardImages/hotel/service-5.jpg', NULL, NULL, '2020-01-08 07:40:55', '2020-01-08 07:40:55'),
(827, '1578495930_about-us.jpg', 'dashboardImages/open_graph/1578495930_about-us.jpg', NULL, NULL, '2020-01-08 13:05:30', '2020-01-08 13:05:47'),
(828, '1578497081service-1.png', 'dashboardImages/album/1578497081service-1.png', NULL, NULL, '2020-01-08 13:24:41', '2020-01-08 13:24:41'),
(833, '1578497493service-5.jpg', 'dashboardImages/album/1578497493service-5.jpg', NULL, NULL, '2020-01-08 13:31:33', '2020-01-08 13:31:33'),
(838, '1578497596gallery2.jpg', 'dashboardImages/album/1578497596gallery2.jpg', NULL, NULL, '2020-01-08 13:33:16', '2020-01-08 13:33:16'),
(839, '1578497614service-10.jpg', 'dashboardImages/album/1578497614service-10.jpg', NULL, 5, '2020-01-08 13:33:34', '2020-01-08 13:33:34'),
(840, '1578497614service-11.jpg', 'dashboardImages/album/1578497614service-11.jpg', NULL, 5, '2020-01-08 13:33:34', '2020-01-08 13:33:34'),
(841, '1578497614tour-1.jpg', 'dashboardImages/album/1578497614tour-1.jpg', NULL, 5, '2020-01-08 13:33:34', '2020-01-08 13:33:34'),
(842, '1578497685tour-4.jpg', 'dashboardImages/album/1578497685tour-4.jpg', NULL, NULL, '2020-01-08 13:34:45', '2020-01-08 13:34:45'),
(843, '1578497717gallery1.jpg', 'dashboardImages/album/1578497717gallery1.jpg', NULL, 6, '2020-01-08 13:35:17', '2020-01-08 13:35:17'),
(844, '1578497717gallery2.jpg', 'dashboardImages/album/1578497717gallery2.jpg', NULL, 6, '2020-01-08 13:35:17', '2020-01-08 13:35:17'),
(845, '1578497717gallery3.jpg', 'dashboardImages/album/1578497717gallery3.jpg', NULL, 6, '2020-01-08 13:35:17', '2020-01-08 13:35:17'),
(846, '1578497718service-8.jpg', 'dashboardImages/album/1578497718service-8.jpg', NULL, 6, '2020-01-08 13:35:18', '2020-01-08 13:35:18'),
(847, '1578497718service-9.jpg', 'dashboardImages/album/1578497718service-9.jpg', NULL, 6, '2020-01-08 13:35:18', '2020-01-08 13:35:18'),
(848, '1578497718service-10.jpg', 'dashboardImages/album/1578497718service-10.jpg', NULL, 6, '2020-01-08 13:35:18', '2020-01-08 13:35:18'),
(849, '1578497718service-11.jpg', 'dashboardImages/album/1578497718service-11.jpg', NULL, 6, '2020-01-08 13:35:18', '2020-01-08 13:35:18'),
(850, '1578497718tour-1.jpg', 'dashboardImages/album/1578497718tour-1.jpg', NULL, 6, '2020-01-08 13:35:18', '2020-01-08 13:35:18'),
(851, '1578497718tour-2.jpg', 'dashboardImages/album/1578497718tour-2.jpg', NULL, 6, '2020-01-08 13:35:18', '2020-01-08 13:35:18'),
(852, '1578497719tour-3.jpg', 'dashboardImages/album/1578497719tour-3.jpg', NULL, 6, '2020-01-08 13:35:19', '2020-01-08 13:35:19'),
(853, '1578497719tour-4.jpg', 'dashboardImages/album/1578497719tour-4.jpg', NULL, 6, '2020-01-08 13:35:19', '2020-01-08 13:35:19'),
(854, '1578497719tour-5.jpg', 'dashboardImages/album/1578497719tour-5.jpg', NULL, 6, '2020-01-08 13:35:19', '2020-01-08 13:35:19'),
(855, '1578573945gallery2.jpg', 'dashboardImages/hotel/1578573945gallery2.jpg', 'program 9 image', NULL, '2020-01-09 10:45:45', '2020-01-09 10:45:45'),
(856, 'gallery1.jpg', 'dashboardImages/hotel/gallery1.jpg', NULL, NULL, '2020-01-09 10:45:45', '2020-01-09 10:45:45'),
(857, 'gallery2.jpg', 'dashboardImages/hotel/gallery2.jpg', NULL, NULL, '2020-01-09 10:45:46', '2020-01-09 10:45:46'),
(858, 'gallery3.jpg', 'dashboardImages/hotel/gallery3.jpg', NULL, NULL, '2020-01-09 10:45:46', '2020-01-09 10:45:46'),
(859, 'gallery4.jpg', 'dashboardImages/hotel/gallery4.jpg', NULL, NULL, '2020-01-09 10:45:46', '2020-01-09 10:45:46'),
(860, '1578575883hotel_bg.jpg', 'dashboardImages/album/1578575883hotel_bg.jpg', NULL, NULL, '2020-01-09 11:18:03', '2020-01-09 11:18:03'),
(861, '1579316416logo-1.png', 'dashboardImages/setting/1579316416logo-1.png', NULL, NULL, '2020-01-18 01:00:16', '2020-01-18 01:00:16'),
(862, '1579316416logo-1.png', 'dashboardImages/setting/1579316416logo-1.png', NULL, NULL, '2020-01-18 01:00:16', '2020-01-18 01:00:16'),
(863, '1579316617logo-black.png', 'dashboardImages/setting/1579316617logo-black.png', NULL, NULL, '2020-01-18 01:03:37', '2020-01-18 01:03:37'),
(864, '1579316637logo-2.png', 'dashboardImages/setting/1579316637logo-2.png', NULL, NULL, '2020-01-18 01:03:57', '2020-01-18 01:03:57'),
(865, '1579316658logo-1.png', 'dashboardImages/setting/1579316658logo-1.png', NULL, NULL, '2020-01-18 01:04:18', '2020-01-18 01:04:18'),
(866, '1579318715slide-1.jpg', 'dashboardImages/slider/1579318715slide-1.jpg', 'slider-image', NULL, '2020-01-18 01:38:35', '2020-01-18 01:38:35'),
(867, '1579318847slide-1.png', 'dashboardImages/slider/1579318847slide-1.png', 'slider-image', NULL, '2020-01-18 01:40:47', '2020-01-18 01:40:47'),
(868, '1579318917slide-2.jpg', 'dashboardImages/slider/1579318917slide-2.jpg', 'slider-image', NULL, '2020-01-18 01:41:57', '2020-01-18 01:41:57'),
(869, '15793199371.jpg', 'dashboardImages/category/15793199371.jpg', 'category image', NULL, '2020-01-18 01:58:57', '2020-01-18 01:58:57'),
(870, '15793199371.jpg', 'dashboardImages/category/15793199371.jpg', 'category icon', NULL, '2020-01-18 01:58:57', '2020-01-18 01:58:57'),
(871, '1.jpg', 'dashboardImages/category/1.jpg', NULL, NULL, '2020-01-18 01:58:58', '2020-01-18 01:58:58'),
(872, '2.jpg', 'dashboardImages/category/2.jpg', NULL, NULL, '2020-01-18 01:58:58', '2020-01-18 01:58:58'),
(874, '15793199641.jpg', 'dashboardImages/category/15793199641.jpg', 'category icon', NULL, '2020-01-18 01:59:24', '2020-01-18 01:59:24'),
(875, '15793202762.jpg', 'dashboardImages/category/15793202762.jpg', 'category image', NULL, '2020-01-18 02:04:36', '2020-01-18 02:04:36'),
(876, '15793202762.jpg', 'dashboardImages/category/15793202762.jpg', 'icon image', NULL, '2020-01-18 02:04:36', '2020-01-18 02:04:36'),
(877, '15793209051.jpg', 'dashboardImages/product/15793209051.jpg', 'product image', NULL, '2020-01-18 02:15:05', '2020-01-18 02:15:05'),
(878, '15793209061.jpg', 'dashboardImages/product/15793209061.jpg', 'product icon', NULL, '2020-01-18 02:15:06', '2020-01-18 02:15:06'),
(879, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-01-18 02:15:06', '2020-01-18 02:15:06'),
(880, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-01-18 02:15:06', '2020-01-18 02:15:06'),
(881, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-01-18 02:15:06', '2020-01-18 02:15:06'),
(882, '15793344112.jpg', 'dashboardImages/product/15793344112.jpg', 'product image', NULL, '2020-01-18 06:00:11', '2020-01-18 06:00:11'),
(883, '15793344112.jpg', 'dashboardImages/product/15793344112.jpg', 'product icon', NULL, '2020-01-18 06:00:11', '2020-01-18 06:00:11'),
(884, '15793346212.jpg', 'dashboardImages/product/15793346212.jpg', 'product image', NULL, '2020-01-18 06:03:41', '2020-01-18 06:03:41'),
(885, '15793346212.jpg', 'dashboardImages/product/15793346212.jpg', 'product icon', NULL, '2020-01-18 06:03:41', '2020-01-18 06:03:41'),
(886, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-01-18 06:03:42', '2020-01-18 06:03:42'),
(887, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-01-18 06:03:42', '2020-01-18 06:03:42'),
(888, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-01-18 06:03:42', '2020-01-18 06:03:42'),
(889, '15793346813.jpg', 'dashboardImages/product/15793346813.jpg', 'product image', NULL, '2020-01-18 06:04:41', '2020-01-18 06:04:41'),
(890, '15793346823.jpg', 'dashboardImages/product/15793346823.jpg', 'product icon', NULL, '2020-01-18 06:04:42', '2020-01-18 06:04:42'),
(891, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-01-18 06:04:42', '2020-01-18 06:04:42'),
(892, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-01-18 06:04:42', '2020-01-18 06:04:42'),
(893, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-01-18 06:04:42', '2020-01-18 06:04:42'),
(894, '15793799533.jpg', 'dashboardImages/client/15793799533.jpg', NULL, NULL, '2020-01-18 18:39:13', '2020-01-18 18:39:13'),
(895, '15793800601.jpg', 'dashboardImages/client/15793800601.jpg', NULL, NULL, '2020-01-18 18:41:00', '2020-01-18 18:41:00'),
(896, '15793800862.jpg', 'dashboardImages/client/15793800862.jpg', NULL, NULL, '2020-01-18 18:41:26', '2020-01-18 18:41:26'),
(897, '15793801324.jpg', 'dashboardImages/client/15793801324.jpg', NULL, NULL, '2020-01-18 18:42:12', '2020-01-18 18:42:12'),
(898, '15793801815.jpg', 'dashboardImages/client/15793801815.jpg', NULL, NULL, '2020-01-18 18:43:01', '2020-01-18 18:43:01'),
(899, '15793834191.png', 'dashboardImages/feature/15793834191.png', NULL, NULL, '2020-01-18 19:36:59', '2020-01-18 19:36:59'),
(900, '1579383815doctor.png', 'dashboardImages/slider/1579383815doctor.png', NULL, NULL, '2020-01-18 19:43:35', '2020-01-18 19:43:35'),
(901, '1579383899medicine.png', 'dashboardImages/feature/1579383899medicine.png', NULL, NULL, '2020-01-18 19:44:59', '2020-01-18 19:44:59'),
(902, '1579383969quality.png', 'dashboardImages/feature/1579383969quality.png', NULL, NULL, '2020-01-18 19:46:09', '2020-01-18 19:46:09'),
(903, '1579384014shopping-bag.png', 'dashboardImages/feature/1579384014shopping-bag.png', NULL, NULL, '2020-01-18 19:46:54', '2020-01-18 19:46:54'),
(904, '15793892182.png', 'dashboardImages/about/15793892182.png', NULL, NULL, '2020-01-18 21:13:38', '2020-01-18 21:13:38'),
(905, '15793892181.png', 'dashboardImages/about/15793892181.png', NULL, NULL, '2020-01-18 21:13:38', '2020-01-18 21:13:38'),
(906, '1579565597img-2.png', 'dashboardImages/about/1579565597img-2.png', NULL, NULL, '2020-01-20 22:13:17', '2020-01-20 22:13:17'),
(907, '1579565597main-project-img.jpg', 'dashboardImages/about/1579565597main-project-img.jpg', NULL, NULL, '2020-01-20 22:13:17', '2020-01-20 22:13:17'),
(908, '1579566326img-1.png', 'dashboardImages/about/1579566326img-1.png', NULL, NULL, '2020-01-20 22:25:26', '2020-01-20 22:25:26'),
(910, '15796963931star.png', 'dashboardImages/product/15796963931star.png', 'sffe', NULL, '2020-01-22 10:33:13', '2020-01-22 10:33:13'),
(911, '1star.png', 'dashboardImages/product/1star.png', NULL, NULL, '2020-01-22 10:33:14', '2020-01-22 10:33:14'),
(912, '2stars.png', 'dashboardImages/product/2stars.png', NULL, NULL, '2020-01-22 10:33:14', '2020-01-22 10:33:14'),
(913, '3stars.png', 'dashboardImages/product/3stars.png', NULL, NULL, '2020-01-22 10:33:14', '2020-01-22 10:33:14'),
(914, '15796969323stars.png', 'dashboardImages/product/15796969323stars.png', 'xadsd', NULL, '2020-01-22 10:42:12', '2020-01-22 10:42:12'),
(915, '1579696932Star.png', 'dashboardImages/product/1579696932Star.png', 'wdwdw', NULL, '2020-01-22 10:42:12', '2020-01-22 10:42:12'),
(917, '1579697023Star.png', 'dashboardImages/product/1579697023Star.png', 'wdwdw', NULL, '2020-01-22 10:43:43', '2020-01-22 10:43:43'),
(918, 'grey-eye-icon-isolated-on-260nw-1319885813.jpg.png', 'dashboardImages/product/grey-eye-icon-isolated-on-260nw-1319885813.jpg.png', NULL, NULL, '2020-01-22 10:43:44', '2020-01-22 10:43:44'),
(919, 'index.jpg', 'dashboardImages/product/index.jpg', NULL, NULL, '2020-01-22 10:43:44', '2020-01-22 10:43:44'),
(920, 'Star.png', 'dashboardImages/product/Star.png', NULL, NULL, '2020-01-22 10:43:44', '2020-01-22 10:43:44'),
(921, 'star12.png', 'dashboardImages/product/star12.png', NULL, NULL, '2020-01-22 10:43:44', '2020-01-22 10:43:44'),
(936, '15921305093.jpg', 'dashboardImages/album/15921305093.jpg', NULL, NULL, '2020-06-14 08:28:29', '2020-06-14 08:28:29'),
(943, '15921306453.jpeg', 'dashboardImages/album/15921306453.jpeg', NULL, NULL, '2020-06-14 08:30:45', '2020-06-14 08:30:45'),
(948, '15921314653.jpg', 'dashboardImages/slider/15921314653.jpg', 'category image', NULL, '2020-06-14 08:44:25', '2020-06-14 08:44:25'),
(949, '15921314653.jpg', 'dashboardImages/category/15921314653.jpg', 'category icon', NULL, '2020-06-14 08:44:25', '2020-06-14 08:44:25'),
(950, '15921315393.jpg', 'dashboardImages/slider/15921315393.jpg', 'category image', NULL, '2020-06-14 08:45:39', '2020-06-14 08:45:39'),
(951, '15921315393.jpg', 'dashboardImages/category/15921315393.jpg', 'category icon', NULL, '2020-06-14 08:45:39', '2020-06-14 08:45:39'),
(952, '15921318123.jpg', 'dashboardImages/slider/15921318123.jpg', 'product image', NULL, '2020-06-14 08:50:12', '2020-06-14 08:50:12'),
(953, '15921318123.jpg', 'dashboardImages/product/15921318123.jpg', 'product icon', NULL, '2020-06-14 08:50:12', '2020-06-14 08:50:12'),
(954, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 08:50:13', '2020-06-14 08:50:13'),
(955, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 08:50:13', '2020-06-14 08:50:13'),
(956, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 08:50:13', '2020-06-14 08:50:13'),
(957, '15921325173.jpg', 'dashboardImages/slider/15921325173.jpg', 'product image', NULL, '2020-06-14 09:01:57', '2020-06-14 09:01:57'),
(958, '15921325173.jpg', 'dashboardImages/product/15921325173.jpg', 'product icon', NULL, '2020-06-14 09:01:57', '2020-06-14 09:01:57'),
(959, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:01:58', '2020-06-14 09:01:58'),
(960, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:01:58', '2020-06-14 09:01:58'),
(961, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:01:58', '2020-06-14 09:01:58'),
(962, '15921326093.jpg', 'dashboardImages/slider/15921326093.jpg', 'product image', NULL, '2020-06-14 09:03:29', '2020-06-14 09:03:29'),
(963, '15921326093.jpg', 'dashboardImages/product/15921326093.jpg', 'product icon', NULL, '2020-06-14 09:03:29', '2020-06-14 09:03:29'),
(964, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:03:30', '2020-06-14 09:03:30'),
(965, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:03:30', '2020-06-14 09:03:30'),
(966, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:03:30', '2020-06-14 09:03:30'),
(967, '15921327361.jpg', 'dashboardImages/slider/15921327361.jpg', 'category image', NULL, '2020-06-14 09:05:36', '2020-06-14 09:05:36'),
(968, '15921327361.jpg', 'dashboardImages/category/15921327361.jpg', 'icon image', NULL, '2020-06-14 09:05:36', '2020-06-14 09:05:36'),
(969, '15921328373.jpg', 'dashboardImages/product/15921328373.jpg', 'product image', NULL, '2020-06-14 09:07:17', '2020-06-14 09:07:17'),
(970, '15921328373.jpg', 'dashboardImages/product/15921328373.jpg', 'product icon', NULL, '2020-06-14 09:07:17', '2020-06-14 09:07:17'),
(971, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:07:18', '2020-06-14 09:07:18'),
(972, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:07:18', '2020-06-14 09:07:18'),
(973, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:07:18', '2020-06-14 09:07:18'),
(974, '15921329193.jpg', 'dashboardImages/product/15921329193.jpg', 'product image', NULL, '2020-06-14 09:08:39', '2020-06-14 09:08:39'),
(975, '15921329193.jpg', 'dashboardImages/product/15921329193.jpg', 'product icon', NULL, '2020-06-14 09:08:39', '2020-06-14 09:08:39'),
(976, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:08:40', '2020-06-14 09:08:40'),
(977, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:08:40', '2020-06-14 09:08:40'),
(978, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:08:40', '2020-06-14 09:08:40'),
(979, '15921329783.jpg', 'dashboardImages/product/15921329783.jpg', 'product image', NULL, '2020-06-14 09:09:38', '2020-06-14 09:09:38'),
(980, '15921329793.jpg', 'dashboardImages/product/15921329793.jpg', 'product icon', NULL, '2020-06-14 09:09:39', '2020-06-14 09:09:39'),
(981, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:09:39', '2020-06-14 09:09:39'),
(982, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:09:39', '2020-06-14 09:09:39'),
(983, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:09:39', '2020-06-14 09:09:39'),
(984, '15921330662.jpg', 'dashboardImages/category/15921330662.jpg', 'category image', NULL, '2020-06-14 09:11:06', '2020-06-14 09:11:06'),
(985, '15921330662.jpg', 'dashboardImages/category/15921330662.jpg', 'category icon', NULL, '2020-06-14 09:11:06', '2020-06-14 09:11:06'),
(986, '15921331313.jpg', 'dashboardImages/product/15921331313.jpg', 'product image', NULL, '2020-06-14 09:12:11', '2020-06-14 09:12:11'),
(987, '15921331313.jpg', 'dashboardImages/product/15921331313.jpg', 'product icon', NULL, '2020-06-14 09:12:11', '2020-06-14 09:12:11'),
(988, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:12:12', '2020-06-14 09:12:12'),
(989, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:12:12', '2020-06-14 09:12:12'),
(990, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:12:12', '2020-06-14 09:12:12'),
(991, '15921331893.jpg', 'dashboardImages/product/15921331893.jpg', 'product image', NULL, '2020-06-14 09:13:09', '2020-06-14 09:13:09'),
(992, '15921331893.jpg', 'dashboardImages/product/15921331893.jpg', 'product icon', NULL, '2020-06-14 09:13:09', '2020-06-14 09:13:09'),
(993, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:13:09', '2020-06-14 09:13:09'),
(994, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:13:09', '2020-06-14 09:13:09'),
(995, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:13:10', '2020-06-14 09:13:10'),
(996, '15921332383.jpg', 'dashboardImages/product/15921332383.jpg', 'product image', NULL, '2020-06-14 09:13:58', '2020-06-14 09:13:58'),
(997, '15921332383.jpg', 'dashboardImages/product/15921332383.jpg', 'product icon', NULL, '2020-06-14 09:13:58', '2020-06-14 09:13:58'),
(998, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:13:59', '2020-06-14 09:13:59'),
(999, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:13:59', '2020-06-14 09:13:59'),
(1000, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:13:59', '2020-06-14 09:13:59'),
(1001, '15921348833.jpg', 'dashboardImages/category/15921348833.jpg', 'category image', NULL, '2020-06-14 09:41:23', '2020-06-14 09:41:23'),
(1002, '15921348833.jpg', 'dashboardImages/category/15921348833.jpg', 'category icon', NULL, '2020-06-14 09:41:23', '2020-06-14 09:41:23'),
(1003, '15921349803.jpg', 'dashboardImages/product/15921349803.jpg', 'product image', NULL, '2020-06-14 09:43:00', '2020-06-14 09:43:00'),
(1004, '15921349803.jpg', 'dashboardImages/product/15921349803.jpg', 'product icon', NULL, '2020-06-14 09:43:00', '2020-06-14 09:43:00'),
(1005, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:43:01', '2020-06-14 09:43:01'),
(1006, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:43:01', '2020-06-14 09:43:01'),
(1007, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:43:01', '2020-06-14 09:43:01'),
(1008, '15921352003.jpg', 'dashboardImages/product/15921352003.jpg', 'product image', NULL, '2020-06-14 09:46:40', '2020-06-14 09:46:40'),
(1009, '15921352003.jpg', 'dashboardImages/product/15921352003.jpg', 'product icon', NULL, '2020-06-14 09:46:40', '2020-06-14 09:46:40'),
(1010, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:46:40', '2020-06-14 09:46:40'),
(1011, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:46:40', '2020-06-14 09:46:40'),
(1012, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:46:40', '2020-06-14 09:46:40'),
(1013, '15921355683.jpg', 'dashboardImages/product/15921355683.jpg', 'product image', NULL, '2020-06-14 09:52:48', '2020-06-14 09:52:48'),
(1014, '15921355683.jpg', 'dashboardImages/product/15921355683.jpg', 'product icon', NULL, '2020-06-14 09:52:48', '2020-06-14 09:52:48'),
(1015, '1.jpg', 'dashboardImages/product/1.jpg', NULL, NULL, '2020-06-14 09:52:48', '2020-06-14 09:52:48'),
(1016, '2.jpg', 'dashboardImages/product/2.jpg', NULL, NULL, '2020-06-14 09:52:48', '2020-06-14 09:52:48'),
(1017, '3.jpg', 'dashboardImages/product/3.jpg', NULL, NULL, '2020-06-14 09:52:48', '2020-06-14 09:52:48'),
(1018, '15921359171.jpg', 'dashboardImages/blog/15921359171.jpg', 'first-blog', NULL, '2020-06-14 09:58:37', '2020-06-14 09:58:37'),
(1019, '15921359762.jpg', 'dashboardImages/blog/15921359762.jpg', 'second blog', NULL, '2020-06-14 09:59:36', '2020-06-14 09:59:36'),
(1020, '15921360183.jpg', 'dashboardImages/blog/15921360183.jpg', 'third blog', NULL, '2020-06-14 10:00:18', '2020-06-14 10:00:18'),
(1021, '15921360842.jpg', 'dashboardImages/blog/15921360842.jpg', 'fourth blog', NULL, '2020-06-14 10:01:24', '2020-06-14 10:01:24'),
(1022, '1592136890_logo-black.png', 'dashboardImages/open_graph/1592136890_logo-black.png', 'home:og', NULL, '2020-06-14 10:14:50', '2020-06-14 10:14:50'),
(1023, '1592136938_why-to-choose-1.jpg', 'dashboardImages/open_graph/1592136938_why-to-choose-1.jpg', 'about:og', NULL, '2020-06-14 10:15:38', '2020-06-14 10:15:39'),
(1024, '1592136980_banner-img.jpg', 'dashboardImages/open_graph/1592136980_banner-img.jpg', NULL, NULL, '2020-06-14 10:16:20', '2020-11-18 14:02:53'),
(1025, '1592137020_3.jpg', 'dashboardImages/open_graph/1592137020_3.jpg', 'product-og', NULL, '2020-06-14 10:17:00', '2020-06-14 10:17:00'),
(1026, '1592137046_banner-img.jpg', 'dashboardImages/open_graph/1592137046_banner-img.jpg', 'category-og', NULL, '2020-06-14 10:17:26', '2020-06-14 10:17:26'),
(1027, '1592137095_3.jpeg', 'dashboardImages/open_graph/1592137095_3.jpeg', 'partner-og', NULL, '2020-06-14 10:18:15', '2020-06-14 10:18:15'),
(1028, '1592137283_1.jpeg', 'dashboardImages/open_graph/1592137283_1.jpeg', 'certificate-og', NULL, '2020-06-14 10:21:23', '2020-06-14 10:21:23'),
(1029, '1592137325_4.jpg', 'dashboardImages/open_graph/1592137325_4.jpg', 'album-og', NULL, '2020-06-14 10:22:05', '2020-06-14 10:22:05'),
(1030, '1592137685logo-black.png', 'dashboardImages/setting/1592137685logo-black.png', NULL, NULL, '2020-06-14 10:28:05', '2020-06-14 10:28:05'),
(1031, '1592137685logo-white.png', 'dashboardImages/setting/1592137685logo-white.png', NULL, NULL, '2020-06-14 10:28:05', '2020-06-14 10:28:05'),
(1033, '1592138060slide-2.jpg', 'dashboardImages/slider/1592138060slide-2.jpg', 'slider-image', NULL, '2020-06-14 10:34:20', '2020-06-14 10:34:20'),
(1034, '1592138079slide-3.jpg', 'dashboardImages/slider/1592138079slide-3.jpg', 'slider-image', NULL, '2020-06-14 10:34:39', '2020-06-14 10:34:39'),
(1035, '1592138231banner-img.jpg', 'dashboardImages/slider/1592138231banner-img.jpg', 'slider-image', NULL, '2020-06-14 10:37:11', '2020-06-14 10:37:11'),
(1037, '15921399433.png', 'dashboardImages/slider/15921399433.png', NULL, NULL, '2020-06-14 11:05:43', '2020-06-14 11:05:43'),
(1038, '15921399772.png', 'dashboardImages/slider/15921399772.png', NULL, NULL, '2020-06-14 11:06:17', '2020-06-14 11:06:17'),
(1039, '15921400094.png', 'dashboardImages/slider/15921400094.png', NULL, NULL, '2020-06-14 11:06:49', '2020-06-14 11:06:49'),
(1040, '15921400321.png', 'dashboardImages/slider/15921400321.png', NULL, NULL, '2020-06-14 11:07:12', '2020-06-14 11:07:12'),
(1041, '15921400731.png', 'dashboardImages/slider/15921400731.png', NULL, NULL, '2020-06-14 11:07:53', '2020-06-14 11:07:53'),
(1042, '15921401164.png', 'dashboardImages/slider/15921401164.png', NULL, NULL, '2020-06-14 11:08:36', '2020-06-14 11:08:36'),
(1044, '15921412101.png', 'dashboardImages/feature/15921412101.png', NULL, NULL, '2020-06-14 11:26:50', '2020-06-14 11:26:50'),
(1045, '15921414442.png', 'dashboardImages/feature/15921414442.png', NULL, NULL, '2020-06-14 11:30:44', '2020-06-14 11:30:44'),
(1046, '15921414903.png', 'dashboardImages/feature/15921414903.png', NULL, NULL, '2020-06-14 11:31:30', '2020-06-14 11:31:30'),
(1047, '1592142413why-to-choose-1.jpg', 'dashboardImages/about/1592142413why-to-choose-1.jpg', NULL, NULL, '2020-06-14 11:46:53', '2020-06-14 11:46:53'),
(1048, '1592142413mission.jpg', 'dashboardImages/about/1592142413mission.jpg', NULL, NULL, '2020-06-14 11:46:53', '2020-06-14 11:46:53'),
(1049, '1592142413vision.jpg', 'dashboardImages/about/1592142413vision.jpg', NULL, NULL, '2020-06-14 11:46:53', '2020-06-14 11:46:53'),
(1050, '1592142413values.jpg', 'dashboardImages/about/1592142413values.jpg', NULL, NULL, '2020-06-14 11:46:53', '2020-06-14 11:46:53'),
(1051, '15922160862.jpeg', 'dashboardImages/album/15922160862.jpeg', NULL, NULL, '2020-06-15 08:14:46', '2020-06-15 08:14:46'),
(1052, '15922166211.jpg', 'dashboardImages/testimonial/15922166211.jpg', NULL, NULL, '2020-06-15 08:23:41', '2020-06-15 08:23:41'),
(1053, '15922166424.jpg', 'dashboardImages/testimonial/15922166424.jpg', NULL, NULL, '2020-06-15 08:24:02', '2020-06-15 08:24:02'),
(1054, '15922166782.jpg', 'dashboardImages/testimonial/15922166782.jpg', NULL, NULL, '2020-06-15 08:24:38', '2020-06-15 08:24:38'),
(1055, '1592217078_4.jpg', 'dashboardImages/open_graph/1592217078_4.jpg', 'blog-og', NULL, '2020-06-15 08:31:18', '2020-06-15 08:31:18'),
(1056, '16018983991e653291c000cbe92c1fca98d4dd6e6c.jpg', 'dashboardImages/gallery/16018983991e653291c000cbe92c1fca98d4dd6e6c.jpg', NULL, NULL, '2020-10-05 09:46:39', '2020-10-05 09:46:39'),
(1057, '16018984008e6cbf967074f22a28474d81e5faa427.jpg', 'dashboardImages/gallery/16018984008e6cbf967074f22a28474d81e5faa427.jpg', NULL, NULL, '2020-10-05 09:46:40', '2020-10-05 09:46:40'),
(1058, '1601898400Airbus_Bird_of_Prey_concept_plane.0.jpeg', 'dashboardImages/gallery/1601898400Airbus_Bird_of_Prey_concept_plane.0.jpeg', NULL, NULL, '2020-10-05 09:46:40', '2020-10-05 09:46:40'),
(1059, '1601898400Transpo-plane-1220032882.jpg', 'dashboardImages/gallery/1601898400Transpo-plane-1220032882.jpg', NULL, NULL, '2020-10-05 09:46:40', '2020-10-05 09:46:40'),
(1060, '16018985731.jpeg', 'dashboardImages/gallery/16018985731.jpeg', NULL, NULL, '2020-10-05 09:49:33', '2020-10-05 09:49:33'),
(1061, '16018985732.jpg', 'dashboardImages/gallery/16018985732.jpg', NULL, NULL, '2020-10-05 09:49:33', '2020-10-05 09:49:33'),
(1062, '16018985733.jpg', 'dashboardImages/gallery/16018985733.jpg', NULL, NULL, '2020-10-05 09:49:33', '2020-10-05 09:49:33'),
(1063, '16018985734.jpg', 'dashboardImages/gallery/16018985734.jpg', NULL, NULL, '2020-10-05 09:49:33', '2020-10-05 09:49:33'),
(1064, '16018985735.jpg', 'dashboardImages/gallery/16018985735.jpg', NULL, NULL, '2020-10-05 09:49:33', '2020-10-05 09:49:33'),
(1065, '16018985736.jpg', 'dashboardImages/gallery/16018985736.jpg', NULL, NULL, '2020-10-05 09:49:33', '2020-10-05 09:49:33'),
(1066, '16018985747.jpg', 'dashboardImages/gallery/16018985747.jpg', NULL, NULL, '2020-10-05 09:49:34', '2020-10-05 09:49:34'),
(1067, '16018985748.jpg', 'dashboardImages/gallery/16018985748.jpg', NULL, NULL, '2020-10-05 09:49:34', '2020-10-05 09:49:34'),
(1068, '16019001931.jpeg', 'dashboardImages/service/16019001931.jpeg', 'any alt', NULL, '2020-10-05 10:16:33', '2020-10-05 10:16:33'),
(1069, '16019001941.jpeg', 'dashboardImages/service/16019001941.jpeg', 'any alt', NULL, '2020-10-05 10:16:34', '2020-10-05 10:16:34'),
(1070, '16019003402.jpg', 'dashboardImages/slider/16019003402.jpg', 'any title', NULL, '2020-10-05 10:19:00', '2020-10-05 10:19:00'),
(1071, '16019003402.jpg', 'dashboardImages/service/16019003402.jpg', 'any title', NULL, '2020-10-05 10:19:00', '2020-10-05 10:19:00'),
(1072, '16019003784.jpg', 'dashboardImages/slider/16019003784.jpg', 'any alt', NULL, '2020-10-05 10:19:38', '2020-10-05 10:19:38'),
(1073, '16019003784.jpg', 'dashboardImages/service/16019003784.jpg', 'any alt', NULL, '2020-10-05 10:19:38', '2020-10-05 10:19:38'),
(1074, '16019004237.jpg', 'dashboardImages/slider/16019004237.jpg', 'any alt', NULL, '2020-10-05 10:20:23', '2020-10-05 10:20:23'),
(1075, '16019004233.jpg', 'dashboardImages/service/16019004233.jpg', 'any alt', NULL, '2020-10-05 10:20:23', '2020-10-05 10:20:23'),
(1076, '16019004355.jpg', 'dashboardImages/slider/16019004355.jpg', 'any title', NULL, '2020-10-05 10:20:35', '2020-10-05 10:20:35'),
(1077, '16019004365.jpg', 'dashboardImages/service/16019004365.jpg', 'any title', NULL, '2020-10-05 10:20:36', '2020-10-05 10:20:36'),
(1078, '1601900518slide-1.jpeg', 'dashboardImages/slider/1601900518slide-1.jpeg', 'slider-image', NULL, '2020-10-05 10:21:58', '2020-10-05 10:21:58'),
(1079, '1601900531slide-2.jpeg', 'dashboardImages/slider/1601900531slide-2.jpeg', 'slider-image', NULL, '2020-10-05 10:22:11', '2020-10-05 10:22:11'),
(1080, '1601900542slide-3.jpg', 'dashboardImages/slider/1601900542slide-3.jpg', 'slider-image', NULL, '2020-10-05 10:22:22', '2020-10-05 10:22:22'),
(1081, '1601900574logo.png', 'dashboardImages/setting/1601900574logo.png', NULL, NULL, '2020-10-05 10:22:54', '2020-10-05 10:22:54'),
(1082, '1601900574logo.png', 'dashboardImages/setting/1601900574logo.png', NULL, NULL, '2020-10-05 10:22:54', '2020-10-05 10:22:54'),
(1083, '1601900873_logo.png', 'dashboardImages/open_graph/1601900873_logo.png', 'home-og', NULL, '2020-10-05 10:27:53', '2020-10-05 10:27:53'),
(1087, '16055481271d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', 'dashboardImages/service/16055481271d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', 'dsrfdfd', NULL, '2020-11-16 15:35:27', '2020-11-16 15:35:27'),
(1088, '16055481271d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', 'dashboardImages/service/16055481271d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', 'sdfsf', NULL, '2020-11-16 15:35:27', '2020-11-16 15:35:27'),
(1090, '16056027806fbac660bbf85f92cff2dd0b66186f6e--fashion-couple-good-night.jpg', 'dashboardImages/service/16056027806fbac660bbf85f92cff2dd0b66186f6e--fashion-couple-good-night.jpg', 'dfdfd', NULL, '2020-11-17 06:46:20', '2020-11-17 06:46:20'),
(1092, '16056033516fbac660bbf85f92cff2dd0b66186f6e--fashion-couple-good-night.jpg', 'dashboardImages/service/16056033516fbac660bbf85f92cff2dd0b66186f6e--fashion-couple-good-night.jpg', 'edfdfd', NULL, '2020-11-17 06:55:51', '2020-11-17 06:55:51'),
(1094, '16056034921d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', 'dashboardImages/service/16056034921d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', 'dsds', NULL, '2020-11-17 06:58:12', '2020-11-17 06:58:12'),
(1096, '16056035676fbac660bbf85f92cff2dd0b66186f6e--fashion-couple-good-night.jpg', 'dashboardImages/service/16056035676fbac660bbf85f92cff2dd0b66186f6e--fashion-couple-good-night.jpg', 'dfdfd', NULL, '2020-11-17 06:59:27', '2020-11-17 06:59:27'),
(1097, '16057067031d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', 'dashboardImages/gallery/16057067031d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', NULL, NULL, '2020-11-18 11:38:23', '2020-11-18 11:38:23'),
(1098, '1605706703731855af83e242fb0721022d9d36b671.jpg', 'dashboardImages/gallery/1605706703731855af83e242fb0721022d9d36b671.jpg', NULL, NULL, '2020-11-18 11:38:23', '2020-11-18 11:38:23'),
(1099, '16057067031468143749-4376936.jpg', 'dashboardImages/gallery/16057067031468143749-4376936.jpg', NULL, NULL, '2020-11-18 11:38:23', '2020-11-18 11:38:23'),
(1100, '16057067345-6-16-1.jpg', 'dashboardImages/gallery/16057067345-6-16-1.jpg', NULL, NULL, '2020-11-18 11:38:54', '2020-11-18 11:38:54'),
(1101, '16057067358db57dd1f651d25eda170bcb49c45186.jpg', 'dashboardImages/gallery/16057067358db57dd1f651d25eda170bcb49c45186.jpg', NULL, NULL, '2020-11-18 11:38:55', '2020-11-18 11:38:55'),
(1102, '1605707179logo.png', 'dashboardImages/setting/1605707179logo.png', NULL, NULL, '2020-11-18 11:46:19', '2020-11-18 11:46:19'),
(1103, '1605707179footer-logo.png', 'dashboardImages/setting/1605707179footer-logo.png', NULL, NULL, '2020-11-18 11:46:19', '2020-11-18 11:46:19'),
(1104, '1605715030_logo.png', 'dashboardImages/open_graph/1605715030_logo.png', 'Ecopen - home page', NULL, '2020-11-18 13:57:10', '2020-11-18 13:57:10'),
(1105, '1605715345_window-1.png', 'dashboardImages/open_graph/1605715345_window-1.png', NULL, NULL, '2020-11-18 14:02:25', '2020-11-18 14:02:25'),
(1106, '1606310510logo.png', 'dashboardImages/setting/1606310510logo.png', NULL, NULL, '2020-11-25 11:21:50', '2020-11-25 11:21:50'),
(1107, '1606310511logo-footer.png', 'dashboardImages/setting/1606310511logo-footer.png', NULL, NULL, '2020-11-25 11:21:51', '2020-11-25 11:21:51'),
(1108, '1606401898_logo.png', 'dashboardImages/open_graph/1606401898_logo.png', NULL, NULL, '2020-11-26 12:44:58', '2020-11-26 12:44:58'),
(1109, '1606401928_logo.png', 'dashboardImages/open_graph/1606401928_logo.png', NULL, NULL, '2020-11-26 12:45:28', '2020-11-26 12:45:29'),
(1110, '1606646881logo.png', 'dashboardImages/setting/1606646881logo.png', NULL, NULL, '2020-11-29 08:48:01', '2020-11-29 08:48:01'),
(1111, '1606646881logo-2.png', 'dashboardImages/setting/1606646881logo-2.png', NULL, NULL, '2020-11-29 08:48:01', '2020-11-29 08:48:01'),
(1112, '1606729861slide-1.jpg', 'dashboardImages/slider/1606729861slide-1.jpg', 'slider-image', NULL, '2020-11-30 07:51:01', '2020-11-30 07:51:01'),
(1113, '1606729872slide-2.jpg', 'dashboardImages/slider/1606729872slide-2.jpg', 'slider-image', NULL, '2020-11-30 07:51:12', '2020-11-30 07:51:12'),
(1114, '1606729891slide-3.jpg', 'dashboardImages/slider/1606729891slide-3.jpg', 'slider-image', NULL, '2020-11-30 07:51:31', '2020-11-30 07:51:31'),
(1130, '1606730700_logo.png', 'dashboardImages/open_graph/1606730700_logo.png', NULL, NULL, '2020-11-30 08:05:00', '2020-11-30 08:05:09'),
(1131, '16086424351d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', 'dashboardImages/team/16086424351d4d48d353387f9b212595d33c2316ff--laura-pergolizzi-poo.jpg', NULL, NULL, '2020-12-22 11:07:15', '2020-12-22 11:07:15'),
(1132, '1608642563Header_2235897_1.1.jpg', 'dashboardImages/team/1608642563Header_2235897_1.1.jpg', NULL, NULL, '2020-12-22 11:09:23', '2020-12-22 11:09:23'),
(1133, '16086431801468143749-4376936.jpg', 'dashboardImages/team/16086431801468143749-4376936.jpg', NULL, NULL, '2020-12-22 11:19:40', '2020-12-22 11:19:40'),
(1134, '1608724164service02.jpg', 'dashboardImages/slider/1608724164service02.jpg', 'clinic', NULL, '2020-12-23 09:49:24', '2021-01-06 13:20:32'),
(1135, '1608724164square004.jpg', 'dashboardImages/service/1608724164square004.jpg', 'clinic', NULL, '2020-12-23 09:49:24', '2021-01-06 13:20:32'),
(1136, '1608724596square002.jpg', 'dashboardImages/slider/1608724596square002.jpg', 'examinations', NULL, '2020-12-23 09:56:36', '2021-01-06 13:21:44'),
(1137, '1608724596square002.jpg', 'dashboardImages/service/1608724596square002.jpg', 'examinations', NULL, '2020-12-23 09:56:36', '2021-01-06 13:21:44'),
(1138, '1608724866square003.jpg', 'dashboardImages/slider/1608724866square003.jpg', 'operations', NULL, '2020-12-23 10:01:06', '2021-01-06 13:22:20'),
(1139, '1608724866square003.jpg', 'dashboardImages/service/1608724866square003.jpg', 'operations', NULL, '2020-12-23 10:01:06', '2021-01-06 13:22:20'),
(1140, '1608724981square004.jpg', 'dashboardImages/slider/1608724981square004.jpg', 'عن الشبكية والجسم الزجاجي', NULL, '2020-12-23 10:03:01', '2021-01-06 13:22:02'),
(1141, '1608724981square004.jpg', 'dashboardImages/service/1608724981square004.jpg', 'عن الشبكية والجسم الزجاجي', NULL, '2020-12-23 10:03:01', '2021-01-06 13:22:02'),
(1142, '1608725057square005.jpg', 'dashboardImages/slider/1608725057square005.jpg', 'laser', NULL, '2020-12-23 10:04:17', '2021-01-06 13:22:37'),
(1143, '1608725057square005.jpg', 'dashboardImages/service/1608725057square005.jpg', 'laser', NULL, '2020-12-23 10:04:17', '2021-01-06 13:22:37'),
(1144, '27.jpg', 'dashboardImages/service/27.jpg', NULL, NULL, '2021-01-06 11:33:53', '2021-01-06 11:33:53'),
(1145, '28.jpg', 'dashboardImages/service/28.jpg', NULL, NULL, '2021-01-06 11:33:53', '2021-01-06 11:33:53'),
(1146, '29.jpg', 'dashboardImages/service/29.jpg', NULL, NULL, '2021-01-06 11:33:53', '2021-01-06 11:33:53');
INSERT INTO `image` (`id`, `name`, `path`, `alt`, `album_id`, `created_at`, `updated_at`) VALUES
(1147, '30.jpg', 'dashboardImages/service/30.jpg', NULL, NULL, '2021-01-06 11:33:53', '2021-01-06 11:33:53'),
(1148, '31.jpg', 'dashboardImages/service/31.jpg', NULL, NULL, '2021-01-06 11:33:54', '2021-01-06 11:33:54'),
(1149, '2.jpg', 'dashboardImages/service/2.jpg', NULL, NULL, '2021-01-06 11:42:44', '2021-01-06 11:42:44'),
(1150, '3.jpg', 'dashboardImages/service/3.jpg', NULL, NULL, '2021-01-06 11:42:44', '2021-01-06 11:42:44'),
(1151, '4.jpg', 'dashboardImages/service/4.jpg', NULL, NULL, '2021-01-06 11:42:45', '2021-01-06 11:42:45'),
(1152, '0005.jpg', 'dashboardImages/service/0005.jpg', NULL, NULL, '2021-01-06 11:42:45', '2021-01-06 11:42:45'),
(1153, '6.jpg', 'dashboardImages/service/6.jpg', NULL, NULL, '2021-01-06 11:45:21', '2021-01-06 11:45:21'),
(1154, '7.jpg', 'dashboardImages/service/7.jpg', NULL, NULL, '2021-01-06 11:45:21', '2021-01-06 11:45:21'),
(1155, '23.jpg', 'dashboardImages/service/23.jpg', NULL, NULL, '2021-01-06 11:45:21', '2021-01-06 11:45:21'),
(1156, '019.jpg', 'dashboardImages/service/019.jpg', NULL, NULL, '2021-01-06 11:47:30', '2021-01-06 11:47:30'),
(1157, '21.jpg', 'dashboardImages/service/21.jpg', NULL, NULL, '2021-01-06 11:47:30', '2021-01-06 11:47:30'),
(1158, '24.jpg', 'dashboardImages/service/24.jpg', NULL, NULL, '2021-01-06 11:47:30', '2021-01-06 11:47:30'),
(1159, '25.jpg', 'dashboardImages/service/25.jpg', NULL, NULL, '2021-01-06 11:47:30', '2021-01-06 11:47:30'),
(1160, '2.jpg', 'dashboardImages/service/2.jpg', NULL, NULL, '2021-01-06 12:46:51', '2021-01-06 12:46:51'),
(1161, '3.jpg', 'dashboardImages/service/3.jpg', NULL, NULL, '2021-01-06 12:46:51', '2021-01-06 12:46:51'),
(1162, '4.jpg', 'dashboardImages/service/4.jpg', NULL, NULL, '2021-01-06 12:46:51', '2021-01-06 12:46:51'),
(1163, '0005.jpg', 'dashboardImages/service/0005.jpg', NULL, NULL, '2021-01-06 12:46:51', '2021-01-06 12:46:51'),
(1164, '1609950271doctor01.jpg', 'dashboardImages/team/1609950271doctor01.jpg', NULL, NULL, '2021-01-06 14:24:31', '2021-01-06 14:24:31'),
(1165, '1610285249doctor01.jpg', 'dashboardImages/team/1610285249doctor01.jpg', NULL, NULL, '2021-01-10 11:27:29', '2021-01-10 11:27:29'),
(1166, '1610285481doctor02.jpg', 'dashboardImages/team/1610285481doctor02.jpg', NULL, NULL, '2021-01-10 11:31:21', '2021-01-10 11:31:21'),
(1167, '1610285532doctor05.jpg', 'dashboardImages/team/1610285532doctor05.jpg', NULL, NULL, '2021-01-10 11:32:12', '2021-01-10 11:32:12'),
(1168, '1610285641doctor03-full.jpg', 'dashboardImages/team/1610285641doctor03-full.jpg', NULL, NULL, '2021-01-10 11:34:01', '2021-01-10 11:34:01'),
(1169, '1610292630Logo.jpg', 'dashboardImages/setting/1610292630Logo.jpg', NULL, NULL, '2021-01-10 13:30:30', '2021-01-10 13:30:30'),
(1170, '1610292630logo.png', 'dashboardImages/setting/1610292630logo.png', NULL, NULL, '2021-01-10 13:30:30', '2021-01-10 13:30:30'),
(1171, '1610292652logo.png', 'dashboardImages/setting/1610292652logo.png', NULL, NULL, '2021-01-10 13:30:52', '2021-01-10 13:30:52'),
(1172, '1610293756square002.jpg', 'dashboardImages/service/1610293756square002.jpg', 'المياه البيضاء', NULL, '2021-01-10 13:49:16', '2021-01-10 13:49:16'),
(1173, '1610293756square002.jpg', 'dashboardImages/service/1610293756square002.jpg', 'المياه البيضاء', NULL, '2021-01-10 13:49:16', '2021-01-10 13:49:16'),
(1174, '1610293920square002.jpg', 'dashboardImages/service/1610293920square002.jpg', 'المياه الزرقاء', NULL, '2021-01-10 13:52:00', '2021-01-10 13:52:00'),
(1175, '1610293920square002.jpg', 'dashboardImages/service/1610293920square002.jpg', 'المياه الزرقاء', NULL, '2021-01-10 13:52:00', '2021-01-10 13:52:00'),
(1176, '1610358826_logo.png', 'dashboardImages/open_graph/1610358826_logo.png', 'home:og', NULL, '2021-01-11 07:53:46', '2021-01-20 07:47:00'),
(1180, '1611078450image-1.jpg', 'dashboardImages/slider/1611078450image-1.jpg', 'slider-image', NULL, '2021-01-19 15:47:30', '2021-01-19 15:47:30'),
(1181, '1611078582image-2.jpg', 'dashboardImages/slider/1611078582image-2.jpg', 'slider-image', NULL, '2021-01-19 15:49:42', '2021-01-19 15:51:27'),
(1182, '1611078603image-3.jpg', 'dashboardImages/slider/1611078603image-3.jpg', 'slider-image', NULL, '2021-01-19 15:50:03', '2021-01-19 15:50:59'),
(1183, '16110788021.jpg', 'dashboardImages/slider/16110788021.jpg', 'خدمة طبية1', NULL, '2021-01-19 15:53:22', '2021-01-19 16:10:32'),
(1184, '16110788021.jpg', 'dashboardImages/service/16110788021.jpg', 'خدمة طبية1', NULL, '2021-01-19 15:53:22', '2021-01-19 16:10:32'),
(1185, '16110789124.jpg', 'dashboardImages/slider/16110789124.jpg', 'خدمة طبية2', NULL, '2021-01-19 15:55:12', '2021-01-19 15:55:12'),
(1186, '16110789134.jpg', 'dashboardImages/service/16110789134.jpg', 'خدمة طبية2', NULL, '2021-01-19 15:55:13', '2021-01-19 15:55:13'),
(1187, '16110791174.jpg', 'dashboardImages/slider/16110791174.jpg', 'خدمة طبية2', NULL, '2021-01-19 15:58:37', '2021-01-19 16:10:55'),
(1188, '16110791174.jpg', 'dashboardImages/service/16110791174.jpg', 'خدمة طبية2', NULL, '2021-01-19 15:58:37', '2021-01-19 16:10:55'),
(1189, '16110792415.jpg', 'dashboardImages/slider/16110792415.jpg', 'خدمة طبية3', NULL, '2021-01-19 16:00:41', '2021-01-19 16:02:14'),
(1190, '16110792415.jpg', 'dashboardImages/service/16110792415.jpg', 'خدمة طبية3', NULL, '2021-01-19 16:00:41', '2021-01-19 16:02:14'),
(1191, '1611079421ser-3.jpg', 'dashboardImages/slider/1611079421ser-3.jpg', 'خدمة طبية4', NULL, '2021-01-19 16:03:41', '2021-01-19 16:03:42'),
(1192, '1611079421ser-3.jpg', 'dashboardImages/service/1611079421ser-3.jpg', 'أشعة البانوراما', NULL, '2021-01-19 16:03:41', '2021-02-04 14:57:33'),
(1193, '1611079522ser-5.jpg', 'dashboardImages/slider/1611079522ser-5.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-01-19 16:05:22', '2021-01-19 16:05:23'),
(1194, '1611079522ser-5.jpg', 'dashboardImages/service/1611079522ser-5.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-01-19 16:05:22', '2021-01-19 16:05:23'),
(1195, '1611079570ser-6.jpg', 'dashboardImages/slider/1611079570ser-6.jpg', 'خدمة فرعية2 خدمة طبية1', NULL, '2021-01-19 16:06:10', '2021-01-19 16:06:11'),
(1196, '1611079571ser-6.jpg', 'dashboardImages/service/1611079571ser-6.jpg', 'خدمة فرعية2 خدمة طبية1', NULL, '2021-01-19 16:06:11', '2021-01-19 16:06:11'),
(1201, '1611080042logo-2.png', 'dashboardImages/setting/1611080042logo-2.png', NULL, NULL, '2021-01-19 16:14:02', '2021-01-19 16:14:02'),
(1202, '1611080042footer-logo.png', 'dashboardImages/setting/1611080042footer-logo.png', NULL, NULL, '2021-01-19 16:14:02', '2021-01-19 16:14:02'),
(1203, '16110802151.png', 'dashboardImages/about/16110802151.png', NULL, NULL, '2021-01-19 16:16:55', '2021-01-19 16:16:55'),
(1204, '16110812001.jpg', 'dashboardImages/blog/16110812001.jpg', 'first-blog', NULL, '2021-01-19 16:33:20', '2021-01-19 16:33:22'),
(1205, '16110812144.jpg', 'dashboardImages/blog/16110812144.jpg', 'second blog', NULL, '2021-01-19 16:33:34', '2021-01-19 16:33:34'),
(1206, '1611081243ser-5.jpg', 'dashboardImages/blog/1611081243ser-5.jpg', 'third blog', NULL, '2021-01-19 16:34:03', '2021-01-19 16:34:03'),
(1207, '1611081260ser-3.jpg', 'dashboardImages/blog/1611081260ser-3.jpg', 'fourth blog', NULL, '2021-01-19 16:34:20', '2021-01-19 16:34:21'),
(1208, '1611081294ser-1.jpg', 'dashboardImages/blog/1611081294ser-1.jpg', 'first-blog', NULL, '2021-01-19 16:34:54', '2021-01-19 16:34:55'),
(1209, '1611081310ser-4.jpg', 'dashboardImages/blog/1611081310ser-4.jpg', 'second blog', NULL, '2021-01-19 16:35:10', '2021-01-19 16:35:11'),
(1210, '1611136231_logo-2.png', 'dashboardImages/open_graph/1611136231_logo-2.png', 'home:og', NULL, '2021-01-20 07:50:31', '2021-01-20 07:50:32'),
(1211, '1611136259_logo-2.png', 'dashboardImages/open_graph/1611136259_logo-2.png', NULL, NULL, '2021-01-20 07:50:59', '2021-02-07 12:33:38'),
(1212, '16122576686.jpg', 'dashboardImages/album/16122576686.jpg', NULL, NULL, '2021-02-02 07:21:08', '2021-02-02 07:21:08'),
(1219, '16122578033.jpg', 'dashboardImages/album/16122578033.jpg', NULL, NULL, '2021-02-02 07:23:23', '2021-02-02 07:23:23'),
(1226, '16122580682.jpg', 'dashboardImages/album/16122580682.jpg', NULL, NULL, '2021-02-02 07:27:48', '2021-02-02 07:27:48'),
(1227, '1612267968logo.png', 'dashboardImages/setting/1612267968logo.png', NULL, NULL, '2021-02-02 10:12:48', '2021-02-02 10:12:48'),
(1228, '1612267968logo.png', 'dashboardImages/setting/1612267968logo.png', NULL, NULL, '2021-02-02 10:12:48', '2021-02-02 10:12:48'),
(1229, '1612268383slide-1.jpeg', 'dashboardImages/slider/1612268383slide-1.jpeg', 'slider-image', NULL, '2021-02-02 10:19:43', '2021-02-02 10:19:44'),
(1230, '1612268415slide-2.jpeg', 'dashboardImages/slider/1612268415slide-2.jpeg', 'slider-image', NULL, '2021-02-02 10:20:15', '2021-02-02 10:20:15'),
(1231, '1612269916ceo.jpg', 'dashboardImages/about/1612269916ceo.jpg', NULL, NULL, '2021-02-02 10:45:16', '2021-02-02 10:45:16'),
(1232, '1612269917mission.jpg', 'dashboardImages/about/1612269917mission.jpg', NULL, NULL, '2021-02-02 10:45:17', '2021-02-02 10:45:17'),
(1233, '1612269917vision.jpg', 'dashboardImages/about/1612269917vision.jpg', NULL, NULL, '2021-02-02 10:45:17', '2021-02-02 10:45:17'),
(1234, '1612269917values.jpg', 'dashboardImages/about/1612269917values.jpg', NULL, NULL, '2021-02-02 10:45:17', '2021-02-02 10:45:17'),
(1235, '16122718561.jpg', 'dashboardImages/slider/16122718561.jpg', 'جهاز السيريك', NULL, '2021-02-02 11:17:36', '2021-02-04 13:58:39'),
(1236, '16122718561.jpg', 'dashboardImages/service/16122718561.jpg', 'جهاز السيريك', NULL, '2021-02-02 11:17:36', '2021-02-04 14:54:54'),
(1237, '16122719411.jpg', 'dashboardImages/slider/16122719411.jpg', 'الأشعة السينية', NULL, '2021-02-02 11:19:01', '2021-02-04 14:00:13'),
(1238, '16122719411.jpg', 'dashboardImages/service/16122719411.jpg', 'الأشعة السينية', NULL, '2021-02-02 11:19:01', '2021-02-04 14:56:58'),
(1239, '16122720252.jpg', 'dashboardImages/slider/16122720252.jpg', 'تحديد اللون', NULL, '2021-02-02 11:20:25', '2021-02-04 14:01:18'),
(1240, '16122720252.jpg', 'dashboardImages/service/16122720252.jpg', 'تحديد اللون', NULL, '2021-02-02 11:20:25', '2021-02-04 14:57:16'),
(1241, '16122720784.jpg', 'dashboardImages/slider/16122720784.jpg', 'كشف النظارة بالكمبيوتر', NULL, '2021-02-02 11:21:18', '2021-02-02 11:21:19'),
(1242, '16122720904.jpg', 'dashboardImages/slider/16122720904.jpg', 'أشعة البانوراما', NULL, '2021-02-02 11:21:30', '2021-02-04 14:05:41'),
(1243, '16122722271.jpg', 'dashboardImages/blog/16122722271.jpg', 'المياه البيضاء', NULL, '2021-02-02 11:23:47', '2021-02-02 11:23:48'),
(1244, '16122722662.jpg', 'dashboardImages/blog/16122722662.jpg', 'لا تبحث عن عروض الليزك! صحتك أهم من المال', NULL, '2021-02-02 11:24:26', '2021-02-02 11:24:27'),
(1245, '16122723063.jpg', 'dashboardImages/blog/16122723063.jpg', 'تجميل جفون العين', NULL, '2021-02-02 11:25:06', '2021-02-02 11:25:07'),
(1246, '16122723294.jpg', 'dashboardImages/blog/16122723294.jpg', 'fourth blog', NULL, '2021-02-02 11:25:29', '2021-02-02 11:25:30'),
(1247, '1612273582_logo.png', 'dashboardImages/open_graph/1612273582_logo.png', 'home:og', NULL, '2021-02-02 11:46:22', '2021-02-02 11:46:22'),
(1248, '1.jpg', 'dashboardImages/service/1.jpg', NULL, NULL, '2021-02-04 13:58:40', '2021-02-04 13:58:40'),
(1249, '2.jpg', 'dashboardImages/service/2.jpg', NULL, NULL, '2021-02-04 14:00:14', '2021-02-04 14:00:14'),
(1250, 'bx-1.jpg', 'dashboardImages/service/bx-1.jpg', NULL, NULL, '2021-02-04 14:01:18', '2021-02-04 14:01:18'),
(1251, '3.jpg', 'dashboardImages/service/3.jpg', NULL, NULL, '2021-02-04 14:02:10', '2021-02-04 14:02:10'),
(1252, '1612454820logo.png', 'dashboardImages/setting/1612454820logo.png', NULL, NULL, '2021-02-04 14:07:00', '2021-02-04 14:07:00'),
(1253, '1612454820logo.png', 'dashboardImages/setting/1612454820logo.png', NULL, NULL, '2021-02-04 14:07:00', '2021-02-04 14:07:00'),
(1254, '16124575452.jpg', 'dashboardImages/service/16124575452.jpg', 'جهاز السيريك', NULL, '2021-02-04 14:52:25', '2021-02-04 14:52:25'),
(1255, '16124576942.jpg', 'dashboardImages/service/16124576942.jpg', 'جهاز السيريك', NULL, '2021-02-04 14:54:54', '2021-02-04 14:54:54'),
(1256, '1612457816bx-1.jpg', 'dashboardImages/service/1612457816bx-1.jpg', 'الأشعة السينية', NULL, '2021-02-04 14:56:56', '2021-02-04 14:56:57'),
(1257, '16124578353.jpg', 'dashboardImages/service/16124578353.jpg', 'تحديد اللون', NULL, '2021-02-04 14:57:15', '2021-02-04 14:57:16'),
(1258, '1612457852bx3.jpg', 'dashboardImages/service/1612457852bx3.jpg', 'أشعة البانوراما', NULL, '2021-02-04 14:57:32', '2021-02-04 14:57:33'),
(1259, '16126980351.jpg', 'dashboardImages/album/16126980351.jpg', NULL, NULL, '2021-02-07 09:40:35', '2021-02-07 09:40:35'),
(1260, '16126981361.jpg', 'dashboardImages/album/16126981361.jpg', NULL, 9, '2021-02-07 09:42:16', '2021-02-07 09:42:16'),
(1261, '16126981372.jpg', 'dashboardImages/album/16126981372.jpg', NULL, 9, '2021-02-07 09:42:17', '2021-02-07 09:42:17'),
(1262, '16126981373.jpg', 'dashboardImages/album/16126981373.jpg', NULL, 9, '2021-02-07 09:42:17', '2021-02-07 09:42:17'),
(1263, '16126981374.jpg', 'dashboardImages/album/16126981374.jpg', NULL, 9, '2021-02-07 09:42:17', '2021-02-07 09:42:17'),
(1264, '16126981375.jpg', 'dashboardImages/album/16126981375.jpg', NULL, 9, '2021-02-07 09:42:17', '2021-02-07 09:42:17'),
(1265, '16126981376.jpg', 'dashboardImages/album/16126981376.jpg', NULL, 9, '2021-02-07 09:42:17', '2021-02-07 09:42:17'),
(1266, '16126981377.jpg', 'dashboardImages/album/16126981377.jpg', NULL, 9, '2021-02-07 09:42:17', '2021-02-07 09:42:17'),
(1267, '16126981378.jpg', 'dashboardImages/album/16126981378.jpg', NULL, 9, '2021-02-07 09:42:17', '2021-02-07 09:42:17'),
(1268, '16126981379.jpg', 'dashboardImages/album/16126981379.jpg', NULL, 9, '2021-02-07 09:42:17', '2021-02-07 09:42:17'),
(1269, '16126983982.jpg', 'dashboardImages/album/16126983982.jpg', NULL, NULL, '2021-02-07 09:46:38', '2021-02-07 09:46:38'),
(1270, '16126984203.jpg', 'dashboardImages/album/16126984203.jpg', NULL, NULL, '2021-02-07 09:47:00', '2021-02-07 09:47:00'),
(1280, '16126985031.jpg', 'dashboardImages/album/16126985031.jpg', NULL, 4, '2021-02-07 09:48:23', '2021-02-07 09:48:23'),
(1281, '16126985032.jpg', 'dashboardImages/album/16126985032.jpg', NULL, 4, '2021-02-07 09:48:23', '2021-02-07 09:48:23'),
(1282, '16126985033.jpg', 'dashboardImages/album/16126985033.jpg', NULL, 4, '2021-02-07 09:48:23', '2021-02-07 09:48:23'),
(1283, '16126985034.jpg', 'dashboardImages/album/16126985034.jpg', NULL, 4, '2021-02-07 09:48:23', '2021-02-07 09:48:23'),
(1284, '16126985035.jpg', 'dashboardImages/album/16126985035.jpg', NULL, 4, '2021-02-07 09:48:23', '2021-02-07 09:48:23'),
(1285, '16126985036.jpg', 'dashboardImages/album/16126985036.jpg', NULL, 4, '2021-02-07 09:48:23', '2021-02-07 09:48:23'),
(1286, '16126985037.jpg', 'dashboardImages/album/16126985037.jpg', NULL, 4, '2021-02-07 09:48:23', '2021-02-07 09:48:23'),
(1287, '16126985038.jpg', 'dashboardImages/album/16126985038.jpg', NULL, 4, '2021-02-07 09:48:23', '2021-02-07 09:48:23'),
(1288, '16126985039.jpg', 'dashboardImages/album/16126985039.jpg', NULL, 4, '2021-02-07 09:48:23', '2021-02-07 09:48:23'),
(1289, '16126995811.png', 'dashboardImages/client/16126995811.png', NULL, NULL, '2021-02-07 10:06:21', '2021-02-07 10:06:21'),
(1290, '16126996052.png', 'dashboardImages/client/16126996052.png', NULL, NULL, '2021-02-07 10:06:45', '2021-02-07 10:06:45'),
(1291, '16126996163.png', 'dashboardImages/client/16126996163.png', NULL, NULL, '2021-02-07 10:06:56', '2021-02-07 10:06:56'),
(1292, '16126996304.png', 'dashboardImages/client/16126996304.png', NULL, NULL, '2021-02-07 10:07:10', '2021-02-07 10:07:10'),
(1293, '16126996455.png', 'dashboardImages/client/16126996455.png', NULL, NULL, '2021-02-07 10:07:25', '2021-02-07 10:07:25'),
(1294, '16126997421.jpg', 'dashboardImages/about/16126997421.jpg', NULL, NULL, '2021-02-07 10:09:02', '2021-02-07 10:09:02'),
(1295, '1612699787appointment-img.jpg', 'dashboardImages/about/1612699787appointment-img.jpg', NULL, NULL, '2021-02-07 10:09:47', '2021-02-07 10:09:47'),
(1296, '1612702192after.jpg', 'dashboardImages/slider/1612702192after.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-02-07 10:49:52', '2021-02-07 10:49:53'),
(1297, '1612702192after.jpg', 'dashboardImages/service/1612702192after.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-02-07 10:49:52', '2021-02-07 10:49:53'),
(1298, '16127022321.jpg', 'dashboardImages/slider/16127022321.jpg', 'خدمة فرعية2 خدمة طبية1', NULL, '2021-02-07 10:50:32', '2021-02-07 10:50:33'),
(1299, '16127022321.jpg', 'dashboardImages/service/16127022321.jpg', 'خدمة فرعية2 خدمة طبية1', NULL, '2021-02-07 10:50:32', '2021-02-07 10:50:33'),
(1309, '1612704868slide-4.jpg', 'dashboardImages/slider/1612704868slide-4.jpg', NULL, NULL, '2021-02-07 11:34:28', '2021-02-07 11:34:28'),
(1310, '1612704950slide-3.jpg', 'dashboardImages/slider/1612704950slide-3.jpg', NULL, NULL, '2021-02-07 11:35:50', '2021-02-07 11:35:50'),
(1311, '1612704989slide-2.jpg', 'dashboardImages/slider/1612704989slide-2.jpg', NULL, NULL, '2021-02-07 11:36:29', '2021-02-07 11:36:29'),
(1312, '1612705460mission.webp', 'dashboardImages/about/1612705460mission.webp', NULL, NULL, '2021-02-07 11:44:20', '2021-02-07 11:44:20'),
(1313, '1612705461vision.webp', 'dashboardImages/about/1612705461vision.webp', NULL, NULL, '2021-02-07 11:44:21', '2021-02-07 11:44:21'),
(1314, '1612705461value.webp', 'dashboardImages/about/1612705461value.webp', NULL, NULL, '2021-02-07 11:44:21', '2021-02-07 11:44:21'),
(1315, '16127058291.jpg', 'dashboardImages/testimonial/16127058291.jpg', NULL, NULL, '2021-02-07 11:50:29', '2021-02-07 11:50:29'),
(1316, '16127058544.jpg', 'dashboardImages/testimonial/16127058544.jpg', NULL, NULL, '2021-02-07 11:50:54', '2021-02-07 11:50:54'),
(1317, '16127058743.jpg', 'dashboardImages/testimonial/16127058743.jpg', NULL, NULL, '2021-02-07 11:51:14', '2021-02-07 11:51:14'),
(1318, '1612708310_logo.png', 'dashboardImages/open_graph/1612708310_logo.png', 'home:og', NULL, '2021-02-07 12:31:50', '2021-02-07 12:31:50'),
(1319, '210215-014435slider-1.jpg', 'dashboardImages/slider/210215-014435slider-1.jpg', 'BODY CARE', NULL, '2021-02-15 11:44:35', '2021-02-15 11:44:35'),
(1320, '210215-014436slider-2.jpg', 'dashboardImages/slider/210215-014436slider-2.jpg', 'BODY CARE', NULL, '2021-02-15 11:44:36', '2021-02-15 11:44:36'),
(1321, '210215-014436slider-3.jpg', 'dashboardImages/slider/210215-014436slider-3.jpg', 'BODY CARE', NULL, '2021-02-15 11:44:36', '2021-02-15 11:44:36'),
(1325, '210215-021538slider-1.jpg', 'dashboardImages/slider/210215-021538slider-1.jpg', 'SKIN CARE', NULL, '2021-02-15 12:15:38', '2021-02-15 12:15:38'),
(1326, '210215-021538slider-2.jpg', 'dashboardImages/slider/210215-021538slider-2.jpg', 'SKIN CARE', NULL, '2021-02-15 12:15:38', '2021-02-15 12:15:38'),
(1327, '210215-021538slider-3.jpg', 'dashboardImages/slider/210215-021538slider-3.jpg', 'SKIN CARE', NULL, '2021-02-15 12:15:38', '2021-02-15 12:15:38'),
(1328, '210215-021651slider-1.jpg', 'dashboardImages/slider/210215-021651slider-1.jpg', 'HAIR CARE', NULL, '2021-02-15 12:16:51', '2021-02-15 12:16:51'),
(1329, '210215-021651slider-2.jpg', 'dashboardImages/slider/210215-021651slider-2.jpg', 'HAIR CARE', NULL, '2021-02-15 12:16:51', '2021-02-15 12:16:51'),
(1330, '210215-021651slider-3.jpg', 'dashboardImages/slider/210215-021651slider-3.jpg', 'HAIR CARE', NULL, '2021-02-15 12:16:51', '2021-02-15 12:16:51'),
(1331, '210215-021854slider-1.jpg', 'dashboardImages/slider/210215-021854slider-1.jpg', 'LIPOLYSIS', NULL, '2021-02-15 12:18:54', '2021-02-15 12:18:54'),
(1332, '210215-021854slider-2.jpg', 'dashboardImages/slider/210215-021854slider-2.jpg', 'LIPOLYSIS', NULL, '2021-02-15 12:18:54', '2021-02-15 12:18:54'),
(1333, '210215-021854slider-3.jpg', 'dashboardImages/slider/210215-021854slider-3.jpg', 'LIPOLYSIS', NULL, '2021-02-15 12:18:54', '2021-02-15 12:18:54'),
(1334, '16134890211.jpg', 'dashboardImages/album/16134890211.jpg', NULL, NULL, '2021-02-16 13:23:41', '2021-02-16 13:23:41'),
(1335, '16134894711.jpg', 'dashboardImages/album/16134894711.jpg', NULL, NULL, '2021-02-16 13:31:11', '2021-02-16 13:31:11'),
(1340, '16135600561.jpg', 'dashboardImages/slider/16135600561.jpg', 'category image', NULL, '2021-02-17 09:07:36', '2021-02-17 09:07:36'),
(1341, '16135600561.jpg', 'dashboardImages/category/16135600561.jpg', 'category icon', NULL, '2021-02-17 09:07:36', '2021-02-17 09:07:36'),
(1342, '16135600822.jpg', 'dashboardImages/slider/16135600822.jpg', 'category image', NULL, '2021-02-17 09:08:02', '2021-02-17 09:08:03'),
(1343, '16135600822.jpg', 'dashboardImages/category/16135600822.jpg', 'icon image', NULL, '2021-02-17 09:08:02', '2021-02-17 09:08:03'),
(1344, '16135601043.jpg', 'dashboardImages/slider/16135601043.jpg', 'category image', NULL, '2021-02-17 09:08:24', '2021-02-17 09:08:25'),
(1345, '16135601043.jpg', 'dashboardImages/category/16135601043.jpg', 'category icon', NULL, '2021-02-17 09:08:24', '2021-02-17 09:08:25'),
(1346, '16135601224.jpg', 'dashboardImages/slider/16135601224.jpg', 'category image', NULL, '2021-02-17 09:08:42', '2021-02-17 09:08:42'),
(1347, '16135601224.jpg', 'dashboardImages/category/16135601224.jpg', 'category icon', NULL, '2021-02-17 09:08:42', '2021-02-17 09:08:42'),
(1348, '16135603271.jpg', 'dashboardImages/category/16135603271.jpg', 'product alt', NULL, '2021-02-17 09:12:07', '2021-02-17 09:42:20'),
(1349, '16135603271.jpg', 'dashboardImages/category/16135603271.jpg', 'product alt', NULL, '2021-02-17 09:12:07', '2021-02-17 09:42:20'),
(1350, '16135603874.jpg', 'dashboardImages/category/16135603874.jpg', 'product alt', NULL, '2021-02-17 09:13:07', '2021-02-17 09:42:54'),
(1351, '16135603874.jpg', 'dashboardImages/category/16135603874.jpg', 'product alt', NULL, '2021-02-17 09:13:07', '2021-02-17 09:42:54'),
(1353, '16135625354.jpg', 'dashboardImages/product/16135625354.jpg', 'product alt', NULL, '2021-02-17 09:48:55', '2021-02-17 09:48:55'),
(1354, '16135626704.jpg', 'dashboardImages/product/16135626704.jpg', 'product alt', NULL, '2021-02-17 09:51:10', '2021-02-17 11:31:02'),
(1355, '16135626704.jpg', 'dashboardImages/product/16135626704.jpg', 'product alt', NULL, '2021-02-17 09:51:10', '2021-02-17 11:31:02'),
(1359, '16135629823.jpg', 'dashboardImages/product/16135629823.jpg', 'product alt', NULL, '2021-02-17 09:56:22', '2021-02-17 11:31:47'),
(1360, '16135629823.jpg', 'dashboardImages/product/16135629823.jpg', 'product alt', NULL, '2021-02-17 09:56:22', '2021-02-17 11:31:47'),
(1364, '16135689164.jpg', 'dashboardImages/product/16135689164.jpg', 'product alt', NULL, '2021-02-17 11:35:16', '2021-02-17 11:35:16'),
(1365, '16135689164.jpg', 'dashboardImages/product/16135689164.jpg', 'product alt', NULL, '2021-02-17 11:35:16', '2021-02-17 11:35:16'),
(1369, '1613648536bg-personal-experience-briefcase.png', 'dashboardImages/gallery/1613648536bg-personal-experience-briefcase.png', NULL, NULL, '2021-02-18 09:42:16', '2021-02-18 09:42:16'),
(1370, '1613648536bg-personal-experience-device.png', 'dashboardImages/gallery/1613648536bg-personal-experience-device.png', NULL, NULL, '2021-02-18 09:42:16', '2021-02-18 09:42:16'),
(1371, '1613648536bg-personal-experience-glasses.png', 'dashboardImages/gallery/1613648536bg-personal-experience-glasses.png', NULL, NULL, '2021-02-18 09:42:16', '2021-02-18 09:42:16'),
(1372, '1613649095bg-personal-experience-briefcase.png', 'dashboardImages/gallery/1613649095bg-personal-experience-briefcase.png', NULL, NULL, '2021-02-18 09:51:35', '2021-02-18 09:51:35'),
(1373, '1613649095bg-personal-experience-device.png', 'dashboardImages/gallery/1613649095bg-personal-experience-device.png', NULL, NULL, '2021-02-18 09:51:35', '2021-02-18 09:51:35'),
(1374, '1613649095bg-personal-experience-glasses.png', 'dashboardImages/gallery/1613649095bg-personal-experience-glasses.png', NULL, NULL, '2021-02-18 09:51:35', '2021-02-18 09:51:35'),
(1375, '1613651208bg-personal-experience-briefcase.png', 'dashboardImages/gallery/1613651208bg-personal-experience-briefcase.png', NULL, NULL, '2021-02-18 10:26:48', '2021-02-18 10:26:48'),
(1376, '1613651209bg-personal-experience-device.png', 'dashboardImages/gallery/1613651209bg-personal-experience-device.png', NULL, NULL, '2021-02-18 10:26:49', '2021-02-18 10:26:49'),
(1377, '1613651209bg-personal-experience-glasses.png', 'dashboardImages/gallery/1613651209bg-personal-experience-glasses.png', NULL, NULL, '2021-02-18 10:26:49', '2021-02-18 10:26:49'),
(1381, '1616088565gallary-img-1.jpg', 'dashboardImages/album/1616088565gallary-img-1.jpg', NULL, NULL, '2021-03-18 15:29:25', '2021-03-18 15:29:25'),
(1382, '1616088667gallary-img-2.jpg', 'dashboardImages/album/1616088667gallary-img-2.jpg', NULL, NULL, '2021-03-18 15:31:07', '2021-03-18 15:31:07'),
(1383, '1616088682gallary-img-1.jpg', 'dashboardImages/album/1616088682gallary-img-1.jpg', NULL, 11, '2021-03-18 15:31:22', '2021-03-18 15:31:22'),
(1384, '1616088682gallary-img-2.jpg', 'dashboardImages/album/1616088682gallary-img-2.jpg', NULL, 11, '2021-03-18 15:31:22', '2021-03-18 15:31:22'),
(1385, '1616088682gallary-img-3.jpg', 'dashboardImages/album/1616088682gallary-img-3.jpg', NULL, 11, '2021-03-18 15:31:22', '2021-03-18 15:31:22'),
(1386, '1616088682gallary-img-4.jpg', 'dashboardImages/album/1616088682gallary-img-4.jpg', NULL, 11, '2021-03-18 15:31:22', '2021-03-18 15:31:22'),
(1387, '1616088682gallary-img-5.jpg', 'dashboardImages/album/1616088682gallary-img-5.jpg', NULL, 11, '2021-03-18 15:31:22', '2021-03-18 15:31:22'),
(1388, '1616088682gallary-img-6.jpg', 'dashboardImages/album/1616088682gallary-img-6.jpg', NULL, 11, '2021-03-18 15:31:22', '2021-03-18 15:31:22'),
(1395, '1616089779about-us-img-2.png', 'dashboardImages/about/1616089779about-us-img-2.png', NULL, NULL, '2021-03-18 15:49:39', '2021-03-18 15:49:39'),
(1396, '1616089779about-us-img-1.png', 'dashboardImages/about/1616089779about-us-img-1.png', NULL, NULL, '2021-03-18 15:49:39', '2021-03-18 15:49:39'),
(1397, '1616089779quality.jpg', 'dashboardImages/about/1616089779quality.jpg', NULL, NULL, '2021-03-18 15:49:39', '2021-03-18 15:49:39'),
(1398, '1616089779values.jpg', 'dashboardImages/about/1616089779values.jpg', NULL, NULL, '2021-03-18 15:49:39', '2021-03-18 15:49:39'),
(1399, '1616090058logo.png', 'dashboardImages/setting/1616090058logo.png', NULL, NULL, '2021-03-18 15:54:18', '2021-03-18 15:54:18'),
(1400, '1616090058logo.png', 'dashboardImages/setting/1616090058logo.png', NULL, NULL, '2021-03-18 15:54:18', '2021-03-18 15:54:18'),
(1401, '210321-112404counter-bg.jpg', 'dashboardImages/slider/210321-112404counter-bg.jpg', 'slider image', NULL, '2021-03-21 09:24:04', '2021-03-21 09:24:04'),
(1402, '1616326284counter-bg.jpg', 'dashboardImages/slider/1616326284counter-bg.jpg', 'slider image', NULL, '2021-03-21 09:31:24', '2021-03-21 09:31:24'),
(1403, '1616326336counter-bg.jpg', 'dashboardImages/slider/1616326336counter-bg.jpg', 'slider image', NULL, '2021-03-21 09:32:16', '2021-04-11 12:06:19'),
(1404, '1616326456counter-bg.jpg', 'dashboardImages/slider/1616326456counter-bg.jpg', 'slider image', NULL, '2021-03-21 09:34:16', '2021-03-21 09:34:16'),
(1405, '1616334048_logo.png', 'dashboardImages/open_graph/1616334048_logo.png', 'home:og', NULL, '2021-03-21 11:40:48', '2021-03-21 11:40:48'),
(1406, '16165014041.png', 'dashboardImages/gallery/16165014041.png', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(1407, '16165014042.png', 'dashboardImages/gallery/16165014042.png', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(1408, '16165014043.png', 'dashboardImages/gallery/16165014043.png', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(1409, '16165014044.png', 'dashboardImages/gallery/16165014044.png', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(1410, '16165014045.png', 'dashboardImages/gallery/16165014045.png', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(1411, '16165014046.png', 'dashboardImages/gallery/16165014046.png', NULL, NULL, '2021-03-23 10:10:04', '2021-03-23 10:10:04'),
(1412, '1618149577main6.jpg', 'dashboardImages/slider/1618149577main6.jpg', 'slider image', NULL, '2021-04-11 11:59:37', '2021-04-11 12:10:01'),
(1413, '1618150149main11.jpg', 'dashboardImages/slider/1618150149main11.jpg', 'slider image', NULL, '2021-04-11 12:09:09', '2021-04-11 12:09:09'),
(1414, '1618150197sofabig.png', 'dashboardImages/slider/1618150197sofabig.png', 'slider image', NULL, '2021-04-11 12:09:57', '2021-05-25 07:38:54'),
(1415, '1618151885logo.png', 'dashboardImages/setting/1618151885logo.png', NULL, NULL, '2021-04-11 12:38:05', '2021-04-11 12:38:05'),
(1416, '1618151885logo-footer.png', 'dashboardImages/setting/1618151885logo-footer.png', NULL, NULL, '2021-04-11 12:38:05', '2021-04-11 12:38:05'),
(1417, '1618154454gallery-1.png', 'dashboardImages/gallery/1618154454gallery-1.png', NULL, NULL, '2021-04-11 13:20:54', '2021-04-11 13:20:54'),
(1418, '1618154454gallery-2.png', 'dashboardImages/gallery/1618154454gallery-2.png', NULL, NULL, '2021-04-11 13:20:54', '2021-04-11 13:20:54'),
(1419, '1618154454gallery-3.png', 'dashboardImages/gallery/1618154454gallery-3.png', NULL, NULL, '2021-04-11 13:20:54', '2021-04-11 13:20:54'),
(1420, '1618154454gallery-4.jpg', 'dashboardImages/gallery/1618154454gallery-4.jpg', NULL, NULL, '2021-04-11 13:20:54', '2021-04-11 13:20:54'),
(1421, '1618154454gallery-5.jpg', 'dashboardImages/gallery/1618154454gallery-5.jpg', NULL, NULL, '2021-04-11 13:20:54', '2021-04-11 13:20:54'),
(1422, '1618154454gallery-6.jpg', 'dashboardImages/gallery/1618154454gallery-6.jpg', NULL, NULL, '2021-04-11 13:20:54', '2021-04-11 13:20:54'),
(1423, '1618154454gallery-7.png', 'dashboardImages/gallery/1618154454gallery-7.png', NULL, NULL, '2021-04-11 13:20:54', '2021-04-11 13:20:54'),
(1424, '1618154454gallery-8.png', 'dashboardImages/gallery/1618154454gallery-8.png', NULL, NULL, '2021-04-11 13:20:54', '2021-04-11 13:20:54'),
(1425, '1618313964gallery-4.jpg', 'dashboardImages/product/1618313964gallery-4.jpg', 'product image', NULL, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(1426, '1618313964gallery-4.jpg', 'dashboardImages/product/1618313964gallery-4.jpg', 'product icon', NULL, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(1427, 'gallery-3.png', 'dashboardImages/product/gallery-3.png', NULL, NULL, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(1428, 'gallery-4.jpg', 'dashboardImages/product/gallery-4.jpg', NULL, NULL, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(1429, 'gallery-6.jpg', 'dashboardImages/product/gallery-6.jpg', NULL, NULL, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(1430, 'gallery-7.png', 'dashboardImages/product/gallery-7.png', NULL, NULL, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(1431, 'gallery-8.png', 'dashboardImages/product/gallery-8.png', NULL, NULL, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(1436, '1618314042gallery-2.png', 'dashboardImages/slider/1618314042gallery-2.png', 'product alt', NULL, '2021-04-13 09:40:42', '2021-11-02 12:32:45'),
(1437, '1618314042gallery-2.png', 'dashboardImages/product/1618314042gallery-2.png', 'product alt', NULL, '2021-04-13 09:40:42', '2021-11-02 12:32:45'),
(1438, '1618314082_gallery-3.png', 'dashboardImages/product/1618314082_gallery-3.png', 'greasy hair II', NULL, '2021-04-13 09:41:22', '2021-04-13 09:41:22'),
(1439, '1618314082_gallery-4.jpg', 'dashboardImages/product/1618314082_gallery-4.jpg', 'greasy hair II', NULL, '2021-04-13 09:41:22', '2021-04-13 09:41:22'),
(1440, '1618314082_gallery-6.jpg', 'dashboardImages/product/1618314082_gallery-6.jpg', 'greasy hair II', NULL, '2021-04-13 09:41:22', '2021-04-13 09:41:22'),
(1441, '1618314082_gallery-8.png', 'dashboardImages/product/1618314082_gallery-8.png', 'greasy hair II', NULL, '2021-04-13 09:41:22', '2021-04-13 09:41:22'),
(1442, '1618314117gallery-5.jpg', 'dashboardImages/slider/1618314117gallery-5.jpg', 'product alt', NULL, '2021-04-13 09:41:57', '2021-04-13 09:41:57'),
(1443, '1618314117gallery-5.jpg', 'dashboardImages/product/1618314117gallery-5.jpg', 'product alt', NULL, '2021-04-13 09:41:57', '2021-04-13 09:41:57'),
(1444, '1618314174gallery-7.png', 'dashboardImages/slider/1618314174gallery-7.png', 'product alt', NULL, '2021-04-13 09:42:54', '2021-04-13 09:42:54'),
(1445, '1618314174gallery-7.png', 'dashboardImages/product/1618314174gallery-7.png', 'product alt', NULL, '2021-04-13 09:42:54', '2021-04-13 09:42:54'),
(1446, '1618314191_gallery-2.png', 'dashboardImages/product/1618314191_gallery-2.png', 'mirrors', NULL, '2021-04-13 09:43:11', '2021-04-13 09:43:11'),
(1447, '1618314191_gallery-3.png', 'dashboardImages/product/1618314191_gallery-3.png', 'mirrors', NULL, '2021-04-13 09:43:11', '2021-04-13 09:43:11'),
(1448, '1618314191_gallery-6.jpg', 'dashboardImages/product/1618314191_gallery-6.jpg', 'mirrors', NULL, '2021-04-13 09:43:11', '2021-04-13 09:43:11'),
(1449, '1618314191_gallery-7.png', 'dashboardImages/product/1618314191_gallery-7.png', 'mirrors', NULL, '2021-04-13 09:43:11', '2021-04-13 09:43:11'),
(1450, '1618391003gallery-1.png', 'dashboardImages/about/1618391003gallery-1.png', NULL, NULL, '2021-04-14 07:03:23', '2021-04-14 07:03:23'),
(1451, '1618391003gallery-4.jpg', 'dashboardImages/about/1618391003gallery-4.jpg', NULL, NULL, '2021-04-14 07:03:23', '2021-04-14 07:03:23'),
(1452, '1618391003gallery-6.jpg', 'dashboardImages/about/1618391003gallery-6.jpg', NULL, NULL, '2021-04-14 07:03:23', '2021-04-14 07:03:23'),
(1453, '1618391954deal1.png', 'dashboardImages/about/1618391954deal1.png', NULL, NULL, '2021-04-14 07:19:14', '2021-04-14 07:19:14'),
(1454, '1618392442coment12.jpg', 'dashboardImages/testimonial/1618392442coment12.jpg', NULL, NULL, '2021-04-14 07:27:22', '2021-04-14 07:27:22'),
(1455, '1618392451coment12.jpg', 'dashboardImages/testimonial/1618392451coment12.jpg', NULL, NULL, '2021-04-14 07:27:31', '2021-04-14 07:27:31'),
(1456, '1618392459coment13.jpg', 'dashboardImages/testimonial/1618392459coment13.jpg', NULL, NULL, '2021-04-14 07:27:39', '2021-04-14 07:27:39'),
(1457, '1618392622clients1.png', 'dashboardImages/client/1618392622clients1.png', NULL, NULL, '2021-04-14 07:30:22', '2021-04-14 07:30:22'),
(1458, '1618392637clients2.png', 'dashboardImages/client/1618392637clients2.png', NULL, NULL, '2021-04-14 07:30:37', '2021-04-14 07:30:37'),
(1459, '1618392649clients3.png', 'dashboardImages/client/1618392649clients3.png', NULL, NULL, '2021-04-14 07:30:49', '2021-04-14 07:30:49'),
(1460, '1618392662clients4.png', 'dashboardImages/client/1618392662clients4.png', NULL, NULL, '2021-04-14 07:31:02', '2021-04-14 07:31:02'),
(1461, '1618392674clients5.png', 'dashboardImages/client/1618392674clients5.png', NULL, NULL, '2021-04-14 07:31:14', '2021-04-14 07:31:14'),
(1462, '1618744266_logo.png', 'dashboardImages/open_graph/1618744266_logo.png', 'home:og', NULL, '2021-04-18 09:11:06', '2021-04-18 09:11:06'),
(1463, '1618841601logo.png', 'dashboardImages/setting/1618841601logo.png', NULL, NULL, '2021-04-19 12:13:21', '2021-04-19 12:13:21'),
(1464, '1618841601logo.png', 'dashboardImages/setting/1618841601logo.png', NULL, NULL, '2021-04-19 12:13:21', '2021-04-19 12:13:21'),
(1465, '16188427404.jpg', 'dashboardImages/slider/16188427404.jpg', 'service-image', NULL, '2021-04-19 12:32:20', '2021-04-19 12:34:14'),
(1466, '16188427404.jpg', 'dashboardImages/service/16188427404.jpg', 'service-icon', NULL, '2021-04-19 12:32:20', '2021-05-25 07:18:33'),
(1470, '16189979951.jpg', 'dashboardImages/gallery/16189979951.jpg', NULL, NULL, '2021-04-21 07:39:55', '2021-04-21 07:39:55'),
(1471, '16189979952.jpg', 'dashboardImages/gallery/16189979952.jpg', NULL, NULL, '2021-04-21 07:39:55', '2021-04-21 07:39:55'),
(1472, '16189979953.jpg', 'dashboardImages/gallery/16189979953.jpg', NULL, NULL, '2021-04-21 07:39:55', '2021-04-21 07:39:55'),
(1473, '16189979954.jpg', 'dashboardImages/gallery/16189979954.jpg', NULL, NULL, '2021-04-21 07:39:55', '2021-04-21 07:39:55'),
(1474, '16189979955.jpg', 'dashboardImages/gallery/16189979955.jpg', NULL, NULL, '2021-04-21 07:39:55', '2021-04-21 07:39:55'),
(1475, '16189979956.jpg', 'dashboardImages/gallery/16189979956.jpg', NULL, NULL, '2021-04-21 07:39:55', '2021-04-21 07:39:55'),
(1476, '16189980141.jpg', 'dashboardImages/gallery/16189980141.jpg', NULL, NULL, '2021-04-21 07:40:14', '2021-04-21 07:40:14'),
(1477, '16189980152.jpg', 'dashboardImages/gallery/16189980152.jpg', NULL, NULL, '2021-04-21 07:40:15', '2021-04-21 07:40:15'),
(1478, '16189980153.jpg', 'dashboardImages/gallery/16189980153.jpg', NULL, NULL, '2021-04-21 07:40:15', '2021-04-21 07:40:15'),
(1479, '16189980155.jpg', 'dashboardImages/gallery/16189980155.jpg', NULL, NULL, '2021-04-21 07:40:15', '2021-04-21 07:40:15'),
(1480, '16189980156.jpg', 'dashboardImages/gallery/16189980156.jpg', NULL, NULL, '2021-04-21 07:40:15', '2021-04-21 07:40:15'),
(1481, '16190973711.jpg', 'dashboardImages/blog/16190973711.jpg', 'blog image', NULL, '2021-04-22 11:16:11', '2021-04-22 11:16:26'),
(1482, '16190974156.jpg', 'dashboardImages/blog/16190974156.jpg', 'blog image', NULL, '2021-04-22 11:16:55', '2021-04-22 11:16:55'),
(1483, '1619097449mission.jpg', 'dashboardImages/blog/1619097449mission.jpg', 'blog image', NULL, '2021-04-22 11:17:29', '2021-04-22 11:17:29'),
(1484, '16190974615.jpg', 'dashboardImages/blog/16190974615.jpg', 'fourth blog', NULL, '2021-04-22 11:17:41', '2021-04-22 11:17:41'),
(1485, '1619097673_logo.png', 'dashboardImages/open_graph/1619097673_logo.png', 'home:og', NULL, '2021-04-22 11:21:13', '2021-04-22 11:21:13'),
(1486, '16213411742 (1) (1).jpg', 'dashboardImages/album/16213411742 (1) (1).jpg', NULL, NULL, '2021-05-18 10:32:54', '2021-05-18 10:32:54'),
(1497, '1621350885egy.jpg', 'dashboardImages/branch/1621350885egy.jpg', 'branch image', NULL, '2021-05-18 13:14:45', '2021-05-18 13:14:45'),
(1498, '16213514874.jpg', 'dashboardImages/branch/16213514874.jpg', 'branch image', NULL, '2021-05-18 13:24:47', '2021-05-18 13:24:47'),
(1499, '1621351685egy.jpg', 'dashboardImages/branch/1621351685egy.jpg', 'branch image', NULL, '2021-05-18 13:28:05', '2021-05-18 13:28:05'),
(1500, '1621498365_1.jpg', 'dashboardImages/branch/1621498365_1.jpg', 'Aquatreat Egypt', NULL, '2021-05-20 06:12:45', '2021-05-20 06:12:45'),
(1501, '1621498365_2.jpg', 'dashboardImages/branch/1621498365_2.jpg', 'Aquatreat Egypt', NULL, '2021-05-20 06:12:45', '2021-05-20 06:12:45'),
(1502, '1621498365_3.jpg', 'dashboardImages/branch/1621498365_3.jpg', 'Aquatreat Egypt', NULL, '2021-05-20 06:12:45', '2021-05-20 06:12:45'),
(1504, '1621504675egy.jpg', 'dashboardImages/branch/1621504675egy.jpg', 'branch image', NULL, '2021-05-20 07:57:55', '2021-05-20 07:57:55'),
(1505, '1621504872saudi.jpg', 'dashboardImages/branch/1621504872saudi.jpg', 'branch image', NULL, '2021-05-20 08:01:12', '2021-05-20 08:01:12'),
(1506, '1621505344logo.png', 'dashboardImages/setting/1621505344logo.png', NULL, NULL, '2021-05-20 08:09:04', '2021-05-20 08:09:04'),
(1507, '1621505350logo.png', 'dashboardImages/setting/1621505350logo.png', NULL, NULL, '2021-05-20 08:09:10', '2021-05-20 08:09:10'),
(1508, '16215179391.jpg', 'dashboardImages/team/16215179391.jpg', NULL, NULL, '2021-05-20 11:38:59', '2021-05-20 11:38:59'),
(1509, '16217603572.jpg', 'dashboardImages/team/16217603572.jpg', NULL, NULL, '2021-05-23 06:59:17', '2021-05-23 06:59:17'),
(1510, '16217603983.jpg', 'dashboardImages/team/16217603983.jpg', NULL, NULL, '2021-05-23 06:59:58', '2021-05-23 06:59:58'),
(1511, '16217604134.jpg', 'dashboardImages/team/16217604134.jpg', NULL, NULL, '2021-05-23 07:00:13', '2021-05-23 07:00:13'),
(1512, '162176042410.jpg', 'dashboardImages/team/162176042410.jpg', NULL, NULL, '2021-05-23 07:00:24', '2021-05-23 07:00:24'),
(1513, '16217604376.jpg', 'dashboardImages/team/16217604376.jpg', NULL, NULL, '2021-05-23 07:00:37', '2021-05-23 07:00:37'),
(1514, '16217604467.jpg', 'dashboardImages/team/16217604467.jpg', NULL, NULL, '2021-05-23 07:00:46', '2021-05-23 07:00:46'),
(1515, '16217604589.jpg', 'dashboardImages/team/16217604589.jpg', NULL, NULL, '2021-05-23 07:00:58', '2021-05-23 07:00:58'),
(1516, '16217625336.jpg', 'dashboardImages/team/16217625336.jpg', NULL, NULL, '2021-05-23 07:35:33', '2021-05-23 07:35:33'),
(1517, '16217635477.jpg', 'dashboardImages/team/16217635477.jpg', NULL, NULL, '2021-05-23 07:52:27', '2021-05-23 07:52:27'),
(1518, '1621767052icon-1.png', 'dashboardImages/slider/1621767052icon-1.png', NULL, NULL, '2021-05-23 08:50:52', '2021-05-23 08:50:52'),
(1519, '1621770535glitter.png', 'dashboardImages/slider/1621770535glitter.png', NULL, NULL, '2021-05-23 09:48:55', '2021-05-23 09:48:55'),
(1520, '1621773402quality1.png', 'dashboardImages/slider/1621773402quality1.png', NULL, NULL, '2021-05-23 10:36:42', '2021-05-23 10:36:42'),
(1521, '1621773460performance1.png', 'dashboardImages/slider/1621773460performance1.png', NULL, NULL, '2021-05-23 10:37:40', '2021-05-23 10:37:40'),
(1522, '1621773549process1.png', 'dashboardImages/slider/1621773549process1.png', NULL, NULL, '2021-05-23 10:39:09', '2021-05-23 10:39:09'),
(1523, '16217747761.jpg', 'dashboardImages/gallery/16217747761.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1524, '16217747762.jpg', 'dashboardImages/gallery/16217747762.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1525, '16217747763.jpg', 'dashboardImages/gallery/16217747763.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1526, '16217747764.jpg', 'dashboardImages/gallery/16217747764.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1527, '16217747765.jpg', 'dashboardImages/gallery/16217747765.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1528, '16217747766.jpg', 'dashboardImages/gallery/16217747766.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1529, '16217747767.jpg', 'dashboardImages/gallery/16217747767.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1530, '16217747768.jpg', 'dashboardImages/gallery/16217747768.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1531, '16217747769.jpg', 'dashboardImages/gallery/16217747769.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1532, '162177477610.jpg', 'dashboardImages/gallery/162177477610.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1533, '162177477611.jpg', 'dashboardImages/gallery/162177477611.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1534, '162177477612.jpg', 'dashboardImages/gallery/162177477612.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1535, '162177477613.jpg', 'dashboardImages/gallery/162177477613.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1536, '162177477614.jpg', 'dashboardImages/gallery/162177477614.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1537, '162177477615.jpg', 'dashboardImages/gallery/162177477615.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1538, '162177477616.jpg', 'dashboardImages/gallery/162177477616.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1539, '162177477617 (2).png', 'dashboardImages/gallery/162177477617 (2).png', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1540, '162177477617.jpg', 'dashboardImages/gallery/162177477617.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1541, '162177477618.jpg', 'dashboardImages/gallery/162177477618.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1542, '162177477619.jpg', 'dashboardImages/gallery/162177477619.jpg', NULL, NULL, '2021-05-23 10:59:36', '2021-05-23 10:59:36'),
(1543, '1621775503about.png', 'dashboardImages/about/1621775503about.png', NULL, NULL, '2021-05-23 11:11:43', '2021-05-23 11:11:43'),
(1544, '1621775503vision.jpg', 'dashboardImages/about/1621775503vision.jpg', NULL, NULL, '2021-05-23 11:11:43', '2021-05-23 11:11:43'),
(1545, '1621775503vission.png', 'dashboardImages/about/1621775503vission.png', NULL, NULL, '2021-05-23 11:11:43', '2021-05-23 11:11:43'),
(1546, '1621775503values.jpg', 'dashboardImages/about/1621775503values.jpg', NULL, NULL, '2021-05-23 11:11:44', '2021-05-23 11:11:44'),
(1547, '1621776152_logo.png', 'dashboardImages/open_graph/1621776152_logo.png', 'home:og', NULL, '2021-05-23 11:22:32', '2021-05-23 11:22:32'),
(1548, '16218716271.jpg', 'dashboardImages/gallery/16218716271.jpg', NULL, NULL, '2021-05-24 13:53:47', '2021-05-24 13:53:47'),
(1549, '16218716272.jpg', 'dashboardImages/gallery/16218716272.jpg', NULL, NULL, '2021-05-24 13:53:47', '2021-05-24 13:53:47'),
(1550, '16218716273.jpg', 'dashboardImages/gallery/16218716273.jpg', NULL, NULL, '2021-05-24 13:53:47', '2021-05-24 13:53:47'),
(1551, '16218716274.jpg', 'dashboardImages/gallery/16218716274.jpg', NULL, NULL, '2021-05-24 13:53:47', '2021-05-24 13:53:47'),
(1552, '16218716275.jpg', 'dashboardImages/gallery/16218716275.jpg', NULL, NULL, '2021-05-24 13:53:47', '2021-05-24 13:53:47'),
(1553, '16218716276.jpg', 'dashboardImages/gallery/16218716276.jpg', NULL, NULL, '2021-05-24 13:53:47', '2021-05-24 13:53:47'),
(1554, '16218716277.jpg', 'dashboardImages/gallery/16218716277.jpg', NULL, NULL, '2021-05-24 13:53:47', '2021-05-24 13:53:47'),
(1555, '16218716278.jpg', 'dashboardImages/gallery/16218716278.jpg', NULL, NULL, '2021-05-24 13:53:47', '2021-05-24 13:53:47'),
(1556, '1621871733logo-main.png', 'dashboardImages/setting/1621871733logo-main.png', NULL, NULL, '2021-05-24 13:55:33', '2021-05-24 13:55:33'),
(1557, '1621871733logo-main.png', 'dashboardImages/setting/1621871733logo-main.png', NULL, NULL, '2021-05-24 13:55:33', '2021-05-24 13:55:33'),
(1558, '1621934313slid-1.png', 'dashboardImages/slider/1621934313slid-1.png', 'service-image', NULL, '2021-05-25 07:18:33', '2021-05-25 07:18:33'),
(1559, '1621934389slide-2.jpg', 'dashboardImages/service/1621934389slide-2.jpg', 'service-image', NULL, '2021-05-25 07:19:49', '2021-05-25 07:21:37'),
(1560, '1621934389slide-2.jpg', 'dashboardImages/service/1621934389slide-2.jpg', 'service-icon', NULL, '2021-05-25 07:19:49', '2021-05-25 07:21:37'),
(1561, '16219344878.jpg', 'dashboardImages/service/16219344878.jpg', 'service-image', NULL, '2021-05-25 07:21:27', '2021-05-25 07:21:27'),
(1562, '16219344878.jpg', 'dashboardImages/service/16219344878.jpg', 'service-icon', NULL, '2021-05-25 07:21:27', '2021-05-25 07:21:27'),
(1572, '1621935066slid-1.png', 'dashboardImages/slider/1621935066slid-1.png', 'slider image', NULL, '2021-05-25 07:31:06', '2021-05-25 07:31:06'),
(1573, '1621935291slide-2.jpg', 'dashboardImages/slider/1621935291slide-2.jpg', 'slider image', NULL, '2021-05-25 07:34:51', '2021-05-25 07:34:51'),
(1574, '1621935595slide-1.jpg', 'dashboardImages/slider/1621935595slide-1.jpg', 'slider image', NULL, '2021-05-25 07:39:55', '2021-05-25 07:39:55'),
(1575, '16219383551.jpg', 'dashboardImages/blog/16219383551.jpg', 'blog image', NULL, '2021-05-25 08:25:55', '2021-05-25 08:25:55'),
(1576, '16219383662.jpg', 'dashboardImages/blog/16219383662.jpg', 'blog image', NULL, '2021-05-25 08:26:06', '2021-05-25 08:26:06'),
(1577, '16219383773.jpg', 'dashboardImages/blog/16219383773.jpg', 'blog image', NULL, '2021-05-25 08:26:17', '2021-05-25 08:26:17'),
(1578, '16219383894.jpg', 'dashboardImages/blog/16219383894.jpg', 'fourth blog', NULL, '2021-05-25 08:26:29', '2021-05-25 08:26:29'),
(1579, '16219384775.jpg', 'dashboardImages/service/16219384775.jpg', 'service-image', NULL, '2021-05-25 08:27:57', '2021-05-25 08:27:57'),
(1580, '16219384775.jpg', 'dashboardImages/service/16219384775.jpg', 'service-icon', NULL, '2021-05-25 08:27:57', '2021-05-25 08:27:57'),
(1581, '1621941178logo1.png', 'dashboardImages/gallery/1621941178logo1.png', NULL, NULL, '2021-05-25 09:12:58', '2021-05-25 09:12:58'),
(1582, '1621941178logo2.png', 'dashboardImages/gallery/1621941178logo2.png', NULL, NULL, '2021-05-25 09:12:58', '2021-05-25 09:12:58'),
(1583, '1621941178logo3 (1).png', 'dashboardImages/gallery/1621941178logo3 (1).png', NULL, NULL, '2021-05-25 09:12:58', '2021-05-25 09:12:58'),
(1584, '1621941178logo3.png', 'dashboardImages/gallery/1621941178logo3.png', NULL, NULL, '2021-05-25 09:12:58', '2021-05-25 09:12:58'),
(1585, '1621941178logo5.png', 'dashboardImages/gallery/1621941178logo5.png', NULL, NULL, '2021-05-25 09:12:58', '2021-05-25 09:12:58'),
(1586, '1621941178logo6.png', 'dashboardImages/gallery/1621941178logo6.png', NULL, NULL, '2021-05-25 09:12:58', '2021-05-25 09:12:58'),
(1590, '1621941685_logo-mark.png', 'dashboardImages/open_graph/1621941685_logo-mark.png', 'home:og', NULL, '2021-05-25 09:21:25', '2021-05-25 09:21:25'),
(1591, '16224549581.jpeg', 'dashboardImages/gallery/16224549581.jpeg', NULL, NULL, '2021-05-31 07:55:58', '2021-05-31 07:55:58'),
(1592, '16224549582.jpeg', 'dashboardImages/gallery/16224549582.jpeg', NULL, NULL, '2021-05-31 07:55:58', '2021-05-31 07:55:58'),
(1593, '16224549583.jpeg', 'dashboardImages/gallery/16224549583.jpeg', NULL, NULL, '2021-05-31 07:55:58', '2021-05-31 07:55:58'),
(1594, '16224549584.jpeg', 'dashboardImages/gallery/16224549584.jpeg', NULL, NULL, '2021-05-31 07:55:58', '2021-05-31 07:55:58'),
(1595, '16224568181.jpeg', 'dashboardImages/gallery/16224568181.jpeg', NULL, NULL, '2021-05-31 08:26:58', '2021-05-31 08:26:58'),
(1596, '16224568182.jpeg', 'dashboardImages/gallery/16224568182.jpeg', NULL, NULL, '2021-05-31 08:26:58', '2021-05-31 08:26:58'),
(1597, '16224568183.jpeg', 'dashboardImages/gallery/16224568183.jpeg', NULL, NULL, '2021-05-31 08:26:58', '2021-05-31 08:26:58'),
(1598, '16224568185.jpeg', 'dashboardImages/gallery/16224568185.jpeg', NULL, NULL, '2021-05-31 08:26:58', '2021-05-31 08:26:58'),
(1599, '16224568186.jpeg', 'dashboardImages/gallery/16224568186.jpeg', NULL, NULL, '2021-05-31 08:26:58', '2021-05-31 08:26:58'),
(1600, '16224568187.jpg', 'dashboardImages/gallery/16224568187.jpg', NULL, NULL, '2021-05-31 08:26:58', '2021-05-31 08:26:58'),
(1601, '1622466907image-3.jpg', 'dashboardImages/service/1622466907image-3.jpg', 'service-image', NULL, '2021-05-31 11:15:07', '2021-05-31 11:34:00'),
(1602, '1622466907image-3.jpg', 'dashboardImages/service/1622466907image-3.jpg', 'service-icon', NULL, '2021-05-31 11:15:07', '2021-05-31 11:34:00'),
(1603, '1622467536image-1.jpg', 'dashboardImages/slider/1622467536image-1.jpg', 'service-image', NULL, '2021-05-31 11:25:36', '2021-05-31 11:25:36'),
(1604, '1622467536image-1.jpg', 'dashboardImages/service/1622467536image-1.jpg', 'service-icon', NULL, '2021-05-31 11:25:36', '2021-05-31 11:25:36'),
(1611, '1622467642image-2.jpg', 'dashboardImages/slider/1622467642image-2.jpg', 'service-image', NULL, '2021-05-31 11:27:22', '2021-05-31 11:27:22'),
(1612, '1622467642image-2.jpg', 'dashboardImages/service/1622467642image-2.jpg', 'service-icon', NULL, '2021-05-31 11:27:22', '2021-05-31 11:27:22');
INSERT INTO `image` (`id`, `name`, `path`, `alt`, `album_id`, `created_at`, `updated_at`) VALUES
(1616, '1622467694image-3.jpg', 'dashboardImages/slider/1622467694image-3.jpg', 'service-image', NULL, '2021-05-31 11:28:14', '2021-05-31 11:28:14'),
(1617, '1622467694image-3.jpg', 'dashboardImages/service/1622467694image-3.jpg', 'service-icon', NULL, '2021-05-31 11:28:14', '2021-05-31 11:28:14'),
(1621, '1622467878image-4.jpg', 'dashboardImages/slider/1622467878image-4.jpg', 'service-image', NULL, '2021-05-31 11:31:18', '2021-05-31 11:31:18'),
(1622, '1622467878image-4.jpg', 'dashboardImages/service/1622467878image-4.jpg', 'service-icon', NULL, '2021-05-31 11:31:18', '2021-05-31 11:31:18'),
(1623, '1622468868blog-image-1.jpg', 'dashboardImages/service/1622468868blog-image-1.jpg', 'service-image', NULL, '2021-05-31 11:47:48', '2021-05-31 11:47:48'),
(1624, '1622468868post-thumb-2.jpg', 'dashboardImages/service/1622468868post-thumb-2.jpg', 'service-icon', NULL, '2021-05-31 11:47:48', '2021-05-31 11:47:48'),
(1625, '1622473189image-1.jpg', 'dashboardImages/slider/1622473189image-1.jpg', 'slider image', NULL, '2021-05-31 12:59:49', '2021-06-01 12:21:31'),
(1626, '1622473210image-1.jpg', 'dashboardImages/slider/1622473210image-1.jpg', 'slider image', NULL, '2021-05-31 13:00:10', '2021-05-31 13:00:10'),
(1627, '1622473225image-2.jpg', 'dashboardImages/slider/1622473225image-2.jpg', 'slider image', NULL, '2021-05-31 13:00:25', '2021-05-31 13:00:25'),
(1628, '1622473326logo.png', 'dashboardImages/setting/1622473326logo.png', NULL, NULL, '2021-05-31 13:02:06', '2021-05-31 13:02:06'),
(1629, '1622473326logo-4.png', 'dashboardImages/setting/1622473326logo-4.png', NULL, NULL, '2021-05-31 13:02:06', '2021-05-31 13:02:06'),
(1630, '1622473373logo-4.png', 'dashboardImages/setting/1622473373logo-4.png', NULL, NULL, '2021-05-31 13:02:53', '2021-05-31 13:02:53'),
(1631, '16224742161.png', 'dashboardImages/gallery/16224742161.png', NULL, NULL, '2021-05-31 13:16:56', '2021-05-31 13:16:56'),
(1632, '16224742162.png', 'dashboardImages/gallery/16224742162.png', NULL, NULL, '2021-05-31 13:16:56', '2021-05-31 13:16:56'),
(1633, '16224742163.png', 'dashboardImages/gallery/16224742163.png', NULL, NULL, '2021-05-31 13:16:56', '2021-05-31 13:16:56'),
(1634, '16224742164.png', 'dashboardImages/gallery/16224742164.png', NULL, NULL, '2021-05-31 13:16:56', '2021-05-31 13:16:56'),
(1635, '16224742165.png', 'dashboardImages/gallery/16224742165.png', NULL, NULL, '2021-05-31 13:16:56', '2021-05-31 13:16:56'),
(1636, '1622475859post-thumb-2.jpg', 'dashboardImages/about/1622475859post-thumb-2.jpg', NULL, NULL, '2021-05-31 13:44:19', '2021-05-31 13:44:19'),
(1637, '1622475859service-block-two-bg.jpg', 'dashboardImages/about/1622475859service-block-two-bg.jpg', NULL, NULL, '2021-05-31 13:44:19', '2021-05-31 13:44:19'),
(1638, '1622475859blog-image-1.jpg', 'dashboardImages/about/1622475859blog-image-1.jpg', NULL, NULL, '2021-05-31 13:44:19', '2021-05-31 13:44:19'),
(1639, '1622475859image-1.jpg', 'dashboardImages/about/1622475859image-1.jpg', NULL, NULL, '2021-05-31 13:44:19', '2021-05-31 13:44:19'),
(1640, '1622475883footer-bg.jpg', 'dashboardImages/about/1622475883footer-bg.jpg', NULL, NULL, '2021-05-31 13:44:43', '2021-05-31 13:44:43'),
(1641, '1622556935_logo.png', 'dashboardImages/open_graph/1622556935_logo.png', 'home:og', NULL, '2021-06-01 12:15:35', '2021-06-01 12:15:35'),
(1642, '1623144948logo.png', 'dashboardImages/setting/1623144948logo.png', NULL, NULL, '2021-06-08 07:35:48', '2021-06-08 07:35:48'),
(1643, '1623144948logo.png', 'dashboardImages/setting/1623144948logo.png', NULL, NULL, '2021-06-08 07:35:48', '2021-06-08 07:35:48'),
(1644, '162314931301.jpg', 'dashboardImages/service/162314931301.jpg', 'service-image', NULL, '2021-06-08 08:48:33', '2021-06-08 08:48:33'),
(1645, '162314931301.jpg', 'dashboardImages/service/162314931301.jpg', 'service-icon', NULL, '2021-06-08 08:48:33', '2021-06-08 08:48:33'),
(1646, '162314935002.jpg', 'dashboardImages/slider/162314935002.jpg', 'service-image', NULL, '2021-06-08 08:49:10', '2021-06-08 08:49:10'),
(1647, '162314935002.jpg', 'dashboardImages/service/162314935002.jpg', 'service-icon', NULL, '2021-06-08 08:49:10', '2021-06-08 08:49:10'),
(1648, '162314937603.jpg', 'dashboardImages/slider/162314937603.jpg', 'service-image', NULL, '2021-06-08 08:49:36', '2021-06-08 08:49:36'),
(1649, '162314937603.jpg', 'dashboardImages/service/162314937603.jpg', 'service-icon', NULL, '2021-06-08 08:49:36', '2021-06-08 08:49:36'),
(1650, '162315002601.jpg', 'dashboardImages/slider/162315002601.jpg', 'service-image', NULL, '2021-06-08 09:00:26', '2021-06-08 09:00:26'),
(1651, '162315002601.jpg', 'dashboardImages/service/162315002601.jpg', 'service-icon', NULL, '2021-06-08 09:00:26', '2021-06-08 09:00:26'),
(1652, '162315005202.jpg', 'dashboardImages/slider/162315005202.jpg', 'service-image', NULL, '2021-06-08 09:00:52', '2021-06-08 09:01:44'),
(1653, '162315005202.jpg', 'dashboardImages/service/162315005202.jpg', 'service-icon', NULL, '2021-06-08 09:00:52', '2021-06-08 09:01:44'),
(1654, '162315008607.jpg', 'dashboardImages/slider/162315008607.jpg', 'service-image', NULL, '2021-06-08 09:01:26', '2021-06-08 09:01:36'),
(1655, '162315008607.jpg', 'dashboardImages/service/162315008607.jpg', 'service-icon', NULL, '2021-06-08 09:01:26', '2021-06-08 09:01:36'),
(1656, '162315014606.jpg', 'dashboardImages/slider/162315014606.jpg', 'service-image', NULL, '2021-06-08 09:02:26', '2021-06-08 09:02:26'),
(1657, '162315014606.jpg', 'dashboardImages/service/162315014606.jpg', 'service-icon', NULL, '2021-06-08 09:02:26', '2021-06-08 09:02:26'),
(1658, '162315044004.jpg', 'dashboardImages/service/162315044004.jpg', 'service-image', NULL, '2021-06-08 09:07:20', '2021-06-08 09:07:20'),
(1659, '162315044004.jpg', 'dashboardImages/service/162315044004.jpg', 'service-icon', NULL, '2021-06-08 09:07:20', '2021-06-08 09:07:20'),
(1660, '162315063104.jpg', 'dashboardImages/service/162315063104.jpg', 'service-image', NULL, '2021-06-08 09:10:31', '2021-06-08 09:10:31'),
(1661, '162315063104.jpg', 'dashboardImages/service/162315063104.jpg', 'service-icon', NULL, '2021-06-08 09:10:31', '2021-06-08 09:10:31'),
(1662, '162315075703.jpg', 'dashboardImages/service/162315075703.jpg', 'service-image', NULL, '2021-06-08 09:12:37', '2021-06-08 09:12:37'),
(1663, '162315075703.jpg', 'dashboardImages/service/162315075703.jpg', 'service-icon', NULL, '2021-06-08 09:12:37', '2021-06-08 09:12:37'),
(1664, '1623154659_logo.png', 'dashboardImages/open_graph/1623154659_logo.png', 'home:og', NULL, '2021-06-08 10:17:39', '2021-06-08 10:17:39'),
(1665, '162315530503.jpg', 'dashboardImages/team/162315530503.jpg', NULL, NULL, '2021-06-08 10:28:25', '2021-06-08 10:28:25'),
(1666, '162315539102.jpg', 'dashboardImages/team/162315539102.jpg', NULL, NULL, '2021-06-08 10:29:51', '2021-06-08 10:29:51'),
(1667, '162315544601.jpg', 'dashboardImages/team/162315544601.jpg', NULL, NULL, '2021-06-08 10:30:46', '2021-06-08 10:30:46'),
(1668, '162315562301.jpg', 'dashboardImages/blog/162315562301.jpg', 'blog image', NULL, '2021-06-08 10:33:43', '2021-06-08 10:33:43'),
(1669, '162315570501.jpg', 'dashboardImages/blog/162315570501.jpg', 'blog image', NULL, '2021-06-08 10:35:05', '2021-06-08 10:35:05'),
(1670, '162315572902.jpg', 'dashboardImages/blog/162315572902.jpg', 'blog image', NULL, '2021-06-08 10:35:29', '2021-06-08 10:35:29'),
(1671, '162315574204.jpg', 'dashboardImages/blog/162315574204.jpg', 'blog image', NULL, '2021-06-08 10:35:42', '2021-06-08 10:35:42'),
(1672, '162315575603.jpg', 'dashboardImages/blog/162315575603.jpg', 'fourth blog', NULL, '2021-06-08 10:35:56', '2021-06-08 10:35:56'),
(1673, '1623687556gallery-1.jpg', 'dashboardImages/gallery/1623687556gallery-1.jpg', NULL, NULL, '2021-06-14 14:19:16', '2021-06-14 14:19:16'),
(1674, '1623687556gallery-2.jpg', 'dashboardImages/gallery/1623687556gallery-2.jpg', NULL, NULL, '2021-06-14 14:19:16', '2021-06-14 14:19:16'),
(1675, '1623687556gallery-3.jpg', 'dashboardImages/gallery/1623687556gallery-3.jpg', NULL, NULL, '2021-06-14 14:19:16', '2021-06-14 14:19:16'),
(1676, '1623688177gallery-4.jpg', 'dashboardImages/gallery/1623688177gallery-4.jpg', NULL, NULL, '2021-06-14 14:29:37', '2021-06-14 14:29:37'),
(1677, '1623688177gallery-5.jpg', 'dashboardImages/gallery/1623688177gallery-5.jpg', NULL, NULL, '2021-06-14 14:29:37', '2021-06-14 14:29:37'),
(1678, '1623688178gallery-6.jpg', 'dashboardImages/gallery/1623688178gallery-6.jpg', NULL, NULL, '2021-06-14 14:29:38', '2021-06-14 14:29:38'),
(1679, '1623764409blog-1.jpg', 'dashboardImages/blog/1623764409blog-1.jpg', 'blog image', NULL, '2021-06-15 11:40:09', '2021-06-15 11:40:09'),
(1680, '1623764494blog-1.jpg', 'dashboardImages/blog/1623764494blog-1.jpg', 'event image', NULL, '2021-06-15 11:41:34', '2021-06-15 11:41:34'),
(1681, '1623764717blog-1.jpg', 'dashboardImages/blog/1623764717blog-1.jpg', 'event image', NULL, '2021-06-15 11:45:17', '2021-06-15 11:45:17'),
(1682, '1623770312logo.png', 'dashboardImages/setting/1623770312logo.png', NULL, NULL, '2021-06-15 13:18:32', '2021-06-15 13:18:32'),
(1683, '1623770312logo.png', 'dashboardImages/setting/1623770312logo.png', NULL, NULL, '2021-06-15 13:18:32', '2021-06-15 13:18:32'),
(1690, '1623773732_logo.png', 'dashboardImages/open_graph/1623773732_logo.png', 'home:og', NULL, '2021-06-15 14:15:32', '2021-06-15 14:15:32'),
(1692, '1623774074gallery-2.jpg', 'dashboardImages/gallery/1623774074gallery-2.jpg', NULL, NULL, '2021-06-15 14:21:14', '2021-06-15 14:21:14'),
(1693, '1623774074gallery-3.jpg', 'dashboardImages/gallery/1623774074gallery-3.jpg', NULL, NULL, '2021-06-15 14:21:14', '2021-06-15 14:21:14'),
(1694, '1623774074gallery-4.jpg', 'dashboardImages/gallery/1623774074gallery-4.jpg', NULL, NULL, '2021-06-15 14:21:14', '2021-06-15 14:21:14'),
(1695, '1623774074gallery-5.jpg', 'dashboardImages/gallery/1623774074gallery-5.jpg', NULL, NULL, '2021-06-15 14:21:14', '2021-06-15 14:21:14'),
(1696, '1623774074gallery-6.jpg', 'dashboardImages/gallery/1623774074gallery-6.jpg', NULL, NULL, '2021-06-15 14:21:14', '2021-06-15 14:21:14'),
(1697, '1623920911slide-1.jpg', 'dashboardImages/slider/1623920911slide-1.jpg', 'slider image', NULL, '2021-06-17 07:08:31', '2021-06-17 07:09:57'),
(1698, '1623920939slide-2.jpg', 'dashboardImages/slider/1623920939slide-2.jpg', 'slider image', NULL, '2021-06-17 07:08:59', '2021-06-17 07:10:45'),
(1699, '1623920950slide-3.jpg', 'dashboardImages/slider/1623920950slide-3.jpg', 'slider image', NULL, '2021-06-17 07:09:10', '2021-06-17 07:11:01'),
(1700, '1623921247rent-1.jpg', 'dashboardImages/slider/1623921247rent-1.jpg', 'service-image', NULL, '2021-06-17 07:14:08', '2021-06-17 07:14:08'),
(1701, '1623921248rent-1.jpg', 'dashboardImages/service/1623921248rent-1.jpg', 'service-icon', NULL, '2021-06-17 07:14:08', '2021-06-17 07:14:08'),
(1702, '1623921275rent-2.jpg', 'dashboardImages/slider/1623921275rent-2.jpg', 'service-image', NULL, '2021-06-17 07:14:35', '2021-06-17 07:14:35'),
(1703, '1623921275rent-2.jpg', 'dashboardImages/service/1623921275rent-2.jpg', 'service-icon', NULL, '2021-06-17 07:14:35', '2021-06-17 07:14:35'),
(1712, '1623921504featured-1.jpg', 'dashboardImages/slider/1623921504featured-1.jpg', 'service-image', NULL, '2021-06-17 07:18:24', '2021-06-17 07:18:24'),
(1713, '1623921504featured-1.jpg', 'dashboardImages/service/1623921504featured-1.jpg', 'service-icon', NULL, '2021-06-17 07:18:24', '2021-06-17 07:18:24'),
(1714, '1623921528featured-3.jpg', 'dashboardImages/slider/1623921528featured-3.jpg', 'service-image', NULL, '2021-06-17 07:18:48', '2021-06-17 07:18:48'),
(1715, '1623921528featured-3.jpg', 'dashboardImages/service/1623921528featured-3.jpg', 'service-icon', NULL, '2021-06-17 07:18:48', '2021-06-17 07:18:48'),
(1716, '16243723491.jpg', 'dashboardImages/slider/16243723491.jpg', 'service-image', NULL, '2021-06-22 12:32:29', '2021-06-22 12:32:29'),
(1717, '16243723491.jpg', 'dashboardImages/service/16243723491.jpg', 'service-icon', NULL, '2021-06-22 12:32:29', '2021-06-22 12:32:29'),
(1718, '16243724504.jpg', 'dashboardImages/slider/16243724504.jpg', 'service-image', NULL, '2021-06-22 12:34:10', '2021-06-22 12:34:10'),
(1719, '16243724504.jpg', 'dashboardImages/service/16243724504.jpg', 'service-icon', NULL, '2021-06-22 12:34:10', '2021-06-22 12:34:10'),
(1720, '16243724923.jpg', 'dashboardImages/slider/16243724923.jpg', 'service-image', NULL, '2021-06-22 12:34:52', '2021-06-22 12:34:53'),
(1721, '16243724923.jpg', 'dashboardImages/service/16243724923.jpg', 'service-icon', NULL, '2021-06-22 12:34:52', '2021-06-22 12:34:53'),
(1722, '162437253810.jpg', 'dashboardImages/slider/162437253810.jpg', 'service-image', NULL, '2021-06-22 12:35:38', '2021-06-22 12:35:38'),
(1723, '162437253810.jpg', 'dashboardImages/service/162437253810.jpg', 'service-icon', NULL, '2021-06-22 12:35:38', '2021-06-22 12:35:38'),
(1724, '16243726121.jpg', 'dashboardImages/slider/16243726121.jpg', 'service-image', NULL, '2021-06-22 12:36:52', '2021-06-22 12:36:52'),
(1725, '16243726122.jpg', 'dashboardImages/service/16243726122.jpg', 'service-icon', NULL, '2021-06-22 12:36:52', '2021-06-22 12:36:52'),
(1726, '16243726592.jpg', 'dashboardImages/slider/16243726592.jpg', 'service-image', NULL, '2021-06-22 12:37:39', '2021-06-22 12:37:39'),
(1727, '16243726592.jpg', 'dashboardImages/service/16243726592.jpg', 'service-icon', NULL, '2021-06-22 12:37:39', '2021-06-22 12:37:39'),
(1728, '16243730521.jpg', 'dashboardImages/blog/16243730521.jpg', 'blog image', NULL, '2021-06-22 12:44:12', '2021-06-22 12:44:12'),
(1729, '16243730622.jpg', 'dashboardImages/blog/16243730622.jpg', 'blog image', NULL, '2021-06-22 12:44:22', '2021-06-22 12:44:22'),
(1730, '16243730743.jpg', 'dashboardImages/blog/16243730743.jpg', 'blog image', NULL, '2021-06-22 12:44:34', '2021-06-22 12:44:34'),
(1731, '16243730854.jpg', 'dashboardImages/blog/16243730854.jpg', 'fourth blog', NULL, '2021-06-22 12:44:45', '2021-06-22 12:44:45'),
(1732, '1624376577Dr3.jpeg', 'dashboardImages/team/1624376577Dr3.jpeg', NULL, NULL, '2021-06-22 13:42:57', '2021-06-22 13:42:57'),
(1733, '1624376586Dr4.jpeg', 'dashboardImages/team/1624376586Dr4.jpeg', NULL, NULL, '2021-06-22 13:43:06', '2021-06-22 13:43:06'),
(1734, '1624376613DR24.jpg', 'dashboardImages/team/1624376613DR24.jpg', NULL, NULL, '2021-06-22 13:43:33', '2021-06-22 13:43:33'),
(1735, '16243780171.jpg', 'dashboardImages/gallery/16243780171.jpg', NULL, NULL, '2021-06-22 14:06:57', '2021-06-22 14:06:57'),
(1736, '16243780172.jpg', 'dashboardImages/gallery/16243780172.jpg', NULL, NULL, '2021-06-22 14:06:57', '2021-06-22 14:06:57'),
(1737, '16243780173.jpg', 'dashboardImages/gallery/16243780173.jpg', NULL, NULL, '2021-06-22 14:06:57', '2021-06-22 14:06:57'),
(1738, '16243780174.jpg', 'dashboardImages/gallery/16243780174.jpg', NULL, NULL, '2021-06-22 14:06:57', '2021-06-22 14:06:57'),
(1739, '16243780175.jpg', 'dashboardImages/gallery/16243780175.jpg', NULL, NULL, '2021-06-22 14:06:57', '2021-06-22 14:06:57'),
(1740, '16243780176.jpg', 'dashboardImages/gallery/16243780176.jpg', NULL, NULL, '2021-06-22 14:06:57', '2021-06-22 14:06:57'),
(1741, '16243780177.jpg', 'dashboardImages/gallery/16243780177.jpg', NULL, NULL, '2021-06-22 14:06:57', '2021-06-22 14:06:57'),
(1742, '16243780178.jpg', 'dashboardImages/gallery/16243780178.jpg', NULL, NULL, '2021-06-22 14:06:57', '2021-06-22 14:06:57'),
(1743, '1624378250slide-1.jpg', 'dashboardImages/slider/1624378250slide-1.jpg', 'slider image', NULL, '2021-06-22 14:10:50', '2021-06-22 14:10:50'),
(1744, '1624378263slide-2.jpg', 'dashboardImages/slider/1624378263slide-2.jpg', 'slider image', NULL, '2021-06-22 14:11:03', '2021-06-22 14:11:03'),
(1745, '1624378274slide-3.jpg', 'dashboardImages/slider/1624378274slide-3.jpg', 'slider image', NULL, '2021-06-22 14:11:14', '2021-06-22 14:11:14'),
(1746, '1624378553about.jpg', 'dashboardImages/about/1624378553about.jpg', NULL, NULL, '2021-06-22 14:15:53', '2021-06-22 14:15:53'),
(1747, '1624378553mission.jpg', 'dashboardImages/about/1624378553mission.jpg', NULL, NULL, '2021-06-22 14:15:53', '2021-06-22 14:15:53'),
(1748, '1624378553vision.jpg', 'dashboardImages/about/1624378553vision.jpg', NULL, NULL, '2021-06-22 14:15:53', '2021-06-22 14:15:53'),
(1749, '1624378553values.jpg', 'dashboardImages/about/1624378553values.jpg', NULL, NULL, '2021-06-22 14:15:53', '2021-06-22 14:15:53'),
(1750, '16243786634.jpg', 'dashboardImages/slider/16243786634.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-06-22 14:17:43', '2021-06-22 14:17:43'),
(1751, '16243786634.jpg', 'dashboardImages/service/16243786634.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-06-22 14:17:43', '2021-07-05 14:11:19'),
(1752, '1624379277logo-2.png', 'dashboardImages/setting/1624379277logo-2.png', NULL, NULL, '2021-06-22 14:27:57', '2021-06-22 14:27:57'),
(1753, '1624379277logo.png', 'dashboardImages/setting/1624379277logo.png', NULL, NULL, '2021-06-22 14:27:57', '2021-06-22 14:27:57'),
(1754, '1624379311logo-2.png', 'dashboardImages/setting/1624379311logo-2.png', NULL, NULL, '2021-06-22 14:28:31', '2021-06-22 14:28:31'),
(1755, '1624379405_logo.png', 'dashboardImages/open_graph/1624379405_logo.png', 'home:og', NULL, '2021-06-22 14:30:05', '2021-06-22 14:30:05'),
(1756, '16250690594.png', 'dashboardImages/slider/16250690594.png', NULL, NULL, '2021-06-30 14:04:19', '2021-06-30 14:04:19'),
(1757, '16250691712.png', 'dashboardImages/slider/16250691712.png', NULL, NULL, '2021-06-30 14:06:11', '2021-06-30 14:06:11'),
(1758, '16250692993.png', 'dashboardImages/slider/16250692993.png', NULL, NULL, '2021-06-30 14:08:19', '2021-06-30 14:08:19'),
(1759, '1625477041g-logo.png', 'dashboardImages/setting/1625477041g-logo.png', NULL, NULL, '2021-07-05 07:24:01', '2021-07-05 07:24:01'),
(1760, '1625477041g-logo.png', 'dashboardImages/setting/1625477041g-logo.png', NULL, NULL, '2021-07-05 07:24:01', '2021-07-05 07:24:01'),
(1761, '16255014791.jpg', 'dashboardImages/slider/16255014791.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-05 14:11:19', '2021-07-06 08:05:39'),
(1762, '16255015242.jpg', 'dashboardImages/slider/16255015242.jpg', 'service-image', NULL, '2021-07-05 14:12:04', '2021-07-05 14:12:04'),
(1763, '16255015242.jpg', 'dashboardImages/service/16255015242.jpg', 'service-icon', NULL, '2021-07-05 14:12:04', '2021-07-05 14:12:04'),
(1764, '16255015361.jpg', 'dashboardImages/service/16255015361.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-05 14:12:16', '2021-07-06 08:05:39'),
(1765, '16255015703.jpg', 'dashboardImages/slider/16255015703.jpg', 'service-image', NULL, '2021-07-05 14:12:50', '2021-07-05 14:12:50'),
(1766, '16255015703.jpg', 'dashboardImages/service/16255015703.jpg', 'service-icon', NULL, '2021-07-05 14:12:50', '2021-07-05 14:12:50'),
(1767, '16255016054.jpg', 'dashboardImages/slider/16255016054.jpg', 'service-image', NULL, '2021-07-05 14:13:25', '2021-07-05 14:13:25'),
(1768, '16255016054.jpg', 'dashboardImages/service/16255016054.jpg', 'service-icon', NULL, '2021-07-05 14:13:25', '2021-07-05 14:13:25'),
(1769, '16255016773.jpg', 'dashboardImages/slider/16255016773.jpg', 'service-image', NULL, '2021-07-05 14:14:37', '2021-07-05 14:14:37'),
(1770, '16255016773.jpg', 'dashboardImages/service/16255016773.jpg', 'service-icon', NULL, '2021-07-05 14:14:37', '2021-07-05 14:14:37'),
(1771, '1625566152g-1.jpg', 'dashboardImages/slider/1625566152g-1.jpg', 'slider image', NULL, '2021-07-06 08:09:12', '2021-07-06 08:09:12'),
(1772, '1625566176g-8.jpg', 'dashboardImages/slider/1625566176g-8.jpg', 'slider image', NULL, '2021-07-06 08:09:36', '2021-07-06 08:09:36'),
(1773, '1625566193g-3.jpg', 'dashboardImages/slider/1625566193g-3.jpg', 'slider image', NULL, '2021-07-06 08:09:53', '2021-07-06 08:09:53'),
(1774, '16255664234.png', 'dashboardImages/feature/16255664234.png', NULL, NULL, '2021-07-06 08:13:43', '2021-07-06 08:13:43'),
(1775, '16255664742.png', 'dashboardImages/feature/16255664742.png', NULL, NULL, '2021-07-06 08:14:34', '2021-07-06 08:14:34'),
(1776, '16255664943.png', 'dashboardImages/feature/16255664943.png', NULL, NULL, '2021-07-06 08:14:54', '2021-07-06 08:14:54'),
(1777, '1625566695company.jpg', 'dashboardImages/about/1625566695company.jpg', NULL, NULL, '2021-07-06 08:18:15', '2021-07-06 08:18:15'),
(1778, '16255666951.jpg', 'dashboardImages/about/16255666951.jpg', NULL, NULL, '2021-07-06 08:18:15', '2021-07-06 08:18:15'),
(1779, '16255666952.jpg', 'dashboardImages/about/16255666952.jpg', NULL, NULL, '2021-07-06 08:18:15', '2021-07-06 08:18:15'),
(1780, '1625567098_g-logo.png', 'dashboardImages/open_graph/1625567098_g-logo.png', 'home:og', NULL, '2021-07-06 08:24:58', '2021-07-06 08:24:58'),
(1781, '16255833741.jpg', 'dashboardImages/slider/16255833741.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-06 12:56:14', '2021-07-06 12:56:14'),
(1782, '16255833741.jpg', 'dashboardImages/service/16255833741.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-06 12:56:14', '2021-07-06 12:56:14'),
(1783, '16255833741.jpg', 'dashboardImages/slider/16255833741.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-06 12:56:14', '2021-07-06 12:56:14'),
(1784, '16255833741.jpg', 'dashboardImages/service/16255833741.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-06 12:56:14', '2021-07-06 12:56:14'),
(1785, '16255833872.jpg', 'dashboardImages/slider/16255833872.jpg', 'service-image', NULL, '2021-07-06 12:56:27', '2021-07-06 12:56:27'),
(1786, '16255833872.jpg', 'dashboardImages/service/16255833872.jpg', 'service-icon', NULL, '2021-07-06 12:56:27', '2021-07-06 12:56:27'),
(1787, '16255834003.jpg', 'dashboardImages/slider/16255834003.jpg', 'service-image', NULL, '2021-07-06 12:56:40', '2021-07-06 12:56:40'),
(1788, '16255834003.jpg', 'dashboardImages/service/16255834003.jpg', 'service-icon', NULL, '2021-07-06 12:56:40', '2021-07-06 12:56:40'),
(1789, '16255834164.jpg', 'dashboardImages/slider/16255834164.jpg', 'service-image', NULL, '2021-07-06 12:56:56', '2021-07-06 12:56:56'),
(1790, '16255834164.jpg', 'dashboardImages/service/16255834164.jpg', 'service-icon', NULL, '2021-07-06 12:56:56', '2021-07-06 12:56:56'),
(1791, '16255834312.jpg', 'dashboardImages/slider/16255834312.jpg', 'service-image', NULL, '2021-07-06 12:57:11', '2021-07-06 12:57:11'),
(1792, '16255834312.jpg', 'dashboardImages/service/16255834312.jpg', 'service-icon', NULL, '2021-07-06 12:57:11', '2021-07-06 12:57:11'),
(1793, '1626176295logo.png', 'dashboardImages/setting/1626176295logo.png', NULL, NULL, '2021-07-13 09:38:15', '2021-07-13 09:38:15'),
(1794, '1626176295logo.png', 'dashboardImages/setting/1626176295logo.png', NULL, NULL, '2021-07-13 09:38:15', '2021-07-13 09:38:15'),
(1803, '16263480431.jpg', 'dashboardImages/gallery/16263480431.jpg', NULL, NULL, '2021-07-15 09:20:43', '2021-07-15 09:20:43'),
(1804, '16263480432.jpg', 'dashboardImages/gallery/16263480432.jpg', NULL, NULL, '2021-07-15 09:20:43', '2021-07-15 09:20:43'),
(1805, '16263480433.jpg', 'dashboardImages/gallery/16263480433.jpg', NULL, NULL, '2021-07-15 09:20:43', '2021-07-15 09:20:43'),
(1806, '1626351808live-video-img.jpg', 'dashboardImages/about/1626351808live-video-img.jpg', NULL, NULL, '2021-07-15 10:23:28', '2021-07-15 10:23:28'),
(1807, '1626351929live-video-img.jpg', 'dashboardImages/about/1626351929live-video-img.jpg', NULL, NULL, '2021-07-15 10:25:29', '2021-07-15 10:25:29'),
(1808, '1626352249about1.jpg', 'dashboardImages/about/1626352249about1.jpg', NULL, NULL, '2021-07-15 10:30:49', '2021-07-15 10:30:49'),
(1809, '1626352249mission.jpg', 'dashboardImages/about/1626352249mission.jpg', NULL, NULL, '2021-07-15 10:30:49', '2021-07-15 10:30:49'),
(1810, '1626352249vision.jpg', 'dashboardImages/about/1626352249vision.jpg', NULL, NULL, '2021-07-15 10:30:49', '2021-07-15 10:30:49'),
(1811, '1626352249values.jpg', 'dashboardImages/about/1626352249values.jpg', NULL, NULL, '2021-07-15 10:30:49', '2021-07-15 10:30:49'),
(1812, '1626352387slide-1.jpg', 'dashboardImages/slider/1626352387slide-1.jpg', 'slider image', NULL, '2021-07-15 10:33:07', '2021-07-15 10:33:07'),
(1813, '1626352399slide-2.jpg', 'dashboardImages/slider/1626352399slide-2.jpg', 'slider image', NULL, '2021-07-15 10:33:19', '2021-07-15 10:33:19'),
(1814, '1626352419slide-3.jpg', 'dashboardImages/slider/1626352419slide-3.jpg', 'slider image', NULL, '2021-07-15 10:33:39', '2021-07-15 10:33:39'),
(1815, '1626352459slide-2.png', 'dashboardImages/slider/1626352459slide-2.png', 'slider image', NULL, '2021-07-15 10:34:19', '2021-07-15 10:34:19'),
(1816, '1626352583slide-3.png', 'dashboardImages/slider/1626352583slide-3.png', 'slider image', NULL, '2021-07-15 10:36:23', '2021-07-15 10:36:23'),
(1817, '1626352595slide-2.png', 'dashboardImages/slider/1626352595slide-2.png', 'slider image', NULL, '2021-07-15 10:36:35', '2021-07-15 10:36:35'),
(1818, '16263526391.jpg', 'dashboardImages/slider/16263526391.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 10:37:19', '2021-07-15 10:37:20'),
(1819, '16263526391.jpg', 'dashboardImages/service/16263526391.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 10:37:19', '2021-07-15 10:37:20'),
(1820, '16263526721.jpg', 'dashboardImages/slider/16263526721.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 10:37:52', '2021-07-15 10:37:52'),
(1821, '16263526721.jpg', 'dashboardImages/service/16263526721.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 10:37:52', '2021-07-15 10:37:52'),
(1822, '16263538456.jpg', 'dashboardImages/service/16263538456.jpg', 'service-image', NULL, '2021-07-15 10:57:25', '2021-07-15 10:57:25'),
(1823, '16263538456.jpg', 'dashboardImages/service/16263538456.jpg', 'service-icon', NULL, '2021-07-15 10:57:25', '2021-07-15 10:57:25'),
(1824, '16263540381.jpg', 'dashboardImages/slider/16263540381.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:00:38', '2021-07-15 11:00:38'),
(1825, '16263540381.jpg', 'dashboardImages/service/16263540381.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:00:38', '2021-07-15 11:00:38'),
(1826, '16263540596.jpg', 'dashboardImages/slider/16263540596.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:00:59', '2021-07-15 11:00:59'),
(1827, '16263540596.jpg', 'dashboardImages/service/16263540596.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:00:59', '2021-07-15 11:10:16'),
(1828, '16263545081.jpg', 'dashboardImages/slider/16263545081.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:08:28', '2021-07-15 11:08:28'),
(1829, '16263545521.jpg', 'dashboardImages/slider/16263545521.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:09:12', '2021-07-15 11:09:12'),
(1830, '16263545861.jpg', 'dashboardImages/slider/16263545861.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:09:46', '2021-07-15 11:09:46'),
(1831, '16263546161.jpg', 'dashboardImages/slider/16263546161.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:10:16', '2021-07-15 11:10:16'),
(1832, '16263548486.jpg', 'dashboardImages/slider/16263548486.jpg', 'service-image', NULL, '2021-07-15 11:14:08', '2021-07-15 11:14:08'),
(1833, '16263548486.jpg', 'dashboardImages/service/16263548486.jpg', 'service-icon', NULL, '2021-07-15 11:14:08', '2021-07-15 11:14:08'),
(1834, '16263549721.jpg', 'dashboardImages/service/16263549721.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:16:12', '2021-07-15 11:16:12'),
(1835, '16263549721.jpg', 'dashboardImages/service/16263549721.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-07-15 11:16:12', '2021-07-15 11:16:12'),
(1836, '16263549942.jpg', 'dashboardImages/service/16263549942.jpg', 'service-image', NULL, '2021-07-15 11:16:34', '2021-07-15 11:16:34'),
(1837, '16263549942.jpg', 'dashboardImages/service/16263549942.jpg', 'service-icon', NULL, '2021-07-15 11:16:34', '2021-07-15 11:16:34'),
(1838, '16263550243.jpg', 'dashboardImages/service/16263550243.jpg', 'service-image', NULL, '2021-07-15 11:17:04', '2021-07-15 11:18:40'),
(1839, '16263550243.jpg', 'dashboardImages/service/16263550243.jpg', 'service-icon', NULL, '2021-07-15 11:17:04', '2021-07-15 11:18:40'),
(1840, '16263550394.jpg', 'dashboardImages/service/16263550394.jpg', 'service-image', NULL, '2021-07-15 11:17:19', '2021-07-15 11:18:54'),
(1841, '16263550394.jpg', 'dashboardImages/service/16263550394.jpg', 'service-icon', NULL, '2021-07-15 11:17:19', '2021-07-15 11:18:54'),
(1843, '16263550555.jpg', 'dashboardImages/service/16263550555.jpg', 'service-icon', NULL, '2021-07-15 11:17:35', '2021-07-15 11:19:11'),
(1845, '16263550706.jpg', 'dashboardImages/service/16263550706.jpg', 'service-icon', NULL, '2021-07-15 11:17:50', '2021-07-15 11:17:50'),
(1858, '1626355263_1.jpg', 'dashboardImages/service/1626355263_1.jpg', 'service 5', NULL, '2021-07-15 11:21:03', '2021-07-15 11:21:03'),
(1859, '1626355263_2.jpg', 'dashboardImages/service/1626355263_2.jpg', 'service 5', NULL, '2021-07-15 11:21:03', '2021-07-15 11:21:03'),
(1860, '1626355263_3.jpg', 'dashboardImages/service/1626355263_3.jpg', 'service 5', NULL, '2021-07-15 11:21:03', '2021-07-15 11:21:03'),
(1861, '1626355279_1.jpg', 'dashboardImages/service/1626355279_1.jpg', 'service 6', NULL, '2021-07-15 11:21:19', '2021-07-15 11:21:19'),
(1862, '1626355279_2.jpg', 'dashboardImages/service/1626355279_2.jpg', 'service 6', NULL, '2021-07-15 11:21:19', '2021-07-15 11:21:19'),
(1863, '1626355279_3.jpg', 'dashboardImages/service/1626355279_3.jpg', 'service 6', NULL, '2021-07-15 11:21:19', '2021-07-15 11:21:19'),
(1864, '1626356973_logo.png', 'dashboardImages/open_graph/1626356973_logo.png', 'home:og', NULL, '2021-07-15 11:49:33', '2021-07-15 11:49:33'),
(1865, '16272891282.jpg', 'dashboardImages/album/16272891282.jpg', NULL, NULL, '2021-07-26 06:45:28', '2021-07-26 06:45:28'),
(1866, '16272929101.jpg', 'dashboardImages/album/16272929101.jpg', NULL, 3, '2021-07-26 07:48:30', '2021-07-26 07:48:30'),
(1867, '16272929102.jpg', 'dashboardImages/album/16272929102.jpg', NULL, 3, '2021-07-26 07:48:30', '2021-07-26 07:48:30'),
(1868, '16272929103.jpg', 'dashboardImages/album/16272929103.jpg', NULL, 3, '2021-07-26 07:48:30', '2021-07-26 07:48:30'),
(1870, '1627548009logo.png', 'dashboardImages/setting/1627548009logo.png', NULL, NULL, '2021-07-29 06:40:09', '2021-07-29 06:40:09'),
(1871, '1627548009logo.png', 'dashboardImages/setting/1627548009logo.png', NULL, NULL, '2021-07-29 06:40:09', '2021-07-29 06:40:09'),
(1872, '1627568319_logo.png', 'dashboardImages/open_graph/1627568319_logo.png', 'home:og', NULL, '2021-07-29 12:18:39', '2021-07-29 12:19:52'),
(1873, '16275716571.jpg', 'dashboardImages/service/16275716571.jpg', 'service-image', NULL, '2021-07-29 13:14:17', '2021-07-29 13:14:17'),
(1874, '16275716571.jpg', 'dashboardImages/service/16275716571.jpg', 'service-icon', NULL, '2021-07-29 13:14:17', '2021-07-29 13:14:17'),
(1875, '1635166740logo.png', 'dashboardImages/setting/1635166740logo.png', NULL, NULL, '2021-10-25 10:59:00', '2021-10-25 10:59:00'),
(1876, '1635166740logo.png', 'dashboardImages/setting/1635166740logo.png', NULL, NULL, '2021-10-25 10:59:00', '2021-10-25 10:59:00'),
(1887, '1635672146_pic1.jpg', 'dashboardImages/service/1635672146_pic1.jpg', 'service 1', NULL, '2021-10-31 07:22:26', '2021-10-31 07:22:26'),
(1888, '1635672146_pic2.jpg', 'dashboardImages/service/1635672146_pic2.jpg', 'service 1', NULL, '2021-10-31 07:22:26', '2021-10-31 07:22:26'),
(1889, '1635672189pic1.jpg', 'dashboardImages/service/1635672189pic1.jpg', 'خدمة فرعية خدمة طبية1', NULL, '2021-10-31 07:23:09', '2021-10-31 07:23:09'),
(1890, '1635672189pic1.jpg', 'dashboardImages/service/1635672189pic1.jpg', 'خدمة فرعية', NULL, '2021-10-31 07:23:09', '2021-10-31 07:23:09'),
(1891, '1635672202pic2.jpg', 'dashboardImages/service/1635672202pic2.jpg', 'service-image', NULL, '2021-10-31 07:23:22', '2021-10-31 07:23:22'),
(1892, '1635672202pic2.jpg', 'dashboardImages/service/1635672202pic2.jpg', 'service-icon', NULL, '2021-10-31 07:23:22', '2021-10-31 07:23:22'),
(1893, '1635672227_pic3.jpg', 'dashboardImages/service/1635672227_pic3.jpg', 'service 2', NULL, '2021-10-31 07:23:47', '2021-10-31 07:23:47'),
(1894, '1635672227_pic4.jpg', 'dashboardImages/service/1635672227_pic4.jpg', 'service 2', NULL, '2021-10-31 07:23:47', '2021-10-31 07:23:47'),
(1895, '1635672248pic3.jpg', 'dashboardImages/service/1635672248pic3.jpg', 'service-image', NULL, '2021-10-31 07:24:08', '2021-10-31 07:24:08'),
(1896, '1635672248pic3.jpg', 'dashboardImages/service/1635672248pic3.jpg', 'service-icon', NULL, '2021-10-31 07:24:08', '2021-10-31 07:24:08'),
(1897, '1635672273_pic5.jpg', 'dashboardImages/service/1635672273_pic5.jpg', 'service 3', NULL, '2021-10-31 07:24:33', '2021-10-31 07:24:33'),
(1898, '1635672273_pic6.jpg', 'dashboardImages/service/1635672273_pic6.jpg', 'service 3', NULL, '2021-10-31 07:24:33', '2021-10-31 07:24:33'),
(1899, '1635672294pic4.jpg', 'dashboardImages/service/1635672294pic4.jpg', 'service-image', NULL, '2021-10-31 07:24:54', '2021-10-31 07:24:54'),
(1900, '1635672294pic4.jpg', 'dashboardImages/service/1635672294pic4.jpg', 'service-icon', NULL, '2021-10-31 07:24:54', '2021-10-31 07:24:54'),
(1901, '1635672325_pic1.jpg', 'dashboardImages/service/1635672325_pic1.jpg', 'service 4', NULL, '2021-10-31 07:25:25', '2021-10-31 07:25:25'),
(1902, '1635672325_pic2.jpg', 'dashboardImages/service/1635672325_pic2.jpg', 'service 4', NULL, '2021-10-31 07:25:25', '2021-10-31 07:25:25'),
(1903, '1635672667slide1.jpg', 'dashboardImages/slider/1635672667slide1.jpg', 'slider image', NULL, '2021-10-31 07:31:07', '2021-10-31 07:31:07'),
(1904, '1635672677slide2.jpg', 'dashboardImages/slider/1635672677slide2.jpg', 'slider image', NULL, '2021-10-31 07:31:17', '2021-10-31 07:31:17'),
(1905, '1635672687slide3.jpg', 'dashboardImages/slider/1635672687slide3.jpg', 'slider image', NULL, '2021-10-31 07:31:27', '2021-10-31 07:31:27'),
(1906, '1635673043bg1.jpg', 'dashboardImages/about/1635673043bg1.jpg', NULL, NULL, '2021-10-31 07:37:23', '2021-10-31 07:37:23'),
(1907, '1635673122pic2.jpg', 'dashboardImages/about/1635673122pic2.jpg', NULL, NULL, '2021-10-31 07:38:42', '2021-10-31 07:38:42'),
(1908, '1635674722_logo.png', 'dashboardImages/open_graph/1635674722_logo.png', 'home:og', NULL, '2021-10-31 08:05:22', '2021-11-03 13:24:05'),
(1909, '1635850445logo.png', 'dashboardImages/setting/1635850445logo.png', NULL, NULL, '2021-11-02 08:54:05', '2021-11-02 08:54:05'),
(1910, '1635850445logo.png', 'dashboardImages/setting/1635850445logo.png', NULL, NULL, '2021-11-02 08:54:05', '2021-11-02 08:54:05'),
(1911, '1635945022gallery-1.jpg', 'dashboardImages/gallery/1635945022gallery-1.jpg', NULL, NULL, '2021-11-03 11:10:22', '2021-11-03 11:10:22'),
(1912, '1635945022gallery-2.jpg', 'dashboardImages/gallery/1635945022gallery-2.jpg', NULL, NULL, '2021-11-03 11:10:22', '2021-11-03 11:10:22'),
(1913, '1635945022gallery-3.jpg', 'dashboardImages/gallery/1635945022gallery-3.jpg', NULL, NULL, '2021-11-03 11:10:22', '2021-11-03 11:10:22'),
(1914, '1635945022gallery-4.jpg', 'dashboardImages/gallery/1635945022gallery-4.jpg', NULL, NULL, '2021-11-03 11:10:22', '2021-11-03 11:10:22'),
(1915, '1635945068clients-logo-1.png', 'dashboardImages/gallery/1635945068clients-logo-1.png', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08'),
(1916, '1635945068clients-logo-2.png', 'dashboardImages/gallery/1635945068clients-logo-2.png', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08'),
(1917, '1635945068clients-logo-3.png', 'dashboardImages/gallery/1635945068clients-logo-3.png', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08'),
(1918, '1635945068clients-logo-4.png', 'dashboardImages/gallery/1635945068clients-logo-4.png', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08'),
(1919, '1635945068clients-logo-5.png', 'dashboardImages/gallery/1635945068clients-logo-5.png', NULL, NULL, '2021-11-03 11:11:08', '2021-11-03 11:11:08'),
(1920, '1635945374about-1.jpg', 'dashboardImages/about/1635945374about-1.jpg', NULL, NULL, '2021-11-03 11:16:14', '2021-11-03 11:16:14'),
(1921, '1635945374about-2.jpg', 'dashboardImages/about/1635945374about-2.jpg', NULL, NULL, '2021-11-03 11:16:14', '2021-11-03 11:16:14'),
(1922, '1635945374service-details-1.jpg', 'dashboardImages/about/1635945374service-details-1.jpg', NULL, NULL, '2021-11-03 11:16:14', '2021-11-03 11:16:14'),
(1923, '1635945374working-1.jpg', 'dashboardImages/about/1635945374working-1.jpg', NULL, NULL, '2021-11-03 11:16:14', '2021-11-03 11:16:14'),
(1924, '1635945627gallery-1.jpg', 'dashboardImages/slider/1635945627gallery-1.jpg', 'product alt', NULL, '2021-11-03 11:20:27', '2021-11-03 11:24:07'),
(1925, '1635945627gallery-1.jpg', 'dashboardImages/product/1635945627gallery-1.jpg', 'product alt', NULL, '2021-11-03 11:20:27', '2021-11-03 11:24:07'),
(1926, 'gallery-1.jpg', 'dashboardImages/product/gallery-1.jpg', NULL, NULL, '2021-11-03 11:20:27', '2021-11-03 11:20:27'),
(1927, 'gallery-2.jpg', 'dashboardImages/product/gallery-2.jpg', NULL, NULL, '2021-11-03 11:20:27', '2021-11-03 11:20:27'),
(1928, 'gallery-3.jpg', 'dashboardImages/product/gallery-3.jpg', NULL, NULL, '2021-11-03 11:20:27', '2021-11-03 11:20:27'),
(1929, '1635945688gallery-2.jpg', 'dashboardImages/slider/1635945688gallery-2.jpg', 'product alt', NULL, '2021-11-03 11:21:28', '2021-11-03 11:22:11'),
(1930, '1635945688gallery-2.jpg', 'dashboardImages/product/1635945688gallery-2.jpg', 'product alt', NULL, '2021-11-03 11:21:28', '2021-11-03 11:22:11'),
(1931, 'gallery-1.jpg', 'dashboardImages/product/gallery-1.jpg', NULL, NULL, '2021-11-03 11:21:28', '2021-11-03 11:21:28'),
(1932, 'gallery-2.jpg', 'dashboardImages/product/gallery-2.jpg', NULL, NULL, '2021-11-03 11:21:28', '2021-11-03 11:21:28'),
(1933, 'gallery-3.jpg', 'dashboardImages/product/gallery-3.jpg', NULL, NULL, '2021-11-03 11:21:28', '2021-11-03 11:21:28'),
(1934, '1635945766gallery-3.jpg', 'dashboardImages/slider/1635945766gallery-3.jpg', 'product alt', NULL, '2021-11-03 11:22:46', '2021-11-03 11:22:46'),
(1935, '1635945766gallery-3.jpg', 'dashboardImages/product/1635945766gallery-3.jpg', 'product alt', NULL, '2021-11-03 11:22:46', '2021-11-03 11:22:46'),
(1936, 'gallery-1.jpg', 'dashboardImages/product/gallery-1.jpg', NULL, NULL, '2021-11-03 11:22:46', '2021-11-03 11:22:46'),
(1937, 'gallery-2.jpg', 'dashboardImages/product/gallery-2.jpg', NULL, NULL, '2021-11-03 11:22:46', '2021-11-03 11:22:46'),
(1938, 'gallery-3.jpg', 'dashboardImages/product/gallery-3.jpg', NULL, NULL, '2021-11-03 11:22:46', '2021-11-03 11:22:46'),
(1939, '1635945806gallery-4.jpg', 'dashboardImages/slider/1635945806gallery-4.jpg', 'product image', NULL, '2021-11-03 11:23:26', '2021-11-03 11:23:26'),
(1940, '1635945806gallery-4.jpg', 'dashboardImages/product/1635945806gallery-4.jpg', 'product icon', NULL, '2021-11-03 11:23:26', '2021-11-03 11:23:26'),
(1941, 'gallery-1.jpg', 'dashboardImages/product/gallery-1.jpg', NULL, NULL, '2021-11-03 11:23:26', '2021-11-03 11:23:26'),
(1942, 'gallery-2.jpg', 'dashboardImages/product/gallery-2.jpg', NULL, NULL, '2021-11-03 11:23:26', '2021-11-03 11:23:26'),
(1943, 'gallery-3.jpg', 'dashboardImages/product/gallery-3.jpg', NULL, NULL, '2021-11-03 11:23:26', '2021-11-03 11:23:26'),
(1944, 'gallery-4.jpg', 'dashboardImages/product/gallery-4.jpg', NULL, NULL, '2021-11-03 11:23:26', '2021-11-03 11:23:26'),
(1945, '1635953144_logo.png', 'dashboardImages/open_graph/1635953144_logo.png', 'home:og', NULL, '2021-11-03 13:25:44', '2021-11-03 13:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `phone`, `title`, `message`, `file_id`, `created_at`, `updated_at`) VALUES
(1, 'fifty cent', 'fiftycent@gmail.com', '01111111111', 'any subject', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2021-11-03 12:35:07', '2021-11-03 12:35:07'),
(2, 'fifty cent', 'fiftycent@gmail.com', '01111111111', 'any subject', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2021-11-03 12:39:12', '2021-11-03 12:39:12'),
(3, 'fifty cent', 'fiftycent@gmail.com', '01111111111', 'any subject', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2021-11-03 12:41:36', '2021-11-03 12:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `open_graph`
--

CREATE TABLE `open_graph` (
  `id` int(10) NOT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` int(10) UNSIGNED DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `open_graph`
--

INSERT INTO `open_graph` (`id`, `og_title`, `og_type`, `og_url`, `og_image`, `image_url`, `og_description`, `og_site_name`, `created_at`, `updated_at`) VALUES
(6, 'services', NULL, 'services', 307, NULL, NULL, 'level collection', '2019-08-05 22:00:00', '2019-09-03 09:09:44'),
(28, 'Lacasa - home page', 'image', '/', 1945, NULL, 'Lacasa - home page', 'Lacasa - home page', '2019-08-06 22:00:00', '2021-11-03 13:25:44'),
(29, NULL, NULL, 'about', 1211, NULL, NULL, NULL, '2019-08-06 22:00:00', '2021-01-20 07:50:59'),
(30, NULL, NULL, 'contact', 1024, NULL, NULL, NULL, '2019-08-06 22:00:00', '2020-11-18 14:02:53'),
(31, 'د. أشرف عبد العزيز - المدونة', NULL, 'blog', NULL, 'https://3elagy.com/dashboardImages/slider/1565284741slide-2.jpg', 'منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتىكان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى\"', 'level collection', '2019-08-07 22:00:00', '2019-09-05 13:10:50'),
(53, 'Stomach Takmeem', NULL, 'stomach-takmeem', 338, NULL, 'تصغير المعدة وبالتالى تقليل كمية الطعام والشراب الداخلة إلى الجسم .\r\n\r\nتقليل هرمونات متعددة ابرزها هرمون الجريلن او ما يسمى هرمون الجوع و هو ما يساعد المريض بعد العملية على سرعة فقدان الوزن لعدم احساسه بالجوع .\r\n\r\nعلى مدار عام كامل تستطيع فقدان الوزن الزائد بنسبة ما بين 60 الى 80 % .\r\n\r\nتستطيع أن تمارس حياتك بشكل طبيعى بعد أسبوع من إجراء العملية .\r\n\r\nلها تاثير عالى على الكوليسترول ومتوسط على السكر فى الدم .', NULL, '2019-09-03 07:39:07', '2019-09-09 06:23:59'),
(55, 'Partial Takmeem', 'sss', 'partial-takmeem', 320, NULL, 'Gastric sleeve surgery, also known as gastric cutting, is a laparoscopic procedure that aims to remove two-thirds of the stomach and only one third of the stomach.\r\n\r\nGastric sleeve surgery, also known as gastric cutting, is a laparoscopic procedure that aims to remove two-thirds of the stomach and only one third of the stomach.\r\n\r\nGastric sleeve surgery, also known as gastric cutting, is a laparoscopic procedure that aims to remove two-thirds of the stomach and only one third of the stomach.', '', '2019-09-03 08:02:19', '2019-09-05 06:52:25'),
(59, 'clients', NULL, 'clients', 356, NULL, NULL, NULL, '2019-09-04 22:00:00', '2019-09-10 19:21:51'),
(60, 'album', NULL, 'album', 532, NULL, 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.', NULL, '2019-09-07 22:00:00', '2019-12-22 12:46:07'),
(61, 'reserve', NULL, 'reserve', 313, NULL, NULL, NULL, '2019-09-07 22:00:00', '2019-09-07 22:00:00'),
(64, 'jasuw@mailinator.com', NULL, 'wawufoqyxi@mailinator.net', 342, NULL, 'Magna a in ex ut dol', NULL, '2019-09-09 06:35:32', '2019-09-09 06:35:32'),
(68, 'احذروا السمنة فهي مسؤولة عن أمراض الكلى أيضاً', NULL, 'ahthroa-alsmn-fhy-msoeol-aan-amrad-alkl-ayda', 360, NULL, '<p>كشفت الدراسات الحديثة، أنّ السمنة وزيادة الوزن، هما من العوامل التي تُنذر بخطر الإصابة بأمراض الكلى المزمنة، شأنها بذلك شأن مرض السكري وارتفاع ضغط الدم.</p>', NULL, '2019-09-12 03:49:25', '2019-09-12 18:14:34'),
(69, 'لمن تُجرى عملية تصغير المعدة بالقص', NULL, 'lmn-tjr-aamly-tsghyr-almaad-balks', 361, NULL, '<p>وتُجرى عملية تصغير المعدة بالقص (تكميم المعدة) للأشخاص الذين يعانون من السمنة أو الوزن المفرط والذين لا يتناسب طولهم مع وزنهم وبالتحديد أولئك الذين يتجاوز مؤشر كتلة الجسم لديهم أكثر من 40 أو أكثر من 50. ويعتبر مؤشر كتلة الجسم أفضل مقياس حتى الآن لتمييز الوزن الزائد والسمنة والبدانة والنحافة، ويتم حسابه بتقسيم الوزن بالكيلوغرام على مربع الطول بالمتر.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>بعد إجراء عملية قص المعدة بإمكان الشخص الذي أجريت عليه العملية العيش بشكل طبيعي، ولكن يجب عليه أن يمضغ الطعام جيدا ويجب عليه أيضا تفادي المشروبات الغازية وكذلك المشروبات المشتملة على سعرات حرارية عالية.</p>\r\n\r\n<p>هل بالإمكان استعادة الحجم الطبيعي للمعدة بعد قصها؟</p>\r\n\r\n<p>لا يمكن استعادة الحجم الطبيعي للمعدة بعد قصها بعد إزالة جزء كبير منها. ولذلك يجب التفكير جيدا قبل إجراء هذه العملية.</p>', NULL, '2019-09-12 04:07:01', '2019-09-12 21:11:06'),
(70, 'دراسات حول تصغير المعدة جراحيا', NULL, 'drasat-hol-tsghyr-almaad-jrahya', 362, NULL, '<p>أظهرت دراسة سويدية أن عمليات المعدة الجراحية تقلل من انسدادات الأوعية الدموية القاتلة بنسبة 40% وأنها تخفض الأخطار المحدقة بالأوعية الدموية في مرضى السكر بنسبة 30% إلى 50%. وفي دراسة أمريكية تم إجراء عمليات تصغير المعدة على 100 شخص مصاب بالسمنة وهم مصابون في الوقت نفسه بمرض السكري، وتم مقارنة النتائج مع مرضى آخرين اعتمدوا في إنقاص وزنهم على الحميات الغذائية والأدوية.</p>\r\n\r\n<p>وبعد ثلاث سنوات تبين أن تقنيات تصغير المعدة الجراحية عملت على جعل مستويات السكر في الدم اعتيادية بشكل دائم وذلك لدى 24% إلى 38% من الأشخاص، في حين أن الطرق التقليدية تمكنت من ذلك فقط لدى 5% من الحالات، وفق ما نشرت مجلة نيو إنغلاند التخصصية.&nbsp;</p>', NULL, '2019-09-12 04:15:21', '2019-09-12 21:11:22'),
(71, 'تأثير السمنة على القدرات الذهنية', NULL, 'tathyr-alsmn-aal-alkdrat-althhny', 363, NULL, '<p>يكثف الباحثون في الآونة الأخيرة أبحاثهم حول ظاهرة السمنة التي تنتشر في كثير من البلدان ويسلطون الضوء على مضاعفاتها الصحية. وقد أظهرت دراسة أمريكية أجريت مؤخرا وجود علاقة بين تراجع القدرات الذهنية وزيادة الوزن.</p>\r\n\r\n<p>اكتشفت مجموعة من الباحثين الأمريكان وجود علاقة بين زيادة الوزن وتراجع قدرات التفكير والذاكرة وغيرها من المهارات الذهنية، ووجد الباحثون خلال الدراسة التي أجروها على ذلك أن ازدياد الوزن في منتصف العمر يعرض صاحبه إلى خطر ضعف القدرات الذهنية في مراحل متقدمة من الحياة. ويقول فريق البحث إن الخلايا الدهنية الزائدة عن حاجة الجسم قد تؤثر بشكل مباشر على وظائف المخ. فاستنادا إلى بعض الدراسات يؤثر هرمون الجوع ليبتين الذي تنتجه خلايا دهنية على عملية التعلم والذاكرة.</p>', NULL, '2019-09-12 04:21:52', '2019-09-12 21:11:40'),
(73, 'النظام الغذائى قبل العملية', NULL, 'alntham-alghthae-kbl-alaamly', 381, NULL, '<p>تحتاج بعض حالات السمنة المفرطة (مؤشر كتلة الجسم اكثر من ٥٥ اوالذين يعانون من تضخم كبيربحجم الكبد) الى اتباع نظام غذائي مناسب قبل إجراء الجراحة والالتزام به للأسباب الآتية<span dir=\"LTR\">&nbsp;:</span></p>\r\n\r\n<p>يقوم النظام الغذائي المناسب بإعطاء جسمك الطاقة والعناصر الغذائية اللازمة للاستشفاء من العمليات الجراحية ومساعدة الجسم على أداء وظائفه بشكل صحيح أثناء فقدان الوزن</p>\r\n\r\n<p>النظام الغذائي قبل جراحات السمنة (مؤشر كتلة الجسم اكثر من ٥٥ اوالذين يعانون من تضخم كبير بحجم الكبد)</p>\r\n\r\n<p>&nbsp;يجب اتباع نظام غني بالبروتين مع نسبة منخفضة من الكربوهيدرات بالإضافة إلى الكثير من السوائل قبل إجراء الجراحة وذلك نظرا للأسباب الآتية:</p>\r\n\r\n<p>يقوم هذا النظام الغذائي بتقليل نسبة الدهون بالبطن وتصغير حجم الكبد مما يعمل على تحسين عملية الاستشفاء وذلك لأن تضخم الكبد يمكن أن يجعل الجراحة أكثر صعوبة كما يزيد من مخاطر تعرض الكبد للتلف أثناء إجراء الجراحة<span dir=\"LTR\">&nbsp;.</span></p>\r\n\r\n<p>ويستمر هذا النظام مدة أسبوعين ما قبل إجراء الجراحة حيث ينصح بأن تكون السعرات الحرارية اليومية حوالي ١٠٠٠ سعر حراري أوأقل<span dir=\"LTR\">.</span></p>\r\n\r\n<p>نصائح لنظام الغذائي ما قبل جراحة السمنة<span dir=\"LTR\">:</span></p>\r\n\r\n<p>هناك بعض النصائح للنظام الغذائي ما قبل جراحات السمنة للحصول على أقصى استفادة من هذا الإجراء وهي</p>\r\n\r\n<p>قم بخسارة بعض الوزن قبل الجراحة</p>\r\n\r\n<p><span dir=\"RTL\">ينصح بالتفكير في القيام بفقد نسبة من وزنك حيث أن هناك العديد من الدراسات التي أكدت أن فقد حوالي ١٠% من وزن الجسم قبل الجراحة يمكن أن يقلل من خطر التعرض للمضاعفات</span></p>', NULL, '2019-09-26 12:14:09', '2019-09-26 12:14:09'),
(74, 'ترهلات الجلد', NULL, 'trhlat-aljld', 384, NULL, '<p>ترهلات الجلد بعد جراحات السمنة&nbsp;</p>\r\n\r\n<p>لماذا يحدث ترهلات للجلد بعد فقدان الوزن</p>\r\n\r\n<p>تحدث ترهلات الجلد بعد فقدان الوزن وذلك لأن الجلد يتميز بمرونته وهذه المرونة تتأثر على حسب الوزن الذي يتم فقده ومدى السرعة أو الزمن الذي يتم فيه فقد الوزن<span dir=\"LTR\">.</span></p>\r\n\r\n<p>بالإضافة إلى فقدان الوزن هناك بعض العوامل الأخرى التي يمكن أن تساعد على حدوث ترهلات الجلد مثل عامل العمر حيث يصبح الجلد أقل مرونة كلما زاد العمر بالإضافة إلى التدخين والجفاف والتعرض لأشعة الشمس<span dir=\"LTR\">.</span></p>\r\n\r\n<p>الأماكن الأكثر عرضة لحدوث ترهلات الجلد بعد فقدان الوزن</p>\r\n\r\n<p>الذراعين<span dir=\"LTR\">:</span></p>\r\n\r\n<p>منطقة أسفل البطن</p>\r\n\r\n<p>منطقة الفخذ</p>\r\n\r\n<p>الأرداف</p>\r\n\r\n<p>حول حمالة الصدر</p>\r\n\r\n<p>كيفية مكافحة ترهلات الجلد بعد جراحات السمنة</p>\r\n\r\n<p>الحفاظ على ترطيب الجسم</p>\r\n\r\n<p>ينصح بالحرص على ترطيب الجسم حيث أن الماء هو العنصر الحاسم في الحفاظ على مرونة الجلد حيث يفضل تناول لترين من الماء يومياً<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>تناول الطعام بانتظام</p>\r\n\r\n<p>يعتبر الكولاجين والإيلاستين من العناصر اللازمة للحفاظ على مرونة الجلد ولذلك ينصح بتناول الأطعمة الغنية بهذه العناصر<span dir=\"LTR\">.</span></p>\r\n\r\n<p>ومن الأطعمة الغنية بهذان العنصران مثل الجبن والحليب والبقوليات والمكسرات والسمك<span dir=\"LTR\">.</span></p>\r\n\r\n<p>ممارسة الرياضة</p>\r\n\r\n<p>يمكنك ممارسة الرياضة لكي يتم الحد من مظهر الجلد المترهل<span dir=\"LTR\">.</span></p>\r\n\r\n<p>في بعض الحالات، تساعد الرياضة في الحصول على جلد مشدود وذلك عن طريق تقوية العضلات تحتها<span dir=\"LTR\">.</span></p>\r\n\r\n<p>ينصح بممارسة تمارين المقاومة ورفع الأثقال عدة مرات أسبوعياً للحد من ترهلات الجلد<span dir=\"LTR\">.</span></p>\r\n\r\n<p>الاهتمام برعاية وتغذية الجلد</p>\r\n\r\n<p>عليك الاهتمام بتغذية ورعاية جلدك حيث أن التقشير اليومي يمكن أن يساعد على إزالة خلايا الجلد الميت بالإضافة إلى زيادة الدورة الدموية للجلد<span dir=\"LTR\">.</span></p>\r\n\r\n<p>يمكن الاستعانة بالكريمات وبعض المستحضرات العشبية مثل الألوفيرا وحمض الهيالورونيك وفيتامين<span dir=\"LTR\"> C </span>وفيتامين<span dir=\"LTR\"> E </span>وكذلك فيتامين أ حيث أنها تساعد على ترطيب وزيادة الكولاجين والإيلاستين الذي يعمل على تكوين الجلد<span dir=\"LTR\">.</span></p>\r\n\r\n<p>جراحات التجميل</p>\r\n\r\n<p>ينصح بالانتظار لمدة لا تقل عن 12 شهراً لإجراء جراحة تجميلية لتصحيح ترهلات الجلد حيث أن فترة الانتظار تعطي الجسم فرصة للاستقرار كما أنها تعطي فرصة للجلد بأن يصبح مشدوداً من تلقاء نفسه</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2019-09-26 12:21:04', '2019-09-26 12:24:04'),
(75, 'تكميم المعدة', NULL, 'tkmym-almaad', 385, NULL, '<p>كيف تتخلص من عادة إدمان السكريات لإنقاص الوزن</p>\r\n\r\n<p>الرغبة الشديدة أو الإدمان تعني أن الجسم يفتقد شيئاً وغالباً ما يكون سببه نقص المواد الغذائية في الجسم ولكن يمكن أن يرجع أيضاً لأسباب عاطفية والمفتاح لتقليل عادة إدمان السكريات هو التركيز على اتباع نظام غذائي صحي حيث أنه كلما تناولنا أطعمة صحية كلما تغذى الجسم أكثر وكلما قلت الرغبة في إدمان السكريات<span dir=\"LTR\">.</span></p>\r\n\r\n<p>ومن المهم أيضاً أن نكون أكثر تواصلاً مع أنفسنا حتى نتمكن من معرفة ما نحتاج إليه حقاً بدلاً من استخدام الطعام كوسيلة للحد من التوتر أو الألم، أو كوسيلة لملئ شئ في عداد المفقودين في داخلنا<span dir=\"LTR\">.</span></p>\r\n\r\n<p>تناول الأطعمة التي تحتوي على نسبة عالية من الماغنسيوم</p>\r\n\r\n<p>والتي تشتمل على الخضروات الورقية الداكنة والكاكاو الخام والمكسرات والبذور والأرز البني والأفوكادو وقد ترجع الرغبة الشديدة في تناول السكر لنقص الماغنسيوم<span dir=\"LTR\">.</span></p>\r\n\r\n<p>تناول الأطعمة الغنية بالكروم</p>\r\n\r\n<p>والتي تشتمل على القرنبيط، والبطاطا الحلوة والتفاح والحبوب الكاملة والبيض كما أن الكروم يعمل على تنظيم مستويات السكر والكوليسترول في الدم ويساعد على تقليل الرغبة الشديدة في السكر<span dir=\"LTR\">.</span></p>\r\n\r\n<p>تناول الأطعمة الغنية بالزنك</p>\r\n\r\n<p>يتوافر الزنك في الحبوب الكاملة، وبذور اليقطين، والبيض والمحار حيث يتم امتصاص الونك من مصادر حيوانية كما أن الزنك هام للأنسولين واستخدام الجلوكوز ونقص الزنك يمكن أن يؤدي إلى الرغبة الشديدة في تناول السكر<span dir=\"LTR\">.</span></p>\r\n\r\n<p>استخدم التوابل على وجبات الطعام</p>\r\n\r\n<p>يمكنك استخدام التوابل مثل القرفة وجوزة الطيب والهيل على وجبات الطعام حيث أنها تساعد على تحقيق التوازن بين نسبة السكر في الدم وخفض الرغبة الشديدة في السكر<span dir=\"LTR\">.</span></p>\r\n\r\n<p>تناول ملعقة صغيرة من زيت جوز الهند ثلاث مرات في اليوم</p>\r\n\r\n<p>وهذا سوف يساعد على زيادة التمثيل الغذائي وتغذية الدماغ والحد من الرغبة الشديدة في السكر<span dir=\"LTR\">.</span></p>\r\n\r\n<p>تأكد من استهلاك الدهون الصحية مع وجبات الطعام الخاصة بك</p>\r\n\r\n<p>تساعد الدهون الصحية على توفير الشبع كما أنها تساعد على الحفاظ على مستوى السكر في الدم وتشتمل الدهون الصحية على الأفوكادو والمكسرات والبذور وجوز الهند وزيت الزيتون والدهون الطبيعية الموجودة في المنتجات الحيوانية مثل سمك السلمون البرية<span dir=\"LTR\">.</span></p>\r\n\r\n<p>الحد من الكافيين، والكحول والأطعمة المصنعة</p>\r\n\r\n<p>يؤدي كلاً من الكافيين والكحول إلى جفاف الجسم كما يمكن أن يؤدي إلى نقص المعادن في الجسم كما أن الأطعمة المصنعة تحتوي على نسبة عالية جداً من السكر والملح والتي تؤدي إلى الرغبة الشديدة في تناول السكر<span dir=\"LTR\">.</span></p>\r\n\r\n<p>ممارسة بعض التمارين الرياضية يومياً</p>\r\n\r\n<p>يفضل أن يتم ممارسة التمارين الرياضية في الهواء الطلق حيث أنها تساعدك على تهدئة عقلك واتخاذ أفكارك بعيداً عن رغبتك الشديدة في تناول السكر<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>', NULL, '2019-09-26 12:27:55', '2019-09-26 12:27:55'),
(76, 'خسارة الوزن فى الشتاء', NULL, 'khsar-alozn-f-alshta', 386, NULL, '<p>خسارة الوزن صعبة في الشتاء</p>\r\n\r\n<p>النهاردة هنقدم لحضراتكم بعض النصائح اللي ممكن تساعدك على إنقاص الوزن في فصل الشتاء<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;كيفية إنقاص الوزن خلال فصل الشتاء</p>\r\n\r\n<p>١<span dir=\"LTR\">- </span>تناول الأطعمة التي تحتوي على نسبة عالية من الماء</p>\r\n\r\n<p>بننصح بتناول الأطعمة التي تحتوي على نسبة عالية من الماء زي الشوربة (٨٠ - ٩٠ % من الماء) والفواكه والخضروات (٨٠ - ٩٥ % من الماء) والحبوب الساخنة (٨٥<span dir=\"LTR\"> %).</span></p>\r\n\r\n<p>٢<span dir=\"LTR\">- </span>التعرض لأشعة الشمس</p>\r\n\r\n<p>هناك العديد من الدراسات التي أكدت أن أشعة الشمس تساعد على رفع معدل السيروتونين والتي تعد مادة كيميائية في المخ وتستخدم لرفع المزاج بالإضافة إلى أنها تساعد على الشعور بالامتلاء<span dir=\"LTR\">.</span></p>\r\n\r\n<p>ولذلك يوصى بضرورة الحصول على جرعة كبيرة من أشعة الشمس صباحاً لتقليل شهوة تناول الطعام<span dir=\"LTR\">.</span></p>\r\n\r\n<p>٣<span dir=\"LTR\">- </span>زيادة تناول الأطعمة الغنية بالبروتين ينصح باتباع نظام غذائي عالي بالبروتين وذلك لخداع الدماغ في التفكير في تناول المزيد من الطعام حيث أن الأطعمة الغنية بالبروتين تساعد على الشعور بالشبع<span dir=\"LTR\">.</span></p>\r\n\r\n<p>يفضل تناول الأطعمة التي تحتوي على البروتين الخالي من الدهون كالدجاج والأسماك والفول<span dir=\"LTR\">.</span></p>\r\n\r\n<p>٤<span dir=\"LTR\">- </span>تقليص حجم الوجبات</p>\r\n\r\n<p>يجب تقليص حجم الوجبة التي يتم تناولها وذلك يحتاج إلى عزيمة وإرادة لكي لا تغريك الأطعمة لتناول المزيد كما ينصح بانه تكون هذه الأطعمة صحية وبسيطة<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>٥<span dir=\"LTR\">- </span>تناول الأطعمة الغنية بالدهون الصحية</p>\r\n\r\n<p>يفضل تناول الأطعمة التي تحتوي على الدهون الصحية مثل زيت الزيتون واللوز وذلك لأنه هذه الأطعمة تمد الجسم بالطاقة اللازمة لتدفئته كما أنها لا تحتوي على سعرات حرارية عالية<span dir=\"LTR\">.</span></p>\r\n\r\n<p>٦<span dir=\"LTR\">- </span>احصل دائماً على كميات وافرة من الماء أو المشروبات الساخنة</p>\r\n\r\n<p>حيث أن الكثير من الأبحاث أثبتت أن الجفاف يمكن أن يؤدي إلى الشعور بالجوع ولذلك ينصح باستهلاك الماء لتقليل الشهية<span dir=\"LTR\">.</span></p>\r\n\r\n<p>٧<span dir=\"LTR\">- </span>الحرص على عدم تخطي الوجبات</p>\r\n\r\n<p>يعتبر تخطي الوجبات من الأمور السيئة وذلك لأن تخطيها يؤدي إلى شعور بالجوع على مدار اليوم وبالتالي يمكن أن يؤدي إلى تناول كميات كبيرة من الطعام<span dir=\"LTR\">.</span></p>\r\n\r\n<p>٨<span dir=\"LTR\">- </span>زيادة معدل الحركة على مدار اليوم</p>\r\n\r\n<p>يجب القيام بمجهود بدني وعضلي وذلك لتدفئة الجسم والحصول على الطاقة اللازمة للجسم بالإضافة إلى أن هذا المجهود يساعد على حرق الدهون<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2019-09-26 12:34:06', '2019-09-26 12:34:06'),
(77, 'كيف تؤتر السمنة علي الحمل', NULL, 'kyf-toetr-alsmn-aaly-alhml', 387, NULL, '<p>كيف تؤثر السمنة على الحمل ؟</p>\r\n\r\n<p>السمنة هي حالة طبية مرضية يحدث خلالها تراكم الدهون الزائدة في الجسم وعادة تكون بسبب تناول الطعام بإفراط أو النظام الغذائي ذو العادات السيئة وأيضاً العوامل الوراثية التي تؤثر على العديد من الشباب، ويتم تشخيص درجة السمنة لدى المريض عن طريق مؤشر كتلة الجسم، وتُصيب السمنة بالعديد من الأمراض كأمراض القلب ومرض السكري وانقطاع التنفس أثناء النوم ، علاوة على ذلك ترتبط السمنة أيضاً بالعديد من التأثيرات السلبية في كلا من الخصوبة والحمل سواء لدى الرجل أو المرأة حيث تؤدي السمنة إلى العديد من الأضرار بسبب التأثيرات الهرمونية في الجسم بما في ذلك إنتاج الأستروجين بصورة غير منضبطة</p>\r\n\r\n<p>أضرار السمنة على الحمل</p>\r\n\r\n<p>هناك العديد من الأضرار التي يمكن أن تسببها السمنة سواء على صحة الأم أو الجنين ومن هذه الأضرار ما يلي<span dir=\"LTR\">:</span></p>\r\n\r\n<p><span dir=\"LTR\">&bull;</span> المرأة الحامل المُصابة بالسمنة تكون معرضة بشكل أكبر للإصابة بسكري الحمل<span dir=\"LTR\">.</span></p>\r\n\r\n<p><span dir=\"LTR\">&bull;</span> إحتمالية التعرض للإصابة بتسمم الحمل بسبب زيادة نسبة البروتين في البول</p>\r\n\r\n<p><span dir=\"LTR\">&bull;</span> إحتمالية التعرض للإصابة بارتفاع ضغط الدم<span dir=\"LTR\">.</span></p>\r\n\r\n<p><span dir=\"LTR\">&bull;</span> السمنة تسبب بعض التكيسات على المبيض التي يمكن أن تؤدي إلى حدوث العقم<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;العلاقة ما بين جراحات السمنة والحمل</p>\r\n\r\n<p>يتم نَصح النساء اللاتي تعاني من الوزن الزائد و تكون لديهم صعوبة في التخلص من وزنهم عن طريق تغيير النظام الغذائي وممارسة التمارين الرياضية بالتدخلات الجراحية كإجراء عملية تكميم المعدة او تحويل مسار للتخلص من الوزن الزائد، ويعتقد العديد من الأشخاص أن عملية التكميم تؤثرعلى الحمل ولكن على العكس تماماً فإن عملية تكميم المعدة تساعد مريض السمنة على التخلص من وزنه مما يؤدي إلى زيادة الخصوبة وارتفاع نسبة حدوث حمل بصورة كبيرة بعد إجراء عملية التكميم، ويتم نَصح النساء بإنقاص الوزن قبل الحمل لتقليل خطر حدوث أى أضرار للجنين<span dir=\"LTR\">.</span></p>\r\n\r\n<p>التوقيت المناسب للحمل بعد عملية التكميم</p>\r\n\r\n<p>بعد إجراء عملية تكميم المعدة او تحويل المسار يفقد الجسم الكثير من الوزن بسبب تقليل كمية الطعام بصورة كبيرة لتناسب حجم المعدة الجديد ويفقد الجسم أيضاً العديد من الفيتامينات والمعادن لذلك يُفضل الأطباء أن تتناول الأم الفيتامينات اللازمة بعد إجراء العملية و تأجيل الحمل على الأقل لمدة عام حتي تعود الأم لكامل صحتها مرة أخري بعد العملية<span dir=\"LTR\">.</span></p>\r\n\r\n<p>يكون هذا التأجيل حتي لا يؤثر نقص الفيتامينات لدي الأم بأي ضرر على صحة الجنين أو حتى اكتمال نموه، و تساعد أيضاً هذه الفترة الأم على فقدان الوزن بعد العملية حتي تصل لوزن مناسب لا يؤثر إطلاقاً على الجنين خلال الحمل ويجب استشارة الطبيب بعد مرور هذا العام لاختيار التوقيت المناسب لحدوث الحمل ويقوم الطبيب أيضاً بوصف بعض الإرشادات التي تساعد على نمو الجنين بصورة طبيعية<span dir=\"LTR\">.</span></p>\r\n\r\n<p>في النهاية يجب التنوية أن علاقة عملية التكميم والحمل علاقة إيجابية لأن العملية تساعد على زيادة فرص الحمل ومنع أضرار السمنة الخطيرة<span dir=\"LTR\">.</span></p>', NULL, '2019-09-26 12:37:37', '2019-09-26 12:37:37'),
(79, 'توسع أو تمدد المعدة بعد عملية التكميم', NULL, 'tosaa-ao-tmdd-almaad-baad-aamly-altkmym', 389, NULL, '<p>توسع أو تمدد المعدة بعد عملية التكميم</p>\r\n\r\n<p>السؤال اللي بيشغل ناس كتير بعد&nbsp; عملية التكميم : هو أنا معدتي هتوسع تاني بعد العملية و وزني هيرجع يزيد تاني؟</p>\r\n\r\n<p>الحقيقة السؤال ده ليه إجابتين<span dir=\"LTR\">:</span></p>\r\n\r\n<p>&nbsp;الإجابة الأولى: إن المعدة ممكن توسع بشكل صغير جدا مش بيأثر على عملية فقدان الوزن والوصول للوزن المثالي والمحافظة عليه</p>\r\n\r\n<p>الإجابة التانية: التوسع الغير مرغوب فيه واللي ممكن يؤدي إلي توقف نزول الوزن ثم البدء في الزيادة لايمكن حدوثه لأسباب يجب على الشخص تفاديها. طيب إيه هي الأسباب اللي ممكن تؤدي إلى توسع او تمدد المعدة بعد عملية التكميم ؟</p>\r\n\r\n<p>١<span dir=\"LTR\">- </span>المبالغة والإفراط في تناول الطعام بعد الشبع وفوق حاجة المعدة وتكرار ده واللي ممكن يؤدي إلى الترجيع وتوسع المعدة<span dir=\"LTR\">.</span></p>\r\n\r\n<p>٢<span dir=\"LTR\">- </span>الجمع بين الأكل والشرب ممكن يؤدي إلى الضغط على المعدة وبالتالي تمددها او توسعها<span dir=\"LTR\">.</span></p>\r\n\r\n<p>٣<span dir=\"LTR\">- </span>تناول المشروبات الغازية ممكن تتسبب في توسع المعدة<span dir=\"LTR\">.</span></p>\r\n\r\n<p>٤<span dir=\"LTR\">- </span>تناول الحلويات والنشويات بصورة كبيرة</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>طيب إزاي أتفادى تمدد أو توسع المعدة؟</p>\r\n\r\n<p>١<span dir=\"LTR\">- </span>التوقف عن الأكل فور الإحساس بالشبع</p>\r\n\r\n<p>٢<span dir=\"LTR\">- </span>شرب السوائل قبل أو بعد الأكل بنصف ساعة (عدم الجمع بين الأكل والشرب<span dir=\"LTR\">)</span></p>\r\n\r\n<p>٣<span dir=\"LTR\">- </span>مقاطعة المشروبات الغازيه نهائيا خصوصا في الشهور الستة الأولى</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>زيادة الوزن مش دايما بتكون بسبب توسع المعدة وممكن جدا ميكونش ليها علاقة بتوسع المعدة ولكن غالبا بتكون بسبب نوعية الأكل اللي بيكون عالي في السعرات الحرارية وتناوله بصورة كبيرة زي الحلويات والسكريات&nbsp; والشيبسي والشوكولاتة والكراميل و المقليات والفاست فود بصورة عامة</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>وأخيراً الحل السحري لتفادي ثبات أو زيادة الوزن بعد التكميم هو الإلتزام الكامل بالنظام الغذائي والرياضي</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>مع تمنياتنا لحضراتكم بتمام الصحة والعافية</p>', NULL, '2019-09-26 12:46:24', '2019-09-26 12:46:24'),
(80, 'أهمية الرياضة بعد اجراء العملية', NULL, 'ahmy-alryad-baad-ajra-alaamly', 390, NULL, '<p>اهمية الرياضة بعد عمليات السمنة المفرطة</p>\r\n\r\n<p>جراحات السمنة ممكن تساعدتك على خسارة جزء كبير من وزنك، لكن استمرارية هذه الخسارة وفعاليتها لا تكتمل إذا لم تترافق مع ممارسة الرياضة بعد جراحات السمنة بشكلٍ فعّال، والأمر لا يتطلب تمارين مجهدة وشديدة، بل يكفي الالتزام بروتينٍ رياضي بسيط يومياً لتحقيق الأهداف المرجوة و لتجنب الثبات فى الوزن<span dir=\"LTR\">.</span></p>\r\n\r\n<p>متى يمكنك البدء بممارسة الرياضة بعد جراحات السمنة ؟</p>\r\n\r\n<p>بشكلٍ عام ممكن تتمرن من الأسبوع الأول بعد الجراحة مع زيادة التمارين ونوعها تدريجياً كالتالي<span dir=\"LTR\">:</span></p>\r\n\r\n<p>الأسبوعين الأول والثاني بعد الجراحة<span dir=\"LTR\">:</span></p>\r\n\r\n<p>يكفي القيام بالمشي البسيط خلال هذه الفترة، وينصح المرضى بالقيام بالمشي 3 إلى 5 خمس مرات يومياً&nbsp; لمدة 5 إلى 10 دقائق في كل مرة، ثم زيادة هذه المدة تدريجياً&nbsp; حسب درجة تحمل المريض<span dir=\"LTR\">.</span></p>\r\n\r\n<p>لا ينصح بالقيام بأنواع الرياضة الأخرى خلال هذه الفترة، ويمنع القيام بالتمارين المجهدة<span dir=\"LTR\">.</span></p>\r\n\r\n<p>لو هتروح النادي، قسم كل شيء إلى النصف، مثلاً&nbsp; امشي على جهاز المشي نصف المسافة المعتاد عليها وبنصف السرعة المعتادة أيضاً ، ثم بالتدريج ارجع إلى ما كنت قادراً&nbsp; عليه قبل الجراحة<span dir=\"LTR\">.</span></p>\r\n\r\n<p>ما بين الأسبوع الثاني والشهر الثالث بعد الجراحة<span dir=\"LTR\">:</span></p>\r\n\r\n<p>يمكنك زيادة نشاطك الرياضي (أكثر من فقط المشي) تبعاً&nbsp; لدرجة لياقتك البدنية، قد يتضمن هذا السباحة وركوب الدراجات<span dir=\"LTR\">.</span></p>\r\n\r\n<p>السباحة من التمارين المفضله للعديد من المرضى خلال هذه الفترة لعدة أسباب لخفتها على الظهر والورك والركبتين<span dir=\"LTR\">. </span></p>\r\n\r\n<p>يمكنك عادة البدء بالسباحة بعد شهر إلى شهر ونصف بعد العملية لضمان التئام الجروح تماماً<span dir=\"LTR\">. </span></p>\r\n\r\n<p>بغض النظر عن نوع التمرين الذي ستقوم به، فعليك دائماً&nbsp; البقاء على مستوى بسيط بعيداً&nbsp; عن الإجهاد<span dir=\"LTR\">.</span></p>\r\n\r\n<p>ما بعد الشهر الثالث<span dir=\"LTR\">:</span></p>\r\n\r\n<p>لازم تتبع روتين رياضي ثابت وتروح النادي بانتظام<span dir=\"LTR\">.</span></p>\r\n\r\n<p>ممكن زيادة شدة تمارينك ومدتها وإضافة تمارين جديدة بقدر استطاعتك، لكن يجب الانتظار حتى مرور ستة أشهر قبل إضافة حمل الأثقال إلى روتينك الرياضي<span dir=\"LTR\">.</span></p>\r\n\r\n<p>بعض الإرشادات العامة<span dir=\"LTR\">:</span></p>\r\n\r\n<p><span dir=\"LTR\">&bull;</span> قم بالتحمية قبل البدء بالتمرن، الغاية منها زيادة معدل ضربات قلبك وتنفسك بشكل تدريجي، وإرخاء عضلاتك، وذلك لحمايتك من الإصابات العضلية وللحصول على أكبر فعالية ممكنة من تمارينك<span dir=\"LTR\">.</span></p>\r\n\r\n<p><span dir=\"LTR\">&bull;</span> من الطبيعي أن تشعر ببعض الألم، وقد يستمر هذا الإحساس حتى يومين بعد التمرن، الطريقة الأفضل لتقليل الألم هي بتحريك عضلاتك وشرب الكثير من الماء، لن يفيدك الجلوس والاستلقاء بل قد يزيدان الأمر سوءاً<span dir=\"LTR\">.</span></p>\r\n\r\n<p><span dir=\"LTR\">&bull;</span> قلل من حدوث المشاكل الجلدية المرافقة لفقدان الوزن لديك كارتخاء الجلد بارتداءك لملابس داعمة خاصة ضيقة قليلاً (أثناء ممارستك للرياضة<span dir=\"LTR\">).</span></p>\r\n\r\n<p><span dir=\"LTR\">&bull;</span> بعد انتهاءك من التمارين اهدء واسترح قليلاً، وذلك لتخفيض معدل قلبك وتنفسك بالتدريج، لوقايتك من حدوث الدوار والدوخة، ولإعطاء المجال لعضلاتك للتخلص من فضلاتها<span dir=\"LTR\">.</span></p>\r\n\r\n<p><span dir=\"LTR\">&bull;</span> احتفظ معك دائماً بزجاجة ماء واشرب بشكل دائم<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>يتوقف العديد من المرضى بعد خسارتهم للوزن المطلوب عن ممارسة التمارين الرياضية، لكن متابعة ممارسة الرياضة بعد جراحات السمنة على المدى الطويل جداً هامة للحفاظ على الوزن الذي تمت خسارته والوقاية من عدم اكتسابه مرة أخرى، وكما ذكرنا في البداية ليس من الضروري ممارسة تمارين شديدة، بل تكفي تمارين متوسطة الشدة لمدة ثلاثين دقيقة يومياً للحفاظ على وزنك وعلى صحتك بأفضل حال<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>', NULL, '2019-09-26 12:49:12', '2019-09-26 12:49:12'),
(81, 'اسباب زيادة الوزن بعد التكميم', NULL, 'asbab-zyad-alozn-baad-altkmym', 391, NULL, '<p>أسباب زيادة الوزن بعد التكميم<span dir=\"LTR\">:</span></p>\r\n\r\n<p>١<span dir=\"LTR\">- </span>الاعتقاد الخاطئ بأن الخضوع إلى عملية تكميم المعدة إجراء كافٍ لفقدان الوزن، وأنه يضمن فقدان الوزن حتى الوصول إلى النتيجة المطلوبة دون الرجوع إليه أبدًا، وقد يكون سبب هذا الاعتقاد فشل ما يقارب 20% من عمليات تكميم المعدة، حيث تمثل هذه النسبة ذلك الجزء الذي زاد فيه وزن الخاضعين للعملية من مجمل الخاضعين لعملية تكميم المعدة<span dir=\"LTR\">. </span></p>\r\n\r\n<p>٢<span dir=\"LTR\">- </span>العودة إلى نفس النظام الغذائي الذي أسهم في الوصول إلى الوزن الذي أجبر صاحبه على الخضوع لعملية التكميم، والتي تتمثل بالتركيز على تناول الأطعمة ذات السعرات الحرارية العالية، كالإفراط في تناول الحلويات والسكريات والأطعمة المقلية والمشروبات الغازية، مع تجاهل تعليمات الطبيب بخصوص النظام الغذائي الذي يجب اتباعه بعد العملية، والذي يركز بشكل رئيسي على نوعية الطعام وكميته، الأمر الذي يسبب زيادة الوزن مرة أخرى، مع ازدياد احتمال تخطّيه للوزن الذي كان سبب الخضوع للعملية<span dir=\"LTR\">. </span></p>\r\n\r\n<p>٣<span dir=\"LTR\">- </span>تناول كميات أكبر من حجم المعدة بعد تكميمها، الأمر الذي يؤدي إلى الضغط عليها إلى توسيعها مرة أخرى، فالمعدة ما هي إلا عضلة قابلة للتمدد والتقلص، ولذا فإن زيادة كمية الأكل يسبب توسيعها، وبالتالي زيادة كمية الطعام التي يجري تناولها، ومن الجدير بالذكر أن تناول كميات طعام تفوق تلك التي يحتاجها الجسم سلوك مكتَسَب، سلوك قد يصعب التخلص منه في مجتمع كالمجتمع العربي الذي يقدّس المشاركة، تغمره السعادة خلال لحظات تناوله لكميات كبيرة من الطعام<span dir=\"LTR\">.</span></p>\r\n\r\n<p>٤<span dir=\"LTR\">- </span>تجاهل ممارسة التمارين الرياضية، فالرياضة أحد أهم العوامل المساعدة على فقدان الوزن، وهناك العديد من التمارين الرياضية التي يمكن اعتمادها يوميًا أو بما لا يقل عن ثلاث مرات أسبوعيًا، ويمكن ممارسة الرياضة في المنزل أو النادي الرياضي على حد سواء، وعلى الرغم من وجود العديد من الأجهزة الرياضية في النوادي والتي تسهّل من عملية فقدان الوزن، إلا أن الرياضة يمكن ممارستها في أي مكان وزمان دون أي قيود، فإن عدم استسهال استخدام المصعد الكهربائي أو ركوب السيارة لكافة المسافات مهما كانت قصيرة، يسهم كثيرًا في تقليل الوزن بسبب منعه تراكم الدهون في الجسم</p>', NULL, '2019-09-26 12:51:56', '2019-09-26 12:51:56'),
(82, 'الامساك والتكميم...الاسباب والعلاج..', NULL, 'alamsak-oaltkmymalasbab-oalaalaj', 392, NULL, '<p>الامساك والتكميم...الاسباب والعلاج<span dir=\"LTR\">..</span></p>\r\n\r\n<p>تقوم جراحات السمنة بتقليل حجم المعدة في المرضى المصابين بالسمنة المفرطة وغالباً ما يشكون من الإمساك في الأسابيع الأولي بعد الجراحة بسبب<span dir=\"LTR\">.:</span></p>\r\n\r\n<p><span dir=\"LTR\">1. </span>انخفاض كمية الماء الذي يتم استهلاكه &quot;وهذا هو أهم سبب<span dir=\"LTR\">&quot; </span></p>\r\n\r\n<p><span dir=\"LTR\">2. </span>قلة النشاط البدني وخاصة خلال الأيام والأسابيع الأولى بعد الجراحة</p>\r\n\r\n<p><span dir=\"LTR\">3. </span>الآثار الجانبية للمكملات الغذائية اللتي تحتوي علي الحديد و الكالسيوم</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>لذلك.. الامساك حدوثه طبيعي لكن هذا لايعني انه صحي</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>العلاج<span dir=\"LTR\">...</span></p>\r\n\r\n<p><span dir=\"LTR\">1. </span>ينصح بشرب ما لا يقل عن لترين (2 لتر) من الماء أو غيره من السوائل الخالية من الكافيين و العصائر مثل عصير العنب والبرتقال والفراولة&nbsp; والتوت لمنع وعلاج الإمساك<span dir=\"LTR\">.</span></p>\r\n\r\n<p><span dir=\"LTR\">2. </span>يفضل ممارسة التمارين الأساسية أو رياضة المشي يومياً لزيادة حركة الأمعاء وعلاج الإمساك<span dir=\"LTR\">.</span></p>\r\n\r\n<p><span dir=\"LTR\">3. </span>ينصح بتناول الألياف الغذائية مثل الشوفان والبروكلي والكوسه والجزر و الفواكه خاصه الخوخ المهروس والكيوي&nbsp; وذلك لكي يتم علاج الإمساك.(بداية من الاسبوع الرابع<span dir=\"LTR\">)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ساعات بتجوع بعد العملية <span dir=\"LTR\">😅😅</span></p>\r\n\r\n<p>متزعلش ومتخافيش ومتقلقيش</p>\r\n\r\n<p>ممكن يجيلك إحساس بالجوع عادي جدا بعد العملية وده ليه ٥ أسباب :</p>\r\n\r\n<p>١<span dir=\"LTR\">- </span>أنت جعان فعلا وده سببه الرئيسي اننا نكون كسلنا و محافظناش على عدد الوجبات المطلوبة أو محافظناش على عدد الساعات بين الوجبات اللي المفروض متتجاوزش ٣-٤ ساعات</p>\r\n\r\n<p>٢<span dir=\"LTR\">-</span>أنت كلت فعلا عدد وجباتك مظبوطة لكن كمية الوجبات قليلة جدا مش بتلبي احتياجات الجسم بصورة متميزة وكلت أكل فيه كاربوهيدرات وسكريات كتير ومهتمتش بالبروتينات والخضراوات والفواكه واللي مش بس بتلبي احتياجات الجسم لكن كمان بتساعد على الاحساس بالشبع وانتظام حركة المعدة والأمعاء</p>\r\n\r\n<p>٣<span dir=\"LTR\">- </span>أنت كلت بسرعة جدا ومخدتش وقتك في الأكل والمضغ وعشان كده المعدة هي كمان فضت الأكل اللي فيها بسرعة ... لازم ناكل بالراحة جدا ونمضغ الأكل من ٢٠-٢٥ مرة قبل البلع وناكل بدون مؤثرات خارجية زي التلفزيون أو الكلام مع حد في التليفون لازم يكون تركيزنا كله مع نوع وكمية ومكونات الوجبة بتاعتنا</p>\r\n\r\n<p>٤<span dir=\"LTR\">- </span>أنت مش جعان ... أنت عطشان ... نقص السوائل في الجسم بيؤدي الى الاحساس بالجوع وعشان كده لازم نحافظ على كمية السوائل يوميا بحيث متقلش عن ٢,٥ ل ٣ لتر يوميا</p>\r\n\r\n<p>٥<span dir=\"LTR\">- </span>أنت مش جعان ... أنت زعلان غضبان متضايق متنرفز ... في الحالات اللي زي دي أي جوع ممكن تحس بيه ممكن جدا يكون جوع مش حقيقي أو جوع كاذب وأول ما الأمور تهدى أو النرفزة تقل تلاقي الاحساس بالجوع تلاشى تدريجيا</p>\r\n\r\n<p><span dir=\"LTR\">😉😉</span></p>\r\n\r\n<p>&nbsp;</p>', NULL, '2019-09-26 13:04:10', '2019-09-26 13:04:10'),
(83, 'جراحات السمنة', NULL, 'jrahat-alsmn', 393, NULL, '<p>يمكن لجراحات السمنة مساعدتك على خسارة قسم كبير من وزنك، لكن استمرارية هذه الخسارة وفعاليتها لا تكتمل إذا لم تترافق مع ممارسة الرياضة بعد جراحات السمنة بشكلٍ فعّال، والأمر لا يتطلب تمارين مجهدة وشديدة، بل يكفي الالتزام بروتينٍ رياضي بسيط يومياً لتحقيق الأهداف المرجوة<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>متى يمكنك البدء بممارسة الرياضة بعد جراحات السمنة ؟</p>\r\n\r\n<p>عليك دائماً استشارة جراحك قبل البدء بأي برنامج رياضي، لكن بشكلٍ عام يمكنك البدء بالتمرن منذ الأسبوع الأول بعد الجراحة مع زيادة التمارين ونوعها تدريجياً كالتالي<span dir=\"LTR\">:</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>الأسبوعين الأول والثاني بعد الجراحة<span dir=\"LTR\">:</span></p>\r\n\r\n<p>يكفي القيام بالمشي البسيط خلال هذه الفترة، وينصح المرضى بالقيام بالمشي 3 إلى 5 خمس مرات يومياً&nbsp; لمدة 5 إلى 10 دقائق في كل مرة، ثم زيادة هذه المدة تدريجياً&nbsp; حسب درجة تحمل المريض<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>لا ينصح بالقيام بأنواع الرياضة الأخرى خلال هذه الفترة، ويمنع القيام بالتمارين المجهدة<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>في حال سمح لك جراحك بالذهاب إلى النادي الرياضي، قسم كل شيء إلى النصف، مثلاً&nbsp; امشي على جهاز المشي نصف المسافة المعتاد عليها وبنصف السرعة المعتادة أيضاً ، ثم بالتدريج ارجع إلى ما كنت قادراً&nbsp; عليه قبل الجراحة<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ما بين الأسبوع الثاني والشهر الثالث بعد الجراحة<span dir=\"LTR\">:</span></p>\r\n\r\n<p>قد يوافق جراحك على زيادة نشاطك الرياضي (أكثر من فقط المشي) بعد مرور ثلاثين يوم وذلك تبعاً&nbsp; لدرجة لياقتك البدنية، قد يتضمن هذا السباحة والتمارين الهوائية البسيطة كركوب الدراجات<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>السباحة لعلها التمرين المفضل للعديد من المرضى خلال هذه الفترة لعدة أسباب، أولها لخفتها على الظهر والورك والركبتين، وثانيها لأنها من أفضل التمارين القلبية الوعائية، لذلك من المفضل أن تسجل في أندية رياضية تمتلك مسابح داخلها خلال هذه الفترة. يمكنك عادة البدء بالسباحة بعد شهر إلى شهر ونصف بعد العملية لضمان التئام الجروح تماماً. استشر طبيبك قبل البدء بممارسة السباحة<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>بغض النظر عن نوع التمرين الذي سينصحك به جراحك، فهو دائماً&nbsp; سيطلب منك البقاء على مستوى بسيط بعيداً&nbsp; عن الإجهاد<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ما بعد الشهر الثالث<span dir=\"LTR\">:</span></p>\r\n\r\n<p>عليك باتباع روتين رياضي ثابت والذهاب إلى النادي الرياضي بانتظام، ودائماً&nbsp; استشر طبيبك قبل البدء بأي روتين رياضي جديد<span dir=\"LTR\">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>يمكنك زيادة شدة تمارينك ومدتها وإضافة تمارين جديدة بقدر استطاعتك، لكن سينصحك الجراح بالانتظار حتى مرور ستة أشهر قبل إضافة حمل الأثقال إلى روتينك الرياضي<span dir=\"LTR\">.</span></p>', NULL, '2019-09-26 13:09:47', '2019-09-26 13:09:47'),
(95, 'جهاز السيريك', NULL, 'ghaz-alsyryk-045454', 1255, NULL, '<ul>\r\n	<li>\r\n	<p>هل سمعت من قبل عن جهاز السيريك أو تقنية الكاد كام ؟ ، إن CAD/CAM هي اختصار لكلمة computer aided design/computer aided manufacturing و التعني تصميم وتصنيع تركيبات الأسنان بمساعدة جهاز الكمبيوتر . دبلوم الإدارة التنفيذية ، الجامعة الأمريكية بالقاهرة 2013</p>\r\n	</li>\r\n	<li>\r\n	<p>في مركز الدكتور شادي سمير نوفر جهاز الـ CEREC الذي يعمل بتقنية الكاد كام حيث يستخدم هذا الجهاز في صنع تركيبات الأسنان الخاصة بك في أقل من ساعة و يستخدم في تصميم التيجان و الـ Crown وحشوات السيراميك والجسور الثابتة والفينير وغيرها. أحدث هذا الجهاز طفرة في عالم التركيبات في طب الأسنان حيث أن أكثر ما يميزه عن التركيبات في المعمل الدقة المتناهية و سرعة الأداءخبير في تصميم الابتسامة وطب الأسنان التجميلي باستخدام الفينيرز ، 2014</p>\r\n	</li>\r\n	<li>\r\n	<p>أهم ما يميز جهاز السيريك يمكنك استلام تركيبتك في نفس اليوم وفّر هذا الجهاز الإجراءات المتبعة لصنع التركيبات وخاصة أخذ المقاسات وذلك لأن أخذ المقاسات في العادي يكون عن طريق صنع نموذج مطابق للأسنان تماما ثم ارساله للمعمل لصنعه ، أما هذا الجهاز فيمكننا أخذ المقاسات من خلال كاميرا رقمية عالية الدقّة ، مما يجعل التركيبة الناتجة غاية في الدقة فلا تسبب تسريبات أو روائح كريهة أو تعلّق الطعام به</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>.</p>', NULL, '2019-12-22 09:42:27', '2021-02-04 14:54:54'),
(98, 'الأشعة السينية', NULL, 'alashaa-alsyny-045656', 1256, NULL, '<ul>\r\n	<li>\r\n	<p>Digital X-ray (sensor) الأشعة السينية مخاوف المرضى في الوقت الحاضر هو التعرض للإشعاع. التصوير الشعاعي الرقمي عادة ما يقلل التعرض للإشعاع بنسبة 75 ٪ أو أكثر من التصوير الشعاعي</p>\r\n	</li>\r\n	<li>\r\n	<p>هذا يعني أننا نهتم بسلامتك ورفاهيتك. مع الصور الرقمية للمستشعر الصلب ، يتم تقليل الوقت من تعريض المستشعر للإشعاع وعرض الصور الرقمية. بمجرد الضغط على زر التعرض لآلة الأشعة السينية</p>\r\n	</li>\r\n	<li>\r\n	<p>تظهر الصورة الرقمية عالية الجودة على شاشة الكمبيوتر وتساعد طبيب الأسنان في تثقيف المريض أثناء مناقشة الصور المعروضة ، بدلاً من مربع العرض.</p>\r\n	</li>\r\n</ul>', NULL, '2019-12-22 09:47:44', '2021-02-04 14:56:57'),
(99, 'تحديد اللون', NULL, 'thdyd-allon-045715', 1257, NULL, '<ul>\r\n	<li>\r\n	<p>( Vita easyshade V ) جهاز تحديد اللون تسمح هذه التقنية المذهلة بتحديد اللون بسهولة في الفينيرز / الحشوات.</p>\r\n	</li>\r\n	<li>\r\n	<p>طريقة اختيار الون رقمية وبسيطة وتوفر قياسات موثوقة للغاية في ثوان معدودة</p>\r\n	</li>\r\n	<li>\r\n	<p>. يمكنك أن تثق بشكل مريح في أن التاج أو الفينيرز أو الحشوة الجديدة الخاصة بك ستطابق بدقة لون أسنانك الطبيعية.</p>\r\n	</li>\r\n</ul>', NULL, '2019-12-22 09:48:33', '2021-02-04 14:57:15'),
(100, 'أشعة البانوراما', NULL, 'ashaa-albanorama-045732', 1258, NULL, '<ul>\r\n	<li>\r\n	<p>فحص بالأشعة السينية ثنائي الأبعاد (2D) لفحص الأسنان بالأشعة التي تلتقط الفم بالكامل في صورة واحدة ، بما في ذلك الأسنان والفكين العلوي والسفلي والهياكل والأنسجة المحيطة. ... وعادة ما يوفر تفاصيل العظام والأسنان.</p>\r\n	</li>\r\n	<li>\r\n	<p>تستخدم الأشعة البانورامية جرعة صغيرة جدًا من الإشعاعات ويمكن استخدامها للتخطيط لعلاج أطقم الأسنان ، والتقويم ، وعمليات الخلع، والزرع.</p>\r\n	</li>\r\n	<li>\r\n	<p>هذه الاشعة لا تتطلب إعداد خاص . أخبري طبيبك إذا كان هناك احتمال وجود حمل. قم بإزالة أي مجوهرات أو نظارات أو أشياء معدنية قد تتداخل مع صور الأشعة السينية.</p>\r\n	</li>\r\n	<li>\r\n	<p>احجو موعدك إذا كنت تبحث عن أحدثا التقنيات في مجال طب الأسنان ، فإن مركز Perfect Smile Dental Center هو المكان المناسب لك. لمناقشة خيارات العلاج لدينا أو تحديد موعد للتشاور زورونا في مصر الجديدة ، القاهرة ، اتصل بنا أو اتصل على 01222276222. نحن نتطلع إلى تقديم التوجيه والدعم الذي تحتاجه!</p>\r\n	</li>\r\n</ul>', NULL, '2019-12-22 09:49:23', '2021-02-04 14:57:32'),
(101, 'first blog', NULL, 'first-blog-011611', 1728, NULL, '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab.</p>\r\n\r\n<p>main h4 header</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n</ul>', NULL, '2019-12-22 10:45:50', '2021-06-22 12:44:12'),
(102, 'second blog', NULL, 'second-blog-011655', 1729, NULL, '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab.</p>\r\n\r\n<p>main h4 header</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n</ul>', NULL, '2019-12-22 10:46:40', '2021-06-22 12:44:22'),
(103, 'third blog', NULL, 'third-blog-011729', 1730, NULL, '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab.</p>\r\n\r\n<p>main h4 header</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n</ul>', NULL, '2019-12-22 10:47:22', '2021-06-22 12:44:34'),
(104, 'forth blog', NULL, 'forth-blog', 1731, NULL, '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab.</p>\r\n\r\n<p>main h4 header</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', NULL, '2019-12-22 10:47:59', '2021-06-22 12:44:45'),
(105, 'katy perry', NULL, 'katy perry', 539, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, '2019-12-24 23:05:55', '2019-12-24 23:05:55'),
(106, 'katy perry', NULL, 'katy perry', 541, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, '2019-12-24 23:06:47', '2019-12-24 23:06:47'),
(108, 'asadas', NULL, 'asadas', 556, NULL, '<p>&nbsp;fgdfhtrhj yjhgjfg dxgfhgfjytj tuhjytjy yj ytj</p>', NULL, '2019-12-24 23:51:23', '2019-12-24 23:51:23'),
(109, 'asadas', NULL, 'asadas', 558, NULL, '<p>&nbsp;fgdfhtrhj yjhgjfg dxgfhgfjytj tuhjytjy yj ytj</p>', NULL, '2019-12-24 23:52:05', '2019-12-24 23:52:05'),
(116, 'uniform', NULL, 'uniform', 751, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2019-12-25 01:56:02', '2020-01-01 18:34:19'),
(118, 'linen', NULL, 'linen', 591, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2019-12-25 18:41:58', '2019-12-25 18:41:58'),
(126, 'hospitality', NULL, 'hospitality', 637, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry</p>', NULL, '2019-12-26 01:34:42', '2019-12-26 01:34:42'),
(128, 'business wear', NULL, 'business-wear', 641, NULL, '<ul>\r\n	<li>Linen producte Open Hoodie</li>\r\n	<li>Product Code: SWS20WFMC26341TM1</li>\r\n	<li>. Product Code: 000276634</li>\r\n	<li>. Do not use water and use polishes of reliable quality.</li>\r\n</ul>', NULL, '2019-12-26 17:46:30', '2019-12-26 17:46:30'),
(129, 'work wear', NULL, 'work-wear', 643, NULL, '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>', NULL, '2019-12-26 17:48:33', '2019-12-26 17:48:33'),
(130, 'health care', NULL, 'health-care', 645, NULL, '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>', NULL, '2019-12-26 17:51:48', '2019-12-26 17:51:48'),
(131, 'school uniforms', NULL, 'school-uniforms', 647, NULL, '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>', NULL, '2019-12-26 17:55:44', '2019-12-26 17:55:44'),
(132, 'ergrgrg', NULL, 'ergrgrg', 649, NULL, '<p>grg erfgerg dryhdtr ery ery</p>', NULL, '2019-12-26 17:57:34', '2019-12-26 17:57:34'),
(133, 'bath', NULL, 'bath', 654, NULL, '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>', NULL, '2019-12-26 18:02:19', '2019-12-26 18:02:19'),
(134, 'bedding', NULL, 'bedding', 656, NULL, '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>', NULL, '2019-12-26 18:04:05', '2019-12-26 18:04:05'),
(135, 'table', NULL, 'table', 658, NULL, '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>', NULL, '2019-12-26 18:06:33', '2019-12-26 18:06:33'),
(136, 'dg', NULL, 'dg', 660, NULL, '<p>tyht rhdfsz xh tdfhth trhjythjg ryhg drfhgtrhj th r</p>', NULL, '2019-12-26 21:55:10', '2019-12-26 21:55:10'),
(137, 'eefedfed edefdf edf', NULL, 'eefedfed-edefdf-edf', 666, NULL, '<p>trdhtrfg trhjtfgxzth fxh dxtyhjuyft dstrfshtrfs dsttzgdfssh szyer thtrf</p>', NULL, '2019-12-26 21:56:23', '2019-12-26 21:56:23'),
(138, 'ثصبثق ثثلثقلق', NULL, 'thsbthk-ththlthklk', 671, NULL, '<p>لاتفبلا&nbsp; قلحخنقل قثمنلةق حجافقاف</p>', NULL, '2019-12-26 21:59:00', '2019-12-26 21:59:00'),
(139, 'ثف 5غ5 غفقغ ثقغافبل اتفبلا فيقايفقب', NULL, 'thf-5gh5-ghfkgh-thkghafbl-atfbla-fykayfkb', 677, NULL, '<p>فبلتغب يسل يقافقا قيل يبل يبل</p>', NULL, '2019-12-26 21:59:54', '2019-12-26 21:59:54'),
(140, 'career', NULL, 'career', 682, NULL, NULL, NULL, '2019-12-30 08:00:00', '2019-12-30 19:01:14'),
(141, 'product', NULL, 'product', 1025, NULL, NULL, 'Biologica', '2019-12-30 08:00:00', '2020-06-14 10:17:00'),
(142, 'hotels', NULL, 'hotels', 712, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, '2019-12-31 21:05:22', '2019-12-31 21:05:22'),
(143, 'administration', NULL, 'administration', 714, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, '2019-12-31 21:07:50', '2019-12-31 21:07:50'),
(144, 'bellman doorman', NULL, 'bellman-doorman', 719, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, '2019-12-31 21:21:21', '2019-12-31 21:21:21'),
(145, 'casuals', NULL, 'casuals', 725, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, '2019-12-31 21:29:17', '2019-12-31 22:47:00');
INSERT INTO `open_graph` (`id`, `og_title`, `og_type`, `og_url`, `og_image`, `image_url`, `og_description`, `og_site_name`, `created_at`, `updated_at`) VALUES
(146, 'engineering', NULL, 'engineering', 730, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, '2019-12-31 22:48:46', '2019-12-31 22:48:46'),
(147, 'gardening', NULL, 'gardening', 735, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, '2019-12-31 22:56:51', '2019-12-31 22:56:51'),
(148, 'house keeping', NULL, 'house-keeping', 741, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, '2019-12-31 23:02:30', '2019-12-31 23:02:30'),
(149, 'category', NULL, 'category', 1026, NULL, NULL, NULL, '2020-01-01 08:00:00', '2020-06-14 10:17:26'),
(150, 'partner', NULL, 'partner', 1027, NULL, NULL, NULL, '2020-01-01 08:00:00', '2020-06-14 10:18:15'),
(151, 'certificate', NULL, 'certificate', 1028, NULL, NULL, NULL, '2020-01-01 08:00:00', '2020-06-14 10:21:23'),
(155, 'Foreign trips', NULL, 'foreign-trips', 760, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-05 11:05:26', '2020-01-05 11:05:26'),
(159, 'program 1', NULL, 'program-1', 770, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 07:48:35', '2020-01-06 07:48:35'),
(160, 'program 1', NULL, 'program-1', 771, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 07:49:28', '2020-01-06 07:49:28'),
(161, 'program 1', NULL, 'program-1', 772, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 07:50:09', '2020-01-06 07:50:09'),
(162, 'program 1', NULL, 'program-1', 773, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 07:57:14', '2020-01-06 07:57:14'),
(163, 'program 1', NULL, 'program-1', 774, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 07:58:02', '2020-01-06 07:58:02'),
(166, 'program 1', NULL, 'program-1', 780, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 09:08:11', '2020-01-06 09:08:11'),
(169, 'program 2', NULL, 'program-2', 788, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 09:54:37', '2020-01-06 09:54:37'),
(170, 'program 3', NULL, 'program-3', 799, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(171, 'program 4', NULL, 'program-4', 803, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 14:33:03', '2020-01-06 14:33:03'),
(172, 'program 5', NULL, 'program-5', 807, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 14:36:47', '2020-01-06 14:36:47'),
(173, 'program 6', NULL, 'program-6', 811, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 14:39:47', '2020-01-06 14:39:47'),
(174, 'program 7', NULL, 'program-7', 815, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-06 14:59:03', '2020-01-06 14:59:03'),
(175, 'program 8', NULL, 'program-8', 823, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-08 07:40:54', '2020-01-08 07:40:54'),
(176, 'album', NULL, 'album', 1029, NULL, 'album page', NULL, '2020-01-07 22:00:00', '2020-06-14 10:22:05'),
(177, 'reservation', NULL, 'reservation', 662, NULL, NULL, NULL, '2020-01-07 22:00:00', '2020-01-07 22:00:00'),
(178, 'destination out egypt', NULL, 'destination-out-egypt', 673, NULL, NULL, NULL, '2020-01-08 22:00:00', '2020-01-08 22:00:00'),
(179, 'destination-in-egypt', 'destination-in-egypt', NULL, 662, NULL, NULL, NULL, '2020-01-08 22:00:00', '2020-01-08 22:00:00'),
(180, 'program 9', NULL, 'program-9', 855, NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>', NULL, '2020-01-09 10:45:45', '2020-01-09 10:45:45'),
(181, 'offers', NULL, 'offers', 662, 'offers', NULL, NULL, '2020-01-08 22:00:00', '2020-01-08 22:00:00'),
(182, 'women products', NULL, 'women-products', 1340, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-18 01:58:57', '2021-02-17 09:07:36'),
(184, 'men prodiucts', NULL, 'men-prodiucts', 1342, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-18 02:04:36', '2021-02-17 09:08:03'),
(186, 'BioASM 24 cream', NULL, 'bioasm-24-cream', 882, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-01-18 06:00:11', '2020-01-18 06:00:11'),
(189, 'project', NULL, 'project', 662, NULL, NULL, NULL, '2020-01-20 22:00:00', '2020-01-20 22:00:00'),
(190, 'blog', NULL, 'blog', 1055, NULL, NULL, NULL, '2020-01-20 22:00:00', '2020-06-15 08:31:18'),
(192, 'hey now', NULL, 'hey-now', 914, NULL, '<p>rgr fvrfvrfvrfvrv dv</p>', NULL, '2020-01-22 10:42:12', '2020-01-22 10:42:12'),
(196, 'kids products', NULL, 'kids-products', 1344, NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', NULL, '2020-06-14 09:11:06', '2021-02-17 09:08:25'),
(200, 'face & beauty', NULL, 'face-beauty', 1346, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.&nbsp;</p>', NULL, '2020-06-14 09:41:23', '2021-02-17 09:08:42'),
(209, 'service 1', NULL, 'service-1-092309', 1889, NULL, '<ul>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n</ul>', NULL, '2021-01-10 13:49:17', '2021-10-31 07:23:09'),
(210, 'service 2', NULL, 'home-moving-041204', 1891, NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', NULL, '2021-01-10 13:52:01', '2021-10-31 07:23:22'),
(211, 'first feminine category', NULL, 'first-feminine-product-111207', 1348, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', NULL, '2021-02-17 09:12:07', '2021-02-17 09:42:20'),
(212, 'second feminine category', NULL, 'second-feminine-product-111307', 1350, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', NULL, '2021-02-17 09:13:07', '2021-02-17 09:42:54'),
(214, 'product1', NULL, 'product1-012151', 1924, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', NULL, '2021-02-17 09:51:10', '2021-11-03 11:24:07'),
(215, 'product2', NULL, 'product2-012211', 1929, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', NULL, '2021-02-17 09:56:22', '2021-11-03 11:22:11'),
(216, 'product3', NULL, 'product3-012246', 1934, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', NULL, '2021-02-17 11:35:16', '2021-11-03 11:22:46'),
(217, 'product4', NULL, 'product4-012326', 1939, NULL, '<p>seat</p>', NULL, '2021-04-13 09:39:24', '2021-11-03 11:23:26'),
(218, 'service 3', NULL, 'international-moving-041250', 1895, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>', NULL, '2021-05-25 07:19:50', '2021-10-31 07:24:08'),
(219, 'service 4', NULL, 'pet-shifting-041325', 1899, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>', NULL, '2021-05-25 07:21:27', '2021-10-31 07:24:54'),
(224, 'معالجة مصادر المياه', NULL, NULL, 1658, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>', NULL, '2021-06-08 09:07:20', '2021-06-08 09:07:20'),
(225, 'جهاز هضمي', NULL, 'ghaz-hdmy-023652', 1724, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>', NULL, '2021-06-08 09:10:31', '2021-06-22 12:36:52'),
(226, 'غدد صماء', NULL, 'ghdd-smaaa-023739', 1726, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>', NULL, '2021-06-08 09:12:37', '2021-06-22 12:37:39'),
(227, 'first event', NULL, 'first-event-014009', 1679, NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,&nbsp;</p>', NULL, '2021-06-15 11:40:09', '2021-06-15 11:40:09'),
(228, 'second event', NULL, 'second-event-014134', 1680, NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,&nbsp;</p>', NULL, '2021-06-15 11:41:34', '2021-06-15 11:41:34'),
(229, 'third event', NULL, 'third-event-014517', 1681, NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,&nbsp;</p>', NULL, '2021-06-15 11:45:17', '2021-06-15 11:45:17'),
(231, 'service1 sub', NULL, NULL, 1873, NULL, '<p>lorem ipsum</p>', NULL, '2021-07-29 13:14:17', '2021-07-29 13:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `is_main_page` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_words` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_id` int(10) DEFAULT NULL,
  `header_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `is_main_page`, `url`, `name`, `description`, `key_words`, `open_graph_id`, `header_code`, `created_at`, `updated_at`) VALUES
(31, 1, '/', 'home', 'Lacasa - home page', 'Lacasa - home page', 28, '<script src=\"\"></script>', '2019-08-06 22:00:00', '2021-11-03 13:25:04'),
(32, 1, 'about', 'about', NULL, NULL, 29, '<script src=\"\"></script>', '2019-08-06 22:00:00', '2020-06-14 10:23:37'),
(33, 1, 'contact', 'contact', NULL, NULL, 30, NULL, '2019-08-06 22:00:00', '2020-06-14 10:23:48'),
(56, NULL, 'stomach-takmeem', 'Stomach Takmeem', NULL, NULL, 53, NULL, '2019-09-03 07:39:07', '2019-09-03 09:08:05'),
(58, NULL, 'partial-takmeem', 'Partial Takmeem', 'التكميم الجزئي للمعدة من اهم عوامل فقد الوزن', 'partial, takmeem, takfeen', 55, '<script>partial takmeem</script>', '2019-09-03 08:02:19', '2019-09-05 05:52:59'),
(67, NULL, 'wawufoqyxi@mailinator.net', 'jasuw@mailinator.com', NULL, NULL, 64, NULL, '2019-09-09 06:35:32', '2019-09-09 06:35:32'),
(71, NULL, 'ahthroa-alsmn-fhy-msoeol-aan-amrad-alkl-ayda', 'احذروا السمنة فهي مسؤولة عن أمراض الكلى أيضاً', NULL, NULL, 68, NULL, '2019-09-12 03:49:25', '2019-09-12 18:14:34'),
(72, NULL, 'lmn-tjr-aamly-tsghyr-almaad-balks', 'لمن تُجرى عملية تصغير المعدة بالقص', NULL, NULL, 69, NULL, '2019-09-12 04:07:01', '2019-09-12 21:11:06'),
(73, NULL, 'drasat-hol-tsghyr-almaad-jrahya', 'دراسات حول تصغير المعدة جراحيا', NULL, NULL, 70, NULL, '2019-09-12 04:15:21', '2019-09-12 21:11:22'),
(74, NULL, 'tathyr-alsmn-aal-alkdrat-althhny', 'تأثير السمنة على القدرات الذهنية', NULL, NULL, 71, NULL, '2019-09-12 04:21:52', '2019-09-12 21:11:40'),
(76, NULL, 'alntham-alghthae-kbl-alaamly', 'النظام الغذائى قبل العملية', NULL, NULL, 73, NULL, '2019-09-26 12:14:09', '2019-09-26 12:14:09'),
(77, NULL, 'trhlat-aljld', 'ترهلات الجلد', NULL, NULL, 74, NULL, '2019-09-26 12:21:04', '2019-09-26 12:21:04'),
(78, NULL, 'tkmym-almaad', 'تكميم المعدة', NULL, NULL, 75, NULL, '2019-09-26 12:27:55', '2019-09-26 12:27:55'),
(79, NULL, 'khsar-alozn-f-alshta', 'خسارة الوزن فى الشتاء', NULL, NULL, 76, NULL, '2019-09-26 12:34:06', '2019-09-26 12:34:06'),
(80, NULL, 'kyf-toetr-alsmn-aaly-alhml', 'كيف تؤتر السمنة علي الحمل', NULL, NULL, 77, NULL, '2019-09-26 12:37:37', '2019-09-26 12:37:37'),
(82, NULL, 'tosaa-ao-tmdd-almaad-baad-aamly-altkmym', 'توسع أو تمدد المعدة بعد عملية التكميم', NULL, NULL, 79, NULL, '2019-09-26 12:46:24', '2019-09-26 12:46:24'),
(83, NULL, 'ahmy-alryad-baad-ajra-alaamly', 'أهمية الرياضة بعد اجراء العملية', NULL, NULL, 80, NULL, '2019-09-26 12:49:12', '2019-09-26 12:49:12'),
(84, NULL, 'asbab-zyad-alozn-baad-altkmym', 'اسباب زيادة الوزن بعد التكميم', NULL, NULL, 81, NULL, '2019-09-26 12:51:56', '2019-09-26 12:51:56'),
(85, NULL, 'alamsak-oaltkmymalasbab-oalaalaj', 'الامساك والتكميم...الاسباب والعلاج..', NULL, NULL, 82, NULL, '2019-09-26 13:04:10', '2019-09-26 13:04:10'),
(86, NULL, 'jrahat-alsmn', 'جراحات السمنة', NULL, NULL, 83, NULL, '2019-09-26 13:09:47', '2019-09-26 13:09:47'),
(98, NULL, 'ghaz-alsyryk-045454', 'جهاز السيريك', NULL, NULL, 95, NULL, '2019-12-22 09:42:27', '2021-02-04 14:54:54'),
(101, NULL, 'alashaa-alsyny-045656', 'الأشعة السينية', NULL, NULL, 98, NULL, '2019-12-22 09:47:44', '2021-02-04 14:56:57'),
(102, NULL, 'thdyd-allon-045715', 'تحديد اللون', NULL, NULL, 99, NULL, '2019-12-22 09:48:33', '2021-02-04 14:57:15'),
(103, NULL, 'ashaa-albanorama-045732', 'أشعة البانوراما', NULL, NULL, 100, NULL, '2019-12-22 09:49:23', '2021-02-04 14:57:32'),
(104, NULL, 'first-blog-011611', 'first blog', NULL, NULL, 101, NULL, '2019-12-22 10:45:50', '2021-06-22 12:44:12'),
(105, NULL, 'second-blog-011655', 'second blog', NULL, NULL, 102, NULL, '2019-12-22 10:46:41', '2021-06-22 12:44:22'),
(106, NULL, 'third-blog-011729', 'third blog', NULL, NULL, 103, NULL, '2019-12-22 10:47:22', '2021-06-22 12:44:34'),
(107, NULL, 'forth-blog', 'forth blog', NULL, NULL, 104, NULL, '2019-12-22 10:47:59', '2021-06-22 12:44:45'),
(108, NULL, 'katy perry', 'katy perry', NULL, NULL, 105, NULL, '2019-12-24 23:05:55', '2019-12-24 23:05:55'),
(109, NULL, 'katy perry', 'katy perry', NULL, NULL, 106, NULL, '2019-12-24 23:06:47', '2019-12-24 23:06:47'),
(111, NULL, 'asadas', 'asadas', NULL, NULL, 108, NULL, '2019-12-24 23:51:23', '2019-12-24 23:51:23'),
(112, NULL, 'asadas', 'asadas', NULL, NULL, 109, NULL, '2019-12-24 23:52:05', '2019-12-24 23:52:05'),
(119, NULL, 'uniform', 'uniform', NULL, NULL, 116, NULL, '2019-12-25 01:56:02', '2019-12-25 01:56:02'),
(121, NULL, 'linen', 'linen', NULL, NULL, 118, NULL, '2019-12-25 18:41:58', '2019-12-25 18:41:58'),
(129, NULL, 'hospitality', 'hospitality', NULL, NULL, 126, NULL, '2019-12-26 01:34:42', '2019-12-26 01:34:42'),
(131, NULL, 'business-wear', 'business wear', NULL, NULL, 128, NULL, '2019-12-26 17:46:30', '2019-12-26 17:46:30'),
(132, NULL, 'work-wear', 'work wear', NULL, NULL, 129, NULL, '2019-12-26 17:48:33', '2019-12-26 17:48:33'),
(133, NULL, 'health-care', 'health care', NULL, NULL, 130, NULL, '2019-12-26 17:51:48', '2019-12-26 17:51:48'),
(134, NULL, 'school-uniforms', 'school uniforms', NULL, NULL, 131, NULL, '2019-12-26 17:55:44', '2019-12-26 17:55:44'),
(135, NULL, 'ergrgrg', 'ergrgrg', 'dfgerdgrg', NULL, 132, NULL, '2019-12-26 17:57:34', '2020-01-01 18:45:25'),
(136, NULL, 'bath', 'bath', NULL, NULL, 133, NULL, '2019-12-26 18:02:19', '2019-12-26 18:02:19'),
(137, NULL, 'bedding', 'bedding', NULL, NULL, 134, NULL, '2019-12-26 18:04:05', '2019-12-26 18:04:05'),
(138, NULL, 'table', 'table', NULL, NULL, 135, NULL, '2019-12-26 18:06:33', '2019-12-26 18:06:33'),
(139, NULL, 'dg', 'dg', NULL, NULL, 136, NULL, '2019-12-26 21:55:10', '2019-12-26 21:55:10'),
(140, NULL, 'eefedfed-edefdf-edf', 'eefedfed edefdf edf', NULL, NULL, 137, NULL, '2019-12-26 21:56:23', '2019-12-26 21:56:23'),
(141, NULL, 'thsbthk-ththlthklk', 'ثصبثق ثثلثقلق', NULL, NULL, 138, NULL, '2019-12-26 21:59:00', '2019-12-26 21:59:00'),
(142, NULL, 'thf-5gh5-ghfkgh-thkghafbl-atfbla-fykayfkb', 'ثف 5غ5 غفقغ ثقغافبل اتفبلا فيقايفقب', NULL, NULL, 139, NULL, '2019-12-26 21:59:54', '2019-12-26 21:59:54'),
(143, 5, 'career', 'career', NULL, NULL, 140, NULL, '2019-12-30 08:00:00', '2019-12-30 08:00:00'),
(144, 1, 'product', 'product', NULL, NULL, 141, NULL, '2019-12-30 08:00:00', '2019-12-30 08:00:00'),
(145, NULL, 'hotels', 'hotels', NULL, NULL, 142, NULL, '2019-12-31 21:05:22', '2019-12-31 21:05:22'),
(146, NULL, 'administration', 'administration', NULL, NULL, 143, NULL, '2019-12-31 21:07:50', '2019-12-31 21:07:50'),
(147, NULL, 'bellman-doorman', 'bellman doorman', NULL, NULL, 144, NULL, '2019-12-31 21:21:21', '2019-12-31 21:21:21'),
(148, NULL, 'casuals', 'casuals', NULL, NULL, 145, NULL, '2019-12-31 21:29:17', '2019-12-31 22:47:00'),
(149, NULL, 'engineering', 'engineering', NULL, NULL, 146, NULL, '2019-12-31 22:48:46', '2019-12-31 22:48:46'),
(150, NULL, 'gardening', 'gardening', NULL, NULL, 147, NULL, '2019-12-31 22:56:51', '2019-12-31 22:56:51'),
(151, NULL, 'house-keeping', 'house keeping', NULL, NULL, 148, NULL, '2019-12-31 23:02:30', '2019-12-31 23:02:30'),
(152, 1, 'category', 'category', NULL, NULL, 149, NULL, '2020-01-01 08:00:00', '2020-01-01 08:00:00'),
(153, 1, 'partner', 'partner', NULL, NULL, 150, NULL, '2020-01-01 08:00:00', '2020-01-01 08:00:00'),
(154, 1, 'certificate', 'certificate', NULL, NULL, 151, NULL, '2020-01-01 08:00:00', '2020-01-01 08:00:00'),
(162, NULL, 'program-1', 'program 1', NULL, NULL, 159, NULL, '2020-01-06 07:48:36', '2020-01-06 07:48:36'),
(163, NULL, 'program-1', 'program 1', NULL, NULL, 160, NULL, '2020-01-06 07:49:28', '2020-01-06 07:49:28'),
(164, NULL, 'program-1', 'program 1', NULL, NULL, 161, NULL, '2020-01-06 07:50:09', '2020-01-06 07:50:09'),
(165, NULL, 'program-1', 'program 1', NULL, NULL, 162, NULL, '2020-01-06 07:57:14', '2020-01-06 07:57:14'),
(166, NULL, 'program-1', 'program 1', NULL, NULL, 163, NULL, '2020-01-06 07:58:02', '2020-01-06 07:58:02'),
(169, NULL, 'program-1', 'program 1', NULL, NULL, 166, NULL, '2020-01-06 09:08:11', '2020-01-09 10:40:02'),
(172, NULL, 'program-2', 'program 2', NULL, NULL, 169, NULL, '2020-01-06 09:54:38', '2020-01-09 10:40:17'),
(173, NULL, 'program-3', 'program 3', NULL, NULL, 170, NULL, '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(174, NULL, 'program-4', 'program 4', NULL, NULL, 171, NULL, '2020-01-06 14:33:03', '2020-01-06 14:33:55'),
(175, NULL, 'program-5', 'program 5', NULL, NULL, 172, NULL, '2020-01-06 14:36:47', '2020-01-06 14:36:47'),
(176, NULL, 'program-6', 'program 6', NULL, NULL, 173, NULL, '2020-01-06 14:39:47', '2020-01-06 14:39:47'),
(177, NULL, 'program-7', 'program 7', NULL, NULL, 174, NULL, '2020-01-06 14:59:04', '2020-01-06 14:59:04'),
(178, NULL, 'program-8', 'program 8', NULL, NULL, 175, NULL, '2020-01-08 07:40:54', '2020-01-08 07:40:54'),
(179, 1, 'album', 'album', 'album page', NULL, 176, NULL, '2020-01-07 22:00:00', '2020-01-08 13:04:39'),
(180, 5, 'reservation', 'reservation', NULL, NULL, 177, NULL, '2020-01-07 22:00:00', '2020-01-07 22:00:00'),
(181, 5, 'destination-out-egypt', 'destination-out-egypt', NULL, NULL, 178, NULL, '2020-01-08 22:00:00', '2020-01-08 22:00:00'),
(182, 5, 'destination-in-egypt', 'destination-in-egypt', NULL, NULL, 179, NULL, '2020-01-08 22:00:00', '2020-01-08 22:00:00'),
(183, NULL, 'program-9', 'program 9', NULL, NULL, 180, NULL, '2020-01-09 10:45:45', '2020-01-09 10:45:45'),
(184, 5, 'offers', 'offers', NULL, NULL, 181, NULL, '2020-01-08 22:00:00', '2020-01-08 22:00:00'),
(185, NULL, 'women-products', 'women products', NULL, NULL, 182, NULL, '2020-01-18 01:58:57', '2021-02-17 09:07:36'),
(187, NULL, 'men-prodiucts', 'men prodiucts', NULL, NULL, 184, NULL, '2020-01-18 02:04:37', '2021-02-17 09:08:03'),
(189, NULL, 'bioasm-24-cream', 'BioASM 24 cream', NULL, NULL, 186, NULL, '2020-01-18 06:00:11', '2020-01-18 06:00:11'),
(192, 5, 'project', 'project', NULL, NULL, 189, NULL, '2020-01-20 22:00:00', '2020-01-20 22:00:00'),
(193, 1, 'blog', 'blog', NULL, NULL, 190, NULL, '2020-01-20 22:00:00', '2020-01-20 22:00:00'),
(195, NULL, 'hey-now', 'hey now', NULL, NULL, 192, NULL, '2020-01-22 10:42:12', '2020-01-22 10:42:12'),
(199, NULL, 'kids-products', 'kids products', NULL, NULL, 196, NULL, '2020-06-14 09:11:06', '2021-02-17 09:08:25'),
(203, NULL, 'face-beauty', 'face & beauty', NULL, NULL, 200, NULL, '2020-06-14 09:41:24', '2021-02-17 09:08:42'),
(212, NULL, 'service-1-092309', 'service 1', NULL, NULL, 209, NULL, '2021-01-10 13:49:17', '2021-10-31 07:23:09'),
(213, NULL, 'home-moving-041204', 'service 2', NULL, NULL, 210, NULL, '2021-01-10 13:52:01', '2021-10-31 07:23:22'),
(214, NULL, 'first-feminine-product-111207', 'first feminine category', NULL, NULL, 211, NULL, '2021-02-17 09:12:07', '2021-02-17 09:42:20'),
(215, NULL, 'second-feminine-product-111307', 'second feminine category', NULL, NULL, 212, NULL, '2021-02-17 09:13:07', '2021-02-17 09:42:54'),
(217, NULL, 'product1-012151', 'product1', NULL, NULL, 214, NULL, '2021-02-17 09:51:10', '2021-11-03 11:24:07'),
(218, NULL, 'product2-012211', 'product2', NULL, NULL, 215, NULL, '2021-02-17 09:56:22', '2021-11-03 11:22:11'),
(219, NULL, 'product3-012246', 'product3', NULL, NULL, 216, NULL, '2021-02-17 11:35:16', '2021-11-03 11:22:46'),
(220, NULL, 'product4-012326', 'product4', NULL, NULL, 217, NULL, '2021-04-13 09:39:24', '2021-11-03 11:23:26'),
(221, NULL, 'international-moving-041250', 'service 3', NULL, NULL, 218, NULL, '2021-05-25 07:19:50', '2021-10-31 07:24:08'),
(222, NULL, 'pet-shifting-041325', 'service 4', NULL, NULL, 219, NULL, '2021-05-25 07:21:27', '2021-10-31 07:24:54'),
(227, NULL, 'ghaz-hdmy-023652', 'جهاز هضمي', NULL, NULL, 225, NULL, '2021-06-08 09:10:31', '2021-06-22 12:36:52'),
(228, NULL, 'ghdd-smaaa-023739', 'غدد صماء', NULL, NULL, 226, NULL, '2021-06-08 09:12:37', '2021-06-22 12:37:39'),
(229, NULL, 'first-event-014009', 'first event', NULL, NULL, 227, NULL, '2021-06-15 11:40:09', '2021-06-15 11:40:09'),
(230, NULL, 'second-event-014134', 'second event', NULL, NULL, 228, NULL, '2021-06-15 11:41:34', '2021-06-15 11:41:34'),
(231, NULL, 'third-event-014517', 'third event', NULL, NULL, 229, NULL, '2021-06-15 11:45:17', '2021-06-15 11:45:17'),
(232, 1, 'services', 'services', 'services', NULL, 6, NULL, '2021-06-22 11:26:18', NULL),
(234, NULL, 'service1-sub-031417', 'service1 sub', NULL, NULL, 231, NULL, '2021-07-29 13:14:17', '2021-07-29 13:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `icon` int(11) DEFAULT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` int(10) UNSIGNED DEFAULT NULL,
  `open_graph_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `type`, `category_id`, `image_id`, `icon`, `price`, `size`, `url`, `video_id`, `open_graph_id`, `page_id`, `form_id`, `created_by`, `created_at`, `updated_at`) VALUES
(14, NULL, 15, 1924, 1925, NULL, NULL, 'product1-012151', 66, 214, 217, 111, 3, '2021-02-17 09:51:10', '2021-11-03 11:21:51'),
(15, NULL, 15, 1929, 1930, NULL, NULL, 'product2-012211', 67, 215, 218, 112, 3, '2021-02-17 09:56:23', '2021-11-03 11:22:11'),
(16, NULL, 15, 1934, 1935, NULL, NULL, 'product3-012246', 68, 216, 219, 113, 3, '2021-02-17 11:35:16', '2021-11-03 11:22:46'),
(17, NULL, NULL, 1939, 1940, NULL, NULL, 'product4-012326', 69, 217, 220, 114, 3, '2021-04-13 09:39:24', '2021-11-03 11:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `product_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`product_id`, `image_id`, `created_at`, `updated_at`) VALUES
(14, 1356, '2021-02-17 09:51:10', '2021-02-17 09:51:10'),
(14, 1357, '2021-02-17 09:51:10', '2021-02-17 09:51:10'),
(14, 1358, '2021-02-17 09:51:10', '2021-02-17 09:51:10'),
(15, 1361, '2021-02-17 09:56:23', '2021-02-17 09:56:23'),
(15, 1362, '2021-02-17 09:56:23', '2021-02-17 09:56:23'),
(15, 1363, '2021-02-17 09:56:23', '2021-02-17 09:56:23'),
(16, 1366, '2021-02-17 11:35:17', '2021-02-17 11:35:17'),
(16, 1367, '2021-02-17 11:35:17', '2021-02-17 11:35:17'),
(16, 1368, '2021-02-17 11:35:17', '2021-02-17 11:35:17'),
(17, 1427, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(17, 1428, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(17, 1429, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(17, 1430, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(17, 1431, '2021-04-13 09:39:24', '2021-04-13 09:39:24'),
(14, 1432, '2021-04-13 09:40:06', '2021-04-13 09:40:06'),
(14, 1433, '2021-04-13 09:40:06', '2021-04-13 09:40:06'),
(14, 1434, '2021-04-13 09:40:06', '2021-04-13 09:40:06'),
(14, 1435, '2021-04-13 09:40:06', '2021-04-13 09:40:06'),
(15, 1438, '2021-04-13 09:41:22', '2021-04-13 09:41:22'),
(15, 1439, '2021-04-13 09:41:22', '2021-04-13 09:41:22'),
(15, 1440, '2021-04-13 09:41:22', '2021-04-13 09:41:22'),
(15, 1441, '2021-04-13 09:41:22', '2021-04-13 09:41:22'),
(16, 1446, '2021-04-13 09:43:11', '2021-04-13 09:43:11'),
(16, 1447, '2021-04-13 09:43:11', '2021-04-13 09:43:11'),
(16, 1448, '2021-04-13 09:43:11', '2021-04-13 09:43:11'),
(16, 1449, '2021-04-13 09:43:11', '2021-04-13 09:43:11'),
(14, 1926, '2021-11-03 11:20:27', '2021-11-03 11:20:27'),
(14, 1927, '2021-11-03 11:20:27', '2021-11-03 11:20:27'),
(14, 1928, '2021-11-03 11:20:27', '2021-11-03 11:20:27'),
(15, 1931, '2021-11-03 11:21:28', '2021-11-03 11:21:28'),
(15, 1932, '2021-11-03 11:21:28', '2021-11-03 11:21:28'),
(15, 1933, '2021-11-03 11:21:28', '2021-11-03 11:21:28'),
(16, 1936, '2021-11-03 11:22:46', '2021-11-03 11:22:46'),
(16, 1937, '2021-11-03 11:22:46', '2021-11-03 11:22:46'),
(16, 1938, '2021-11-03 11:22:46', '2021-11-03 11:22:46'),
(17, 1941, '2021-11-03 11:23:26', '2021-11-03 11:23:26'),
(17, 1942, '2021-11-03 11:23:26', '2021-11-03 11:23:26'),
(17, 1943, '2021-11-03 11:23:26', '2021-11-03 11:23:26'),
(17, 1944, '2021-11-03 11:23:26', '2021-11-03 11:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `from_date` timestamp NULL DEFAULT NULL,
  `to_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `url`, `branch_id`, `from_date`, `to_date`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '2021-05-05 22:00:00', '2021-05-07 22:00:00', '2021-05-06 13:03:41', '2021-05-06 13:03:41'),
(2, NULL, 1, '2021-05-08 22:00:00', '2021-05-12 22:00:00', '2021-05-09 08:27:52', '2021-05-09 08:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `to_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persons_count` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adults_count` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `children_count` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_degree` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `came_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipments_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirements` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `name`, `email`, `phone`, `message`, `product_id`, `service_id`, `to_date`, `from_date`, `from_city`, `to_city`, `persons_count`, `adults_count`, `children_count`, `age`, `reservation_degree`, `reservation_date`, `came_from`, `address`, `from_address`, `to_address`, `shipments_count`, `item`, `company_name`, `website_url`, `location`, `description1`, `description2`, `description3`, `requirements`, `budget`, `created_at`, `updated_at`) VALUES
(17, 'mr fifty', 'fifty@gmail.com', '01111111111', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, 'http://localhost:3000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-18 15:22:29', '2021-03-18 15:22:29'),
(19, 'osama gmal', 'osama_gmal@gmail.com', '+11111111', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, NULL, '2021-05-29', '2021-05-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'osama_gmal@gmail.com', NULL, NULL, NULL, NULL, NULL, 'microsoft', 'https://www.youtube.com', 'any location', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '250', '2021-05-25 11:41:14', '2021-05-25 11:41:14'),
(20, 'hoda Gad', '7odagad@gmail.com', '01111111111', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', NULL, NULL, '2021-05-29', '2021-05-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:300/about', NULL, NULL, NULL, NULL, NULL, 'microsoft', 'https://www.youtube.com', 'any location', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '6000', '2021-05-25 11:49:12', '2021-05-25 11:49:12'),
(21, 'osama gmal', 'osama_gmal@gmail.com', '+11111111', 'rgf dfv fbvf fgbfb', NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 11:42:16', '2021-06-01 11:42:16'),
(22, 'osama gmal', 'osama_gmal@gmail.com', '+11111111', 'rgf dfv fbvf fgbfb', NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01 11:44:03', '2021-06-01 11:44:03'),
(23, 'osama gmal', 'osama_gmal@gmail.com', '+11111111', 'dfg dgdfg rdfgvdfv', NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-25', 'http://localhost:200/reservation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-24 07:17:40', '2021-06-24 07:17:40'),
(24, 'osama gmal', 'osama_gmal@gmail.com', '+11111111', 'dfg dgdfg rdfgvdfv', NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-25', 'http://localhost:200/reservation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-24 07:25:56', '2021-06-24 07:25:56'),
(25, 'osama gmal', 'osama_gmal@gmail.com', '+11111111', 'dfg dgdfg rdfgvdfv', NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-25', 'http://localhost:200/reservation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-24 08:17:33', '2021-06-24 08:17:33'),
(26, 'fifty cent', 'fifty@fifty.com', '01111111111', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:300/contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-05 13:07:40', '2021-07-05 13:07:40'),
(27, 'osama gmal', 'osama_gmal@gmail.com', '01111111111', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:300/', NULL, NULL, NULL, '100 - 500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-06 07:55:39', '2021-07-06 07:55:39'),
(28, 'shiko shiko', 'salemmokhto@gmail.com', '01111111111', 'any lorem is goog', NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:300/contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-06 07:56:45', '2021-07-06 07:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `same_as`
--

CREATE TABLE `same_as` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_prop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sameAs',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `same_as`
--

INSERT INTO `same_as` (`id`, `name`, `url`, `rel`, `item_prop`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'youtube', 'https://www.youtube.com', NULL, 'sameAs', 2, '2019-08-08 04:31:01', '2019-08-14 05:46:46'),
(5, 'FB', 'https://www.facebook.com', NULL, 'sameAs', 2, '2019-08-08 05:11:54', '2019-08-14 05:47:15'),
(6, 'twitter', 'https://www.twitter.com', NULL, 'sameAs', 2, '2019-08-08 05:12:10', '2019-08-14 05:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` int(10) UNSIGNED DEFAULT NULL,
  `video_id` int(10) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_service_id` int(10) DEFAULT NULL,
  `open_graph_id` int(10) NOT NULL,
  `page_id` int(10) NOT NULL,
  `form_id` int(10) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `type`, `image_id`, `icon`, `video_id`, `url`, `parent_service_id`, `open_graph_id`, `page_id`, `form_id`, `created_by`, `created_at`, `updated_at`) VALUES
(12, NULL, 1889, 1890, NULL, 'service-1-092309', NULL, 209, 212, 106, 3, '2021-01-10 13:49:17', '2021-10-31 07:23:09'),
(13, NULL, 1891, 1892, NULL, 'home-moving-041204', NULL, 210, 213, 107, 3, '2021-01-10 13:52:01', '2021-10-31 07:23:22'),
(14, NULL, 1895, 1896, NULL, 'international-moving-041250', NULL, 218, 221, 115, 3, '2021-05-25 07:19:50', '2021-10-31 07:24:08'),
(15, NULL, 1899, 1900, NULL, 'pet-shifting-041325', NULL, 219, 222, 116, 3, '2021-05-25 07:21:27', '2021-10-31 07:24:54'),
(20, NULL, 1724, 1725, NULL, 'ghaz-hdmy-023652', 13, 225, 227, 121, 3, '2021-06-08 09:10:31', '2021-06-22 12:36:52'),
(21, NULL, 1726, 1727, NULL, 'ghdd-smaaa-023739', 13, 226, 228, 122, 3, '2021-06-08 09:12:37', '2021-06-22 12:37:39'),
(23, NULL, 1873, 1874, NULL, 'service1-sub-031417', 12, 231, 234, 124, 3, '2021-07-29 13:14:17', '2021-07-29 13:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `service_images`
--

CREATE TABLE `service_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_images`
--

INSERT INTO `service_images` (`id`, `image_id`, `service_id`, `created_at`, `updated_at`) VALUES
(24, 1084, 1, '2020-10-05 11:23:09', '2020-10-05 11:23:09'),
(25, 1085, 1, '2020-10-05 11:23:09', '2020-10-05 11:23:09'),
(26, 1086, 1, '2020-10-05 11:23:09', '2020-10-05 11:23:09'),
(27, 1115, 1, '2020-11-30 07:59:30', '2020-11-30 07:59:30'),
(28, 1116, 1, '2020-11-30 07:59:30', '2020-11-30 07:59:30'),
(29, 1117, 4, '2020-11-30 08:00:03', '2020-11-30 08:00:03'),
(30, 1118, 4, '2020-11-30 08:00:03', '2020-11-30 08:00:03'),
(31, 1119, 5, '2020-11-30 08:00:21', '2020-11-30 08:00:21'),
(32, 1120, 5, '2020-11-30 08:00:21', '2020-11-30 08:00:21'),
(33, 1121, 6, '2020-11-30 08:00:48', '2020-11-30 08:00:48'),
(34, 1122, 6, '2020-11-30 08:00:48', '2020-11-30 08:00:48'),
(37, 1125, 1, '2020-11-30 08:02:08', '2020-11-30 08:02:08'),
(38, 1126, 1, '2020-11-30 08:02:15', '2020-11-30 08:02:15'),
(39, 1127, 5, '2020-11-30 08:03:05', '2020-11-30 08:03:05'),
(40, 1128, 6, '2020-11-30 08:03:26', '2020-11-30 08:03:26'),
(42, 1144, 1, '2021-01-06 11:33:54', '2021-01-06 11:33:54'),
(43, 1145, 1, '2021-01-06 11:33:54', '2021-01-06 11:33:54'),
(44, 1146, 1, '2021-01-06 11:33:54', '2021-01-06 11:33:54'),
(45, 1147, 1, '2021-01-06 11:33:54', '2021-01-06 11:33:54'),
(46, 1148, 1, '2021-01-06 11:33:54', '2021-01-06 11:33:54'),
(47, 1149, 4, '2021-01-06 11:42:45', '2021-01-06 11:42:45'),
(48, 1150, 4, '2021-01-06 11:42:45', '2021-01-06 11:42:45'),
(49, 1151, 4, '2021-01-06 11:42:45', '2021-01-06 11:42:45'),
(50, 1152, 4, '2021-01-06 11:42:45', '2021-01-06 11:42:45'),
(51, 1153, 6, '2021-01-06 11:45:21', '2021-01-06 11:45:21'),
(52, 1154, 6, '2021-01-06 11:45:21', '2021-01-06 11:45:21'),
(53, 1155, 6, '2021-01-06 11:45:21', '2021-01-06 11:45:21'),
(58, 1160, 5, '2021-01-06 12:46:51', '2021-01-06 12:46:51'),
(59, 1161, 5, '2021-01-06 12:46:51', '2021-01-06 12:46:51'),
(60, 1162, 5, '2021-01-06 12:46:51', '2021-01-06 12:46:51'),
(61, 1163, 5, '2021-01-06 12:46:51', '2021-01-06 12:46:51'),
(62, 1177, 12, '2021-01-19 15:00:51', '2021-01-19 15:00:51'),
(63, 1178, 12, '2021-01-19 15:00:51', '2021-01-19 15:00:51'),
(64, 1179, 12, '2021-01-19 15:00:51', '2021-01-19 15:00:51'),
(65, 1197, 13, '2021-01-19 16:06:49', '2021-01-19 16:06:49'),
(66, 1198, 13, '2021-01-19 16:06:49', '2021-01-19 16:06:49'),
(67, 1199, 13, '2021-01-19 16:06:49', '2021-01-19 16:06:49'),
(68, 1200, 13, '2021-01-19 16:06:49', '2021-01-19 16:06:49'),
(69, 1248, 1, '2021-02-04 13:58:40', '2021-02-04 13:58:40'),
(70, 1249, 4, '2021-02-04 14:00:14', '2021-02-04 14:00:14'),
(71, 1250, 5, '2021-02-04 14:01:19', '2021-02-04 14:01:19'),
(72, 1251, 6, '2021-02-04 14:02:10', '2021-02-04 14:02:10'),
(73, 1300, 12, '2021-02-07 11:28:30', '2021-02-07 11:28:30'),
(74, 1301, 12, '2021-02-07 11:28:30', '2021-02-07 11:28:30'),
(75, 1302, 12, '2021-02-07 11:28:30', '2021-02-07 11:28:30'),
(76, 1303, 12, '2021-02-07 11:28:30', '2021-02-07 11:28:30'),
(77, 1304, 13, '2021-02-07 11:29:17', '2021-02-07 11:29:17'),
(78, 1305, 13, '2021-02-07 11:29:17', '2021-02-07 11:29:17'),
(79, 1306, 13, '2021-02-07 11:29:17', '2021-02-07 11:29:17'),
(80, 1307, 13, '2021-02-07 11:29:17', '2021-02-07 11:29:17'),
(81, 1308, 13, '2021-02-07 11:29:17', '2021-02-07 11:29:17'),
(82, 1467, 13, '2021-04-19 12:32:35', '2021-04-19 12:32:35'),
(83, 1468, 13, '2021-04-19 12:32:35', '2021-04-19 12:32:35'),
(84, 1469, 13, '2021-04-19 12:32:35', '2021-04-19 12:32:35'),
(85, 1563, 13, '2021-05-25 07:22:38', '2021-05-25 07:22:38'),
(86, 1564, 13, '2021-05-25 07:22:38', '2021-05-25 07:22:38'),
(87, 1565, 13, '2021-05-25 07:22:38', '2021-05-25 07:22:38'),
(88, 1566, 14, '2021-05-25 07:22:58', '2021-05-25 07:22:58'),
(89, 1567, 14, '2021-05-25 07:22:58', '2021-05-25 07:22:58'),
(90, 1568, 14, '2021-05-25 07:22:58', '2021-05-25 07:22:58'),
(91, 1569, 15, '2021-05-25 07:23:16', '2021-05-25 07:23:16'),
(92, 1570, 15, '2021-05-25 07:23:16', '2021-05-25 07:23:16'),
(93, 1571, 15, '2021-05-25 07:23:16', '2021-05-25 07:23:16'),
(97, 1605, 13, '2021-05-31 11:26:16', '2021-05-31 11:26:16'),
(98, 1606, 13, '2021-05-31 11:26:16', '2021-05-31 11:26:16'),
(99, 1607, 13, '2021-05-31 11:26:16', '2021-05-31 11:26:16'),
(100, 1608, 14, '2021-05-31 11:26:53', '2021-05-31 11:26:53'),
(101, 1609, 14, '2021-05-31 11:26:53', '2021-05-31 11:26:53'),
(102, 1610, 14, '2021-05-31 11:26:53', '2021-05-31 11:26:53'),
(103, 1613, 15, '2021-05-31 11:27:45', '2021-05-31 11:27:45'),
(104, 1614, 15, '2021-05-31 11:27:45', '2021-05-31 11:27:45'),
(105, 1615, 15, '2021-05-31 11:27:45', '2021-05-31 11:27:45'),
(109, 1684, 13, '2021-06-15 13:43:13', '2021-06-15 13:43:13'),
(110, 1685, 13, '2021-06-15 13:43:13', '2021-06-15 13:43:13'),
(111, 1686, 13, '2021-06-15 13:43:13', '2021-06-15 13:43:13'),
(112, 1687, 14, '2021-06-15 13:43:35', '2021-06-15 13:43:35'),
(113, 1688, 14, '2021-06-15 13:43:35', '2021-06-15 13:43:35'),
(114, 1689, 14, '2021-06-15 13:43:35', '2021-06-15 13:43:35'),
(115, 1704, 14, '2021-06-17 07:16:25', '2021-06-17 07:16:25'),
(116, 1705, 14, '2021-06-17 07:16:25', '2021-06-17 07:16:25'),
(117, 1706, 14, '2021-06-17 07:16:25', '2021-06-17 07:16:25'),
(118, 1707, 13, '2021-06-17 07:17:18', '2021-06-17 07:17:18'),
(119, 1708, 13, '2021-06-17 07:17:18', '2021-06-17 07:17:18'),
(120, 1709, 15, '2021-06-17 07:17:41', '2021-06-17 07:17:41'),
(121, 1710, 15, '2021-06-17 07:17:41', '2021-06-17 07:17:41'),
(122, 1711, 15, '2021-06-17 07:17:41', '2021-06-17 07:17:41'),
(123, 1846, 12, '2021-07-15 11:19:44', '2021-07-15 11:19:44'),
(124, 1847, 12, '2021-07-15 11:19:44', '2021-07-15 11:19:44'),
(125, 1848, 12, '2021-07-15 11:19:44', '2021-07-15 11:19:44'),
(126, 1849, 13, '2021-07-15 11:20:03', '2021-07-15 11:20:03'),
(127, 1850, 13, '2021-07-15 11:20:03', '2021-07-15 11:20:03'),
(128, 1851, 13, '2021-07-15 11:20:03', '2021-07-15 11:20:03'),
(129, 1852, 14, '2021-07-15 11:20:20', '2021-07-15 11:20:20'),
(130, 1853, 14, '2021-07-15 11:20:20', '2021-07-15 11:20:20'),
(131, 1854, 14, '2021-07-15 11:20:20', '2021-07-15 11:20:20'),
(132, 1855, 15, '2021-07-15 11:20:39', '2021-07-15 11:20:39'),
(133, 1856, 15, '2021-07-15 11:20:39', '2021-07-15 11:20:39'),
(134, 1857, 15, '2021-07-15 11:20:39', '2021-07-15 11:20:39'),
(141, 1887, 12, '2021-10-31 07:22:26', '2021-10-31 07:22:26'),
(142, 1888, 12, '2021-10-31 07:22:26', '2021-10-31 07:22:26'),
(143, 1893, 13, '2021-10-31 07:23:47', '2021-10-31 07:23:47'),
(144, 1894, 13, '2021-10-31 07:23:47', '2021-10-31 07:23:47'),
(145, 1897, 14, '2021-10-31 07:24:33', '2021-10-31 07:24:33'),
(146, 1898, 14, '2021-10-31 07:24:33', '2021-10-31 07:24:33'),
(147, 1901, 15, '2021-10-31 07:25:25', '2021-10-31 07:25:25'),
(148, 1902, 15, '2021-10-31 07:25:25', '2021-10-31 07:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `service_request`
--

CREATE TABLE `service_request` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `requester_name` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) NOT NULL,
  `logo` int(10) UNSIGNED NOT NULL,
  `logo_alt` int(11) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `default_lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `logo`, `logo_alt`, `status`, `default_lang`, `created_at`, `updated_at`) VALUES
(1, 1909, 1910, 1, 'ar', '2019-08-07 22:00:00', '2021-11-02 08:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) NOT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` int(10) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image_id`, `type`, `video_id`, `url`, `created_by`, `created_at`, `updated_at`) VALUES
(8, 1903, NULL, NULL, NULL, 3, '2021-02-15 11:44:35', '2021-10-31 07:31:07'),
(9, 1904, NULL, NULL, 'about', 3, '2021-02-15 12:15:38', '2021-10-31 07:31:17'),
(10, 1905, NULL, NULL, 'about', 3, '2021-02-15 12:16:51', '2021-10-31 07:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `slider_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1319, '2021-02-15 13:44:36', NULL),
(2, 8, 1320, '2021-02-15 13:44:36', NULL),
(3, 8, 1321, '2021-02-15 13:44:36', NULL),
(7, 9, 1325, '2021-02-15 14:15:38', NULL),
(8, 9, 1326, '2021-02-15 14:15:38', NULL),
(9, 9, 1327, '2021-02-15 14:15:38', NULL),
(10, 10, 1328, '2021-02-15 14:16:51', NULL),
(11, 10, 1329, '2021-02-15 14:16:51', NULL),
(12, 10, 1330, '2021-02-15 14:16:51', NULL),
(16, 8, 1401, '2021-03-21 11:24:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=>consultation,2=>doping,3=>specialist,4=>visitor',
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `service_id` int(10) DEFAULT NULL,
  `is_ceo` int(10) DEFAULT NULL,
  `manager_id` int(10) UNSIGNED DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_id` int(10) DEFAULT NULL,
  `page_id` int(10) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `type`, `image_id`, `service_id`, `is_ceo`, `manager_id`, `url`, `open_graph_id`, `page_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '1', 1732, 12, 1, NULL, 'dr-mahmoud-alaa', 0, 0, 3, '2019-09-22 11:53:10', '2021-06-22 13:42:57'),
(2, '1', 1733, 12, NULL, 1, 'mdyr-msharyaa-amdadat-altak-091228', NULL, NULL, 3, '2020-12-22 11:09:23', '2021-06-24 07:12:28'),
(3, '1', 1734, 14, NULL, 1, 'mdyr-msharyaa-alaghrad-alsnaaay-oalzraaay-091240', NULL, NULL, 3, '2020-12-22 11:19:40', '2021-06-24 07:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(10) NOT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `image_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1454, 3, '2019-12-22 12:52:25', '2021-04-14 07:27:22'),
(2, 1455, 3, '2019-12-22 12:53:03', '2021-04-14 07:27:31'),
(3, 1456, 3, '2020-01-08 07:20:29', '2021-04-14 07:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `image_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'mr fifty', 'admin@fiftycent.com', NULL, NULL, NULL, '$2y$10$iC/.NS5CRhx84fPQ/PlI6erkESQ6WVWwjy8uX4sDIESq2Dswu3Ki6', '0LpvuglkZ4sffPupecJrX9yJqHg9Jag1sAkILElvehb9GdFbK7n13sDwK58Q', '2019-06-18 15:45:49', '2019-06-18 16:12:57'),
(3, 'admin', 'admin@lacasa.com', NULL, NULL, NULL, '$2y$10$hK.eiBbbNJsfhenhnuiyBeyFG3YKJgspnP0uUsvFM33SXqZ2OPLd6', 'Z1qAnBEdT5U9Lbt9ZeIGEhrcu3ymbdtmS8iJ7lIUTo1XswlhqkiJXvEPaoQo', '2019-08-14 09:42:26', '2019-10-28 20:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(10) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `url`, `album_id`, `created_by`, `created_at`, `updated_at`) VALUES
(56, 'https://www.youtube.com/embed/4a7QzbWC2lg', 10, 3, '2021-07-15 12:49:55', '2021-07-15 12:49:55'),
(57, 'https://www.youtube.com/embed/rM-jpPAOCLw', 10, 3, '2021-07-15 12:50:16', '2021-07-15 12:50:16'),
(58, 'https://www.youtube.com/embed/rM-jpPAOCLw', 10, 3, '2021-07-15 12:50:37', '2021-07-15 12:50:37'),
(62, 'https://www.youtube.com/embed/2J7xlDH4QkA', 3, 3, '2021-07-26 07:03:03', '2021-07-26 07:03:03'),
(63, 'https://www.youtube.com/embed/2J7xlDH4QkA', 3, 3, '2021-07-26 07:03:31', '2021-07-26 07:03:31'),
(64, 'https://www.youtube.com/embed/BjrgUfNGpPY', 10, 3, '2021-07-26 07:03:57', '2021-07-26 07:03:57'),
(65, 'https://www.youtube.com/embed/GM9AhgBria4', NULL, 3, '2021-11-02 12:32:06', '2021-11-02 12:32:06'),
(66, 'https://www.youtube.com/embed/GM9AhgBria4', NULL, 3, '2021-11-02 12:32:45', '2021-11-03 11:24:07'),
(67, 'https://www.youtube.com/embed/GM9AhgBria4', NULL, 3, '2021-11-03 11:21:28', '2021-11-03 11:22:11'),
(68, 'https://www.youtube.com/embed/GM9AhgBria4', NULL, 3, '2021-11-03 11:22:46', '2021-11-03 11:22:46'),
(69, 'https://www.youtube.com/embed/GM9AhgBria4', NULL, 3, '2021-11-03 11:23:26', '2021-11-03 11:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `working_days`
--

CREATE TABLE `working_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `working_days`
--

INSERT INTO `working_days` (`id`, `branch_id`, `created_at`, `updated_at`) VALUES
(4, 1, '2019-12-16 11:30:54', '2019-12-16 11:30:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_image_id` (`image_id`),
  ADD KEY `mission_image_id` (`mission_image_id`),
  ADD KEY `vision_image_id` (`vision_image_id`),
  ADD KEY `values_image_id` (`values_image_id`),
  ADD KEY `approach_image_id` (`approach_image_id`),
  ADD KEY `goals_image_id` (`goals_image_id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_created_by_user` (`created_by`),
  ADD KEY `album_image_id` (`image_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_service_id` (`service_id`),
  ADD KEY `appointment_file_id` (`file_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `blog_open_graph_id` (`open_graph_id`),
  ADD KEY `blog_page_id` (`page_id`),
  ADD KEY `blog_created_by` (`created_by`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_client_images`
--
ALTER TABLE `branch_client_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_client_image` (`image_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_file_id` (`file_id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_image_id` (`image_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_page_id` (`page_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_image_id` (`image_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD KEY `hotel_images_id_fk` (`hotel_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_album_id` (`album_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_file_id` (`file_id`);

--
-- Indexes for table `open_graph`
--
ALTER TABLE `open_graph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `og_image_id` (`og_image`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_open_graph_id` (`open_graph_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_image_id` (`image_id`),
  ADD KEY `product_created_by` (`created_by`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD KEY `fk_product_pImages` (`product_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `same_as`
--
ALTER TABLE `same_as`
  ADD PRIMARY KEY (`id`),
  ADD KEY `same_as_created_by` (`created_by`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_created_by` (`created_by`),
  ADD KEY `service_icon` (`icon`),
  ADD KEY `service_image_id` (`image_id`),
  ADD KEY `parent_service_id` (`parent_service_id`),
  ADD KEY `service_video_id` (`video_id`),
  ADD KEY `service_open_graph_id` (`open_graph_id`),
  ADD KEY `service_page_id` (`page_id`),
  ADD KEY `service_form_id` (`form_id`);

--
-- Indexes for table `service_images`
--
ALTER TABLE `service_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_request`
--
ALTER TABLE `service_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_serviceR_product` (`service_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webiste_logo_image_id` (`logo`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_created_by` (`created_by`),
  ADD KEY `slide_image_id` (`image_id`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliderImages_slider_fk` (`slider_id`),
  ADD KEY `sliderImages_image_fk` (`image_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_created_by` (`created_by`),
  ADD KEY `team_image_id` (`image_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonial_created_by` (`created_by`),
  ADD KEY `tetsti_image_id` (`image_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `user_role_id` (`role_id`),
  ADD KEY `user_image_id` (`image_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_album_id` (`album_id`),
  ADD KEY `video_created_by` (`created_by`);

--
-- Indexes for table `working_days`
--
ALTER TABLE `working_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `working_branch_id` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branch_client_images`
--
ALTER TABLE `branch_client_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1946;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `open_graph`
--
ALTER TABLE `open_graph`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `same_as`
--
ALTER TABLE `same_as`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `service_images`
--
ALTER TABLE `service_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `service_request`
--
ALTER TABLE `service_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD CONSTRAINT `sliderImages_image_fk` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sliderImages_slider_fk` FOREIGN KEY (`slider_id`) REFERENCES `slider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
