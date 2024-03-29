-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 19, 2021 at 11:36 AM
-- Server version: 10.3.27-MariaDB-0+deb10u1
-- PHP Version: 7.3.27-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-02-19 11:45:13', '2021-02-19 10:45:13', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
(1, 'siteurl', 'https://localhost/wordpress', 'yes'),
(2, 'home', 'https://localhost/wordpress', 'yes'),
(3, 'blogname', 'ft_server', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'thsembel@sutdent.42.fr', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '8', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1629283512', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'fr_FR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1613735118;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613774718;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1613774722;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1613817918;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613817922;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613817923;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(121, '_site_transient_timeout_theme_roots', '1613733318', 'no'),
(122, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(129, '_site_transient_timeout_browser_67ea056854827320187bd4c1d6443f00', '1614336323', 'no'),
(130, '_site_transient_browser_67ea056854827320187bd4c1d6443f00', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"84.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, '_site_transient_timeout_php_check_41c0e750af9891e9b7c1e7d65fb137c0', '1614336323', 'no'),
(132, '_site_transient_php_check_41c0e750af9891e9b7c1e7d65fb137c0', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1613774725', 'no'),
(134, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> XML or PCRE extensions not loaded!</p></div><div class=\"rss-widget\"><p><strong>Erreur RSS :</strong> XML or PCRE extensions not loaded!</p></div>', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(136, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1613774725', 'no'),
(137, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:56:\"Watch party + Discussion group: Custom CSS in the Editor\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/276302203/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-02-19 20:00:00\";s:8:\"end_date\";s:19:\"2021-02-19 21:00:00\";s:20:\"start_unix_timestamp\";i:1613793600;s:18:\"end_unix_timestamp\";i:1613797200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Prague\";s:3:\"url\";s:33:\"https://prague.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-02-27 10:00:00\";s:8:\"end_date\";s:19:\"2021-02-27 10:00:00\";s:20:\"start_unix_timestamp\";i:1614416400;s:18:\"end_unix_timestamp\";i:1614416400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"CZ\";s:8:\"latitude\";d:50.0755381;s:9:\"longitude\";d:14.4378005;}}}}', 'no'),
(138, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1613731527;s:15:\"version_checked\";s:5:\"5.6.1\";s:12:\"translations\";a:0:{}}', 'no'),
(139, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613731528;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.9\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(140, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613731538;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.8\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(144, 'finished_updating_comment_type', '1', 'yes'),
(147, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}}', 'yes'),
(148, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 5, '_customize_changeset_uuid', '3d160011-69aa-41e9-bf84-f33fcfe90cb1'),
(6, 6, '_customize_changeset_uuid', '3d160011-69aa-41e9-bf84-f33fcfe90cb1'),
(8, 7, '_customize_changeset_uuid', '3d160011-69aa-41e9-bf84-f33fcfe90cb1'),
(10, 8, '_customize_changeset_uuid', '3d160011-69aa-41e9-bf84-f33fcfe90cb1'),
(11, 14, '_menu_item_type', 'custom'),
(12, 14, '_menu_item_menu_item_parent', '0'),
(13, 14, '_menu_item_object_id', '14'),
(14, 14, '_menu_item_object', 'custom'),
(15, 14, '_menu_item_target', ''),
(16, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 14, '_menu_item_xfn', ''),
(18, 14, '_menu_item_url', 'https://localhost/wordpress/'),
(19, 15, '_menu_item_type', 'post_type'),
(20, 15, '_menu_item_menu_item_parent', '0'),
(21, 15, '_menu_item_object_id', '6'),
(22, 15, '_menu_item_object', 'page'),
(23, 15, '_menu_item_target', ''),
(24, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 15, '_menu_item_xfn', ''),
(26, 15, '_menu_item_url', ''),
(27, 16, '_menu_item_type', 'post_type'),
(28, 16, '_menu_item_menu_item_parent', '0'),
(29, 16, '_menu_item_object_id', '8'),
(30, 16, '_menu_item_object', 'page'),
(31, 16, '_menu_item_target', ''),
(32, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 16, '_menu_item_xfn', ''),
(34, 16, '_menu_item_url', ''),
(35, 17, '_menu_item_type', 'post_type'),
(36, 17, '_menu_item_menu_item_parent', '0'),
(37, 17, '_menu_item_object_id', '7'),
(38, 17, '_menu_item_object', 'page'),
(39, 17, '_menu_item_target', ''),
(40, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 17, '_menu_item_xfn', ''),
(42, 17, '_menu_item_url', ''),
(43, 18, '_menu_item_type', 'custom'),
(44, 18, '_menu_item_menu_item_parent', '0'),
(45, 18, '_menu_item_object_id', '18'),
(46, 18, '_menu_item_object', 'custom'),
(47, 18, '_menu_item_target', ''),
(48, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 18, '_menu_item_xfn', ''),
(50, 18, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(51, 19, '_menu_item_type', 'custom'),
(52, 19, '_menu_item_menu_item_parent', '0'),
(53, 19, '_menu_item_object_id', '19'),
(54, 19, '_menu_item_object', 'custom'),
(55, 19, '_menu_item_target', ''),
(56, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 19, '_menu_item_xfn', ''),
(58, 19, '_menu_item_url', 'https://twitter.com/wordpress'),
(59, 20, '_menu_item_type', 'custom'),
(60, 20, '_menu_item_menu_item_parent', '0'),
(61, 20, '_menu_item_object_id', '20'),
(62, 20, '_menu_item_object', 'custom'),
(63, 20, '_menu_item_target', ''),
(64, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 20, '_menu_item_xfn', ''),
(66, 20, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(67, 21, '_menu_item_type', 'custom'),
(68, 21, '_menu_item_menu_item_parent', '0'),
(69, 21, '_menu_item_object_id', '21'),
(70, 21, '_menu_item_object', 'custom'),
(71, 21, '_menu_item_target', ''),
(72, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 21, '_menu_item_xfn', ''),
(74, 21, '_menu_item_url', 'mailto:wordpress@example.com'),
(75, 9, '_wp_trash_meta_status', 'publish'),
(76, 9, '_wp_trash_meta_time', '1613733261'),
(77, 5, '_edit_lock', '1613734574:1'),
(78, 23, '_wp_attached_file', '2021/02/kim1.jpg'),
(79, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:932;s:6:\"height\";i:582;s:4:\"file\";s:16:\"2021/02/kim1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 24, '_wp_attached_file', '2021/02/kim2.jpg'),
(81, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:340;s:4:\"file\";s:16:\"2021/02/kim2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-02-19 11:45:13', '2021-02-19 10:45:13', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2021-02-19 11:45:13', '2021-02-19 10:45:13', '', 0, 'https://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-02-19 11:45:13', '2021-02-19 10:45:13', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"https://localhost/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2021-02-19 11:45:13', '2021-02-19 10:45:13', '', 0, 'https://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-02-19 11:45:13', '2021-02-19 10:45:13', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site est : https://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2021-02-19 11:45:13', '2021-02-19 10:45:13', '', 0, 'https://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-02-19 11:45:23', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-02-19 11:45:23', '0000-00-00 00:00:00', '', 0, 'https://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '<!-- wp:heading {\"align\":\"wide\",\"className\":\"has-text-align-wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":119}}} -->\n<h2 class=\"alignwide has-text-align-wide\" style=\"font-size:119px;line-height:1.1\">ft_server by thsembel</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":null,\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n<div class=\"wp-block-columns alignwide is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"id\":24,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image alignfull size-large\"><img src=\"https://localhost/wordpress/wp-content/uploads/2021/02/kim2.jpg\" alt=\"\" class=\"wp-image-24\"/><figcaption>Le soleil ne saurait briller plus que lui.</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"align\":\"full\",\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"https://localhost/wordpress/wp-content/uploads/2021/02/kim1.jpg\" alt=\"\" class=\"wp-image-23\"/><figcaption>Notre venerable Kim Jong Un vous souhaite longue vie et bonheur.</figcaption></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Ceci est un site à la gloire de la dynastie des Kim, nos dictateurs bien aimés.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pleutrerie en bande organisé, coiffure tellement soin, les Kims ont compri ce qui fait l\'apanage d\'un vrai dictateur.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Ajouter des compositions de blocs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les compositions de blocs sont des groupes de blocs pré-conçus. Pour en ajouter un, sélectionnez le bouton Ajouter un bloc [+] dans la barre d’outils en haut de l’éditeur. Passez à l’onglet Compositions sous la barre de recherche, et choisissez une composition.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Encadrez vos images</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One inclut de sublimes bordures pour votre contenu. Avec un bloc d’image sélectionné, ouvrez le panneau «&nbsp;Styles&nbsp;» dans la barre latérale de l’éditeur. Sélectionnez le style de bloc «&nbsp;Cadre&nbsp;» pour l’activer.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Colonnes se chevauchant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One inclut également un style «&nbsp;chevauchement&nbsp;» pour le bloc colonnes. Sélectionnez un bloc colonnes puis ouvrez le panneau «&nbsp;styles&nbsp;» dans la barre latérale de l’éditeur. Sélectionnez le style de bloc «&nbsp;chevauchement&nbsp;» pour l’essayer.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n<p class=\"has-huge-font-size\">Besoin d’aide&nbsp;?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":75} -->\n<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Lire la documentation du thème</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Consulter les forums de support</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', '42-Project', '', 'publish', 'closed', 'closed', '', 'creez-votre-site-avec-des-blocs', '', '', '2021-02-19 12:34:24', '2021-02-19 11:34:24', '', 0, 'https://localhost/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'publish', 'closed', 'closed', '', 'a-propos-de', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:13:53\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Menu principal\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"https://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos de\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:13:53\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Menu secondaire\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:14:21\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:13:53\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:13:53\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:13:53\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-19 11:13:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3d160011-69aa-41e9-bf84-f33fcfe90cb1', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Créez votre site avec des blocs</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"https://localhost/wordpress/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"« Rose trémières » par Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"https://localhost/wordpress/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"« Dans le bois de Boulogne » par Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"https://localhost/wordpress/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"« Jeune femme en mauve » par Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Ajouter des compositions de blocs</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Les compositions de blocs sont des groupes de blocs pré-conçus. Pour en ajouter un, sélectionnez le bouton Ajouter un bloc [+] dans la barre d’outils en haut de l’éditeur. Passez à l’onglet Compositions sous la barre de recherche, et choisissez une composition.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Encadrez vos images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One inclut de sublimes bordures pour votre contenu. Avec un bloc d’image sélectionné, ouvrez le panneau « Styles » dans la barre latérale de l’éditeur. Sélectionnez le style de bloc « Cadre » pour l’activer.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Colonnes se chevauchant</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One inclut également un style « chevauchement » pour le bloc colonnes. Sélectionnez un bloc colonnes puis ouvrez le panneau « styles » dans la barre latérale de l’éditeur. Sélectionnez le style de bloc « chevauchement » pour l’essayer.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Besoin d’aide ?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Lire la documentation du thème</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Consulter les forums de support</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Créez votre site avec des blocs', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 5, 'https://localhost/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '<!-- wp:paragraph -->\n<p>Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.</p>\n<!-- /wp:paragraph -->', 'À propos de', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 6, 'https://localhost/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '<!-- wp:paragraph -->\n<p>C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 7, 'https://localhost/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 8, 'https://localhost/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?p=14', 0, 'nav_menu_item', '', 0),
(15, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?p=18', 0, 'nav_menu_item', '', 0),
(19, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 'E-mail', '', 'publish', 'closed', 'closed', '', 'e-mail', '', '', '2021-02-19 12:14:21', '2021-02-19 11:14:21', '', 0, 'https://localhost/wordpress/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2021-02-19 12:33:44', '2021-02-19 11:33:44', '<!-- wp:heading {\"align\":\"wide\",\"className\":\"has-text-align-wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":119}}} -->\n<h2 class=\"alignwide has-text-align-wide\" style=\"font-size:119px;line-height:1.1\">ft_server by thsembel</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":null,\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n<div class=\"wp-block-columns alignwide is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"id\":24,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image alignfull size-large\"><img src=\"https://localhost/wordpress/wp-content/uploads/2021/02/kim2.jpg\" alt=\"\" class=\"wp-image-24\"/><figcaption>Le soleil ne saurait briller plus que lui.</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"align\":\"full\",\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"https://localhost/wordpress/wp-content/uploads/2021/02/kim1.jpg\" alt=\"\" class=\"wp-image-23\"/><figcaption>Notre venerable Kim Jong Un vous souhaite longue vie et bonheur.</figcaption></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Ceci est un site à la gloire de la dynastie des Kim, nos dictateurs bien aimés.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pleutrerie en bande organisé, coiffure tellement soin, les Kims ont compri ce qui fait l\'apanage d\'un vrai dictateur.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Ajouter des compositions de blocs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les compositions de blocs sont des groupes de blocs pré-conçus. Pour en ajouter un, sélectionnez le bouton Ajouter un bloc [+] dans la barre d’outils en haut de l’éditeur. Passez à l’onglet Compositions sous la barre de recherche, et choisissez une composition.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Encadrez vos images</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One inclut de sublimes bordures pour votre contenu. Avec un bloc d’image sélectionné, ouvrez le panneau «&nbsp;Styles&nbsp;» dans la barre latérale de l’éditeur. Sélectionnez le style de bloc «&nbsp;Cadre&nbsp;» pour l’activer.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Colonnes se chevauchant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One inclut également un style «&nbsp;chevauchement&nbsp;» pour le bloc colonnes. Sélectionnez un bloc colonnes puis ouvrez le panneau «&nbsp;styles&nbsp;» dans la barre latérale de l’éditeur. Sélectionnez le style de bloc «&nbsp;chevauchement&nbsp;» pour l’essayer.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n<p class=\"has-huge-font-size\">Besoin d’aide&nbsp;?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":75} -->\n<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Lire la documentation du thème</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Consulter les forums de support</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', '42-Project', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2021-02-19 12:33:44', '2021-02-19 11:33:44', '', 5, 'https://localhost/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-02-19 12:19:19', '2021-02-19 11:19:19', '', 'kim1', 'Notre venerable Kim Jong Un', 'inherit', 'open', 'closed', '', 'kim1', '', '', '2021-02-19 12:20:03', '2021-02-19 11:20:03', '', 5, 'https://localhost/wordpress/wp-content/uploads/2021/02/kim1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2021-02-19 12:27:04', '2021-02-19 11:27:04', '', 'kim2', 'Le soleil ne saurait briller plus que lui.', 'inherit', 'open', 'closed', '', 'kim2', '', '', '2021-02-19 12:27:39', '2021-02-19 11:27:39', '', 5, 'https://localhost/wordpress/wp-content/uploads/2021/02/kim2.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2021-02-19 12:34:24', '2021-02-19 11:34:24', '<!-- wp:heading {\"align\":\"wide\",\"className\":\"has-text-align-wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":119}}} -->\n<h2 class=\"alignwide has-text-align-wide\" style=\"font-size:119px;line-height:1.1\">ft_server by thsembel</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":null,\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n<div class=\"wp-block-columns alignwide is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"id\":24,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image alignfull size-large\"><img src=\"https://localhost/wordpress/wp-content/uploads/2021/02/kim2.jpg\" alt=\"\" class=\"wp-image-24\"/><figcaption>Le soleil ne saurait briller plus que lui.</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"align\":\"full\",\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"https://localhost/wordpress/wp-content/uploads/2021/02/kim1.jpg\" alt=\"\" class=\"wp-image-23\"/><figcaption>Notre venerable Kim Jong Un vous souhaite longue vie et bonheur.</figcaption></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Ceci est un site à la gloire de la dynastie des Kim, nos dictateurs bien aimés.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pleutrerie en bande organisé, coiffure tellement soin, les Kims ont compri ce qui fait l\'apanage d\'un vrai dictateur.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Ajouter des compositions de blocs</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les compositions de blocs sont des groupes de blocs pré-conçus. Pour en ajouter un, sélectionnez le bouton Ajouter un bloc [+] dans la barre d’outils en haut de l’éditeur. Passez à l’onglet Compositions sous la barre de recherche, et choisissez une composition.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Encadrez vos images</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One inclut de sublimes bordures pour votre contenu. Avec un bloc d’image sélectionné, ouvrez le panneau «&nbsp;Styles&nbsp;» dans la barre latérale de l’éditeur. Sélectionnez le style de bloc «&nbsp;Cadre&nbsp;» pour l’activer.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Colonnes se chevauchant</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One inclut également un style «&nbsp;chevauchement&nbsp;» pour le bloc colonnes. Sélectionnez un bloc colonnes puis ouvrez le panneau «&nbsp;styles&nbsp;» dans la barre latérale de l’éditeur. Sélectionnez le style de bloc «&nbsp;chevauchement&nbsp;» pour l’essayer.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n<p class=\"has-huge-font-size\">Besoin d’aide&nbsp;?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":75} -->\n<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Lire la documentation du thème</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Consulter les forums de support</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', '42-Project', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-02-19 12:34:24', '2021-02-19 11:34:24', '', 5, 'https://localhost/wordpress/?p=25', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu principal', 'menu-principal', 0),
(3, 'Menu secondaire', 'menu-secondaire', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'thsembel'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"9aba26951484d975daafc6a3daa33d357c7180539d9ac06c08c7716aa9d7fb61\";a:4:{s:10:\"expiration\";i:1614941122;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:84.0) Gecko/20100101 Firefox/84.0\";s:5:\"login\";i:1613731522;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'thsembel', '$P$Be46oV6ZALeUg24L9Hicy2NQEpbD6K/', 'thsembel', 'thsembel@sutdent.42.fr', 'https://localhost/wordpress', '2021-02-19 10:45:13', '', 0, 'thsembel');

--
-- Indexes for dumped tables
--

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
