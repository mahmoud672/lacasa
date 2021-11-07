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
-- Database: `lacasa_ar`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `about_id` int(10) NOT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approach` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goals` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_id`, `mission`, `vision`, `value`, `approach`, `goals`, `career`, `bio`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, '<ul>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام</p>\r\n	</li>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام</p>\r\n	</li>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام</p>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<p>مركز دكتور عصام لتجميل و زراعة الاسنان واحد من اكبر مراكز تجميل و زراعة الاسنان بالشرق الاوسط و ذلك كنتيجة طبيعية لخبرة تناهز ثلاثون عاما تواصلت في البحث و استقدام كل</p>\r\n	</li>\r\n	<li>\r\n	<p>ما هو جديد في عالم تكنولوجيا الاسنان مع تدعيمها بمجموعة من اهم استشاري و اعضاء هيئة التدريس باعرق جامعات في السعودية و الحاصلين علي اعلي الدرجات العلمية من الجامعات الاوربية لتقديم مستوي جديد</p>\r\n	</li>\r\n	<li>\r\n	<p>من الخدمات الطبية الغير مسبوقة و التي تتميز بالدقة المتناهية و اعلي نسب النجاح العالمية في جو من الحداثة و الاناقة و الراحة النفسية تحت قيادة واحد من اشهر اطباء الاسنان بالشرق الاوسط اخذ علي عاتقه</p>\r\n	</li>\r\n</ul>', '<p>Surfactants are substances with foaming, wetting, cleansing and solubilizing properties. Their function is to catch remains and impurities, which are then removed during rinsing. However, if they are too aggressive, surfactants can damage the hydrolipidic film of the skin. For example, Sodium Lauryl Sulfate (SLS) and Sodium Laureth Sulfate (SLES) are the most commonly used surfactants in cosmetics, but also those causing the greatest irritating effects and skin sensitisation. BioASM&reg; products are formulated with biodegradable, plant origin and sulfate-free (SLES and SLS) surfactants.</p>', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>', '<p>If you&rsquo;re great at what you do, enjoy making a difference and if you want to be a part of our world-class ethical business then we&rsquo;d love to hear from you.</p>\r\n\r\n<p>We are not offering jobs we are offering careers</p>\r\n\r\n<p>&nbsp;</p>', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>&raquo; عضو الجمعيه الأمريكيه لعلاج المياه البيضاء وعيوب الإبصار.</p>\r\n	</li>\r\n	<li>\r\n	<p>&raquo; عضو الجمعيه الاوروبيه لعلاج المياه البيضاء وتصحيح الإبصار.</p>\r\n	</li>\r\n	<li>\r\n	<p>&raquo; زميل المجلس العالمي لطب وجراحه العيون (كامبريدج).</p>\r\n	</li>\r\n	<li>\r\n	<p>عمل بمستشفيات(معهد بحوث أمراض العيون بالجيزه &ndash; مستشفيات المغربي للعيون &ndash; مستشفيات الشرطه )</p>\r\n	</li>\r\n</ul>', '<p>يستخدام الكومباكت HPL فى قواطيع الحمامات -ابواب الحمامات -فواصل المباول &ndash; دواليب النوادي وتركيب ابواب وقواطع دورات مياه toilet partition قواطع حمام HPL &mdash; قرص الترابيزات وقرص المكاتب -أسطح المكاتب والترابيزات والمستشفيات وغيرها يستخدام الكومباكت HPL فى قواطيع الحمامات -ابواب الحمامات -فواصل المباول &ndash; دواليب النوادي وتركيب ابواب وقواطع دورات مياه toilet partition قواطع حمام HPL &mdash; قرص الترابيزات وقرص المكاتب -أسطح المكاتب والترابيزات والمستشفيات وغيرها</p>', '2019-08-19 22:00:00', '2021-11-03 11:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(10) NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `album_id`, `title`, `created_at`, `updated_at`) VALUES
(3, 3, 'آراء العملاء', '2020-01-08 13:24:41', '2021-07-26 06:45:28'),
(10, 10, 'فيديوهات', '2021-02-16 13:23:41', '2021-02-16 13:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_id`, `title`, `sub_title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'first blog', NULL, '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab.</p>\r\n\r\n<p>main h4 header</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n</ul>', '2019-12-22 10:45:50', '2021-06-22 12:44:12'),
(2, 2, 'second blog', NULL, '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab.</p>\r\n\r\n<p>main h4 header</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n</ul>', '2019-12-22 10:46:41', '2021-06-22 12:44:22'),
(3, 3, 'third blog', NULL, '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab.</p>\r\n\r\n<p>main h4 header</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n</ul>', '2019-12-22 10:47:22', '2021-06-22 12:44:34'),
(4, 4, 'forth blog', NULL, '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero eveniet alias voluptatibus odit error eligendi placeat ducimus architecto nisi repellendus fugit aspernatur modi, non nostrum quas soluta numquam temporibus ab.</p>\r\n\r\n<p>main h4 header</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Blanditiis harum ea nemo velit vitae alias neque praesentium voluptates dolorum, id sint? Aliquid exercitationem eligendi pariatur enim similique incidunt quae quia.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '2019-12-22 10:48:00', '2021-06-22 12:44:45'),
(5, 5, 'first event', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,&nbsp;</p>', '2021-06-15 11:40:09', '2021-06-15 11:40:09'),
(6, 6, 'second event', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,&nbsp;</p>', '2021-06-15 11:41:34', '2021-06-15 11:41:34'),
(7, 7, 'third event', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,&nbsp;</p>', '2021-06-15 11:45:17', '2021-06-15 11:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch_id`, `name`, `address`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Melbourne Headquarters', '795 Folsom Ave, Suite 600 San Francisco, CA 94107', NULL, NULL, '2021-07-05 11:56:35'),
(7, 7, 'London Headquaters:', '795 Folsom Ave, Suite 600 San Francisco, CA 94107', NULL, '2021-05-20 08:01:12', '2021-07-05 11:56:59'),
(8, 8, 'Warehouse:', '795 Folsom Ave, Suite 600 San Francisco, CA 94107', NULL, '2021-07-05 11:38:13', '2021-07-05 11:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(10, 'منتجات نسائية', NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', '2020-01-18 01:58:58', '2021-02-17 09:07:36'),
(12, 'منتجات رجالي', NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', '2020-01-18 02:04:37', '2021-02-17 09:08:02'),
(13, 'منتجات أطفال', NULL, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.</p>', '2020-06-14 09:11:06', '2021-02-17 09:08:25'),
(14, 'face & beauty', NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.&nbsp;</p>', '2020-06-14 09:41:24', '2021-02-17 09:08:42'),
(15, 'first feminine category', NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', '2021-02-17 09:12:08', '2021-02-17 09:42:19'),
(16, 'second feminine category', NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', '2021-02-17 09:13:07', '2021-02-17 09:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_id`, `city_name`, `country_name`, `created_at`, `updated_at`) VALUES
(6, 8, 'مصر', NULL, '2020-01-05 15:17:53', '2020-01-05 15:17:53'),
(7, 9, 'الامارات العربية المتحدة', NULL, '2020-01-05 15:20:01', '2020-01-05 15:20:01'),
(8, 10, 'القاهرة', NULL, '2020-01-05 15:50:24', '2020-01-09 08:18:36'),
(9, 11, 'الجيزة', NULL, '2020-01-05 16:18:11', '2020-01-05 16:18:11'),
(10, 12, 'أبو ظبي', NULL, '2020-01-05 16:19:29', '2020-01-05 16:19:29'),
(11, 13, 'دبي', NULL, '2020-01-06 09:55:21', '2020-01-06 09:55:21'),
(12, 14, 'السعودية العربية', NULL, '2020-01-06 14:51:34', '2020-01-06 14:51:34'),
(13, 15, 'مكة المكرمة', NULL, '2020-01-06 14:53:09', '2020-01-06 14:53:09'),
(14, 16, 'المدينة المنورة', NULL, '2020-01-06 14:53:43', '2020-01-06 14:53:43'),
(15, 17, 'شرم الشيخ', NULL, '2020-01-09 10:41:34', '2020-01-09 10:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `name`, `description`, `button_text`) VALUES
(1, 'LESVI', NULL, NULL),
(2, 'Benedetti & Co', NULL, NULL),
(3, 'PSI', NULL, NULL),
(4, 'EKUBERG', NULL, NULL),
(5, 'Invent Farma', NULL, NULL),
(9, 'سامسونج', NULL, NULL),
(10, 'شيبسي', NULL, NULL),
(11, 'LG', NULL, NULL),
(12, 'مرسيديس', NULL, NULL),
(13, 'توشيبا', NULL, NULL),
(14, 'بيبسي', NULL, NULL),
(15, 'فورد', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `feature_id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'قياس مجاني', 'icon-icon5', '<p>لاكاسا للستائر والاقمشة.</p>', '2020-01-18 19:36:59', '2021-11-03 11:06:41'),
(2, 2, 'توجيه مجاني', 'icon-icon4', '<p>لاكاسا للستائر والاقمشة.</p>', '2020-01-18 19:44:59', '2021-11-03 11:07:32'),
(3, 3, 'متابعه مجانيه', 'icon-icon6', '<pre>\r\nلاكاسا للستائر والاقمشة.</pre>', '2020-01-18 19:46:09', '2021-11-03 11:08:19'),
(6, 7, 'افضل اسعار', 'fa fa-building-o', '<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, dolorum</p>\r\n\r\n<p>&nbsp;</p>', '2020-06-14 11:26:50', '2021-11-03 10:59:41'),
(10, 11, 'Pack & Load your Stuffs.', 'Contact Our Movers Specialist', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi deserunt doloremque facilis rem, in recusandae, vel.</p>', '2021-03-21 10:34:06', '2021-07-06 08:13:43'),
(11, 12, 'Deliver whenever you are Ready.', 'Contact Our Movers Specialist', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi deserunt doloremque facilis rem, in recusandae, vel.</p>', '2021-03-21 10:35:07', '2021-07-06 08:14:34'),
(12, 13, 'After you Share your Shifting details, Our Team will contact you.', 'Contact Our Movers Specialist', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi deserunt doloremque facilis rem, in recusandae, vel.</p>', '2021-03-21 10:35:52', '2021-07-06 08:14:54'),
(14, 15, 'Support', 'fas fa-cog', 'wastewater treatment Monitor functioning of plants and results of analysis Renew, optimizes and maintains networks for water and/or wastewater Enforce compliance', '2021-05-23 09:54:10', '2021-05-23 10:33:33'),
(15, 16, 'Safety', 'fas fa-user-shield', 'Perform all tasks related to the implementation and maintenance of best HS practices Develop Health & safety standards for the project and related .', '2021-05-23 10:30:57', '2021-05-23 10:30:57'),
(16, 17, 'Connect', 'fab fa-connectdevelop', 'Warranty period extension Software and communication services Local assistance (d/y or h/d) 24/7 telephone remote support 24/7 emergency on-call duty .', '2021-05-23 10:32:40', '2021-05-23 10:32:40'),
(17, 18, 'Quote', 'fas fa-quote-right', 'Warranty period extension Software and communication services Local assistance (d/y or h/d) 24/7 telephone remote support 24/7 emergency on-call duty .', '2021-05-23 10:34:42', '2021-05-23 10:34:42'),
(18, 19, 'اعلى جودة تصنيع وتصميم', 'fa fa-user', '<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, dolorum</p>', '2021-05-25 08:12:04', '2021-11-03 11:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `hotel_id`, `title`, `slug`, `description`, `details`, `created_at`, `updated_at`) VALUES
(2, 4, 'برنامج 1', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '2020-01-06 09:08:11', '2020-01-09 10:40:02'),
(3, 5, 'برنامج 2', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '2020-01-06 09:54:38', '2020-01-09 10:40:17'),
(4, 6, 'برنامج 3', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '2020-01-06 14:30:57', '2020-01-06 14:30:57'),
(5, 7, 'برنامج 4', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '2020-01-06 14:33:03', '2020-01-06 14:33:55'),
(6, 8, 'برنامج 5', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '2020-01-06 14:36:47', '2020-01-06 14:36:47'),
(7, 9, 'برنامج 6', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '2020-01-06 14:39:47', '2020-01-06 14:39:47'),
(8, 10, 'برنامج 7', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '2020-01-06 14:59:04', '2020-01-06 14:59:04'),
(9, 11, 'برنامج 8', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '<p>وريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '2020-01-08 07:40:55', '2020-01-08 07:40:55'),
(10, 12, 'برنامج 9', 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.</p>', '2020-01-09 10:45:45', '2020-01-09 10:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_id`, `title`, `slug`, `description`, `material`, `origin_country`, `created_at`, `updated_at`) VALUES
(13, 14, 'product1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', NULL, NULL, '2021-02-17 09:51:10', '2021-11-03 11:24:07'),
(14, 15, 'product2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', NULL, NULL, '2021-02-17 09:56:23', '2021-11-03 11:22:11'),
(15, 16, 'product3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>', NULL, NULL, '2021-02-17 11:35:17', '2021-11-03 11:22:46'),
(16, 17, 'product4', 'seat', '<p>seat</p>', NULL, NULL, '2021-04-13 09:39:24', '2021-11-03 11:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `project_id`, `client_name`, `contract_subject`, `capacity`, `created_at`, `updated_at`) VALUES
(1, 1, '6 thg', '<p>gbg</p>', 'gngngngnbg', '2021-05-06 13:03:41', '2021-05-06 13:03:41'),
(2, 2, 'df dfvdfv', '<p>dfg df</p>', 'fgbfb  fb f', '2021-05-09 08:27:52', '2021-05-09 10:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `service_id` int(10) NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_id`, `slug`, `title`, `description`, `second_title`, `second_description`, `third_title`, `third_description`, `created_at`, `updated_at`) VALUES
(12, 12, 'The Lorem Ipsum is simply dummy text of the composition and layout before printing. Lorem Ipsum has been the standard dummy text of printing since the 1500s,', 'service 1', '<ul>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n	<li>\r\n	<p>على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم على</p>\r\n	</li>\r\n</ul>', NULL, NULL, NULL, NULL, '2021-01-10 13:49:17', '2021-10-31 07:23:09'),
(13, 13, 'The Lorem Ipsum is simply dummy text of the composition and layout before printing. Lorem Ipsum has been the standard dummy text of printing since the 1500s,', 'service 2', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', NULL, NULL, NULL, NULL, '2021-01-10 13:52:01', '2021-10-31 07:23:22'),
(14, 14, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'service 3', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>', NULL, NULL, NULL, NULL, '2021-05-25 07:19:50', '2021-10-31 07:24:08'),
(15, 15, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'service 4', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>', NULL, NULL, NULL, NULL, '2021-05-25 07:21:27', '2021-10-31 07:24:54'),
(20, 20, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'جهاز هضمي', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>', NULL, NULL, NULL, NULL, '2021-06-08 09:10:31', '2021-06-22 12:36:52'),
(21, 21, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'غدد صماء', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>', NULL, NULL, NULL, NULL, '2021-06-08 09:12:37', '2021-06-22 12:37:39'),
(23, 23, 'lorem ipsum', 'service1 sub', '<p>lorem ipsum</p>', NULL, NULL, NULL, NULL, '2021-07-29 13:14:18', '2021-07-29 13:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `setting_id` int(10) NOT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `setting_id`, `website_name`, `website_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'La casa', 'بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قام هذا القرن مع إصدار رقائق', '2019-08-07 22:00:00', '2021-11-02 08:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) NOT NULL,
  `slide_id` int(10) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slide_id`, `title`, `sub_title`, `description`, `button`, `created_at`, `updated_at`) VALUES
(8, 8, 'Modern & Innovative', 'WE ARE CREATIVE', '<p>Serving all creative needs</p>', 'more', '2021-02-15 11:44:35', '2021-10-31 07:31:07'),
(9, 9, 'HELPING YOU MAKE AN IMPACT', NULL, '<p>We provide direction on maintaining and growing your market size.</p>', 'more', '2021-02-15 12:15:38', '2021-10-31 07:31:17'),
(10, 10, 'Modern & Innovative', NULL, '<p>We provide direction on maintaining and growing your market size.</p>', 'more', '2021-02-15 12:16:51', '2021-10-31 07:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `member_id`, `name`, `job_title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'دكتور محمد شعبان', 'مدير مشاريع تحلية المياه', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<ul>\r\n	<li>علاج الام العمود الفقرى</li>\r\n	<li>علاج الشوكة العظمية</li>\r\n	<li>علاج ألام الكتف</li>\r\n	<li>علاج ألام الصداع النصفى</li>\r\n	<li>علاج خشونة الركبة ووجع الركب والمفاصل</li>\r\n	<li>علاج ألام العصب الخامس</li>\r\n	<li>علاج ألام الرقبة</li>\r\n	<li>علاج الإنزلاق الغضروفى</li>\r\n</ul>', '2019-09-22 11:53:10', '2021-06-22 13:47:02'),
(2, 2, 'مهندس رجب ناجح', 'مدير مشاريع إمدادات الطاقة', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<ul>\r\n	<li>علاج الام العمود الفقرى</li>\r\n	<li>علاج الشوكة العظمية</li>\r\n	<li>علاج ألام الكتف</li>\r\n	<li>علاج ألام الصداع النصفى</li>\r\n	<li>علاج خشونة الركبة ووجع الركب والمفاصل</li>\r\n	<li>علاج ألام العصب الخامس</li>\r\n	<li>علاج ألام الرقبة</li>\r\n	<li>علاج الإنزلاق الغضروفى</li>\r\n</ul>', '2020-12-22 11:09:23', '2021-06-24 07:12:28'),
(3, 3, 'كيميائي/ محمد صبحي عبدالله', 'مدير مشاريع الاغراض الصناعية والزراعية', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<ul>\r\n	<li>علاج الام العمود الفقرى</li>\r\n	<li>علاج الشوكة العظمية</li>\r\n	<li>علاج ألام الكتف</li>\r\n	<li>علاج ألام الصداع النصفى</li>\r\n	<li>علاج خشونة الركبة ووجع الركب والمفاصل</li>\r\n	<li>علاج ألام العصب الخامس</li>\r\n	<li>علاج ألام الرقبة</li>\r\n	<li>علاج الإنزلاق الغضروفى</li>\r\n</ul>', '2020-12-22 11:19:40', '2021-06-24 07:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(10) NOT NULL,
  `testimonial_id` int(10) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `testimonial_id`, `username`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'رامي أحمد', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2019-12-22 12:52:25', '2021-04-14 07:27:22'),
(2, 2, 'Randa', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2019-12-22 12:53:03', '2021-04-14 07:27:31'),
(3, 3, 'Tita', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2020-01-08 07:20:29', '2021-04-14 07:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `working_days`
--

CREATE TABLE `working_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `working_days_id` int(10) UNSIGNED NOT NULL,
  `sat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sun` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tus` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wed` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thu` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_hrs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closing_days` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `working_days`
--

INSERT INTO `working_days` (`id`, `working_days_id`, `sat`, `sun`, `mon`, `tus`, `wed`, `thu`, `fri`, `working_time`, `working_hrs`, `closing_days`, `created_at`, `updated_at`) VALUES
(4, 4, '8 ص : 11 م', '8 ص : 11 م', '8 ص : 11 م', '8 ص : 11 م', '8 ص : 11 م', 'مغلق', 'مغلق', 'sun - Thur', '8Am - 6Pm', 'Fri - Sat', '2019-12-16 11:30:55', '2020-10-06 07:59:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_ar_id` (`about_id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id_ar` (`album_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id_ar` (`blog_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_ar_id` (`branch_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD KEY `fk_category_categoryAr` (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_city_id` (`city_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD KEY `fk_clientAr_client` (`client_id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_ar_parent` (`feature_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ar_id` (`product_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_ar_id` (`service_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_ar_id` (`setting_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_id_ar` (`slide_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_ar_id` (`member_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonial_id_ar` (`testimonial_id`);

--
-- Indexes for table `working_days`
--
ALTER TABLE `working_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `working_days_ar` (`working_days_id`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT for table `working_days`
--
ALTER TABLE `working_days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about`
--
ALTER TABLE `about`
  ADD CONSTRAINT `about_ar_id` FOREIGN KEY (`about_id`) REFERENCES `lacasa`.`about` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_id_ar` FOREIGN KEY (`album_id`) REFERENCES `lacasa`.`album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_id_ar` FOREIGN KEY (`blog_id`) REFERENCES `lacasa`.`blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ar_id` FOREIGN KEY (`branch_id`) REFERENCES `lacasa`.`branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_category_categoryAr` FOREIGN KEY (`category_id`) REFERENCES `lacasa`.`category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `lacasa`.`city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_clientAr_client` FOREIGN KEY (`client_id`) REFERENCES `lacasa`.`client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feature`
--
ALTER TABLE `feature`
  ADD CONSTRAINT `feature_ar_parent` FOREIGN KEY (`feature_id`) REFERENCES `lacasa`.`feature` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `lacasa`.`hotel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ar_id` FOREIGN KEY (`product_id`) REFERENCES `lacasa`.`product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ar_id` FOREIGN KEY (`service_id`) REFERENCES `lacasa`.`service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `setting`
--
ALTER TABLE `setting`
  ADD CONSTRAINT `setting_ar_id` FOREIGN KEY (`setting_id`) REFERENCES `lacasa`.`setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slider`
--
ALTER TABLE `slider`
  ADD CONSTRAINT `slider_ar_id` FOREIGN KEY (`slide_id`) REFERENCES `lacasa`.`slider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `member_ar_id` FOREIGN KEY (`member_id`) REFERENCES `lacasa`.`team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD CONSTRAINT `testimonial_id_ar` FOREIGN KEY (`testimonial_id`) REFERENCES `lacasa`.`testimonial` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `working_days`
--
ALTER TABLE `working_days`
  ADD CONSTRAINT `working_days_ar` FOREIGN KEY (`working_days_id`) REFERENCES `lacasa`.`working_days` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
