-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2018 at 02:40 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clubhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(10) UNSIGNED NOT NULL,
  `achievement` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `achievement`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Test Achievement', 'long story', '2018-06-06 03:24:44', '2018-06-06 03:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `album` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `album`, `created_at`, `updated_at`) VALUES
(1, 'Sports', '2018-06-06 04:05:59', '2018-06-06 04:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `anniversaries`
--

CREATE TABLE `anniversaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `anniversary` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `anniversaries`
--

INSERT INTO `anniversaries` (`id`, `anniversary`, `created_at`, `updated_at`, `details`, `date`) VALUES
(2, 'Raising day', '2018-06-06 05:53:37', '2018-06-06 05:53:37', '26th', '2018-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `circles`
--

CREATE TABLE `circles` (
  `id` int(10) UNSIGNED NOT NULL,
  `circle` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 13),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'end_date', 'date', 'End Date', 0, 1, 1, 1, 1, 1, NULL, 2),
(25, 4, 'notice', 'text_area', 'Notice', 0, 1, 1, 1, 1, 1, NULL, 3),
(26, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(28, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(29, 5, 'achievement', 'text', 'Achievement', 1, 1, 1, 1, 1, 1, NULL, 2),
(30, 5, 'details', 'text_area', 'Details', 1, 1, 1, 1, 1, 1, NULL, 3),
(31, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(32, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(33, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(34, 6, 'folder', 'text', 'Folder', 1, 1, 1, 1, 1, 1, NULL, 2),
(35, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(36, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(37, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(38, 7, 'document', 'file', 'Document', 1, 1, 1, 1, 1, 1, NULL, 2),
(39, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(40, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(42, 6, 'folder_hasmany_document_relationship', 'relationship', 'documents', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Document\",\"table\":\"documents\",\"type\":\"hasMany\",\"column\":\"folder_id\",\"key\":\"id\",\"label\":\"document\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":null}', 5),
(43, 7, 'document_belongsto_folder_relationship', 'relationship', 'folders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Folder\",\"table\":\"folders\",\"type\":\"belongsTo\",\"column\":\"folder_id\",\"key\":\"id\",\"label\":\"folder\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(44, 7, 'folder_id', 'text', 'Folder Id', 1, 1, 1, 1, 1, 1, NULL, 5),
(45, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 8, 'event', 'text', 'Event', 1, 1, 1, 1, 1, 1, NULL, 2),
(47, 8, 'details', 'markdown_editor', 'Details', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 8, 'start', 'date', 'Start', 1, 1, 1, 1, 1, 1, NULL, 4),
(49, 8, 'end', 'date', 'End', 1, 1, 1, 1, 1, 1, NULL, 5),
(50, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(51, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(52, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(53, 9, 'album', 'text', 'Album', 1, 1, 1, 1, 1, 1, NULL, 2),
(54, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(55, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(56, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(57, 10, 'photo', 'image', 'Photo', 1, 1, 1, 1, 1, 1, NULL, 2),
(58, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(59, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(60, 10, 'album_id', 'select_dropdown', 'Album Id', 1, 1, 1, 1, 1, 1, NULL, 5),
(61, 9, 'album_hasmany_photo_relationship', 'relationship', 'photos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Photo\",\"table\":\"photos\",\"type\":\"hasMany\",\"column\":\"album_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":null}', 5),
(62, 10, 'photo_belongsto_album_relationship', 'relationship', 'albums', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Album\",\"table\":\"albums\",\"type\":\"belongsTo\",\"column\":\"album_id\",\"key\":\"id\",\"label\":\"album\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":null}', 6),
(63, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(64, 11, 'circle', 'text', 'Circle', 1, 1, 1, 1, 1, 1, NULL, 2),
(65, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(66, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(87, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(88, 17, 'anniversary', 'text', 'Anniversary', 1, 1, 1, 1, 1, 1, NULL, 2),
(89, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(90, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(91, 17, 'details', 'markdown_editor', 'Details', 1, 1, 1, 1, 1, 1, NULL, 5),
(92, 17, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, NULL, 6),
(95, 18, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(96, 18, 'profession', 'text', 'Profession', 1, 1, 1, 1, 1, 1, NULL, 2),
(97, 18, 'address', 'text_area', 'Address', 1, 1, 1, 1, 1, 1, NULL, 3),
(98, 18, 'dob', 'date', 'Dob', 1, 1, 1, 1, 1, 1, NULL, 4),
(99, 18, 'blood', 'select_dropdown', 'Blood', 1, 1, 1, 1, 1, 1, '{\"default\":\"--\",\"options\":{\"--\":\"----\",\"A+\":\"A+\",\"A-\":\"A-\",\"B+\":\"B+\",\"B-\":\"B-\",\"AB+\":\"AB+\",\"AB-\":\"AB-\",\"O+\":\"O+\",\"O-\":\"O-\"}}', 5),
(100, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 8),
(101, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(102, 18, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 7),
(103, 18, 'detail_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(104, 1, 'user_hasone_detail_relationship', 'relationship', 'details', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Detail\",\"table\":\"details\",\"type\":\"hasOne\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(105, 11, 'circle_belongstomany_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"user_circles\",\"pivot\":\"1\",\"taggable\":null}', 5),
(106, 1, 'user_belongstomany_circle_relationship', 'relationship', 'circles', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Circle\",\"table\":\"circles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"circle\",\"pivot_table\":\"user_circles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 15),
(107, 18, 'membership', 'select_dropdown', 'Membership', 0, 1, 1, 1, 1, 1, '{\"default\":\"General Member\",\"options\":{\"General Member\":\"General Member\",\"Life Member\":\"Life Member\"}}', 6),
(108, 19, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(109, 19, 'registration', 'text', 'Registration', 1, 1, 1, 1, 1, 1, NULL, 2),
(110, 19, 'event_id', 'text', 'Event Id', 1, 1, 1, 1, 1, 1, NULL, 3),
(111, 19, 'details', 'markdown_editor', 'Details', 1, 1, 1, 1, 1, 1, NULL, 4),
(112, 19, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"Open\":\"Open\",\"Closed\":\"Closed\"}}', 5),
(113, 19, 'photo', 'image', 'Photo', 1, 1, 1, 1, 1, 1, NULL, 6),
(114, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(115, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(116, 19, 'registration_belongsto_event_relationship', 'relationship', 'events', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Event\",\"table\":\"events\",\"type\":\"belongsTo\",\"column\":\"event_id\",\"key\":\"id\",\"label\":\"event\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":null}', 9),
(117, 20, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(118, 20, 'registration_id', 'select_dropdown', 'Registration Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(119, 20, 'meta', 'text', 'Meta', 1, 1, 1, 1, 1, 1, NULL, 3),
(120, 20, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, NULL, 4),
(121, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(122, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(123, 20, 'price_belongsto_registration_relationship', 'relationship', 'registrations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Registration\",\"table\":\"registrations\",\"type\":\"belongsTo\",\"column\":\"registration_id\",\"key\":\"id\",\"label\":\"registration\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(124, 19, 'registration_hasmany_price_relationship', 'relationship', 'prices', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Price\",\"table\":\"prices\",\"type\":\"hasMany\",\"column\":\"registration_id\",\"key\":\"id\",\"label\":\"price\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":null}', 10),
(125, 8, 'event_hasone_registration_relationship', 'relationship', 'registrations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Registration\",\"table\":\"registrations\",\"type\":\"hasOne\",\"column\":\"event_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(126, 21, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(127, 21, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(128, 21, 'price_id', 'text', 'Price Id', 1, 1, 1, 1, 1, 1, NULL, 3),
(129, 21, 'quantity', 'text', 'Quantity', 1, 1, 1, 1, 1, 1, NULL, 4),
(130, 21, 'user_price', 'text', 'User Price', 1, 1, 1, 1, 1, 1, NULL, 5),
(131, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(132, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(133, 21, 'statement_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(134, 21, 'statement_belongsto_price_relationship', 'relationship', 'prices', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Price\",\"table\":\"prices\",\"type\":\"belongsTo\",\"column\":\"price_id\",\"key\":\"id\",\"label\":\"meta\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(135, 20, 'price_hasmany_statement_relationship', 'relationship', 'statements', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Statement\",\"table\":\"statements\",\"type\":\"hasMany\",\"column\":\"price_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(136, 1, 'user_hasmany_statement_relationship', 'relationship', 'statements', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Statement\",\"table\":\"statements\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"achievements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 02:59:58', '2018-06-06 05:07:01'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(4, 'notices', 'notices', 'Notice', 'Notices', 'voyager-warning', 'App\\Notice', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 03:19:47', '2018-06-06 03:19:47'),
(5, 'achievements', 'achievements', 'Achievement', 'Achievements', 'voyager-trophy', 'App\\Achievement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 03:24:04', '2018-06-06 03:24:04'),
(6, 'folders', 'folders', 'Folder', 'Folders', 'voyager-folder', 'App\\Folder', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 03:28:33', '2018-06-06 03:28:33'),
(7, 'documents', 'documents', 'Document', 'Documents', 'voyager-documentation', 'App\\Document', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 03:32:21', '2018-06-06 03:32:21'),
(8, 'events', 'events', 'Event', 'Events', 'voyager-trees', 'App\\Event', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 03:53:55', '2018-06-06 03:53:55'),
(9, 'albums', 'albums', 'Album', 'Albums', 'voyager-photos', 'App\\Album', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 03:57:20', '2018-06-06 03:57:20'),
(10, 'photos', 'photos', 'Photo', 'Photos', 'voyager-photo', 'App\\Photo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 04:02:44', '2018-06-06 04:02:44'),
(11, 'circles', 'circles', 'Circle', 'Circles', 'voyager-people', 'App\\Circle', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 04:13:55', '2018-06-06 04:13:55'),
(17, 'anniversaries', 'anniversaries', 'Anniversary', 'Anniversaries', 'voyager-gift', 'App\\Anniversary', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 05:52:44', '2018-06-06 05:52:44'),
(18, 'details', 'details', 'Detail', 'Details', 'voyager-smile', 'App\\Detail', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-06 23:10:58', '2018-06-06 23:10:58'),
(19, 'registrations', 'registrations', 'Registration', 'Registrations', 'voyager-rocket', 'App\\Registration', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-09 01:13:23', '2018-06-09 01:13:23'),
(20, 'prices', 'prices', 'Price', 'Prices', 'voyager-dollar', 'App\\Price', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-09 01:21:02', '2018-06-09 01:21:02'),
(21, 'statements', 'statements', 'Statement', 'Statements', 'voyager-receipt', 'App\\Statement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-10 08:51:14', '2018-06-10 09:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(10) UNSIGNED NOT NULL,
  `profession` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `blood` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `membership` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `profession`, `address`, `dob`, `blood`, `created_at`, `updated_at`, `user_id`, `membership`) VALUES
(2, 'Software Engineer', 'Basila City, Block-B, Road-2, Mohammadpur, Dhaka-1207, Bangladesh', '1993-11-10', 'AB+', '2018-06-07 04:34:23', '2018-06-07 04:34:23', 1, 'Life Member');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `document` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `folder_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `document`, `created_at`, `updated_at`, `folder_id`) VALUES
(1, '[{\"download_link\":\"documents\\\\June2018\\\\tw63meptAkeenERUGQow.png\",\"original_name\":\"celltron-logo.png\"}]', '2018-06-06 03:44:45', '2018-06-06 03:44:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event`, `details`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, 'Test Event', '**This is a test event.**\r\n\r\n> helo\r\n\r\ngoogle[](http://)', '2018-06-07 00:00:00', '2018-06-29 00:00:00', '2018-06-06 03:55:18', '2018-06-06 03:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `folder`, `created_at`, `updated_at`) VALUES
(1, 'reunion', '2018-06-06 03:40:04', '2018-06-06 03:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-06-06 02:59:58', '2018-06-06 02:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-06-06 02:59:58', '2018-06-06 02:59:58', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-06-06 02:59:58', '2018-06-09 01:02:31', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-06-06 02:59:58', '2018-06-06 02:59:58', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-06-06 02:59:58', '2018-06-06 02:59:58', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2018-06-06 02:59:58', '2018-06-09 01:02:31', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-06-06 02:59:58', '2018-06-09 01:02:19', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-06-06 02:59:58', '2018-06-09 01:02:19', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-06-06 02:59:58', '2018-06-09 01:02:19', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-06-06 02:59:58', '2018-06-09 01:02:19', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-06-06 02:59:58', '2018-06-09 01:28:02', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-06-06 02:59:58', '2018-06-09 01:02:19', 'voyager.hooks', NULL),
(12, 1, 'Notices', '', '_self', 'voyager-warning', NULL, NULL, 7, '2018-06-06 03:19:47', '2018-06-09 01:03:42', 'voyager.notices.index', NULL),
(13, 1, 'Achievements', '', '_self', 'voyager-trophy', NULL, NULL, 8, '2018-06-06 03:24:04', '2018-06-09 01:03:42', 'voyager.achievements.index', NULL),
(14, 1, 'Folders', '', '_self', 'voyager-folder', NULL, 26, 1, '2018-06-06 03:28:33', '2018-06-09 01:06:32', 'voyager.folders.index', NULL),
(15, 1, 'Documents', '', '_self', 'voyager-documentation', NULL, 26, 2, '2018-06-06 03:32:21', '2018-06-09 01:06:32', 'voyager.documents.index', NULL),
(16, 1, 'Events', '', '_self', 'voyager-trees', NULL, NULL, 10, '2018-06-06 03:53:55', '2018-06-09 01:06:33', 'voyager.events.index', NULL),
(17, 1, 'Albums', '', '_self', 'voyager-photos', NULL, 29, 1, '2018-06-06 03:57:20', '2018-06-09 01:28:01', 'voyager.albums.index', NULL),
(18, 1, 'Photos', '', '_self', 'voyager-photo', NULL, 29, 2, '2018-06-06 04:02:44', '2018-06-09 01:28:05', 'voyager.photos.index', NULL),
(19, 1, 'Circles', '', '_self', 'voyager-people', NULL, NULL, 12, '2018-06-06 04:13:55', '2018-06-09 01:28:02', 'voyager.circles.index', NULL),
(24, 1, 'Anniversaries', '', '_self', 'voyager-gift', NULL, NULL, 13, '2018-06-06 05:52:44', '2018-06-09 01:28:02', 'voyager.anniversaries.index', NULL),
(25, 1, 'Details', '', '_self', 'voyager-smile', NULL, NULL, 4, '2018-06-06 23:10:58', '2018-06-09 01:02:31', 'voyager.details.index', NULL),
(26, 1, 'Folder', '', '_self', 'voyager-folder', '#000000', NULL, 9, '2018-06-09 01:06:19', '2018-06-09 01:07:51', NULL, ''),
(27, 1, 'Registrations', '', '_self', 'voyager-rocket', NULL, NULL, 15, '2018-06-09 01:13:23', '2018-06-09 01:28:02', 'voyager.registrations.index', NULL),
(28, 1, 'Prices', '', '_self', 'voyager-dollar', NULL, NULL, 16, '2018-06-09 01:21:02', '2018-06-09 01:28:02', 'voyager.prices.index', NULL),
(29, 1, 'Gallery', '', '_self', 'voyager-archive', '#000000', NULL, 11, '2018-06-09 01:27:51', '2018-06-09 01:27:59', NULL, ''),
(30, 1, 'Statements', '', '_self', 'voyager-receipt', NULL, NULL, 17, '2018-06-10 08:51:14', '2018-06-10 08:51:14', 'voyager.statements.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(26, '2016_06_01_000004_create_oauth_clients_table', 2),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `end_date` date DEFAULT NULL,
  `notice` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `end_date`, `notice`, `created_at`, `updated_at`) VALUES
(1, '2018-06-21', 'Test notice', '2018-06-06 03:20:32', '2018-06-06 03:20:32');

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
('774bb8ae512dd8f3d581192aee6914cd709f47d4b80e029ea1e174d3f78c1bee2e0ee2eb57413019', 1, 1, 'MyApp', '[]', 0, '2018-06-09 00:24:56', '2018-06-09 00:24:56', '2019-06-09 06:24:56'),
('d7865194b1c2b26eb9c5aaf3f71f2503699e846b190166537f008869906bf407cf03e069af3898bb', 1, 1, 'MyApp', '[]', 0, '2018-06-10 01:12:42', '2018-06-10 01:12:42', '2019-06-10 07:12:42');

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
(1, NULL, 'Laravel Personal Access Client', 'MV35Zxw2wOxUJWj5BLZZRRRqaV8o3J6vUMZ9WAer', 'http://localhost', 1, 0, 0, '2018-06-08 23:20:45', '2018-06-08 23:20:45'),
(2, NULL, 'Laravel Password Grant Client', 'DMWSxj8Jf2v9fMimiDxvmwAflNlQpSbBaQYfPSJM', 'http://localhost', 0, 1, 0, '2018-06-08 23:20:45', '2018-06-08 23:20:45');

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
(1, 1, '2018-06-08 23:20:45', '2018-06-08 23:20:45');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(2, 'browse_bread', NULL, '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(3, 'browse_database', NULL, '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(4, 'browse_media', NULL, '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(5, 'browse_compass', NULL, '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(6, 'browse_menus', 'menus', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(7, 'read_menus', 'menus', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(8, 'edit_menus', 'menus', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(9, 'add_menus', 'menus', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(10, 'delete_menus', 'menus', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(11, 'browse_roles', 'roles', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(12, 'read_roles', 'roles', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(13, 'edit_roles', 'roles', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(14, 'add_roles', 'roles', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(15, 'delete_roles', 'roles', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(16, 'browse_users', 'users', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(17, 'read_users', 'users', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(18, 'edit_users', 'users', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(19, 'add_users', 'users', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(20, 'delete_users', 'users', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(21, 'browse_settings', 'settings', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(22, 'read_settings', 'settings', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(23, 'edit_settings', 'settings', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(24, 'add_settings', 'settings', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(25, 'delete_settings', 'settings', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(26, 'browse_hooks', NULL, '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(27, 'browse_notices', 'notices', '2018-06-06 03:19:47', '2018-06-06 03:19:47'),
(28, 'read_notices', 'notices', '2018-06-06 03:19:47', '2018-06-06 03:19:47'),
(29, 'edit_notices', 'notices', '2018-06-06 03:19:47', '2018-06-06 03:19:47'),
(30, 'add_notices', 'notices', '2018-06-06 03:19:47', '2018-06-06 03:19:47'),
(31, 'delete_notices', 'notices', '2018-06-06 03:19:47', '2018-06-06 03:19:47'),
(32, 'browse_achievements', 'achievements', '2018-06-06 03:24:04', '2018-06-06 03:24:04'),
(33, 'read_achievements', 'achievements', '2018-06-06 03:24:04', '2018-06-06 03:24:04'),
(34, 'edit_achievements', 'achievements', '2018-06-06 03:24:04', '2018-06-06 03:24:04'),
(35, 'add_achievements', 'achievements', '2018-06-06 03:24:04', '2018-06-06 03:24:04'),
(36, 'delete_achievements', 'achievements', '2018-06-06 03:24:04', '2018-06-06 03:24:04'),
(37, 'browse_folders', 'folders', '2018-06-06 03:28:33', '2018-06-06 03:28:33'),
(38, 'read_folders', 'folders', '2018-06-06 03:28:33', '2018-06-06 03:28:33'),
(39, 'edit_folders', 'folders', '2018-06-06 03:28:33', '2018-06-06 03:28:33'),
(40, 'add_folders', 'folders', '2018-06-06 03:28:33', '2018-06-06 03:28:33'),
(41, 'delete_folders', 'folders', '2018-06-06 03:28:33', '2018-06-06 03:28:33'),
(42, 'browse_documents', 'documents', '2018-06-06 03:32:21', '2018-06-06 03:32:21'),
(43, 'read_documents', 'documents', '2018-06-06 03:32:21', '2018-06-06 03:32:21'),
(44, 'edit_documents', 'documents', '2018-06-06 03:32:21', '2018-06-06 03:32:21'),
(45, 'add_documents', 'documents', '2018-06-06 03:32:21', '2018-06-06 03:32:21'),
(46, 'delete_documents', 'documents', '2018-06-06 03:32:21', '2018-06-06 03:32:21'),
(47, 'browse_events', 'events', '2018-06-06 03:53:55', '2018-06-06 03:53:55'),
(48, 'read_events', 'events', '2018-06-06 03:53:55', '2018-06-06 03:53:55'),
(49, 'edit_events', 'events', '2018-06-06 03:53:55', '2018-06-06 03:53:55'),
(50, 'add_events', 'events', '2018-06-06 03:53:55', '2018-06-06 03:53:55'),
(51, 'delete_events', 'events', '2018-06-06 03:53:55', '2018-06-06 03:53:55'),
(52, 'browse_albums', 'albums', '2018-06-06 03:57:20', '2018-06-06 03:57:20'),
(53, 'read_albums', 'albums', '2018-06-06 03:57:20', '2018-06-06 03:57:20'),
(54, 'edit_albums', 'albums', '2018-06-06 03:57:20', '2018-06-06 03:57:20'),
(55, 'add_albums', 'albums', '2018-06-06 03:57:20', '2018-06-06 03:57:20'),
(56, 'delete_albums', 'albums', '2018-06-06 03:57:20', '2018-06-06 03:57:20'),
(57, 'browse_photos', 'photos', '2018-06-06 04:02:44', '2018-06-06 04:02:44'),
(58, 'read_photos', 'photos', '2018-06-06 04:02:44', '2018-06-06 04:02:44'),
(59, 'edit_photos', 'photos', '2018-06-06 04:02:44', '2018-06-06 04:02:44'),
(60, 'add_photos', 'photos', '2018-06-06 04:02:44', '2018-06-06 04:02:44'),
(61, 'delete_photos', 'photos', '2018-06-06 04:02:44', '2018-06-06 04:02:44'),
(62, 'browse_circles', 'circles', '2018-06-06 04:13:55', '2018-06-06 04:13:55'),
(63, 'read_circles', 'circles', '2018-06-06 04:13:55', '2018-06-06 04:13:55'),
(64, 'edit_circles', 'circles', '2018-06-06 04:13:55', '2018-06-06 04:13:55'),
(65, 'add_circles', 'circles', '2018-06-06 04:13:55', '2018-06-06 04:13:55'),
(66, 'delete_circles', 'circles', '2018-06-06 04:13:55', '2018-06-06 04:13:55'),
(67, 'browse_circle_user', 'circle_user', '2018-06-06 04:38:43', '2018-06-06 04:38:43'),
(68, 'read_circle_user', 'circle_user', '2018-06-06 04:38:43', '2018-06-06 04:38:43'),
(69, 'edit_circle_user', 'circle_user', '2018-06-06 04:38:43', '2018-06-06 04:38:43'),
(70, 'add_circle_user', 'circle_user', '2018-06-06 04:38:43', '2018-06-06 04:38:43'),
(71, 'delete_circle_user', 'circle_user', '2018-06-06 04:38:43', '2018-06-06 04:38:43'),
(77, 'browse_occasions', 'occasions', '2018-06-06 05:44:26', '2018-06-06 05:44:26'),
(78, 'read_occasions', 'occasions', '2018-06-06 05:44:26', '2018-06-06 05:44:26'),
(79, 'edit_occasions', 'occasions', '2018-06-06 05:44:26', '2018-06-06 05:44:26'),
(80, 'add_occasions', 'occasions', '2018-06-06 05:44:26', '2018-06-06 05:44:26'),
(81, 'delete_occasions', 'occasions', '2018-06-06 05:44:26', '2018-06-06 05:44:26'),
(87, 'browse_anniversaries', 'anniversaries', '2018-06-06 05:52:44', '2018-06-06 05:52:44'),
(88, 'read_anniversaries', 'anniversaries', '2018-06-06 05:52:44', '2018-06-06 05:52:44'),
(89, 'edit_anniversaries', 'anniversaries', '2018-06-06 05:52:44', '2018-06-06 05:52:44'),
(90, 'add_anniversaries', 'anniversaries', '2018-06-06 05:52:44', '2018-06-06 05:52:44'),
(91, 'delete_anniversaries', 'anniversaries', '2018-06-06 05:52:44', '2018-06-06 05:52:44'),
(92, 'browse_details', 'details', '2018-06-06 23:10:58', '2018-06-06 23:10:58'),
(93, 'read_details', 'details', '2018-06-06 23:10:58', '2018-06-06 23:10:58'),
(94, 'edit_details', 'details', '2018-06-06 23:10:58', '2018-06-06 23:10:58'),
(95, 'add_details', 'details', '2018-06-06 23:10:58', '2018-06-06 23:10:58'),
(96, 'delete_details', 'details', '2018-06-06 23:10:58', '2018-06-06 23:10:58'),
(97, 'browse_registrations', 'registrations', '2018-06-09 01:13:23', '2018-06-09 01:13:23'),
(98, 'read_registrations', 'registrations', '2018-06-09 01:13:23', '2018-06-09 01:13:23'),
(99, 'edit_registrations', 'registrations', '2018-06-09 01:13:23', '2018-06-09 01:13:23'),
(100, 'add_registrations', 'registrations', '2018-06-09 01:13:23', '2018-06-09 01:13:23'),
(101, 'delete_registrations', 'registrations', '2018-06-09 01:13:23', '2018-06-09 01:13:23'),
(102, 'browse_prices', 'prices', '2018-06-09 01:21:02', '2018-06-09 01:21:02'),
(103, 'read_prices', 'prices', '2018-06-09 01:21:02', '2018-06-09 01:21:02'),
(104, 'edit_prices', 'prices', '2018-06-09 01:21:02', '2018-06-09 01:21:02'),
(105, 'add_prices', 'prices', '2018-06-09 01:21:02', '2018-06-09 01:21:02'),
(106, 'delete_prices', 'prices', '2018-06-09 01:21:02', '2018-06-09 01:21:02'),
(107, 'browse_statements', 'statements', '2018-06-10 08:51:14', '2018-06-10 08:51:14'),
(108, 'read_statements', 'statements', '2018-06-10 08:51:14', '2018-06-10 08:51:14'),
(109, 'edit_statements', 'statements', '2018-06-10 08:51:14', '2018-06-10 08:51:14'),
(110, 'add_statements', 'statements', '2018-06-10 08:51:14', '2018-06-10 08:51:14'),
(111, 'delete_statements', 'statements', '2018-06-10 08:51:14', '2018-06-10 08:51:14'),
(112, 'browse_zz', 'zz', '2018-06-25 06:44:32', '2018-06-25 06:44:32'),
(113, 'read_zz', 'zz', '2018-06-25 06:44:32', '2018-06-25 06:44:32'),
(114, 'edit_zz', 'zz', '2018-06-25 06:44:32', '2018-06-25 06:44:32'),
(115, 'add_zz', 'zz', '2018-06-25 06:44:32', '2018-06-25 06:44:32'),
(116, 'delete_zz', 'zz', '2018-06-25 06:44:32', '2018-06-25 06:44:32'),
(117, 'browse_zzs', 'zzs', '2018-06-25 06:46:57', '2018-06-25 06:46:57'),
(118, 'read_zzs', 'zzs', '2018-06-25 06:46:57', '2018-06-25 06:46:57'),
(119, 'edit_zzs', 'zzs', '2018-06-25 06:46:57', '2018-06-25 06:46:57'),
(120, 'add_zzs', 'zzs', '2018-06-25 06:46:57', '2018-06-25 06:46:57'),
(121, 'delete_zzs', 'zzs', '2018-06-25 06:46:57', '2018-06-25 06:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(91, 1),
(91, 3),
(92, 1),
(92, 3),
(93, 1),
(93, 3),
(94, 1),
(94, 3),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `created_at`, `updated_at`, `album_id`) VALUES
(1, 'photos\\June2018\\IVDQY28GpdGAEM6EoSnc.png', '2018-06-06 04:06:14', '2018-06-06 04:06:14', 1),
(2, 'photos\\June2018\\yOmeYOW2gAdIUT4TNnEY.jpg', '2018-06-07 03:04:16', '2018-06-07 03:04:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(11) NOT NULL,
  `meta` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `registration_id`, `meta`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, '21-30 batch', '600', '2018-06-09 01:35:02', '2018-06-09 01:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `registration` varchar(750) COLLATE utf8_unicode_ci NOT NULL,
  `event_id` int(11) NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(750) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `registration`, `event_id`, `details`, `status`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'First time registration', 1, 'Demo details', 'Open', 'registrations\\June2018\\AzPw7GCjdIy633JRTq4g.png', '2018-06-09 01:34:22', '2018-06-09 01:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(2, 'user', 'Normal User', '2018-06-06 02:59:58', '2018-06-06 02:59:58'),
(3, 'manager', 'Manager', '2018-06-09 00:32:53', '2018-06-09 00:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `statements`
--

CREATE TABLE `statements` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_price` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Foysal', 'nibir2k12@gmail.com', 'users\\June2018\\Y9DH4meBVKwvo02p16BL.png', '$2y$10$sN1EuoHwHKeR9XIu2DWHzOlXpVCRxxvBdOCfgPrxqnM3Z1cjowYma', 'kV0vNQ244WiUP0Wp2pNttzSm8gOGitmPdp5Fymod558Jdj5durtKhCH5WDjt', '{\"locale\":\"en\"}', '2018-06-06 03:02:52', '2018-06-07 03:47:24'),
(2, 1, 'Nibir', 'nibir2k12@live.com', 'users\\June2018\\i86lFfqKMLBnCg5hKgUd.jpg', '$2y$10$YDZYz33IbLGTMt2nZtQCBuqPomzVtLiegnEvEUXTYD5D44u93A.Tm', NULL, NULL, '2018-06-06 05:12:48', '2018-06-06 05:12:48'),
(3, 3, 'Sheikh Mubin', 'mubin@gmail.com', 'users\\June2018\\TswreGFFVBc1VbOTHjgL.jpg', '$2y$10$3zvO1.75zpTHQx3QslUkaeoBJITUP9SsW2I1Y6kBoFEKE8BIHqt7a', NULL, NULL, '2018-06-09 00:34:02', '2018-06-09 00:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_circles`
--

CREATE TABLE `user_circles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `circle_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anniversaries`
--
ALTER TABLE `anniversaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circles`
--
ALTER TABLE `circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `statements`
--
ALTER TABLE `statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_circles`
--
ALTER TABLE `user_circles`
  ADD KEY `user_circles_user_id_index` (`user_id`),
  ADD KEY `user_circles_circle_id_index` (`circle_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anniversaries`
--
ALTER TABLE `anniversaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `circles`
--
ALTER TABLE `circles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `statements`
--
ALTER TABLE `statements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
