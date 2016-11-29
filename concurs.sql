-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2016 at 10:09 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `concurs`
--

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `author_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` mediumtext,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `author_name`, `url`, `created_at`, `added_by`, `updated_at`) VALUES
(4, 'Malina Avasiloaie Malina Avasiloaie', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39'),
(5, 'Eula Miclaus1', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/DSC_07472_pp2.jpg', '2016-11-27 18:30:43', NULL, '2016-11-28 16:51:53'),
(6, 'Malina Avasiloaie2', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39'),
(7, 'Malina Avasiloaie3', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39'),
(8, 'Malina Avasiloaie4', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39'),
(9, 'Malina Avasiloaie5', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39'),
(10, 'Malina Avasiloaie6', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39'),
(11, 'Malina Avasiloaie8', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39'),
(12, 'Malina Avasiloaie9', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39'),
(13, 'Malina Avasiloaie10', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39'),
(14, 'Malina Avasiloaie11', 'http://www.mihaicosti.ro/portofoliu/wp-content/uploads/2013/11/malina6.jpg', '2016-11-27 18:26:39', NULL, '2016-11-27 18:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `app_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `flag` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbr` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `script` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `native` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `app_name`, `flag`, `abbr`, `script`, `native`, `active`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'english', NULL, 'en', 'Latn', 'English', 0, 0, NULL, NULL, NULL),
(2, 'Romanian', 'romanian', NULL, 'ro', 'Latn', 'română', 1, 1, NULL, NULL, NULL),
(3, 'French', 'french', '', 'fr', 'Latn', 'français', 0, 0, NULL, NULL, NULL),
(4, 'Italian', 'italian', '', 'it', 'Latn', 'italiano', 0, 0, NULL, NULL, NULL),
(5, 'Spanish', 'spanish', '', 'es', 'Latn', 'español', 0, 0, NULL, NULL, NULL),
(6, 'German', 'german', '', 'de', 'Latn', 'Deutsch', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2016_11_24_162636_create_social_accounts_table', 1),
(15, '2015_08_04_131614_create_settings_table', 2),
(16, '2016_05_25_121918_create_pages_table', 3),
(17, '2016_05_05_115641_create_menu_items_table', 4),
(18, '2015_09_07_190535_create_languages_table', 5),
(19, '2015_09_10_124414_alter_languages_table', 5),
(20, '2016_11_27_190824_create_permission_tables', 6),
(21, '2016_11_29_164856_create_sessions_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `extras` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `template`, `name`, `title`, `slug`, `content`, `extras`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'about_us', 'contact', 'Despre noi', 'contact', '<p>Acesta este contactul.</p>\r\n', NULL, '2016-11-27 14:34:13', '2016-11-27 14:34:13', NULL),
(2, 'services', 'Test', 'Test', 'test', '<p>Acesta este un test.</p>\r\n', '{"meta_title":null,"meta_description":null,"meta_keywords":null}', '2016-11-27 14:34:54', '2016-11-27 14:34:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mcosti097@gmail.com', 'c6632c5ec0031e3fb881c4d37cbe8c89fd52395af6fa767138f1330c2c30f945', '2016-11-27 17:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'edit entries', '2016-11-26 22:00:00', NULL),
(2, 'edit settings', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'editor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `search` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `user_id`, `search`, `ip`) VALUES
(1, NULL, 'test', '188.25.27.251'),
(2, 1, 'alt test', '188.25.27.251'),
(3, 0, 'allt test', '188.25.27.251'),
(4, NULL, 'aaa', '188.25.27.251'),
(5, NULL, 'test', '188.25.27.251'),
(6, NULL, 'aaa', '188.25.27.251'),
(7, NULL, 'aaa', '188.25.27.251'),
(8, NULL, 'aaa', '188.25.27.251'),
(9, NULL, 'aaa', '188.25.27.251'),
(10, NULL, 'eula', '188.25.27.251'),
(11, 1, 'test', '188.25.27.251'),
(12, 1, 'test', '188.25.27.251'),
(13, 1, 'test', '188.25.27.251'),
(14, 1, 'test', '188.25.27.251'),
(15, 1, 'test', '188.25.27.251'),
(16, 1, 'mali', '188.25.27.251'),
(17, 1, NULL, '188.25.27.251'),
(18, 1, NULL, '188.25.27.251'),
(19, 1, NULL, '188.25.27.251'),
(20, 1, 'test', '188.25.27.251'),
(21, 1, 'a', '188.25.27.251'),
(22, 1, 'a', '188.25.27.251'),
(23, 1, 'a', '188.25.27.251'),
(24, 1, 'a', '188.25.27.251'),
(25, 1, 'a', '188.25.27.251'),
(26, 1, 'a', '188.25.27.251'),
(27, 1, 'a', '188.25.27.251'),
(28, 1, 'a', '188.25.27.251'),
(29, 1, 'a', '188.25.27.251'),
(30, 1, 'Test', '188.25.27.251'),
(31, 1, 'test', '188.25.27.251'),
(32, 1, 'select', '188.25.27.251'),
(33, 1, 'select', '188.25.27.251'),
(34, 1, 'drop', '188.25.27.251'),
(35, 1, 'table', '188.25.27.251'),
(36, 1, '''', '188.25.27.251'),
(37, 1, '*', '188.25.27.251'),
(38, 1, 'unio', '188.25.27.251'),
(39, 1, 'test', '188.25.27.251'),
(40, 1, 'union', '188.25.27.251'),
(41, 1, 'unio', '188.25.27.251'),
(42, 1, 'junio', '188.25.27.251'),
(43, 1, '''', '188.25.27.251'),
(44, NULL, 'Malina', '66.249.93.210'),
(45, 1, 'test', '188.25.27.251'),
(46, 1, 'test', '188.25.27.251'),
(47, 1, 'test', '188.25.27.251'),
(48, 1, 'select', '188.25.27.251'),
(49, 1, 'eula select', '188.25.27.251'),
(50, 1, 'sel', '188.25.27.251'),
(51, 1, 'eulaselect', '188.25.27.251'),
(52, 1, 'sel', '188.25.27.251'),
(53, 1, 'dro', '188.25.27.251'),
(54, 1, 'table', '188.25.27.251'),
(55, 1, 'dro', '188.25.27.251'),
(56, 1, 'dro', '188.25.27.251'),
(57, 1, '''', '188.25.27.251'),
(58, 1, '*', '188.25.27.251'),
(59, 1, 'eula', '188.25.27.251'),
(60, NULL, '.', '5.13.31.211'),
(61, NULL, ',', '5.13.31.211'),
(62, 1, 'test', '188.25.27.251'),
(63, 1, 'eul', '188.25.27.251'),
(64, 1, 'testselect', '188.25.27.251'),
(65, 1, 'test''', '188.25.27.251'),
(66, NULL, '%C8%9B', '5.13.31.211'),
(67, 1, 'test', '188.25.27.251'),
(68, 1, 'sel', '188.25.27.251'),
(69, 1, 'selec', '188.25.27.251'),
(70, 1, 'testselect', '188.25.27.251'),
(71, 1, 'test', '188.25.27.251'),
(72, 1, 'test''', '188.25.27.251'),
(73, 1, 'test', '188.25.27.251'),
(74, 1, 'test''', '188.25.27.251'),
(75, 1, 'ț', '188.25.27.251'),
(76, 1, '?', '188.25.27.251'),
(77, 1, '?', '188.25.27.251'),
(78, NULL, '?', '5.13.31.211'),
(79, 1, 'acesta este un test''', '188.25.27.251'),
(80, NULL, '?', '5.13.31.211'),
(81, 1, 'îățâ', '188.25.27.251'),
(82, 1, 'eula', '188.25.27.251'),
(83, NULL, 'îățâ', '5.13.31.211'),
(84, NULL, 'ă.,ă', '5.13.31.211'),
(85, NULL, 'îățâ', '5.13.31.211'),
(86, NULL, 'ĂĂÎÂȚ', '5.13.31.211'),
(87, NULL, ',:!ăîț”„%$#%^&*', '5.13.31.211'),
(88, NULL, 'îățââ', '5.13.31.211'),
(89, 1, 'ț', '188.25.27.251'),
(90, NULL, ' ', '5.13.31.211'),
(91, NULL, '╙', '5.13.31.211'),
(92, NULL, '{Φ¢îăBj╟”țâ', '5.13.31.211'),
(93, NULL, '''', '5.13.31.211'),
(94, NULL, '*/', '5.13.31.211'),
(95, NULL, '/*/!~ țîâ', '5.13.31.211'),
(96, NULL, '/*ț/!~ țîâ', '5.13.31.211'),
(97, NULL, '/*ț''/!~ țîâ', '5.13.31.211'),
(98, NULL, ' ', '5.13.31.211'),
(99, NULL, '|¢', '5.13.31.211'),
(100, NULL, '¢', '5.13.31.211'),
(101, NULL, 'îțâțîțâ', '5.13.31.211'),
(102, 1, ''';''', '188.25.27.251');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `name`, `description`, `value`, `field`, `active`, `created_at`, `updated_at`) VALUES
(1, 'contact_email', 'Contact form email address', 'The email address that all emails from the contact form will go to.', 'admin@updivision.com', '{"name":"value","label":"Value","type":"email"}', 1, NULL, NULL),
(2, 'contact_cc', 'Contact form CC field', 'Email adresses separated by comma, to be included as CC in the email sent by the contact form.', '', '{"name":"value","label":"Value","type":"email"}', 1, NULL, NULL),
(3, 'contact_bcc', 'Contact form BCC field', 'Email adresses separated by comma, to be included as BCC in the email sent by the contact form.', '', '{"name":"value","label":"Value","type":"email"}', 1, NULL, NULL),
(4, 'motto', 'Motto', 'Website motto', 'this is the value', '{"name":"value","label":"Value", "title":"Motto value" ,"type":"textarea"}', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_accounts`
--

INSERT INTO `social_accounts` (`user_id`, `provider_user_id`, `provider`, `created_at`, `updated_at`) VALUES
(32, '10206611171757858', 'facebook', '2016-11-29 15:00:38', '2016-11-29 15:00:38'),
(33, '1184542301622199', 'facebook', '2016-11-29 15:03:55', '2016-11-29 15:03:55'),
(27, '1327912280575296', 'facebook', '2016-11-28 22:35:58', '2016-11-28 22:35:58'),
(26, '1335422063157566', 'facebook', '2016-11-28 21:23:44', '2016-11-28 21:23:44'),
(25, '1359752610736402', 'facebook', '2016-11-28 21:22:28', '2016-11-28 21:22:28'),
(28, '1541261049224308', 'facebook', '2016-11-29 09:36:32', '2016-11-29 09:36:32'),
(1, '1567107976648992', 'facebook', '2016-11-24 15:53:36', '2016-11-24 15:53:36'),
(31, '666558636845924', 'facebook', '2016-11-29 10:53:43', '2016-11-29 10:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mihai Costi', NULL, '$2y$10$msN7gNknmDrk/6538LNgTeXha4JOvu1XB.R9qEVCcBy4chPB2iXqW', 'gqVcCc7T7LS2uHGsl9B84ed2TmZU4NsGtTAZjxUnwZJ4YAWtyHrobj2Uibax', '2016-11-24 15:53:36', '2016-11-29 18:20:50'),
(2, 'Test', 'test@test.com', '$2y$10$p7N0f.Tj2DBhGnS4B0uzM.oIbL2knuHfTEV2v3fQAUjY/Rg2hdja.', 'Dv4MM74G2G9BeHqI0Jpbb27hkAHwuF5VAMsoUbHU57lB9mGiNLJNnhlrSmxr', '2016-11-27 17:43:11', '2016-11-27 18:13:39'),
(25, 'Marius Ilie', NULL, 'SocialUsers201620161111282823232222282810', 'hSe7wJIqY7gaWnapoiTfWAXGkw9U8Doi1qVGnXVioLSrFfiWq9eNBKCodpgg', '2016-11-28 21:22:28', '2016-11-28 21:22:28'),
(26, 'Ovidiu Măntoiu', 'ovi_bloo@yahoo.com', 'SocialUsers201620161111282823232323444411', '6hJnPrHAQU9OO6z2FGQqwtwAfQBbTyRX7Ywoxs0DYTUAIz3sK4pqOsDcw8mK', '2016-11-28 21:23:44', '2016-11-28 21:23:44'),
(27, 'Andrei Cojocaru', 'andymagistral@gmail.com', 'SocialUsers20162016111129290000353558587', 'wqIqjFI2sKDz8bOiquUBVYvbaHgozYV9h13ouUQyVq0jqw6JCPpxeSJIQpY3', '2016-11-28 22:35:58', '2016-11-28 22:35:58'),
(28, 'Laur', 'laurmale@gmail.com', 'SocialUsers20162016111129291111363632329', '41wGvd8Gup5DgMSL3t2M4w1ayvfHlW0lZqARxqGfJU1lsFmj48xvAOSAqAWN', '2016-11-29 09:36:32', '2016-11-29 09:41:27'),
(31, 'Alex Caraivan', 'alex.caraivan@gmail.com', 'SocialUsers20162016111129291212535343436', 'JCFoKHT416IamFWJSG3eAnk051yBA6FJHmaG6rFZWGrOi8rqnLCvgvGkzuac', '2016-11-29 10:53:43', '2016-11-29 10:55:12'),
(32, 'Bogdan Ciubotaru', 'bogdyboy4ever@gmail.com', 'SocialUsers201620161111292917170000383810', 'OtVqXdIdIJq4a6Bt1VHEgk7AsMr5CcrD5uJY0QVbESHTv13XEGoUNTyxEoX7', '2016-11-29 15:00:38', '2016-11-29 15:00:38'),
(33, 'Mihai Sergiu', 'sergiu96s@yahoo.com', 'SocialUsers20162016111129291717030355557', 'ix51PfVEcPcvPBnLvUEsnwhaYizUb2vbWMgg58mDjFPICp522IYCj3y8Xstp', '2016-11-29 15:03:55', '2016-11-29 15:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_has_roles`
--

INSERT INTO `user_has_roles` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `entry_id`, `user_id`, `updated_at`, `created_at`) VALUES
(1, 4, 33, '2016-11-29 17:04:04', '2016-11-29 17:04:04'),
(2, 5, 32, '2016-11-29 17:12:14', '2016-11-29 17:12:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD UNIQUE KEY `provider_user_id` (`provider_user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entries`
--
ALTER TABLE `entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
