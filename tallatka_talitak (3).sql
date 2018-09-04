-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2018 at 07:49 AM
-- Server version: 5.6.40
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
-- Database: `tallatka_talitak`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `created_at`, `updated_at`) VALUES
(1, '*', 'جميع الصلاحيات', NULL, '*', 0, NULL, NULL),
(6, 'users_manage', 'ادارة المستخدمين', NULL, NULL, 0, '2018-03-22 07:42:41', '2018-03-22 07:42:41'),
(7, 'admin_manage', 'ادارة التطبيق', NULL, NULL, 0, '2018-03-22 07:42:41', '2018-03-22 07:42:41'),
(8, 'content_manage', 'ادارة المحتوى', NULL, NULL, 0, '2018-03-22 07:42:41', '2018-03-22 07:42:41'),
(9, 'setting_manage', 'الاعدادات', NULL, NULL, 0, '2018-03-22 07:42:41', '2018-03-22 07:42:41'),
(10, 'contact_manage', 'ادارة التواصل مع التطبيق', NULL, NULL, 0, '2018-03-22 07:42:41', '2018-03-22 07:42:41'),
(18, '*', NULL, NULL, NULL, 0, '2018-05-23 09:01:09', '2018-05-23 09:01:09'),
(19, 'orders_manage', 'ادارة الحجوزات', NULL, NULL, 0, '2018-03-22 07:42:41', '2018-03-22 07:42:41'),
(20, 'statistics_manage', 'مشاهدة الاحصائيات', NULL, NULL, 0, '2018-03-22 07:42:41', '2018-03-22 07:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `abuses`
--

CREATE TABLE `abuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `abuseable_id` int(11) NOT NULL,
  `abuseable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adopt` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abuses`
--

INSERT INTO `abuses` (`id`, `user_id`, `company_id`, `abuseable_id`, `abuseable_type`, `text`, `is_adopt`, `created_at`, `updated_at`) VALUES
(1, 4, 5, 1, 'App\\Comment', 'textttt', 1, '2018-03-19 22:00:00', '2018-05-23 12:58:34'),
(4, 25, 22, 2, 'App\\Comment', 'abuse reason', 1, '2018-04-05 05:54:29', '2018-06-04 12:24:32'),
(5, 80, 38, 81, 'App\\Comment', '', 1, '2018-04-23 14:58:46', '2018-05-27 09:56:42'),
(10, 80, 5, 3, 'App\\Comment', '', 1, '2018-04-29 10:34:07', '2018-05-24 08:05:27'),
(11, 80, 5, 166, 'App\\Comment', '', 1, '2018-05-27 12:35:09', '2018-06-19 08:39:56'),
(12, 80, 5, 166, 'App\\Comment', '', 0, '2018-05-27 12:35:24', '2018-05-27 12:35:24'),
(13, 80, 5, 1, 'App\\Comment', '', 0, '2018-05-27 12:35:35', '2018-05-27 12:35:35'),
(14, 80, 5, 166, 'App\\Comment', '', 0, '2018-05-27 12:36:15', '2018-05-27 12:36:15'),
(15, 80, 5, 166, 'App\\Comment', '', 0, '2018-05-27 13:01:24', '2018-05-27 13:01:24'),
(16, 82, 5, 166, 'App\\Comment', '', 0, '2018-05-27 13:02:36', '2018-05-27 13:02:36'),
(17, 80, 56, 165, 'App\\Comment', '', 0, '2018-05-30 11:48:59', '2018-05-30 11:48:59'),
(18, 107, 69, 170, 'App\\Comment', '', 1, '2018-06-05 09:32:56', '2018-06-05 09:33:19'),
(19, 106, 69, 170, 'App\\Comment', '', 0, '2018-06-05 09:36:43', '2018-06-18 21:49:15'),
(20, 130, 78, 177, 'App\\Comment', '', 1, '2018-06-27 14:47:11', '2018-06-27 14:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`role_id`, `entity_id`, `entity_type`) VALUES
(3, 85, 'App\\User'),
(3, 6, 'App\\User'),
(3, 84, 'App\\User'),
(1, 1, 'App\\User'),
(3, 136, 'App\\User'),
(10, 136, 'App\\User'),
(3, 137, 'App\\User'),
(10, 137, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `description_ar` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `target_gender` tinyint(4) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `description_ar`, `description_en`, `target_gender`, `parent_id`, `image`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'قص شعر', 'hair cute', 'وصف', 'description', 2, 0, 'http://tallatkapp.com/files/categories/1527062702.xWCm00yIWB576VehC9Fzdownload.jpg', 1, '2018-06-04 10:33:42', '2018-06-04 10:33:42', NULL),
(2, 'حجامة', 'hgama', 'وصف', 'description', 0, 0, 'http://tallatkapp.com/files/categories/1527062717.XfQqmOdU139tJBPHVHRWما_هي_فوائد_الحجامة_للرجال.jpg', 1, '2018-05-23 08:05:17', '2018-05-23 08:05:17', NULL),
(3, 'نوع خدمة 4', 'service type 4', 'وصف', 'description', 2, 0, 'http://localhost:8000/files/categories/1520840545.DDunjaocsvc5FmuGgWA7avatar.png', 1, '2018-05-20 07:58:00', '2018-05-20 07:58:00', '2018-05-20 07:58:00'),
(4, 'نوع خدمة يييي', 'service type 4', 'وصف', 'description', 2, 0, 'http://localhost:8000/files/categories/1520840545.DDunjaocsvc5FmuGgWA7avatar.png', 1, '2018-04-04 15:00:04', '2018-03-12 05:44:52', '2018-03-12 05:44:52'),
(5, 'نوع خدمة ببب', 'service type 4', 'وصف', 'description', 2, 0, 'http://localhost:8000/files/categories/1520840545.DDunjaocsvc5FmuGgWA7avatar.png', 1, '2018-04-04 15:00:07', '2018-03-12 05:44:52', '2018-03-12 05:44:52'),
(6, 'نوع خدمة صص', 'service type 4', 'وصف', 'description', 2, 0, 'http://localhost:8000/files/categories/1520840545.DDunjaocsvc5FmuGgWA7avatar.png', 1, '2018-04-04 15:00:10', '2018-03-12 05:44:52', '2018-03-12 05:44:52'),
(7, 'اسم الخدمة عربى', 'اسم الخدمة انجليزى', 'وصف الخدمة عربى', 'وصف الخدمة انجليزى', 0, 0, 'http://tallatkapp.com/files/categories/1523450530.nqsgQ2XbupZzrZkGDLy9Screenshot (6).png', 1, '2018-05-09 14:12:41', '2018-05-09 14:12:41', '2018-05-09 14:12:41'),
(8, 'تصفيف شعر', 'hair dressing', 'test', 'tset', 2, 0, 'http://tallatkapp.com/files/categories/1527062731.3nufk7S1fEkd3P0pWMow1.jpg_640x640.jpg', 1, '2018-06-04 10:35:20', '2018-06-04 10:35:20', NULL),
(9, 'test', 'test', 'test', 'test', 0, 0, 'http://tallatkapp.com/files/categories/1527069805.sziXK1PP82S9fXX8yiVMtest pic.jpg', 1, '2018-05-27 13:12:45', '2018-05-27 13:12:45', '2018-05-27 13:12:45'),
(10, 'اختبار', 'test', 'test', 'test', 0, 0, 'http://tallatkapp.com/files/categories/1527426662.GRdWIOOvPmWXjjNLQVIwtest pic.jpg', 1, '2018-05-27 13:12:34', '2018-05-27 13:12:34', '2018-05-27 13:12:34'),
(11, 'test', 'test', 'test', 'test', 0, 0, 'http://tallatkapp.com/files/categories/1528106168.tAja5XkaeF5U7qSKeplJtest pic.jpg', 1, '2018-06-04 10:34:14', '2018-06-04 10:34:14', '2018-06-04 10:34:14'),
(12, 'test', 'test', 'test', 'test', 2, 0, 'http://tallatkapp.com/files/categories/1528274654.VbGZOzRxsvBvkV2PhIKrabstract-dark-blue-polygonal-b', 0, '2018-06-07 02:31:40', '2018-06-07 02:31:40', '2018-06-07 02:31:40'),
(13, 'تركيب عدسات', 'تركيب عدسات', 'تركيب عدسات', 'تركيب عدسات', 1, 0, 'http://tallatkapp.com/files/categories/1535463162.ciGMFqaxd8jyEgAiKT3eعدسات-لاصقة.jpg', 1, '2018-08-28 13:32:43', '2018-08-28 13:32:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` enum('home','center') COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` enum('person','center') COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, '2018-03-07 10:47:18', '2018-03-08 09:22:32', NULL),
(4, 1, '2018-03-07 10:55:32', '2018-03-08 09:33:50', '2018-03-08 09:33:50'),
(5, 1, '2018-03-07 10:59:12', '2018-03-08 09:21:40', '2018-03-08 09:21:40'),
(6, 1, '2018-03-08 09:52:42', '2018-03-08 09:52:42', NULL),
(14, 1, '2018-06-04 04:19:57', '2018-06-04 04:19:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `name`, `city_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'poiujhgfd', 1, 'administrator', NULL, NULL),
(2, 'مكه', 2, 'ar', NULL, NULL),
(3, 'uuuuuuu', 3, 'administrator', NULL, NULL),
(4, 'jedda', 4, 'en', NULL, NULL),
(5, 'حائل', 5, 'ar', NULL, NULL),
(6, '7ael', 5, 'en', NULL, NULL),
(7, 'makka', 2, 'en', NULL, NULL),
(8, 'جدة', 4, 'ar', NULL, NULL),
(9, 'الرياض', 6, 'ar', NULL, NULL),
(10, 'elryad', 6, 'en', NULL, NULL),
(11, 'مدينة', 7, 'ar', NULL, NULL),
(12, 'city', 7, 'en', NULL, NULL),
(13, 'المدينة', 8, 'ar', NULL, NULL),
(14, 'medina', 8, 'en', NULL, NULL),
(15, 'k', 9, 'ar', NULL, NULL),
(16, 'l', 9, 'en', NULL, NULL),
(17, 'seattle', 10, 'ar', NULL, NULL),
(18, 'سياتل', 10, 'en', NULL, NULL),
(19, 'seattle', 11, 'ar', NULL, NULL),
(20, 'سياتل', 11, 'en', NULL, NULL),
(21, '22 test', 12, 'ar', NULL, NULL),
(22, 'test 22', 12, 'en', NULL, NULL),
(23, 'test', 13, 'ar', NULL, NULL),
(24, 'test', 13, 'en', NULL, NULL),
(31, 'الدمام', 14, 'ar', NULL, NULL),
(32, 'dmam', 14, 'en', NULL, NULL),
(33, 'test', 15, 'ar', NULL, NULL),
(34, 'test', 15, 'en', NULL, NULL),
(35, 'test', 16, 'ar', NULL, NULL),
(36, 'test', 16, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `commentable_id` bigint(20) NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `is_approve` tinyint(4) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `user_id`, `commentable_id`, `commentable_type`, `comment`, `is_active`, `is_approve`, `is_suspend`, `created_at`, `updated_at`) VALUES
(1, 0, 27, 5, 'App\\Company', 'First Comment', 1, 0, 1, '2018-02-12 05:29:21', '2018-05-24 12:35:49'),
(2, 0, 4, 22, 'App\\Company', 'First \r\n second Comment', 0, 0, 1, '2018-02-12 05:27:49', '2018-03-26 10:04:22'),
(5, 0, 27, 2, 'App\\Company', 'First Comment', 0, 0, 0, '2018-02-12 05:29:27', '2018-02-12 05:29:27'),
(6, 0, 27, 2, 'App\\Company', 'First Comment', 1, 0, 0, '2018-02-12 05:30:43', '2018-02-12 05:30:43'),
(7, 0, 27, 2, 'App\\Company', 'First Comment', 1, 0, 0, '2018-02-12 05:31:15', '2018-02-12 05:31:15'),
(8, 0, 27, 2, 'App\\Company', 'First Comment', 0, 0, 0, '2018-02-12 05:31:34', '2018-02-12 05:31:34'),
(9, 0, 27, 3, 'App\\Company', 'First Comment', 1, 0, 0, '2018-02-12 05:31:46', '2018-02-12 05:31:46'),
(10, 0, 27, 1, 'App\\Company', 'comment from a', 1, 0, 0, '2018-02-14 10:29:08', '2018-04-23 11:20:00'),
(11, 0, 27, 1, 'App\\Company', 'First Comment', 0, 0, 0, '2018-02-14 10:31:25', '2018-02-14 10:31:25'),
(12, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:05:43', '2018-02-28 13:05:43'),
(13, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:06:31', '2018-02-28 13:06:31'),
(14, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:06:56', '2018-02-28 13:06:56'),
(15, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:08:12', '2018-02-28 13:08:12'),
(16, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:08:37', '2018-02-28 13:08:37'),
(17, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:10:04', '2018-02-28 13:10:04'),
(18, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:12:03', '2018-02-28 13:12:03'),
(19, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:12:32', '2018-02-28 13:12:32'),
(20, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:14:29', '2018-02-28 13:14:29'),
(21, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:15:21', '2018-02-28 13:15:21'),
(22, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:16:04', '2018-02-28 13:16:04'),
(23, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:16:50', '2018-02-28 13:16:50'),
(24, 0, 26, 1, 'App\\Company', 'Comment Here...00...', 1, 0, 0, '2018-02-28 13:17:14', '2018-02-28 13:17:14'),
(25, 0, 26, 1, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 05:32:23', '2018-03-01 05:32:23'),
(26, 0, 26, 1, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 05:36:07', '2018-03-01 05:36:07'),
(27, 0, 26, 1, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 05:36:37', '2018-03-01 05:36:37'),
(28, 0, 26, 1, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 05:37:53', '2018-03-01 05:37:53'),
(30, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 05:38:54', '2018-03-01 05:38:54'),
(31, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 05:59:29', '2018-03-01 05:59:29'),
(32, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:00:06', '2018-03-01 06:00:06'),
(33, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:02:06', '2018-03-01 06:02:06'),
(34, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:39:41', '2018-03-01 06:39:41'),
(36, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:45:00', '2018-03-01 06:45:00'),
(37, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:45:22', '2018-03-01 06:45:22'),
(38, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:45:36', '2018-03-01 06:45:36'),
(39, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:45:43', '2018-03-01 06:45:43'),
(40, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:46:32', '2018-03-01 06:46:32'),
(41, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:48:12', '2018-03-01 06:48:12'),
(42, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:48:26', '2018-03-01 06:48:26'),
(43, 0, 26, 2, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:48:37', '2018-03-01 06:48:37'),
(44, 0, 26, 1, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:49:36', '2018-03-01 06:49:36'),
(45, 0, 26, 1, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:49:58', '2018-03-01 06:49:58'),
(46, 0, 26, 1, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 06:50:29', '2018-03-01 06:50:29'),
(47, 0, 1, 1, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 07:21:45', '2018-03-01 07:21:45'),
(48, 0, 1, 1, 'App\\Company', 'Comment Here', 1, 0, 0, '2018-03-01 07:22:51', '2018-03-01 07:22:51'),
(49, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:06:18', '2018-03-01 08:06:18'),
(50, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:08:37', '2018-03-01 08:08:37'),
(51, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:09:21', '2018-03-01 08:09:21'),
(52, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:10:01', '2018-03-01 08:10:01'),
(53, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:10:15', '2018-03-01 08:10:15'),
(54, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:16:08', '2018-03-01 08:16:08'),
(55, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:16:23', '2018-03-01 08:16:23'),
(56, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:17:25', '2018-03-01 08:17:25'),
(57, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:18:02', '2018-03-01 08:18:02'),
(58, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:18:19', '2018-03-01 08:18:19'),
(59, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:18:57', '2018-03-01 08:18:57'),
(60, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:19:12', '2018-03-01 08:19:12'),
(61, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:23:30', '2018-03-01 08:23:30'),
(62, 0, 1, 1, 'App\\Company', 'Comment Here 03', 1, 0, 0, '2018-03-01 08:24:10', '2018-03-01 08:24:10'),
(63, 0, 25, 2, 'App\\Company', 'Comment Here 04', 1, 0, 0, '2018-03-04 10:16:27', '2018-03-04 10:16:27'),
(64, 0, 25, 2, 'App\\Company', 'Comment Here 04', 1, 0, 0, '2018-03-04 10:16:55', '2018-03-04 10:16:55'),
(65, 0, 25, 2, 'App\\Company', 'Comment Here 04', 1, 0, 0, '2018-03-04 10:26:02', '2018-03-04 10:26:02'),
(66, 0, 1, 30, 'App\\Company', 'comment text', 1, 0, 0, '2018-03-28 06:40:50', '2018-03-28 06:40:50'),
(67, 0, 1, 30, 'App\\Company', 'comment body', 1, 0, 0, '2018-03-28 06:41:54', '2018-03-28 06:41:54'),
(68, 0, 1, 30, 'App\\Company', 'comment body', 1, 0, 0, '2018-03-28 07:03:41', '2018-03-28 07:03:41'),
(71, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-02 09:26:39', '2018-04-02 09:26:39'),
(72, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-05 06:07:11', '2018-04-05 06:07:11'),
(74, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-23 04:23:34', '2018-04-23 04:23:34'),
(75, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-23 04:23:47', '2018-04-23 04:23:47'),
(76, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-23 04:25:03', '2018-04-23 04:25:03'),
(77, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-23 04:25:09', '2018-04-23 04:25:09'),
(78, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-23 04:25:48', '2018-04-23 04:25:48'),
(79, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-23 04:28:16', '2018-04-23 04:28:16'),
(83, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-23 09:08:33', '2018-04-23 09:08:33'),
(84, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-23 09:12:27', '2018-04-23 09:12:27'),
(85, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-23 09:21:15', '2018-04-23 09:21:15'),
(87, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-25 10:27:11', '2018-04-25 10:27:11'),
(88, 0, 37, 30, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-25 10:28:35', '2018-04-25 10:28:35'),
(89, 0, 37, 38, 'App\\Company', 'comment from me', 1, 0, 0, '2018-04-25 10:29:07', '2018-04-25 10:29:07'),
(92, 0, 80, 45, 'App\\Company', 'Hddggg', 1, 0, 0, '2018-04-28 02:52:22', '2018-04-29 10:13:11'),
(131, 0, 80, 38, 'App\\Company', 'gggh', 1, 0, 0, '2018-05-03 12:20:06', '2018-05-03 12:21:15'),
(132, 0, 80, 38, 'App\\Company', 'uu', 1, 0, 0, '2018-05-03 12:24:29', '2018-05-03 12:24:29'),
(133, 0, 82, 56, 'App\\Company', 'Test', 1, 0, 0, '2018-05-09 11:21:55', '2018-05-09 11:21:55'),
(134, 0, 82, 56, 'App\\Company', 'Test', 1, 0, 0, '2018-05-09 11:22:28', '2018-05-09 11:22:28'),
(135, 0, 82, 56, 'App\\Company', 'Tttt', 1, 0, 0, '2018-05-09 11:23:00', '2018-05-09 11:23:00'),
(136, 0, 82, 56, 'App\\Company', 'Tgfff', 1, 0, 0, '2018-05-09 11:23:14', '2018-05-09 11:23:14'),
(137, 0, 82, 56, 'App\\Company', 'Hhhh', 1, 0, 0, '2018-05-09 11:24:54', '2018-05-09 11:24:54'),
(138, 0, 82, 56, 'App\\Company', 'Hgff', 1, 0, 0, '2018-05-09 11:25:26', '2018-05-09 11:25:26'),
(139, 0, 82, 56, 'App\\Company', 'Gfhcj', 1, 0, 0, '2018-05-09 11:29:25', '2018-05-09 11:29:25'),
(140, 0, 82, 56, 'App\\Company', 'Dydy', 1, 0, 0, '2018-05-09 11:30:02', '2018-05-09 11:30:02'),
(141, 0, 82, 56, 'App\\Company', 'Comment', 1, 0, 0, '2018-05-09 11:30:44', '2018-05-09 11:30:44'),
(142, 0, 82, 56, 'App\\Company', 'Chdhud', 1, 0, 0, '2018-05-09 11:33:38', '2018-05-09 11:33:38'),
(143, 0, 82, 56, 'App\\Company', 'Djdhdhdhsy', 1, 0, 0, '2018-05-09 11:35:00', '2018-05-09 11:35:00'),
(144, 0, 82, 56, 'App\\Company', 'Hhhh', 1, 0, 0, '2018-05-09 11:35:10', '2018-05-09 11:35:10'),
(145, 0, 82, 56, 'App\\Company', 'Cnfhd', 1, 0, 0, '2018-05-09 11:35:22', '2018-05-09 11:35:22'),
(146, 0, 82, 56, 'App\\Company', 'Cndhd', 1, 0, 0, '2018-05-09 11:37:17', '2018-05-09 11:37:17'),
(147, 0, 82, 56, 'App\\Company', 'Drfg', 1, 0, 0, '2018-05-09 11:37:30', '2018-05-09 11:37:30'),
(148, 0, 82, 56, 'App\\Company', 'Gvvf', 1, 0, 0, '2018-05-09 11:38:28', '2018-05-09 11:38:28'),
(149, 0, 82, 56, 'App\\Company', 'Ggff', 1, 0, 0, '2018-05-09 11:46:07', '2018-05-09 11:46:07'),
(150, 0, 82, 56, 'App\\Company', 'Gvf', 1, 0, 0, '2018-05-09 11:52:48', '2018-05-09 11:52:48'),
(151, 0, 82, 56, 'App\\Company', 'Bbbb', 1, 0, 0, '2018-05-09 11:58:48', '2018-05-09 11:58:48'),
(152, 0, 82, 56, 'App\\Company', 'Hhh', 1, 0, 0, '2018-05-09 13:11:19', '2018-05-09 13:11:19'),
(153, 0, 82, 56, 'App\\Company', 'Vggh', 1, 0, 0, '2018-05-09 13:11:57', '2018-05-09 13:11:57'),
(154, 0, 82, 56, 'App\\Company', 'Ggg', 1, 0, 0, '2018-05-09 13:12:13', '2018-05-09 13:12:13'),
(155, 0, 82, 56, 'App\\Company', 'Bbv', 1, 0, 0, '2018-05-09 13:14:22', '2018-05-09 13:14:22'),
(156, 0, 82, 56, 'App\\Company', 'Juu', 1, 0, 0, '2018-05-09 13:14:45', '2018-05-09 13:14:45'),
(157, 0, 82, 56, 'App\\Company', 'Hgggg', 1, 0, 0, '2018-05-09 13:43:51', '2018-05-09 13:43:51'),
(158, 0, 82, 56, 'App\\Company', 'Vvc', 1, 0, 0, '2018-05-09 13:45:17', '2018-05-09 13:45:17'),
(159, 0, 82, 56, 'App\\Company', 'Hchc', 1, 0, 0, '2018-05-09 13:59:35', '2018-05-09 13:59:35'),
(160, 0, 82, 56, 'App\\Company', 'Hchc', 1, 0, 0, '2018-05-09 13:59:41', '2018-05-09 13:59:41'),
(161, 0, 82, 56, 'App\\Company', 'Hchc', 1, 0, 0, '2018-05-09 13:59:50', '2018-05-09 13:59:50'),
(162, 0, 82, 56, 'App\\Company', 'Hchc', 1, 0, 0, '2018-05-09 13:59:59', '2018-05-09 13:59:59'),
(163, 0, 82, 56, 'App\\Company', 'Hchc', 1, 0, 0, '2018-05-09 14:00:33', '2018-05-09 14:00:33'),
(164, 0, 82, 56, 'App\\Company', 'Test', 1, 0, 0, '2018-05-16 08:50:18', '2018-05-16 08:50:18'),
(165, 0, 82, 56, 'App\\Company', 'Test', 1, 0, 0, '2018-05-21 08:21:33', '2018-05-21 08:21:33'),
(167, 0, 80, 5, 'App\\Company', 'Test', 1, 0, 0, '2018-05-27 09:37:53', '2018-05-27 09:37:53'),
(168, 0, 92, 69, 'App\\Company', 'طلتك', 1, 0, 0, '2018-05-30 13:05:38', '2018-05-30 13:05:38'),
(169, 0, 107, 69, 'App\\Company', 'Test', 1, 0, 0, '2018-05-31 09:44:12', '2018-05-31 09:44:12'),
(170, 0, 80, 69, 'App\\Company', 'Vhghghg', 1, 0, 1, '2018-05-31 14:02:26', '2018-06-05 09:34:29'),
(171, 0, 107, 69, 'App\\Company', 'Hi', 1, 0, 0, '2018-06-06 11:58:49', '2018-06-06 11:58:49'),
(172, 0, 107, 69, 'App\\Company', 'Test', 1, 0, 0, '2018-06-10 09:48:43', '2018-06-10 09:48:43'),
(173, 0, 129, 69, 'App\\Company', 'Hello', 1, 0, 0, '2018-06-12 10:48:12', '2018-06-12 10:48:12'),
(174, 0, 129, 56, 'App\\Company', 'Khhh', 1, 0, 0, '2018-06-13 12:29:00', '2018-06-13 12:29:00'),
(175, 0, 129, 78, 'App\\Company', 'Hi', 1, 0, 0, '2018-06-26 13:15:33', '2018-06-26 13:15:33'),
(176, 0, 129, 78, 'App\\Company', 'Hello', 1, 0, 0, '2018-06-26 13:28:39', '2018-06-26 13:28:39'),
(178, 0, 129, 78, 'App\\Company', 'Test test test test', 1, 0, 0, '2018-06-28 13:57:55', '2018-06-28 13:57:55'),
(179, 0, 129, 80, 'App\\Company', 'Gggh', 1, 0, 0, '2018-08-12 12:20:33', '2018-08-12 12:20:33'),
(180, 0, 129, 80, 'App\\Company', 'Hhhh', 1, 0, 0, '2018-08-12 12:20:39', '2018-08-12 12:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `nameAr` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` int(11) DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `document_photo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_rate` tinyint(1) NOT NULL DEFAULT '1',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `city_id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_agree` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `visits_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `user_id`, `nameAr`, `is_comment`, `category_id`, `phone`, `place`, `type`, `document_photo`, `is_rate`, `description`, `city_id`, `district_id`, `address`, `facebook`, `twitter`, `google`, `lat`, `lng`, `is_agree`, `is_active`, `created_at`, `updated_at`, `image`, `visits_count`) VALUES
(5, '', 4, 'inas', 1, 2, '', 0, 1, '1522246227.JIhZBs4BTrRPFSpUxY7fScreenshot (27).png', 1, '1212312312312123123123123223123', 2, 0, '', '', '', '', '', '', 0, 0, '2018-02-21 06:08:04', '2018-06-28 12:34:09', '1522246228.a6sJiKEM6vJHOcCKUptIScreenshot (6).png', 0),
(6, '', 45, '', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 6, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 1, 1, '2018-03-04 10:56:33', '2018-03-11 11:32:19', '1518533327.6z8IONXf9r5ecenO18kLpark-new-york-city-nyc-manhattan-162024.jpeg', NULL),
(8, '', 47, '', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 1, 1, '2018-03-04 10:59:46', '2018-03-12 09:37:00', '1518533327.6z8IONXf9r5ecenO18kLpark-new-york-city-nyc-manhattan-162024.jpeg', NULL),
(9, '', 48, '', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 0, 1, '2018-03-04 11:02:10', '2018-03-11 07:27:32', '1518533327.6z8IONXf9r5ecenO18kLpark-new-york-city-nyc-manhattan-162024.jpeg', NULL),
(10, '', 49, '', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 0, 1, '2018-03-04 11:07:55', '2018-03-11 07:27:32', '1518533327.6z8IONXf9r5ecenO18kLpark-new-york-city-nyc-manhattan-162024.jpeg', NULL),
(11, '', 53, '', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 0, 1, '2018-03-04 11:20:58', '2018-03-11 07:27:32', NULL, NULL),
(12, '', 54, '', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 0, 1, '2018-03-04 11:22:21', '2018-03-11 07:27:32', NULL, NULL),
(13, '', 55, '', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 0, 1, '2018-03-04 11:23:54', '2018-03-11 07:27:32', NULL, NULL),
(14, '', 56, '', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 0, 1, '2018-03-04 11:29:51', '2018-03-11 07:27:32', NULL, NULL),
(15, '', 57, '', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 1, 1, '2018-03-04 11:44:58', '2018-05-09 09:22:45', NULL, NULL),
(16, '', 58, 'سند', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 0, 1, '2018-03-04 12:07:41', '2018-03-11 07:27:32', NULL, NULL),
(17, '', 59, 'سند', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 1, 1, '2018-03-04 12:37:42', '2018-05-23 08:15:47', NULL, NULL),
(18, '', 60, 'سند', 0, 1, '', 0, 1, '1523701243.ZKqFX2unMmzk9qM98bOfsecondaryLogo.png', 0, '1212312312312123123123123223123', 1, 1, 'sa', NULL, NULL, NULL, '22.2222222', '21.11111111111111', 0, 1, '2018-03-04 12:40:01', '2018-04-14 07:20:43', NULL, NULL),
(19, '', 61, 'سند', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 0, 1, '2018-03-04 12:42:06', '2018-03-11 07:27:33', NULL, NULL),
(20, '', 15, 'سند', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '12.3566', '6565', 0, 1, '2018-03-04 12:43:17', '2018-03-11 07:27:33', NULL, NULL),
(21, '', 12, 'سند', 0, 1, '', 0, 0, '', 0, '1212312312312123123123123223123', 1, NULL, 'Address Here', NULL, NULL, NULL, '', '', 1, 0, '2018-03-04 12:43:17', '2018-04-27 14:58:06', NULL, 22),
(22, '', 21, 'سند', 1, 1, '', 0, 0, '', 1, 'description description description', 2, NULL, '', '', '', '', '', '', 0, 0, '2018-03-25 08:27:10', '2018-03-25 08:27:10', NULL, NULL),
(23, '', 22, 'سند', 1, 1, '', 0, 0, '', 1, 'description description description', 2, NULL, '', '', '', '', '', '', 0, 0, '2018-03-25 08:30:52', '2018-03-25 08:30:52', NULL, NULL),
(24, '', 23, 'سند', 1, 1, '', 0, 0, '1521974006PVsV8C5S9AxiqEbZAsxb.png', 1, 'description description description', 2, NULL, '', '', '', '', '', '', 1, 0, '2018-03-25 08:33:26', '2018-03-25 09:32:07', '1521974006XjtascdlkYHvLaU8udf7.png', NULL),
(25, '', 24, 'سند', 1, 1, '', 0, 0, '1521977481HYAtlTY2U99kpLtqe9I4.png', 1, 'description description description', 2, NULL, '', '', '', '', '', '', 1, 0, '2018-03-25 09:31:21', '2018-03-25 09:32:22', '1521977481ZM9dKObhal2gqKwaMsRd.png', NULL),
(26, '', 25, 'سند', 1, 1, '', 0, 0, '1521978725DZ6jiioIH0lpyHeOBsh6.png', 1, 'description description description', 2, NULL, '', '', '', '', '', '', 0, 0, '2018-03-25 09:52:05', '2018-03-25 09:52:05', '1521978725ooOxwKGkHIVQbYSZrzof.png', NULL),
(27, '', 28, 'سند', 1, 1, '', 0, 0, '1521985639RI6hI1uxLc5MwbYjlaTN.png', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-03-25 11:47:19', '2018-03-25 11:47:19', '15219856399szL0gqt38YPsScEaFVf.png', NULL),
(28, '', 29, 'سند', 1, 1, '', 0, 0, '15219857992WRzLTs5NOeUAUrU4AgK.png', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-03-25 11:49:59', '2018-03-25 11:49:59', '1521985799XtDmTvuiPg95C2IqBzck.png', NULL),
(29, '', 30, 'سند', 1, 1, '', 0, 0, '1522057621xUOdeJzSaDVrHr6BVgKn.png', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-03-26 07:47:01', '2018-07-03 23:51:42', '1522057621eJFJgddlbo31ksskvb1B.png', 2),
(30, '', 31, 'اسم المركز ar ar', 1, 1, '', 0, 1, '', 1, NULL, 1, 1, '', '', '', '', '', '', 0, 0, '2018-03-26 10:01:23', '2018-05-29 12:12:16', '1522065683doSUkAlUbFXxDHhX8kpv.png', 11),
(31, '', 32, 'اينو', 1, 1, '', 0, 0, '', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-03-28 06:50:47', '2018-04-14 06:05:05', '1522227047i3xuFbRdmwNsxuP3vc8b.png', 1),
(32, '', 35, 'اينو', 1, 1, '', 0, 0, '', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-03-28 06:57:11', '2018-03-28 06:57:11', '152222743184VtoSoxtkQjkGabCSEO.png', NULL),
(33, '', 36, 'اينو', 1, 1, '', 0, 0, '', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-03-28 07:01:02', '2018-03-28 07:01:02', '1522227662p9k0bkZFtmdfzJUdONs8.png', NULL),
(34, '', 37, 'اينو', 1, 1, '', 0, 0, '', 1, NULL, 2, NULL, '', '', '', '', '', '', 1, 0, '2018-03-28 07:02:11', '2018-07-29 13:30:08', '1522227731H3XeewlwXJvzbUyYjvBY.png', 14),
(35, '', 40, 'اينو', 1, 1, '', 0, 0, '1522668539.Zdcc4f8SkP8CldpckBzAScreenshot (7).png', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-02 08:28:59', '2018-04-02 08:28:59', '1522668539.7ZbMuf71srgmF3P9PiKXScreenshot (3).png', NULL),
(36, '', 41, 'اينو', 1, 1, '', 0, 0, '1522679419.aIIuuZuvKLjbglhAJ9VvScreenshot (7).png', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-02 11:30:20', '2018-04-02 11:30:20', '1522679420.znUtd6gH4CqK62gAn99YScreenshot (3).png', NULL),
(37, '', 42, 'ahmad2', 1, 1, '', 0, 0, '1522679492.0D36SNO30jQxoEwFLv92Screenshot (7).png', 1, NULL, 2, 1, '', '', '', '', '', '', 0, 0, '2018-04-02 11:31:33', '2018-04-02 11:31:33', '1522679493.HbEFdu1pJJhGCwp6BAZRScreenshot (3).png', NULL),
(38, '', 43, 'اينو', 1, 1, '', 0, 1, '1522679560.luP66tlxkolQ0vJ7pV4xScreenshot (7).png', 1, NULL, 2, 1, '', '', '', '', '', '', 1, 0, '2018-04-02 11:32:41', '2018-04-04 07:06:30', '1522679561.NBMRiejOU0r7z0e586pnScreenshot (3).png', NULL),
(39, '', 48, 'اينو', 1, 1, '', 0, 1, '', 1, NULL, 2, 1, '', '', '', '', '', '', 0, 0, '2018-04-05 04:19:48', '2018-04-05 04:19:48', NULL, NULL),
(40, '', 60, NULL, 1, NULL, '', 0, 1, '', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-11 10:03:33', '2018-04-11 10:03:33', NULL, NULL),
(41, '', 61, NULL, 1, NULL, '', 0, 0, '1523452504.b9gLmQokqr4jVoDXnBGKimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-11 10:15:04', '2018-04-11 10:15:04', NULL, NULL),
(42, '', 62, NULL, 1, NULL, '', 0, 0, '1523453744.MbgxXqJJWchrxX4ERnvGimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-11 10:35:44', '2018-04-11 10:35:44', NULL, NULL),
(43, '', 63, NULL, 1, NULL, '', 0, 0, '1523455022.NAcXvN1jJLHyftqOnzlAimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-11 10:57:02', '2018-04-11 10:57:02', NULL, NULL),
(44, '', 64, NULL, 1, NULL, '', 0, 1, '1523455588.a1u4w95PO9ar9gl8SDsIimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-11 11:06:28', '2018-04-11 11:06:28', NULL, NULL),
(45, '', 65, '', 1, NULL, '', 0, 1, '', 1, NULL, 2, NULL, '', '', '', '', '', '', 1, 0, '2018-04-11 11:18:04', '2018-04-11 11:53:49', NULL, NULL),
(46, '', 67, '', 1, NULL, '', 0, 0, '1523525183.FqNvCUgfVFWFCfcFQLkiimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-12 06:26:23', '2018-04-12 06:26:23', NULL, NULL),
(47, '', 68, '', 1, NULL, '', 0, 1, '1523525559.EvpTCqXS69mkygyquLcDimage.jpg', 1, NULL, 2, NULL, 'Mansoura Qism 2, Mansoura, Dakahlia Governorate, Egypt', '', '', '', '31.0349789', '31.3577944', 0, 0, '2018-04-12 06:32:39', '2018-04-14 06:41:46', NULL, NULL),
(48, '', 71, '', 1, NULL, '', 0, 1, '1523535990.AL2caC9wZe1zPsQWoUvfScreenshot (11).png', 1, NULL, 1, NULL, '', '', '', '', '', '', 0, 0, '2018-04-12 09:26:30', '2018-04-12 09:26:30', '1523535990.wQxgQgtfrPvTHCipjqMjScreenshot (3).png', NULL),
(49, '', 72, '', 1, NULL, '', 0, 1, '', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-14 06:55:26', '2018-04-14 06:55:26', NULL, NULL),
(50, '', 73, '', 1, NULL, '', 0, 1, '', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-14 06:55:46', '2018-04-14 06:55:46', NULL, NULL),
(51, '', 74, '', 1, NULL, '', 0, 1, '1523704278.0XiJwu0MBMJe9F9mL4O2image.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-14 08:11:18', '2018-04-14 08:11:18', NULL, NULL),
(52, '', 75, '', 1, NULL, '', 0, 0, '1523862762.OKfgzmn4gFQqnWr3XOzEsecondaryLogo.png', 1, NULL, 0, 1, 'Hy El-Gamaa, Mansoura, Dakahlia Governorate, Egypt', '', '', '', '31.0349864', '31.3577818', 0, 0, '2018-04-14 08:20:18', '2018-04-18 09:47:41', '1523862762.MGA7M3R4phlvjW1G6qvIuser.png', NULL),
(53, '', 76, '', 1, NULL, '', 0, 0, '1523796023.Dn8expj4Zpjg81IREexHIllustration.png', 1, NULL, 5, NULL, '', '', '', '', '', '', 1, 0, '2018-04-15 09:40:24', '2018-04-29 10:24:28', '1523796024.xvVmxwtTro1OYehrH2snsecondaryLogo.png', 1),
(54, '', 78, '', 1, NULL, '', 0, 1, '1523874199.8lbzIzkOCKiMyp527wFRimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-16 07:23:19', '2018-04-16 07:23:19', NULL, NULL),
(55, '', 79, '', 1, NULL, '', 0, 1, '1523874368.cXg1GvCnNLYvSv9crZYNimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-04-16 07:26:08', '2018-04-16 07:26:08', NULL, NULL),
(56, '', 80, 'مركز حلاقة', 1, NULL, '', 0, 0, '1523877259.fQQgcqbqPIlsV4I2ldBkimage.jpg', 1, NULL, 2, 0, '', '', '', '', '', '', 0, 0, '2018-04-16 08:14:19', '2018-09-02 13:08:03', '1525352001.OJHH1hF4j919D9jW6r4Cimage.jpg', 10),
(57, '', 81, 'note', 1, NULL, '', 0, 1, '1523885541.LQCAu55u76V4uDFLJEA0image.jpg', 1, NULL, 4, 0, 'test', '', '', '', '', '', 0, 0, '2018-04-16 10:32:21', '2018-08-28 12:48:39', NULL, 4),
(58, '', 83, '', 1, NULL, '', 0, 1, '1525252441.AwlZpcK3JGXHxMhCxFTKimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-05-02 09:14:01', '2018-05-02 09:14:01', NULL, NULL),
(59, '', 88, '', 1, NULL, '', 0, 0, '', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-05-16 13:11:12', '2018-05-16 13:11:12', NULL, NULL),
(60, '', 90, '', 1, NULL, '', 0, 0, '1526805656.zGfMR2ALrRWuPnQuNzGoimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-05-20 08:40:56', '2018-05-20 08:40:56', NULL, NULL),
(61, '', 93, '', 1, NULL, '', 0, 1, '1526816960.jb2ZP3xHvjLcyPgxxVzWimage.jpg', 1, NULL, 5, NULL, '', '', '', '', '', '', 0, 0, '2018-05-20 11:49:20', '2018-05-20 11:49:20', NULL, NULL),
(62, '', 94, '', 1, NULL, '', 0, 1, '1526817723.ZXuCLIeRwfWUk12nCI8Fimage.jpg', 1, NULL, 5, NULL, '', '', '', '', '', '', 0, 0, '2018-05-20 12:02:03', '2018-05-20 12:02:03', NULL, NULL),
(63, '', 95, '', 1, NULL, '', 0, 1, '1526819089.Jdwdbnv5IIUChlDpsr6Zimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-05-20 12:24:49', '2018-05-20 12:24:49', NULL, NULL),
(64, '', 97, '', 1, NULL, '', 0, 0, '1527077523.NohRew4qfwCH8Nhicn0Gimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-05-23 12:12:03', '2018-05-23 12:12:03', NULL, NULL),
(65, '', 99, '', 1, NULL, '', 0, 1, '1527332308.4b7De4COi8n4Bh0tisAdimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-05-26 10:58:28', '2018-05-26 10:58:28', NULL, NULL),
(66, '', 100, '', 1, NULL, '', 0, 0, '1527332517.PcD1GYOz26XAjtXTbYDaimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 1, 0, '2018-05-26 11:01:57', '2018-05-30 09:43:19', NULL, 1),
(67, '', 101, '', 1, NULL, '', 0, 1, '1527336027.UoiowI98lulJ307kMfPbimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-05-26 12:00:27', '2018-05-26 12:00:27', NULL, NULL),
(68, '', 102, '', 1, NULL, '', 0, 0, '1527492696.875T1SPRp75KZneIOkwHimage.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-05-28 07:31:36', '2018-06-05 02:52:53', NULL, 2),
(69, '', 106, 'طلتتك', 1, NULL, '', 0, 1, '1527684049.ungo4o9dmM56NnpeUdMVimage.jpg', 1, NULL, 2, 0, 'test', '', '', '', '', '', 0, 0, '2018-05-30 12:40:49', '2018-08-29 13:00:53', '1528373512.nG8tqwc4Jdbo6sFkkqKLimage.jpg', 42),
(70, '', 109, '', 1, NULL, '', 0, 0, '1527754399.FmWARPfwFtv63NMwR05timages (1).jpg', 1, NULL, 5, NULL, 'sa', '', '', '', '', '', 0, 0, '2018-05-31 08:13:19', '2018-08-11 12:42:11', '1527754399.bLdbPyGJpZbWiGso57uhb06b7885-2afa-446c-bb7e-f44f897b3b60.jpeg', 6),
(71, '', 110, 'talla name', 1, NULL, '', 0, 0, '1528018601.GdPxAouCUdDZHWqQVCDqimages (1).jpg', 1, NULL, 4, 0, 'sa', '', '', '', '', '', 0, 0, '2018-06-03 09:36:41', '2018-08-11 12:52:42', '1528018601.oDc6qGPWewH7KmJzPgIQ220px-Bleach_01_-_The_Substitute.jpg', 2),
(72, '', 111, 'talla username', 1, NULL, '', 0, 0, '1528024930.rXXxbFZqwN6vbMkbncT7images (1).jpg', 1, NULL, 2, 0, 'saa', '', '', '', '', '', 0, 0, '2018-06-03 09:38:39', '2018-08-26 11:24:46', '1528018719.Umd2gVpgSwjgO3Thhbbl220px-Bleach_01_-_The_Substitute.jpg', 82),
(73, '', 112, '', 1, NULL, '', 0, 0, '1528086085.JFjjqEZ66B2OuyFIIZnLimage.jpg', 1, NULL, 5, NULL, '', '', '', '', '', '', 0, 0, '2018-06-04 04:21:26', '2018-06-04 04:21:26', NULL, NULL),
(74, '', 113, '', 1, NULL, '', 0, 0, '1528086121.ySakERCbx05cG28xrdzeimage.jpg', 1, NULL, 5, NULL, '', '', '', '', '', '', 0, 0, '2018-06-04 04:22:01', '2018-06-04 05:16:50', NULL, 3),
(75, '', 115, '', 1, NULL, '', 0, 1, '1528090847.HYVdG4ApLtpWoMWaXWYhimage.jpg', 1, NULL, 4, NULL, '', '', '', '', '', '', 0, 0, '2018-06-04 05:40:47', '2018-06-06 18:29:09', NULL, 3),
(76, '', 116, 'test', 1, NULL, '', 0, 0, '1528112059.UZkqTVec6RgByovN92NCtest pic.jpg', 1, NULL, 4, 0, 'test', '', '', '', '', '', 0, 0, '2018-06-04 11:34:20', '2018-06-04 11:34:20', '1528112060.n67AJFmwS4CLorAfSJRLtest pic.jpg', 0),
(77, '', 120, '', 1, NULL, '', 0, 0, '1528310086.E1IGvfHJSNSbU1iFyQpximage.jpg', 1, NULL, 4, NULL, '', '', '', '', '', '', 0, 0, '2018-06-06 18:34:46', '2018-06-30 12:58:46', NULL, 6),
(78, '', 130, 'Test', 1, NULL, '', 0, 1, '1528636777.pSOkjiGWLztwktlcpmIhimage.jpg', 1, NULL, 2, 0, 'Hy El-Gamaa, Mansoura, Dakahlia Governorate, Egypt', '', '', '', '31.0350083', '31.3577265', 0, 0, '2018-06-10 13:19:37', '2018-09-03 20:28:37', '1534328240.RMjniC5shnxViqhgVeIIimage.jpg', 163),
(79, '', 131, '', 1, NULL, '', 0, 0, '1528705311.mGwu9fl5yU97JntTTmKeimage.jpg', 1, NULL, 2, NULL, ',,الانبار محافظة,العراق', '', '', '', '31.0350545', '31.3576569', 0, 0, '2018-06-11 08:21:51', '2018-06-11 11:53:36', '1528718015.ExWfDsqnuRlQ65omrW8mimage.jpg', NULL),
(80, '', 145, '', 1, NULL, '', 0, 1, '1531124506.v9N83sC18sGFspjLpbB7image.jpg', 1, NULL, 2, NULL, 'Hy El-Gamaa, Mansoura, Dakahlia Governorate, Egypt', '', '', '', '31.034921653218788', '31.357788504080688', 0, 0, '2018-07-09 08:21:46', '2018-09-03 10:07:18', NULL, 49),
(81, '', 146, '', 1, NULL, '', 0, 1, '1533206442.un9Xq3XI2Y9M86dbNP60image.jpg', 1, NULL, 2, NULL, '', '', '', '', '', '', 0, 0, '2018-08-02 10:40:42', '2018-08-12 12:08:03', NULL, 3),
(82, '', 155, '', 1, NULL, '', 0, 0, '1535839711.7AlFhx61bzTYY1VVbgF8image.jpg', 1, NULL, 4, NULL, '', '', '', '', '', '', 0, 0, '2018-09-01 22:08:31', '2018-09-01 22:08:31', NULL, NULL),
(83, '', 157, '', 1, NULL, '', 0, 0, '1535878869.lOTtjzU8Bk0QYmsoYOpiimage.jpg', 1, NULL, 4, NULL, '', '', '', '', '', '', 0, 0, '2018-09-02 09:01:09', '2018-09-02 09:01:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_translations`
--

CREATE TABLE `company_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_translations`
--

INSERT INTO `company_translations` (`id`, `name`, `description`, `company_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'ايناس', 'وصف', 21, 'ar', NULL, NULL),
(2, 'inas', '', 21, 'en', NULL, NULL),
(3, 'عربى', 'وصف', 6, 'ar', NULL, NULL),
(4, 'اينو', 'وصف', 22, 'ar', NULL, NULL),
(5, 'eino', '', 22, 'en', NULL, NULL),
(6, 'اينو', '', 23, 'ar', NULL, NULL),
(7, 'eino', '', 23, 'en', NULL, NULL),
(8, 'اينو', '', 24, 'ar', NULL, NULL),
(9, 'eino', '', 24, 'en', NULL, NULL),
(10, 'اينو', '', 25, 'ar', NULL, NULL),
(11, 'eino', '', 25, 'en', NULL, NULL),
(12, 'اينو', '', 26, 'ar', NULL, NULL),
(13, 'eino', '', 26, 'en', NULL, NULL),
(14, 'اينو', 'وصف المركز', 28, 'ar', NULL, NULL),
(15, 'eino', 'description description description', 28, 'en', NULL, NULL),
(16, 'اينو', 'وصف المركز', 29, 'ar', NULL, NULL),
(17, 'eino', 'description description description', 29, 'en', NULL, NULL),
(18, 'اسم المركز ar arjj', 'وصف المركزar', 30, 'ar', NULL, NULL),
(19, 'center name en en en', 'center description en en en', 30, 'en', NULL, NULL),
(20, 'اينو', 'وصف المركز', 31, 'ar', NULL, NULL),
(21, 'tttt', 'description description description', 31, 'en', NULL, NULL),
(22, 'rrrrr', 'وصف المركز', 32, 'ar', NULL, NULL),
(23, 'ssss', 'description description description', 32, 'en', NULL, NULL),
(24, 'اkkkk', 'وصف المركز', 33, 'ar', NULL, NULL),
(25, 'jjjjj', 'description description description', 33, 'en', NULL, NULL),
(26, 'iiiiii', 'وصف المركز', 34, 'ar', NULL, NULL),
(27, 'hhhh', 'description description description', 34, 'en', NULL, NULL),
(28, 'اسم المركز', 'وصف المركز', 5, 'ar', NULL, NULL),
(29, 'center name en en en', 'center description en en en', 5, 'en', NULL, NULL),
(30, 'ggggg', 'وصف المركز', 35, 'ar', NULL, NULL),
(31, 'ahmed', 'description description description', 35, 'en', NULL, NULL),
(32, 'eeeee', 'وصف المركز', 36, 'ar', NULL, NULL),
(33, 'ahmed', 'description description description', 36, 'en', NULL, NULL),
(34, 'ddddd', 'وصف المركز', 37, 'ar', NULL, NULL),
(35, 'ahmed', 'description description description', 37, 'en', NULL, NULL),
(36, 'ccccc', 'وصف المركز', 38, 'ar', NULL, NULL),
(37, 'ahmed', 'description description description', 38, 'en', NULL, NULL),
(38, 'aaaa', 'وصف المركز', 39, 'ar', NULL, NULL),
(39, 'ahmed', 'description description description', 39, 'en', NULL, NULL),
(40, 'اسم المركز ar arjj', 'وصف المركزar', 18, 'ar', NULL, NULL),
(41, '', 'saned', 47, 'en', NULL, NULL),
(42, '', 'saned', 52, 'en', NULL, NULL),
(43, 'اسم المركز ar arjj', 'aghhxaghhxx', 52, 'ar', NULL, NULL),
(44, 'مركز حلاقة', 'clza4', 56, 'ar', NULL, NULL),
(45, 'test', 'test', 57, 'ar', NULL, NULL),
(46, 'ahmed', '', 59, 'ar', NULL, NULL),
(47, 'ahmed', '', 59, 'en', NULL, NULL),
(48, 'Test', '', 60, 'ar', NULL, NULL),
(49, 'Test', '', 60, 'en', NULL, NULL),
(50, 'Test providers', '', 61, 'ar', NULL, NULL),
(51, 'Test providers', '', 61, 'en', NULL, NULL),
(52, 'Test providers', '', 62, 'ar', NULL, NULL),
(53, 'Test providers', '', 62, 'en', NULL, NULL),
(54, 'Test providers', '', 63, 'ar', NULL, NULL),
(55, 'Test providers', '', 63, 'en', NULL, NULL),
(56, 'الامل', '', 64, 'ar', NULL, NULL),
(57, 'الامل', '', 64, 'en', NULL, NULL),
(58, 'Test', '', 65, 'ar', NULL, NULL),
(59, 'Test', '', 65, 'en', NULL, NULL),
(60, 'Test', '', 66, 'ar', NULL, NULL),
(61, 'Test', '', 66, 'en', NULL, NULL),
(62, 'Test22', '', 67, 'ar', NULL, NULL),
(63, 'Test22', '', 67, 'en', NULL, NULL),
(64, 'Test', '', 68, 'ar', NULL, NULL),
(65, 'Test', '', 68, 'en', NULL, NULL),
(66, 'طلتتك', 'test', 69, 'ar', NULL, NULL),
(67, 'طلتك', 'test', 69, 'en', NULL, NULL),
(68, 'مركز طلة', 'وصف المركز', 71, 'ar', NULL, NULL),
(69, 'اسم مركز طلة', 'وصف مركز طلة انجليزى', 72, 'ar', NULL, NULL),
(70, 'talla center name', 'talla desceription center', 72, 'en', NULL, NULL),
(71, 'انا', '', 73, 'ar', NULL, NULL),
(72, 'انا', '', 73, 'en', NULL, NULL),
(73, 'انا', '', 74, 'ar', NULL, NULL),
(74, 'انا', '', 74, 'en', NULL, NULL),
(75, 'طلتتتكم', '', 75, 'ar', NULL, NULL),
(76, 'طلتتتكم', '', 75, 'en', NULL, NULL),
(77, 'test', 'test', 76, 'ar', NULL, NULL),
(78, 'test', 'test', 76, 'en', NULL, NULL),
(79, 'انتي اجمل', '', 77, 'ar', NULL, NULL),
(80, 'انتي اجمل', '', 77, 'en', NULL, NULL),
(81, 'Test provider', 'Test', 78, 'ar', NULL, NULL),
(82, 'Test', '', 78, 'en', NULL, NULL),
(83, 'Ttuuj', '', 79, 'ar', NULL, NULL),
(84, 'Ttuuj', '', 79, 'en', NULL, NULL),
(85, 'test', 'test', 57, 'en', NULL, NULL),
(86, 'Gogo', '', 80, 'ar', NULL, NULL),
(87, 'Gogo', '', 80, 'en', NULL, NULL),
(88, 'Beauty center', '', 81, 'ar', NULL, NULL),
(89, 'Beauty center', '', 81, 'en', NULL, NULL),
(90, 'Hair style center', '', 82, 'ar', NULL, NULL),
(91, 'Hair style center', '', 82, 'en', NULL, NULL),
(92, 'Hair style centre', '', 83, 'ar', NULL, NULL),
(93, 'Hair style centre', '', 83, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_work_days`
--

CREATE TABLE `company_work_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` time NOT NULL,
  `to` time NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_work_days`
--

INSERT INTO `company_work_days` (`id`, `day`, `from`, `to`, `company_id`, `created_at`, `updated_at`) VALUES
(3, 'Thu', '10:00:00', '22:00:00', 38, '2018-03-27 09:51:22', '2018-03-27 09:51:22'),
(4, 'Sat', '11:00:00', '22:00:00', 38, '2018-03-27 09:51:22', '2018-03-27 09:51:22'),
(5, 'Wed', '21:00:00', '22:00:00', 30, '2018-04-02 09:17:54', '2018-04-02 09:17:54'),
(6, 'Mon', '21:00:00', '22:00:00', 30, '2018-04-02 09:20:27', '2018-04-02 09:20:27'),
(8, 'Sat', '21:00:00', '22:00:00', 30, '2018-04-05 06:04:13', '2018-04-05 06:04:13'),
(18, 'Fri', '22:00:00', '00:00:23', 18, '2018-04-14 07:20:43', '2018-04-14 07:20:43'),
(57, 'Sat', '00:00:13', '00:00:14', 57, '2018-04-16 10:53:05', '2018-04-16 10:53:05'),
(58, 'Sun', '00:00:13', '00:00:14', 57, '2018-04-16 10:53:05', '2018-04-16 10:53:05'),
(59, 'Mon', '00:00:13', '00:00:14', 57, '2018-04-16 10:53:05', '2018-04-16 10:53:05'),
(77, 'Sat', '00:00:14', '00:00:23', 53, '2018-04-16 11:46:45', '2018-04-16 11:46:45'),
(78, 'Thu', '00:00:14', '12:00:23', 53, '2018-04-16 11:46:45', '2018-04-16 11:46:45'),
(79, 'Thu', '00:00:14', '00:00:23', 52, '2018-04-16 11:46:45', '2018-04-16 11:46:45'),
(80, 'Mon', '10:00:14', '18:00:23', 53, '2018-04-16 11:46:45', '2018-04-16 11:46:45'),
(226, 'Sat', '01:17:00', '21:33:00', 56, '2018-05-30 08:18:53', '2018-05-30 08:18:53'),
(227, 'Sun', '01:17:00', '21:33:00', 56, '2018-05-30 08:18:53', '2018-05-30 08:18:53'),
(228, 'Mon', '01:17:00', '21:33:00', 56, '2018-05-30 08:18:53', '2018-05-30 08:18:53'),
(229, 'Tue', '01:17:00', '21:33:00', 56, '2018-05-30 08:18:53', '2018-05-30 08:18:53'),
(230, 'Wed', '01:17:00', '21:33:00', 56, '2018-05-30 08:18:53', '2018-05-30 08:18:53'),
(231, 'Thu', '01:17:00', '21:33:00', 56, '2018-05-30 08:18:53', '2018-05-30 08:18:53'),
(232, 'Fri', '01:17:00', '21:33:00', 56, '2018-05-30 08:18:53', '2018-05-30 08:18:53'),
(248, 'Sun', '09:00:00', '17:00:00', 72, '2018-06-03 13:29:17', '2018-06-03 13:29:17'),
(249, 'Sat', '11:00:00', '23:00:00', 5, '2018-06-04 11:10:51', '2018-06-04 11:10:51'),
(250, 'Sun', '09:00:00', '21:00:00', 5, '2018-06-05 09:59:23', '2018-06-05 09:59:23'),
(251, 'Sat', '10:00:00', '23:00:00', 69, '2018-06-07 02:33:59', '2018-06-07 02:33:59'),
(252, 'Sun', '10:00:00', '23:00:00', 69, '2018-06-07 02:33:59', '2018-06-07 02:33:59'),
(253, 'Mon', '10:00:00', '23:00:00', 69, '2018-06-07 02:33:59', '2018-06-07 02:33:59'),
(254, 'Tue', '10:00:00', '23:00:00', 69, '2018-06-07 02:33:59', '2018-06-07 02:33:59'),
(255, 'Wed', '10:00:00', '23:00:00', 69, '2018-06-07 02:33:59', '2018-06-07 02:33:59'),
(256, 'Thu', '10:00:00', '23:00:00', 69, '2018-06-07 02:33:59', '2018-06-07 02:33:59'),
(260, 'Sat', '10:25:00', '04:29:00', 79, '2018-06-11 11:53:36', '2018-06-11 11:53:36'),
(281, 'Sat', '10:32:00', '22:32:00', 80, '2018-07-09 08:33:05', '2018-07-09 08:33:05'),
(282, 'Sun', '10:32:00', '22:32:00', 80, '2018-07-09 08:33:05', '2018-07-09 08:33:05'),
(283, 'Mon', '10:32:00', '22:32:00', 80, '2018-07-09 08:33:05', '2018-07-09 08:33:05'),
(284, 'Tue', '10:32:00', '22:32:00', 80, '2018-07-09 08:33:05', '2018-07-09 08:33:05'),
(309, 'Sat', '08:00:00', '23:00:00', 78, '2018-08-15 10:17:20', '2018-08-15 10:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_type` enum('complain','suggest','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `device` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `device`, `created_at`, `updated_at`) VALUES
(1, 5, '55555555555555', '2018-03-20 12:35:40', '0000-00-00 00:00:00'),
(2, 0, '5555555553215555', '2018-03-20 12:35:40', '0000-00-00 00:00:00'),
(3, 15, '888888888888888888', '2018-03-25 12:37:38', '2018-03-25 10:37:38'),
(4, 80, '12oo3456789', '2018-05-27 12:28:24', '2018-05-27 12:28:24'),
(5, 73, '8888888888888888', '2018-04-14 09:56:28', '2018-04-14 06:56:28'),
(6, 80, 'xa-xa-xa-xa', '2018-05-02 09:12:01', '2018-05-02 09:12:01'),
(7, 75, 'f0hjWk0mSck:APA91bFmRXJPXJ21El35svcp4ycX_cIDgty-axfwRnLweOgceg3jGwMZacGZuyDlLgHOvinTrLhpaBbkRrjqoFtV', '2018-04-18 09:34:31', '2018-04-18 09:34:31'),
(8, 75, 'f0hjWk0mSck:APA91bFmRXJPXJ21El35svcp4ycX_cIDgty-axfwRnLweOgceg3jGwMZacGZuyDlLgHOvinTrLhpaBbkRrjqoFtV', '2018-04-18 09:44:14', '2018-04-18 09:44:14'),
(9, 75, 'f0hjWk0mSck:APA91bFmRXJPXJ21El35svcp4ycX_cIDgty-axfwRnLweOgceg3jGwMZacGZuyDlLgHOvinTrLhpaBbkRrjqoFtV', '2018-04-18 09:46:55', '2018-04-18 09:46:55'),
(10, 80, 'dh47LjwURSM:APA91bEaPX9_ySLUomKBpBDdaymeNK7onBlvhJV_NzOBk2Ndl52X2LgyvIw0_L79DvEM_gR3RsMeHbtg26Sbteje', '2018-05-03 09:54:51', '2018-05-03 09:54:51'),
(11, 80, 'dfuUmfEQePg:APA91bFulHaJOMP5jw-YBeWa4MM-1FiygpHBKDv5Ueo7YccRELPx--GX6dnXpbVRwBGcYNwZVvX69MG4tjDYB_6f', '2018-05-06 09:37:18', '2018-05-06 09:37:18'),
(12, 80, 'dGcobNHw3Mk:APA91bEGBCY95wcFW7uf24L6eO7TPkc6Jf4Z5tVds4-LdDVRDWE2m_GT5W1JfMQ92NzyBYhpqPEWktpvypaABjPv', '2018-05-06 12:49:07', '2018-05-06 12:49:07'),
(13, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-07 11:28:23', '2018-05-07 11:28:23'),
(14, 80, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-07 11:37:09', '2018-05-07 11:37:09'),
(15, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-07 11:49:51', '2018-05-07 11:49:51'),
(16, 80, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-07 11:57:12', '2018-05-07 11:57:12'),
(17, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-07 13:43:10', '2018-05-07 13:43:10'),
(18, 80, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-07 13:53:45', '2018-05-07 13:53:45'),
(19, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-08 11:09:56', '2018-05-08 11:09:56'),
(20, 80, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-08 11:21:59', '2018-05-08 11:21:59'),
(21, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-08 12:10:21', '2018-05-08 12:10:21'),
(22, 80, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-08 12:31:55', '2018-05-08 12:31:55'),
(23, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-08 12:32:55', '2018-05-08 12:32:55'),
(24, 80, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-08 12:50:31', '2018-05-08 12:50:31'),
(25, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-08 12:50:48', '2018-05-08 12:50:48'),
(26, 80, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-08 14:46:45', '2018-05-08 14:46:45'),
(27, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-09 08:05:55', '2018-05-09 08:05:55'),
(28, 80, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-09 08:08:05', '2018-05-09 08:08:05'),
(29, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-09 08:54:09', '2018-05-09 08:54:09'),
(30, 80, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3v', '2018-05-09 09:18:21', '2018-05-09 09:18:21'),
(32, 80, 'dGcobNHw3Mk:APA91bEGBCY95wcFW7uf24L6eO7TPkc6Jf4Z5tVds4-LdDVRDWE2m_GT5W1JfMQ92NzyBYhpqPEWktpvypaABjPvJfT8dZ0vux60hNy9UKV73TJ4n5-klydYMyPjD48CJhuaxELD4IGy', '2018-05-09 11:22:53', '2018-05-09 11:22:53'),
(34, 82, 'fETe2GH7nYA:APA91bGGC8GVc4sc5VDHp1U8NxQuBFdbR53ouoS0vA9WWfDCo3oYE3SagS1IDVA-LBgRK42u9wQjF48fJy2DPy69ohxOYZuaNWmO-kR9cBAu4P47zdnVAeuzIbDPcjB7vTc1ST4amh5K', '2018-05-10 07:48:29', '2018-05-10 07:48:29'),
(35, 80, 'eTahA10LCY4:APA91bGJ-lbpmzPmGLYOd56lk6B8LrkVj35VLo-mDHaVSn9FBymwFGfDVdkU4hZxxuHryn9StieB4fwkFPTGdzjRxCrz09Ec2SrqDd0usJqeKfiIvLVLnSvCOF5GEBijDviPkqseoam6', '2018-05-10 12:54:34', '2018-05-10 12:54:34'),
(51, 80, 'ej2hiRttC5Y:APA91bEiVprgIsOAi7Vdzr9T2XKyNIiATOT64zYhCUKOnCvkx7at8gp42poFwJWoogOdZZRi0CXUT1BB3iEM2eD-eniUdxZgArKNHoq7TEqmBZLLHoNj_Te-ShE6Cx7NgvF8kqWHENZz', '2018-05-16 09:28:48', '2018-05-16 09:28:48'),
(60, 82, 'cMQIJq0XG6c:APA91bG5i-7C8Xo3v8tvqrtrOAe2Md-AMrgGfQtfkiXgfoPt1BEw13IP_dufRB9Qvw447N6d5pJWXW_l2wch_P3vcvziYWc4yi2JuRPagfWW09WfDhkAmpKLnAusUklDBu9gSfWGFkXX', '2018-05-20 12:31:54', '2018-05-20 12:31:54'),
(63, 130, 'x-x-x-x', '2018-06-27 10:56:25', '2018-06-27 10:56:25'),
(70, 97, 'fcKSv8zccCs:APA91bGnDKJc6C-8vZ4ca9nIB13qOy_PdG5gnKz_F9CPIE7AFojOPgJo85GCv3FyreSelN8RkhhRzRTQGgQq-eOWBVoX3dKf6woT-Q9fWou5kh7JkmmRR333IrYIoiI2biofTUD6jETi', '2018-05-23 12:12:36', '2018-05-23 12:12:36'),
(82, 80, 'e7XTMMfTLic:APA91bHY3H1x0tHexcLuhc4TSPpH-kX7h2cWfitXb4vmwF973cutof3VQMspgl3W4Ba3q1m3g_8pWQNNrYsa96k5PPCjeFY5as35wyPTOnikuC1acPW9yh4sk0X637MKIldP5m9Wxn2q', '2018-05-29 07:44:32', '2018-05-29 07:44:32'),
(118, 92, 'fkQjYK4iL9Q:APA91bEiq-XBB6jUgwY78HPrR8hdCCHWM6I0BbJEnaJUBTlePpUtGJtl8ChvAPG5fv2MO7-q75uV6LHiS32rv92gAgsaRXkeZO-dGHcdWp91hAIyqnsJ97XLJdJs_o-8q0FVS2J1cMkO', '2018-05-30 08:22:02', '2018-05-30 08:22:02'),
(120, 80, 'cuLQOoLZQDg:APA91bFAUBseeraHPRKl6FlLojp-l9WND4wk-HYXtE4ZeIn2EgeVgclFT99Gm_eCIAg6_-9BlajTz25iNEhV7pCOdenpGYuGGolZ77f5j15_QUgEk0H65wPQG44FWiH-Bnwic_lfvMY_', '2018-05-30 08:29:04', '2018-05-30 08:29:04'),
(122, 107, 'c6HC08VMAcs:APA91bEf8pXCFaF3lM1Dt-u5kQtAxZxdNlzKfhh2Qu-_u-kRWbJsBEBUL_okp4C32N78XaqmjjrpFzmXpUV5DQsr64OFCxz98uptFnpDcdyq3R8T64f4UGYExivfw1q3REcci5NcS_ZB', '2018-05-31 09:22:04', '2018-05-31 09:22:04'),
(124, 107, 'fdO60c9Fda4:APA91bH9dnzc3IIVTU21R4S3foIwNepPyfJ_HwLeBj2KTrU3TqZmsPVTINikfUlVYlJ6Z6YRKIPD3nXpH2vcjMcV1PUuc4pagXUSCanbPGsZkUHlTnhsqhryQtiRrS3Xxi2WFvp4PIKK', '2018-05-31 09:41:38', '2018-05-31 09:41:38'),
(131, 106, 'dndIha_-pD8:APA91bHo0ZHavEgUDQauFpFNdzS7yWFYxYzuDChDm3s6F1zzmFrOPyfIOfJNVfQPDQAVL4RR7jcn3JtYiDfxWUylIhSTjuKwWjI7w_td6zjRah5871T6vvUP2aDL8Dtrpr98LKpJO3-p', '2018-05-31 11:59:29', '2018-05-31 11:59:29'),
(140, 80, 'fkpw-OVy_6o:APA91bEq-mvu5QsUdx221dcO9xJGh4yO8J3aMYGQF9BdbMy6Jd3dgsewsAKyrIDApdrT-jOD6-GodNVxM0_aCQbSr3iuXcrr7qPjKw5Il1ftpUi15RmoDXTy3DqQAaF5GkASsBZOUYvO', '2018-05-31 13:36:01', '2018-05-31 13:36:01'),
(152, 114, 'd0tc4f05pXM:APA91bExxivVwC9JHK7Kb_E2tbFELhmrK4N401xY6RGr1Cs0ncejJluzLcbiBJgU2sycH74m88IXXasvW3YoHECKPuDOYXVfumxSOYnnS-n3bOgj8JNMLG9vIwVqBltYgINPqxKIQc2d', '2018-06-04 05:45:49', '2018-06-04 05:45:49'),
(173, 107, 'e5Gjx0SxOio:APA91bENlTufW0svbKf5crA3jcRmRHwo_VknMACj_wqu-_lL6HncridJ_3dNrj1_GjYneSbacw5Nu93jBev3K02KFh8nqPQRaNd588bCnv7V6dKNv6EtD4AVLFkN7NVyjSU4GMDFhsv5', '2018-06-06 12:22:20', '2018-06-06 12:22:20'),
(178, 107, 'c7PMQl_yHds:APA91bE_27fKQqy48y7Kt2loLnZXZvVXp2__euYejQ3oKbkucBO5_hFS0BP2B6SMRHexJ7VSXTwgAb01KJWV4_6Ev2vg6TxCUz-cNqlX9AAeQ2mniiqF448aj43yMxYurTVU_JqOzbd1', '2018-06-06 14:54:47', '2018-06-06 14:54:47'),
(180, 106, 'c53oPyma0uo:APA91bHo1jJ8J0H9G16UFhJpfK8I62vpmWxUiQUweetXfMqhGfkKTc_gRyu5DeGPBMQMLnVzHYRhuPNv5CbloHjsQqY67UfTijOwFjJzKA_vHgeCRL0AXweFcjCW8B9zlLTdLuDrKvuQ', '2018-06-06 21:56:29', '2018-06-06 21:56:29'),
(182, 129, 'eK4dWkiq9Mw:APA91bEXUww6fTwD4cDp1x1sTCd7uRkCHcWWDqsgstbRjOS-zp5jDluUBp3DV-z0YJyEVJWvLNOkGP7gpG9pf3CEkUqmq102dTWv7MUl2BEgno4239klSye5Oo-kWo1LzSPvitSc9nRN', '2018-06-12 09:20:26', '2018-06-12 09:20:26'),
(188, 107, 'ckdSkkEkw1k:APA91bGxQm3gQXI92qb4jQ2Y2nF2NxEG34GMZyWzJCb81PZawrDov7yjkK0r7SZHkP0zl1vrPfB7VKTG9CA_XRrM9fcUkgDrjoEDBnREoFvJc_0svzXV4zTi1d_SS9C0DewuZp28-Mwm', '2018-06-07 12:29:18', '2018-06-07 12:29:18'),
(206, 80, 'dkmGApWI6kk:APA91bGaEhn0CrZ0soH5C9abf9Moqz2wq1GU5F65N2NqWJqNIBQ2MlzO7zdcYBSGVSANw_KhGuWP5Wu-jNnQncdrhOMTojBMiV-VquJEwi2akystOUaob20MuCCCuqiKNw853DPNbYZw', '2018-06-11 12:27:29', '2018-06-11 12:27:29'),
(208, 129, 'fFERRwyoa4A:APA91bFGZt3YbPil3mg19f0m6BNkBYe6Kbs_eUBOOQ3q5aImgGTjhRZT6EOayXoa3iGVK9lsP2wwgh3rRixkZGPERIgKYXYw3hUEMNUwr0y5HVAEF4UZNY-ttlzmX5RtPQJ7Id6tlHaQ', '2018-06-12 07:40:04', '2018-06-12 07:40:04'),
(216, 129, 'ea0mArhhxno:APA91bFoJj-N5u5Rb0uI4qc6_ReeKQIT9FqMLcyfUr6Dqei96RByBhHN5S71EBg4AMgfxtbdP_N3jpfnU4d5N7PnCWiQf9PVTpUsFXb12UHr2i5TSTH6IuCpUhCnmphQgj3KVbcpqSgb', '2018-06-12 11:37:18', '2018-06-12 11:37:18'),
(221, 130, 'dGL7LtoU0HU:APA91bH6MGNVIk5rA_Guon0ALOVWKJ7CDRmlcuOl61HcGfN-JVKdv0a1s8tDWs2b6Mxff53Aftj6PU_NJoBAXJ1ViEjRU6qdYF3lE9tJFUt1794HNM2ZkFiDGJ3e0neamyk-9I4Ylx49', '2018-06-19 12:25:30', '2018-06-19 12:25:30'),
(224, 130, 'fD4YqrqbVmE:APA91bEGDA2m3EU2glXlaOFOTUHAivUaS5_nETcm_DlsNHKFKVmSCcn_0cpUtFObkPs0Ubrhh4h3OA8f8WH5fAQkepDv1DgoYg6h3XYPtuPd-oIXSixtlY7zfVPU_zcsvW86RDfHANLVUKJ0YdVJIrtn6kovHgT8_g', '2018-06-27 12:26:54', '2018-06-27 12:26:54'),
(231, 130, 'dnBA3Ai1JqM:APA91bEyAhIYbM71APL0JhtKPWgFclUPtavLXQmreoV_5Zql7glKLD_ag3_gvlyxFWMXiNHR84cbxVXMB0ASeH3un2PaHImMT1unKWHHo99AT0GlqG6ZcSi9isusHGZ9luqV5yCz_nJUB145Mwnw6MOX-Jus6Qso_g', '2018-06-27 14:13:02', '2018-06-27 14:13:02'),
(239, 130, 'eDXprQChihI:APA91bEIyd4fSTq8LOMn7aImCoYPWNzsxV-x3QOjYjprBUISr5dY9LBYiHKprfRYC9Xmm7TzUQeIqA5XgRw9hpw-P2yAbFmLDUIXbuj8psZswOOluNu0MQGKzq2iahHtGh2de9QX0OsNNXBbPoKNnMOaHRbrTbRzoA', '2018-06-28 08:26:14', '2018-06-28 08:26:14'),
(240, 130, 'cMhTUYU6VwE:APA91bEnG3HgKw8uzBq5rE7XlZQmmHUKFkMKrinUSSPs06_A9AyrdWh27Xo9O9cS0oOeMaYAmp77dVeOV94YNYgEVBWX93Lnl5VXt2rHRVLdQgOJOSm4D11QXTIPheL5u0XMqIUS6YTAbdk0LbQhrVKRfLtkN2IIpQ', '2018-06-28 08:40:21', '2018-06-28 08:40:21'),
(241, 129, 'fuMUr4G6_60:APA91bF0MFaWddeuwFt2mT-wQpjJtM5TdG7sMQD2Fa7U1GQf2YhunViQpPqOyK2BqPfvXOPF01A8I1vuBByKhU_YLQ5N3eRY_vA-4b1gikNstBoWMDd0W9dgsGOKq5qmcFf5-fTPoQf0VZtNYZXUf0mAwUvXzpydIA', '2018-06-28 09:05:42', '2018-06-28 09:05:42'),
(242, 130, 'f3sc0vApBVg:APA91bHestFeAnWsvctdDxaQgW9aMCVgGp-Y46Rs9H5YItRQHVVHV0n11tkjQr5rPMDjL3_l8qt7dUhKpXE8RNJVOGVc5dRKbctnfw2pkl5SCBdQHZH4OCmG6xPr8fZHw6whMlpYCB8ZlrzOPkBxf30g9pLwao1KLQ', '2018-06-28 09:59:29', '2018-06-28 09:59:29'),
(244, 129, 'fnMo0tDXnyw:APA91bEXZVhGQbYKp5WF13fP842dKJiwFScoft9A1T7DC6ttL0BmK5f9Sw45Z56oRAl3Lhi6py7kBvjL7Z1fJMB9UJPFb-GHD5AyyTLIFgc-VW4yuK339tK6guNjC4AXaEKBk3IN-R6I78t-HBVbv4u53ZEqaUCekw', '2018-06-28 12:09:16', '2018-06-28 12:09:16'),
(245, 130, 'f9bRGSc-Ta8:APA91bHT8iOZ0cxwu_rZUF6PoGMsg1EX95tLwnpovQl9B-0J83auq_XbK98u-yawdageeIpVOVJ0Ns40BZv-KlQDvDAMSIfQDTeOtz-h596iaYw3UomiPeLSAbvLFjzNyLOkO_iXgyYdWtDncZLJQkQiOza89Qsdlg', '2018-06-28 12:51:10', '2018-06-28 12:51:10'),
(248, 129, 'eclR_k0ndic:APA91bHXk2IbAYN5C2b6gD5L1LH0ugkiB8W8mCpcC2inW9MISyInU31pnmgX4-q4AvCWQjjfAFDxb2mn6jYz-Yn2x0yQLeHhhVmU93kLg1taw0bKTmKqWH94h58P3XfSHXKjpHUwDOo0mQcP5vrDLQ2DcEIRI1BX6Q', '2018-06-28 14:27:04', '2018-06-28 14:27:04'),
(249, 140, 'e_YAf-ipokg:APA91bH8OnMWdLSd6K5_aHpUx-RCiUnIoVm-MDEH7ZbR39v10QQaOLbibf6PipsmqGQMhe5tEsS7lrz9iHfAtBpgpKMx2FJRI5vMUAbI9m8401mf6VuMmtQ0RU5ja0SV8GDKDxtzIx3AWULqLQ2-xa6WGYu_2yK3rA', '2018-07-01 15:07:52', '2018-07-01 15:07:52'),
(252, 106, 'fnSu3oYzxM4:APA91bGqtIvPtRTawxfTwOUTMBZExLeZGBhRfqGNhHckYNBPIyajqlWExe-fPSrTg8hhVDkRQFX0zQkSK6NHTniW7IkFg6myP7eGEs8xWu2TyyekjPt3EzIZn0aJLYrzye9A5yc8KZgwOJZxoru2nO1r0ToBDcBjhw', '2018-07-03 11:57:01', '2018-07-03 11:57:01'),
(255, 141, 'fiDQeMaMb9c:APA91bHJX68YAu__C2T9iwccvpVP4csP_dnMlKtbJTLckWoPx0BsVRPbjaaCtI0GZuqMN8Xq80aLp520BavYzsOPS69ANT_21kSpH4UcwOJd4jbpTdArLhfb2bSeCYzTV_ItBlKYGjNST9x9_ae2W6XO9SQ2KhWZyA', '2018-07-04 00:37:58', '2018-07-04 00:37:58'),
(267, 129, 'd209_Lj8Ly4:APA91bH5ZCPhQ6ot5a_t57varNeUVFQ-_cWcHKhgW2tCLcg06bc0bVRgfGkXe6SA2xwPtYKVIeFIauUhqwI7oxz5fAPs1DNtVlSVw0Mk-QbV1HaePWixHoDwAxzaSaxtJ58MY3Bmfv1Z_QrUFImbQILmzIqsbu475Q', '2018-07-11 09:19:38', '2018-07-11 09:19:38'),
(269, 129, 'f7vSXPlqf64:APA91bFw1rW4E-ojGRjZoYx4kptrsBcO0nYOh7aB7YpK_M_N6halN0o03ha7eVMlSzyBYly2d8HTyPHXFETajLQcu7OyHnMfC13uvz2qrNtsOStCmxKAufynjiQDsuyRuQr2wsmaOHEHaeSzakKbk_sa_KjOdi-9Og', '2018-07-11 12:21:36', '2018-07-11 12:21:36'),
(273, 129, 'cg312MEEB0o:APA91bHAossZhMldolF9RH2JhjNKZv9tOVpjCndXRYMLKl7nDv5GbRL8zfJ01tjz6gxBs0Z9T67IDBSgs2vdpWwEtnsBAzpTq4AJRZ6qEaXAj67mlZ0eEo9xr_miwwdmT0mgOtQ72HP4OsP_OlczuIJShCfUrRBm8g', '2018-07-12 12:18:28', '2018-07-12 12:18:28'),
(274, 130, 'dT5WOgS5xK8:APA91bHjBFxf5rQIe_x1_iF4SpZ_btEX8jxkTbIDuoa9UoyItr1YDz9RfPYw0OjJ5XTpU2tqv5CDT-vuBvl4PBi-Y7mx0xwbUM1AZMHQuqU0yBeVolfiiypk819KP1btLX46vcFrJF4Gf91U8Gl9Ao-NHx-4JYbIpg', '2018-07-12 15:11:34', '2018-07-12 15:11:34'),
(275, 141, 'ercvWAOwK50:APA91bFbiU0vmhdxflc7ecM8nAAzYGNkBHRqrdYnlHaM1Ex5YC_KUOfgXCszt3moszGWODWgtKmsJ1OBSdk0sgwaneAaPe5y1BwSDoH9Ae9oRXKwsh2PQvvavkUgHBpGiOsyueCYReGYCEcjNCK7nDZ2mFW81_ZNIg', '2018-07-12 16:39:19', '2018-07-12 16:39:19'),
(276, 141, 'f8Z1mj3vbw4:APA91bH1kQinJwrDVqHOrV2qCX8mer5ajsoI16O_LCBctIUP2PRkaz8wPXw40tB6Xly06J9MIIKQVueWDB6HDIz51IY78l0vpln6WAJwGng8bbFDkDNO-5i55Qx-nMwBqwSThsdf4RiCkuejlxB5h5AlDL26jGe-Pw', '2018-07-15 11:07:43', '2018-07-15 11:07:43'),
(277, 130, 'cgQcCRAHdQg:APA91bEjh2EuhT93uNsmaivxd4EgoFcu2jM0kCboNbqndNCHUK4GkseO65-XfQNouYtH1ItBWFmp95Z6-qi7y7YYYIshvSKI80oru58E2Us6kUGumAPXFoCZ1w0Gj6j4ubVUIryHyXC3nb1txt-FfP2ILyAiwIlC7w', '2018-07-16 12:03:16', '2018-07-16 12:03:16'),
(278, 141, 'fBsM29XYQJ0:APA91bEw6fpaxR47gyWWFNPKcbA-KfhYsNEs9hlMCXoAchusqez5gYC6FlFDV5zxMkt628vjJ-eDNCcbz337OqV6eESyRrMG2IZD_dPZ27EQoNEsz4uAc2Ts5OPQjPr2Q5dLoWMqBAmZTRP3mAut4U2skebM10F1mw', '2018-07-18 00:58:38', '2018-07-18 00:58:38'),
(279, 106, 'drHDOcNytnc:APA91bGxt3yXA5Ft_xprm1f03KGwwsKTcjkHgiqC63b_mlrfL6TgkwspA9RcqOdF094mZikLYrOvXzGeL6_RVk9Zt14prIE_Wg7KVswxPmPUwEGZPKZztKp68p0Yf36n73XcoJaGavkeZcUUu7aqy52ZLd0j4czl5g', '2018-07-18 01:00:51', '2018-07-18 01:00:51'),
(280, 129, 'fYMYWS3I7n4:APA91bF1UD8kWOvTNM33SVprgwW5fM-LSL0UHgj37UPBcHslYXIOlbBfGl0sF-hDarTCD6AqkYUwHz4rue96Sxy7L86KGzs9FFHl4LrQU_bG-3_AoMa1T5j5a44JqTbJMugSMTh5kliXkzaorLtJgjHK2K3YzjEC2g', '2018-07-22 14:42:54', '2018-07-22 14:42:54'),
(281, 129, 'fPoaA4lu46w:APA91bGB5mA0TlDFUoP0QMg1vJE6LU2vkDb0mtUzMBpQh3_dY5jd969VoyMHZ5z-gbjyNu6hLMX2LopR02hqOfG-o-rvHJqNA8p80OpAhUTQ2kH60ESp_b0bPi8uqqHuhHvKp7cJbMsP-sqqiWE8IKec2JBtpOCLEA', '2018-07-23 08:10:15', '2018-07-23 08:10:15'),
(292, 129, 'emRmVLe36gI:APA91bG2vewgWrRpnJr9WUhvgtYfMIn2ehU79geluO9UXD3898hkTr2f1FrnG3-i-Xo-U_3Of-El17fJv2L04fEAth73nxrZvbzCmRkhj78vxBig245tjw-YjkgVMP4J4qUJ0e6wzMe0lP4ocqbLxgdq3wVPJnvIVg', '2018-07-25 14:30:58', '2018-07-25 14:30:58'),
(303, 129, 'cu_Ue4AE9PA:APA91bEpj5H-iu-cQQuziKVX1T3l0F4KMNLZqC3HeBEw3MXjWYnKbFwsD-m81E2R2M0zqIzwGCd3empvrsfwZXI-HzRWzKc7dBBR5PhIAoE8G0EHRtNO5qy98DB-Q79JkUjnFmnOf0idcUfsQSQStTSUI6U2s8ozeg', '2018-07-31 11:14:02', '2018-07-31 11:14:02'),
(325, 129, 'd9AMvVArxBw:APA91bF0ImLs9-Q4T3pDCNA3ZI7jQp17zHZ1JrdG7k0paMDnzgAgJ0q-ugIMKTYby9bVvCrUzK9kU-mQzlHIQ55LxE3WvKoDC9-C4t-wgl8OuE1q5Jg-v8lXbkjCfoVYa5bjTERbVWNpl75a2h2YMzxf4bkf7GP42g', '2018-08-02 13:32:09', '2018-08-02 13:32:09'),
(328, 130, 'dfNf72lvZmE:APA91bEnm_dRZvdXQxZk4HeFVmW6y9TT9cDKohtevoLOY4INn1gMQkonteAF76oRJJC-PreDMH9cdQT7f93asOQCkTd5EkBAjcT1ft9wyPH5o34NtcZEXtec12q2j2O_qFzsvdZigX2njXrLKpPQY4KjN7utsV4hlA', '2018-08-02 14:45:15', '2018-08-02 14:45:15'),
(362, 129, 'ejDhSFZZHvM:APA91bFnHjdSUPCgjxL-24G379fjgblVXUezQjflASJnjruQ1ztSlsRXuw1YCTr9JcgNpsmZIaJUZ1ZR4YR4RQFk2S_38HP7ENLeWZC9SElUpkb0E-rQLvU4YqvjzgdaHGRhiUGiVIgnO6VlCyUAYDntTciEjo5Thw', '2018-08-06 14:11:35', '2018-08-06 14:11:35'),
(363, 130, 'fUTkC7fLgfo:APA91bHZGDS5l4edBmKEIjjRdpmVpYmBpfbXVIMc3AzHzIoKVP84irRqYW_l-tXTwtOIzAXajRmHHpRQargUVmfEC49DhP_sCTAdU_7zKsb44lQWUkIgExGEse-4d4DiLS75zLZi1Og7BXaOAy6Ilx8zsbeJjOQi2w', '2018-08-06 14:29:16', '2018-08-06 14:29:16'),
(364, 129, 'dT2ZBABqWvE:APA91bH4rSUEcgsBQKF7g4wqEnE4d8n6pPVmBCW42B_xVGqkRi_uVfilhsorWxDGuLK3IxG2ZhAB0-FbArB1mqM0KaiJJcRsD8S6YPxf3YP-hdwlT7K0Q-xA3f8Hz-ubjPIkTD4ADONKehH645Nht9ljF3KRGQ0VXQ', '2018-08-06 14:38:46', '2018-08-06 14:38:46'),
(367, 106, 'chD5dtPvvXY:APA91bExIxB6TYqR9yq6DfmktUkkIQMgc-nv-96K0NBkA84D-QMwOaxsotF92VNOnGNCBpp2wQne7HolXWMrFzVn6bcQOoXX8pcDrpAbQBtV3nxNoXo3cOH9GVoWW3cknz5nT_eUIqFfBrfZRN_tzcYVoPCN70QhJw', '2018-08-11 12:36:56', '2018-08-11 12:36:56'),
(368, 141, 'fJEsFXej2eY:APA91bHbi6OFevw1mKl8RjsojhpzvzSPbmnaamBeso4NlzIjSH6Alyo5HmFCcrw9Mw3OvnNaxDYdQit3oxJgyKY7e_ReoCNxd7-upvwrtxRhU7Eph3jSfFWCKT8J6L46M2rLk4RgBkbaV2Ob1cdoS_nyK2n96pGS6A', '2018-08-11 12:37:15', '2018-08-11 12:37:15'),
(369, 129, 'fSB75eNNWw8:APA91bEnxsn-fX2Ui39COWRoyTA74-LZcLYCxpkzl8fzlhJjJsOmeD_1LtNJTT0cuIrPDjVrE4sTg2cxFluweF5-HJRwO1rH1zVAjejaB0Qgx5kUisSaDn9fez41FeTZwUaJFAqdEOnMbOT_zM5tRuUGjDECnVfEFA', '2018-08-12 11:45:34', '2018-08-12 11:45:34'),
(375, 130, 'cuHZITs5djk:APA91bFjCWHU1a1pQL7e-qcVk7VEb_SLqgck_358yYJHfbDJew0Qoh5CURkbabkya1gI-s4jkTpTv0itsvarjW6Eg8EUbQsyC7YpgFHQK2iKL6GQ9RqSVS7Q0tPjesNCvSRsXoE9QByQmmabboSoNmW5174LYEEa2g', '2018-08-15 14:45:34', '2018-08-15 14:45:34'),
(376, 130, 'd5ISPWm6cms:APA91bGLw1x9ZdsajCo9YfOEcsFEtdlDZMR9ysSE1saJhDIYSbqjhUcBeI5wCd2R4c-APsaG7sgpRGTXqO7VpxK4mRtrzUiPvrmtgSMT8GHzVbPLTlX0UrtGDvcbaAqtG3mCTIDObk-4Lhr5_Hsq0i_o0N51QT3E_w', '2018-08-16 12:55:36', '2018-08-16 12:55:36'),
(377, 130, 'cEU9fgQVChc:APA91bHi8c9fxxzqal_cpFO0RZdaC0iqNU6zU_F1vGUeadpIGLNFGA5Fiki0LhLZjxH91pUFps7ti6UNRkCFPOZog-qyUx_AvFoN7j_FiDuQpDl9W3PiJo8fsFrp0AdWXzbW7f5t2przdV-GHuyKWMswW58QtVniNw', '2018-08-16 13:08:21', '2018-08-16 13:08:21'),
(378, 130, 'fjgektuW0ZY:APA91bFp9kVJq563DR-528YYqKNZ9cp7hOV4YbvgoXzvoMyQyzUb_RiJo2QDtqFo5FcrzFNhE9_SYfbvI_xRiImcCzEBMxBaBxOZlH1tu63u22VSpnSlV2ge4kFz-YeMVtWvx4aAFoSDk9yVFUqPyrsS1kKFtnX6Lg', '2018-08-16 13:14:42', '2018-08-16 13:14:42'),
(379, 129, 'e-f3DVqOJgE:APA91bGIAhfraRJ55bWhV-W3CnX2_vkPcvvFd_CbEI6H8JvewSp9AIk4JPn7yKZFomXI_gTv6YxP2X-GStGJ1fB61NfrYrpytIj0mwQK1IJwIPynEOKMz0UReMWq9IBOqydDu-iBeO4C', '2018-08-27 14:54:10', '2018-08-27 14:54:10'),
(382, 150, 'd4RnQYMWmCs:APA91bFqSo_dfjV9YoUlzCIW-xw6aGiE4ylehYkrOlQoisgwKUeN0m1L9VIbsdT1ZGdtO84qKDyLIfwvOsMgg2ZYLUMDzBLf9nDQ-LS0lHEAhvnLzmzdwbqyFcutaApHU553wu4OkdHl', '2018-08-28 12:52:32', '2018-08-28 12:52:32'),
(390, 130, 'e5lVU_WTc38:APA91bFUM9zsDvTEyuqVyXU4O1ZFVuqfUudl6KmOKaqsV1Qc73lLdG5FIGQyG3Z8mJcQO5IK1oqw5VAQs-iLS0MSRQ3pcbMoeQSN9X8U4HzS-OBHWaoCOMxB4pWS7eDOsVhR-GFlRTz4', '2018-08-29 13:49:46', '2018-08-29 13:49:46'),
(391, 106, 'fA4ld_A8LFw:APA91bF1B5QSujynF0SG5cyJmvA2RVhvYyrYOBLxLvH9HkyDYEzOnLIZwXCcJRSXKO6ZIbcD5Q5q8Nks4GbHUKRgykykLRYthn5IvbElRuFMk9SqXp5jDAe9L3ZeIWA-ic-zIb3fUKyi', '2018-08-29 14:14:55', '2018-08-29 14:14:55'),
(392, 130, 'cwAsy1kzNCU:APA91bHRQLEKvzyAHLtYbJhUAVFgW6R5dr9WCDg7-uzNO7x48bqh9YEZO_oZSUoYTOmGv6Yfxw6npGTkO93iSSZcSocRir4OZWzTsfoft9iX-bOiVPUSu0Yp-CVWEEYaglXpSpD4tDSt', '2018-08-29 14:23:29', '2018-08-29 14:23:29'),
(395, 158, 'cfYRSBDdsJM:APA91bEonbHRMVhMwtHkptTqQhLJjbXHP9nmSqQ0C6pLTyazRTiiqmb08Nm0GxOXbEk4hLYIi6uNMfVuQ-y1rTZL0nZfXZboBaFs13J_mYkLjTK0ssK-08jz8QfQZpLpaRzZi8HlDxuz', '2018-09-02 09:03:15', '2018-09-02 09:03:15'),
(396, 160, 'd4RnQYMWmCs:APA91bFqSo_dfjV9YoUlzCIW-xw6aGiE4ylehYkrOlQoisgwKUeN0m1L9VIbsdT1ZGdtO84qKDyLIfwvOsMgg2ZYLUMDzBLf9nDQ-LS0lHEAhvnLzmzdwbqyFcutaApHU553wu4OkdHl', '2018-09-02 13:05:37', '2018-09-02 13:05:37'),
(397, 130, 'fX2q8ZUhUFs:APA91bGQgTib-DiL-X78-hGHEJQt_Inivwx_rGO2OYbRtZx3g3B7HuMta9HunNdKAvbxQTC21b_rL0EeLCA38XrUx_d6Aem-03_2WB2OdQDErQE7uXg2Ld7UXqIhaERGaNoDOUp363HTUEExl7_flzcvEPAlJYWGog', '2018-09-03 10:07:11', '2018-09-03 10:07:11'),
(398, 130, 'fzKAjWb7DRM:APA91bHxd7WQQYJPNraaOvEuKKSvGsKD3WmX2u4aDrr3qtjiN_QADri8VtTw1H4Mdf0SOyiRAQipz5XJMRdvb9DF78_XLuqVI9QbufJ2tFyXAfwAg3qr7eStE8v8nt2hRbblerkVAv5p', '2018-09-03 17:33:17', '2018-09-03 17:33:17'),
(400, 106, 'cOQ9uU_LR4M:APA91bGJ2u-SB0Er0-jfqbs4WD4i-3ZULvTjLML9ePB8HzkZcLaKum6_ozsX6O1VqaOagl7vcsck48DKeT7jB4RCsC8lyKVWsqtLbjXynD3k4DC9jJzGd6xgmto0HQ36bR4U9fqVeT9F', '2018-09-03 20:30:25', '2018-09-03 20:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `created_by`, `city_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 1, 4, NULL, '2018-03-08 09:28:18', '2018-03-08 09:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `district_translations`
--

CREATE TABLE `district_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `district_translations`
--

INSERT INTO `district_translations` (`id`, `name`, `district_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'حى 1', 1, 'ar', NULL, NULL),
(2, 'district 1', 1, 'en', NULL, NULL),
(3, 'حى2', 2, 'ar', NULL, NULL),
(4, 'district 2', 2, 'en', NULL, NULL),
(5, 'الصفا', 3, 'ar', NULL, NULL),
(6, 'elsafa', 3, 'en', NULL, NULL),
(7, 'النسيم', 4, 'ar', NULL, NULL),
(8, 'elnasem', 4, 'en', NULL, NULL),
(9, 'ننن', 5, 'ar', NULL, NULL),
(10, 'jjj', 5, 'en', NULL, NULL),
(11, 'ش1', 6, 'ar', NULL, NULL),
(12, 'st1', 6, 'en', NULL, NULL),
(13, 'حى4', 7, 'ar', NULL, NULL),
(14, 'district 4', 7, 'en', NULL, NULL),
(15, 'test', 8, 'ar', NULL, NULL),
(16, 'test', 8, 'en', NULL, NULL),
(21, 'test', 9, 'ar', NULL, NULL),
(22, 'test', 9, 'en', NULL, NULL),
(23, 'test', 10, 'ar', NULL, NULL),
(24, 'test', 10, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(16, 80, 53, NULL, NULL),
(18, 80, 38, NULL, NULL),
(21, 82, 63, NULL, NULL),
(22, 97, 5, NULL, NULL),
(24, 80, 5, NULL, NULL),
(25, 114, 72, NULL, NULL),
(27, 107, 69, NULL, NULL),
(30, 141, 69, NULL, NULL),
(37, 129, 56, NULL, NULL),
(38, 129, 5, NULL, NULL),
(39, 129, 72, NULL, NULL),
(41, 129, 78, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `financial_accounts`
--

CREATE TABLE `financial_accounts` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `orders_count` varchar(100) NOT NULL,
  `net_app_ratio` varchar(100) NOT NULL,
  `pay_status` tinyint(4) NOT NULL,
  `pay_doc` varchar(100) NOT NULL,
  `is_confirmed` tinyint(4) NOT NULL,
  `paid` varchar(100) NOT NULL DEFAULT '0',
  `transfered_money` varchar(100) NOT NULL DEFAULT '0',
  `last_transfered_money` varchar(100) DEFAULT '0',
  `remain` varchar(100) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financial_accounts`
--

INSERT INTO `financial_accounts` (`id`, `company_id`, `orders_count`, `net_app_ratio`, `pay_status`, `pay_doc`, `is_confirmed`, `paid`, `transfered_money`, `last_transfered_money`, `remain`, `created_at`, `updated_at`) VALUES
(1, 78, '1', '-60', 1, '1534329210.CF8uMDAmmdzaoQnDPI0Simage.jpg', 0, '145', '5710', '5555', '0', '2018-08-15 10:33:30', '2018-08-15 10:33:30'),
(2, 69, '1', '25', 0, '', 0, '0', '', '', '0', '2018-08-11 13:49:01', '2018-08-11 13:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `imageable_id` varchar(100) NOT NULL,
  `imageable_type` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `management_levels`
--

CREATE TABLE `management_levels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `items` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_05_000432_create_cities_table', 1),
(4, '2018_03_05_010806_create_districts_table', 1),
(5, '2018_03_05_013450_create_centers_table', 1),
(6, '2018_03_05_072831_create_service_types_table', 1),
(7, '2018_03_05_073229_create_service_type_translations_table', 1),
(8, '2018_03_05_082443_create_services_table', 1),
(9, '2018_03_05_082608_create_service_translations_table', 1),
(10, '2018_03_05_090443_create_contact_us_table', 1),
(11, '2018_03_05_091907_create_comments_table', 1),
(12, '2018_03_05_092255_create_rates_table', 1),
(13, '2018_03_05_092929_create_favourites_table', 1),
(14, '2018_03_05_100758_create_city_translations_table', 1),
(15, '2018_03_05_110915_create_district_translations_table', 1),
(16, '2018_03_05_115328_create_center_work_days_table', 1),
(17, '2018_03_05_115602_create_user_invitations_table', 1),
(18, '2018_03_05_115745_create_orders_table', 1),
(19, '2018_03_05_121823_create_reports_table', 1),
(20, '2018_03_05_144248_create_app_ratios_table', 1),
(21, '2018_03_06_093324_create_center_translations_table', 1),
(22, '2018_03_07_111626_create_bouncer_tables', 2),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(26, '2016_06_01_000004_create_oauth_clients_table', 3),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `to_user` varchar(100) NOT NULL,
  `notif_type` varchar(100) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `is_seen` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `msg`, `title`, `image`, `to_user`, `notif_type`, `type`, `target_id`, `is_seen`, `created_at`, `updated_at`) VALUES
(1, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 1, 0, '2018-08-05 13:32:14', '2018-08-05 13:32:14'),
(2, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 1يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 1, 0, '2018-08-05 13:35:02', '2018-08-05 13:35:02'),
(3, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 2, 0, '2018-08-05 13:38:35', '2018-08-05 13:38:35'),
(4, 'تم قبول الطلب الخاص بك رقم 2', 'حالة الطلب', '', '129', 'order', 'single', 2, 0, '2018-08-05 13:39:14', '2018-08-05 13:39:14'),
(5, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 3, 0, '2018-08-05 13:52:07', '2018-08-05 13:52:07'),
(6, 'تم قبول الطلب الخاص بك رقم 3', 'حالة الطلب', '', '129', 'order', 'single', 3, 0, '2018-08-05 13:52:27', '2018-08-05 13:52:27'),
(7, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 4, 0, '2018-08-05 13:54:15', '2018-08-05 13:54:15'),
(8, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 5, 0, '2018-08-05 13:55:04', '2018-08-05 13:55:04'),
(9, 'تم رفض الطلب', 'حالة الطلب', '', '129', 'order', 'single', 4, 0, '2018-08-05 13:56:22', '2018-08-05 13:56:22'),
(10, 'تم قبول الطلب الخاص بك رقم 5', 'حالة الطلب', '', '129', 'order', 'single', 5, 0, '2018-08-05 13:56:39', '2018-08-05 13:56:39'),
(11, ' تم تأكيد إنهاء الحجز رقم 3 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 3, 0, '2018-08-05 14:33:48', '2018-08-05 14:33:48'),
(12, ' تم تأكيد إنهاء الحجز رقم 3 من قبل المستخدم', 'Test', '', '130', 'confirm_order', 'single', 3, 0, '2018-08-05 14:34:36', '2018-08-05 14:34:36'),
(13, ' تم تأكيد إنهاء الحجز رقم 5 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 5, 0, '2018-08-05 14:45:28', '2018-08-05 14:45:28'),
(14, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 6, 0, '2018-08-05 14:47:04', '2018-08-05 14:47:04'),
(15, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 7, 0, '2018-08-05 14:54:34', '2018-08-05 14:54:34'),
(16, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 7يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 7, 0, '2018-08-05 14:57:02', '2018-08-05 14:57:02'),
(17, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 8, 0, '2018-08-05 15:00:42', '2018-08-05 15:00:42'),
(18, 'تم قبول الطلب الخاص بك رقم 8', 'حالة الطلب', '', '129', 'order', 'single', 8, 0, '2018-08-05 15:01:12', '2018-08-05 15:01:12'),
(19, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 9, 0, '2018-08-05 15:13:32', '2018-08-05 15:13:32'),
(20, 'تم قبول الطلب الخاص بك رقم 9', 'حالة الطلب', '', '129', 'order', 'single', 9, 0, '2018-08-05 15:14:19', '2018-08-05 15:14:19'),
(21, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 10, 0, '2018-08-05 15:42:14', '2018-08-05 15:42:14'),
(22, 'تم قبول الطلب الخاص بك رقم 10', 'حالة الطلب', '', '129', 'order', 'single', 10, 0, '2018-08-05 15:42:35', '2018-08-05 15:42:35'),
(23, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 11, 0, '2018-08-05 15:43:23', '2018-08-05 15:43:23'),
(24, 'تم قبول الطلب الخاص بك رقم 11', 'حالة الطلب', '', '129', 'order', 'single', 11, 0, '2018-08-05 15:44:11', '2018-08-05 15:44:11'),
(25, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 12, 0, '2018-08-05 15:53:56', '2018-08-05 15:53:56'),
(26, 'تم قبول الطلب الخاص بك رقم 12', 'حالة الطلب', '', '129', 'order', 'single', 12, 0, '2018-08-05 15:54:40', '2018-08-05 15:54:40'),
(27, ' تم تأكيد إنهاء الحجز رقم 12 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 12, 0, '2018-08-05 15:56:21', '2018-08-05 15:56:21'),
(28, ' تم تأكيد إنهاء الحجز رقم 12 من قبل المستخدم', 'Test', '', '130', 'confirm_order', 'single', 12, 0, '2018-08-05 16:25:42', '2018-08-05 16:25:42'),
(29, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 13, 0, '2018-08-05 16:29:48', '2018-08-05 16:29:48'),
(30, 'تم قبول الطلب الخاص بك رقم 13', 'حالة الطلب', '', '129', 'order', 'single', 13, 0, '2018-08-05 16:30:33', '2018-08-05 16:30:33'),
(31, ' تم تأكيد إنهاء الحجز رقم 13 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 13, 0, '2018-08-05 16:32:57', '2018-08-05 16:32:57'),
(32, ' تم تأكيد إنهاء الحجز رقم 13 من قبل المستخدم', 'Test', '', '130', 'confirm_order', 'single', 13, 0, '2018-08-05 16:34:12', '2018-08-05 16:34:12'),
(33, 'تم اضافة طلب جديد', 'Test', '', '145', 'new_order', 'single', 14, 0, '2018-08-06 09:36:58', '2018-08-06 09:36:58'),
(34, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 14يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 14, 0, '2018-08-06 09:39:01', '2018-08-06 09:39:01'),
(35, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 15, 0, '2018-08-06 09:44:12', '2018-08-06 09:44:12'),
(36, 'تم قبول الطلب الخاص بك رقم 15', 'حالة الطلب', '', '129', 'order', 'single', 15, 0, '2018-08-06 09:45:09', '2018-08-06 09:45:09'),
(37, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 1يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 1, 0, '2018-08-06 09:52:01', '2018-08-06 09:52:01'),
(38, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 2يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 2, 0, '2018-08-06 09:52:01', '2018-08-06 09:52:01'),
(39, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 3يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 3, 0, '2018-08-06 09:52:02', '2018-08-06 09:52:02'),
(40, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 4يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 4, 0, '2018-08-06 09:52:02', '2018-08-06 09:52:02'),
(41, 'new order has been added', 'samy', '', '31', 'new_order', 'single', 16, 0, '2018-08-06 10:46:36', '2018-08-06 10:46:36'),
(42, 'new order has been added', 'samy', '', '31', 'new_order', 'single', 17, 0, '2018-08-06 10:48:27', '2018-08-06 10:48:27'),
(43, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 16يمكنك الشكوى الان', '', '', '22', 'late_order', 'single', 16, 0, '2018-08-06 10:49:02', '2018-08-06 10:49:02'),
(44, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 17يمكنك الشكوى الان', '', '', '22', 'late_order', 'single', 17, 0, '2018-08-06 10:51:01', '2018-08-06 10:51:01'),
(45, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 18, 0, '2018-08-06 11:18:17', '2018-08-06 11:18:17'),
(46, 'تم قبول الطلب الخاص بك رقم 18', 'حالة الطلب', '', '129', 'order', 'single', 18, 0, '2018-08-06 11:18:42', '2018-08-06 11:18:42'),
(47, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 19, 0, '2018-08-06 11:19:15', '2018-08-06 11:19:15'),
(48, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 20, 0, '2018-08-06 11:20:15', '2018-08-06 11:20:15'),
(49, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 21, 0, '2018-08-06 11:20:49', '2018-08-06 11:20:49'),
(50, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 19يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 19, 0, '2018-08-06 11:22:02', '2018-08-06 11:22:02'),
(51, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 20يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 20, 0, '2018-08-06 11:23:03', '2018-08-06 11:23:03'),
(52, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 21يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 21, 0, '2018-08-06 11:23:03', '2018-08-06 11:23:03'),
(53, 'new order has been added', 'samy', '', '31', 'new_order', 'single', 23, 0, '2018-08-06 12:12:14', '2018-08-06 12:12:14'),
(54, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 1, 0, '2018-08-06 12:30:20', '2018-08-06 12:30:20'),
(55, 'تم قبول الطلب الخاص بك رقم 1', 'حالة الطلب', '', '129', 'order', 'single', 1, 0, '2018-08-06 12:30:32', '2018-08-06 12:30:32'),
(56, ' تم تأكيد إنهاء الحجز رقم 1 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 1, 0, '2018-08-06 12:31:42', '2018-08-06 12:31:42'),
(57, ' تم تأكيد إنهاء الحجز رقم 1 من قبل المستخدم', 'Test', '', '130', 'confirm_order', 'single', 1, 0, '2018-08-06 12:36:11', '2018-08-06 12:36:11'),
(58, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 2, 0, '2018-08-06 13:57:54', '2018-08-06 13:57:54'),
(59, 'تم قبول الطلب الخاص بك رقم 2', 'حالة الطلب', '', '129', 'order', 'single', 2, 0, '2018-08-06 13:58:14', '2018-08-06 13:58:14'),
(60, ' تم تأكيد إنهاء الحجز رقم 2 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 2, 0, '2018-08-06 13:58:32', '2018-08-06 13:58:32'),
(61, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 3, 0, '2018-08-06 14:00:19', '2018-08-06 14:00:19'),
(62, 'تم قبول الطلب الخاص بك رقم 3', 'حالة الطلب', '', '129', 'order', 'single', 3, 0, '2018-08-06 14:00:27', '2018-08-06 14:00:27'),
(63, ' تم تأكيد إنهاء الحجز رقم 3 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 3, 0, '2018-08-06 14:00:42', '2018-08-06 14:00:42'),
(64, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 4, 0, '2018-08-06 14:01:55', '2018-08-06 14:01:55'),
(65, 'تم قبول الطلب الخاص بك رقم 4', 'حالة الطلب', '', '129', 'order', 'single', 4, 0, '2018-08-06 14:02:06', '2018-08-06 14:02:06'),
(66, ' تم تأكيد إنهاء الحجز رقم 4 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 4, 0, '2018-08-06 14:02:25', '2018-08-06 14:02:25'),
(67, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 5, 0, '2018-08-06 14:05:27', '2018-08-06 14:05:27'),
(68, 'تم قبول الطلب الخاص بك رقم 5', 'حالة الطلب', '', '129', 'order', 'single', 5, 0, '2018-08-06 14:06:43', '2018-08-06 14:06:43'),
(69, ' تم تأكيد إنهاء الحجز رقم 5 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 5, 0, '2018-08-06 14:12:06', '2018-08-06 14:12:06'),
(70, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 6, 0, '2018-08-06 14:13:14', '2018-08-06 14:13:14'),
(71, 'تم قبول الطلب الخاص بك رقم 6', 'حالة الطلب', '', '129', 'order', 'single', 6, 0, '2018-08-06 14:13:21', '2018-08-06 14:13:21'),
(72, ' تم تأكيد إنهاء الحجز رقم 6 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 6, 0, '2018-08-06 14:13:45', '2018-08-06 14:13:45'),
(73, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 7, 0, '2018-08-06 14:18:49', '2018-08-06 14:18:49'),
(74, 'تم قبول الطلب الخاص بك رقم 7', 'حالة الطلب', '', '129', 'order', 'single', 7, 0, '2018-08-06 14:19:07', '2018-08-06 14:19:07'),
(75, ' تم تأكيد إنهاء الحجز رقم 7 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 7, 0, '2018-08-06 14:19:17', '2018-08-06 14:19:17'),
(76, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 8, 0, '2018-08-06 14:21:44', '2018-08-06 14:21:44'),
(77, 'تم قبول الطلب الخاص بك رقم 8', 'حالة الطلب', '', '129', 'order', 'single', 8, 0, '2018-08-06 14:22:18', '2018-08-06 14:22:18'),
(78, ' تم تأكيد إنهاء الحجز رقم 8 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 8, 0, '2018-08-06 14:22:40', '2018-08-06 14:22:40'),
(79, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 9, 0, '2018-08-06 14:27:43', '2018-08-06 14:27:43'),
(80, 'تم قبول الطلب الخاص بك رقم 9', 'حالة الطلب', '', '129', 'order', 'single', 9, 0, '2018-08-06 14:29:22', '2018-08-06 14:29:22'),
(81, ' تم تأكيد إنهاء الحجز رقم 9 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 9, 0, '2018-08-06 14:29:31', '2018-08-06 14:29:31'),
(82, ' تم تأكيد إنهاء الحجز رقم 9 من قبل المستخدم', 'Test', '', '130', 'confirm_order', 'single', 9, 0, '2018-08-06 14:30:46', '2018-08-06 14:30:46'),
(83, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 10, 0, '2018-08-06 14:31:20', '2018-08-06 14:31:20'),
(84, 'تم قبول الطلب الخاص بك رقم 10', 'حالة الطلب', '', '129', 'order', 'single', 10, 0, '2018-08-06 14:31:37', '2018-08-06 14:31:37'),
(85, ' تم تأكيد إنهاء الحجز رقم 10 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 10, 0, '2018-08-06 14:32:08', '2018-08-06 14:32:08'),
(86, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 1, 0, '2018-08-06 14:39:21', '2018-08-06 14:39:21'),
(87, 'تم قبول الطلب الخاص بك رقم 1', 'حالة الطلب', '', '129', 'order', 'single', 1, 0, '2018-08-06 14:39:40', '2018-08-06 14:39:40'),
(88, ' تم تأكيد إنهاء الحجز رقم 1 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 1, 0, '2018-08-06 14:41:06', '2018-08-06 14:41:06'),
(89, ' تم تأكيد إنهاء الحجز رقم 1 من قبل المستخدم', 'Test', '', '130', 'confirm_order', 'single', 1, 0, '2018-08-06 14:41:55', '2018-08-06 14:41:55'),
(90, 'تم اضافة طلب جديد', 'Test', '', '130', 'new_order', 'single', 2, 0, '2018-08-06 15:00:13', '2018-08-06 15:00:13'),
(91, 'تم قبول الطلب الخاص بك رقم 2', 'حالة الطلب', '', '129', 'order', 'single', 2, 0, '2018-08-06 15:00:21', '2018-08-06 15:00:21'),
(92, ' تم تأكيد إنهاء الحجز رقم 2 من قبل مزود الخدمة', 'Test provider', '', '129', 'confirm_order', 'single', 2, 0, '2018-08-06 15:00:40', '2018-08-06 15:00:40'),
(93, 'تم اضافة طلب جديد', 'Tahani', '', '130', 'new_order', 'single', 3, 0, '2018-08-08 22:43:27', '2018-08-08 22:43:27'),
(94, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 3يمكنك الشكوى الان', '', '', '141', 'late_order', 'single', 3, 0, '2018-08-08 22:46:01', '2018-08-08 22:46:01'),
(95, 'تم اضافة طلب جديد', 'Tahani', '', '106', 'new_order', 'single', 4, 0, '2018-08-11 12:43:34', '2018-08-11 12:43:34'),
(96, 'تم قبول الطلب الخاص بك رقم 4', 'حالة الطلب', '', '141', 'order', 'single', 4, 0, '2018-08-11 12:44:51', '2018-08-11 12:44:51'),
(97, 'تم اضافة طلب جديد', 'Tahani', '', '106', 'new_order', 'single', 5, 0, '2018-08-11 13:41:58', '2018-08-11 13:41:58'),
(98, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 5يمكنك الشكوى الان', '', '', '141', 'late_order', 'single', 5, 0, '2018-08-11 13:44:01', '2018-08-11 13:44:01'),
(99, ' تم تأكيد إنهاء الحجز رقم 4 من قبل مزود الخدمة', 'طلتتك', '', '141', 'confirm_order', 'single', 4, 0, '2018-08-11 13:48:45', '2018-08-11 13:48:45'),
(100, ' تم تأكيد إنهاء الحجز رقم 4 من قبل المستخدم', 'Tahani', '', '106', 'confirm_order', 'single', 4, 0, '2018-08-11 13:49:01', '2018-08-11 13:49:01'),
(101, 'Gggh', 'Test', '', '145', 'comment', 'single', NULL, 0, '2018-08-12 12:20:33', '2018-08-12 12:20:33'),
(102, 'Hhhh', 'Test', '', '145', 'comment', 'single', NULL, 0, '2018-08-12 12:20:39', '2018-08-12 12:20:39'),
(103, 'تم اضافة طلب جديد', 'Test', '', '145', 'new_order', 'single', 6, 0, '2018-08-27 15:02:31', '2018-08-27 15:02:31'),
(104, 'تم اضافة طلب جديد', 'Test', '', '145', 'new_order', 'single', 7, 0, '2018-08-27 15:03:07', '2018-08-27 15:03:07'),
(105, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 6يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 6, 0, '2018-08-27 15:05:02', '2018-08-27 15:05:02'),
(106, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 7يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 7, 0, '2018-08-27 15:06:02', '2018-08-27 15:06:02'),
(107, 'تم اضافة طلب جديد', 'Test', '', '106', 'new_order', 'single', 8, 0, '2018-08-28 12:50:00', '2018-08-28 12:50:00'),
(108, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 8يمكنك الشكوى الان', '', '', '129', 'late_order', 'single', 8, 0, '2018-08-28 12:52:02', '2018-08-28 12:52:02'),
(109, 'تم حذف حسابك من قبل ادارة التطبيق', 'ادارة التطبيق', '', '149', 'user_delete', 'single', NULL, 0, '2018-08-28 13:04:51', '2018-08-28 13:04:51'),
(110, 'تم اضافة طلب جديد', 'Tahani', '', '106', 'new_order', 'single', 9, 0, '2018-08-29 12:57:00', '2018-08-29 12:57:00'),
(111, 'تم قبول الطلب الخاص بك رقم 9', 'حالة الطلب', '', '141', 'order', 'single', 9, 0, '2018-08-29 12:58:13', '2018-08-29 12:58:13'),
(112, 'تم حذف حسابك من قبل ادارة التطبيق', 'ادارة التطبيق', '', '150', 'user_delete', 'single', NULL, 0, '2018-08-30 11:21:06', '2018-08-30 11:21:06'),
(113, 'تم اضافة طلب جديد', 'Tester', '', '80', 'new_order', 'single', 10, 0, '2018-09-02 13:08:59', '2018-09-02 13:08:59'),
(114, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 10يمكنك الشكوى الان', '', '', '160', 'late_order', 'single', 10, 0, '2018-09-02 13:11:02', '2018-09-02 13:11:02'),
(115, 'تم اضافة طلب جديد', 'Tahani', '', '130', 'new_order', 'single', 11, 0, '2018-09-03 20:29:40', '2018-09-03 20:29:40'),
(116, 'لقد انتهى الوقت المحدد للرد من مزود الخدمة على الطلب 11يمكنك الشكوى الان', '', '', '141', 'late_order', 'single', 11, 0, '2018-09-03 20:32:01', '2018-09-03 20:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01e64e049ee5728d2ba1662333592745998254c9f8d4dfae4e8dae7cbcb43bcbe098a5b278fcd213', 130, 3, 'Test', '[]', 0, '2018-06-19 07:53:48', '2018-06-19 07:53:48', '2019-06-19 10:53:48'),
('0b3b74a37d827af509e0022a50b1658529580ba09694d2058f98106fba0a85237a38c157f0a0793e', 79, 3, 'clza', '[]', 0, '2018-04-16 07:26:08', '2018-04-16 07:26:08', '2019-04-16 10:26:08'),
('0f3781dd765ce089bf546c0996286a4d5cd4a65af32cee19d8d5c85eca9620729f4df37e58179408', 146, 3, 'Beauty center', '[]', 0, '2018-08-02 10:40:42', '2018-08-02 10:40:42', '2019-08-02 13:40:42'),
('0fabb4b22f6853cfea88ad6aaa522f1f4bef84606e277f7b6eaabae694303b7c6bf8fb2805d4b66f', 81, 3, 'note', '[]', 0, '2018-06-18 22:54:58', '2018-06-18 22:54:58', '2019-06-19 01:54:58'),
('10e500b66f9340412d52d7af6ed9d5597db8b417040603420882b6b53943cbba9a2f496617e24a07', 80, 3, 'clza', '[]', 0, '2018-04-16 08:14:19', '2018-04-16 08:14:19', '2019-04-16 11:14:19'),
('1357f1f6f24cf8bafe5950c5f4e21dc0050cd3307da08d9e8cda0cd6f5ecc45bdc3f4ef9098c0be9', 89, 3, 'Test', '[]', 0, '2018-05-20 08:14:57', '2018-05-20 08:14:57', '2019-05-20 11:14:57'),
('146ad86667bb32536435efbf853785ec5a391afaa745897417c79fed1b601b7e4a000bba0f15e62c', 113, 3, 'انا', '[]', 0, '2018-06-04 04:22:01', '2018-06-04 04:22:01', '2019-06-04 07:22:01'),
('146fd8e3f2c9eafb7a27632d446312277b3b2753fc80a2d19f8269bf7da0210aeaf9c112ae9436dd', 102, 3, 'Test', '[]', 0, '2018-05-28 07:31:36', '2018-05-28 07:31:36', '2019-05-28 10:31:36'),
('14be7578a73f9c816f49c627ec2ead157c58664cb61e3da3fbed7a7d7886e313f7549274197fb78f', 105, 3, 'Testtest', '[]', 0, '2018-05-30 09:48:39', '2018-05-30 09:48:39', '2019-05-30 12:48:39'),
('14cf4f8ec199120b40de5a2aab4f732634494e7aaa8d04033e7feb02c9ff5442717dc12802ed7b43', 106, 3, 'طلتتك', '[]', 0, '2018-06-10 09:42:02', '2018-06-10 09:42:02', '2019-06-10 12:42:02'),
('164c0eafb912834485aa140eaf94181bafa9e084006ce0274a3dcea457b408f84af31200532b318e', 128, 3, 'Ttt', '[]', 0, '2018-06-10 12:11:46', '2018-06-10 12:11:46', '2019-06-10 15:11:46'),
('16ac57f8d72dfa3b325a9db2fd7eec210ff969c0b7973957d5c790c8d4c44617efb78458ef0b60c8', 112, 3, 'انا', '[]', 0, '2018-06-04 04:21:25', '2018-06-04 04:21:25', '2019-06-04 07:21:25'),
('173dbc539cfe17d520c1cda51b5fdf1907c7536fd4307b6bf124969d6d05b6cbdfb998ab6bce5d36', 106, 3, 'طلتك', '[]', 0, '2018-05-30 12:40:49', '2018-05-30 12:40:49', '2019-05-30 15:40:49'),
('1785369852407039b7824492b88fd1e46d6d4c5b0d8930bbbf8e74c8e4c39b8406ab04c55f65f47a', 111, 3, 'talla username', '[]', 0, '2018-06-03 11:22:10', '2018-06-03 11:22:10', '2019-06-03 14:22:10'),
('1a62db8af3a40f8b914bf099d5f1318c10166470ac412b01d1f570712f8ebe470fd247b933e40cda', 130, 3, 'Test', '[]', 0, '2018-06-19 07:53:31', '2018-06-19 07:53:31', '2019-06-19 10:53:31'),
('1b70827a551d0b57a83289cf71f89190b61f0b66889a6705009cc07c323a1d349fb464569613c973', 95, 3, 'Test providers', '[]', 0, '2018-05-20 12:24:49', '2018-05-20 12:24:49', '2019-05-20 15:24:49'),
('266fe5055df87424c22a261a121372dd0eee2e3160bb3a3efcb11db31ff6113a01ad3dc388b45a81', 66, 3, 'ramy', '[]', 0, '2018-04-12 05:56:32', '2018-04-12 05:56:32', '2019-04-12 08:56:32'),
('27891ef06abb23301fac1577da587f17409fb684ba1289554490e0eb0f763846e118896a1ee22629', 144, 3, 'Mohamed', '[]', 0, '2018-07-09 07:31:59', '2018-07-09 07:31:59', '2019-07-09 10:31:59'),
('2c7a9b76c7584c6abfb7729ba431a8ca236aacfd9630a4826108738bf918c76b5de5461fbf1478f4', 123, 3, 'New', '[]', 0, '2018-06-10 08:44:49', '2018-06-10 08:44:49', '2019-06-10 11:44:49'),
('2dceb54623675f384df9084c5d9f4235135607d1da0962e41f96b88adc923f82feab830f8d5e9681', 67, 3, 'webway', '[]', 0, '2018-04-12 06:26:23', '2018-04-12 06:26:23', '2019-04-12 09:26:23'),
('2f6e314c77ed3a5e4581791b4d02cf07bf159603baee935dece389bb81efd2203231d73b4655f2bb', 101, 3, 'Test22', '[]', 0, '2018-05-26 12:00:27', '2018-05-26 12:00:27', '2019-05-26 15:00:27'),
('33c4bcbedfe584dc83654da447c68beb17017ae89851795042850a72a29640db0c5d09e9a964fe67', 68, 3, 'web', '[]', 0, '2018-04-12 06:32:39', '2018-04-12 06:32:39', '2019-04-12 09:32:39'),
('35760bbd1c6df3db8e817c0547799636aa5ce5f67cf7652ab82f7dfd05fae236ef6615ea632dd4a8', 51, 3, 'Maher', '[]', 0, '2018-04-05 05:27:41', '2018-04-05 05:27:41', '2019-04-05 08:27:41'),
('3a0587a6a9a17f1f479276573901c39196abfd01edf127cca153e6d4a8e0fe123e111c3710f3f08d', 151, 3, 'Mosalah', '[]', 0, '2018-08-30 11:41:43', '2018-08-30 11:41:43', '2019-08-30 14:41:43'),
('3aa649801b6dbb8e507e9766b5b880558da503949c28b159b4f93c411cfaf9e36e1237341a1fd1e8', 56, 3, 'Ramiii', '[]', 0, '2018-04-05 05:52:05', '2018-04-05 05:52:05', '2019-04-05 08:52:05'),
('3cab831d6f32a76170c52c6c14a7e4bdf0c1edcfd72266e871f4090cc1c5d2e6a946982436a63de9', 130, 3, 'Test', '[]', 0, '2018-06-28 12:38:19', '2018-06-28 12:38:19', '2019-06-28 15:38:19'),
('3d7cdca151d6c1e6395af45172c58eb3f90a3d59d46f9f6e45ecf2070191418735bf471565697541', 4, 3, 'inas', '[]', 0, '2018-06-18 22:52:56', '2018-06-18 22:52:56', '2019-06-19 01:52:56'),
('404f0c5341d065cb0a4d62d562e71ba5a3b0e0fad446b820f9c92aaf056183b122a3b60df1d4cd79', 149, 3, 'Medo', '[]', 0, '2018-08-28 12:50:38', '2018-08-28 12:50:38', '2019-08-28 15:50:38'),
('41cee8c43fa2580d393c657e5828283131871a9037b3ad9b6cfaa60c309e0c6b11fc1e19028fb1d0', 64, 3, 'www', '[]', 0, '2018-04-11 11:06:28', '2018-04-11 11:06:28', '2019-04-11 14:06:28'),
('4626848af5de662594cf7a719c4cf90e493a1b531e6d858a2435d20c1fa036833467047b0bdf31f3', 110, 3, 'talla name', '[]', 0, '2018-06-03 09:36:41', '2018-06-03 09:36:41', '2019-06-03 12:36:41'),
('48c412bc1f3c9061fc31be30a2b6233d0c888632f6799becfd60a4327db0a0f5bf4642e87b0fc35a', 81, 3, 'note', '[]', 0, '2018-06-28 12:35:00', '2018-06-28 12:35:00', '2019-06-28 15:35:00'),
('4ad0f686d4174cd8e196580a9d869fd6578c379a974f81336b8d7115fa8b5febdfbfbc85adfdf7de', 4, 3, 'inas', '[]', 0, '2018-06-05 11:55:07', '2018-06-05 11:55:07', '2019-06-05 14:55:07'),
('5035d7b8e54c1da7b99b8828ef9a4ee088cba83451bd30b6b632bece9e73451f63b1992e7191c1e3', 97, 3, 'الامل', '[]', 0, '2018-05-23 12:12:03', '2018-05-23 12:12:03', '2019-05-23 15:12:03'),
('527ef3ece8b5af0b8f67a255f06274f4fcb6c6e569a6e37920e36a2a45b893e3f4d5602d1348c37a', 148, 3, 'Dyxgfufu', '[]', 0, '2018-08-06 13:21:14', '2018-08-06 13:21:14', '2019-08-06 16:21:14'),
('540891a0c4a6ba8e739a747584797283249286a5fd8d5532bc494298d2a20c7d7a2681db0bb389d9', 98, 3, 'Test', '[]', 0, '2018-05-26 10:25:46', '2018-05-26 10:25:46', '2019-05-26 13:25:46'),
('548621587de9df081cf160bbfb97a6ed1bb6204f4489920fa6130029b539379b3872c60616c6b59f', 109, 3, 'aaa', '[]', 0, '2018-05-31 08:13:19', '2018-05-31 08:13:19', '2019-05-31 11:13:19'),
('5716eeb2233ea27ebd971f8b99cedcbc9b6b74b8211432544b2bd78a119f29c8a9427fdc44039d7f', 52, 3, 'Hassan', '[]', 0, '2018-04-05 05:32:57', '2018-04-05 05:32:57', '2019-04-05 08:32:57'),
('5895490cba4a03b2fc0e906755d143058175c1de98a62c0cadc6be2aebeeb5f7bc449698e6c912ed', 49, 3, 'ahmed', '[]', 0, '2018-04-05 04:36:09', '2018-04-05 04:36:09', '2019-04-05 07:36:09'),
('5a41817a9088ff876ed1448b1b466461e1d65aae6229d9794f9f2164858c8a55fcd7f881d03934d4', 42, 3, 'ahmed', '[]', 0, '2018-04-02 11:31:32', '2018-04-02 11:31:32', '2019-04-02 14:31:32'),
('5ed2816df919c147472741a527f33649ff08bacb211897e2794d3234113c99cb4e0ded16217b0bb3', 83, 3, 'Test', '[]', 0, '2018-05-02 09:14:01', '2018-05-02 09:14:01', '2019-05-02 12:14:01'),
('605a74c47486393faceb4c3d5f6e8f5934242b11824178523b3d703a0c785e33b834e5217ed3f5d3', 53, 3, 'Omar', '[]', 0, '2018-04-05 05:37:42', '2018-04-05 05:37:42', '2019-04-05 08:37:42'),
('63cc22d7d0ed078a857ec1cb1758e7ed50d4600ab9282342ae0c0f219a4b6a6e6778971e72e2f2f3', 35, 3, 'samir', '[]', 0, '2018-03-28 06:57:10', '2018-03-28 06:57:10', '2019-03-28 08:57:10'),
('657d52ff88145b5ce8628076cf60c027854030116f831ad82a60a4debcdf3734a40a8d1793fba5d7', 41, 3, 'ahmed', '[]', 0, '2018-04-02 11:30:19', '2018-04-02 11:30:19', '2019-04-02 14:30:19'),
('65d5ce5712c38f44c79052e84655ebdd153735d2b79167671bb8358bdfa6e7a5001f537c349620e8', 43, 3, 'ahmed', '[]', 0, '2018-04-02 11:32:40', '2018-04-02 11:32:40', '2019-04-02 14:32:40'),
('6934cbc78d23598a9eed7519706b0ab4d7f1284e02a47c0a779091a8014d80e94b9f5c762814e1e6', 141, 3, 'Tahani', '[]', 0, '2018-07-01 15:12:35', '2018-07-01 15:12:35', '2019-07-01 18:12:35'),
('69806442d8ec24e2373f1e1fd15df5b292ee172d9019ba01b5a41a262e5a39d4bf1af702dc7b8258', 129, 3, 'Test', '[]', 0, '2018-06-10 13:07:51', '2018-06-10 13:07:51', '2019-06-10 16:07:51'),
('69dc04bab57637e0d8b8e7318e2863cf4d1c8a34108fda2982dd15251fb60342c30a04dc08d7fb48', 159, 3, 'Tester', '[]', 0, '2018-09-02 13:04:10', '2018-09-02 13:04:10', '2019-09-02 16:04:10'),
('6e30d668dd6aabfcd7ba32825e0928f1a77780621f8a8a6c7a4a0e498bc85156c70135d12b94781f', 74, 3, 'dspy', '[]', 0, '2018-04-14 08:11:18', '2018-04-14 08:11:18', '2019-04-14 11:11:18'),
('74a8254cba283e372175b6f8306bcd1fb5ed593077bc3bae07ecc87ca96f02342e1da11d5f16b004', 60, 3, 'ahmed', '[]', 0, '2018-04-11 10:03:33', '2018-04-11 10:03:33', '2019-04-11 13:03:33'),
('75e314b483527e5e87ea7a50bc53d6b2a5ec54918951e98cb2e79ef7fe3cf420ef3112dcb2ec4b0b', 48, 3, 'ahmed', '[]', 0, '2018-04-05 04:19:48', '2018-04-05 04:19:48', '2019-04-05 07:19:48'),
('76eb74ca102205d7b53602d461c71c1c0bab0d2bb7e6865d92f7fcce5315d7e05cf14dde7b91079f', 130, 3, 'Test', '[]', 0, '2018-06-10 13:19:37', '2018-06-10 13:19:37', '2019-06-10 16:19:37'),
('77abf963d75a42f3138086c287e61b22ab6e44841770168a9a8e18691e198b4bc0de2e4726c0b9b8', 127, 3, 'Maher', '[]', 0, '2018-06-10 11:50:23', '2018-06-10 11:50:23', '2019-06-10 14:50:23'),
('7862160c96c8dfac202326a340126b09baccc869e9fc4aa36599a5507a55c78fdc5dd2ab20ccce95', 152, 3, 'Mosalah', '[]', 0, '2018-08-30 11:42:51', '2018-08-30 11:42:51', '2019-08-30 14:42:51'),
('798b594e41a8d88f8e36fd3e960242e9c7a7c1143ce9fcf3d6efaf0f74bd401718269d19d630e3b6', 40, 3, 'ahmed', '[]', 0, '2018-04-02 08:28:59', '2018-04-02 08:28:59', '2019-04-02 11:28:59'),
('7ace342ec2ee96fab961b6ca6af55e0a63bc4808a64ec7fd718731dda536655f6231b6b79e7b4153', 71, 3, 'siteprovider', '[]', 0, '2018-04-12 09:26:30', '2018-04-12 09:26:30', '2019-04-12 12:26:30'),
('7d867fd980a3dc8abdc589f273ba7d58d058ee48a101cc72523de3091b2de57f311408337067605f', 117, 3, 'ddd', '[]', 0, '2018-06-04 12:33:42', '2018-06-04 12:33:42', '2019-06-04 15:33:42'),
('7dc05e58d48c92eb3ad96cb7b152974475d002f08d02c4fa280fc66520dd6b150bfa185bd6b8183c', 4, 3, 'inas', '[]', 0, '2018-06-06 07:52:02', '2018-06-06 07:52:02', '2019-06-06 10:52:02'),
('7dc9b332513ce254b87cd143624dd0d6d92e758ce8d1bfb879d5aca0ca1541e0340b8ca3016e3732', 158, 3, 'Enas', '[]', 0, '2018-09-02 09:02:41', '2018-09-02 09:02:41', '2019-09-02 12:02:41'),
('80224c9d0624918439fdade3bc48b9829876eb2a7b0a6bb6753b6d6e7063f8c17a17c208f69fb2e8', 133, 3, 'Ahmed', '[]', 0, '2018-06-11 11:12:57', '2018-06-11 11:12:57', '2019-06-11 14:12:57'),
('83e4355c87c3e8314cd3cba51fc4b4e458346f933a141c7702004cacff3baad6cd639e1222675027', 107, 3, 'Mohamed', '[]', 0, '2018-05-30 12:54:02', '2018-05-30 12:54:02', '2019-05-30 15:54:02'),
('843fa5faaa0f319993fd554014d64e190602e3780f64a01db5ef85db1927ffab11c19443bf187189', 132, 3, 'Fff', '[]', 0, '2018-06-11 09:04:49', '2018-06-11 09:04:49', '2019-06-11 12:04:49'),
('8748082a218439d8a7abe7f307e64bd11e1783d2d5e7aff56073857d4ab99646522e456bb3649d45', 77, 3, 'saned', '[]', 0, '2018-04-16 05:50:50', '2018-04-16 05:50:50', '2019-04-16 08:50:50'),
('876dcb0a3d4c2b0d0beda4a8e6f9850f550bdc29e2cbe69123885fa2bb4944b03377160d84b737cc', 50, 3, 'ahmed', '[]', 0, '2018-04-05 04:42:37', '2018-04-05 04:42:37', '2019-04-05 07:42:37'),
('88d4d23aa349a4e1874c472c116bd9e84f6f835191f062f386e031e390efbf3149e1c263c36fe146', 39, 3, 'ahmed', '[]', 0, '2018-04-02 08:26:26', '2018-04-02 08:26:26', '2019-04-02 11:26:26'),
('8a6950ad3dc0901aa52646d0f55395ffdad62e4ea4bdc9052370fff4858e255d9bd4f64cdd6a4e0c', 92, 3, 'Test', '[]', 0, '2018-05-20 10:47:48', '2018-05-20 10:47:48', '2019-05-20 13:47:48'),
('8a7faf778450bfcd90213a3f8c09b6aa48ea5ca63c86997ff14f121b56380842af12d1a2435aa92a', 139, 3, 'Ahmed', '[]', 0, '2018-06-27 18:06:16', '2018-06-27 18:06:16', '2019-06-27 21:06:16'),
('8ba2dd84598bd1876ea9d8a384f600b0bb4781643c5a533e9aba63677066f8170383896ff634a363', 72, 3, 'ahmed', '[]', 0, '2018-04-14 06:55:26', '2018-04-14 06:55:26', '2019-04-14 09:55:26'),
('8d7a993780f376cdcb74c660c0d89ec8280c1482550585f484fc7af755b2e52771e067c14af93ead', 120, 3, 'انتي اجمل', '[]', 0, '2018-06-06 18:34:46', '2018-06-06 18:34:46', '2019-06-06 21:34:46'),
('8f29854756dd7b0d7d18f5431bd67431b72f900b35ad16da8359812f87de6dcc54b46911922bd22b', 63, 3, 'market', '[]', 0, '2018-04-11 10:57:02', '2018-04-11 10:57:02', '2019-04-11 13:57:02'),
('9428ce709ee9159017aaf7754827b9a2334963dfd01f5c4bd9096e0314295b40e71ed8b11f73bce6', 103, 3, 'Test', '[]', 0, '2018-05-29 07:22:14', '2018-05-29 07:22:14', '2019-05-29 10:22:14'),
('97c289f7f232e3076e284029f320884eb3e4f929b7f982bd7d5ea3d3a9752a9346bcadc534cd4b67', 88, 3, 'ahmed', '[]', 0, '2018-05-16 13:11:12', '2018-05-16 13:11:12', '2019-05-16 16:11:12'),
('98d09eb84ee7dd49c1fceeafcea4e03b50dd7810ca725fc14a21dbfe33eca1126314b713f99d84f5', 142, 3, 'Saned', '[]', 0, '2018-07-03 14:51:33', '2018-07-03 14:51:33', '2019-07-03 17:51:33'),
('a0e3e016c7dce8e7853f589c0795f88d74d7ce4dbcbad4e2ca9497917eb2f75263c6afada0d60822', 73, 3, 'ahmed', '[]', 0, '2018-04-14 06:55:46', '2018-04-14 06:55:46', '2019-04-14 09:55:46'),
('a1c50e9246027bbfc8c905670c8cff835f6c7f91287c1da4895960ba6ca45c958c08c53e03a9d9a3', 122, 3, 'Test', '[]', 0, '2018-06-10 07:56:02', '2018-06-10 07:56:02', '2019-06-10 10:56:02'),
('a3e6f18b44ca4c738715deb0df84c92338117df54f6630ce3c62915f1efc482ae7c1b928050d5b01', 62, 3, 'global', '[]', 0, '2018-04-11 10:35:44', '2018-04-11 10:35:44', '2019-04-11 13:35:44'),
('a4bd21c3c0ac3db4695c16577a90a452330b95ef6a332714e54a1c3ef956cffaa76b1cc27399b4ef', 125, 3, 'New33', '[]', 0, '2018-06-10 09:11:37', '2018-06-10 09:11:37', '2019-06-10 12:11:37'),
('a6b13bdea29cea9544816d0f0bf87e9d1ad64911069e86292e4100cc5cad03a07e55ac1ae6f34d4f', 37, 3, 'hamed', '[]', 0, '2018-03-28 07:02:11', '2018-03-28 07:02:11', '2019-03-28 09:02:11'),
('a80a25aebd5b966271e7fde89ab0b5532352bd9b5ffa1c862128c1e6dbea7262c238be8a69339d31', 80, 3, 'مركز حلاقة', '[]', 0, '2018-06-26 13:01:08', '2018-06-26 13:01:08', '2019-06-26 16:01:08'),
('ab169b393987e482d4bf3faeacb386cd2140643fe3be92266aa14f03706523707cc8871d5fcce74f', 155, 3, 'Hair style center', '[]', 0, '2018-09-01 22:08:31', '2018-09-01 22:08:31', '2019-09-02 01:08:31'),
('ab763f29f09c7b448859a49fe5596ecb305a3b4eba231bf53fa8996de0782b1993fad6fe19b0872c', 126, 3, 'Test', '[]', 0, '2018-06-10 09:37:53', '2018-06-10 09:37:53', '2019-06-10 12:37:53'),
('aec6122d45e7f1cc1610c07bfa45eec0043fb5865de421b021049c43910fbcfafc6f42c949df4bf6', 116, 3, 'test', '[]', 0, '2018-06-04 11:34:19', '2018-06-04 11:34:19', '2019-06-04 14:34:19'),
('aecf2a0ef63da47f3197b566140c65a90fc91e78e7686675f64df3d89b195bf20b0e29813ce0bfd3', 143, 3, 'Tahani', '[]', 0, '2018-07-04 00:22:54', '2018-07-04 00:22:54', '2019-07-04 03:22:54'),
('afe56ec141c31d3c801253beeeb17e492709c62d96028492ec97115ed6cef08b23474381f05052a7', 57, 3, 'global', '[]', 0, '2018-04-11 09:29:11', '2018-04-11 09:29:11', '2019-04-11 12:29:11'),
('b174a7eed91a729ad8e54ac650597328c022709d1e1b540318b1873800dc18229454ebae0b64fc5d', 108, 3, 'aaa', '[]', 0, '2018-05-31 08:11:59', '2018-05-31 08:11:59', '2019-05-31 11:11:59'),
('b7385cb5a8da635d2fa8036bf218fe95827af4e1d453a96e7bb9a8df7eabf35e6ec0ba61452944e3', 145, 3, 'Gogo', '[]', 0, '2018-07-09 08:21:46', '2018-07-09 08:21:46', '2019-07-09 11:21:46'),
('b7765c55ae312057a8b663eaf028cc118b51dbde85d980ec226272550ffc3ed105904c4ff0102e6e', 115, 3, 'طلتتتكم', '[]', 0, '2018-06-04 05:40:47', '2018-06-04 05:40:47', '2019-06-04 08:40:47'),
('b89f2ac7b2357831f0a2bc806928f228708cab0d4b2f919c9bedd9dacf8f34feab0f0567d8a5766e', 134, 3, 'Ghada', '[]', 0, '2018-06-11 12:41:24', '2018-06-11 12:41:24', '2019-06-11 15:41:24'),
('b9bce25573808604c3c097fbddcba8d14afc47bc8010627a0538dfa1c320a0be4d6388755495f552', 106, 3, 'طلتك', '[]', 0, '2018-06-06 11:34:52', '2018-06-06 11:34:52', '2019-06-06 14:34:52'),
('ba5811021a54e7b6edbe35bf6a121e1cac16e2ad10fa7840bd56b92cabc128392ac95dcc59e373f8', 114, 3, 'Tahani', '[]', 0, '2018-06-04 04:32:19', '2018-06-04 04:32:19', '2019-06-04 07:32:19'),
('be27f0e65942777246d45272e5864cc8ab616034b9bb5f189f088e1d45ecb8956c00ef46b7fc4b56', 69, 3, 'ahmed33', '[]', 0, '2018-04-12 06:53:12', '2018-04-12 06:53:12', '2019-04-12 09:53:12'),
('bf0ea57655ed54d85df40ad5af67f433877e9dea88a2e07eae6d7edd81eab3b4b0e207052cfba410', 94, 3, 'Test providers', '[]', 0, '2018-05-20 12:02:03', '2018-05-20 12:02:03', '2019-05-20 15:02:03'),
('bf28c843eec83158f019fc7cf515260e841b82875f14865b4605fd82c108d475f143d089e43303c0', 65, 3, 'ahmed', '[]', 0, '2018-04-11 11:18:04', '2018-04-11 11:18:04', '2019-04-11 14:18:04'),
('c0c8f4ee3079491041da5c8dde0e8184fd843ba7c33e1fb9b9947b1a6c57dd603408cb3b1672f53c', 90, 3, 'Test', '[]', 0, '2018-05-20 08:40:56', '2018-05-20 08:40:56', '2019-05-20 11:40:56'),
('c2e922c6751c0417d0a875431ef031e29275f69c751e23823f026a8f6dee0d3908dc000f2a573fe2', 75, 3, 'front', '[]', 0, '2018-04-14 08:20:18', '2018-04-14 08:20:18', '2019-04-14 11:20:18'),
('c45f5b031f7d8eccf5f54bc626df18ca4cb221490650e2097c958bd7b90c8d0050944f6af1cdc6f7', 100, 3, 'Test', '[]', 0, '2018-05-26 11:01:57', '2018-05-26 11:01:57', '2019-05-26 14:01:57'),
('c51ec77bfc7418bb834ef95f99f3ac1b8d588add00594a7c83ab5243ef829394c1e2d4c83a222b4c', 104, 3, 'Test', '[]', 0, '2018-05-29 07:30:19', '2018-05-29 07:30:19', '2019-05-29 10:30:19'),
('c56778b22d8a3bbcc463599d04359f6f0ebdd002bc132599128f11e40cb908268e8f9bc2e702093d', 76, 3, 'sss', '[]', 0, '2018-04-15 09:40:23', '2018-04-15 09:40:23', '2019-04-15 12:40:23'),
('c82a89bffab6c92a2504fc8d7e2a40fd07faf82d6cb12901180c294d83c890895362b709e0b8043b', 111, 3, 'talla name', '[]', 0, '2018-06-03 09:38:39', '2018-06-03 09:38:39', '2019-06-03 12:38:39'),
('c96fd3af8d76c1847599b5d2f13b29f521c888fdf690a646b6e8f615421f95f7330dd3a11c22089d', 119, 3, 'Manar', '[]', 0, '2018-06-06 12:35:32', '2018-06-06 12:35:32', '2019-06-06 15:35:32'),
('cb3da787d8614d4de4b7220680868e9956c69c4089f7e94881aba9ddec3e4dbe45ec802533122c30', 96, 3, 'Mohamed', '[]', 0, '2018-05-23 12:04:02', '2018-05-23 12:04:02', '2019-05-23 15:04:02'),
('d42c630ee55071077935d2e0b20277023ce79b331b69ba08ec4dd3cb9fa26cdfa76ee8369319afec', 87, 3, 'Tttrtttrrrtrr', '[]', 0, '2018-05-09 14:25:06', '2018-05-09 14:25:06', '2019-05-09 17:25:06'),
('d4d9c6cf33d29eac2699fd5b9fadfcca32d8cc3b243f3b7cdb9c1ced021223c5731afeafd71a4d10', 1, 3, 'test', '[]', 0, '2018-03-28 06:39:24', '2018-03-28 06:39:24', '2019-03-28 08:39:24'),
('d55998048bc6601a332c6d80d482f13322a56e19dcdfcc7b4edfa656f281fdd62349bc6fac450384', 135, 3, 'Ghada', '[]', 0, '2018-06-11 12:43:06', '2018-06-11 12:43:06', '2019-06-11 15:43:06'),
('d5672e544535a290e16900831b33a6bf99cf3f4a462f8e5466746fd5015d7129ea6e62e679d0804e', 157, 3, 'Hair style centre', '[]', 0, '2018-09-02 09:01:09', '2018-09-02 09:01:09', '2019-09-02 12:01:09'),
('d5fae7ae59a8be2fb6d8e4cb4015bb290fc912e3bef8f45fde4b5c80116a6359f977e835bdfd8208', 59, 3, 'ahmed', '[]', 0, '2018-04-11 10:02:44', '2018-04-11 10:02:44', '2019-04-11 13:02:44'),
('d8207f60088ba628e45645289e5a2c627123e4cd51e379ee11509bd78d162b57f4e036a6258b431b', 58, 3, 'saned', '[]', 0, '2018-04-11 09:30:50', '2018-04-11 09:30:50', '2019-04-11 12:30:50'),
('dcf60e159b7f2dd7eb9810049bd0339d24d6ee27c767fa56e0cc886ae3f56924f1e078b5fe90189e', 121, 3, 'Areej', '[]', 0, '2018-06-10 02:03:34', '2018-06-10 02:03:34', '2019-06-10 05:03:34'),
('dd255f642c7be80bfc1bc59f508d97642b52b0b11480f4fdbcc06878193712361fe2b22128dbdd2c', 82, 3, 'Dawood', '[]', 0, '2018-05-01 10:15:35', '2018-05-01 10:15:35', '2019-05-01 13:15:35'),
('ddde0d17db38e55cace0625c739133eda34c2f2178185e870261247fabe6c1468d40df2246109738', 91, 3, 'Test', '[]', 0, '2018-05-20 09:17:36', '2018-05-20 09:17:36', '2019-05-20 12:17:36'),
('de2c2d01350c6873804dc2237772efea34c357db0c61d23ccac29574bf8c7822faba5a0f578120f7', 140, 3, 'Areej', '[]', 0, '2018-07-01 15:07:33', '2018-07-01 15:07:33', '2019-07-01 18:07:33'),
('def14bd5db3e80c9a399b78ad81d2e571ce7c065ad67504a8c91c8345854823b18b7d9e74052c6a4', 138, 3, 'Test', '[]', 0, '2018-06-27 09:24:11', '2018-06-27 09:24:11', '2019-06-27 12:24:11'),
('e12780a2656bf7e4edaaf78afda72d1d5d814f25dcc310343f99c444ec7438a9a7f6b69ae08c44b9', 55, 3, 'Ramii', '[]', 0, '2018-04-05 05:44:20', '2018-04-05 05:44:20', '2019-04-05 08:44:20'),
('e27b32b38c21ece9717b5e832e1fccf305101b4c0c7cba2d0a8dc217d462dde180439a5450b24aa7', 154, 3, 'Mosalah', '[]', 0, '2018-08-30 11:46:20', '2018-08-30 11:46:20', '2019-08-30 14:46:20'),
('e3c4523895b501e9c6368811c143586ea495dfa9685c2d30ea87711789231ea5aee53c19dfcc0a6f', 38, 3, 'ahmed', '[]', 0, '2018-04-02 08:21:53', '2018-04-02 08:21:53', '2019-04-02 11:21:53'),
('e3ce7aa15b0a75c281fa85844800dc81dc12c5234bb7db1bc7e1a42c549f7305047412dd539faba6', 93, 3, 'Test providers', '[]', 0, '2018-05-20 11:49:20', '2018-05-20 11:49:20', '2019-05-20 14:49:20'),
('e419bf949e00c2800fcdac83d7a64fd2016fa47f4e20c28088a534ad55bbdc9e3bd7860db6c013c4', 54, 3, 'Ramy', '[]', 0, '2018-04-05 05:42:00', '2018-04-05 05:42:00', '2019-04-05 08:42:00'),
('e481afea837a2daccc358eeea4ae2f38064715e1700dce73504fc77922e23311ce4a162e4576bd2f', 70, 3, 'talla site', '[]', 0, '2018-04-12 08:25:17', '2018-04-12 08:25:17', '2019-04-12 11:25:17'),
('e50a37577c8a9f04896ebe1a7b246b458f7ce697468cc653f72669e759b7f8257831c18caed218e4', 81, 3, 'note', '[]', 0, '2018-04-16 10:32:21', '2018-04-16 10:32:21', '2019-04-16 13:32:21'),
('e57b9a6c4fd185d77b935b15358524d6b34f3c4963378435f4ddafa0a95a65eb1be29fcd95933e71', 118, 3, 'ddd', '[]', 0, '2018-06-04 12:35:44', '2018-06-04 12:35:44', '2019-06-04 15:35:44'),
('e8cca2bf1bc3043021a1d190a62fa73f5413873b47ef666def701e5dbfb72e61838fbf6294acc1ae', 147, 3, 'Gghh', '[]', 0, '2018-08-06 12:03:05', '2018-08-06 12:03:05', '2019-08-06 15:03:05'),
('eb705e91d2f4142de70f2d5583a9c81b6c1bbf41251d09a2896a2e05794a500321e17a6f5ec49814', 106, 3, 'طلتك', '[]', 0, '2018-06-06 11:34:12', '2018-06-06 11:34:12', '2019-06-06 14:34:12'),
('ec0f464738c178633e120decbdaa9476faef26437b409b05df94c833df2dd9313cf21d4c540a5494', 156, 3, 'Ahmed', '[]', 0, '2018-09-01 22:13:24', '2018-09-01 22:13:24', '2019-09-02 01:13:24'),
('ecd88001aba1145af603ba9b1ccc66abaf0e883fbfdd0b2ed99483c991776d281b2018cfb3ff6366', 111, 3, 'talla username', '[]', 0, '2018-06-03 11:21:21', '2018-06-03 11:21:21', '2019-06-03 14:21:21'),
('f19073369c34179e9ee1d094f503924a81059bbf3f3d553a2856cbe921c140fefa063fb9b9c53a4f', 36, 3, 'hamed', '[]', 0, '2018-03-28 07:01:02', '2018-03-28 07:01:02', '2019-03-28 09:01:02'),
('f24d571632450637c72eacddc751a86160748124a7c136dd93fc0eda376d38dda872c8d281c14a05', 150, 3, 'Medo', '[]', 0, '2018-08-28 12:52:18', '2018-08-28 12:52:18', '2019-08-28 15:52:18'),
('f2e59b00e99cbaed2e40f14ebeca3214abe1152a6adada54e4dc6b4e535a10c14197910a1ff8722e', 160, 3, 'Tester', '[]', 0, '2018-09-02 13:05:19', '2018-09-02 13:05:19', '2019-09-02 16:05:19'),
('f4786d2152e5cc8d5458ccebf446fc28788ca4fe8007f29c8f8ed6312fdc40d7599ae45de44a375d', 124, 3, 'New2', '[]', 0, '2018-06-10 08:53:58', '2018-06-10 08:53:58', '2019-06-10 11:53:58'),
('f5c29b696d8eb886109409f0afaecfa62c94558ce1ba10c6b3498d984b5da1d4d3e5f5485e6bff3a', 99, 3, 'Test', '[]', 0, '2018-05-26 10:58:28', '2018-05-26 10:58:28', '2019-05-26 13:58:28'),
('f5df2bc8267823e3212dfcec9cfa4a35842f78e6a5569decd7d1fc4606f7abc24d27729509835743', 131, 3, 'Ttuuj', '[]', 0, '2018-06-11 08:21:51', '2018-06-11 08:21:51', '2019-06-11 11:21:51'),
('f61261746d6c745c007e382b50fc91ea0af36cae98617d79bb1bd17076ea7217a7f31ede72e14f9c', 86, 3, 'Ttrrr', '[]', 0, '2018-05-09 14:11:37', '2018-05-09 14:11:37', '2019-05-09 17:11:37'),
('f6dd0a0da59ebc55df065f84c7a267017ceb5dc0766c8eeddcf31a80a8a80cd20500e39825d51470', 80, 3, 'مركز حلاقة', '[]', 0, '2018-06-26 13:02:40', '2018-06-26 13:02:40', '2019-06-26 16:02:40'),
('f74b3f6642b026201c8a7fed531222509ef0207daffeb07795ee35b9ea3d1ea2486e8d51f1d96295', 153, 3, 'Mosalah', '[]', 0, '2018-08-30 11:43:50', '2018-08-30 11:43:50', '2019-08-30 14:43:50'),
('f927c3d1527627813bf830ca3499fe2dfbffdf3972c2bd683b24203aff4a6ce73440663fb6dd2136', 61, 3, 'saned', '[]', 0, '2018-04-11 10:15:04', '2018-04-11 10:15:04', '2019-04-11 13:15:04'),
('fbd33987da53dba67e97e789cfcc4e5a004bc2355d04cbb2e6a0d60fee1660c752433a1a3db6df41', 78, 3, 'clza', '[]', 0, '2018-04-16 07:23:19', '2018-04-16 07:23:19', '2019-04-16 10:23:19'),
('ff33b48e35443c2ec325e6f4dba6479e96bac5fad057df0169191cd40e020c862adee3dcbbc07929', 4, 3, 'inas', '[]', 0, '2018-06-28 12:34:09', '2018-06-28 12:34:09', '2019-06-28 15:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'axxcWXlWJWioDgCvWVuAf2Crw0uGldP5gKV7ulco', 'http://localhost', 1, 0, 0, '2018-03-27 12:15:13', '2018-03-27 12:15:13'),
(2, NULL, 'Laravel Password Grant Client', '47iKwN6RMt9OH1MEFp4w0jndZq5vmon1VAlqlVrJ', 'http://localhost', 0, 1, 0, '2018-03-27 12:15:13', '2018-03-27 12:15:13'),
(3, NULL, 'Laravel Personal Access Client', 'Q0tamyjFvHwIxTVKla4ClQsrIAyndGjHeBCi9zb7', 'http://localhost', 1, 0, 0, '2018-03-28 05:27:33', '2018-03-28 05:27:33'),
(4, NULL, 'Laravel Password Grant Client', '2MoIiKSoQGqJhK62QaOkPP2YiyTLQXSEUsQQR9FY', 'http://localhost', 0, 1, 0, '2018-03-28 05:27:34', '2018-03-28 05:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-27 12:15:13', '2018-03-27 12:15:13'),
(2, 3, '2018-03-28 05:27:33', '2018-03-28 05:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` enum('home','center') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_cost` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_cost` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_accept` tinyint(1) NOT NULL,
  `discount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `net_price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_ratio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) UNSIGNED NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `user_is_finished` tinyint(1) NOT NULL DEFAULT '0',
  `is_considered` tinyint(4) NOT NULL DEFAULT '0',
  `refuse_reasons` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refuse_type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cancel_reason` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `gender`, `place`, `order_date`, `order_time`, `notes`, `lat`, `lng`, `address`, `price`, `min_cost`, `max_cost`, `discount_accept`, `discount`, `net_price`, `app_ratio`, `user_id`, `service_id`, `company_id`, `provider_id`, `status`, `user_is_finished`, `is_considered`, `refuse_reasons`, `refuse_type`, `created_at`, `updated_at`, `cancel_reason`, `service_type`) VALUES
(1, 'male', 'home', '2018-08-06', '17:43:00', '', '31.0350294', '31.3576345', 'Mohamed El Adawy, Mansoura Qism 2, Mansoura, Dakahlia Governorate, Egypt', '1000', '1500', '2000', 0, '0', '1000', '85', 129, 1, 78, 130, 1, 0, 0, '', 0, '2018-08-06 14:39:21', '2018-08-06 14:41:55', NULL, NULL),
(2, 'male', 'home', '2018-08-06', '18:03:00', '', '31.0350218', '31.3576477', 'Mohamed El Adawy, Mansoura Qism 2, Mansoura, Dakahlia Governorate, Egypt', '500', '1000', '1500', 0, '0', '500', '65', 129, 1, 78, 130, 3, 0, 0, '', 0, '2018-08-06 15:00:13', '2018-08-06 15:00:40', NULL, NULL),
(3, 'male', 'home', '2018-08-16', '13:42:00', '', '21.370433337781535', '39.346179024194726', 'Unnamed Road,Jeddah,Makkah Province,السعودية', '1000', '1400', '2000', 0, '0', '1000', '70', 141, 1, 78, 130, 4, 0, 0, '', 0, '2018-08-08 22:43:27', '2018-08-08 22:43:27', NULL, NULL),
(4, 'male', 'home', '2018-08-11', '15:58:00', '', '21.380420469909836', '39.34512783991601', 'Unnamed Road, Jeddah 22463، السعودية', '500', '500', '500', 0, '0', '500', '25', 141, 8, 69, 106, 1, 0, 0, '', 0, '2018-08-11 12:43:34', '2018-08-11 13:49:01', NULL, NULL),
(5, 'male', 'center', '2018-08-11', '16:45:00', '', '21.380434977696893', '', '', '10', '10', '10', 0, '0', '10', '0.5', 141, 8, 69, 106, 4, 0, 0, '', 0, '2018-08-11 13:41:58', '2018-08-11 13:41:58', NULL, NULL),
(6, 'male', 'home', '2018-09-23', '17:02:00', '', '31.0350766', '31.3576737', 'Mohamed El Adawy, Mansoura Qism 2, Mansoura, Dakahlia Governorate, Egypt', '246', '246', '246', 0, '0', '246', '12.3', 129, 1, 80, 145, 4, 0, 0, '', 0, '2018-08-27 15:02:31', '2018-08-27 15:02:31', NULL, NULL),
(7, 'male', 'center', '2018-09-23', '21:06:00', 'ملاحظات', '31.0350766', '', '', '246', '246', '246', 0, '0', '246', '12.3', 129, 1, 80, 145, 4, 0, 0, '', 0, '2018-08-27 15:03:07', '2018-08-27 15:03:07', NULL, NULL),
(8, 'male', 'home', '2018-08-29', '14:49:00', 'Test notes', '31.0350529', '31.357639', 'Mohamed El Adawy, Mansoura Qism 2, Mansoura, Dakahlia Governorate, Egypt', '300', '300', '300', 0, '0', '300', '15', 129, 8, 69, 106, 4, 0, 0, '', 0, '2018-08-28 12:50:00', '2018-08-28 12:50:00', NULL, NULL),
(9, 'male', 'home', '2018-08-29', '16:00:00', 'العدد 2', '21.385055542094474', '39.351486206247564', 'Unnamed Road, Jeddah 22462، السعودية', '510', '510', '510', 0, '0', '510', '25.5', 141, 8, 69, 106, 3, 0, 0, '', 0, '2018-08-29 12:57:00', '2018-08-29 12:58:14', NULL, NULL),
(10, 'male', 'home', '2018-09-00', '15:12:00', 'Dcccjcj', '23.753820839819802', '45.99244407633398', '5913,,منطقة الرياض,السعودية', '0', '100', '200', 0, '0', '0', '5', 160, 3, 56, 80, 4, 0, 0, '', 0, '2018-09-02 13:08:59', '2018-09-02 13:11:19', NULL, NULL),
(11, 'male', 'home', '2018-09-15', '18:29:00', '', '21.380648380165344', '39.34511683884947', 'Unnamed Road, جدة 22463، السعودية', '500', '500', '500', 0, '0', '500', '25', 141, 2, 78, 130, 4, 0, 0, '', 0, '2018-09-03 20:29:40', '2018-09-03 20:29:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_available_times`
--

CREATE TABLE `order_available_times` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `day` varchar(100) NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_services`
--

CREATE TABLE `order_services` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `min_cost` varchar(100) DEFAULT NULL,
  `max_cost` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_services`
--

INSERT INTO `order_services` (`id`, `service_id`, `order_id`, `price`, `min_cost`, `max_cost`, `created_at`, `updated_at`) VALUES
(1, 84, 1, '500', NULL, NULL, '2018-08-06 14:39:21', '2018-08-06 14:39:21'),
(2, 83, 1, '500', NULL, NULL, '2018-08-06 14:39:21', '2018-08-06 14:39:21'),
(3, 82, 1, NULL, '500', '1000', '2018-08-06 14:39:21', '2018-08-06 14:39:21'),
(4, 84, 2, '500', NULL, NULL, '2018-08-06 15:00:13', '2018-08-06 15:00:13'),
(5, 82, 2, NULL, '500', '1000', '2018-08-06 15:00:13', '2018-08-06 15:00:13'),
(6, 85, 3, '500', NULL, NULL, '2018-08-08 22:43:27', '2018-08-08 22:43:27'),
(7, 83, 3, '500', NULL, NULL, '2018-08-08 22:43:27', '2018-08-08 22:43:27'),
(8, 81, 3, NULL, '400', '1000', '2018-08-08 22:43:27', '2018-08-08 22:43:27'),
(9, 86, 4, '200', NULL, NULL, '2018-08-11 12:43:34', '2018-08-11 12:43:34'),
(10, 54, 4, '300', NULL, NULL, '2018-08-11 12:43:34', '2018-08-11 12:43:34'),
(11, 60, 5, '10', NULL, NULL, '2018-08-11 13:41:58', '2018-08-11 13:41:58'),
(12, 67, 6, '123', NULL, NULL, '2018-08-27 15:02:31', '2018-08-27 15:02:31'),
(13, 66, 6, '123', NULL, NULL, '2018-08-27 15:02:31', '2018-08-27 15:02:31'),
(14, 67, 7, '123', NULL, NULL, '2018-08-27 15:03:07', '2018-08-27 15:03:07'),
(15, 66, 7, '123', NULL, NULL, '2018-08-27 15:03:07', '2018-08-27 15:03:07'),
(16, 54, 8, '300', NULL, NULL, '2018-08-28 12:50:00', '2018-08-28 12:50:00'),
(17, 60, 9, '10', NULL, NULL, '2018-08-29 12:57:00', '2018-08-29 12:57:00'),
(18, 59, 9, '500', NULL, NULL, '2018-08-29 12:57:00', '2018-08-29 12:57:00'),
(19, 44, 10, NULL, '100', '200', '2018-09-02 13:08:59', '2018-09-02 13:08:59'),
(20, 83, 11, '500', NULL, NULL, '2018-09-03 20:29:40', '2018-09-03 20:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('saned@saned.sa', '$2y$10$OmPv64VryVn3y92noWZw2.8j4ZqSVv9Ygc/UrziOxBuJZ6ShJPQ/G', '2018-05-23 07:48:10'),
('inas.abdelfatah7@gmail.com', '$2y$10$1EmGg5.ql8Q5of.QPUn6zOTHn5aQrWO0SH4UZCi7058jARubvc/YS', '2018-06-10 09:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `ability_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`ability_id`, `entity_id`, `entity_type`, `forbidden`) VALUES
(1, 1, 'roles', 0),
(1, 5, 'roles', 0),
(6, 1, 'App\\User', 0),
(9, 7, 'roles', 0),
(10, 7, 'roles', 0),
(1, 8, 'roles', 0),
(6, 8, 'roles', 0),
(6, 3, 'roles', 0),
(7, 3, 'roles', 0),
(8, 3, 'roles', 0),
(9, 3, 'roles', 0),
(10, 3, 'roles', 0),
(19, 3, 'roles', 0),
(20, 3, 'roles', 0),
(6, 9, 'roles', 0),
(7, 9, 'roles', 0),
(8, 9, 'roles', 0),
(9, 9, 'roles', 0),
(10, 9, 'roles', 0),
(19, 9, 'roles', 0),
(20, 9, 'roles', 0),
(9, 10, 'roles', 0),
(10, 10, 'roles', 0),
(20, 10, 'roles', 0),
(6, 12, 'roles', 0),
(7, 12, 'roles', 0),
(8, 12, 'roles', 0),
(9, 12, 'roles', 0),
(10, 12, 'roles', 0),
(19, 12, 'roles', 0),
(20, 12, 'roles', 0),
(6, 1, 'roles', 0),
(7, 1, 'roles', 0),
(8, 1, 'roles', 0),
(9, 1, 'roles', 0),
(10, 1, 'roles', 0),
(19, 1, 'roles', 0),
(20, 1, 'roles', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `rate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `rate_from` enum('user','provider') COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `user_id`, `company_id`, `order_id`, `rate`, `rate_from`, `price`, `type`, `comment`, `created_at`, `updated_at`) VALUES
(1, 130, 78, 1, '3', 'provider', '1700', 0, 'Test', '2018-08-06 14:41:06', '2018-08-06 14:41:06'),
(2, 129, 78, 1, '2', 'user', '1700', 0, 'Test', '2018-08-06 14:41:55', '2018-08-14 09:44:51'),
(3, 130, 78, 2, '4', 'provider', '1300', 0, 'Test', '2018-08-06 15:00:40', '2018-08-06 15:00:40'),
(4, 106, 69, 4, '2', 'provider', '500', 0, NULL, '2018-08-11 13:48:45', '2018-08-11 13:48:45'),
(5, 141, 69, 4, '2', 'user', '500', 0, NULL, '2018-08-11 13:49:01', '2018-08-11 13:49:01'),
(6, 129, 56, 0, '2', '', '', 0, NULL, '2018-08-14 08:37:36', '2018-08-14 08:37:51'),
(7, 129, 72, 0, '4', '', '', 0, NULL, '2018-08-14 08:40:54', '2018-08-14 08:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `level`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'المدير التنفيذى', NULL, '2018-05-23 08:54:43', '2018-05-23 09:01:09'),
(3, 'مدن كنترول', 'مدن كنترول', NULL, '2018-03-22 06:36:28', '2018-03-22 06:36:28'),
(10, 'aaaaa', NULL, NULL, '2018-06-12 08:37:04', '2018-06-12 08:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_type` enum('male','female','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_type` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_place` enum('center','home','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceType_id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_cost` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_cost` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen_count` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `gender_type`, `provider_type`, `service_place`, `serviceType_id`, `provider_id`, `company_id`, `district_id`, `price`, `min_cost`, `max_cost`, `photo`, `seen_count`, `status`, `created_at`, `updated_at`) VALUES
(6, '', '', 'male', 'male', 'center', 1, 38, 38, 0, '100', NULL, NULL, '1525680530.0XGbpXkMHGqARXcuj6QQimages (1).jpg', 0, 0, '2018-04-02 09:08:30', '2018-05-07 08:08:50'),
(37, '', '', 'female', 'male', 'center', 2, 80, 5, 0, '4558', NULL, NULL, '1525680530.0XGbpXkMHGqARXcuj6QQimages (1).jpg', 0, 0, '2018-05-07 09:43:16', '2018-05-07 09:43:16'),
(38, '', '', 'female', 'male', 'center', 2, 80, 56, 0, '6666', NULL, NULL, '1527076197.nfzfb3Z9eiUgI8JuENnMimage.jpg', 0, 0, '2018-05-07 09:43:52', '2018-05-23 11:49:57'),
(41, '', '', 'male', 'male', 'home', 2, 80, 5, 0, '5566', NULL, NULL, '1525680530.0XGbpXkMHGqARXcuj6QQimages (1).jpg', 0, 0, '2018-05-07 09:48:19', '2018-05-07 09:48:19'),
(44, '', '', 'male', 'male', 'home', 3, 80, 56, 0, NULL, '100', '200', '1526465798.RbA9jnS3HTHjj3CHjKU3image.jpg', 0, 0, '2018-05-16 10:16:35', '2018-05-16 10:16:38'),
(45, '', '', 'female', 'male', 'center', 1, 80, 56, 0, '100100', NULL, NULL, '1527076020.VJJiYye4suBGridcNS5wimage.jpg', 0, 0, '2018-05-16 10:17:08', '2018-05-27 08:34:22'),
(46, '', '', 'male', 'male', 'home', 2, 97, 64, 0, '85', NULL, NULL, '1527077864.O91cUFSvzvqITwy1kP3ximage.jpg', 0, 0, '2018-05-23 12:17:42', '2018-05-23 12:17:44'),
(47, '', '', 'female', 'male', 'home', 1, 101, 67, 0, '20', NULL, NULL, '', 0, 0, '2018-05-26 12:02:42', '2018-05-26 12:07:31'),
(48, '', '', 'both', 'male', 'home', 1, 101, 67, 0, '30', NULL, NULL, '1527336558.jH30VVSiTi1y0cMoAh4iimage.jpg', 0, 0, '2018-05-26 12:09:14', '2018-05-26 12:09:18'),
(49, '', '', 'female', 'male', 'center', 2, 80, 56, 0, '50', NULL, NULL, '1527381422.mmMLvWcVN7Emeq8obyY4image.jpg', 0, 0, '2018-05-27 00:36:58', '2018-05-27 00:37:02'),
(50, '', '', 'female', 'male', 'home', 1, 80, 56, 0, '50', NULL, NULL, '1527673601.Irqm6b4143AY4SElmcpZimage.jpg', 0, 0, '2018-05-30 09:46:39', '2018-05-30 09:46:42'),
(51, '', '', 'both', 'male', 'home', 2, 80, 56, 0, '200', NULL, NULL, '1527677217.uEdaIMUSUShcKHjFFRuvimage.jpg', 0, 0, '2018-05-30 10:46:53', '2018-05-30 10:46:57'),
(53, '', '', 'female', 'male', 'home', 2, 106, 69, 0, '200', NULL, NULL, '1527684627.nWHbfDmN33MOED6j5GMGimage.jpg', 0, 0, '2018-05-30 12:50:24', '2018-05-30 12:50:27'),
(54, '', '', 'male', 'male', 'center', 8, 106, 69, 0, '300', NULL, NULL, '1527684720.rOzFDMdfvgjQaAfsue54image.jpg', 0, 0, '2018-05-30 12:51:57', '2018-05-30 12:52:00'),
(56, '', '', 'female', 'male', 'center', 1, 111, 72, 0, '123', NULL, NULL, '1528028537.eMrkFI9aHApSdVljMZEDb06b7885-2afa-446c-bb7e-f44f897b3b60.jpeg', 0, 0, '2018-06-03 12:22:17', '2018-06-03 12:22:17'),
(58, '', '', 'female', 'male', 'home', 1, 4, 5, 0, '200200', NULL, NULL, '1528192402.g8QNPwWyOlq9lAzQ71c0abstract-dark-blue-polygonal-background_1035-9700.jpg', 0, 0, '2018-06-05 09:53:23', '2018-06-05 09:53:23'),
(59, '', '', 'female', 'male', 'home', 8, 106, 69, 0, '500', NULL, NULL, '1528290756.uSgHUKWufuJzChttH8wnimage.jpg', 0, 0, '2018-06-06 13:12:31', '2018-06-06 13:12:36'),
(60, '', '', 'both', 'male', 'home', 8, 106, 69, 0, '10', NULL, NULL, '1528623896.nk22wy0vVHcgRW0B2NsZabstract-dark-blue-polygonal-background_1035-9700.jpg', 0, 0, '2018-06-10 09:44:56', '2018-06-10 09:44:56'),
(62, '', '', 'both', 'male', 'center', 1, 130, 78, 0, '1000', NULL, NULL, '1528801008.LfzYWz9QC4cQri0m4NJIimage.jpg', 0, 0, '2018-06-12 10:56:30', '2018-06-12 10:56:49'),
(64, '', '', 'female', 'male', 'home', 1, 130, 78, 0, '200', NULL, NULL, '1530088420.1HnCPyIFLGugcT3d7MtWimage.jpg', 0, 0, '2018-06-27 08:33:37', '2018-06-27 08:33:40'),
(65, '', '', 'male', 'male', 'center', 2, 130, 78, 0, '2000', NULL, NULL, '1530188934.MlCjvdf6wenOb6R8p84Pimage.jpg', 0, 0, '2018-06-28 12:28:03', '2018-06-28 12:28:54'),
(66, '', '', 'female', 'male', 'center', 1, 145, 80, 0, '123', NULL, NULL, '', 0, 0, '2018-07-09 08:23:23', '2018-07-09 08:23:23'),
(67, '', '', 'female', 'male', 'home', 1, 145, 80, 0, '123', NULL, NULL, '1531124613.VTazRtzfIppcWqNbwJMIimage.jpg', 0, 0, '2018-07-09 08:23:30', '2018-07-09 08:23:33'),
(68, '', '', 'female', 'male', 'both', 1, 145, 80, 0, '123', NULL, NULL, '', 0, 0, '2018-07-09 08:23:36', '2018-07-09 08:23:36'),
(69, '', '', 'female', 'male', 'home', 1, 130, 78, 0, '25', NULL, NULL, '1532510092.VSCvxCqQvr87h6GLNNnWimage.jpg', 0, 0, '2018-07-25 09:14:50', '2018-07-25 09:14:52'),
(70, '', '', 'both', 'male', 'home', 1, 130, 78, 0, '50', NULL, NULL, '1532510414.DyjQjbh4eOefXKGk6GXEimage.jpg', 0, 0, '2018-07-25 09:20:10', '2018-07-25 09:20:14'),
(71, '', '', 'female', 'male', 'center', 1, 4, 5, 0, '100', NULL, NULL, '', 0, 0, '2018-07-25 11:44:27', '2018-07-25 11:44:27'),
(72, '', '', 'female', 'male', 'center', 1, 4, 5, 0, NULL, '100', '1000', '', 0, 0, '2018-07-25 11:45:48', '2018-07-25 11:45:48'),
(73, '', '', 'male', 'male', 'home', 2, 130, 78, 0, '500', NULL, NULL, '1532525781.KWbk5PA22R46RBGD6f7oimage.jpg', 0, 0, '2018-07-25 13:36:18', '2018-07-25 13:36:21'),
(74, '', '', 'female', 'male', 'center', 2, 130, 78, 0, NULL, '15', '1588', '1532525826.0WXUjbmv8G82wN7Vldznimage.jpg', 0, 0, '2018-07-25 13:37:03', '2018-07-25 13:37:06'),
(75, '', '', 'female', 'male', 'center', 2, 130, 78, 0, NULL, '18888', '15880', '1532526248.wy9QziXwdh6jBpG82Xjjimage.jpg', 0, 0, '2018-07-25 13:44:06', '2018-07-25 13:44:08'),
(76, '', '', 'female', 'male', 'home', 2, 130, 78, 0, NULL, '8777', '98777777', '1532526315.OnWoRma1bM5f6NfK47NWimage.jpg', 0, 0, '2018-07-25 13:45:12', '2018-07-25 13:45:15'),
(77, '', '', 'female', 'male', 'home', 2, 130, 78, 0, '588', NULL, NULL, '1532944369.UtVduiy0P70bCZAmuoxNimage.jpg', 0, 0, '2018-07-30 09:52:45', '2018-07-30 09:52:49'),
(78, '', '', 'both', 'male', 'home', 1, 130, 78, 0, NULL, '500', '1000', '1533203317.XhKAtdzGTUsosa5Jhw9Iimage.jpg', 0, 0, '2018-08-02 09:48:35', '2018-08-02 09:48:37'),
(79, '', '', 'female', 'male', 'home', 8, 130, 78, 0, '500', NULL, NULL, '1533205031.VMyTKMll9DsJjGBDKV2bimage.jpg', 0, 0, '2018-08-02 10:17:07', '2018-08-02 10:17:11'),
(80, '', '', 'male', 'male', 'center', 1, 130, 78, 0, NULL, '500', '1000', '1533205115.22QEW3ZPCwROddjyBCyLimage.jpg', 0, 0, '2018-08-02 10:18:33', '2018-08-02 10:18:35'),
(81, '', '', 'female', 'male', 'center', 1, 130, 78, 0, NULL, '400', '1000', '1533480730.jZTiQAbA2SSbJoVrkOP9image.jpg', 0, 0, '2018-08-05 14:52:07', '2018-08-05 14:52:10'),
(82, '', '', 'female', 'male', 'home', 1, 130, 78, 0, NULL, '500', '1000', '1533484334.DlnNi1fvF5TxbJ6s7YLlimage.jpg', 0, 0, '2018-08-05 15:52:11', '2018-08-05 15:52:14'),
(83, '', '', 'male', 'male', 'center', 2, 130, 78, 0, '500', NULL, NULL, '1533484397.OEJkjvAfCuYmdlFAGjXyimage.jpg', 0, 0, '2018-08-05 15:53:14', '2018-08-05 15:53:17'),
(84, '', '', 'both', 'male', 'center', 2, 130, 78, 0, '500', NULL, NULL, '1533487056.KMbO0eNmTUKjoNhv1O6Himage.jpg', 0, 0, '2018-08-05 16:37:33', '2018-08-05 16:37:36'),
(85, '', '', 'female', 'male', 'both', 1, 130, 78, 0, '500', NULL, NULL, '1533540827.rwUxBhvpog1pL1mqslXrimage.jpg', 0, 0, '2018-08-06 07:33:44', '2018-08-06 07:33:47'),
(86, '', '', 'both', 'male', 'both', 2, 106, 69, 0, '200', NULL, NULL, '1533990903.7JQvgk9tsXvlP9IMod8Oimage.jpg', 0, 0, '2018-08-11 12:34:59', '2018-08-11 12:35:03'),
(87, '', '', 'female', 'male', 'center', 1, 130, 78, 0, '500', NULL, NULL, '1534427511.iTe09qEIBz33eAtJp7rwimage.jpg', 0, 0, '2018-08-16 13:51:23', '2018-08-16 13:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `service_translations`
--

CREATE TABLE `service_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_translations`
--

INSERT INTO `service_translations` (`id`, `name`, `description`, `service_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 4, 'ar', NULL, NULL),
(2, 'new service', 'new service description', 4, 'en', NULL, NULL),
(3, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 8, 'ar', NULL, NULL),
(4, 'new service', 'new service description', 8, 'en', NULL, NULL),
(5, 'اسم', 'وصف', 6, 'ar', NULL, NULL),
(6, 'aname', 'description', 6, 'en', NULL, NULL),
(8, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 7, 'ar', NULL, NULL),
(9, 'new service', 'new service description', 7, 'en', NULL, NULL),
(10, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 9, 'ar', NULL, NULL),
(11, 'new service', 'new service description', 9, 'en', NULL, NULL),
(12, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 10, 'ar', NULL, NULL),
(13, 'new service', 'new service description', 10, 'en', NULL, NULL),
(14, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 11, 'ar', NULL, NULL),
(15, 'new service', 'new service description', 11, 'en', NULL, NULL),
(16, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 12, 'ar', NULL, NULL),
(17, 'new service', 'new service description', 12, 'en', NULL, NULL),
(18, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 13, 'ar', NULL, NULL),
(19, 'new service', 'new service description', 13, 'en', NULL, NULL),
(20, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 14, 'ar', NULL, NULL),
(21, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 15, 'ar', NULL, NULL),
(22, 'new service', 'new service description', 15, 'en', NULL, NULL),
(23, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 16, 'ar', NULL, NULL),
(24, 'new service', 'new service description', 16, 'en', NULL, NULL),
(25, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 17, 'ar', NULL, NULL),
(26, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 18, 'ar', NULL, NULL),
(27, 'new service', 'تفاصيل خدمة جديدة', 19, '', NULL, NULL),
(28, 'new service', 'تفاصيل خدمة جديدة', 20, '', NULL, NULL),
(29, 'new service', 'تفاصيل خدمة جديدة', 21, '', NULL, NULL),
(30, 'new service', 'تفاصيل خدمة جديدة', 22, '', NULL, NULL),
(31, 'new service', 'تفاصيل خدمة جديدة', 23, '', NULL, NULL),
(32, 'new service', 'تفاصيل خدمة جديدة', 24, '', NULL, NULL),
(33, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 25, 'ar', NULL, NULL),
(34, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 26, 'ar', NULL, NULL),
(35, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 27, 'ar', NULL, NULL),
(36, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 28, 'ar', NULL, NULL),
(37, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 29, 'ar', NULL, NULL),
(38, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 30, 'ar', NULL, NULL),
(39, 'خدمة جديدة', 'تفاصيل خدمة جديدة', 31, 'ar', NULL, NULL),
(40, 'Tyhg', 'Gvvg', 34, 'ar', NULL, NULL),
(41, 'Gyjh', 'Chhg', 35, 'ar', NULL, NULL),
(42, 'اتمزا', 'ةتتت', 36, 'ar', NULL, NULL),
(43, 'اتمزا', 'ةتتت', 37, 'ar', NULL, NULL),
(44, 'اتمزا', 'ةتتت', 38, 'ar', NULL, NULL),
(45, 'لكنلم', 'وتتت', 39, 'ar', NULL, NULL),
(46, 'لكنلم', 'وتتت', 40, 'ar', NULL, NULL),
(47, 'غتع', 'لاتتا', 41, 'ar', NULL, NULL),
(48, 'اتااا', 'لاللل', 42, 'ar', NULL, NULL),
(49, 'TestForBkEnd', 'Test', 43, 'ar', NULL, NULL),
(50, 'Test', 'Test', 44, 'ar', NULL, NULL),
(51, 'Test', 'Test', 45, 'ar', NULL, NULL),
(52, 'حجامه', 'حجامه', 46, 'ar', NULL, NULL),
(53, 'Test22', 'Test', 47, 'ar', NULL, NULL),
(54, 'Test 22', 'Test', 48, 'ar', NULL, NULL),
(55, 'Test', 'Test', 49, 'ar', NULL, NULL),
(56, 'Test', 'Test', 50, 'ar', NULL, NULL),
(57, 'Testtest', 'Test', 51, 'ar', NULL, NULL),
(58, 'TestFTestForAll', 'TestForAll', 52, 'ar', NULL, NULL),
(59, 'TestForWomen', 'TestForWomen', 53, 'ar', NULL, NULL),
(60, 'TestForMen', 'Test activation', 54, 'ar', NULL, NULL),
(61, 'aaa', 'aaaaaaaaa', 55, 'ar', NULL, NULL),
(62, 'aaaa', 'aaaaaaaaaaa', 55, 'en', NULL, NULL),
(63, 'abc', 'desc', 56, 'ar', NULL, NULL),
(64, 'abc', 'descr', 56, 'en', NULL, NULL),
(65, 'test', 'test', 57, 'ar', NULL, NULL),
(66, 'test', 'test', 57, 'en', NULL, NULL),
(67, 'test', 'test', 58, 'ar', NULL, NULL),
(68, 'test', 'test', 58, 'en', NULL, NULL),
(69, 'Test', 'Test', 59, 'ar', NULL, NULL),
(70, 'test', 'test', 60, 'ar', NULL, NULL),
(71, 'test', 'test', 60, 'en', NULL, NULL),
(72, 'test', 'test', 61, 'ar', NULL, NULL),
(73, 'test', 'test', 61, 'en', NULL, NULL),
(74, 'Test', 'Test', 62, 'ar', NULL, NULL),
(75, 'Test', 'Test', 63, 'ar', NULL, NULL),
(76, 'Test for women', 'test', 64, 'ar', NULL, NULL),
(77, 'Test for men', 'Test', 65, 'ar', NULL, NULL),
(78, 'Test for men', 'Test', 66, 'ar', NULL, NULL),
(80, 'فرد', 'بروتين', 67, 'ar', NULL, NULL),
(81, 'فرد', 'بروتين', 68, 'ar', NULL, NULL),
(82, 'TestSal', 'Test', 69, 'ar', NULL, NULL),
(83, 'Test for all', 'Test', 70, 'ar', NULL, NULL),
(84, 'new service', 'new service description', 71, '', NULL, NULL),
(85, 'new service', 'new service description', 72, '', NULL, NULL),
(86, 'TestSal', 'Test', 73, 'ar', NULL, NULL),
(87, 'TestSal HCG shah', 'Gfc', 74, 'ar', NULL, NULL),
(88, 'Theodór', 'Ds skv', 75, 'ar', NULL, NULL),
(89, 'Bcoz', 'Bvccf', 76, 'ar', NULL, NULL),
(90, 'باةورر', 'ااوو', 77, 'ar', NULL, NULL),
(91, 'Test for all', 'Test', 78, 'ar', NULL, NULL),
(92, 'Beauty hair', 'hair', 79, 'ar', NULL, NULL),
(93, 'Beauty hair 2', 'Test', 80, 'ar', NULL, NULL),
(94, 'Beauty', 'Test', 81, 'ar', NULL, NULL),
(95, 'خدمة رينج', 'اببب', 82, 'ar', NULL, NULL),
(96, 'سعر ثابت', 'تست', 83, 'ar', NULL, NULL),
(97, 'All', 'Test', 84, 'ar', NULL, NULL),
(98, 'Tesr', 'Test', 85, 'ar', NULL, NULL),
(99, 'Tast1111', 'لكل كوب', 86, 'ar', NULL, NULL),
(100, 'ابيبب', 'لبري', 87, 'ar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_type` enum('male','female','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_types`
--

INSERT INTO `service_types` (`id`, `name`, `gender_type`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'service type', 'male', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_type_translations`
--

CREATE TABLE `service_type_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `body`, `created_at`, `updated_at`) VALUES
(1, 'about_app_name', 'عن التطبيق', '2018-03-08 09:39:24', '2018-03-08 09:39:24'),
(2, 'about_app_desc', '<p>بيانات عن التطبيق&nbsp;بيانات عن التطبيق&nbsp;بيانات عن التطبيق&nbsp;بيانات عن التطبيق</p>\r\n\r\n<p>بيانات عن التطبيق&nbsp;بيانات عن التطبيق&nbsp;بيانات عن التطبيق&nbsp;بيانات عن التطبيق</p>', '2018-03-08 09:39:24', '2018-03-08 09:39:24'),
(3, 'about_app_image', 'files/settings/1520509164.google play bg.png', '2018-03-08 11:39:25', '2018-03-08 09:39:25'),
(4, 'terms_title', 'بنود الاستخدام', '2018-03-14 07:51:24', '2018-03-14 05:51:24'),
(5, 'terms', '<ul>\r\n	<li>بنود استخدام التطبيق</li>\r\n	<li>بنود استخدام التطبيق</li>\r\n	<li>بنود استخدام التطبيق</li>\r\n</ul>', '2018-03-08 11:43:26', '2018-03-08 09:43:26'),
(6, 'facebook', 'https://www.facebook.com/', '2018-05-28 12:19:35', '2018-05-28 12:19:35'),
(7, 'twitter', 'twitter.com', '2018-05-09 09:03:16', '2018-05-09 09:03:16'),
(8, 'instagram', 'instagram.com', '2018-03-08 09:41:43', '2018-03-08 09:41:43'),
(9, 'comment_setting', '2', '2018-03-11 09:13:42', '2018-03-11 07:13:42'),
(10, 'comment_agree', '0', '2018-03-11 09:20:25', '2018-03-11 07:20:25'),
(11, 'rate_setting', '2', '2018-03-11 09:27:11', '2018-03-11 07:27:11'),
(12, 'rate_agree', '1', '2018-03-11 09:27:30', '2018-03-11 07:27:30'),
(13, 'commission', '5', '2018-06-04 04:11:37', '2018-06-04 04:11:37'),
(14, 'terms_title_ar', 'test', '2018-05-29 08:44:19', '2018-05-29 08:44:19'),
(15, 'terms_title_en', 'test', '2018-05-29 08:44:19', '2018-05-29 08:44:19'),
(16, 'terms_ar', '<p>بنود الاستخدام للمستخدم&nbsp;</p>', '2018-08-02 09:16:36', '2018-08-02 09:16:36'),
(17, 'terms_en', '<p>terms and conditions for user&nbsp;</p>', '2018-08-02 09:16:36', '2018-08-02 09:16:36'),
(18, 'about_app_desc_ar', '<p>تجربه</p>', '2018-06-04 04:24:07', '2018-06-04 04:24:07'),
(19, 'about_app_desc_en', '<p>ok</p>', '2018-06-04 04:24:34', '2018-06-04 04:24:34'),
(20, 'site_title', 'دليلك الكامل لجميع مراكز تجميل المملكة', '2018-04-12 10:06:39', '2018-04-12 10:06:39'),
(21, 'site_content', '<p>أكثر من 250 مركز تجميل</p>\r\n\r\n<p>أكثر من 500 متخصص يعتنون بجمالك</p>\r\n\r\n<p>تنفيذ أكثر من 85 خدمة للحفاظ على جمالك</p>\r\n\r\n<p>تنفيذ أكثر من 85 خدمة للحفاظ على جمالك</p>\r\n\r\n<p>تنفيذ أكثر من 85 خدمة للحفاظ على جمالك</p>', '2018-04-12 10:06:39', '2018-04-12 10:06:39'),
(22, 'playstore', 'https://www.google.com', '2018-04-12 10:06:39', '2018-04-12 10:06:39'),
(23, 'site_image', 'files/settings/1523538683.White.png', '2018-04-12 13:11:23', '2018-04-12 10:11:23'),
(24, 'appstore', 'https://www.google.com', '2018-04-12 10:12:31', '2018-04-12 10:12:31'),
(25, 'waiting_time', '2', '2018-07-25 14:33:04', '2018-07-25 14:33:04'),
(26, 'googlePlus', 'googlePlus.com', '2018-05-21 11:57:04', '2018-05-21 11:57:04'),
(27, 'providerTerms_ar', '<p>بنود الاستخدام لمزود الخدمه&nbsp;</p>', '2018-08-02 09:16:36', '2018-08-02 09:16:36'),
(28, 'providerTerms_en', '<p>tesrms and conditions for provider</p>', '2018-08-02 09:16:36', '2018-08-02 09:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `reply_type` tinyint(4) NOT NULL,
  `message` longtext NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `user_id`, `email`, `phone`, `name`, `parent_id`, `type`, `reply_type`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(5, 0, '', '0502563214', 'a name', 0, 1, 0, 'message message', 1, '2018-05-13 11:02:40', '2018-05-13 11:02:40'),
(8, 0, '', '0502563214', 'a name', 0, 1, 0, 'message message msg', 1, '2018-05-22 10:39:31', '2018-05-22 10:39:31'),
(11, 0, '', '0513456799', 'Djfufu', 0, 1, 0, 'Vfffff', 1, '2018-05-13 11:03:12', '2018-05-13 11:03:12'),
(12, 0, '', '0513456799', 'Djfufu', 0, 1, 0, 'Vfffff', 1, '2018-05-22 10:39:45', '2018-05-22 10:39:45'),
(13, 0, '', '0516557545424', 'Fuftste5', 0, 1, 0, 'Chfhdue5', 1, '2018-05-08 15:20:58', '2018-05-08 15:20:58'),
(19, 1, '', '', '', 5, -1, 0, 'test', 0, '2018-05-13 11:19:57', '2018-05-13 11:19:57'),
(20, 1, '', '', '', 5, -1, 0, 'test', 0, '2018-05-13 11:20:07', '2018-05-13 11:20:07'),
(21, 1, '', '', '', 5, -1, 0, 'test', 0, '2018-05-13 11:20:22', '2018-05-13 11:20:22'),
(22, 0, '', '0500000000', 'Test', 0, 3, 0, 'Test', 1, '2018-05-15 08:26:58', '2018-05-15 08:26:58'),
(23, 1, '', '', '', 22, -1, 0, 'done', 0, '2018-05-15 08:27:10', '2018-05-15 08:27:10'),
(24, 1, '', '', '', 22, -1, 0, 'kkk', 0, '2018-05-20 09:15:14', '2018-05-20 09:15:14'),
(25, 1, '', '', '', 22, -1, 0, 'kkk', 0, '2018-05-20 09:15:24', '2018-05-20 09:15:24'),
(26, 1, '', '', '', 22, -1, 0, 'kkk', 0, '2018-05-20 09:15:29', '2018-05-20 09:15:29'),
(27, 1, '', '', '', 22, -1, 0, 'kkk', 0, '2018-05-20 09:15:41', '2018-05-20 09:15:41'),
(28, 1, '', '', '', 22, -1, 0, 'kkkkkkkk', 0, '2018-05-20 09:16:02', '2018-05-20 09:16:02'),
(30, 1, '', '', '', 5, -1, 0, 'يييي', 0, '2018-05-22 10:47:25', '2018-05-22 10:47:25'),
(31, 1, '', '', '', 5, -1, 0, 'يييي', 0, '2018-05-22 10:47:31', '2018-05-22 10:47:31'),
(32, 1, '', '', '', 5, -1, 0, 'qqqqqqqqqqqq', 0, '2018-05-23 08:46:50', '2018-05-23 08:46:50'),
(33, 1, '', '', '', 5, -1, 0, 'qqqqqqqqqqqq', 0, '2018-05-23 08:47:00', '2018-05-23 08:47:00'),
(34, 1, '', '', '', 5, -1, 0, 'qqqqqqqqqqqq', 0, '2018-05-23 08:47:05', '2018-05-23 08:47:05'),
(35, 1, '', '', '', 5, -1, 0, 'qqqqqqqqqqqq', 0, '2018-05-23 08:59:36', '2018-05-23 08:59:36'),
(36, 1, '', '', '', 5, -1, 0, 'ننن', 0, '2018-05-24 11:23:05', '2018-05-24 11:23:05'),
(37, 0, '', '0514444444', 'Test', 0, 2, 0, 'Test', 0, '2018-05-27 00:30:08', '2018-05-27 00:30:08'),
(38, 1, '', '', '', 5, -1, 0, 'test', 0, '2018-05-27 10:14:41', '2018-05-27 10:14:41'),
(39, 0, '', '0533589578', 'Tahani', 0, 2, 0, 'Cood', 1, '2018-06-04 05:04:47', '2018-06-04 05:04:47'),
(40, 1, '', '', '', 5, -1, 0, 'hi', 0, '2018-06-04 12:56:44', '2018-06-04 12:56:44'),
(41, 1, '', '', '', 5, -1, 0, 'test', 0, '2018-06-06 08:11:08', '2018-06-06 08:11:08'),
(42, 0, '', '0518888888', 'Test test test test', 0, 2, 0, 'Test', 0, '2018-06-06 11:01:21', '2018-06-06 11:01:21'),
(43, 0, '', '0512222228', 'Test', 0, 1, 0, 'Test', 0, '2018-06-06 12:24:53', '2018-06-06 12:24:53'),
(44, 0, '', '0510000005', 'Mohamed', 0, 1, 0, 'Test', 0, '2018-06-28 13:14:17', '2018-06-28 13:14:17'),
(45, 0, '', '0510000006', 'Manar', 0, 1, 0, 'Test', 1, '2018-08-02 11:53:34', '2018-08-02 11:53:34'),
(46, 0, '', '0510000000', 'Mohamed', 0, 1, 0, 'Test', 0, '2018-08-05 13:57:54', '2018-08-05 13:57:54'),
(47, 0, '', '0510000006', 'Manar', 0, 1, 0, 'Test', 1, '2018-08-28 18:07:12', '2018-08-28 18:07:12'),
(48, 0, '', '0510000001', 'Mohamed Ahmed', 0, 1, 0, 'Hello', 0, '2018-09-01 22:56:04', '2018-09-01 22:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` int(11) NOT NULL,
  `is_invited` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_suspend` tinyint(4) NOT NULL,
  `is_online` tinyint(4) NOT NULL,
  `is_user` tinyint(4) NOT NULL,
  `is_provider` tinyint(4) NOT NULL,
  `reject_reason` text COLLATE utf8mb4_unicode_ci,
  `is_approved` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `phone`, `email`, `password`, `image`, `gender`, `code`, `action_code`, `address`, `lat`, `lng`, `city`, `is_invited`, `is_active`, `remember_token`, `api_token`, `created_at`, `updated_at`, `is_suspend`, `is_online`, `is_user`, `is_provider`, `reject_reason`, `is_approved`) VALUES
(1, 'سند أعمالك', 'سند', '0502769823', 'saned@saned.sa', '$2y$10$o0gsHIi/NmllQjabz99VPuegeoe2woA46vZTRyeKL1mUCFccNeAfW', '1528109577.U5tNaNOoECxcsoH8e77Ytest pic.jpg', 'female', '', '1234', '', '', '', 0, 0, 1, '68hk93DPtm2NH4V9aE6kSQioUaupboLNpUXdkf6gPPzlQig0iwpyvBg1MjkY', '', '2018-03-06 22:00:00', '2018-06-12 08:48:15', 0, 0, 0, 0, '', 0),
(4, 'inas', '', '05958838528', 'inas.abdelfatah7@gmail.com', '$2y$10$lIRD7m0EQaclV3ju1qOntOZJ9QaQ7D2S/p5rioZncUVzM8mQ15T4i', '1527071357.WJR4b4DvBHln9CNEUH2w5MaQH7Ul_400x400.jpg', 'male', '6413', '2464', '', '', '', 0, 0, 0, '8CKbhfphGvA3j7Epmf0Z11f3FBXF2KbhM1pSdpgNNX5QgH8BTWov0K9PXiUN', 'UCMGmo1EMUlow2qp33k2QcQ6mhCWM0SL6k1idg4bjdCMDeahmlP70tOO5OMo', '2018-03-08 10:44:27', '2018-06-28 12:48:36', 0, 0, 1, 1, '', 1),
(5, 'saned2', 'sanedd2', '0123455', 'saned2@saned.sa', '$2y$10$QEVLWjAEwfuEZ.awhpuF6.8nhOiZhhpMs4hcCUjwgAK4mvVFeg0ru', '1520513067.bbmT7SgBqm5Gr3nf2gg7google play bg.png', 'male', '43862041', '', 'address', '', '', 0, 0, 1, 'UvvJEZFkXwgvb8ph5AgttPFVPbhRepaMoRH3HTak', 'VBf0muTHibbSiPhBZpE6Thw3GrisFkEc2pczY2zpBgGnicpob8pNyYhTbQwM', '2018-03-08 10:44:27', '2018-03-20 11:23:49', 1, 0, 1, 1, '', 1),
(12, 'sama', 'sama', '0599362871', 'sama@saned.sa', '$2y$10$UmKPlobjvTBgfhU.o4kUfOKBuTggleNF5fpfVunrTaSmQBvq4uBbi', '1521625566.ssywB917JTsQgsrCWxXrScreenshot (11).png', 'female', '', '3481', 'hhhhhhhh', '', '', 0, 0, 0, 'jBXxyCWb9wDJj4HjHdsNahh1fi0oGhFyObTKUDmk', '0eivhs5cO36AuLepjj71wul74GOgpO8S2RZPBwyzM1IC6CyOu497uZRgAzXo', '2018-03-21 07:46:06', '2018-06-10 08:49:00', 0, 0, 1, 1, '', 2),
(21, 'samy', '', '05944655437', '', '$2y$10$5yW0NLb/1/A1rjYjlc6RYu8KA0852CQm9b0hp4drK0.zDCNB7Xsr.', '', 'male', '81109410', '2018', '', '', '', 0, 1, 0, NULL, 'zlZMyiLrenizD44emlaREvADVsbMqbgBdhw3rd1Fvl1H3W4Yfwi5LYUsoIxh', '2018-03-25 08:27:10', '2018-08-02 14:28:19', 0, 0, 1, 1, 'sss', 2),
(22, 'samy', '', '05002365489', '', '$2y$10$YbCggQxNE35smluEskholOksv//FvA0mRI6xnIW8kZ96eDJu7wi6e', '', 'male', '60279073', '9522', '', '', '', 0, 1, 1, NULL, 'kes8MPH96PkVRSvyyfF8mpuvXM3plVo1lwm6kJKqQeMEFzCXyB71AYmzC8tC', '2018-03-25 08:30:52', '2018-03-25 10:27:49', 0, 0, 1, 1, NULL, 0),
(23, 'samy', '', '0641255437', '', '$2y$10$tJtm/bN5yRLL/WSspUu5oOXcl5ABs7k/yoWNbFKggFvSlvB6RpbUa', '', 'male', '10961383', '9770', '', '', '', 0, 1, 0, NULL, '8eW1dfzLoVDMGtiqOxRJQGOOL39zaEsZp7WasuIwosix4twHT41WDAmYKmVR', '2018-03-25 08:33:25', '2018-03-25 08:33:25', 0, 0, 1, 1, NULL, 0),
(24, 'samy', '', '0641755437', '', '$2y$10$7/Umk0Z6ltR.kvTWPCOF7OrYSriaMo6flz.UWF29NiATtuzcmOrsC', '', 'male', '84539875', '7518', '', '', '', 0, 1, 0, NULL, 'LiNdSsJlnzAx4RpHk3qaDSxRPndFgDgMU3U4xxVtq1DGHrza0TNs714jjWRk', '2018-03-25 09:31:21', '2018-08-02 14:27:58', 0, 0, 1, 1, 'sss', 2),
(25, 'samy', '', '0502365489', '', '$2y$10$lpTLKN6PtcLbYlSxFBUCCON8q9vJBfl8eR5LutWae2VGJgMEKleOu', '', 'male', '42058722', '1229', '', '', '', 0, 1, 0, NULL, 'kX8O28DUOlVhvSLQ1vB1yIaWB5O3oDDeQGHEEgQPUfn3WGwD1bjPBfjtIzOH', '2018-03-25 09:52:05', '2018-06-28 12:48:43', 1, 1, 1, 1, '', 1),
(26, 'samy', '', '0504896537', '', '$2y$10$nfRLmkOF6Upa1W2LJejkTeVrg4gvmlkwdeogv/XefvYFINYPDQFCy', '', 'male', '45244453', '8245', '', '', '', 0, 1, 0, NULL, 'xj963Xhn6gn9ZIk2A0zzPRQuhtYHhPD6N0wWqROBycU65tw3VAlrRJ08vmxr', '2018-03-25 11:42:45', '2018-03-25 11:42:45', 0, 0, 1, 1, NULL, 0),
(27, 'samy', '', '0507896537', '', '$2y$10$i03kWj/g/AgJV8n0sL1cs.rCA7GI/rwbhIqzENEupXjD/5YXv8NIm', '', 'male', '85374938', '8719', '', '', '', 0, 1, 0, NULL, '7oDJDY2fmtKJLSWevPQJI3bdGELCMFKDKhk8FHaeCpBEafwCzUznrH8BfgkA', '2018-03-25 11:45:51', '2018-03-25 11:45:51', 0, 0, 1, 1, NULL, 0),
(28, 'samy', '', '05071896537', '', '$2y$10$32/3ytRRydjbMttoOebBOujQOG2U0/3qoQ.5sNh4t54254l7H8Di6', '', 'male', '25889124', '6532', '', '', '', 0, 1, 0, NULL, 'XaD0cybExaD3QeY1WxC6bFfxn5qY2eH329N4rZx49FS14OvWIQUnBGkOyc7g', '2018-03-25 11:47:19', '2018-03-25 11:47:19', 0, 0, 1, 1, NULL, 0),
(29, 'samy', '', '05771896537', '', '$2y$10$jp9NJUd.eZbg.C8gfwWcOenpKoYQq7ByFy7fd40oF20/lQYFunCI.', '', 'male', '45313201', '1717', '', '', '', 0, 1, 0, NULL, 'bxcJJQHz65B9ErHbTKf4KUflIzZJzVRcZ91ZyNdBMqo5N51PJ57sEZcx7xk1', '2018-03-25 11:49:59', '2018-06-19 12:04:09', 0, 0, 1, 1, 'ggggg', 2),
(30, 'samy', '', '05771896530', '', '$2y$10$W283JotRd9ZrmyTnDPPV1eQGoX3yOhlUBKTYD.EoiFcKGidhyp/EK', '', 'male', '97522645', '5182', '', '', '', 0, 1, 1, NULL, '1UgyGdE4QJK2mJLUw2yXG4D8aTw4Kgj5ZyymsI35l6aOVpegkWXcJ4dG5K9Z', '2018-03-26 07:46:58', '2018-06-28 12:31:19', 0, 0, 1, 1, '', 1),
(33, 'samir', '', '05701090535', '', '$2y$10$zKbus3nbEePryYc/Mgfl7ebQebh.zOkEdTG24jyhCD/4f8Yypr8y6', '', 'male', '9163', '7589', '', '', '', 0, 1, 0, NULL, 'XTZ1Lrgi8AA9Tj8kaluF51NuXDmaCqByMtqvRIhJnG9cZSMMfwfvW9qkQRNl', '2018-03-28 06:52:14', '2018-03-28 06:52:14', 0, 0, 1, 1, NULL, 0),
(34, 'samir', '', '05001090535', '', '$2y$10$.syNLe.bton5s8G25JNOouVye0uD/QJBOodWIJ.SbnnmvHvFANBo.', '', 'male', '5636', '5302', '', '', '', 0, 1, 0, NULL, 'U6PCriclc58eTHBxarNBaqOZdIpvXXn01G3aBO4SDXAsgP0wsSrTdId5IQLt', '2018-03-28 06:53:46', '2018-03-28 06:53:46', 0, 0, 1, 1, NULL, 0),
(35, 'samir', '', '05000090535', '', '$2y$10$.wLQQEatO7ryOjqHHrV7ZeebIQPjnrVgmJsU0l2VfFNWD2cvGZfpq', '', 'male', '5416', '5166', '', '', '', 0, 1, 0, NULL, 'QhGyUUO5YUjPYQiiaLbyMYUKdnPmsZaY4nocjfKsMu2qIyR4HKGidudVDM79', '2018-03-28 06:57:10', '2018-05-29 08:30:08', 0, 0, 1, 1, 'test', 2),
(37, 'hamed', '', '05001090235', '', '$2y$10$yy50jQJes7uRwPpXrh3nTu7g9XaU8q4lboFImeZHDUwkmy/WBGlaG', '1521625566.ssywB917JTsQgsrCWxXrScreenshot (11).png', 'male', '8815', '1958', '', '', '', 0, 1, 1, NULL, 'gQlX1cjy30J85oihheTrOHxUToahtnz8ol6iCfd4cpn9cXBEJxZXCjk16UlV', '2018-03-28 07:02:11', '2018-06-28 12:13:22', 0, 0, 1, 1, '', 1),
(38, 'ahmad6', '', '05001050235', '', '$2y$10$q/anRipVY.lX/CkHMLTvhOpbJFs3MK/JT.pK5rJcFNtJ1nWHSYUj6', '', 'male', '9324', '4414', '', '', '', 0, 1, 0, NULL, 'mgn985TLG1mypuyFNv2Tpm4wvpzIcx86d284vVRvgjN02evDqpCgIRKj5b46', '2018-04-02 08:21:53', '2018-04-02 08:21:53', 0, 0, 1, 1, NULL, 0),
(39, 'ahmad5', '', '05501050235', '', '$2y$10$IXi2nTLA8KlFMwz1EX4WYuVkxuZLTWUuczgtiVN7XnNSLPXuEkIbm', '', 'male', '6417', '9487', '', '', '', 0, 1, 0, NULL, 'IPdBJW13sqgcAcZzMqZMSniUD20HhVEGOSW0OdVcpCjwUdsYNixZ5BQnDneM', '2018-04-02 08:26:26', '2018-04-02 08:26:26', 0, 0, 1, 1, NULL, 0),
(41, 'ahmad3', '', '05210050235', '', '$2y$10$rgoiVNz0dRJD1QNtFtNVguKqBLrcNZ6Pz.lPtyk3gy8EqrnQUFCnW', '', 'male', '2418', '1399', '', '', '', 0, 1, 0, NULL, '42A3kPu6wX1tOLTvZn7VxDIwZaEI5VQR3xiwdMblBvhh3bz9ZCip9H5RhkTm', '2018-04-02 11:30:19', '2018-04-04 10:48:49', 0, 0, 1, 1, 'hh', 2),
(54, 'Ramy', '', '0512312322', '', '$2y$10$znrEPfGPSrODNw3RDm3AxecPUycMKM/Ni3W4XKpKL896Ef1s5Unda', '', 'male', '5812', '1286', '', '', '', 0, 0, 0, NULL, 'g4KekpSB1XgCK8lBGMP2tHN6AA0zQHlsuOwXXZIXFW9PciX2mhVJpwvRiYXQ', '2018-04-05 05:42:00', '2018-06-26 12:38:59', 0, 0, 1, 0, NULL, 0),
(55, 'Ramii', '', '0514754122', '', '$2y$10$PHOJKC8vzHmJXQ1Inn6D5uxOU9iRZ4NN7SDQy4umc801/IP5ftcgO', '', 'male', '7614', '4214', '', '', '', 0, 0, 1, NULL, 'S7BOdicg2H6M33q8fDtAC5nsIHUd8M3PoyRSSCjZh4c7CMkxxQJ1kEIVtsbA', '2018-04-05 05:44:20', '2018-06-04 11:56:42', 0, 0, 1, 0, NULL, 0),
(56, 'Ramiii', '', '0514714717', '', '$2y$10$c0ibYWPBbJQexpGxBU25jOD4o3984/IEXq4VB5D/PdRqysdFHtu/i', '', 'male', '4599', '1880', '', '', '', 0, 0, 1, NULL, 'DWcd8qYYDLHf9bRgs9H7YBNRdHyUHyA250bfjOmCHu2yr7RyNubezz0qmGyy', '2018-04-05 05:52:05', '2018-04-05 05:52:45', 0, 1, 1, 0, NULL, 0),
(58, 'saned', '', '0514714711', 'saned@yahoo.com', '$2y$10$nqBmqvERN.ttu1.cywJ4j.wWH5Emtv.obYc4GK.ypcAg90s6j8gAW', '', 'male', '6385', '3300', '', '', '', 0, 0, 0, NULL, 'HGiyuB8VDcT2jY8hKM3PfZwvFZXhIRygWmfpVSL6ysh1YDoP3TsfWTweqrX5', '2018-04-11 09:30:50', '2018-04-11 09:30:50', 0, 0, 1, 1, NULL, 0),
(60, 'mohamed', '', '05510450735', 'mohamed@email.com', '$2y$10$tYzRo1HDUS3Gz4Qlht9e0uZc0FSSsh0pvLsIzAUXCVEfSGeVApAhO', '1523701243.LX4PpUW17nduz4pZdIn4Logo.png', 'male', '1228', '9750', '', '', '', 0, 0, 0, NULL, 'wPsO6cndg7JSHybOjsWvKDfJPjV5CZG2URB4Wyo6fiLaOA2UdP3wrnQ4fhQJ', '2018-04-11 10:03:33', '2018-05-29 08:29:48', 0, 0, 1, 1, 'test', 2),
(61, 'saned', '', '0514714713', 'saned@yahoo.com', '$2y$10$fOcXV/O96h.A7KSTLla/h.dd/QiORtyaJ2i4PIK1NtlohNzcCJ74e', '', 'male', '5748', '1559', '', '', '', 0, 0, 0, NULL, 'QPxEoAWQFvaNVJ2wgENfYVvuGxzgrq8T1p3WInXhCnSvp9CaYtplVCwcL7F6', '2018-04-11 10:15:04', '2018-04-11 10:15:04', 0, 0, 1, 1, NULL, 0),
(63, 'market', '', '0512312313', 'market@yahoo.com', '$2y$10$G086qOKlGOfpNqMfgFBK9ucmNpT9iQP/bMYCarVoc7xtfCcan6DVy', '', 'male', '2837', '506738', '', '', '', 0, 0, 0, NULL, 'DRpsvF67lII3FcfW7ndM72veV6vXnXnLZNjIdxt3RqKH3y2BtctkTxmdUpgF', '2018-04-11 10:57:02', '2018-05-10 08:35:56', 0, 0, 1, 1, 'test', 2),
(64, 'www', '', '0513131313', 'www@yahoo.com', '$2y$10$81rlm9CJL0UD9TNVJkyoueG8VpMFKr6UKtAajbFQyq1Buov/w6BJ2', '', 'male', '9127', '4266', '', '', '', 0, 0, 1, NULL, 'Dfta8FRCxqRyIoSciai9MXiupCwrAu7uFyx3EkoKraNbFXXkntvy1wBIfCr2', '2018-04-11 11:06:28', '2018-04-11 11:07:04', 0, 1, 1, 1, NULL, 0),
(66, 'ramy', '', '0578978977', '', '$2y$10$9xTcPWLtu69./Qv7oy3UKeDB9DP7DoeK4KvsY6CgwJ/8kNQhdvVUi', '', 'male', '4122', '4207', '', '', '', 0, 1, 1, NULL, 'ZN7t7xmvJRat0HwcjHm3GeFyCMSQeioDjrfd4sdiluAREVJwGITjtZuj5B4J', '2018-04-12 05:56:32', '2018-04-12 05:57:19', 0, 1, 1, 0, NULL, 0),
(68, 'saned', '', '0578978999', 'saned@yahoo.com', '$2y$10$RjEhx1r.UlaI3ZnpnAgMReFMsSsDd84p7Fxsbu5GZn2zygmzqiYqa', '1523698906.sc2e9hpWBzQqZ72mj84simage.jpg', 'male', '1715', '9322', '', '', '', 0, 0, 1, NULL, 'tC1jvplc3BLau2rDfhRmdEbdNxOqKMTxwcwlsBq5Yhr2OhcRlBFrkLVdurnX', '2018-04-12 06:32:39', '2018-04-14 06:41:46', 0, 1, 1, 1, NULL, 0),
(69, 'ahmed33', '', '0514523695', '', '$2y$10$V2ifYlMdO/QUHJoMkfiRbezedpB4wcyaEefIVhiRvJCVd6Z7sRyXy', '', 'male', '9216', '1075', '', '', '', 0, 0, 1, NULL, 'QvrYs0AGJefgaa6YS6tLa6tVoOL79uxvIYdEU2O7WUnLIDKIS4iVXGzqHOV7', '2018-04-12 06:53:12', '2018-04-12 06:53:24', 0, 1, 1, 0, NULL, 0),
(70, 'talla site', '', '0507549862', 'site@talla.com', '$2y$10$X6zE3IyrwUysozd25hz/eeo3MX1f3cnLt9zfz8iC1o1k3FKLDMg9W', '', 'male', '7371', '2526', '', '', '', 0, 0, 0, NULL, '5euCLCudibTCvFNUTLFjIjEnkBmnAh5Zdjsl2rK1CqlxlLZbRLql1DcdrzrS', '2018-04-12 08:25:17', '2018-04-12 08:25:17', 0, 0, 1, 1, NULL, 0),
(71, 'siteprovider', '', '0501793564', 'sitepro@site.com', '$2y$10$PCki04/oiPvdibS7.cmYqO2neGFe9Q9Ej0uvjUN0N1DXS1KAKiNkW', '', 'male', '6098', '7301', '', '', '', 0, 0, 0, NULL, 'iCj0y4okAnADFi4231AXkJt6RyDnJAYJ2mnjjDk3aZFMzlmX1oBiURbHhzW4', '2018-04-12 09:26:30', '2018-04-12 09:26:30', 0, 0, 1, 1, NULL, 0),
(72, 'ahmed', '', '0557430297', '', '$2y$10$ysnm8njwF/PzoHH1ga3FYet8COZ0cia9JO34DyS59wu5KcQW7qq5i', '', 'male', '1141', '6648', '', '', '', 0, 0, 0, NULL, 'BwoaTX7MgvhE9ZUepnqPJIMkABEoZ7GmJubmzMESVtcd1WsDo9wZVTlZmjr2', '2018-04-14 06:55:26', '2018-05-10 08:35:29', 0, 0, 1, 1, 'test', 2),
(75, 'saned 333', '', '515915919', 'mohamed@email.com', '$2y$10$YpdeicQLmuypacZXY7D9Vek7kd.PW62/jlK6NvNJxWvq38uFrvQpO', '1524055661.pmvk6cP8aKg5iLWNMexOimage.jpg', 'male', '3590', '2348', '', '', '', 0, 0, 1, NULL, 'COjDcfjNFqw05sRzEk2NqaW1dtISgCQm74D19JXXKdjZGI7ikKCRg7MyXEBY', '2018-04-14 08:20:18', '2018-07-11 12:58:35', 0, 1, 1, 1, 'refuse test', 2),
(76, 'sss', '', '0501496637', 'sss@ss.sa', '$2y$10$ZqxEmHGd1Q1c3skB47OfxuAhTVbYQ8z8zAzTXBm70GJIeueSHyLAu', '', 'male', '5265', '2399', '', '', '', 0, 0, 0, NULL, 'AuBvfcscZZLEpHOUwtGiZX9hQkKatHFcpCGVi2MYDECyaquVc2bMCBTsvcxp', '2018-04-15 09:40:23', '2018-04-15 09:40:23', 0, 0, 1, 1, NULL, 0),
(77, 'saned3', '', '0515915918', 'saned@yahoo.com', '$2y$10$F6P1PEnkbS1b0uNXjPrmT.iaI3COg4Mnxb9WInTv8J3gXqOWVpPu.', '1524056082.LYYzFJ4spJhZkJ50Lh43image.jpg', 'male', '6414', '9676', '', '', '', 0, 0, 1, NULL, 'Zqi0XdT1qxnRZJcmBzo05uhTQkJBzEKwAvr3BkJKTMIhxC9zQHMOHp2LmJ3E', '2018-04-16 05:50:50', '2018-05-27 07:47:39', 0, 1, 1, 0, NULL, 0),
(80, 'مركز حلاقة', '', '0515915914', 'clza@yahoo.com', '$2y$10$mRoI7SKCUHZ0SoZOJJuCmeX69Tdd06JdBwfvDo3r.Q5UDJ1FJtEau', '1527067491.Nt6QkqVlRKBQiSJBJM2Ndownload (1).jpg', 'male', '4090', '4570', '', '', '', 2, 0, 1, 'kkkkkkkkkkkkkkkkkk098888', '8xLTTPEXP66BqDeZyeKVMdhkXMpdYaAr0ay99oVL14zKRvhjXde6tNuBYPx0', '2018-04-16 08:14:19', '2018-06-28 12:24:36', 0, 1, 1, 1, '', 1),
(81, 'note', '', '0514714719', 'note@yahoo.com', '$2y$10$58kzPFODlcEzxogpJf.G8u86eNET98F/Ue1GjN9T5qeqKyeYkW5U.', '1523886785.rCONm4RtU6lGO2ZWu8Qdimage.jpg', 'male', '3044', '2805', 'test', '', '', 4, 0, 1, NULL, 'XccmNO3KY8W2ck1w6n08BgC0GFtfyQcClSfrS38wjHEvvgw5MCN9JrJZISc6', '2018-04-16 10:32:21', '2018-06-28 12:35:00', 0, 0, 1, 1, '', 1),
(82, 'Dawood', '', '0515915928', 'm@m.com', '$2y$10$AewFus9aTpeArG3y5SuaX.sS6m8SM.ZnW/hlaA2aXGcQ14Ev.3WS.', '', 'male', '7908', '1618', '', '', '', 4, 0, 0, NULL, 'kdPFwazuErJBeuN0udsCWHNwqGzV2V9QAEIjjQ2IK9o34Q4Ls9irAPxTIglf', '2018-05-01 10:15:35', '2018-05-30 08:39:08', 0, 0, 1, 0, NULL, 0),
(83, 'Test', '', '0515915912', 'dddd@ccc.com', '$2y$10$kZjCcuYHt8y1eRZoNTvLJOf2lMHuaFdByH.DrZBC3VWN2hq0d4O3G', '', 'male', '4314', '8348', '', '', '', 0, 0, 0, NULL, '2oyohdbKDBarpHO7rXc1K1NewyqWMHVQGXSm3XXDSPkBuCa9peh6Ta4eJ7tB', '2018-05-02 09:14:01', '2018-05-02 09:14:16', 0, 0, 1, 1, NULL, 0),
(85, 'test', 'test', '0500000000000000', 'm@m.om', '$2y$10$iRyXs3mekNeoXO3eqKIqIeCMzV7vQeKMB1PzlKcGe2n68mtQ/QsXq', '', 'male', '30907478', '30907478', 'test', '', '', 0, 0, 1, 'mFm2oX3gXZplte287ENGGKy1h9Vuw2bmqF8zZ6yc', 'InhN2ihkTyivjPRlBqSZKsNqP4SpF5wylKo0x8MDfJ75ePVOrAP69m8B0F3d', '2018-05-09 07:36:58', '2018-05-09 07:36:58', 0, 0, 1, 0, NULL, 0),
(89, 'Test', '', '0515999999', '', '$2y$10$P8xwDQ4dFuK5xhx2jmUKm.3F7xmoHTmuBEP0/7cwi.1ayTy4DeDKG', '', '', '6580', '4227', '', '', '', 0, 1, 0, NULL, 'H6WydBerWjO0GulZKk7iK0526iPoVpBKDWdtCoYXfM5ZApb822AsI8ju5b7I', '2018-05-20 08:14:57', '2018-05-20 08:15:11', 0, 0, 1, 0, NULL, 0),
(90, 'Test', '', '0519999999', 'm@m.com', '$2y$10$1gbEArFmfdkuK5ZKEu3fg.l9EcIW2GmdRy3O8HVhX4vNsVW49E.5a', '', 'male', '3526', '1832', '', '', '', 0, 0, 1, NULL, 'q9g31sDnz9aN5X6bp5Zm2eehPNmSsWOz1SFonrBIH4CAUsKQWBhKhtBY20RC', '2018-05-20 08:40:56', '2018-05-20 08:41:32', 0, 0, 1, 1, NULL, 0),
(91, 'Test', '', '0517777777', '', '$2y$10$p8NVVJDmtfaihhVWBxL1Ae4sqfIT0ad2R4nhUadEtnGbRj8IKHDuW', '', '', '6103', '9288', '', '', '', 2, 0, 1, NULL, 'YxTH9lkksV7z7CcVNVPpUO6gEweqS1gvjZSJcXyLL2FOOEDRLo7VZiCufYdw', '2018-05-20 09:17:36', '2018-05-20 10:17:20', 0, 0, 1, 0, NULL, 0),
(92, 'Ahmed3', '', '0515555553', 'm@m.com', '$2y$10$XrzTk0VyQljuBhlsPytIXe6gtYK63r9GfyY67.cA399Ehz0yFXj2i', '', '', '8147', '7906', '', '', '', 2, 0, 0, NULL, '9smAuDRABD9VVvrcqYHydzSuHH4EoKxJzgo6uIKZJDiV9Bq7eQiMAHExPPZM', '2018-05-20 10:47:48', '2018-05-30 12:49:02', 0, 0, 1, 0, NULL, 0),
(94, 'Test providers', '', '0513333333', 'm@m.com', '$2y$10$OdN0.YYjd.o5vIi44KGhpewIAxgagPe9dRD3anglguLJyMw1YcsSS', '', 'male', '4491', '1472', '', '', '', 0, 0, 0, NULL, 'ZfTmWdqr0HpCq7WGMPpRlOAiyfN4y6zUNmKEK8tCuvrSIGi3wygfinwOLCo5', '2018-05-20 12:02:03', '2018-05-20 12:02:03', 0, 0, 1, 1, NULL, 0),
(96, 'Mohamed', '', '0515915915', 'm@m.com', '$2y$10$FPM/4/kQ8LsEWHr8hhnt..hrQBeOCGfzJFnnmml7eJjGyzslm6fMG', '', 'male', '3570', '3603', '', '', '', 2, 1, 1, NULL, 'c04wCdMYuwdC1UMyt4Gsu8fKR6XNLvD0XlpupwfMcjKLEofW0m9ZuUTkF69E', '2018-05-23 12:04:02', '2018-05-23 12:05:44', 0, 0, 1, 0, NULL, 0),
(97, 'الامل', '', '0515915916', 'shimaaezzat.iti@gmail.com', '$2y$10$N4t6b5SMfNCw9sFbaeWtG.5.qV/A0SUoHyDuaTgV0//YrhDS6HqHK', '', 'male', '8343', '7832', '', '', '', 2, 0, 1, NULL, 'tIPVW4VvotpgO5eV1TsIIeJXvbcHU8tLtHq1oIpFnHJTy8bqKSwJ8ueib9OG', '2018-05-23 12:12:03', '2018-05-23 12:20:12', 0, 0, 1, 1, NULL, 0),
(98, 'Test', '', '0511111111', 'm@m.come', '$2y$10$W1Be9uPFHfA5KS64t.lfeeu2zVHYgp8E.U5LBxTMYOvU/GCeEQkj2', '1527331813.Mbt8xrPKCFPihosRSM6Eimage.jpg', '', '9672', '4557', '', '', '', 0, 0, 1, NULL, 'cCt7TYtE9ZG13NErpEhdkozWb4ZVvgd7ARvQ4acW9gASqbcEV25uxT9ietKo', '2018-05-26 10:25:45', '2018-05-26 10:50:13', 0, 0, 1, 0, NULL, 0),
(99, 'Test', '', '0512222222', 'm@m.come', '$2y$10$5ActBTYKMCh3ZyJdR30ce.b9DvmNZCtsRlh0oZwY7eiAHn3S7mK6m', '', 'male', '5514', '1429', '', '', '', 0, 0, 1, NULL, '93VuzBEBVJgosbaepJcdNABsE8sjHoQanLJuZuWaey7z51PmlTlK3GH9qRCY', '2018-05-26 10:58:28', '2018-05-26 10:59:13', 0, 0, 1, 1, NULL, 0),
(101, 'Test22', '', '0517774441', 'm@m.com', '$2y$10$lFerFrQBG2LHT7/Jsl2prON4U2IIlGJ/FHv2FyNXFqvLBXHOLhh2G', '', 'male', '6441', '4685', '', '', '', 0, 0, 1, NULL, 'vGIeKLtmLi33YviR0JOMaVoox2pBPfDSmRRtyOhejG3hQ9BKqM4nLMO3VNDW', '2018-05-26 12:00:27', '2018-05-26 12:00:59', 0, 0, 1, 1, NULL, 0),
(103, 'Test', '', '0513334447', '', '$2y$10$rWnnSMtuJJ.6taJZAnypWOonTCneXKSDYNTxHU51RzYfESXM/LMmm', '', 'male', '9784', '1894', '', '', '', 0, 1, 1, NULL, '7N1fCozVDWdEQdbkU2oo5iAwzPoPmGLHM2IaBn3bynXqtZX3Dp9bJ16YPk0P', '2018-05-29 07:22:14', '2018-05-29 07:23:14', 0, 0, 1, 0, NULL, 0),
(104, 'Test', '', '0512222225', '', '$2y$10$QqoihpIdkr5I84G6m62KUuVWUctAO/ZBpctHeH8ma7Qobb7H2PnBS', '', 'male', '6939', '6289', '', '', '', 0, 1, 1, NULL, 'b2laiqWPGpJaOpDJjwjOofMjE72U6DxkkbThcbIv0qBrx9bRAC5WdzquU4EL', '2018-05-29 07:30:19', '2018-05-29 07:31:23', 0, 0, 1, 0, NULL, 0),
(105, 'Testtesttest', '', '0511111117', '', '$2y$10$C8Yw9Dnm7K7MVHrlR0v2se2nOJ4y4oRuub/6E0qoiiOzFqGUa2hHm', '', '', '3355', '5305', '', '', '', 0, 0, 1, NULL, 'XqoZY4GoH66v6McBjDpMfMYLlKNoFJmAvDPRonsBET93NZgtqIc14yCftcvn', '2018-05-30 09:48:38', '2018-05-30 12:30:29', 0, 0, 1, 0, NULL, 0),
(106, 'طلتتك', '', '0512222227', 'test@test.com', '$2y$10$vFeyByLCFjhGI8NgO5KqM.VoXIF4yiw8lvYi10kz8rvJFbXtbJtni', '1528373512.4nTex5uUmcsGkq0B2yLBimage.jpg', 'male', '5947', '7575', 'test', '', '', 2, 0, 1, NULL, 'ctqH1235HkuXE9oqjn3Mu5tTjQdMSieUpQ4GX7YssZfpKJp922QNrMZpm9oX', '2018-05-30 12:40:48', '2018-06-10 09:42:02', 0, 0, 1, 1, '', 1),
(107, 'Mohamed33', '', '0512222234', 'mmm@mmm.com', '$2y$10$YImwF04XLcXv0GofIcWL4eDzZk3cMMi8fAQ9gSdYPJlZjdkWNC4u.', '1528374593.rf5KLvtaQ4P4PDeb1PMmimage.jpg', '', '5716', '9526', '', '', '', 4, 0, 0, NULL, 'wsboYnLD5GjGKNAl1kAEFWzNQIGKswxgjCgF9iIUAnBi2QxBAX0xGHWFrOXd', '2018-05-30 12:54:02', '2018-06-11 12:19:38', 0, 0, 1, 0, NULL, 0),
(108, 'aaa', '', '0515876521', 'hhh@hhh.jjj', '$2y$10$cC3NKzKaGhmSe1tXW.HY..CaaHsD.Us9GS339q6roQKb0kCYh19t.', '1527754319.EbKVVof2cJthAytN1FCJ220px-Bleach_01_-_The_Substitute.jpg', 'male', '4045', '6926', 'sa', '', '', 0, 0, 1, NULL, '0DF5LJYU3kVrF4elOvdwuWaw8yMGhMSQbnYNynDW1PvFtgmEXZfI9pkNYJ1P', '2018-05-31 08:11:59', '2018-05-31 08:11:59', 0, 0, 1, 1, NULL, 0),
(109, 'aaa', '', '051587601521', 'hhh@hhh.jjj', '$2y$10$JLEwAig6z8EuGUpyWeq.0e9mlYGdEhsrJRt6oREJr3tVK6JAbDOrG', '1527754399.h4xUjPjrdtejN925EDQLb06b7885-2afa-446c-bb7e-f44f897b3b60.jpeg', 'male', '7538', '6617', 'sa', '', '', 0, 0, 1, NULL, 'EdSjwfuEFUs0Nsv8SiP7jbsdRxAnbzqArfJjA6E9uK0IJMeLlurjlc2ZfkKe', '2018-05-31 08:13:19', '2018-05-31 08:13:19', 0, 0, 1, 1, NULL, 1),
(110, 'talla name', '', '05012389547', 'tall@tallaApp.sa', '$2y$10$s8YHTV8F7Y6.7pv4tealheZM6qyZ5wq8kaM3encpg96bf.wZBczPa', '1528018600.ZFSxItcw5tPQpjVcD1K7220px-Bleach_01_-_The_Substitute.jpg', 'male', '3675', '3679', 'sa', '', '', 0, 0, 1, NULL, 'mWSGH8M60sPlQvnmUdjT6FgRGlxHy9NFvnh9b8YMpT7K4IMilWC0Dr6yXWtK', '2018-06-03 09:36:40', '2018-06-03 09:36:40', 0, 0, 1, 1, NULL, 1),
(111, 'talla username', '', '0501238954', 'tallacenter@tallApp.sa', '$2y$10$ZIgOTOBFZtBBdhtHpYXwSeeuFY0uwuEJuVvSydSr03K2b5l4Jj/Ti', '1528018719.lkBklN2nSbs4Y6Yvtz2A220px-Bleach_01_-_The_Substitute.jpg', 'male', '5098', '1799', 'saa', '', '', 0, 0, 1, NULL, 'gbqNzt5JRNZl2RwaHPtKBCAYqqemBTYnnHErPFpvQiWD67U86woL3ZYPRTg5', '2018-06-03 09:38:39', '2018-06-03 11:22:10', 0, 0, 1, 1, NULL, 1),
(112, 'انا', '', '0555000000', 'tast@hotmail.com', '$2y$10$Lo88.6X9qY8tAOa5aRvaceIaicx41EaN2Zj73b1OFCACeZ3gJBDOe', '', 'male', '8612', '6393', '', '', '', 0, 0, 0, NULL, '5OM0Fs4mu7KK6O8wRYiASCKMtDcu1LqbOl5HnggBGPqJdD8PHmXsfPXDCH1I', '2018-06-04 04:21:25', '2018-06-04 04:54:29', 0, 0, 1, 1, 'يوجد حساب لنفس المركز بالتطبيق', 2),
(114, 'Tahani', '', '0500800000', '', '$2y$10$aoC8xvYXTWh76EWln.4eJe9w8fFsbTRYuSyVJMEtDMuhz2ACAd2O6', '', '', '4127', '8003', '', '', '', 4, 0, 1, NULL, 'q10Mdw1cQpkc5iJEpYnOMHE0VeEVSWkje6tDKQrd1VRnd6wTDUKV3RXrZB61', '2018-06-04 04:32:19', '2018-06-04 04:55:37', 0, 0, 1, 0, NULL, 0),
(117, 'ddd', '', '0555555555', 'ddd@ddd.ddd', '$2y$10$Q1obRVHPppu77ThXE7HVaeKMNcz0tmrc2iN90rZ.jQ3InChxqgFmu', '', 'male', '7474', '7204', '', '', '', 0, 0, 0, NULL, 'USs3y8iaEJ9fbbDxyV7ISo5MGWQ5w56R6yuadPKxiyDcv6altLJwN0aGxxLt', '2018-06-04 12:33:41', '2018-06-04 12:33:41', 0, 0, 1, 0, NULL, 0),
(118, 'ddd', '', '0555555551', 'ddd@ddd.ddd', '$2y$10$aHsd2Pcy0NChFkYEMDTIremBDPHS7B9pNgLYR1Ja3zazS7X9IAlVa', '', 'male', '9846', '4352', '', '', '', 0, 0, 0, NULL, 'IOzYKRhtCuzNzQnfHDGyf2nq3i7UX0Bl9ShJGhXgU5kcGB0MIHNGoxN6507Z', '2018-06-04 12:35:44', '2018-06-04 12:35:44', 0, 0, 1, 0, NULL, 0),
(119, 'Manar', '', '0512222221', '', '$2y$10$cZEvkpMTPdEwTPW8WdGOd.p7ivJ7yuZglOcLuHmGzRqtsCEVqBW4S', '', '', '7779', '6878', '', '', '', 0, 1, 0, NULL, 't2nApAlZ4FP38YLkBWhybCb8p2eAzEmqT5ukxtf0c3ECIepu3IYAdUnvr1HX', '2018-06-06 12:35:32', '2018-06-06 12:49:09', 0, 0, 1, 0, NULL, 0),
(122, 'Test', '', '0510000000', '', '$2y$10$UI6IVHtmuQ8m89Z1p1HswuDtfYfeIQAaREe5vTIKFQ0kcpzIOsQ3S', '', '', '5746', '2984', '', '', '', 0, 0, 0, NULL, 'UhKhMkYnMML78KHsnyhjTy2VBaAYjWxUb9H2VW6QWmAKkjbIA2LmVfLjkbff', '2018-06-10 07:56:02', '2018-06-10 07:56:02', 0, 0, 1, 0, NULL, 0),
(123, 'New', '', '0512345669', '', '$2y$10$wbXZzZ9L69J2aRGxwKycxOiPOFH5szj61GNZF0BLH0rIoeMfjk.jq', '', 'male', '6988', '8517', '', '', '', 0, 0, 0, NULL, 'ExBiHpoTzSzrSjt8mNLrA9xl1MtDpbl4sLjGdrSjCwk6jypGjxfaErIYIUB8', '2018-06-10 08:44:49', '2018-06-10 08:44:49', 0, 0, 1, 0, NULL, 0),
(124, 'New2', '', '0512345666', '', '$2y$10$pBIJDqrwSGEN7n5PZ9kUfeS.O7O72vfnrRoOuTghuidQ.7BD8m1ka', '', 'male', '6709', '7645', '', '', '', 0, 0, 1, NULL, 'tF5PBvBbAwRRwU4TcTQl6SPy4WBrIH0DYeDg7SAFaOSrsznXlgBoj6HCL4vI', '2018-06-10 08:53:58', '2018-06-10 08:54:18', 0, 0, 1, 0, NULL, 0),
(125, 'New33', '', '0512345665', '', '$2y$10$VoAdoLK.DOCq5IvuZRXoJuTMs9oXl6sCdV92TGGaTJDz7oZJv2ZRe', '', 'male', '9093', '8742', '', '', '', 0, 0, 0, NULL, 'QHwM2WJN3H2QxQ3WUbTiscTfabGISoaLKuGJvAMmByXZvo5H4FR2Gmnld6Iy', '2018-06-10 09:11:37', '2018-06-10 09:11:37', 0, 0, 1, 0, NULL, 0),
(126, 'Test', '', '0510000001', '', '$2y$10$nGmgK56Gu7XFVPaw/cVWmuLSrohw9oduEpjqZc5Rw.266JNCbG3XC', '', '', '6635', '6401', '', '', '', 0, 0, 1, NULL, 'tKb7OTXEmClzVKYLX6AMxffrDuAKCzhRMfigLwUG5ksEsdCkwTIQDfz13CxB', '2018-06-10 09:37:53', '2018-06-10 09:38:44', 0, 0, 1, 0, NULL, 0),
(127, 'Maher', '', '0512345678', '', '$2y$10$GuOos7.eBxXQqj8HoqlJ..P3KtH68D168zb7MtJMkP0E.UPctkQoa', '', 'male', '1612', '9280', '', '', '', 0, 0, 1, NULL, 'W5VVZR95tjrJgzyvdFbCUrbTSzW4b5BgkhBbA69qIjNok7WpSkLh1WoemLAs', '2018-06-10 11:50:23', '2018-07-09 08:17:54', 0, 0, 1, 0, NULL, 0),
(128, 'Ttt', '', '0514258763', '', '$2y$10$5Jlly53DQAm/eNnHQ8VGCOf78hqjcWO6vetvzGGsWFz1TVniABbBu', '', 'male', '1792', '4947', '', '', '', 0, 0, 0, NULL, 'NvFfiSf0SrzIZFb2wPImuewnXhTiQrkVBoVgn6pkFw6HoYZESAZ6RXRnOHfU', '2018-06-10 12:11:46', '2018-06-10 12:11:46', 0, 0, 1, 0, NULL, 0),
(129, 'Test', '', '0510000007', 'hjnbbb@hjjj.com', '$2y$10$fK81n3SF63TaqwmOOeYD8.igtsCWDyb6cdhGxMa9YL3pz5fF0ww5u', '1534241581.WVAdR0RiW6iX7em5qEDfimage.jpg', '', '7341', '1460', '', '', '', 2, 1, 1, NULL, 'W8W0s0DNdmrNcChK19AGW9zUer1xRfnWR53hpofmO9PiWfNpcTOW28WJeZNa', '2018-06-10 13:07:51', '2018-08-14 10:13:01', 0, 0, 1, 0, NULL, 0),
(130, 'Test provider', '', '0510000006', 'mo@m.com', '$2y$10$x1giqhlOOg4EgZRyZ/L1rulqFBTsByQlJCbY1i7ZjjWh3VntVNd.G', '1534328240.2KqZFCKYn94sKw04AxjRimage.jpg', 'male', '9085', '3015', '', '', '', 2, 0, 1, NULL, 'QKAn5Y4EXMS7jzO0q0GvqJWVN1eK9hEFs4wxi7PfQnbuKru1kcC91gXk2EFC', '2018-06-10 13:19:37', '2018-08-15 10:17:20', 0, 0, 1, 1, '', 1),
(131, 'Ttuuj', '', '0512345698', 'oouser3oo@gmail.com', '$2y$10$/PCtKHUOf677h/ihOXVmHu.g6ReB0Lqxb7qAvzhPrTU3EOFGRk3W.', '1528718015.mze6jOli7OTniznHKXIiimage.jpg', 'male', '8423', '4437', '', '', '', 2, 0, 1, NULL, 'pAMltBuHacHgIPVgsAZuvADklc2ZZpy51Upbh5Ow7kTAVC66vZ4uIWWZmrNx', '2018-06-11 08:21:51', '2018-06-11 11:53:35', 0, 0, 1, 1, NULL, 0),
(132, 'Fff', '', '0512745674', '', '$2y$10$3l7YOIklEVJZMA/n92tYTeSBmIK0pT8K5aKcu0p/y9ciZO5TG/h7K', '', '', '1453', '9012', '', '', '', 0, 0, 0, NULL, '3lToGiLDsafiAiLMvqV606yLoVVhrCfwLchsjjfD13Yt5SFDqiKhWJhaIIEn', '2018-06-11 09:04:49', '2018-06-11 09:04:49', 0, 0, 1, 0, NULL, 0),
(133, 'Ahmed', '', '0515915917', '', '$2y$10$t.L91wd.tPqcpgWdJodAh.N83eFjevfPPo.ZERsuu5JgGwmiUYXHu', '', 'male', '3433', '5752', '', '', '', 0, 0, 1, NULL, 'EOGJcYfVc9Iey5gpNYdTvQOwuMgnz6UDEjlKUxtOgrH0L6XZWXqb9Rsdfcw1', '2018-06-11 11:12:57', '2018-06-11 11:13:12', 0, 0, 1, 0, NULL, 0),
(134, 'Ghada', '', '0515615614', '', '$2y$10$LAaMV78xpiD5DLPabVIqxOEJ6TM9.Bc0Hmxp6PqhCaN1FfPru8u8u', '', 'male', '8408', '5811', '', '', '', 0, 0, 1, NULL, 'QGlgPJAhGi6vYMcKbzatHBQwCZNxXY1qaJgoc8bTEzQRPO4qrKnVv9kAaesZ', '2018-06-11 12:41:24', '2018-07-03 12:33:33', 0, 0, 1, 0, NULL, 0),
(135, 'Ghada', '', '0515715714', '', '$2y$10$N713Tj1MHTQR.caPGVHIoOpq.MIxxGBt.a1I/3ckcVGtT5y4ce4la', '', 'male', '2607', '5870', '', '', '', 0, 0, 1, NULL, 'qA6uHBAfq4f25O1wRsR4VPaf91I95zafVGCblCY08yd54EXg6BzwJOdiokAD', '2018-06-11 12:43:06', '2018-06-11 12:43:23', 0, 0, 1, 0, NULL, 0),
(137, 'test', 'test', '05123456789', 'manar@manar.com', '$2y$10$nhapLLgzX7MAKgtl5g4aPOhfza5H.bsUveb/WrH5qkk77vZ8/Qg4G', '1530091172.Ib8AGJLxnboGRSMU6SNVtest pic.jpg', 'male', '41001721', '41001721', 'test', '', '', 0, 0, 1, 'qKehmkYbuuzhQjJBryJBMh0ZW7BKKd24KHo8S7wX', '7OgDhFoWw96V9DWDPpp9xWnRvnFbrvTXzgcZrgyvZTrcnxAWNQT7RTXmr3Qt', '2018-06-27 09:19:32', '2018-06-27 09:19:32', 0, 0, 0, 0, NULL, 0),
(138, 'Test', '', '0510000002', '', '$2y$10$nOxapbiZZZQc.lghAZEL4.jcJB6UyFQfUdPVG/pqh7srCFs2O7cDy', '1530095824.JCDmLyA8xRunnqA5v4YLimage.jpg', '', '2661', '6109', '', '', '', 0, 0, 1, NULL, 'HTt2gTvUIkXR6ngUxMuKkPJ6tTG75x5Wwl05KZ5HSArSGtu5IZW2YYdvYPbv', '2018-06-27 09:24:11', '2018-06-27 10:37:04', 0, 0, 1, 0, NULL, 0),
(139, 'Ahmed', '', '0510000009', '', '$2y$10$MFqumVMZ/6fjLEfo06MFGejRo7YQxPhRO6IP5Bpu5TasYBM5cvP66', '', '', '2706', '5393', '', '', '', 0, 1, 1, NULL, 'dNDGH18Y2ODrkuJtoYQodxZOqjjVPL50CLgroXuOc9vKSYOTSEeyiQqrvEcQ', '2018-06-27 18:06:16', '2018-06-27 18:06:27', 0, 0, 1, 0, NULL, 0),
(140, 'Areej', '', '0548845144', '', '$2y$10$16jku1rVVIwHLMtn6o0KVuFru3maFc2KMdPga2ZeYGLL7ApaWk6RW', '', '', '1810', '4154', '', '', '', 0, 0, 1, NULL, 'zODaTo85yYKXWTIouGE2jotNJiZp6dTehZ4vSku2l5oLubEaRf6iZM6dPV9K', '2018-07-01 15:07:33', '2018-07-01 15:07:52', 0, 0, 1, 0, NULL, 0),
(141, 'Tahani', '', '0533589578', '', '$2y$10$19GKs/3iNI0R//xYX/DYr.MvRSmxavl7UMhjpw/QFUpQ1W1SXNSim', '', '', '8917', '9219', '', '', '', 4, 0, 1, NULL, 'nb3VU8ceihTk0HmrfxjL8IYBYzduOFNBBFNyjGPKgR7voz1iEErTiB3iVutC', '2018-07-01 15:12:35', '2018-07-01 21:49:42', 0, 0, 1, 0, NULL, 0),
(142, 'Saned', '', '0595838528', '', '$2y$10$etJxu0XWvjqcbNsqiBMbkuG5IS9Z5.15lLtID4Lm8bdvKnkv6P8tC', '', 'male', '5283', '6064', '', '', '', 0, 1, 0, NULL, '4CpAVUvIwZzKWNGpcCyiNSlOtGImnCZsANOVS8gsvyIL5Omh3bnTp2V6bVqs', '2018-07-03 14:51:33', '2018-07-03 14:51:33', 0, 0, 1, 0, NULL, 0),
(143, 'Tahani', '', '0503138149', '', '$2y$10$znvRJvSTTJHnxJipt3iou.9WrDwnTqVfZQ7OW98a47g4.d3exiEZy', '', '', '6315', '1935', '', '', '', 0, 0, 1, NULL, 'R5SSawIEBtjTnrjKnM0uitHwkO5vcO045exd9u3njBds4a8xMh95LiqNWmKm', '2018-07-04 00:22:54', '2018-07-04 00:23:19', 0, 0, 1, 0, NULL, 0),
(144, 'Mohamed', '', '0512345679', '', '$2y$10$B2Z8GOAXiFhz8DK3ZR9WgefiQ5RhE832Rngk.8WTEKpqg8V8AS/sS', '', '', '5088', '3024', '', '', '', 0, 0, 1, NULL, 'HI19UdH6culvCTFJJ6m4EceFOWNfA3xSCBlkjTGfP3CSTCtdZxXU0BbiOjA3', '2018-07-09 07:31:59', '2018-07-09 07:34:05', 0, 0, 1, 0, NULL, 0),
(145, 'Gogo', '', '0512345697', 'n@n.com', '$2y$10$fEMbPh9RquVOF.bsdFfoC.lBLU1d19OwEsi3g2nwrj/uu/FoDytna', '', 'male', '6134', '6554', '', '', '', 2, 0, 1, NULL, 'MEVaAbe64Mj00UHNP4W9xaIHfMW50Q4cZZU78lfxeZkEn5w7xvgvUsLgxkqY', '2018-07-09 08:21:46', '2018-07-09 08:33:05', 0, 0, 1, 1, '', 1),
(146, 'Beauty center', '', '0510000055', 'bb@nn.com', '$2y$10$/A6hb3yxKhPHhUMOx9yKlOpLwcs9/8u//EVVQARnBTkKTN1/lLY3.', '', 'male', '4577', '5477', '', '', '', 0, 0, 0, NULL, 'CqPdMo55X5bTOvXm0RQH1yrVRlmOwDVc2xRhXQmQFGHern9zEr4xR5cgraUV', '2018-08-02 10:40:42', '2018-08-02 14:27:46', 0, 0, 1, 1, '', 1),
(147, 'Gghh', '', '0510000555', '', '$2y$10$SFq.H8oNrwzr7qk9LsYPPOHk7LGngPqegH9hxnTTs1SDJkEpxCGne', '', 'male', '5527', '6308', '', '', '', 0, 0, 0, NULL, 'uXoKhuqpwsi7qXupTsny5t7uaFy8LUDiYbksl8F82nDhAW7XG6IYuiLtrAyP', '2018-08-06 12:03:05', '2018-08-06 12:03:05', 0, 0, 1, 0, NULL, 0),
(148, 'Dyxgfufu', '', '0510000888', '', '$2y$10$hXzfMhzed0Fvw4uTtyEAH.gwAwAa86mpQ71gcT1wv/SpwJUCIQSD.', '', 'male', '6772', '1255', '', '', '', 0, 1, 0, NULL, 'GdB0JdrPw5JBYWcccIQ5xmXH8rdQFifgOf27xhR3QaewFNARzmjDkJaXdDmV', '2018-08-06 13:21:14', '2018-08-06 13:21:14', 0, 0, 1, 0, NULL, 0),
(151, 'Mosalah', '', '05246810121', '', '$2y$10$K3/RpOLuNnz43DY53WP9HuOMdAqcuwTi5HrA.H9uFrdJQrhwW4la2', '', 'male', '5246', '2022', '', '', '', 0, 1, 0, NULL, 'RVvoJTT0PIz8Jhz02iNjTQwXFbEYhrDb83m6Gh7rhB4N9LK8mchWbjGEZEcT', '2018-08-30 11:41:43', '2018-08-30 11:41:43', 0, 0, 1, 0, NULL, 0),
(152, 'Mosalah', '', '05369258147', '', '$2y$10$4WCXqYqPQhQcpkMUt9OcOOB2FJWiZ0JW8LYYLX3bm8sHfUTGIFR6m', '', 'male', '7634', '3612', '', '', '', 0, 1, 0, NULL, 'kUnda7XkA6swskL9qPp0uU0cZP9KOxbkKilitV9NzSNmZjHEm2Xggag3nwqF', '2018-08-30 11:42:51', '2018-08-30 11:42:51', 0, 0, 1, 0, NULL, 0),
(153, 'Mosalah', '', '05987654321', '', '$2y$10$HY3JK8ZvMijWmJKzll81.Owp.ZWfWH2R7kN9HIx0Z1RSOuo6p.QtK', '', 'male', '4357', '4731', '', '', '', 0, 1, 0, NULL, 'qGl20dnJSyD6psRfa8cUK60W2JCuJBfLhafhOIMpBDkVjWxv0uCLJ6nkO4UE', '2018-08-30 11:43:50', '2018-08-30 11:43:50', 0, 0, 1, 0, NULL, 0),
(154, 'Mosalah', '', '0514725836', '', '$2y$10$1FZNbUjzq5mSxFAr2dYQeeazeXjSxEndLcVNnTMfQh.YxsjPrblUe', '', '', '4540', '3309', '', '', '', 0, 1, 1, NULL, 'eEfxs0JukJRQLfp5hDyJJMJxR3Piasf73h8h6qa9G45gI2TMjxdHrjlGOPdC', '2018-08-30 11:46:20', '2018-08-30 11:46:49', 0, 0, 1, 0, NULL, 0),
(155, 'Hair style center', '', '0511111115', 'm@m.com', '$2y$10$KEoMQ1kJR0fpd0Q7zX.dKeygYinaEibXdc6Twml2zXXSA99PPTKjS', '', 'male', '8174', '6640', '', '', '', 0, 0, 0, NULL, 'o6ZoFVD0DFRyJfMVbQ2wMJMmnzCrsrKFK9Vj6AJNotd3qugpU8IUuPfdlINI', '2018-09-01 22:08:31', '2018-09-01 22:08:31', 0, 0, 1, 1, NULL, 0),
(156, 'Ahmed', '', '0511115555', '', '$2y$10$CJyBxlspABEZM42z6evb3Oa55iwtvj/MH6KSZ0Ghc8EIVtmVEtBua', '', 'male', '8694', '4218', '', '', '', 0, 0, 0, NULL, 'eF4JMzDHfVwV2dP9evM1HSt2o4E5F2nItFUnKjPWX2nfu94DkwuRgn4se4La', '2018-09-01 22:13:24', '2018-09-01 22:13:24', 0, 0, 1, 0, NULL, 0),
(157, 'Hair style centre', '', '0511112222', 'f@f.com', '$2y$10$M8sasCsXicXvo4o0huN9Lujh5VeWlm0vMz.UYann8pKHMczuRomPS', '', 'male', '3114', '9377', '', '', '', 0, 0, 0, NULL, 'uilX8VSqUGH5Z5nFCtck0mfn9dzYPpVfKMNGSE3zSwwc6Vc8qF7vk5KPOHJl', '2018-09-02 09:01:09', '2018-09-02 09:01:09', 0, 0, 1, 1, NULL, 0),
(158, 'Enas', '', '0511116666', '', '$2y$10$ZN7aY5lWlUOOXVIcSgXeXuK0xzhuACpUmp/u3r0VjWsiTlaRgQEpi', '', 'male', '4778', '9097', '', '', '', 0, 1, 1, NULL, 'P8hNY5M6FnDIFAac4dRXHnHsq2T1BiUDMsYNLTIw9G4pXAKHpHHnqXee5sqZ', '2018-09-02 09:02:41', '2018-09-02 09:03:15', 0, 0, 1, 0, NULL, 0),
(159, 'Tester', '', '0524681013', '', '$2y$10$GGw8nnQJVcmoS5ia8pYa4ODfI2n98wWtoP.fqJL6QuD8js.nTIHnS', '', 'male', '9935', '8585', '', '', '', 0, 0, 0, NULL, 'D9NqHfF7Jn3xAWTkoJXwZVws5tUqPmJu8T3DVUuT4JuCb7KvXRovZsm3j2aB', '2018-09-02 13:04:10', '2018-09-02 13:04:10', 0, 0, 1, 0, NULL, 0),
(160, 'Tester', '', '0524681014', '', '$2y$10$/Ow0Vq1HoKf0eTfASl1Zr.QHPyDk6yuLH3GImenJNU9CsGp3.HcUC', '', 'male', '4938', '9745', '', '', '', 0, 0, 1, NULL, 'e31uIFGzZM5L38Lf3DZ4WinxbKgw6Faz2T12p41Jim6XBRN6TvoecFC71bPO', '2018-09-02 13:05:19', '2018-09-02 13:05:37', 0, 0, 1, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_discounts`
--

CREATE TABLE `user_discounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `registered_users_no` int(11) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `max_orders` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `is_reset` tinyint(4) NOT NULL DEFAULT '0',
  `is_used` int(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_discounts`
--

INSERT INTO `user_discounts` (`id`, `user_id`, `created_by`, `registered_users_no`, `discount`, `max_orders`, `from_date`, `to_date`, `is_reset`, `is_used`, `created_at`, `updated_at`) VALUES
(10, 2, 1, 2, '50', 2, '2018-03-20', '2018-03-27', 0, 0, '2018-03-19 11:41:04', '2018-03-19 11:41:04'),
(25, 2, 1, 1, '100', 1, '2018-03-28', '2018-03-29', 0, 0, '2018-03-20 08:24:39', '2018-03-20 08:24:39'),
(26, 2, 1, 0, '22', 2, '2018-03-29', '2018-03-30', 0, 0, '2018-03-20 08:25:20', '2018-03-20 08:25:20'),
(27, 2, 1, 0, '22', 1, '2018-04-04', '2018-04-18', 0, 1, '2018-04-03 12:27:01', '2018-04-03 09:27:01'),
(28, 1, 1, 0, '22', 2, '2018-04-03', '2018-04-12', 0, 0, '2018-04-03 12:24:41', '2018-03-21 11:30:25'),
(29, 1, 1, 0, '10', 2, '2018-04-24', '2018-04-25', 0, 0, '2018-04-23 09:40:49', '2018-04-23 09:40:49'),
(30, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 08:43:10', '2018-05-06 08:43:10'),
(31, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 08:43:18', '2018-05-06 08:43:18'),
(32, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 08:43:21', '2018-05-06 08:43:21'),
(33, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 08:43:21', '2018-05-06 08:43:21'),
(34, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 08:43:21', '2018-05-06 08:43:21'),
(35, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 08:43:21', '2018-05-06 08:43:21'),
(36, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 08:43:21', '2018-05-06 08:43:21'),
(37, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 08:43:21', '2018-05-06 08:43:21'),
(38, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:43:31', '2018-05-06 08:43:31'),
(39, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:44:09', '2018-05-06 08:44:09'),
(40, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:45:12', '2018-05-06 08:45:12'),
(41, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:46:22', '2018-05-06 08:46:22'),
(42, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:46:26', '2018-05-06 08:46:26'),
(43, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:46:33', '2018-05-06 08:46:33'),
(44, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:46:39', '2018-05-06 08:46:39'),
(45, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:47:12', '2018-05-06 08:47:12'),
(46, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:21', '2018-05-06 08:58:21'),
(47, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:38', '2018-05-06 08:58:38'),
(48, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:41', '2018-05-06 08:58:41'),
(49, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:42', '2018-05-06 08:58:42'),
(50, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:42', '2018-05-06 08:58:42'),
(51, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:42', '2018-05-06 08:58:42'),
(52, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:42', '2018-05-06 08:58:42'),
(53, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:42', '2018-05-06 08:58:42'),
(54, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:42', '2018-05-06 08:58:42'),
(55, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:43', '2018-05-06 08:58:43'),
(56, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:43', '2018-05-06 08:58:43'),
(57, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:43', '2018-05-06 08:58:43'),
(58, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:44', '2018-05-06 08:58:44'),
(59, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:44', '2018-05-06 08:58:44'),
(60, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:45', '2018-05-06 08:58:45'),
(61, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:45', '2018-05-06 08:58:45'),
(62, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:45', '2018-05-06 08:58:45'),
(63, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:45', '2018-05-06 08:58:45'),
(64, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:45', '2018-05-06 08:58:45'),
(65, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:45', '2018-05-06 08:58:45'),
(66, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:46', '2018-05-06 08:58:46'),
(67, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:46', '2018-05-06 08:58:46'),
(68, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:46', '2018-05-06 08:58:46'),
(69, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:46', '2018-05-06 08:58:46'),
(70, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:47', '2018-05-06 08:58:47'),
(71, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:47', '2018-05-06 08:58:47'),
(72, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:48', '2018-05-06 08:58:48'),
(73, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:48', '2018-05-06 08:58:48'),
(74, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:58:48', '2018-05-06 08:58:48'),
(75, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:03', '2018-05-06 08:59:03'),
(76, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:04', '2018-05-06 08:59:04'),
(77, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:05', '2018-05-06 08:59:05'),
(78, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:05', '2018-05-06 08:59:05'),
(79, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:06', '2018-05-06 08:59:06'),
(80, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:06', '2018-05-06 08:59:06'),
(81, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:06', '2018-05-06 08:59:06'),
(82, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:06', '2018-05-06 08:59:06'),
(83, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:06', '2018-05-06 08:59:06'),
(84, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:06', '2018-05-06 08:59:06'),
(85, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:07', '2018-05-06 08:59:07'),
(86, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:07', '2018-05-06 08:59:07'),
(87, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 08:59:07', '2018-05-06 08:59:07'),
(88, 82, 1, 0, '70', 1, '2018-05-07', '2018-05-15', 0, 0, '2018-05-06 09:02:51', '2018-05-06 09:02:51'),
(89, 80, 1, 0, '80', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 09:06:24', '2018-05-06 09:06:24'),
(90, 80, 1, 0, '80', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 09:07:21', '2018-05-06 09:07:21'),
(91, 80, 1, 0, '80', 1, '2018-05-07', '2018-05-14', 0, 0, '2018-05-06 09:08:12', '2018-05-06 09:08:12'),
(92, 9, 1, 0, '77', 4, '2018-05-07', '2018-05-20', 0, 0, '2018-05-06 09:44:36', '2018-05-06 09:44:36'),
(93, 82, 1, 0, '888', 66, '2018-05-16', '2018-05-23', 0, 0, '2018-05-09 09:27:52', '2018-05-09 09:27:52'),
(94, 79, 1, 0, '777', 8, '2018-05-15', '2018-05-23', 0, 0, '2018-05-09 09:30:40', '2018-05-09 09:30:40'),
(95, 82, 1, 0, '22', 8, '2018-05-09', '2018-05-16', 0, 0, '2018-05-09 09:34:36', '2018-05-09 09:34:36'),
(96, 82, 1, 0, '33', 55, '2018-05-09', '2018-05-16', 0, 0, '2018-05-09 09:36:05', '2018-05-09 09:36:05'),
(97, 82, 1, 0, '33', 55, '2018-05-09', '2018-05-16', 0, 0, '2018-05-09 09:36:10', '2018-05-09 09:36:10'),
(98, 82, 1, 0, '33', 55, '2018-05-09', '2018-05-16', 0, 0, '2018-05-09 09:36:21', '2018-05-09 09:36:21'),
(99, 82, 1, 0, '3', 33, '2018-05-09', '2018-05-16', 0, 0, '2018-05-09 09:37:46', '2018-05-09 09:37:46'),
(100, 82, 1, 0, '33', 2, '2018-05-16', '2018-05-23', 0, 0, '2018-05-09 09:38:42', '2018-05-09 09:38:42'),
(101, 82, 1, 0, '33', 2, '2018-05-16', '2018-05-23', 0, 0, '2018-05-09 09:40:24', '2018-05-09 09:40:24'),
(102, 82, 1, 0, '33', 2, '2018-05-16', '2018-05-23', 0, 0, '2018-05-09 09:44:00', '2018-05-09 09:44:00'),
(103, 82, 1, 0, '33', 2, '2018-05-16', '2018-05-23', 0, 0, '2018-05-09 09:47:29', '2018-05-09 09:47:29'),
(104, 82, 1, 0, '33', 2, '2018-05-16', '2018-05-23', 0, 0, '2018-05-09 09:48:21', '2018-05-09 09:48:21'),
(105, 82, 1, 0, '33', 2, '2018-05-16', '2018-05-23', 0, 0, '2018-05-09 09:49:05', '2018-05-09 09:49:05'),
(106, 1, 1, 0, '-5', -6, '2018-05-01', '2018-05-02', 0, 0, '2018-05-09 11:20:20', '2018-05-09 11:20:20'),
(107, 80, 1, 0, '77', 8, '2018-05-09', '2018-05-16', 0, 0, '2018-05-09 15:17:33', '2018-05-09 15:17:33'),
(108, 1, 1, 0, '5', 2, '2018-05-04', '2018-05-08', 0, 0, '2018-05-13 11:58:56', '2018-05-13 11:58:56'),
(109, 1, 1, 0, '-7', -13, '2018-04-29', '2018-05-01', 0, 0, '2018-05-13 12:01:22', '2018-05-13 12:01:22'),
(110, 1, 1, 0, '-1', -9, '2018-05-21', '2018-05-22', 0, 0, '2018-05-20 10:24:22', '2018-05-20 10:24:22'),
(111, 1, 1, 0, '-11', -45, '2018-05-15', '2018-05-23', 0, 0, '2018-05-20 10:25:52', '2018-05-20 10:25:52'),
(112, 35, 1, 0, '1', 1, '2018-05-17', '2018-05-31', 0, 0, '2018-05-24 08:11:55', '2018-05-24 08:11:55'),
(113, 1, 1, 1, '5', 1, '2018-05-01', '2018-05-03', 0, 0, '2018-06-27 10:33:24', '2018-05-24 08:26:59'),
(114, 1, 1, 1, '20', 2, '2018-05-03', '2018-05-05', 0, 0, '2018-06-27 10:33:27', '2018-05-27 11:28:01'),
(115, 92, 1, 2, '20', 1, '2018-05-31', '2018-06-13', 0, 0, '2018-05-29 07:43:30', '2018-05-29 07:43:30'),
(116, 92, 1, 0, '20', 1, '2018-05-31', '2018-06-13', 0, 1, '2018-05-30 10:41:07', '2018-05-30 10:41:07'),
(117, 105, 1, 0, '50', 1, '2018-05-31', '2018-06-06', 0, 0, '2018-05-30 09:51:31', '2018-05-30 09:51:31'),
(118, 105, 1, 0, '50', 1, '2018-05-31', '2018-06-06', 0, 1, '2018-05-30 10:35:42', '2018-05-30 10:35:42'),
(119, 105, 1, 0, '50', 1, '2018-05-31', '2018-06-06', 0, 1, '2018-05-30 10:38:49', '2018-05-30 10:38:49'),
(120, 105, 1, 0, '50', 1, '2018-05-31', '2018-06-06', 0, 1, '2018-05-30 10:48:38', '2018-05-30 10:48:38'),
(121, 107, 1, 0, '50', 1, '2018-06-01', '2018-06-02', 0, 1, '2018-05-31 13:15:01', '2018-05-31 13:15:01'),
(122, 107, 1, 0, '50', 1, '2018-06-10', '2018-06-17', 0, 1, '2018-05-31 13:33:42', '2018-05-31 13:33:42'),
(123, 107, 1, 0, '50', 1, '2018-06-10', '2018-06-17', 0, 1, '2018-05-31 13:45:37', '2018-05-31 13:45:37'),
(124, 107, 1, 0, '50', 1, '2018-06-10', '2018-06-17', 0, 0, '2018-05-31 13:44:46', '2018-05-31 13:44:46'),
(125, 106, 1, 0, '50', 1, '2018-06-01', '2018-06-04', 0, 0, '2018-06-05 08:03:44', '2018-06-05 08:03:44'),
(126, 107, 1, 0, '20', 1, '2018-06-01', '2018-06-07', 0, 0, '2018-06-05 08:07:07', '2018-06-05 08:07:07'),
(127, 129, 1, 0, '10', 10, '2018-06-12', '2019-01-01', 0, 1, '2018-06-12 09:31:33', '2018-06-12 09:31:33'),
(128, 107, 1, 1, '22', 2, '2018-06-13', '2018-06-14', 0, 0, '2018-06-13 07:05:59', '2018-06-13 07:05:59'),
(129, 129, 1, 0, '20', 2, '2018-06-28', '2018-06-29', 0, 0, '2018-06-27 07:39:54', '2018-06-27 07:39:54'),
(130, 107, 1, 1, '22', 2, '2018-06-28', '2018-06-29', 0, 0, '2018-06-27 08:59:37', '2018-06-27 08:59:37'),
(143, 1, 1, 8, '2', 2, '2018-06-28', '2018-06-29', 0, 0, '2018-06-27 14:10:43', '2018-06-27 14:10:43'),
(144, 1, 1, 8, '2', 2, '2018-06-28', '2018-06-29', 1, 0, '2018-06-27 14:11:35', '2018-06-27 14:11:35'),
(145, 1, 1, 0, '10', 1, '2018-06-28', '2018-06-30', 0, 0, '2018-06-27 18:04:01', '2018-06-27 18:04:01'),
(146, 129, 1, 1, '20', 1, '2018-06-28', '2018-06-30', 0, 0, '2018-06-27 18:07:34', '2018-06-27 18:07:34'),
(147, 129, 1, 1, '20', 1, '2018-06-28', '2018-06-30', 1, 0, '2018-06-27 18:07:43', '2018-06-27 18:07:43'),
(148, 1, 1, 2, '50', 5, '2018-06-28', '2018-06-29', 0, 0, '2018-06-28 09:20:10', '2018-06-28 09:20:10'),
(149, 1, 1, 2, '44', 4, '2018-06-29', '2018-07-01', 0, 0, '2018-06-28 09:20:35', '2018-06-28 09:20:35'),
(150, 1, 1, 3, '88', 7, '2018-06-29', '2018-07-02', 0, 0, '2018-06-28 09:22:22', '2018-06-28 09:22:22'),
(151, 1, 1, 3, '88', 7, '2018-06-29', '2018-07-02', 1, 0, '2018-06-28 09:22:51', '2018-06-28 09:22:51'),
(152, 1, 1, 3, '88', 7, '2018-06-29', '2018-07-02', 1, 0, '2018-06-28 09:23:21', '2018-06-28 09:23:21'),
(153, 1, 1, 3, '12', 22, '2018-06-29', '2018-07-02', 1, 0, '2018-06-28 09:24:10', '2018-06-28 09:24:10'),
(154, 1, 1, 3, '11', 2, '2018-06-29', '2018-06-29', 1, 0, '2018-06-28 09:32:48', '2018-06-28 09:32:48'),
(155, 129, 1, 0, '10', 1, '2018-06-29', '2018-06-30', 0, 0, '2018-06-28 14:58:57', '2018-06-28 14:58:57'),
(156, 22, 1, 2, '50', 3, '2018-07-26', '2018-07-28', 0, 2, '2018-07-26 09:28:44', '2018-07-26 09:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_invitations`
--

CREATE TABLE `user_invitations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `invited_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_invitations`
--

INSERT INTO `user_invitations` (`id`, `user_id`, `invited_by`, `created_at`, `updated_at`) VALUES
(29, 89, 82, '2018-05-20 08:14:58', '2018-05-20 08:14:58'),
(30, 96, 82, '2018-05-23 12:04:03', '2018-05-23 12:04:03'),
(31, 103, 92, '2018-05-29 07:22:15', '2018-05-29 07:22:15'),
(32, 104, 92, '2018-05-29 07:30:20', '2018-05-29 07:30:20'),
(33, 119, 107, '2018-06-06 12:35:33', '2018-06-06 12:35:33'),
(34, 109, 1, '2018-06-06 12:35:33', '2018-06-06 12:35:33'),
(35, 99, 1, '2018-06-06 12:35:33', '2018-06-06 12:35:33'),
(36, 76, 1, '2018-06-06 12:35:33', '2018-06-06 12:35:33'),
(37, 56, 1, '2018-06-06 12:35:33', '2018-06-06 12:35:33'),
(38, 34, 1, '2018-06-06 12:35:33', '2018-06-06 12:35:33'),
(39, 5, 1, '2018-06-06 12:35:33', '2018-06-06 12:35:33'),
(40, 94, 1, '2018-06-27 12:35:33', '2018-06-06 12:35:33'),
(41, 94, 1, '2018-06-27 12:35:33', '2018-06-28 12:35:33'),
(42, 139, 129, '2018-06-27 18:06:18', '2018-06-27 18:06:18'),
(43, 71, 1, '2018-06-27 12:35:33', '2018-06-28 12:35:33'),
(44, 71, 1, '2018-06-27 12:35:33', '2018-06-28 12:35:33'),
(45, 71, 1, '2018-06-27 15:35:33', '2018-06-28 16:35:33'),
(46, 142, 142, '2018-07-03 14:51:33', '2018-07-03 14:51:33'),
(47, 151, 127, '2018-08-30 11:41:44', '2018-08-30 11:41:44'),
(48, 152, 127, '2018-08-30 11:42:51', '2018-08-30 11:42:51'),
(49, 153, 127, '2018-08-30 11:43:51', '2018-08-30 11:43:51'),
(50, 154, 127, '2018-08-30 11:46:21', '2018-08-30 11:46:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abilities_unique_index` (`name`,`entity_id`,`entity_type`,`only_owned`);

--
-- Indexes for table `abuses`
--
ALTER TABLE `abuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD KEY `assigned_roles_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `centers_phone_unique` (`phone`),
  ADD KEY `centers_user_id_foreign` (`user_id`),
  ADD KEY `centers_city_id_foreign` (`city_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_created_by_foreign` (`created_by`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city_translations_city_id_locale_unique` (`city_id`,`locale`),
  ADD KEY `city_translations_locale_index` (`locale`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_id_index` (`commentable_id`),
  ADD KEY `comments_commentable_type_index` (`commentable_type`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_translations`
--
ALTER TABLE `company_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_work_days`
--
ALTER TABLE `company_work_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_work_days_company_id_foreign` (`company_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_created_by_foreign` (`created_by`),
  ADD KEY `districts_city_id_foreign` (`city_id`);

--
-- Indexes for table `district_translations`
--
ALTER TABLE `district_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `district_translations_district_id_locale_unique` (`district_id`,`locale`),
  ADD KEY `district_translations_locale_index` (`locale`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_user_id_foreign` (`user_id`),
  ADD KEY `favourites_company_id_foreign` (`company_id`) USING BTREE;

--
-- Indexes for table `financial_accounts`
--
ALTER TABLE `financial_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_levels`
--
ALTER TABLE `management_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `order_available_times`
--
ALTER TABLE `order_available_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_services`
--
ALTER TABLE `order_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD KEY `permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  ADD KEY `permissions_ability_id_index` (`ability_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rates_user_id_foreign` (`user_id`),
  ADD KEY `rates_company_id_foreign` (`company_id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_provider_id_foreign` (`provider_id`),
  ADD KEY `services_company_id_foreign` (`company_id`) USING BTREE;

--
-- Indexes for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_translations_service_id_locale_unique` (`service_id`,`locale`),
  ADD KEY `service_translations_locale_index` (`locale`);

--
-- Indexes for table `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_types_created_by_foreign` (`created_by`);

--
-- Indexes for table `service_type_translations`
--
ALTER TABLE `service_type_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_type_translations_service_type_id_locale_unique` (`service_type_id`,`locale`),
  ADD KEY `service_type_translations_locale_index` (`locale`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_discounts`
--
ALTER TABLE `user_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_invitations`
--
ALTER TABLE `user_invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_invitations_user_id_foreign` (`user_id`),
  ADD KEY `user_invitations_invited_by_foreign` (`invited_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `abuses`
--
ALTER TABLE `abuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `centers`
--
ALTER TABLE `centers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `company_translations`
--
ALTER TABLE `company_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `company_work_days`
--
ALTER TABLE `company_work_days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `district_translations`
--
ALTER TABLE `district_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `financial_accounts`
--
ALTER TABLE `financial_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_levels`
--
ALTER TABLE `management_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_available_times`
--
ALTER TABLE `order_available_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_services`
--
ALTER TABLE `order_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `service_translations`
--
ALTER TABLE `service_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_type_translations`
--
ALTER TABLE `service_type_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `user_discounts`
--
ALTER TABLE `user_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `user_invitations`
--
ALTER TABLE `user_invitations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abuses`
--
ALTER TABLE `abuses`
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `centers`
--
ALTER TABLE `centers`
  ADD CONSTRAINT `centers_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `centers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_work_days`
--
ALTER TABLE `company_work_days`
  ADD CONSTRAINT `company_work_days_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `districts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_center_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `rates_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_types`
--
ALTER TABLE `service_types`
  ADD CONSTRAINT `service_types_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_invitations`
--
ALTER TABLE `user_invitations`
  ADD CONSTRAINT `user_invitations_invited_by_foreign` FOREIGN KEY (`invited_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_invitations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
