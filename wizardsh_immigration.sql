-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2018 at 12:55 PM
-- Server version: 5.6.41-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wizardsh_immigration`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_events`
--

CREATE TABLE `wp_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_failed_logins`
--

CREATE TABLE `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_global_meta`
--

CREATE TABLE `wp_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_login_activity`
--

CREATE TABLE `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aiowps_login_activity`
--

INSERT INTO `wp_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
(1, 1, 'wizardshao', '2018-11-27 00:18:26', '0000-00-00 00:00:00', '::1', '', ''),
(2, 1, 'wizardshao', '2018-11-27 23:28:20', '0000-00-00 00:00:00', '::1', '', ''),
(3, 1, 'wizardshao', '2018-11-28 23:44:46', '0000-00-00 00:00:00', '::1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_login_lockdown`
--

CREATE TABLE `wp_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_permanent_block`
--

CREATE TABLE `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-20 02:43:28', '2018-11-20 02:43:28', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://alex.shao.yoobee.net.nz/immigration', 'yes'),
(2, 'home', 'http://alex.shao.yoobee.net.nz/immigration', 'yes'),
(3, 'blogname', 'legaleagle', 'yes'),
(4, 'blogdescription', 'Marshall Bird &amp; Curtis', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'st.havac@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:2;s:37:\"post-types-order/post-types-order.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'law-master', 'yes'),
(41, 'stylesheet', 'law-master', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', 'V[-}$i>/b.BGT~uF9cCZ%Z=2qa~)%WRaPs=>>[:K,-S5 kUL?_LA-!2ZXO.y7`>t', 'no'),
(109, 'nonce_salt', 'HU(.i:2MNNb|:XRJ/bhG?xS1r23f`Rsc_Ru8sc2uOAnu>f[54 GY%SO+-SUx Qj_', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:8:{i:1543794208;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543795393;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543798993;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543798996;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543805008;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543805035;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543879217;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542681968;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1543780921;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543780923;s:7:\"checked\";a:1:{s:10:\"law-master\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auth_key', 'i@rNz`wlU-GythgM:3TZ:lDjKD)x.h1V~qw4*7ATd`!~:B3,514U 81S`ECYz}RY', 'no'),
(125, 'auth_salt', ')A^tiyggLH5G_,X/8L[/0fZ79G]n*q3~6HD;Oc>lzsHjU=P n^[qlm{-WF=m4:Sa', 'no'),
(126, 'logged_in_key', 'o[A(MdBbz`an3+UD[w9Em<Y{xO+4qj.]lQ_WGt `,|/^<bjg1G{[ov+.=OMxd:TK', 'no'),
(127, 'logged_in_salt', 'Al]dKnMBRjZ@]A-Jxj_fZiSd:+ZwD^Fl]!Qh5ty]i 9CTwZLF:WTRg))c=^+Hnfa', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', 'Law Master', 'yes'),
(147, 'theme_mods_star-law-master', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542766263;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(158, 'acf_version', '5.7.7', 'yes'),
(159, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:3:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";s:5:\"slide\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";s:0:\"\";s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(160, 'CPT_configured', 'TRUE', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(168, 'theme_mods_law-master', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"logo_setting\";s:0:\"\";s:21:\"heading_color_setting\";s:7:\"#22acd6\";}', 'yes'),
(181, 'category_children', 'a:0:{}', 'yes'),
(201, 'type_children', 'a:0:{}', 'yes'),
(225, 'aiowpsec_db_version', '1.9', 'yes'),
(226, 'aio_wp_security_configs', 'a:91:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:18:\"st.havac@gmail.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"dbp6gfwy4h3cv4v7llys\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"nexo2lwk54266lbfp0od\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:1:\"1\";s:26:\"aiowps_db_backup_frequency\";i:4;s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";i:2;s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:18:\"st.havac@gmail.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:18:\"st.havac@gmail.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_ip_retrieve_method\";s:1:\"0\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";s:23:\"aiowps_last_backup_time\";s:19:\"2018-11-26 23:27:02\";}', 'yes'),
(230, 'wpseo', 'a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"9.2.1\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:0;s:18:\"first_activated_on\";i:1543194196;}', 'yes'),
(231, 'wpseo_titles', 'a:102:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:1;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:10:\"legaleagle\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:1;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:13:\"title-section\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-section\";s:0:\"\";s:15:\"noindex-section\";b:1;s:16:\"showdate-section\";b:0;s:26:\"display-metabox-pt-section\";b:1;s:26:\"post_types-section-maintax\";i:0;s:16:\"title-usefullink\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-usefullink\";s:0:\"\";s:18:\"noindex-usefullink\";b:1;s:19:\"showdate-usefullink\";b:0;s:29:\"display-metabox-pt-usefullink\";b:1;s:29:\"post_types-usefullink-maintax\";i:0;s:12:\"title-lawyer\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-lawyer\";s:0:\"\";s:14:\"noindex-lawyer\";b:1;s:15:\"showdate-lawyer\";b:0;s:25:\"display-metabox-pt-lawyer\";b:1;s:25:\"post_types-lawyer-maintax\";i:0;s:17:\"title-testimonial\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:20:\"metadesc-testimonial\";s:0:\"\";s:19:\"noindex-testimonial\";b:1;s:20:\"showdate-testimonial\";b:0;s:30:\"display-metabox-pt-testimonial\";b:1;s:30:\"post_types-testimonial-maintax\";i:0;s:20:\"title-practicingarea\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:23:\"metadesc-practicingarea\";s:0:\"\";s:22:\"noindex-practicingarea\";b:1;s:23:\"showdate-practicingarea\";b:0;s:33:\"display-metabox-pt-practicingarea\";b:1;s:33:\"post_types-practicingarea-maintax\";i:0;s:14:\"title-tax-type\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-tax-type\";s:0:\"\";s:24:\"display-metabox-tax-type\";b:1;s:16:\"noindex-tax-type\";b:0;s:22:\"taxonomy-type-ptparent\";i:0;}', 'yes'),
(232, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(233, 'wpseo_flush_rewrite', '1', 'yes'),
(234, '_transient_timeout_wpseo_link_table_inaccessible', '1574730196', 'no'),
(235, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(236, '_transient_timeout_wpseo_meta_table_inaccessible', '1574730196', 'no'),
(237, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(242, 'wpseo-gsc-refresh_token', '1/wmpoMbBYPWrnMSv4hEf4KKHhYCF69NmDLp6ebKvHfD0', 'yes'),
(243, 'wpseo-gsc-access_token', 'a:5:{s:13:\"refresh_token\";s:45:\"1/wmpoMbBYPWrnMSv4hEf4KKHhYCF69NmDLp6ebKvHfD0\";s:12:\"access_token\";s:131:\"ya29.GlxhBqg_RkYNBC7RkzaMu4Xhc3KbnQxTwa-rs-uyLs698TBel91ZswGALrN-vm9okvxW1E14QJNwv5EqD26XTTKYJMAX2jZoEdoxK9yJmb586erRFEjXbVr52JCQjQ\";s:7:\"expires\";i:1543293648;s:10:\"expires_in\";i:3600;s:7:\"created\";i:1543290048;}', 'yes'),
(245, 'wpseo-gsc', 'a:1:{s:7:\"profile\";s:0:\"\";}', 'yes'),
(247, 'rewrite_rules', 'a:178:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:37:\"index.php?type=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?type=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:26:\"index.php?type=$matches[1]\";s:45:\"index.php/section/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/section/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/section/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/section/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/section/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/section/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/section/([^/]+)/embed/?$\";s:40:\"index.php?section=$matches[1]&embed=true\";s:38:\"index.php/section/([^/]+)/trackback/?$\";s:34:\"index.php?section=$matches[1]&tb=1\";s:46:\"index.php/section/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?section=$matches[1]&paged=$matches[2]\";s:53:\"index.php/section/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?section=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/section/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?section=$matches[1]&page=$matches[2]\";s:34:\"index.php/section/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/section/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/section/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/section/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/section/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/section/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"index.php/usefullink/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"index.php/usefullink/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"index.php/usefullink/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"index.php/usefullink/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"index.php/usefullink/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"index.php/usefullink/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"index.php/usefullink/([^/]+)/embed/?$\";s:43:\"index.php?usefullink=$matches[1]&embed=true\";s:41:\"index.php/usefullink/([^/]+)/trackback/?$\";s:37:\"index.php?usefullink=$matches[1]&tb=1\";s:49:\"index.php/usefullink/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?usefullink=$matches[1]&paged=$matches[2]\";s:56:\"index.php/usefullink/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?usefullink=$matches[1]&cpage=$matches[2]\";s:45:\"index.php/usefullink/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?usefullink=$matches[1]&page=$matches[2]\";s:37:\"index.php/usefullink/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/usefullink/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/usefullink/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/usefullink/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/usefullink/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/usefullink/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"index.php/lawyer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"index.php/lawyer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"index.php/lawyer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"index.php/lawyer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"index.php/lawyer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"index.php/lawyer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"index.php/lawyer/([^/]+)/embed/?$\";s:39:\"index.php?lawyer=$matches[1]&embed=true\";s:37:\"index.php/lawyer/([^/]+)/trackback/?$\";s:33:\"index.php?lawyer=$matches[1]&tb=1\";s:45:\"index.php/lawyer/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?lawyer=$matches[1]&paged=$matches[2]\";s:52:\"index.php/lawyer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?lawyer=$matches[1]&cpage=$matches[2]\";s:41:\"index.php/lawyer/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?lawyer=$matches[1]&page=$matches[2]\";s:33:\"index.php/lawyer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"index.php/lawyer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"index.php/lawyer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"index.php/lawyer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"index.php/lawyer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"index.php/lawyer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"index.php/testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:59:\"index.php/testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:79:\"index.php/testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:74:\"index.php/testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:55:\"index.php/testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"index.php/testimonial/([^/]+)/embed/?$\";s:44:\"index.php?testimonial=$matches[1]&embed=true\";s:42:\"index.php/testimonial/([^/]+)/trackback/?$\";s:38:\"index.php?testimonial=$matches[1]&tb=1\";s:50:\"index.php/testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&paged=$matches[2]\";s:57:\"index.php/testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?testimonial=$matches[1]&cpage=$matches[2]\";s:46:\"index.php/testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?testimonial=$matches[1]&page=$matches[2]\";s:38:\"index.php/testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"index.php/testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"index.php/testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"index.php/testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"index.php/testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:52:\"index.php/practicingarea/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"index.php/practicingarea/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"index.php/practicingarea/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"index.php/practicingarea/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"index.php/practicingarea/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"index.php/practicingarea/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"index.php/practicingarea/([^/]+)/embed/?$\";s:47:\"index.php?practicingarea=$matches[1]&embed=true\";s:45:\"index.php/practicingarea/([^/]+)/trackback/?$\";s:41:\"index.php?practicingarea=$matches[1]&tb=1\";s:53:\"index.php/practicingarea/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?practicingarea=$matches[1]&paged=$matches[2]\";s:60:\"index.php/practicingarea/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?practicingarea=$matches[1]&cpage=$matches[2]\";s:49:\"index.php/practicingarea/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?practicingarea=$matches[1]&page=$matches[2]\";s:41:\"index.php/practicingarea/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"index.php/practicingarea/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"index.php/practicingarea/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"index.php/practicingarea/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"index.php/practicingarea/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"index.php/practicingarea/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(297, '_site_transient_timeout_browser_cb17bca484772c4ed7af49f5b89d5c97', '1544056486', 'no'),
(298, '_site_transient_browser_cb17bca484772c4ed7af49f5b89d5c97', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(333, '_site_transient_timeout_theme_roots', '1543782722', 'no'),
(334, '_site_transient_theme_roots', 'a:1:{s:10:\"law-master\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(335, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1543780924;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:7:\"4.3.7.2\";s:9:\"hello.php\";s:3:\"1.7\";s:37:\"post-types-order/post-types-order.php\";s:7:\"1.9.3.9\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"9.2.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:7:\"4.3.7.2\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011\";s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:7:\"1.9.3.9\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/post-types-order.1.9.3.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"9.2.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.9.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://alex.shao.yoobee.net.nz/immigration/'),
(11, 5, '_menu_item_orphaned', '1542755712'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1542755712'),
(21, 2, '_wp_trash_meta_status', 'publish'),
(22, 2, '_wp_trash_meta_time', '1542756007'),
(23, 2, '_wp_desired_post_slug', 'sample-page'),
(24, 3, '_wp_trash_meta_status', 'draft'),
(25, 3, '_wp_trash_meta_time', '1542756008'),
(26, 3, '_wp_desired_post_slug', 'privacy-policy'),
(27, 9, '_edit_last', '1'),
(28, 9, '_edit_lock', '1543191604:1'),
(29, 11, '_edit_last', '1'),
(30, 11, '_edit_lock', '1542756090:1'),
(31, 11, '_wp_trash_meta_status', 'publish'),
(32, 11, '_wp_trash_meta_time', '1542756240'),
(33, 11, '_wp_desired_post_slug', 'about'),
(34, 15, '_edit_last', '1'),
(35, 15, '_edit_lock', '1542756317:1'),
(36, 17, '_edit_last', '1'),
(37, 17, '_edit_lock', '1542756329:1'),
(38, 19, '_menu_item_type', 'custom'),
(39, 19, '_menu_item_menu_item_parent', '0'),
(40, 19, '_menu_item_object_id', '19'),
(41, 19, '_menu_item_object', 'custom'),
(42, 19, '_menu_item_target', ''),
(43, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 19, '_menu_item_xfn', ''),
(45, 19, '_menu_item_url', 'http://alex.shao.yoobee.net.nz/immigration/'),
(46, 19, '_menu_item_orphaned', '1542756632'),
(47, 20, '_menu_item_type', 'post_type'),
(48, 20, '_menu_item_menu_item_parent', '0'),
(49, 20, '_menu_item_object_id', '15'),
(50, 20, '_menu_item_object', 'page'),
(51, 20, '_menu_item_target', ''),
(52, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 20, '_menu_item_xfn', ''),
(54, 20, '_menu_item_url', ''),
(55, 20, '_menu_item_orphaned', '1542756632'),
(56, 21, '_menu_item_type', 'post_type'),
(57, 21, '_menu_item_menu_item_parent', '0'),
(58, 21, '_menu_item_object_id', '9'),
(59, 21, '_menu_item_object', 'page'),
(60, 21, '_menu_item_target', ''),
(61, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 21, '_menu_item_xfn', ''),
(63, 21, '_menu_item_url', ''),
(64, 21, '_menu_item_orphaned', '1542756632'),
(65, 22, '_menu_item_type', 'post_type'),
(66, 22, '_menu_item_menu_item_parent', '0'),
(67, 22, '_menu_item_object_id', '17'),
(68, 22, '_menu_item_object', 'page'),
(69, 22, '_menu_item_target', ''),
(70, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 22, '_menu_item_xfn', ''),
(72, 22, '_menu_item_url', ''),
(73, 22, '_menu_item_orphaned', '1542756632'),
(101, 15, '_wp_trash_meta_status', 'publish'),
(102, 15, '_wp_trash_meta_time', '1542768589'),
(103, 15, '_wp_desired_post_slug', 'contact-us'),
(104, 17, '_wp_trash_meta_status', 'publish'),
(105, 17, '_wp_trash_meta_time', '1542768590'),
(106, 17, '_wp_desired_post_slug', 'useful-links'),
(107, 26, '_menu_item_type', 'post_type'),
(108, 26, '_menu_item_menu_item_parent', '0'),
(109, 26, '_menu_item_object_id', '9'),
(110, 26, '_menu_item_object', 'page'),
(111, 26, '_menu_item_target', ''),
(112, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 26, '_menu_item_xfn', ''),
(114, 26, '_menu_item_url', ''),
(116, 27, '_menu_item_type', 'custom'),
(117, 27, '_menu_item_menu_item_parent', '0'),
(118, 27, '_menu_item_object_id', '27'),
(119, 27, '_menu_item_object', 'custom'),
(120, 27, '_menu_item_target', ''),
(121, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 27, '_menu_item_xfn', ''),
(123, 27, '_menu_item_url', 'http://alex.shao.yoobee.net.nz/immigration/#about'),
(125, 28, '_menu_item_type', 'custom'),
(126, 28, '_menu_item_menu_item_parent', '0'),
(127, 28, '_menu_item_object_id', '28'),
(128, 28, '_menu_item_object', 'custom'),
(129, 28, '_menu_item_target', ''),
(130, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 28, '_menu_item_xfn', ''),
(132, 28, '_menu_item_url', 'http://alex.shao.yoobee.net.nz/immigration/#contact'),
(134, 30, '_edit_last', '1'),
(135, 30, '_edit_lock', '1542773447:1'),
(136, 31, '_edit_last', '1'),
(137, 31, '_edit_lock', '1542862127:1'),
(138, 33, '_edit_last', '1'),
(139, 33, '_edit_lock', '1542773477:1'),
(140, 34, '_edit_last', '1'),
(141, 34, '_edit_lock', '1542775358:1'),
(142, 9, 'sections', 'a:7:{i:0;s:2:\"33\";i:1;s:2:\"30\";i:2;s:2:\"39\";i:3;s:2:\"43\";i:4;s:2:\"31\";i:5;s:2:\"95\";i:6;s:3:\"107\";}'),
(143, 9, '_sections', 'field_5bf4dcc0b9659'),
(144, 36, 'sections', 'a:3:{i:0;s:2:\"30\";i:1;s:2:\"33\";i:2;s:2:\"31\";}'),
(145, 36, '_sections', 'field_5bf4dcc0b9659'),
(146, 37, 'sections', 'a:3:{i:0;s:2:\"30\";i:1;s:2:\"33\";i:2;s:2:\"31\";}'),
(147, 37, '_sections', 'field_5bf4dcc0b9659'),
(148, 9, '_wp_page_template', 'template_onepage.php'),
(149, 38, '_menu_item_type', 'custom'),
(150, 38, '_menu_item_menu_item_parent', '0'),
(151, 38, '_menu_item_object_id', '38'),
(152, 38, '_menu_item_object', 'custom'),
(153, 38, '_menu_item_target', ''),
(154, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 38, '_menu_item_xfn', ''),
(156, 38, '_menu_item_url', 'http://alex.shao.yoobee.net.nz/immigration/#practicing-areas'),
(158, 39, '_edit_last', '1'),
(159, 39, '_edit_lock', '1542843605:1'),
(160, 40, 'sections', 'a:4:{i:0;s:2:\"33\";i:1;s:2:\"30\";i:2;s:2:\"39\";i:3;s:2:\"31\";}'),
(161, 40, '_sections', 'field_5bf4dcc0b9659'),
(162, 41, '_wp_attached_file', '2018/11/logo.jpg'),
(163, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:154;s:4:\"file\";s:16:\"2018/11/logo.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 42, '_wp_trash_meta_status', 'publish'),
(165, 42, '_wp_trash_meta_time', '1542844062'),
(166, 43, '_edit_last', '1'),
(167, 43, '_edit_lock', '1542844139:1'),
(168, 44, 'sections', 'a:5:{i:0;s:2:\"33\";i:1;s:2:\"30\";i:2;s:2:\"39\";i:3;s:2:\"43\";i:4;s:2:\"31\";}'),
(169, 44, '_sections', 'field_5bf4dcc0b9659'),
(170, 45, '_menu_item_type', 'custom'),
(171, 45, '_menu_item_menu_item_parent', '0'),
(172, 45, '_menu_item_object_id', '45'),
(173, 45, '_menu_item_object', 'custom'),
(174, 45, '_menu_item_target', ''),
(175, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 45, '_menu_item_xfn', ''),
(177, 45, '_menu_item_url', 'http://alex.shao.yoobee.net.nz/immigration/#useful-links'),
(179, 47, '_edit_last', '1'),
(180, 47, '_edit_lock', '1542858636:1'),
(181, 54, '_edit_last', '1'),
(182, 54, '_edit_lock', '1543450471:1'),
(183, 54, 'title', ''),
(184, 54, '_title', 'field_5bf604ae13d3a'),
(185, 54, 'item_one', 'AA Guides'),
(186, 54, '_item_one', 'field_5bf604c613d3b'),
(187, 54, 'item_two', 'Best Western'),
(188, 54, '_item_two', 'field_5bf6052413d3c'),
(189, 54, 'item_three', 'NZ Bed & Breakfast'),
(190, 54, '_item_three', 'field_5bf6053613d3d'),
(191, 54, 'item_four', ''),
(192, 54, '_item_four', 'field_5bf6053f13d3e'),
(193, 54, 'item_five', ''),
(194, 54, '_item_five', 'field_5bf6054613d3f'),
(195, 55, '_edit_last', '1'),
(196, 55, '_edit_lock', '1542859380:1'),
(197, 55, 'item_one', 'SEEK'),
(198, 55, '_item_one', 'field_5bf604c613d3b'),
(199, 55, 'item_two', ''),
(200, 55, '_item_two', 'field_5bf6052413d3c'),
(201, 55, 'item_three', ''),
(202, 55, '_item_three', 'field_5bf6053613d3d'),
(203, 55, 'item_four', ''),
(204, 55, '_item_four', 'field_5bf6053f13d3e'),
(205, 55, 'item_five', ''),
(206, 55, '_item_five', 'field_5bf6054613d3f'),
(207, 56, '_edit_last', '1'),
(208, 56, '_edit_lock', '1542858977:1'),
(209, 56, 'item_one', 'Auckland'),
(210, 56, '_item_one', 'field_5bf604c613d3b'),
(211, 56, 'item_two', 'Christchurch/Canterbury'),
(212, 56, '_item_two', 'field_5bf6052413d3c'),
(213, 56, 'item_three', 'Destination NZ'),
(214, 56, '_item_three', 'field_5bf6053613d3d'),
(215, 56, 'item_four', 'Wellington'),
(216, 56, '_item_four', 'field_5bf6053f13d3e'),
(217, 56, 'item_five', ''),
(218, 56, '_item_five', 'field_5bf6054613d3f'),
(219, 57, '_edit_last', '1'),
(220, 57, '_edit_lock', '1542860253:1'),
(221, 57, 'item_one', 'Business Information Zone'),
(222, 57, '_item_one', 'field_5bf604c613d3b'),
(223, 57, 'item_two', 'NZ Bizbuysell'),
(224, 57, '_item_two', 'field_5bf6052413d3c'),
(225, 57, 'item_three', 'NZ Companies Office'),
(226, 57, '_item_three', 'field_5bf6053613d3d'),
(227, 57, 'item_four', 'Trademe'),
(228, 57, '_item_four', 'field_5bf6053f13d3e'),
(229, 57, 'item_five', ''),
(230, 57, '_item_five', 'field_5bf6054613d3f'),
(231, 58, '_edit_last', '1'),
(232, 58, '_edit_lock', '1542859065:1'),
(233, 58, 'item_one', 'Immigration New Zealand'),
(234, 58, '_item_one', 'field_5bf604c613d3b'),
(235, 58, 'item_two', ''),
(236, 58, '_item_two', 'field_5bf6052413d3c'),
(237, 58, 'item_three', ''),
(238, 58, '_item_three', 'field_5bf6053613d3d'),
(239, 58, 'item_four', ''),
(240, 58, '_item_four', 'field_5bf6053f13d3e'),
(241, 58, 'item_five', ''),
(242, 58, '_item_five', 'field_5bf6054613d3f'),
(243, 59, '_edit_last', '1'),
(244, 59, '_edit_lock', '1542859121:1'),
(245, 59, 'item_one', 'Bayleys'),
(246, 59, '_item_one', 'field_5bf604c613d3b'),
(247, 59, 'item_two', 'Barfoot & Thompson'),
(248, 59, '_item_two', 'field_5bf6052413d3c'),
(249, 59, 'item_three', 'Ray White'),
(250, 59, '_item_three', 'field_5bf6053613d3d'),
(251, 59, 'item_four', 'Realenz'),
(252, 59, '_item_four', 'field_5bf6053f13d3e'),
(253, 59, 'item_five', ''),
(254, 59, '_item_five', 'field_5bf6054613d3f'),
(255, 60, '_edit_last', '1'),
(256, 60, '_edit_lock', '1542859333:1'),
(257, 60, 'item_one', 'NZ Customs Service'),
(258, 60, '_item_one', 'field_5bf604c613d3b'),
(259, 60, 'item_two', 'Immigration New Zealand'),
(260, 60, '_item_two', 'field_5bf6052413d3c'),
(261, 60, 'item_three', 'Refugees as Survivors'),
(262, 60, '_item_three', 'field_5bf6053613d3d'),
(263, 60, 'item_four', 'WINZ'),
(264, 60, '_item_four', 'field_5bf6053f13d3e'),
(265, 60, 'item_five', 'Auckland Refugee Council'),
(266, 60, '_item_five', 'field_5bf6054613d3f'),
(267, 61, '_edit_last', '1'),
(268, 61, '_edit_lock', '1543451861:1'),
(269, 61, 'item_one', 'SEEK'),
(270, 61, '_item_one', 'field_5bf604c613d3b'),
(271, 61, 'item_two', ''),
(272, 61, '_item_two', 'field_5bf6052413d3c'),
(273, 61, 'item_three', ''),
(274, 61, '_item_three', 'field_5bf6053613d3d'),
(275, 61, 'item_four', ''),
(276, 61, '_item_four', 'field_5bf6053f13d3e'),
(277, 61, 'item_five', ''),
(278, 61, '_item_five', 'field_5bf6054613d3f'),
(279, 62, '_edit_last', '1'),
(280, 62, '_edit_lock', '1542859429:1'),
(281, 62, 'item_one', 'IELTS'),
(282, 62, '_item_one', 'field_5bf604c613d3b'),
(283, 62, 'item_two', 'Independent Schools of NZ'),
(284, 62, '_item_two', 'field_5bf6052413d3c'),
(285, 62, 'item_three', 'Ministry of Education'),
(286, 62, '_item_three', 'field_5bf6053613d3d'),
(287, 62, 'item_four', 'NZ Education Gazette'),
(288, 62, '_item_four', 'field_5bf6053f13d3e'),
(289, 62, 'item_five', 'NZQA'),
(290, 62, '_item_five', 'field_5bf6054613d3f'),
(291, 63, '_edit_last', '1'),
(292, 63, '_edit_lock', '1542859469:1'),
(293, 63, 'item_one', 'NZ Herald (Auckland)'),
(294, 63, '_item_one', 'field_5bf604c613d3b'),
(295, 63, 'item_two', 'National Business Review'),
(296, 63, '_item_two', 'field_5bf6052413d3c'),
(297, 63, 'item_three', 'The Otago Daily Times'),
(298, 63, '_item_three', 'field_5bf6053613d3d'),
(299, 63, 'item_four', 'The Press Online (Christchurch)'),
(300, 63, '_item_four', 'field_5bf6053f13d3e'),
(301, 63, 'item_five', ''),
(302, 63, '_item_five', 'field_5bf6054613d3f'),
(303, 64, '_edit_last', '1'),
(304, 64, '_edit_lock', '1542859510:1'),
(305, 64, 'item_one', 'Emigrating to NZ'),
(306, 64, '_item_one', 'field_5bf604c613d3b'),
(307, 64, 'item_two', 'Inland Revenue'),
(308, 64, '_item_two', 'field_5bf6052413d3c'),
(309, 64, 'item_three', 'NZ Search Directory'),
(310, 64, '_item_three', 'field_5bf6053613d3d'),
(311, 64, 'item_four', 'NZ Weather'),
(312, 64, '_item_four', 'field_5bf6053f13d3e'),
(313, 64, 'item_five', 'NZ White/Yellow Pages'),
(314, 64, '_item_five', 'field_5bf6054613d3f'),
(315, 65, '_edit_last', '1'),
(316, 65, '_edit_lock', '1542860492:1'),
(317, 66, '_edit_last', '1'),
(318, 66, '_edit_lock', '1542854683:1'),
(319, 67, '_edit_last', '1'),
(320, 67, '_edit_lock', '1542854675:1'),
(321, 68, '_edit_last', '1'),
(322, 68, '_edit_lock', '1542854729:1'),
(323, 69, '_edit_last', '1'),
(324, 69, '_edit_lock', '1542854702:1'),
(325, 70, '_edit_last', '1'),
(326, 70, '_edit_lock', '1542854694:1'),
(327, 71, '_edit_last', '1'),
(328, 71, '_edit_lock', '1542860271:1'),
(329, 74, '_wp_attached_file', '2018/11/business.jpg'),
(330, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:314;s:6:\"height\";i:210;s:4:\"file\";s:20:\"2018/11/business.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"business-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"business-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 65, 'image', '74'),
(332, 65, '_image', 'field_5bf6145f3e112'),
(333, 65, 'content', 'We ensure that every business plan meets NZIS residence criteria.'),
(334, 65, '_content', 'field_5bf614763e113'),
(335, 75, '_edit_last', '1'),
(336, 75, '_edit_lock', '1542937448:1'),
(337, 76, '_wp_attached_file', '2018/11/student_migrant.jpg'),
(338, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:315;s:6:\"height\";i:210;s:4:\"file\";s:27:\"2018/11/student_migrant.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"student_migrant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"student_migrant-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 75, 'image', '76'),
(340, 75, '_image', 'field_5bf6145f3e112'),
(341, 75, 'content', 'We assist International Students to come to New Zealand to be enrolled at all levels of education'),
(342, 75, '_content', 'field_5bf614763e113'),
(343, 77, '_edit_last', '1'),
(344, 77, '_edit_lock', '1542861047:1'),
(345, 78, '_wp_attached_file', '2018/11/skilled-migrant.jpg'),
(346, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:315;s:6:\"height\";i:210;s:4:\"file\";s:27:\"2018/11/skilled-migrant.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"skilled-migrant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"skilled-migrant-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(347, 77, 'image', '78'),
(348, 77, '_image', 'field_5bf6145f3e112'),
(349, 77, 'content', 'We assist migrants who qualify for residence under all aspects of NZIS criteria.'),
(350, 77, '_content', 'field_5bf614763e113'),
(351, 79, '_edit_last', '1'),
(352, 79, '_edit_lock', '1542861595:1'),
(353, 80, '_wp_attached_file', '2018/11/deportation.jpg'),
(354, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:315;s:6:\"height\";i:210;s:4:\"file\";s:23:\"2018/11/deportation.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"deportation-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"deportation-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(355, 79, 'image', '80'),
(356, 79, '_image', 'field_5bf6145f3e112'),
(357, 79, 'content', 'Our specialist\'s are experienced in the immigration and deportation process.'),
(358, 79, '_content', 'field_5bf614763e113'),
(359, 81, '_edit_last', '1'),
(360, 81, '_edit_lock', '1542860754:1'),
(361, 82, '_wp_attached_file', '2018/11/refugee.jpg'),
(362, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:315;s:6:\"height\";i:210;s:4:\"file\";s:19:\"2018/11/refugee.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"refugee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"refugee-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:16:\"ACT/Paul Jeffrey\";s:6:\"camera\";s:8:\"NIKON D4\";s:7:\"caption\";s:315:\"Children walking in the Zaatari Refugee Camp, located near Mafraq, Jordan. Opened in July, 2012, the camp holds upwards of 20,000 refugees from the civil war inside Syria. International Orthodox Christian Charities and other members of the ACT Alliance are active in the camp providing essential items and services.\";s:17:\"created_timestamp\";s:10:\"1353327658\";s:9:\"copyright\";s:12:\"Paul Jeffrey\";s:12:\"focal_length\";s:3:\"200\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:9:\"0.0003125\";s:5:\"title\";s:29:\"Syrian refugee camp in Jordan\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:24:{i:0;s:5:\"Syria\";i:1;s:6:\"Syrian\";i:2;s:16:\"Syrian Free Army\";i:3;s:9:\"civil war\";i:4;s:6:\"Jordan\";i:5;s:9:\"Jordanian\";i:6;s:8:\"refugees\";i:7;s:12:\"refugee camp\";i:8;s:5:\"UNHCR\";i:9;s:9:\"displaced\";i:10;s:9:\"civilians\";i:11;s:7:\"victims\";i:12;s:8:\"violence\";i:13;s:4:\"IOCC\";i:14;s:10:\"resistance\";i:15;s:11:\"middle east\";i:16;s:7:\"kingdom\";i:17;s:8:\"children\";i:18;s:4:\"boys\";i:19;s:5:\"girls\";i:20;s:4:\"walk\";i:21;s:7:\"walking\";i:22;s:5:\"tents\";i:23;s:7:\"shelter\";}}}'),
(363, 81, 'image', '82'),
(364, 81, '_image', 'field_5bf6145f3e112'),
(365, 81, 'content', 'We help refugees and people seeking asylum in New Zealand.'),
(366, 81, '_content', 'field_5bf614763e113'),
(367, 83, '_edit_last', '1'),
(368, 83, '_edit_lock', '1542860581:1'),
(369, 84, '_wp_attached_file', '2018/11/family_0.jpg'),
(370, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:315;s:6:\"height\";i:210;s:4:\"file\";s:20:\"2018/11/family_0.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"family_0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"family_0-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:8:\"Bigstock\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(371, 83, 'image', '84'),
(372, 83, '_image', 'field_5bf6145f3e112'),
(373, 83, 'content', 'We aim to improve mental health outcomes for children and young people, and their families.'),
(374, 83, '_content', 'field_5bf614763e113'),
(375, 67, '_wp_trash_meta_status', 'publish'),
(376, 67, '_wp_trash_meta_time', '1542854824'),
(377, 67, '_wp_desired_post_slug', 'skilled-immigration'),
(378, 66, '_wp_trash_meta_status', 'publish'),
(379, 66, '_wp_trash_meta_time', '1542854830'),
(380, 66, '_wp_desired_post_slug', 'student-immigration'),
(381, 70, '_wp_trash_meta_status', 'publish'),
(382, 70, '_wp_trash_meta_time', '1542854841'),
(383, 70, '_wp_desired_post_slug', 'criminal-and-mental-health'),
(384, 69, '_wp_trash_meta_status', 'publish'),
(385, 69, '_wp_trash_meta_time', '1542854850'),
(386, 69, '_wp_desired_post_slug', 'refugee'),
(387, 68, '_wp_trash_meta_status', 'publish'),
(388, 68, '_wp_trash_meta_time', '1542854876'),
(389, 68, '_wp_desired_post_slug', 'deportation'),
(390, 54, '1', 'https://www.aa.co.nz/travel/'),
(391, 54, '_1', 'field_5bf621dfd8b9f'),
(392, 61, 'link_one', 'https://www.seek.co.nz/'),
(393, 61, '_link_one', 'field_5bf6276775f07'),
(394, 61, 'link_two', ''),
(395, 61, '_link_two', 'field_5bf627de87e4b'),
(396, 61, 'link_three', ''),
(397, 61, '_link_three', 'field_5bf627eb05ab2'),
(398, 61, 'link_four', ''),
(399, 61, '_link_four', 'field_5bf627f8c4a52'),
(400, 61, 'link_five', ''),
(401, 61, '_link_five', 'field_5bf62801c4a53'),
(402, 54, 'link_one', 'https://www.aa.co.nz/travel/'),
(403, 54, '_link_one', 'field_5bf6276775f07'),
(404, 54, 'link_two', 'http://www.bestwestern.co.nz/'),
(405, 54, '_link_two', 'field_5bf627de87e4b'),
(406, 54, 'link_three', 'https://www.bnb.co.nz/'),
(407, 54, '_link_three', 'field_5bf627eb05ab2'),
(408, 54, 'link_four', ''),
(409, 54, '_link_four', 'field_5bf627f8c4a52'),
(410, 54, 'link_five', ''),
(411, 54, '_link_five', 'field_5bf62801c4a53'),
(412, 56, 'link_one', 'https://www.aucklandnz.com/'),
(413, 56, '_link_one', 'field_5bf6276775f07'),
(414, 56, 'link_two', 'http://www.christchurchnz.com/asia/'),
(415, 56, '_link_two', 'field_5bf627de87e4b'),
(416, 56, 'link_three', 'http://www.destinationnz.co.nz/'),
(417, 56, '_link_three', 'field_5bf627eb05ab2'),
(418, 56, 'link_four', 'https://wellington.govt.nz/'),
(419, 56, '_link_four', 'field_5bf627f8c4a52'),
(420, 56, 'link_five', ''),
(421, 56, '_link_five', 'field_5bf62801c4a53'),
(422, 57, 'link_one', 'http://www.biz.org.nz/'),
(423, 57, '_link_one', 'field_5bf6276775f07'),
(424, 57, 'link_two', 'https://www.nzbizbuysell.co.nz/'),
(425, 57, '_link_two', 'field_5bf627de87e4b'),
(426, 57, 'link_three', 'https://companies-register.companiesoffice.govt.nz/'),
(427, 57, '_link_three', 'field_5bf627eb05ab2'),
(428, 57, 'link_four', 'https://www.trademe.co.nz/'),
(429, 57, '_link_four', 'field_5bf627f8c4a52'),
(430, 57, 'link_five', ''),
(431, 57, '_link_five', 'field_5bf62801c4a53'),
(432, 58, 'link_one', 'https://www.immigration.govt.nz/new-zealand-visas'),
(433, 58, '_link_one', 'field_5bf6276775f07'),
(434, 58, 'link_two', ''),
(435, 58, '_link_two', 'field_5bf627de87e4b'),
(436, 58, 'link_three', ''),
(437, 58, '_link_three', 'field_5bf627eb05ab2'),
(438, 58, 'link_four', ''),
(439, 58, '_link_four', 'field_5bf627f8c4a52'),
(440, 58, 'link_five', ''),
(441, 58, '_link_five', 'field_5bf62801c4a53'),
(442, 59, 'link_one', 'https://www.bayleys.co.nz/'),
(443, 59, '_link_one', 'field_5bf6276775f07'),
(444, 59, 'link_two', 'https://www.barfoot.co.nz/'),
(445, 59, '_link_two', 'field_5bf627de87e4b'),
(446, 59, 'link_three', 'https://www.raywhitegroup.com/'),
(447, 59, '_link_three', 'field_5bf627eb05ab2'),
(448, 59, 'link_four', 'https://www.realestate.co.nz/'),
(449, 59, '_link_four', 'field_5bf627f8c4a52'),
(450, 59, 'link_five', ''),
(451, 59, '_link_five', 'field_5bf62801c4a53'),
(452, 60, 'link_one', 'https://www.customs.govt.nz/'),
(453, 60, '_link_one', 'field_5bf6276775f07'),
(454, 60, 'link_two', 'https://www.immigration.govt.nz/new-zealand-visas'),
(455, 60, '_link_two', 'field_5bf627de87e4b'),
(456, 60, 'link_three', 'https://rasnz.co.nz/'),
(457, 60, '_link_three', 'field_5bf627eb05ab2'),
(458, 60, 'link_four', 'https://www.workandincome.govt.nz/'),
(459, 60, '_link_four', 'field_5bf627f8c4a52'),
(460, 60, 'link_five', 'https://www.aucklandrefugeecouncil.org/'),
(461, 60, '_link_five', 'field_5bf62801c4a53'),
(462, 55, 'link_one', 'https://www.seek.co.nz/'),
(463, 55, '_link_one', 'field_5bf6276775f07'),
(464, 55, 'link_two', ''),
(465, 55, '_link_two', 'field_5bf627de87e4b'),
(466, 55, 'link_three', ''),
(467, 55, '_link_three', 'field_5bf627eb05ab2'),
(468, 55, 'link_four', ''),
(469, 55, '_link_four', 'field_5bf627f8c4a52'),
(470, 55, 'link_five', ''),
(471, 55, '_link_five', 'field_5bf62801c4a53'),
(472, 62, 'link_one', 'https://www.ielts.org/'),
(473, 62, '_link_one', 'field_5bf6276775f07'),
(474, 62, 'link_two', 'https://www.isnz.org.nz/'),
(475, 62, '_link_two', 'field_5bf627de87e4b'),
(476, 62, 'link_three', 'http://www.education.govt.nz/'),
(477, 62, '_link_three', 'field_5bf627eb05ab2'),
(478, 62, 'link_four', 'https://gazette.education.govt.nz/'),
(479, 62, '_link_four', 'field_5bf627f8c4a52'),
(480, 62, 'link_five', 'https://www.nzqa.govt.nz/'),
(481, 62, '_link_five', 'field_5bf62801c4a53'),
(482, 63, 'link_one', 'https://www.nzherald.co.nz/'),
(483, 63, '_link_one', 'field_5bf6276775f07'),
(484, 63, 'link_two', 'https://www.nbr.co.nz/'),
(485, 63, '_link_two', 'field_5bf627de87e4b'),
(486, 63, 'link_three', 'https://www.odt.co.nz/'),
(487, 63, '_link_three', 'field_5bf627eb05ab2'),
(488, 63, 'link_four', 'https://www.stuff.co.nz/the-press'),
(489, 63, '_link_four', 'field_5bf627f8c4a52'),
(490, 63, 'link_five', ''),
(491, 63, '_link_five', 'field_5bf62801c4a53'),
(492, 64, 'link_one', 'https://www.enz.org/'),
(493, 64, '_link_one', 'field_5bf6276775f07'),
(494, 64, 'link_two', 'https://www.ird.govt.nz/'),
(495, 64, '_link_two', 'field_5bf627de87e4b'),
(496, 64, 'link_three', 'http://www.nzsearch.co.nz/'),
(497, 64, '_link_three', 'field_5bf627eb05ab2'),
(498, 64, 'link_four', 'https://home.nzcity.co.nz/weather/Default.asp?c=w'),
(499, 64, '_link_four', 'field_5bf627f8c4a52'),
(500, 64, 'link_five', 'https://whitepages.co.nz/'),
(501, 64, '_link_five', 'field_5bf62801c4a53'),
(502, 65, 'icon', '<i class=\"flaticon text-primary fas fa-briefcase\"></i>'),
(503, 65, '_icon', 'field_5bf62e752550a'),
(504, 83, 'icon', '<i class=\"flaticon text-primary fas fa-briefcase-medical\"></i>'),
(505, 83, '_icon', 'field_5bf62e752550a'),
(506, 81, 'icon', '<i class=\"flaticon text-primary fas fa-hand-holding-heart\"></i>'),
(507, 81, '_icon', 'field_5bf62e752550a'),
(508, 77, 'icon', '<i class=\"flaticon text-primary fas fa-hammer\"></i>'),
(509, 77, '_icon', 'field_5bf62e752550a'),
(510, 75, 'icon', '<i class=\"flaticon text-primary fas fa-user-graduate\"></i>'),
(511, 75, '_icon', 'field_5bf62e752550a'),
(512, 79, 'icon', '<i class=\"flaticon text-primary fas fa-hand-paper\"></i>'),
(513, 79, '_icon', 'field_5bf62e752550a'),
(514, 92, '_edit_last', '1'),
(515, 92, '_edit_lock', '1543191510:1'),
(516, 93, '_edit_last', '1'),
(517, 93, '_edit_lock', '1543190923:1'),
(518, 94, '_edit_last', '1'),
(519, 94, '_edit_lock', '1543190660:1'),
(520, 95, '_edit_last', '1'),
(521, 95, '_edit_lock', '1542861846:1'),
(522, 96, 'sections', 'a:6:{i:0;s:2:\"33\";i:1;s:2:\"30\";i:2;s:2:\"39\";i:3;s:2:\"43\";i:4;s:2:\"31\";i:5;s:2:\"95\";}'),
(523, 96, '_sections', 'field_5bf4dcc0b9659'),
(524, 97, '_menu_item_type', 'custom'),
(525, 97, '_menu_item_menu_item_parent', '0'),
(526, 97, '_menu_item_object_id', '97'),
(527, 97, '_menu_item_object', 'custom'),
(528, 97, '_menu_item_target', ''),
(529, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(530, 97, '_menu_item_xfn', ''),
(531, 97, '_menu_item_url', 'http://alex.shao.yoobee.net.nz/immigration/#lawyers'),
(533, 98, '_edit_last', '1'),
(534, 98, '_edit_lock', '1543190652:1'),
(535, 94, 'intro', 'Ioana is a highly experienced senior staff solicitor who specialises in every aspect of refugee law and also immigration law. She has practised law for some 15 years and is particularly committed to all aspects of human rights law.<br>loana particularly looks after refugee claimants but also those seeking residence and mental health law.'),
(536, 94, '_intro', 'field_5bf63aebb2d16'),
(537, 94, 'specialises', ''),
(538, 94, '_specialises', 'field_5bf63b12b2d17'),
(539, 93, 'intro', 'Trevor is a staff solicitor and was former Head of the English Department of a large Auckland school.'),
(540, 93, '_intro', 'field_5bf63aebb2d16'),
(541, 93, 'specialises', ''),
(542, 93, '_specialises', 'field_5bf63b12b2d17'),
(543, 92, 'intro', ''),
(544, 92, '_intro', 'field_5bf63aebb2d16'),
(545, 92, 'specialises', 'Carole is the principal lawyer for the firm and a senior member of the immigration law team. She is a specialist in all aspects of human rights law. The law firm is a member of the New Zealand Law Society, NZILA and NZAMI. Carole has practised law for more than 25 years and is able to work and negotiate with Government Agencies as well as community groups in New Zealand.<br>Carole is responsible for Student, Residence and Skilled Migrant Immigration applications. Carole is directly in contact with education providers to ensure that students are matched with the most suitable school or institute. We assist with the provision of New Zealand and Australian students visas. Carole also works with Skilled Migrant, Investor as well as Long Term Business Visa applications.'),
(546, 92, '_specialises', 'field_5bf63b12b2d17'),
(547, 101, '_edit_last', '1'),
(548, 101, '_edit_lock', '1542929454:1'),
(549, 101, '_wp_page_template', 'default'),
(550, 101, '_wp_trash_meta_status', 'publish'),
(551, 101, '_wp_trash_meta_time', '1542929961'),
(552, 101, '_wp_desired_post_slug', 'lawyer'),
(553, 94, 'intro_a', 'Ioana is a highly experienced senior staff solicitor who specialises in every aspect of refugee law and also immigration law. She has practised law for some 15 years and is particularly committed to all aspects of human rights law.'),
(554, 94, '_intro_a', 'field_5bf63aebb2d16'),
(555, 94, 'intro_b', 'loana particularly looks after refugee claimants but also those seeking residence and mental health law.'),
(556, 94, '_intro_b', 'field_5bf63b12b2d17'),
(557, 92, 'intro_a', 'Carole is the principal lawyer for the firm and a senior member of the immigration law team. She is a specialist in all aspects of human rights law. The law firm is a member of the New Zealand Law Society, NZILA and NZAMI. Carole has practised law for more than 25 years and is able to work and negotiate with Government Agencies as well as community groups in New Zealand.'),
(558, 92, '_intro_a', 'field_5bf63aebb2d16'),
(559, 92, 'intro_b', 'Carole is responsible for Student, Residence and Skilled Migrant Immigration applications. Carole is directly in contact with education providers to ensure that students are matched with the most suitable school or institute. We assist with the provision of New Zealand and Australian students visas. Carole also works with Skilled Migrant, Investor as well as Long Term Business Visa applications.'),
(560, 92, '_intro_b', 'field_5bf63b12b2d17'),
(561, 103, '_edit_lock', '1542935444:1'),
(562, 103, '_wp_trash_meta_status', 'publish'),
(563, 103, '_wp_trash_meta_time', '1542935478'),
(566, 93, 'intro_a', 'All aspects of immigration law High Court work Medical waivers Family reunification'),
(567, 93, '_intro_a', 'field_5bf63aebb2d16'),
(568, 93, 'intro_b', ''),
(569, 93, '_intro_b', 'field_5bf63b12b2d17'),
(570, 93, 'content', '<ul>\r\n      <li>All aspects of immigration law</li>\r\n      <li>High Court work</li>\r\n      <li>Medical waivers</li>\r\n      <li>Family reunification</li>\r\n</ul>'),
(571, 93, '_content', 'field_5bfb36effd675'),
(572, 92, 'content', '\r\n\r\n\r\n\r\n\r\n<ul>\r\n      <li>All aspects of immigration law</li>\r\n      <li>All residence applications</li>\r\n      <li>All aspects of refugee law from first level to appeals and beyond</li>\r\n      <li>Deportation law</li>\r\n      <li>High Court judicial reviews and appeals through to the Supreme Court</li>\r\n      <li>Mental health law</li>\r\n      <li>Family law</li>\r\n      <li>Criminal law</li>\r\n      <li>Civil law</li>\r\n      <li>Immigration and criminal discharges without conviction</li>\r\n</ul>\r\n'),
(573, 92, '_content', 'field_5bfb36effd675'),
(574, 106, '_menu_item_type', 'custom'),
(575, 106, '_menu_item_menu_item_parent', '0'),
(576, 106, '_menu_item_object_id', '106'),
(577, 106, '_menu_item_object', 'custom'),
(578, 106, '_menu_item_target', ''),
(579, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(580, 106, '_menu_item_xfn', ''),
(581, 106, '_menu_item_url', 'http://alex.shao.yoobee.net.nz/immigration/#testimonials'),
(583, 107, '_edit_last', '1'),
(584, 107, '_edit_lock', '1543191584:1'),
(585, 108, 'sections', 'a:7:{i:0;s:2:\"33\";i:1;s:2:\"30\";i:2;s:2:\"39\";i:3;s:2:\"43\";i:4;s:2:\"31\";i:5;s:2:\"95\";i:6;s:3:\"107\";}'),
(586, 108, '_sections', 'field_5bf4dcc0b9659'),
(587, 109, '_edit_last', '1'),
(588, 109, '_edit_lock', '1543192387:1'),
(589, 110, '_edit_last', '1'),
(590, 110, '_edit_lock', '1543192361:1'),
(591, 109, 'content', 'Excellent service by Professional Visa Solutions. The staff is very prompt to the queries and keeps updating you with your visa status. I got my two year work visa within a month. I highly recommended these guys for all visa solutions.'),
(592, 109, '_content', 'field_5bfb3faf22361'),
(593, 115, '_edit_last', '1'),
(594, 115, 'content', 'Humble and hardworking team who is always up for you. They listen to you carefully.I have always received one to one attention and they reviewed my file thoroughly to avoid delays and confusions. Thanks to Mr. Inder and the entire team at Provisas.'),
(595, 115, '_content', 'field_5bfb3faf22361'),
(596, 115, '_edit_lock', '1543194044:1'),
(597, 116, '_wp_trash_meta_status', 'publish'),
(598, 116, '_wp_trash_meta_time', '1543194369');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-20 02:43:28', '2018-11-20 02:43:28', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-11-20 02:43:28', '2018-11-20 02:43:28', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-20 02:43:28', '2018-11-20 02:43:28', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://alex.shao.yoobee.net.nz/immigration/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-11-20 23:20:07', '2018-11-20 23:20:07', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-20 02:43:28', '2018-11-20 02:43:28', '<h2>Who we are</h2><p>Our website address is: http://alex.shao.yoobee.net.nz/immigration.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-11-20 23:20:08', '2018-11-20 23:20:08', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-11-20 23:15:12', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-20 23:15:12', '0000-00-00 00:00:00', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2018-11-20 23:15:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-20 23:15:12', '0000-00-00 00:00:00', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2018-11-20 23:20:07', '2018-11-20 23:20:07', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://alex.shao.yoobee.net.nz/immigration/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-11-20 23:20:07', '2018-11-20 23:20:07', '', 2, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/20/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-11-20 23:20:08', '2018-11-20 23:20:08', '<h2>Who we are</h2><p>Our website address is: http://alex.shao.yoobee.net.nz/immigration.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-11-20 23:20:08', '2018-11-20 23:20:08', '', 3, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/20/3-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-11-20 23:20:25', '2018-11-20 23:20:25', 'Home', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-11-26 00:22:24', '2018-11-26 00:22:24', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-11-20 23:20:25', '2018-11-20 23:20:25', 'Home', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-20 23:20:25', '2018-11-20 23:20:25', '', 9, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/20/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-11-20 23:21:05', '2018-11-20 23:21:05', 'About', 'About', '', 'trash', 'closed', 'closed', '', 'about__trashed', '', '', '2018-11-20 23:24:00', '2018-11-20 23:24:00', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-11-20 23:21:05', '2018-11-20 23:21:05', 'About', 'About', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-11-20 23:21:05', '2018-11-20 23:21:05', '', 11, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/20/11-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-11-20 23:27:28', '2018-11-20 23:27:28', 'Contact Us', 'Contact Us', '', 'trash', 'closed', 'closed', '', 'contact-us__trashed', '', '', '2018-11-21 02:49:49', '2018-11-21 02:49:49', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-11-20 23:27:28', '2018-11-20 23:27:28', 'Contact Us', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-11-20 23:27:28', '2018-11-20 23:27:28', '', 15, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/20/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-11-20 23:27:52', '2018-11-20 23:27:52', 'Useful Links', 'Useful Links', '', 'trash', 'closed', 'closed', '', 'useful-links__trashed', '', '', '2018-11-21 02:49:50', '2018-11-21 02:49:50', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-11-20 23:27:52', '2018-11-20 23:27:52', 'Useful Links', 'Useful Links', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-11-20 23:27:52', '2018-11-20 23:27:52', '', 17, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/20/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-11-20 23:30:32', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-20 23:30:32', '0000-00-00 00:00:00', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-11-20 23:30:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-20 23:30:32', '0000-00-00 00:00:00', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-11-20 23:30:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-20 23:30:32', '0000-00-00 00:00:00', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-11-20 23:30:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-11-20 23:30:32', '0000-00-00 00:00:00', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=22', 1, 'nav_menu_item', '', 0),
(26, 1, '2018-11-21 03:30:33', '2018-11-21 03:30:33', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-11-29 00:36:25', '2018-11-29 00:36:25', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-11-21 04:05:32', '2018-11-21 04:05:32', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-11-29 00:36:25', '2018-11-29 00:36:25', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2018-11-21 04:06:19', '2018-11-21 04:06:19', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-11-29 00:36:25', '2018-11-29 00:36:25', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=28', 7, 'nav_menu_item', '', 0),
(30, 1, '2018-11-21 04:13:11', '2018-11-21 04:13:11', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-11-21 04:13:11', '2018-11-21 04:13:11', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=section&#038;p=30', 1, 'section', '', 0),
(31, 1, '2018-11-21 04:13:20', '2018-11-21 04:13:20', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-11-21 04:13:20', '2018-11-21 04:13:20', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=section&#038;p=31', 6, 'section', '', 0),
(33, 1, '2018-11-21 04:13:38', '2018-11-21 04:13:38', '', 'Hero', '', 'publish', 'closed', 'closed', '', 'hero', '', '', '2018-11-21 04:13:38', '2018-11-21 04:13:38', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=section&#038;p=33', 0, 'section', '', 0),
(34, 1, '2018-11-21 04:20:17', '2018-11-21 04:20:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"template_onepage.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'One Page Feilds', 'one-page-feilds', 'publish', 'closed', 'closed', '', 'group_5bf4dcb79524e', '', '', '2018-11-21 04:43:04', '2018-11-21 04:43:04', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field-group&#038;p=34', 0, 'acf-field-group', '', 0),
(35, 1, '2018-11-21 04:20:17', '2018-11-21 04:20:17', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"section\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:9:\"post_type\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:2:\"id\";}', 'Sections', 'sections', 'publish', 'closed', 'closed', '', 'field_5bf4dcc0b9659', '', '', '2018-11-21 04:20:17', '2018-11-21 04:20:17', '', 34, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&p=35', 0, 'acf-field', '', 0),
(36, 1, '2018-11-21 04:20:49', '2018-11-21 04:20:49', 'Home', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-21 04:20:49', '2018-11-21 04:20:49', '', 9, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/21/9-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-11-21 04:38:29', '2018-11-21 04:38:29', 'Home', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-21 04:38:29', '2018-11-21 04:38:29', '', 9, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/21/9-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-11-21 23:33:46', '2018-11-21 23:33:46', '', 'Practicing Areas', '', 'publish', 'closed', 'closed', '', 'practicing-areas', '', '', '2018-11-29 00:36:25', '2018-11-29 00:36:25', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2018-11-21 23:42:25', '2018-11-21 23:42:25', '', 'Practicing Areas', '', 'publish', 'closed', 'closed', '', 'practicing-areas', '', '', '2018-11-21 23:42:25', '2018-11-21 23:42:25', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=section&#038;p=39', 3, 'section', '', 0),
(40, 1, '2018-11-21 23:42:46', '2018-11-21 23:42:46', 'Home', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-21 23:42:46', '2018-11-21 23:42:46', '', 9, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/21/9-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-11-21 23:47:28', '2018-11-21 23:47:28', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-11-21 23:47:28', '2018-11-21 23:47:28', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/wp-content/uploads/2018/11/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-11-21 23:47:42', '2018-11-21 23:47:42', '{\n    \"law-master::logo_setting\": {\n        \"value\": \"http://alex.shao.yoobee.net.nz/immigration/wp-content/uploads/2018/11/logo.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-21 23:47:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '86f4d860-db24-4306-865d-4a0a92394e87', '', '', '2018-11-21 23:47:42', '2018-11-21 23:47:42', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/21/86f4d860-db24-4306-865d-4a0a92394e87/', 0, 'customize_changeset', '', 0),
(43, 1, '2018-11-21 23:49:05', '2018-11-21 23:49:05', '', 'Useful Links', '', 'publish', 'closed', 'closed', '', 'useful-links', '', '', '2018-11-21 23:49:05', '2018-11-21 23:49:05', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=section&#038;p=43', 5, 'section', '', 0),
(44, 1, '2018-11-21 23:51:35', '2018-11-21 23:51:35', 'Home', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-21 23:51:35', '2018-11-21 23:51:35', '', 9, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/21/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-11-21 23:52:25', '2018-11-21 23:52:25', '', 'Useful Links', '', 'publish', 'closed', 'closed', '', 'useful-links', '', '', '2018-11-29 00:36:25', '2018-11-29 00:36:25', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=45', 6, 'nav_menu_item', '', 0),
(47, 1, '2018-11-22 01:24:37', '2018-11-22 01:24:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"usefullink\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Useful Links Fields One', 'useful-links-fields-one', 'publish', 'closed', 'closed', '', 'group_5bf604625a86e', '', '', '2018-11-22 03:52:50', '2018-11-22 03:52:50', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(49, 1, '2018-11-22 01:24:37', '2018-11-22 01:24:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Item One', 'item_one', 'publish', 'closed', 'closed', '', 'field_5bf604c613d3b', '', '', '2018-11-22 03:50:45', '2018-11-22 03:50:45', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(50, 1, '2018-11-22 01:24:37', '2018-11-22 01:24:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Item Two', 'item_two', 'publish', 'closed', 'closed', '', 'field_5bf6052413d3c', '', '', '2018-11-22 03:50:45', '2018-11-22 03:50:45', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=50', 1, 'acf-field', '', 0),
(51, 1, '2018-11-22 01:24:37', '2018-11-22 01:24:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Item Three', 'item_three', 'publish', 'closed', 'closed', '', 'field_5bf6053613d3d', '', '', '2018-11-22 03:50:45', '2018-11-22 03:50:45', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=51', 2, 'acf-field', '', 0),
(52, 1, '2018-11-22 01:24:37', '2018-11-22 01:24:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Item Four', 'item_four', 'publish', 'closed', 'closed', '', 'field_5bf6053f13d3e', '', '', '2018-11-22 03:50:45', '2018-11-22 03:50:45', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=52', 3, 'acf-field', '', 0),
(53, 1, '2018-11-22 01:24:37', '2018-11-22 01:24:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Item Five', 'item_five', 'publish', 'closed', 'closed', '', 'field_5bf6054613d3f', '', '', '2018-11-22 03:50:45', '2018-11-22 03:50:45', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=53', 4, 'acf-field', '', 0),
(54, 1, '2018-11-22 01:25:24', '2018-11-22 01:25:24', '', 'Accommodation', '', 'publish', 'closed', 'closed', '', 'accommodation', '', '', '2018-11-22 03:57:56', '2018-11-22 03:57:56', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=54', 1, 'usefullink', '', 0),
(55, 1, '2018-11-22 01:26:21', '2018-11-22 01:26:21', '', 'Employment', '', 'publish', 'closed', 'closed', '', 'employment', '', '', '2018-11-22 04:05:24', '2018-11-22 04:05:24', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=55', 7, 'usefullink', '', 0),
(56, 1, '2018-11-22 01:27:03', '2018-11-22 01:27:03', '', 'Tourism', '', 'publish', 'closed', 'closed', '', 'tourism', '', '', '2018-11-22 03:58:39', '2018-11-22 03:58:39', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=56', 2, 'usefullink', '', 0),
(57, 1, '2018-11-22 01:49:24', '2018-11-22 01:49:24', '', 'Business', '', 'publish', 'closed', 'closed', '', 'business', '', '', '2018-11-22 04:09:45', '2018-11-22 04:09:45', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=57', 3, 'usefullink', '', 0),
(58, 1, '2018-11-22 01:51:03', '2018-11-22 01:51:03', '', 'Immigration Advisors', '', 'publish', 'closed', 'closed', '', 'immigration-advisors', '', '', '2018-11-22 04:00:07', '2018-11-22 04:00:07', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=58', 4, 'usefullink', '', 0),
(59, 1, '2018-11-22 01:51:34', '2018-11-22 01:51:34', '', 'Real Estate', '', 'publish', 'closed', 'closed', '', 'real-estate', '', '', '2018-11-22 04:01:01', '2018-11-22 04:01:01', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=59', 5, 'usefullink', '', 0),
(60, 1, '2018-11-22 01:52:33', '2018-11-22 01:52:33', '', 'Immigration & Customs', '', 'publish', 'closed', 'closed', '', 'immigration-customs', '', '', '2018-11-22 04:04:36', '2018-11-22 04:04:36', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=60', 6, 'usefullink', '', 0),
(61, 1, '2018-11-22 01:52:45', '2018-11-22 01:52:45', '', 'Employment', '', 'publish', 'closed', 'closed', '', 'employment-2', '', '', '2018-11-22 03:57:21', '2018-11-22 03:57:21', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=61', 0, 'usefullink', '', 0),
(62, 1, '2018-11-22 01:53:20', '2018-11-22 01:53:20', '', 'Education', '', 'publish', 'closed', 'closed', '', 'education', '', '', '2018-11-22 04:06:12', '2018-11-22 04:06:12', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=62', 8, 'usefullink', '', 0),
(63, 1, '2018-11-22 01:53:54', '2018-11-22 01:53:54', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-11-22 04:06:52', '2018-11-22 04:06:52', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=63', 9, 'usefullink', '', 0),
(64, 1, '2018-11-22 01:54:35', '2018-11-22 01:54:35', '', 'Miscellaneous', '', 'publish', 'closed', 'closed', '', 'miscellaneous', '', '', '2018-11-22 04:07:32', '2018-11-22 04:07:32', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=usefullink&#038;p=64', 10, 'usefullink', '', 0),
(65, 1, '2018-11-22 02:23:38', '2018-11-22 02:23:38', '', 'Business Immigration', '', 'publish', 'closed', 'closed', '', 'business-immigration', '', '', '2018-11-22 04:23:04', '2018-11-22 04:23:04', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=65', 0, 'practicingarea', '', 0),
(66, 1, '2018-11-22 02:23:45', '2018-11-22 02:23:45', '', 'Student Immigration', '', 'trash', 'closed', 'closed', '', 'student-immigration__trashed', '', '', '2018-11-22 02:47:10', '2018-11-22 02:47:10', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=66', 0, 'practicingarea', '', 0),
(67, 1, '2018-11-22 02:23:53', '2018-11-22 02:23:53', '', 'Skilled Immigration', '', 'trash', 'closed', 'closed', '', 'skilled-immigration__trashed', '', '', '2018-11-22 02:47:04', '2018-11-22 02:47:04', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=67', 0, 'practicingarea', '', 0),
(68, 1, '2018-11-22 02:24:00', '2018-11-22 02:24:00', '', 'Deportation', '', 'trash', 'closed', 'closed', '', 'deportation__trashed', '', '', '2018-11-22 02:47:56', '2018-11-22 02:47:56', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=68', 0, 'practicingarea', '', 0),
(69, 1, '2018-11-22 02:24:08', '2018-11-22 02:24:08', '', 'Refugee', '', 'trash', 'closed', 'closed', '', 'refugee__trashed', '', '', '2018-11-22 02:47:30', '2018-11-22 02:47:30', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=69', 0, 'practicingarea', '', 0),
(70, 1, '2018-11-22 02:24:17', '2018-11-22 02:24:17', '', 'Criminal and mental Health', '', 'trash', 'closed', 'closed', '', 'criminal-and-mental-health__trashed', '', '', '2018-11-22 02:47:21', '2018-11-22 02:47:21', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=70', 0, 'practicingarea', '', 0),
(71, 1, '2018-11-22 02:29:24', '2018-11-22 02:29:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"practicingarea\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Areas Fields', 'areas-fields', 'publish', 'closed', 'closed', '', 'group_5bf6144b7126e', '', '', '2018-11-22 04:20:12', '2018-11-22 04:20:12', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2018-11-22 02:29:24', '2018-11-22 02:29:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5bf6145f3e112', '', '', '2018-11-22 02:32:18', '2018-11-22 02:32:18', '', 71, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=72', 0, 'acf-field', '', 0),
(73, 1, '2018-11-22 02:29:24', '2018-11-22 02:29:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5bf614763e113', '', '', '2018-11-22 02:29:24', '2018-11-22 02:29:24', '', 71, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2018-11-22 02:30:42', '2018-11-22 02:30:42', '', 'business', '', 'inherit', 'open', 'closed', '', 'business-2', '', '', '2018-11-22 02:30:42', '2018-11-22 02:30:42', '', 65, 'http://alex.shao.yoobee.net.nz/immigration/wp-content/uploads/2018/11/business.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-11-22 02:43:59', '2018-11-22 02:43:59', 'We assist students from all around the world to come to study in New Zealand-from beginner English lessons to students who come to study up to PHD levels. Some students come for the pleasure of the study itself, but others stay on and utilise their qualifications to start the immigration process. Work visas can lead to residence. We can assist and advise throughout the process from the decision making concerning the most helpful course of study.', 'Student Immigration', '', 'publish', 'closed', 'closed', '', 'student-immigration-2', '', '', '2018-11-23 00:28:13', '2018-11-23 00:28:13', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=75', 0, 'practicingarea', '', 0),
(76, 1, '2018-11-22 02:43:55', '2018-11-22 02:43:55', '', 'student_migrant', '', 'inherit', 'open', 'closed', '', 'student_migrant', '', '', '2018-11-22 02:43:55', '2018-11-22 02:43:55', '', 75, 'http://alex.shao.yoobee.net.nz/immigration/wp-content/uploads/2018/11/student_migrant.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-11-22 02:44:35', '2018-11-22 02:44:35', '', 'Skilled Immigration', '', 'publish', 'closed', 'closed', '', 'skilled-immigration-2', '', '', '2018-11-22 04:33:08', '2018-11-22 04:33:08', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=77', 0, 'practicingarea', '', 0),
(78, 1, '2018-11-22 02:44:30', '2018-11-22 02:44:30', '', 'skilled-migrant', '', 'inherit', 'open', 'closed', '', 'skilled-migrant', '', '', '2018-11-22 02:44:30', '2018-11-22 02:44:30', '', 77, 'http://alex.shao.yoobee.net.nz/immigration/wp-content/uploads/2018/11/skilled-migrant.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-11-22 02:45:02', '2018-11-22 02:45:02', '', 'Deportation', '', 'publish', 'closed', 'closed', '', 'deportation-2', '', '', '2018-11-22 04:42:18', '2018-11-22 04:42:18', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=79', 0, 'practicingarea', '', 0),
(80, 1, '2018-11-22 02:44:59', '2018-11-22 02:44:59', '', 'deportation', '', 'inherit', 'open', 'closed', '', 'deportation-2', '', '', '2018-11-22 02:44:59', '2018-11-22 02:44:59', '', 79, 'http://alex.shao.yoobee.net.nz/immigration/wp-content/uploads/2018/11/deportation.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-11-22 02:45:32', '2018-11-22 02:45:32', '', 'Refugee', '', 'publish', 'closed', 'closed', '', 'refugee-2', '', '', '2018-11-22 04:28:17', '2018-11-22 04:28:17', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=81', 0, 'practicingarea', '', 0),
(82, 1, '2018-11-22 02:45:29', '2018-11-22 02:45:29', '', 'Syrian refugee camp in Jordan', 'Children walking in the Zaatari Refugee Camp, located near Mafraq, Jordan. Opened in July, 2012, the camp holds upwards of 20,000 refugees from the civil war inside Syria. International Orthodox Christian Charities and other members of the ACT Alliance are active in the camp providing essential items and services.', 'inherit', 'open', 'closed', '', 'syrian-refugee-camp-in-jordan', '', '', '2018-11-22 02:45:29', '2018-11-22 02:45:29', '', 81, 'http://alex.shao.yoobee.net.nz/immigration/wp-content/uploads/2018/11/refugee.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-11-22 02:46:02', '2018-11-22 02:46:02', '', 'Criminal and mental Health', '', 'publish', 'closed', 'closed', '', 'criminal-and-mental-health-2', '', '', '2018-11-22 04:25:21', '2018-11-22 04:25:21', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=practicingarea&#038;p=83', 0, 'practicingarea', '', 0),
(84, 1, '2018-11-22 02:45:58', '2018-11-22 02:45:58', '', 'family_0', '', 'inherit', 'open', 'closed', '', 'family_0', '', '', '2018-11-22 02:45:58', '2018-11-22 02:45:58', '', 83, 'http://alex.shao.yoobee.net.nz/immigration/wp-content/uploads/2018/11/family_0.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-11-22 03:50:45', '2018-11-22 03:50:45', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link One', 'link_one', 'publish', 'closed', 'closed', '', 'field_5bf6276775f07', '', '', '2018-11-22 03:51:03', '2018-11-22 03:51:03', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=86', 5, 'acf-field', '', 0),
(87, 1, '2018-11-22 03:52:08', '2018-11-22 03:52:08', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link Two', 'link_two', 'publish', 'closed', 'closed', '', 'field_5bf627de87e4b', '', '', '2018-11-22 03:52:08', '2018-11-22 03:52:08', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&p=87', 6, 'acf-field', '', 0),
(88, 1, '2018-11-22 03:52:20', '2018-11-22 03:52:20', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link Three', 'link_three', 'publish', 'closed', 'closed', '', 'field_5bf627eb05ab2', '', '', '2018-11-22 03:52:20', '2018-11-22 03:52:20', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&p=88', 7, 'acf-field', '', 0),
(89, 1, '2018-11-22 03:52:50', '2018-11-22 03:52:50', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link Four', 'link_four', 'publish', 'closed', 'closed', '', 'field_5bf627f8c4a52', '', '', '2018-11-22 03:52:50', '2018-11-22 03:52:50', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&p=89', 8, 'acf-field', '', 0),
(90, 1, '2018-11-22 03:52:50', '2018-11-22 03:52:50', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link Five', 'link_five', 'publish', 'closed', 'closed', '', 'field_5bf62801c4a53', '', '', '2018-11-22 03:52:50', '2018-11-22 03:52:50', '', 47, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&p=90', 9, 'acf-field', '', 0),
(91, 1, '2018-11-22 04:20:12', '2018-11-22 04:20:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_5bf62e752550a', '', '', '2018-11-22 04:20:12', '2018-11-22 04:20:12', '', 71, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&p=91', 2, 'acf-field', '', 0),
(92, 1, '2018-11-22 04:42:46', '2018-11-22 04:42:46', '', 'Carole Curtis', '', 'publish', 'closed', 'closed', '', 'carole-curtis', '', '', '2018-11-26 00:13:15', '2018-11-26 00:13:15', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=lawyer&#038;p=92', 0, 'lawyer', '', 0),
(93, 1, '2018-11-22 04:42:56', '2018-11-22 04:42:56', '', 'Trevor Zohs', '', 'publish', 'closed', 'closed', '', 'trevor-zohs', '', '', '2018-11-26 00:10:47', '2018-11-26 00:10:47', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=lawyer&#038;p=93', 0, 'lawyer', '', 0),
(94, 1, '2018-11-22 04:43:03', '2018-11-22 04:43:03', '', 'loana Uca', '', 'publish', 'closed', 'closed', '', 'loana-uca', '', '', '2018-11-23 00:14:36', '2018-11-23 00:14:36', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=lawyer&#038;p=94', 0, 'lawyer', '', 0),
(95, 1, '2018-11-22 04:46:28', '2018-11-22 04:46:28', '', 'Lawyers', '', 'publish', 'closed', 'closed', '', 'lawyers', '', '', '2018-11-22 04:46:28', '2018-11-22 04:46:28', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=section&#038;p=95', 2, 'section', '', 0),
(96, 1, '2018-11-22 04:46:56', '2018-11-22 04:46:56', 'Home', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-22 04:46:56', '2018-11-22 04:46:56', '', 9, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/22/9-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-11-22 04:47:51', '2018-11-22 04:47:51', '', 'Lawyers', '', 'publish', 'closed', 'closed', '', 'lawyers', '', '', '2018-11-29 00:36:25', '2018-11-29 00:36:25', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=97', 3, 'nav_menu_item', '', 0),
(98, 1, '2018-11-22 05:15:04', '2018-11-22 05:15:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"lawyer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Lawyers Fields', 'lawyers-fields', 'publish', 'closed', 'closed', '', 'group_5bf63ad55a01d', '', '', '2018-11-26 00:06:34', '2018-11-26 00:06:34', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field-group&#038;p=98', 0, 'acf-field-group', '', 0),
(99, 1, '2018-11-22 05:15:04', '2018-11-22 05:15:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Intro A', 'intro_a', 'publish', 'closed', 'closed', '', 'field_5bf63aebb2d16', '', '', '2018-11-23 00:12:51', '2018-11-23 00:12:51', '', 98, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=99', 0, 'acf-field', '', 0),
(100, 1, '2018-11-22 05:15:04', '2018-11-22 05:15:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Intro B', 'intro_b', 'publish', 'closed', 'closed', '', 'field_5bf63b12b2d17', '', '', '2018-11-23 00:12:38', '2018-11-23 00:12:38', '', 98, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=100', 1, 'acf-field', '', 0),
(101, 1, '2018-11-22 05:52:43', '2018-11-22 05:52:43', '', 'Lawyer', '', 'trash', 'closed', 'closed', '', 'lawyer__trashed', '', '', '2018-11-22 23:39:21', '2018-11-22 23:39:21', '', 9, 'http://alex.shao.yoobee.net.nz/immigration/?page_id=101', 0, 'page', '', 0),
(102, 1, '2018-11-22 05:52:43', '2018-11-22 05:52:43', '', 'Lawyer', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-11-22 05:52:43', '2018-11-22 05:52:43', '', 101, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/22/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-11-23 01:11:18', '2018-11-23 01:11:18', '{\n    \"law-master::heading_color_setting\": {\n        \"value\": \"#22acd6\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 01:11:18\"\n    },\n    \"law-master::logo_setting\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-23 01:10:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ccb00a59-9602-4805-81cf-399e8e2dd217', '', '', '2018-11-23 01:11:18', '2018-11-23 01:11:18', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=103', 0, 'customize_changeset', '', 0),
(105, 1, '2018-11-25 23:57:42', '2018-11-25 23:57:42', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5bfb36effd675', '', '', '2018-11-26 00:06:34', '2018-11-26 00:06:34', '', 98, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&#038;p=105', 2, 'acf-field', '', 0),
(106, 1, '2018-11-26 00:21:51', '2018-11-26 00:21:51', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2018-11-29 00:36:25', '2018-11-29 00:36:25', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=106', 5, 'nav_menu_item', '', 0),
(107, 1, '2018-11-26 00:22:07', '2018-11-26 00:22:07', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2018-11-26 00:22:07', '2018-11-26 00:22:07', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=section&#038;p=107', 4, 'section', '', 0),
(108, 1, '2018-11-26 00:22:24', '2018-11-26 00:22:24', 'Home', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-26 00:22:24', '2018-11-26 00:22:24', '', 9, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/26/9-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-11-26 00:34:19', '2018-11-26 00:34:19', '', 'Aarzoo Kaur', '', 'publish', 'closed', 'closed', '', 'aarzoo-kaur', '', '', '2018-11-26 00:35:29', '2018-11-26 00:35:29', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=testimonial&#038;p=109', 0, 'testimonial', '', 0),
(110, 1, '2018-11-26 00:35:02', '2018-11-26 00:35:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"testimonial\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Testimonials Fields', 'testimonials-fields', 'publish', 'closed', 'closed', '', 'group_5bfb3f94219d4', '', '', '2018-11-26 00:35:02', '2018-11-26 00:35:02', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field-group&#038;p=110', 0, 'acf-field-group', '', 0),
(111, 1, '2018-11-26 00:35:02', '2018-11-26 00:35:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'content', 'content', 'publish', 'closed', 'closed', '', 'field_5bfb3faf22361', '', '', '2018-11-26 00:35:02', '2018-11-26 00:35:02', '', 110, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=acf-field&p=111', 0, 'acf-field', '', 0),
(115, 1, '2018-11-26 00:36:03', '2018-11-26 00:36:03', '', 'Gurpreet Kaur', '', 'publish', 'closed', 'closed', '', 'gurpreet-kaur', '', '', '2018-11-26 00:36:03', '2018-11-26 00:36:03', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?post_type=testimonial&#038;p=115', 0, 'testimonial', '', 0),
(116, 1, '2018-11-26 01:06:09', '2018-11-26 01:06:09', '{\n    \"blogdescription\": {\n        \"value\": \"Marshall Bird & Curtis\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-26 01:06:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f1f1b49-0e84-4e50-89f1-8e2d8d29bfec', '', '', '2018-11-26 01:06:09', '2018-11-26 01:06:09', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/index.php/2018/11/26/7f1f1b49-0e84-4e50-89f1-8e2d8d29bfec/', 0, 'customize_changeset', '', 0),
(117, 1, '2018-11-29 00:34:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-29 00:34:46', '0000-00-00 00:00:00', '', 0, 'http://alex.shao.yoobee.net.nz/immigration/?p=117', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main-menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(38, 2, 0),
(45, 2, 0),
(97, 2, 0),
(106, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wizardshao'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"40876611e21a83353b19a0da091d2222188f483a603016678ba0bdfed8f1e3d5\";a:4:{s:10:\"expiration\";i:1543450706;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1543277906;}s:64:\"ecc7501c983f02feda68a208b2c76e696300cae8b4ad57c5fa3898b39194a445\";a:4:{s:10:\"expiration\";i:1543534100;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1543361300;}s:64:\"8ab5a433d23968498d7c1b2842df690ab7fe1a0bdb1418913d00754e45aa241f\";a:4:{s:10:\"expiration\";i:1543621486;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1543448686;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '117'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:19:\"add-post-type-slide\";i:1;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1542843988'),
(24, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:536:\"Yoast SEO and Advanced Custom Fields can work together a lot better by adding a helper plugin. Please install <a href=\"http://alex.shao.yoobee.net.nz/immigration/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=b26ef906b8\">ACF Content Analysis for Yoast SEO</a> to make your life better. <a href=\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\" aria-label=\"More information about ACF Content Analysis for Yoast SEO\" target=\"_blank\" rel=\"noopener noreferrer\">More information</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:41:\"wpseo-suggested-plugin-yoast-acf-analysis\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:171:\"Don\'t miss your crawl errors: <a href=\"http://alex.shao.yoobee.net.nz/immigration/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(25, 1, 'last_login_time', '2018-11-28 23:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wizardshao', '$P$BKn6//UlZg1bWjWPaXTlub.mTP5hOs1', 'wizardshao', 'st.havac@gmail.com', '', '2018-11-20 02:43:28', '', 0, 'wizardshao');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(4, 0, 0),
(13, 0, 0),
(14, 0, 0),
(29, 0, 0),
(32, 0, 0),
(46, 0, 0),
(104, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
