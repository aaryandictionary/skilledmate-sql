-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2020 at 12:35 AM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `i6676573_wp3`
--
CREATE DATABASE IF NOT EXISTS `i6676573_wp3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `i6676573_wp3`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.glacademy.in', 'yes'),
(2, 'home', 'http://www.glacademy.in', 'yes'),
(3, 'blogname', 'Miller &amp; Cole', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'q0f68b04ndd2@sg2plcpnl0086.prod.sin2.secureserver.net', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:27:\"coblocks/class-coblocks.php\";i:1;s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'go', 'yes'),
(41, 'stylesheet', 'go', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '/home/q0f68b04ndd2/public_html/wp-content/uploads', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '10', 'yes'),
(82, 'page_on_front', '9', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1616008229', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(136, 'auto_update_plugins', 'a:1:{i:0;s:27:\"coblocks/class-coblocks.php\";}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(462, 'WPLANG', 'en', 'yes'),
(137, 'auto_update_themes', 'a:1:{i:0;s:2:\"go\";}', 'yes'),
(138, 'theme_mods_go', 'a:14:{s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:1;s:8:\"footer-1\";i:2;}s:9:\"copyright\";s:28:\"Proudly powered by WordPress\";s:12:\"design_style\";s:11:\"traditional\";s:16:\"header_variation\";s:8:\"header-2\";s:16:\"footer_variation\";s:8:\"footer-2\";s:12:\"color_scheme\";s:3:\"two\";s:23:\"header_background_color\";s:7:\"#f3f1f0\";s:11:\"page_titles\";i:0;s:20:\"social_icon_facebook\";s:24:\"https://www.facebook.com\";s:19:\"social_icon_twitter\";s:19:\"https://twitter.com\";s:21:\"social_icon_instagram\";s:25:\"https://www.instagram.com\";s:20:\"social_icon_linkedin\";s:24:\"https://www.linkedin.com\";s:21:\"social_icon_pinterest\";s:25:\"https://www.pinterest.com\";s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(130, 'finished_updating_comment_type', '1', 'yes'),
(104, 'cron', 'a:6:{i:1605535830;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1605553829;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605553830;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1605553833;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605985829;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(160, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(466, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:2:\"en\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1605522289;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(139, 'wpnux_export_uid', '3758a75d-887b-4ecc-a8d8-bc731d597349', 'no'),
(140, 'wpnux_export_data', '{\"_meta\":{\"country\":\"IN\",\"datetime\":\"2020-09-18 19:12:19\",\"delivery_options\":[],\"domain\":\"www.glacademy.in\",\"export_uid\":\"3758a75d-887b-4ecc-a8d8-bc731d597349\",\"features\":[\"blog\",\"info\",\"portfolio\"],\"hostname\":\"sg2plcpnl0086.prod.sin2.secureserver.net\",\"locale\":\"en_US\",\"payment_gateways\":[],\"persona\":\"helpful_friend\",\"postal_code\":null,\"premium\":false,\"private_label\":true,\"product\":\"cpanel\",\"store\":false,\"style\":\"traditional\",\"template\":\"miller\",\"vertical\":\"professional\"},\"content\":{\"posts\":{\"home-page\":{\"post_type\":\"page\",\"post_title\":\"Home\",\"post_content\":\"<!-- wp:cover {\\\"overlayColor\\\":\\\"tertiary\\\",\\\"align\\\":\\\"full\\\"} -->\\n<div class=\\\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\\\"><div class=\\\"wp-block-cover__inner-container\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":1,\\\"textColor\\\":\\\"secondary\\\"} -->\\n<h1 class=\\\"has-text-align-center has-secondary-color has-text-align-center\\\">Fearless. Passionate. Experienced.<\\/h1>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\",\\\"textColor\\\":\\\"secondary\\\"} -->\\n<p class=\\\"has-text-align-center has-secondary-color has-text-color\\\">Helping businesses protect their brand, content and image throughout the world for more than 30 years. We help businesses protect themselves.<\\/p>\\n<!-- \\/wp:paragraph --><\\/div><\\/div>\\n<!-- \\/wp:cover -->\\n\\n<!-- wp:image {\\\"align\\\":\\\"wide\\\",\\\"id\\\":{{image-1}},\\\"sizeSlug\\\":\\\"large\\\"} -->\\n<figure class=\\\"wp-block-image alignwide size-large\\\"><img src=\\\"{{image-1:file}}\\\" alt=\\\"{{image-1:post_content}}\\\" class=\\\"wp-image-{{image-1}}\\\"\\/><\\/figure>\\n<!-- \\/wp:image -->\\n\\n<!-- wp:columns {\\\"align\\\":\\\"wide\\\"} -->\\n<div class=\\\"wp-block-columns alignwide\\\"><!-- wp:column {\\\"width\\\":66.66} -->\\n<div class=\\\"wp-block-column\\\" style=\\\"flex-basis:66.66%\\\"><!-- wp:heading -->\\n<h2>Helping the leaders of successful online businesses protect everything.<\\/h2>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph -->\\n<p>Miller &amp; Cole is tremendously proud of the impact that we have made in helping our clients by providing quality patent, trademark and legal services. The patent and trademark attorneys at Miller &amp; Cole have successfully represented and advised hundreds of clients over the last 20 years.<\\/p>\\n<!-- \\/wp:paragraph -->\\n\\n<!-- wp:paragraph -->\\n<p>We are confident that our team\'s unique experiences and trademark law focus will absolutely be an asset to your business.<\\/p>\\n<!-- \\/wp:paragraph -->\\n\\n<!-- wp:button {\\\"borderRadius\\\":5,\\\"align\\\":\\\"none\\\",\\\"className\\\":\\\"is-style-fill\\\"} -->\\n<div class=\\\"wp-block-button is-style-fill\\\"><a class=\\\"wp-block-button__link\\\" style=\\\"border-radius:5px\\\" href=\\\"{{about-page:permalink}}\\\">Learn More<\\/a><\\/div>\\n<!-- \\/wp:button --><\\/div>\\n<!-- \\/wp:column -->\\n\\n<!-- wp:column {\\\"width\\\":33.33} -->\\n<div class=\\\"wp-block-column\\\" style=\\\"flex-basis:33.33%\\\"><!-- wp:paragraph -->\\n<p><strong>Contact Us<\\/strong><\\/p>\\n<!-- \\/wp:paragraph -->\\n\\n<!-- wp:paragraph -->\\n<p>123 Example Rd<br>Scottsdale, AZ 85260<\\/p>\\n<!-- \\/wp:paragraph -->\\n\\n<!-- wp:paragraph -->\\n<p>email@example.com<br>(555) 555-5555<\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column --><\\/div>\\n<!-- \\/wp:columns -->\\n\\n<!-- wp:group {\\\"backgroundColor\\\":\\\"tertiary\\\",\\\"align\\\":\\\"full\\\"} -->\\n<div class=\\\"wp-block-group alignfull has-tertiary-background-color has-background\\\"><div class=\\\"wp-block-group__inner-container\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\"} -->\\n<h2 class=\\\"has-text-align-center\\\">Our Services<\\/h2>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:spacer {\\\"height\\\":20} -->\\n<div style=\\\"height:20px\\\" aria-hidden=\\\"true\\\" class=\\\"wp-block-spacer\\\"><\\/div>\\n<!-- \\/wp:spacer -->\\n\\n<!-- wp:columns -->\\n<div class=\\\"wp-block-columns\\\"><!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":4} -->\\n<h4 class=\\\"has-text-align-center\\\"><em>Patent Applications<\\/em><\\/h4>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\"} -->\\n<p class=\\\"has-text-align-center\\\">A provisional patent application can be an effective tool for businesses and individuals seeking to acquire patent rights.<\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column -->\\n\\n<!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":4} -->\\n<h4 class=\\\"has-text-align-center\\\"><em>Licensing Agreements<\\/em><\\/h4>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\"} -->\\n<p class=\\\"has-text-align-center\\\">A license agreement is a legal document used to harness the value of intellectual property - creations of the mind and more.<\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column -->\\n\\n<!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":4} -->\\n<h4 class=\\\"has-text-align-center\\\"><em>Copyrights<\\/em><\\/h4>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\"} -->\\n<p class=\\\"has-text-align-center\\\">A copyright, an important asset to the copyright owner, is a set of exclusive rights granted to the author of an original work. <\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column --><\\/div>\\n<!-- \\/wp:columns -->\\n\\n<!-- wp:button {\\\"borderRadius\\\":5,\\\"align\\\":\\\"center\\\",\\\"className\\\":\\\"aligncenter\\\"} -->\\n<div class=\\\"wp-block-button aligncenter\\\"><a class=\\\"wp-block-button__link\\\" href=\\\"{{home-page:permalink}}\\\" style=\\\"border-radius:5px\\\">Learn More<\\/a><\\/div>\\n<!-- \\/wp:button --><\\/div><\\/div>\\n<!-- \\/wp:group -->\\n\\n<!-- wp:gallery {\\\"ids\\\":[{{image-2}},{{image-3}},{{image-4}}],\\\"align\\\":\\\"wide\\\"} -->\\n<figure class=\\\"wp-block-gallery alignwide columns-3 is-cropped\\\"><ul class=\\\"blocks-gallery-grid\\\"><li class=\\\"blocks-gallery-item\\\"><figure><img src=\\\"{{image-2:file}}\\\" alt=\\\"{{image-2:post_content}}\\\" data-id=\\\"{{image-2}}\\\" data-full-url=\\\"{{image-2:file}}\\\" data-link=\\\"{{image-2:permalink}}\\\" class=\\\"wp-image-{{image-2}}\\\"\\/><\\/figure><\\/li><li class=\\\"blocks-gallery-item\\\"><figure><img src=\\\"{{image-3:file}}\\\" alt=\\\"{{image-3:post_content}}\\\" data-id=\\\"{{image-3}}\\\" data-full-url=\\\"{{image-3:file}}\\\" data-link=\\\"{{image-3:permalink}}\\\" class=\\\"wp-image-{{image-3}}\\\"\\/><\\/figure><\\/li><li class=\\\"blocks-gallery-item\\\"><figure><img src=\\\"{{image-4:file}}\\\" alt=\\\"{{image-4:post_content}}\\\" data-id=\\\"{{image-4}}\\\" data-full-url=\\\"{{image-4:file}}\\\" data-link=\\\"{{image-4:permalink}}\\\" class=\\\"wp-image-{{image-4}}\\\"\\/><\\/figure><\\/li><\\/ul><\\/figure>\\n<!-- \\/wp:gallery -->\"},\"blog-page\":{\"post_type\":\"page\",\"post_title\":\"Blog\"},\"blog-post-1\":{\"post_type\":\"post\",\"post_title\":\"Blog Post Title\",\"post_content\":\"<!-- wp:paragraph -->\\r\\n<p>What goes into a blog post? Helpful, industry-specific content that: 1) gives readers a useful takeaway, and 2) shows you\\u2019re an industry expert.<\\/p>\\r\\n<!-- \\/wp:paragraph -->\\r\\n\\r\\n<!-- wp:paragraph -->\\r\\n<p>Use your company\\u2019s blog posts to opine on current industry topics, humanize your company, and show how your products and services can help people.<\\/p>\\r\\n<!-- \\/wp:paragraph -->\"},\"about-page\":{\"post_type\":\"page\",\"post_title\":\"About\",\"post_content\":\"<!-- wp:cover {\\\"overlayColor\\\":\\\"tertiary\\\",\\\"align\\\":\\\"full\\\"} -->\\n<div class=\\\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\\\"><div class=\\\"wp-block-cover__inner-container\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":1,\\\"textColor\\\":\\\"secondary\\\"} -->\\n<h1 class=\\\"has-secondary-color has-text-align-center\\\">Protecting your ideas<\\/h1>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\",\\\"textColor\\\":\\\"secondary\\\"} -->\\n<p class=\\\"has-text-color has-text-align-center has-secondary-color\\\">Miller &amp; Cole is tremendously proud of the impact that we have made in helping our clients by providing quality legal services and exceptional customer service.&nbsp;&nbsp;<\\/p>\\n<!-- \\/wp:paragraph --><\\/div><\\/div>\\n<!-- \\/wp:cover -->\\n\\n<!-- wp:columns {\\\"align\\\":\\\"wide\\\"} -->\\n<div class=\\\"wp-block-columns alignwide\\\"><!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":3} -->\\n<h3 class=\\\"has-text-align-center\\\">Quality Results<\\/h3>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph -->\\n<p>Our goal is to create assets from our clients\\u2019 innovations through patent, trademark and copyright law.\\u00a0 We take great pride in providing quality trademark legal services and exceptional customer service every single day. We\'re absolutely here for you.<\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column -->\\n\\n<!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":3} -->\\n<h3 class=\\\"has-text-align-center\\\">Experienced<\\/h3>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph -->\\n<p>The attorneys at Miller &amp; Cole work as a team to exceed each of our clients\\u2019 expectations. We have 30+ years of high-level experience helping businesses protecting the time, money and resources spent developing ideas and inventions.<\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column --><\\/div>\\n<!-- \\/wp:columns -->\\n\\n<!-- wp:image {\\\"align\\\":\\\"wide\\\",\\\"id\\\":{{image-5}},\\\"sizeSlug\\\":\\\"full\\\"} -->\\n<figure class=\\\"wp-block-image alignwide size-full\\\"><img src=\\\"{{image-5:file}}\\\" alt=\\\"{{image-5:post_content}}\\\" class=\\\"wp-image-{{image-5}}\\\"\\/><\\/figure>\\n<!-- \\/wp:image -->\\n\\n<!-- wp:columns {\\\"align\\\":\\\"wide\\\"} -->\\n<div class=\\\"wp-block-columns alignwide\\\"><!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":3} -->\\n<h3 class=\\\"has-text-align-center\\\">Contact<\\/h3>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\"} -->\\n<p class=\\\"has-text-align-center\\\">Office: (555) 555-5555<br>email@example.com<\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column -->\\n\\n<!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":3} -->\\n<h3 class=\\\"has-text-align-center\\\">Location<\\/h3>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\"} -->\\n<p class=\\\"has-text-align-center\\\">123 Example Rd<br>Scottsdale, AZ 85260<\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column -->\\n\\n<!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":3} -->\\n<h3 class=\\\"has-text-align-center\\\">Connect<\\/h3>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\"} -->\\n<p class=\\\"has-text-align-center\\\"><a href=\\\"https:\\/\\/twitter.com\\\">Twitter<\\/a><br><a href=\\\"https:\\/\\/www.facebook.com\\\">Facebook<\\/a><br><\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column --><\\/div>\\n<!-- \\/wp:columns -->\"},\"contact-page\":{\"post_type\":\"page\",\"post_title\":\"Contact\",\"post_content\":\"<!-- wp:cover {\\\"overlayColor\\\":\\\"tertiary\\\",\\\"align\\\":\\\"full\\\"} -->\\n<div class=\\\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\\\"><div class=\\\"wp-block-cover__inner-container\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":1,\\\"textColor\\\":\\\"secondary\\\"} -->\\n<h1 class=\\\"has-secondary-color has-text-align-center\\\">Send us a Message<\\/h1>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\",\\\"textColor\\\":\\\"secondary\\\"} -->\\n<p class=\\\"has-text-color has-text-align-center has-secondary-color\\\">To contact us online, please complete this form below. We will be in touch with you as soon as possible - so we can help protect your ideas. <\\/p>\\n<!-- \\/wp:paragraph --><\\/div><\\/div>\\n<!-- \\/wp:cover -->\\n\\n<!-- wp:coblocks\\/form -->\\n<!-- wp:coblocks\\/field-name \\/-->\\n\\n<!-- wp:coblocks\\/field-email {\\\"required\\\":true} \\/-->\\n\\n<!-- wp:coblocks\\/field-textarea {\\\"required\\\":true} \\/-->\\n<!-- wp:coblocks\\/field-submit-button {\\\"submitButtonText\\\":\\\"Contact Us\\\"} \\/-->\\n<!-- \\/wp:coblocks\\/form -->\\n\\n<!-- wp:columns {\\\"align\\\":\\\"wide\\\"} -->\\n<div class=\\\"wp-block-columns alignwide\\\"><!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":3} -->\\n<h3 class=\\\"has-text-align-center\\\">Contact<\\/h3>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\"} -->\\n<p class=\\\"has-text-align-center\\\">Office: (555) 555-5555<br>email@example.com<\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column -->\\n\\n<!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":3} -->\\n<h3 class=\\\"has-text-align-center\\\">Location<\\/h3>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\"} -->\\n<p class=\\\"has-text-align-center\\\">123 Example Rd<br>Scottsdale, AZ 85260<\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column -->\\n\\n<!-- wp:column -->\\n<div class=\\\"wp-block-column\\\"><!-- wp:heading {\\\"align\\\":\\\"center\\\",\\\"level\\\":3} -->\\n<h3 class=\\\"has-text-align-center\\\">Connect<\\/h3>\\n<!-- \\/wp:heading -->\\n\\n<!-- wp:paragraph {\\\"align\\\":\\\"center\\\"} -->\\n<p class=\\\"has-text-align-center\\\"><a href=\\\"https:\\/\\/twitter.com\\\">Twitter<\\/a><br><a href=\\\"https:\\/\\/www.facebook.com\\\">Facebook<\\/a><br><\\/p>\\n<!-- \\/wp:paragraph --><\\/div>\\n<!-- \\/wp:column --><\\/div>\\n<!-- \\/wp:columns -->\"}},\"options\":{\"WPLANG\":\"en_US\",\"blogname\":\"Miller & Cole\",\"blogdescription\":\"\",\"show_on_front\":\"page\",\"page_on_front\":\"{{home-page}}\",\"page_for_posts\":\"{{blog-page}}\",\"wp_page_for_privacy_policy\":\"\",\"permalink_structure\":\"\\/%postname%\\/\",\"stylesheet\":\"go\",\"template\":\"go\",\"active_plugins\":[\"coblocks\\/class-coblocks.php\"],\"auto_update_plugins\":[\"coblocks\\/class-coblocks.php\"],\"auto_update_themes\":[\"go\"]},\"theme_mods\":{\"copyright\":\"Proudly powered by WordPress\",\"design_style\":\"traditional\",\"header_variation\":\"header-2\",\"footer_variation\":\"footer-2\",\"color_scheme\":\"two\",\"header_background_color\":\"#f3f1f0\",\"page_titles\":0,\"social_icon_facebook\":\"https:\\/\\/www.facebook.com\",\"social_icon_twitter\":\"https:\\/\\/twitter.com\",\"social_icon_instagram\":\"https:\\/\\/www.instagram.com\",\"social_icon_linkedin\":\"https:\\/\\/www.linkedin.com\",\"social_icon_pinterest\":\"https:\\/\\/www.pinterest.com\"},\"attachments\":{\"image-1\":{\"post_title\":\"Image 1\",\"post_content\":\"Image description\",\"file\":\"https:\\/\\/img1.wsimg.com\\/wpnux\\/v2\\/starter-content\\/templates\\/miller\\/attachments\\/image-1.jpg\"},\"image-2\":{\"post_title\":\"Image 2\",\"post_content\":\"Image description\",\"file\":\"https:\\/\\/img1.wsimg.com\\/wpnux\\/v2\\/starter-content\\/templates\\/miller\\/attachments\\/image-2.jpg\"},\"image-3\":{\"post_title\":\"Image 3\",\"post_content\":\"Image description\",\"file\":\"https:\\/\\/img1.wsimg.com\\/wpnux\\/v2\\/starter-content\\/templates\\/miller\\/attachments\\/image-3.jpg\"},\"image-4\":{\"post_title\":\"Image 4\",\"post_content\":\"Image description\",\"file\":\"https:\\/\\/img1.wsimg.com\\/wpnux\\/v2\\/starter-content\\/templates\\/miller\\/attachments\\/image-4.jpg\"},\"image-5\":{\"post_title\":\"Image 5\",\"post_content\":\"Image description\",\"file\":\"https:\\/\\/img1.wsimg.com\\/wpnux\\/v2\\/starter-content\\/templates\\/miller\\/attachments\\/image-5.jpg\"}},\"nav_menus\":{\"primary\":{\"name\":\"Primary Menu\",\"items\":{\"page_about\":{\"type\":\"post_type\",\"object\":\"page\",\"object_id\":\"{{about-page}}\"},\"page_contact\":{\"type\":\"post_type\",\"object\":\"page\",\"object_id\":\"{{contact-page}}\"}}},\"footer-1\":{\"name\":\"Footer Menu\",\"items\":{\"page_about\":{\"type\":\"post_type\",\"object\":\"page\",\"object_id\":\"{{about-page}}\"},\"page_contact\":{\"type\":\"post_type\",\"object\":\"page\",\"object_id\":\"{{contact-page}}\"}}}}},\"plugins\":{\"coblocks\\/class-coblocks.php\":\"coblocks\"},\"themes\":{\"go\":\"go\"}}', 'no'),
(132, 'current_theme', 'Go', 'yes'),
(134, 'theme_switched', '', 'yes'),
(135, 'coblocks_date_installed', '2020-09-18 07:12:41', 'yes'),
(141, 'wpnux_imported', '2020-09-18 19:13:43', 'no'),
(142, 'wpnux_took_ms', '84962', 'no'),
(143, 'wpnux_debug_log', '2020-09-18 19:11:41 wpnux_api_health_check - start\n2020-09-18 19:11:42 wpnux_api_health_check - success\n2020-09-18 19:11:44 wpem_render_page\n2020-09-18 19:12:18 wpem_nux_import_ajax_callback - start\n2020-09-18 19:12:36 wpem_install_extensions:switch_theme - go\n2020-09-18 19:12:41 wpem_install_extensions:activate_plugins - [\"coblocks\\/class-coblocks.php\"]\n2020-09-18 19:12:41 WPNUX_Importer::run - start\n2020-09-18 19:12:41 WPNUX_Importer::attachments - start\n2020-09-18 19:12:51 WPNUX_Importer::attachments:image-1 - success\n2020-09-18 19:13:00 WPNUX_Importer::attachments:image-2 - success\n2020-09-18 19:13:10 WPNUX_Importer::attachments:image-3 - success\n2020-09-18 19:13:23 WPNUX_Importer::attachments:image-4 - success\n2020-09-18 19:13:43 WPNUX_Importer::attachments:image-5 - success\n2020-09-18 19:13:43 WPNUX_Importer::attachments - success\n2020-09-18 19:13:43 WPNUX_Importer::posts - start\n2020-09-18 19:13:43 WPNUX_Importer::posts:home-page - success\n2020-09-18 19:13:43 WPNUX_Importer::posts:blog-page - success\n2020-09-18 19:13:43 WPNUX_Importer::posts:blog-post-1 - success\n2020-09-18 19:13:43 WPNUX_Importer::posts:about-page - success\n2020-09-18 19:13:43 WPNUX_Importer::posts:contact-page - success\n2020-09-18 19:13:43 WPNUX_Importer::posts - success\n2020-09-18 19:13:43 WPNUX_Importer::options - start\n2020-09-18 19:13:43 WPNUX_Importer::options:WPLANG - success\n2020-09-18 19:13:43 WPNUX_Importer::options:blogname - success\n2020-09-18 19:13:43 WPNUX_Importer::options:blogdescription - success\n2020-09-18 19:13:43 WPNUX_Importer::options:show_on_front - success\n2020-09-18 19:13:43 WPNUX_Importer::options:page_on_front - success\n2020-09-18 19:13:43 WPNUX_Importer::options:page_for_posts - success\n2020-09-18 19:13:43 WPNUX_Importer::options:wp_page_for_privacy_policy - success\n2020-09-18 19:13:43 WPNUX_Importer::options:permalink_structure - success\n2020-09-18 19:13:43 WPNUX_Importer::options:stylesheet - success\n2020-09-18 19:13:43 WPNUX_Importer::options:template - success\n2020-09-18 19:13:43 WPNUX_Importer::options:auto_update_plugins - success\n2020-09-18 19:13:43 WPNUX_Importer::options:auto_update_themes - success\n2020-09-18 19:13:43 WPNUX_Importer::options - success\n2020-09-18 19:13:43 WPNUX_Importer::nav_menus - start\n2020-09-18 19:13:43 WPNUX_Importer::nav_menus:primary - success\n2020-09-18 19:13:43 WPNUX_Importer::nav_menus:footer-1 - success\n2020-09-18 19:13:43 WPNUX_Importer::nav_menus - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods - start\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:copyright - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:design_style - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:header_variation - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:footer_variation - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:color_scheme - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:header_background_color - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:page_titles - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:social_icon_facebook - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:social_icon_twitter - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:social_icon_instagram - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:social_icon_linkedin - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods:social_icon_pinterest - success\n2020-09-18 19:13:43 WPNUX_Importer::theme_mods - success\n2020-09-18 19:13:43 WPNUX_Importer::run - success\n2020-09-18 19:13:48 wpem_nux_import_ajax_callback - success\n2020-09-18 19:13:48 wpem_self_destruct\n', 'no'),
(144, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(153, 'widget_text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(154, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'widget_rss', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(158, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1605534966;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:27:\"coblocks/class-coblocks.php\";s:5:\"2.3.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";s:6:\"2.15.1\";}s:8:\"response\";a:2:{s:27:\"coblocks/class-coblocks.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/coblocks\";s:4:\"slug\";s:8:\"coblocks\";s:6:\"plugin\";s:27:\"coblocks/class-coblocks.php\";s:11:\"new_version\";s:5:\"2.5.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/coblocks/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/coblocks.2.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/coblocks/assets/icon-256x256.jpg?rev=2243972\";s:2:\"1x\";s:61:\"https://ps.w.org/coblocks/assets/icon-128x128.jpg?rev=2243972\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/coblocks/assets/banner-1544x500.jpg?rev=2243972\";s:2:\"1x\";s:63:\"https://ps.w.org/coblocks/assets/banner-772x250.jpg?rev=2243972\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:43:\"w.org/plugins/limit-login-attempts-reloaded\";s:4:\"slug\";s:29:\"limit-login-attempts-reloaded\";s:6:\"plugin\";s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";s:11:\"new_version\";s:6:\"2.15.2\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/limit-login-attempts-reloaded/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/limit-login-attempts-reloaded.2.15.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon-256x256.png?rev=2295345\";s:2:\"1x\";s:82:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon-128x128.png?rev=2295345\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/limit-login-attempts-reloaded/assets/banner-1544x500.jpg?rev=2377159\";s:2:\"1x\";s:84:\"https://ps.w.org/limit-login-attempts-reloaded/assets/banner-772x250.jpg?rev=2377159\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(565, '_site_transient_timeout_theme_roots', '1605536767', 'no'),
(566, '_site_transient_theme_roots', 'a:4:{s:2:\"go\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(166, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1605522292;s:7:\"checked\";a:4:{s:2:\"go\";s:5:\"1.3.6\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:2:\"go\";a:6:{s:5:\"theme\";s:2:\"go\";s:11:\"new_version\";s:5:\"1.3.8\";s:3:\"url\";s:32:\"https://wordpress.org/themes/go/\";s:7:\"package\";s:50:\"https://downloads.wordpress.org/theme/go.1.3.8.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(167, 'can_compress_scripts', '0', 'no'),
(175, '_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:0;}', 'yes'),
(176, '_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:0;}', 'yes'),
(188, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":9,\"critical\":0}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 4, '_wp_attached_file', 'http://www.glacademy.in/wp-content/uploads/2020/09/image-1.jpg'),
(2, 3, '_wp_page_template', 'default'),
(4, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1224;s:4:\"file\";s:19:\"2020/09/image-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-1-300x204.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image-1-1024x696.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:696;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image-1-768x522.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:522;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"image-1-1536x1044.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1044;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"image-1-1200x816.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:816;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 4, '_source_url', 'https://img1.wsimg.com/wpnux/v2/starter-content/templates/miller/attachments/image-1.jpg'),
(6, 4, 'wpnux_id', 'image-1'),
(7, 5, '_wp_attached_file', 'http://www.glacademy.in/wp-content/uploads/2020/09/image-2.jpg'),
(8, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:1800;s:4:\"file\";s:19:\"2020/09/image-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-2-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image-2-819x1024.jpg\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image-2-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"image-2-1229x1536.jpg\";s:5:\"width\";i:1229;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"image-2-1200x1500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 5, '_source_url', 'https://img1.wsimg.com/wpnux/v2/starter-content/templates/miller/attachments/image-2.jpg'),
(10, 5, 'wpnux_id', 'image-2'),
(11, 6, '_wp_attached_file', 'http://www.glacademy.in/wp-content/uploads/2020/09/image-3.jpg'),
(12, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:1800;s:4:\"file\";s:19:\"2020/09/image-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-3-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image-3-819x1024.jpg\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image-3-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"image-3-1229x1536.jpg\";s:5:\"width\";i:1229;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"image-3-1200x1500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 6, '_source_url', 'https://img1.wsimg.com/wpnux/v2/starter-content/templates/miller/attachments/image-3.jpg'),
(14, 6, 'wpnux_id', 'image-3'),
(15, 7, '_wp_attached_file', 'http://www.glacademy.in/wp-content/uploads/2020/09/image-4.jpg'),
(16, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:1800;s:4:\"file\";s:19:\"2020/09/image-4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-4-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image-4-819x1024.jpg\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image-4-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"image-4-1229x1536.jpg\";s:5:\"width\";i:1229;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"image-4-1200x1500.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 7, '_source_url', 'https://img1.wsimg.com/wpnux/v2/starter-content/templates/miller/attachments/image-4.jpg'),
(18, 7, 'wpnux_id', 'image-4'),
(19, 8, '_wp_attached_file', 'http://www.glacademy.in/wp-content/uploads/2020/09/image-5.jpg'),
(20, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1224;s:4:\"file\";s:19:\"2020/09/image-5.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-5-300x204.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"image-5-1024x696.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:696;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image-5-768x522.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:522;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"image-5-1536x1044.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1044;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"image-5-1200x816.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:816;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 8, '_source_url', 'https://img1.wsimg.com/wpnux/v2/starter-content/templates/miller/attachments/image-5.jpg'),
(22, 8, 'wpnux_id', 'image-5'),
(23, 9, 'wpnux_id', 'home-page'),
(24, 10, 'wpnux_id', 'blog-page'),
(25, 11, 'wpnux_id', 'blog-post-1'),
(63, 9, '_edit_lock', '1600514640:1'),
(28, 12, 'wpnux_id', 'about-page'),
(29, 13, 'wpnux_id', 'contact-page'),
(30, 18, '_menu_item_type', 'post_type'),
(31, 18, '_menu_item_menu_item_parent', '0'),
(32, 18, '_menu_item_object_id', '12'),
(33, 18, '_menu_item_object', 'page'),
(34, 18, '_menu_item_target', ''),
(35, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 18, '_menu_item_xfn', ''),
(37, 18, '_menu_item_url', ''),
(38, 19, '_menu_item_type', 'post_type'),
(39, 19, '_menu_item_menu_item_parent', '0'),
(40, 19, '_menu_item_object_id', '13'),
(41, 19, '_menu_item_object', 'page'),
(42, 19, '_menu_item_target', ''),
(43, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 19, '_menu_item_xfn', ''),
(45, 19, '_menu_item_url', ''),
(46, 20, '_menu_item_type', 'post_type'),
(47, 20, '_menu_item_menu_item_parent', '0'),
(48, 20, '_menu_item_object_id', '12'),
(49, 20, '_menu_item_object', 'page'),
(50, 20, '_menu_item_target', ''),
(51, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 20, '_menu_item_xfn', ''),
(53, 20, '_menu_item_url', ''),
(54, 21, '_menu_item_type', 'post_type'),
(55, 21, '_menu_item_menu_item_parent', '0'),
(56, 21, '_menu_item_object_id', '13'),
(57, 21, '_menu_item_object', 'page'),
(58, 21, '_menu_item_target', ''),
(59, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 21, '_menu_item_xfn', ''),
(61, 21, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2020-09-18 19:12:48', '2020-09-18 19:12:48', 'Image description', 'Image 1', '', 'inherit', 'open', 'closed', '', 'image-1', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/wp-content/uploads/2020/09/image-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2020-09-18 19:12:58', '2020-09-18 19:12:58', 'Image description', 'Image 2', '', 'inherit', 'open', 'closed', '', 'image-2', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/wp-content/uploads/2020/09/image-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2020-09-18 19:13:07', '2020-09-18 19:13:07', 'Image description', 'Image 3', '', 'inherit', 'open', 'closed', '', 'image-3', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/wp-content/uploads/2020/09/image-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2020-09-18 19:13:17', '2020-09-18 19:13:17', 'Image description', 'Image 4', '', 'inherit', 'open', 'closed', '', 'image-4', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/wp-content/uploads/2020/09/image-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2020-09-18 19:13:41', '2020-09-18 19:13:41', 'Image description', 'Image 5', '', 'inherit', 'open', 'closed', '', 'image-5', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/wp-content/uploads/2020/09/image-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', '<!-- wp:cover {\"overlayColor\":\"tertiary\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"center\",\"level\":1,\"textColor\":\"secondary\"} -->\n<h1 class=\"has-text-align-center has-secondary-color has-text-align-center\">Fearless. Passionate. Experienced.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"secondary\"} -->\n<p class=\"has-text-align-center has-secondary-color has-text-color\">Helping businesses protect their brand, content and image throughout the world for more than 30 years. We help businesses protect themselves.</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:image {\"align\":\"wide\",\"id\":4,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image alignwide size-large\"><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-1.jpg\" alt=\"Image description\" class=\"wp-image-4\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:heading -->\n<h2>Helping the leaders of successful online businesses protect everything.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Miller &amp; Cole is tremendously proud of the impact that we have made in helping our clients by providing quality patent, trademark and legal services. The patent and trademark attorneys at Miller &amp; Cole have successfully represented and advised hundreds of clients over the last 20 years.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are confident that our team\'s unique experiences and trademark law focus will absolutely be an asset to your business.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"borderRadius\":5,\"align\":\"none\",\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\" style=\"border-radius:5px\" href=\"http://www.glacademy.in/about/\">Learn More</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph -->\n<p><strong>Contact Us</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>123 Example Rd<br>Scottsdale, AZ 85260</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>email@example.com<br>(555) 555-5555</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:group {\"backgroundColor\":\"tertiary\",\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull has-tertiary-background-color has-background\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Our Services</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\"><em>Patent Applications</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A provisional patent application can be an effective tool for businesses and individuals seeking to acquire patent rights.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\"><em>Licensing Agreements</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A license agreement is a legal document used to harness the value of intellectual property - creations of the mind and more.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\"><em>Copyrights</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A copyright, an important asset to the copyright owner, is a set of exclusive rights granted to the author of an original work. </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:button {\"borderRadius\":5,\"align\":\"center\",\"className\":\"aligncenter\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://www.glacademy.in/home/\" style=\"border-radius:5px\">Learn More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:gallery {\"ids\":[5,6,7],\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-2.jpg\" alt=\"Image description\" data-id=\"5\" data-full-url=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-2.jpg\" data-link=\"http://www.glacademy.in/image-2/\" class=\"wp-image-5\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-3.jpg\" alt=\"Image description\" data-id=\"6\" data-full-url=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-3.jpg\" data-link=\"http://www.glacademy.in/image-3/\" class=\"wp-image-6\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-4.jpg\" alt=\"Image description\" data-id=\"7\" data-full-url=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-4.jpg\" data-link=\"http://www.glacademy.in/image-4/\" class=\"wp-image-7\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/home/', 0, 'page', '', 0),
(3, 1, '2020-09-18 12:10:34', '2020-09-18 12:10:34', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://www.glacademy.in.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-18 12:10:34', '2020-09-18 12:10:34', '', 0, 'http://www.glacademy.in/?page_id=3', 0, 'page', '', 0),
(10, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/blog/', 0, 'page', '', 0),
(11, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', '<!-- wp:paragraph -->\r\n<p>What goes into a blog post? Helpful, industry-specific content that: 1) gives readers a useful takeaway, and 2) shows you’re an industry expert.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Use your company’s blog posts to opine on current industry topics, humanize your company, and show how your products and services can help people.</p>\r\n<!-- /wp:paragraph -->', 'Blog Post Title', '', 'publish', 'open', 'open', '', 'blog-post-title', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/blog-post-title/', 0, 'post', '', 0),
(12, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', '<!-- wp:cover {\"overlayColor\":\"tertiary\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"center\",\"level\":1,\"textColor\":\"secondary\"} -->\n<h1 class=\"has-secondary-color has-text-align-center\">Protecting your ideas</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"secondary\"} -->\n<p class=\"has-text-color has-text-align-center has-secondary-color\">Miller &amp; Cole is tremendously proud of the impact that we have made in helping our clients by providing quality legal services and exceptional customer service.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Quality Results</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our goal is to create assets from our clients’ innovations through patent, trademark and copyright law.  We take great pride in providing quality trademark legal services and exceptional customer service every single day. We\'re absolutely here for you.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Experienced</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The attorneys at Miller &amp; Cole work as a team to exceed each of our clients’ expectations. We have 30+ years of high-level experience helping businesses protecting the time, money and resources spent developing ideas and inventions.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:image {\"align\":\"wide\",\"id\":8,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignwide size-full\"><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-5.jpg\" alt=\"Image description\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Contact</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Office: (555) 555-5555<br>email@example.com</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Location</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">123 Example Rd<br>Scottsdale, AZ 85260</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Connect</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"><a href=\"https://twitter.com\">Twitter</a><br><a href=\"https://www.facebook.com\">Facebook</a><br></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/about/', 0, 'page', '', 0),
(13, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', '<!-- wp:cover {\"overlayColor\":\"tertiary\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"center\",\"level\":1,\"textColor\":\"secondary\"} -->\n<h1 class=\"has-secondary-color has-text-align-center\">Send us a Message</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"secondary\"} -->\n<p class=\"has-text-color has-text-align-center has-secondary-color\">To contact us online, please complete this form below. We will be in touch with you as soon as possible - so we can help protect your ideas. </p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:coblocks/form -->\n<!-- wp:coblocks/field-name /-->\n\n<!-- wp:coblocks/field-email {\"required\":true} /-->\n\n<!-- wp:coblocks/field-textarea {\"required\":true} /-->\n<!-- wp:coblocks/field-submit-button {\"submitButtonText\":\"Contact Us\"} /-->\n<!-- /wp:coblocks/form -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Contact</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Office: (555) 555-5555<br>email@example.com</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Location</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">123 Example Rd<br>Scottsdale, AZ 85260</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Connect</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"><a href=\"https://twitter.com\">Twitter</a><br><a href=\"https://www.facebook.com\">Facebook</a><br></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/contact/', 0, 'page', '', 0),
(14, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', '<!-- wp:cover {\"overlayColor\":\"tertiary\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"center\",\"level\":1,\"textColor\":\"secondary\"} -->\n<h1 class=\"has-text-align-center has-secondary-color has-text-align-center\">Fearless. Passionate. Experienced.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"secondary\"} -->\n<p class=\"has-text-align-center has-secondary-color has-text-color\">Helping businesses protect their brand, content and image throughout the world for more than 30 years. We help businesses protect themselves.</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:image {\"align\":\"wide\",\"id\":4,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image alignwide size-large\"><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-1.jpg\" alt=\"Image description\" class=\"wp-image-4\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:heading -->\n<h2>Helping the leaders of successful online businesses protect everything.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Miller &amp; Cole is tremendously proud of the impact that we have made in helping our clients by providing quality patent, trademark and legal services. The patent and trademark attorneys at Miller &amp; Cole have successfully represented and advised hundreds of clients over the last 20 years.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are confident that our team\'s unique experiences and trademark law focus will absolutely be an asset to your business.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"borderRadius\":5,\"align\":\"none\",\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\" style=\"border-radius:5px\" href=\"http://www.glacademy.in/about/\">Learn More</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph -->\n<p><strong>Contact Us</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>123 Example Rd<br>Scottsdale, AZ 85260</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>email@example.com<br>(555) 555-5555</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:group {\"backgroundColor\":\"tertiary\",\"align\":\"full\"} -->\n<div class=\"wp-block-group alignfull has-tertiary-background-color has-background\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Our Services</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\"><em>Patent Applications</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A provisional patent application can be an effective tool for businesses and individuals seeking to acquire patent rights.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\"><em>Licensing Agreements</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A license agreement is a legal document used to harness the value of intellectual property - creations of the mind and more.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\"><em>Copyrights</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A copyright, an important asset to the copyright owner, is a set of exclusive rights granted to the author of an original work. </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:button {\"borderRadius\":5,\"align\":\"center\",\"className\":\"aligncenter\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://www.glacademy.in/home/\" style=\"border-radius:5px\">Learn More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:gallery {\"ids\":[5,6,7],\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-2.jpg\" alt=\"Image description\" data-id=\"5\" data-full-url=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-2.jpg\" data-link=\"http://www.glacademy.in/image-2/\" class=\"wp-image-5\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-3.jpg\" alt=\"Image description\" data-id=\"6\" data-full-url=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-3.jpg\" data-link=\"http://www.glacademy.in/image-3/\" class=\"wp-image-6\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-4.jpg\" alt=\"Image description\" data-id=\"7\" data-full-url=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-4.jpg\" data-link=\"http://www.glacademy.in/image-4/\" class=\"wp-image-7\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 9, 'http://www.glacademy.in/9-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', '<!-- wp:paragraph -->\r\n<p>What goes into a blog post? Helpful, industry-specific content that: 1) gives readers a useful takeaway, and 2) shows you’re an industry expert.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Use your company’s blog posts to opine on current industry topics, humanize your company, and show how your products and services can help people.</p>\r\n<!-- /wp:paragraph -->', 'Blog Post Title', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 11, 'http://www.glacademy.in/11-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', '<!-- wp:cover {\"overlayColor\":\"tertiary\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"center\",\"level\":1,\"textColor\":\"secondary\"} -->\n<h1 class=\"has-secondary-color has-text-align-center\">Protecting your ideas</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"secondary\"} -->\n<p class=\"has-text-color has-text-align-center has-secondary-color\">Miller &amp; Cole is tremendously proud of the impact that we have made in helping our clients by providing quality legal services and exceptional customer service.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Quality Results</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our goal is to create assets from our clients’ innovations through patent, trademark and copyright law.  We take great pride in providing quality trademark legal services and exceptional customer service every single day. We\'re absolutely here for you.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Experienced</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The attorneys at Miller &amp; Cole work as a team to exceed each of our clients’ expectations. We have 30+ years of high-level experience helping businesses protecting the time, money and resources spent developing ideas and inventions.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:image {\"align\":\"wide\",\"id\":8,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-image alignwide size-full\"><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-5.jpg\" alt=\"Image description\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Contact</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Office: (555) 555-5555<br>email@example.com</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Location</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">123 Example Rd<br>Scottsdale, AZ 85260</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Connect</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"><a href=\"https://twitter.com\">Twitter</a><br><a href=\"https://www.facebook.com\">Facebook</a><br></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 12, 'http://www.glacademy.in/12-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', '<!-- wp:cover {\"overlayColor\":\"tertiary\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"center\",\"level\":1,\"textColor\":\"secondary\"} -->\n<h1 class=\"has-secondary-color has-text-align-center\">Send us a Message</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"secondary\"} -->\n<p class=\"has-text-color has-text-align-center has-secondary-color\">To contact us online, please complete this form below. We will be in touch with you as soon as possible - so we can help protect your ideas. </p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:coblocks/form -->\n<!-- wp:coblocks/field-name /-->\n\n<!-- wp:coblocks/field-email {\"required\":true} /-->\n\n<!-- wp:coblocks/field-textarea {\"required\":true} /-->\n<!-- wp:coblocks/field-submit-button {\"submitButtonText\":\"Contact Us\"} /-->\n<!-- /wp:coblocks/form -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Contact</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Office: (555) 555-5555<br>email@example.com</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Location</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">123 Example Rd<br>Scottsdale, AZ 85260</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":3} -->\n<h3 class=\"has-text-align-center\">Connect</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\"><a href=\"https://twitter.com\">Twitter</a><br><a href=\"https://www.facebook.com\">Facebook</a><br></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 13, 'http://www.glacademy.in/13-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/18/', 0, 'nav_menu_item', '', 0),
(19, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/19/', 2, 'nav_menu_item', '', 0),
(20, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/20/', 0, 'nav_menu_item', '', 0),
(21, 1, '2020-09-18 19:13:43', '2020-09-18 19:13:43', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-09-18 19:13:43', '2020-09-18 19:13:43', '', 0, 'http://www.glacademy.in/21/', 2, 'nav_menu_item', '', 0),
(22, 1, '2020-09-18 19:17:37', '0000-00-00 00:00:00', '{\n    \"blogname\": {\n        \"value\": \"Harry & Potter\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 19:15:37\"\n    },\n    \"nav_menu_item[18]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://www.glacademy.in/about/\",\n            \"title\": \"Blog\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 1,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 19:15:37\"\n    },\n    \"go::header_variation\": {\n        \"value\": \"header-1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 19:17:37\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f0aad3f1-d8c6-4578-b740-cf08e7d3c1ec', '', '', '2020-09-18 19:17:37', '2020-09-18 19:17:37', '', 0, 'http://www.glacademy.in/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2020-09-18 19:20:13', '2020-09-18 19:20:13', '<!-- wp:cover {\"overlayColor\":\"tertiary\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-tertiary-background-color has-background-dim\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"center\",\"level\":1,\"textColor\":\"secondary\"} -->\n<h1 class=\"has-text-align-center has-secondary-color has-text-color\">Fearless. Passionate. Experienced.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"secondary\"} -->\n<p class=\"has-text-align-center has-secondary-color has-text-color\">Helping businesses protect their brand, content and image throughout the world for more than 30 years. We help businesses protect themselves.</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:image {\"align\":\"wide\",\"id\":4,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image alignwide size-large\"><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-1.jpg\" alt=\"Image description\" class=\"wp-image-4\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:heading -->\n<h2>Helping the leaders of successful online businesses protect everything.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Miller &amp; Cole is tremendously proud of the impact that we have made in helping our clients by providing quality patent, trademark and legal services. The patent and trademark attorneys at Miller &amp; Cole have successfully represented and advised hundreds of clients over the last 20 years.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are confident that our team\'s unique experiences and trademark law focus will absolutely be an asset to your business.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"borderRadius\":5,\"align\":\"none\",\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\" href=\"http://www.glacademy.in/about/\" style=\"border-radius:5px\">Learn More</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph -->\n<p><strong>Contact Us</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>123 Example Rd<br>Scottsdale, AZ 85260</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>email@example.com<br>(555) 555-5555</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:group {\"align\":\"full\",\"backgroundColor\":\"tertiary\"} -->\n<div class=\"wp-block-group alignfull has-tertiary-background-color has-background\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Our Services</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\"><em>Patent Applications</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A provisional patent application can be an effective tool for businesses and individuals seeking to acquire patent rights.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\"><em>Licensing Agreements</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A license agreement is a legal document used to harness the value of intellectual property - creations of the mind and more.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\"><em>Copyrights</em></h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">A copyright, an important asset to the copyright owner, is a set of exclusive rights granted to the author of an original work. </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:button {\"borderRadius\":5,\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://www.glacademy.in/home/\" style=\"border-radius:5px\">Learn More</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:gallery {\"ids\":[5,6,7],\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-2.jpg\" alt=\"Image description\" data-id=\"5\" data-full-url=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-2.jpg\" data-link=\"http://www.glacademy.in/image-2/\" class=\"wp-image-5\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-3.jpg\" alt=\"Image description\" data-id=\"6\" data-full-url=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-3.jpg\" data-link=\"http://www.glacademy.in/image-3/\" class=\"wp-image-6\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-4.jpg\" alt=\"Image description\" data-id=\"7\" data-full-url=\"http://www.glacademy.in/wp-content/uploads/2020/09/image-4.jpg\" data-link=\"http://www.glacademy.in/image-4/\" class=\"wp-image-7\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:buttons {\"align\":\"center\"} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"borderRadius\":50,\"style\":{\"color\":{\"gradient\":\"linear-gradient(135deg,rgb(135,9,53) 0%,rgb(179,22,22) 100%)\",\"text\":\"#fffffa\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background:linear-gradient(135deg,rgb(135,9,53) 0%,rgb(179,22,22) 100%);color:#fffffa\">About Cervantes</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"borderRadius\":50,\"style\":{\"color\":{\"gradient\":\"linear-gradient(317deg,rgb(135,9,53) 0%,rgb(179,22,22) 100%)\",\"text\":\"#fffffa\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background:linear-gradient(317deg,rgb(135,9,53) 0%,rgb(179,22,22) 100%);color:#fffffa\">Contact us</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"borderRadius\":50,\"style\":{\"color\":{\"gradient\":\"linear-gradient(42deg,rgb(135,9,53) 0%,rgb(179,22,22) 100%)\",\"text\":\"#fffffa\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background:linear-gradient(42deg,rgb(135,9,53) 0%,rgb(179,22,22) 100%);color:#fffffa\">Books</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2020-09-18 19:20:13', '2020-09-18 19:20:13', '', 9, 'http://www.glacademy.in/9-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Primary Menu', 'primary-menu', 0),
(2, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(18, 1, 0),
(19, 1, 0),
(20, 2, 0),
(21, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'nav_menu', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"75a1b56c33f36f6f795d3cbae7eed02cab25cc1319dc04f48b1ba021a92bbb13\";a:4:{s:10:\"expiration\";i:1600629030;s:2:\"ip\";s:13:\"166.62.27.151\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:17.0) Gecko/20100101 Firefox/17.0\";s:5:\"login\";i:1600456230;}s:64:\"4a76157b8b9762cb1f3ad40d046ef27cb4a7199e68da48dd3aaf5dec16f8b59b\";a:4:{s:10:\"expiration\";i:1600629100;s:2:\"ip\";s:13:\"49.36.133.131\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600456300;}}'),
(17, 1, 'wp_user-settings', 'deleted'),
(18, 1, 'wp_user-settings-time', '1600456229');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'asthabhatt15', 'e0d3725aa5c132e06cc04952f2f98a13', 'admin', 'q0f68b04ndd2@sg2plcpnl0086.prod.sin2.secureserver.net', 'http://www.glacademy.in', '2020-09-18 12:10:34', '', 0, 'admin');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `jewellery_db`
--
CREATE DATABASE IF NOT EXISTS `jewellery_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jewellery_db`;

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `premium_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `premium_duration_in_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `help_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trail_period_in_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_email` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `premium_amount`, `premium_duration_in_month`, `contact_whatsapp`, `help_link`, `trail_period_in_days`, `created_at`, `updated_at`, `contact_email`) VALUES
(0, '499', '12', '+91 9389103859', 'https://youtu.be/LxhEW6B-DrM', '30', '2020-08-07 06:23:03', '2020-08-07 06:23:03', 'support@sarafavyapar.com');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_07_19_202524_create_subscription_payment_table', 1),
(9, '2020_07_19_202604_create_app_settings_table', 1),
(10, '2020_08_07_042637_create_referral_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('03bb43cdfdd3c6bed16c559026857f1951e0f146c7ee46fbd6112847f624c36fbf87185fa14aebcb', 2, 1, 'authToken', '[]', 0, '2020-08-10 15:14:08', '2020-08-10 15:14:08', '2021-08-10 08:14:08'),
('04843daa5da659b3ddfdcfe73c4d86fb3436f57cf8513e517674e423bc658c130bb8333bddfb587e', 8, 1, 'authToken', '[]', 0, '2020-08-11 01:51:35', '2020-08-11 01:51:35', '2021-08-10 18:51:35'),
('049e246a006748f1af46c1934da10d6b1190487387705104495a8c29157e4b1e6ddc269ab48a156e', 2, 1, 'authToken', '[]', 0, '2020-08-07 21:17:08', '2020-08-07 21:17:08', '2021-08-07 14:17:08'),
('087adfed5610e8f2fc3c0692afa37713eedc091100dcda06e5a67ed64a9d9d2f6f70de43ac2181fb', 2, 1, 'authToken', '[]', 0, '2020-08-11 01:28:06', '2020-08-11 01:28:06', '2021-08-10 18:28:06'),
('0eeccdcdd35dd290c8b450ef2439cf756d3f9cc1ff524e3b07223ee21d6d8f36a8cc609f9b0178bc', 3, 1, 'authToken', '[]', 0, '2020-08-09 19:03:25', '2020-08-09 19:03:25', '2021-08-09 12:03:25'),
('17ac42ebffd9916cce64647e4daef80c81d09b9abcb4edb529ee862b64f9e4b5c77666bc7a8bc340', 3, 1, 'authToken', '[]', 0, '2020-08-10 19:25:31', '2020-08-10 19:25:31', '2021-08-10 12:25:31'),
('264e007e99958e9a1dae2a76d22e62a8c7c542ff1711aa5622a1061a7e8bbfc8b4d09545a155cf3f', 3, 1, 'authToken', '[]', 0, '2020-08-10 09:22:48', '2020-08-10 09:22:48', '2021-08-10 02:22:48'),
('27b4371b8e730afa372fb50e97fca73ee7a3e9f3d71e8361f3359afefa7700af0ab5f7be977ddcb0', 2, 1, 'authToken', '[]', 0, '2020-08-07 13:24:22', '2020-08-07 13:24:22', '2021-08-07 06:24:22'),
('30cb6b0fce9dec9dd504a220ac53481cb30e8b7b628255fb65a75dce75e880bc8101df7e06acce63', 3, 1, 'authToken', '[]', 0, '2020-08-10 10:17:40', '2020-08-10 10:17:40', '2021-08-10 03:17:40'),
('359954205a0a9b1a2f3454ee3e415d30602765a56274160d849b4866b1ab655b518d14a5fb542e7e', 3, 1, 'authToken', '[]', 0, '2020-08-09 18:59:30', '2020-08-09 18:59:30', '2021-08-09 11:59:30'),
('4d91e45bc37b77e11f4d5b3299964d592c8d966a7b1f9f1428ac8eb6103cbe957e5fc9d4840215a2', 4, 1, 'authToken', '[]', 0, '2020-08-09 21:23:54', '2020-08-09 21:23:54', '2021-08-09 14:23:54'),
('54e079d4c4efb365c376c1db52b76126aff0d08de332f47f3c0f74fd1f7e26c71feea04ccb2daa34', 3, 1, 'authToken', '[]', 0, '2020-08-09 20:58:37', '2020-08-09 20:58:37', '2021-08-09 13:58:37'),
('5e5fa38727cc4bb0b8d32bb3bd54d1aaee37b8cedd73ac30ca48e5b03e3a95f9163357fe4b68a57d', 3, 1, 'authToken', '[]', 0, '2020-08-09 10:33:48', '2020-08-09 10:33:48', '2021-08-09 03:33:48'),
('613ac07b6b69eae7ba32f7c0815fb8868507bef7e72e5e2b755b99744938e495be61b3ed695c87ff', 3, 1, 'authToken', '[]', 0, '2020-08-09 18:50:30', '2020-08-09 18:50:30', '2021-08-09 11:50:30'),
('61745177f5133a957936156ac0ea24347cb19e48817a702c200a68bc672afa4208c57b85ba3f40f8', 8, 1, 'authToken', '[]', 0, '2020-08-11 03:35:47', '2020-08-11 03:35:47', '2021-08-10 20:35:47'),
('61f0339a3c5137f309d5942c148bb4dc41a4ed15d212f389492f6d22bc7155cc6c845d10d2c85c44', 2, 1, 'authToken', '[]', 0, '2020-08-08 21:34:21', '2020-08-08 21:34:21', '2021-08-08 14:34:21'),
('624ddaaf7f480d3dbcd8d717bf3d410990f528cd6306f0544c389c2ecf237a0c51b1766f76b8565f', 2, 1, 'authToken', '[]', 0, '2020-08-10 02:32:13', '2020-08-10 02:32:13', '2021-08-09 19:32:13'),
('6fd5c9742c568d3bbfd18449e52fb22379bead75a56374d69717647cd22d1cd7b547c623b222e4d6', 6, 1, 'authToken', '[]', 0, '2020-08-10 19:22:08', '2020-08-10 19:22:08', '2021-08-10 12:22:08'),
('875d86f6ad10b78adef3b1718306cae0136bf2e9cdab6f060dd3b74a0c3468619e1823f734902854', 2, 1, 'authToken', '[]', 0, '2020-08-09 17:04:09', '2020-08-09 17:04:09', '2021-08-09 10:04:09'),
('88e70a03a62b32c020b72134cd127aa32569c49964f4f10da43c5a4d16287e141186b6936d71afd5', 2, 1, 'authToken', '[]', 0, '2020-08-09 12:56:45', '2020-08-09 12:56:45', '2021-08-09 05:56:45'),
('924a3fec2b20682c097d75ff167986d09c2ef149efd55368aabc3e0846891ac10f4cd64593acf15a', 8, 1, 'authToken', '[]', 0, '2020-08-11 00:46:47', '2020-08-11 00:46:47', '2021-08-10 17:46:47'),
('96a3a7af884a3c5f5ad97d145af8ff3991e9c7a4c10b7495118fb3aa0eeb8ad46f04ec38529b1928', 2, 1, 'authToken', '[]', 0, '2020-08-10 23:56:32', '2020-08-10 23:56:32', '2021-08-10 16:56:32'),
('99639fc9122908fd999283ddb5affd46e4fdff6296cc0a15dd707d37b21cdb29880eb83cebb01f99', 9, 1, 'authToken', '[]', 0, '2020-08-11 22:45:36', '2020-08-11 22:45:36', '2021-08-11 15:45:36'),
('ab348bb5279e775d7efe8e197d7d9cef944616831e6caf6d3a16168504df1685a88014fd3b839ee0', 3, 1, 'authToken', '[]', 0, '2020-08-11 11:28:13', '2020-08-11 11:28:13', '2021-08-11 04:28:13'),
('c0a3f61594aaca6c55b4a47ca3b4429ef41519e05277a704200bbff11a8768724d92b5edc2ea2d99', 8, 1, 'authToken', '[]', 0, '2020-08-11 03:42:36', '2020-08-11 03:42:36', '2021-08-10 20:42:36'),
('c99252fdb21e7adf13cadb57a5aac8cc3c438ddfe65d352957efa8a03aea6e1d5cb4577005f96a0d', 8, 1, 'authToken', '[]', 0, '2020-08-11 01:29:54', '2020-08-11 01:29:54', '2021-08-10 18:29:54'),
('cdc58a0ce4657ed38609d190e53e453a49fae70a177d2ec2dfe7d2eb55fc0ab8e06fda221fa04a76', 4, 1, 'authToken', '[]', 0, '2020-08-11 22:26:06', '2020-08-11 22:26:06', '2021-08-11 15:26:06'),
('cf402591343851edf5aaf0259718e6cdc468038f35d1110c07d7021dc13ee4e910e86bbd21adf91e', 3, 1, 'authToken', '[]', 0, '2020-08-09 23:49:10', '2020-08-09 23:49:10', '2021-08-09 16:49:10'),
('cfc813a0b52bf9d892868f7f4c90d7ad8a42239a6656956fb34897c8b543571d87746bbb185f4a41', 2, 1, 'authToken', '[]', 0, '2020-08-09 09:18:39', '2020-08-09 09:18:39', '2021-08-09 02:18:39'),
('cfd9dae00f96ed42a8101634128d1d3b44213a46ac9fe08e449740d5fa9d1dfdd27b83f6cc654025', 8, 1, 'authToken', '[]', 0, '2020-08-11 00:47:30', '2020-08-11 00:47:30', '2021-08-10 17:47:30'),
('df2f68502f426a9ec76c3c625f7c7a04fcb5a10c8ef1a2a5730d4f12d14a7c58742f10bfab60c592', 8, 1, 'authToken', '[]', 0, '2020-08-11 00:42:39', '2020-08-11 00:42:39', '2021-08-10 17:42:39'),
('e00fd4cecb664a789e33bd42e1b70e49f447cb3f068313c78ac8460d4d1da57840833d7cde30df85', 2, 1, 'authToken', '[]', 0, '2020-08-09 17:11:37', '2020-08-09 17:11:37', '2021-08-09 10:11:37'),
('eafa24acc2eac86bda553f8091bcec49698362dadb8930a8efd39c18443c1a52ac947f5b579f3b90', 2, 1, 'authToken', '[]', 0, '2020-08-09 09:22:01', '2020-08-09 09:22:01', '2021-08-09 02:22:01'),
('f12295f19359e00ea03d2f655d01404f357310cdbf51e59a2c04c7d9f49cb43a42ab0a4cd07af6e9', 2, 1, 'authToken', '[]', 0, '2020-08-08 20:55:31', '2020-08-08 20:55:31', '2021-08-08 13:55:31'),
('f14195dfabc8bc2c852400ab457ed47280bc27338ff9b92d63cf3861094b55b4e880247bd06959ff', 3, 1, 'authToken', '[]', 0, '2020-08-10 09:20:05', '2020-08-10 09:20:05', '2021-08-10 02:20:05'),
('f503924c3a18120b33850e2ef5d126fef674a206a590b6b8e23e0ba40f8d28a3810c0e233922732d', 5, 1, 'authToken', '[]', 0, '2020-08-09 21:57:42', '2020-08-09 21:57:42', '2021-08-09 14:57:42'),
('fa9b1cdb808f9b895a034a8c0e34d8d645699fc3c919ad09f7e7c21b600c9c95459515186fb2f44a', 7, 1, 'authToken', '[]', 0, '2020-08-10 20:14:07', '2020-08-10 20:14:07', '2021-08-10 13:14:07'),
('fc1d4b58a7690a476efbd1eb5279220f5cf96dc15243e22c5f49d66745c97f88aa022cc9ac84a316', 1, 1, 'authToken', '[]', 0, '2020-08-06 23:35:51', '2020-08-06 23:35:51', '2021-08-07 05:05:51'),
('fe39dadc815cb106623c31789d3d15425e022672a7a6a349c00da477503205382f8f2687a45bfaa8', 3, 1, 'authToken', '[]', 0, '2020-08-07 18:44:07', '2020-08-07 18:44:07', '2021-08-07 11:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'iIKXSbfJCsGVf7UUPDk6QgJ2ZH4u7aHhL0etQnzq', NULL, 'http://localhost', 1, 0, 0, '2020-08-06 23:35:44', '2020-08-06 23:35:44'),
(2, NULL, 'Laravel Password Grant Client', 'O35tUBQYRjjBrxXR4eeOhbad4n7CniXWXu4KVbJS', 'users', 'http://localhost', 0, 1, 0, '2020-08-06 23:35:45', '2020-08-06 23:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-06 23:35:44', '2020-08-06 23:35:44');

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
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `referral_id` bigint(20) UNSIGNED NOT NULL,
  `to` bigint(20) NOT NULL,
  `from` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`referral_id`, `to`, `from`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 20, '2020-08-06 23:35:51', '2020-08-06 23:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_payment`
--

CREATE TABLE `subscription_payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_txn_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `premium_until` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_premium` int(11) DEFAULT NULL,
  `premium_until` timestamp NULL DEFAULT NULL,
  `premium_time` timestamp NULL DEFAULT NULL,
  `profile_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `is_premium`, `premium_until`, `premium_time`, `profile_img`, `email`, `shop_name`, `shop_address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aryanddd', '2348294792', NULL, NULL, NULL, '/home/q0f68b04ndd2/public_html/jewellery/public/images/1596863235.png', NULL, NULL, NULL, NULL, '$2y$10$xEnZK3UoSP2laBMKsKhoW.Fo1xlAnAGdxaL4ctqL8zLta7feTePOG', NULL, '2020-08-06 23:35:51', '2020-08-08 12:07:16'),
(2, 'Aryan Raj', '9358174783', 0, NULL, NULL, 'http://glacademy.in/jewellery/public/images/1596908272.jpg', 'hsshshs', 'New Brand Shop', 'Greater Noida', NULL, '$2y$10$9NJsTNjDZwobw6qCjkd66eCAplBLRkHn9VThyAxAaIHkNULBfEn4a', NULL, '2020-08-07 13:24:21', '2020-08-09 13:00:02'),
(3, 'Divyansh', '7017351085', 0, NULL, NULL, 'http://glacademy.in/jewellery/public/images/1596957585.jpg', 'divyanshagrawal014@gmail.com', 'Sarafa Vyapar', 'raya gali sarafa bazaar', NULL, '$2y$10$MpULcMjh0Euz22vxtLzDWe7j4WLPH5hN.zKUu32yZ5SHx.3iTXNoC', NULL, '2020-08-07 18:44:07', '2020-08-09 14:19:45'),
(4, 'anuj garg', '9358406458', 0, NULL, NULL, 'http://glacademy.in/jewellery/public/images/1597019794.jpg', 'anujgarg012@gmail.com', 'gss', 'holigate', NULL, '$2y$10$QWg9faHkHBCC7FrrEvPKXOErXQDhSdmwPzHCw6x1qFdCCpy.hGWSu', NULL, '2020-08-09 21:23:53', '2020-08-10 07:36:34'),
(5, 'Tripti singjal\n\n\nTripti singhal', '8433485868', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6cVVMSPbdhXcVdLDliRbP.TCyvCNob8BrMLgYp.tY/X4G9FIMBvbK', NULL, '2020-08-09 21:57:42', '2020-08-09 21:57:42'),
(6, 'divyansh', '9389103859', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/VOinSa95IKjPUy4j5bIl.u1GcDFiQ4LpPh.VHGZ1Rl5FJ7Co4AJW', NULL, '2020-08-10 19:22:07', '2020-08-10 19:22:07'),
(7, 'ashish', '9455206527', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$snhH3azYx8xxnWj3NNZLKe9LQi4JQI/i/.1DEsSYlDBUY1SLmv.3K', NULL, '2020-08-10 20:14:07', '2020-08-10 20:14:07'),
(8, 'Aryan Raj', '8888888888', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RTwAMIt6wHM7zXyqy8Kssu5e8TxcLLwRZHGOCDSmi.rlWhrLetJZu', NULL, '2020-08-11 00:42:38', '2020-08-11 00:42:38'),
(9, 'Tripti singhal', '8532022050', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$w95DXnue29o/JMHI3iyYWe15CjMv7tlqyqk9PG9SQQXUwZ7g/NVAW', NULL, '2020-08-11 22:45:36', '2020-08-11 22:45:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`referral_id`),
  ADD UNIQUE KEY `referral_referral_id_unique` (`referral_id`);

--
-- Indexes for table `subscription_payment`
--
ALTER TABLE `subscription_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `kvgames`
--
CREATE DATABASE IF NOT EXISTS `kvgames` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kvgames`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `phone` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `secondPassword` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`phone`, `password`, `secondPassword`, `created_at`, `updated_at`, `id`) VALUES
('9358174783', 'aGF6KJeEzEguejRgnQzEVd3svop2', 'rajaryan', '2020-10-31 04:20:28', '2020-10-31 04:20:28', 1),
('8587925218', 'ceBPzLZl5igXVGkLK9JMK6XSJS83', 'VedantGolash', '2020-10-31 04:35:13', '2020-10-31 04:35:13', 2),
('7509695243', 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 'Kalvinder', '2020-10-31 04:36:20', '2020-10-31 04:36:20', 3);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_joins`
--

CREATE TABLE `game_joins` (
  `join_id` bigint(20) UNSIGNED NOT NULL,
  `firebase_uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `game_date` date NOT NULL,
  `game_time` time NOT NULL,
  `join_time` time NOT NULL,
  `ticket_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_joins`
--

INSERT INTO `game_joins` (`join_id`, `firebase_uid`, `user_id`, `game_date`, `game_time`, `join_time`, `ticket_count`, `created_at`, `updated_at`) VALUES
(1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '10:00:00', '10:02:48', 2, '2020-10-15 17:02:48', '2020-10-15 17:02:48'),
(2, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '10:00:00', '10:03:09', 2, '2020-10-15 17:03:09', '2020-10-15 17:03:09'),
(3, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '10:00:00', '10:03:12', 2, '2020-10-15 17:03:12', '2020-10-15 17:03:12'),
(4, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '10:00:00', '10:04:35', 2, '2020-10-15 17:04:35', '2020-10-15 17:04:35'),
(6, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '11:00:00', '11:05:04', 2, '2020-10-15 18:05:04', '2020-10-15 18:05:04'),
(7, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '13:15:00', '13:17:14', 2, '2020-10-15 20:17:14', '2020-10-15 20:17:14'),
(8, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '14:00:00', '14:00:53', 2, '2020-10-15 21:00:53', '2020-10-15 21:00:53'),
(10, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '16:10:00', '16:18:47', 2, '2020-10-15 23:18:47', '2020-10-15 23:18:47'),
(11, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '16:42:00', '16:42:01', 2, '2020-10-15 23:42:01', '2020-10-15 23:42:01'),
(12, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '17:00:00', '16:55:05', 2, '2020-10-15 23:55:05', '2020-10-15 23:55:05'),
(13, 'ceBPzLZl5igXVGkLK9JMK6XSJS83', 3, '2020-10-15', '19:30:00', '19:30:06', 2, '2020-10-16 02:30:06', '2020-10-16 02:30:06'),
(14, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '22:00:00', '22:00:10', 2, '2020-10-16 05:00:10', '2020-10-16 05:00:10'),
(15, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '22:06:00', '22:06:03', 2, '2020-10-16 05:06:03', '2020-10-16 05:06:03'),
(16, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '22:09:00', '22:09:13', 2, '2020-10-16 05:09:13', '2020-10-16 05:09:13'),
(17, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '22:16:00', '22:16:02', 2, '2020-10-16 05:16:02', '2020-10-16 05:16:02'),
(18, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '22:21:00', '22:21:01', 2, '2020-10-16 05:21:01', '2020-10-16 05:21:01'),
(19, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '22:27:00', '22:27:02', 2, '2020-10-16 05:27:02', '2020-10-16 05:27:02'),
(20, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-15', '22:30:00', '22:30:01', 2, '2020-10-16 05:30:01', '2020-10-16 05:30:01'),
(21, 'sfde', 1, '2020-10-17', '11:10:00', '15:22:02', 2, '2020-10-17 22:22:02', '2020-10-17 22:22:02'),
(22, 'sfde', 1, '2020-10-17', '15:30:00', '15:35:37', 2, '2020-10-17 22:35:37', '2020-10-17 22:35:37'),
(23, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-17', '18:30:00', '18:36:28', 2, '2020-10-18 01:36:28', '2020-10-18 01:36:28'),
(24, 'ceBPzLZl5igXVGkLK9JMK6XSJS83', 3, '2020-10-17', '18:30:00', '18:39:15', 2, '2020-10-18 01:39:15', '2020-10-18 01:39:15'),
(25, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-17', '19:00:00', '19:00:02', 2, '2020-10-18 02:00:02', '2020-10-18 02:00:02'),
(26, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-17', '19:30:00', '19:30:02', 2, '2020-10-18 02:30:02', '2020-10-18 02:30:02'),
(27, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-17', '19:30:00', '19:34:01', 2, '2020-10-18 02:34:01', '2020-10-18 02:34:01'),
(28, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-17', '20:00:00', '20:00:02', 2, '2020-10-18 03:00:02', '2020-10-18 03:00:02'),
(29, 'sfde', 1, '2020-10-18', '15:30:00', '12:37:46', 2, '2020-10-18 19:37:46', '2020-10-18 19:37:46'),
(30, 'sfde', 4, '2020-10-21', '19:00:00', '21:00:30', 2, '2020-10-21 04:00:30', '2020-10-21 04:00:30'),
(31, 'aGF6KJeEzEguejRgnQzEVd3svop2', 1, '2020-10-20', '22:00:00', '22:00:02', 2, '2020-10-21 05:00:02', '2020-10-21 05:00:02'),
(32, 'ceBPzLZl5igXVGkLK9JMK6XSJS83', 3, '2020-10-20', '22:30:00', '22:35:13', 2, '2020-10-21 05:35:13', '2020-10-21 05:35:13'),
(33, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-21', '14:30:00', '14:30:04', 2, '2020-10-21 21:30:05', '2020-10-21 21:30:05'),
(34, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-21', '15:00:00', '15:03:38', 2, '2020-10-21 22:03:38', '2020-10-21 22:03:38'),
(35, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-21', '17:00:00', '17:00:05', 2, '2020-10-22 00:00:05', '2020-10-22 00:00:05'),
(36, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-22', '14:30:00', '14:30:02', 2, '2020-10-22 21:30:03', '2020-10-22 21:30:03'),
(37, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-22', '15:00:00', '15:00:04', 2, '2020-10-22 22:00:04', '2020-10-22 22:00:04'),
(38, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-22', '15:30:00', '15:30:29', 2, '2020-10-22 22:30:29', '2020-10-22 22:30:29'),
(39, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-22', '16:00:00', '16:00:03', 2, '2020-10-22 23:00:03', '2020-10-22 23:00:03'),
(40, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-22', '16:30:00', '16:30:03', 2, '2020-10-22 23:30:03', '2020-10-22 23:30:03'),
(41, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-22', '17:30:00', '17:30:02', 2, '2020-10-23 00:30:02', '2020-10-23 00:30:02'),
(42, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 4, '2020-10-23', '17:00:00', '17:00:02', 2, '2020-10-24 00:00:02', '2020-10-24 00:00:02'),
(43, 'ceBPzLZl5igXVGkLK9JMK6XSJS83', 3, '2020-10-23', '17:00:00', '17:00:43', 2, '2020-10-24 00:00:43', '2020-10-24 00:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `game_responses`
--

CREATE TABLE `game_responses` (
  `response_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `firebase_uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_id` bigint(20) NOT NULL,
  `join_id` bigint(20) NOT NULL,
  `win_amount` double NOT NULL,
  `ticket_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_responses`
--

INSERT INTO `game_responses` (`response_id`, `user_id`, `firebase_uid`, `ticket_id`, `join_id`, `win_amount`, `ticket_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 29, 11, 14, 'EFC', '2020-10-15 23:45:21', '2020-10-15 23:45:21'),
(2, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 30, 11, 14, 'EFC', '2020-10-15 23:46:46', '2020-10-15 23:46:46'),
(3, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 29, 11, 14, 'L1C', '2020-10-15 23:49:27', '2020-10-15 23:49:27'),
(4, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 29, 11, 14, 'L3C', '2020-10-15 23:50:34', '2020-10-15 23:50:34'),
(5, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 30, 11, 40, 'L1C', '2020-10-15 23:50:45', '2020-10-15 23:50:45'),
(6, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 29, 11, 14, 'L2C', '2020-10-15 23:51:09', '2020-10-15 23:51:09'),
(7, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 29, 11, 28, 'FHC', '2020-10-15 23:51:09', '2020-10-15 23:51:09'),
(8, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 30, 11, 40, 'L3C', '2020-10-15 23:51:21', '2020-10-15 23:51:21'),
(9, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 60, 25, 14, 'EFC', '2020-10-18 02:03:47', '2020-10-18 02:03:47'),
(10, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 61, 25, 14, 'EFC', '2020-10-18 02:05:01', '2020-10-18 02:05:01'),
(11, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 60, 25, 14, 'L3C', '2020-10-18 02:07:18', '2020-10-18 02:07:18'),
(12, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 61, 25, 40, 'L1C', '2020-10-18 02:08:05', '2020-10-18 02:08:05'),
(13, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 61, 25, 40, 'L3C', '2020-10-18 02:09:41', '2020-10-18 02:09:41'),
(14, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 78, 31, 14, 'EFC', '2020-10-21 05:03:18', '2020-10-21 05:03:18'),
(15, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 77, 31, 14, 'EFC', '2020-10-21 05:04:14', '2020-10-21 05:04:14'),
(16, 1, 'aGF6KJeEzEguejRgnQzEVd3svop2', 78, 31, 40, 'L3C', '2020-10-21 05:05:20', '2020-10-21 05:05:20'),
(17, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 86, 33, 14, 'EFC', '2020-10-21 21:33:46', '2020-10-21 21:33:46'),
(18, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 84, 33, 14, 'EFC', '2020-10-21 21:34:25', '2020-10-21 21:34:25'),
(19, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 86, 33, 40, 'L3C', '2020-10-21 21:35:54', '2020-10-21 21:35:54'),
(20, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 86, 33, 40, 'L2C', '2020-10-21 21:38:21', '2020-10-21 21:38:21'),
(21, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 84, 33, 14, 'L3C', '2020-10-21 21:38:34', '2020-10-21 21:38:34'),
(22, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 84, 33, 14, 'L1C', '2020-10-21 21:38:46', '2020-10-21 21:38:46'),
(23, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 69, 35, 14, 'EFC', '2020-10-22 00:02:56', '2020-10-22 00:02:56'),
(24, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 89, 35, 14, 'EFC', '2020-10-22 00:04:52', '2020-10-22 00:04:52'),
(25, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 89, 35, 40, 'L3C', '2020-10-22 00:06:58', '2020-10-22 00:06:58'),
(26, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 96, 36, 14, 'EFC', '2020-10-22 21:32:16', '2020-10-22 21:32:16'),
(27, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 96, 36, 40, 'L1C', '2020-10-22 21:35:17', '2020-10-22 21:35:17'),
(28, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 85, 36, 14, 'EFC', '2020-10-22 21:35:41', '2020-10-22 21:35:41'),
(29, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 85, 36, 14, 'L3C', '2020-10-22 21:39:16', '2020-10-22 21:39:16'),
(30, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 85, 36, 14, 'L1C', '2020-10-22 21:39:21', '2020-10-22 21:39:21'),
(31, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 96, 36, 40, 'L2C', '2020-10-22 21:39:29', '2020-10-22 21:39:29'),
(32, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 96, 36, 80, 'FHC', '2020-10-22 21:39:34', '2020-10-22 21:39:34'),
(33, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 96, 36, 40, 'L3C', '2020-10-22 21:39:34', '2020-10-22 21:39:34'),
(34, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 85, 36, 28, 'FHC', '2020-10-22 21:39:58', '2020-10-22 21:39:58'),
(35, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 85, 36, 14, 'L2C', '2020-10-22 21:39:58', '2020-10-22 21:39:58'),
(36, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 100, 39, 14, 'EFC', '2020-10-22 23:03:12', '2020-10-22 23:03:12'),
(37, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 99, 39, 14, 'EFC', '2020-10-22 23:05:15', '2020-10-22 23:05:15'),
(38, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 99, 39, 14, 'L1C', '2020-10-22 23:06:21', '2020-10-22 23:06:21'),
(39, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 99, 39, 14, 'L3C', '2020-10-22 23:07:51', '2020-10-22 23:07:51'),
(40, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 100, 39, 40, 'L3C', '2020-10-22 23:09:15', '2020-10-22 23:09:15'),
(41, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 100, 39, 40, 'L1C', '2020-10-22 23:09:45', '2020-10-22 23:09:45'),
(42, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 99, 39, 28, 'FHC', '2020-10-22 23:09:51', '2020-10-22 23:09:51'),
(43, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 99, 39, 14, 'L2C', '2020-10-22 23:09:51', '2020-10-22 23:09:51'),
(44, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 100, 39, 40, 'L2C', '2020-10-22 23:09:58', '2020-10-22 23:09:58'),
(45, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 100, 39, 80, 'FHC', '2020-10-22 23:09:58', '2020-10-22 23:09:58'),
(46, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 111, 42, 14, 'EFC', '2020-10-24 00:02:45', '2020-10-24 00:02:45'),
(47, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 111, 42, 40, 'L3C', '2020-10-24 00:06:05', '2020-10-24 00:06:05'),
(48, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 109, 42, 14, 'EFC', '2020-10-24 00:07:41', '2020-10-24 00:07:41'),
(49, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 111, 42, 40, 'L1C', '2020-10-24 00:07:45', '2020-10-24 00:07:45'),
(50, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 111, 42, 80, 'FHC', '2020-10-24 00:09:39', '2020-10-24 00:09:39'),
(51, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 111, 42, 40, 'L2C', '2020-10-24 00:09:39', '2020-10-24 00:09:39'),
(52, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 115, 44, 24, 'EFC', '2020-10-31 19:02:09', '2020-10-31 19:02:09'),
(53, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 115, 44, 24, 'L3C', '2020-10-31 19:07:27', '2020-10-31 19:07:27'),
(54, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 115, 44, 24, 'L1C', '2020-10-31 19:08:39', '2020-10-31 19:08:39'),
(55, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 115, 44, 24, 'L2C', '2020-10-31 19:09:57', '2020-10-31 19:09:57'),
(56, 4, 'KMRCl2cH1QMAH6lLWjPwhjQiIFV2', 115, 44, 46, 'FHC', '2020-10-31 19:09:57', '2020-10-31 19:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `game_results`
--

CREATE TABLE `game_results` (
  `result_id` bigint(20) UNSIGNED NOT NULL,
  `game_date` date NOT NULL,
  `game_time` time NOT NULL,
  `result_combo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_results`
--

INSERT INTO `game_results` (`result_id`, `game_date`, `game_time`, `result_combo`, `created_at`, `updated_at`) VALUES
(1, '2020-10-15', '11:00:00', '53,33,27,10,28,71,64,5,78,4,81,55,21,57,66,29,36,17,2,31,56,20,84,7,34,3,86,59,40,51,65,46,24,73,44,13,88,74,35,49,45,26,67,82,79,37,15,23,54,70,63,80,39,60,89,50,58,77,9,68,85,25,12,41,76,6,43,18,32,11,38,52,19,8,61,1,62,83,69,72,75,90,42,14,48,30,47,16,22,87', '2020-10-15 20:39:27', '2020-10-15 20:39:27'),
(2, '2020-10-15', '16:42:00', '60,59,34,52,1,84,86,17,4,87,8,40,42,49,41,58,64,20,13,66,7,16,75,56,29,28,31,30,81,71,9,46,5,50,3,12,14,37,33,78,15,55,89,73,79,2,27,88,23,25,83,38,61,85,68,44,24,26,51,54,90,35,82,76,32,67,80,72,45,74,62,36,10,21,47,39,48,43,18,22,53,63,6,65,70,11,19,69,77,57', '2020-10-15 23:42:03', '2020-10-15 23:42:03'),
(3, '2020-10-15', '19:30:00', '79,61,38,69,3,70,52,33,41,26,45,6,32,10,82,48,43,54,17,66,73,9,63,12,47,83,11,65,85,53,68,7,75,8,1,21,58,55,67,71,5,2,42,80,40,49,86,60,27,25,31,24,87,35,16,29,23,15,18,37,84,78,77,76,51,36,89,72,74,44,88,64,20,22,39,34,46,28,30,14,62,4,13,90,57,56,19,59,81,50', '2020-10-16 02:30:07', '2020-10-16 02:30:07'),
(4, '2020-10-15', '22:00:00', '87,21,81,82,57,80,89,76,16,45,18,66,36,42,14,59,34,78,17,24,33,48,40,75,26,27,15,2,30,54,39,38,68,51,20,43,28,50,60,53,64,88,1,5,3,74,49,35,65,71,25,7,77,84,4,9,29,46,90,62,13,22,8,19,10,12,69,86,41,56,44,6,85,83,72,58,32,37,11,61,63,79,55,31,73,47,23,70,52,67', '2020-10-16 05:00:12', '2020-10-16 05:00:12'),
(5, '2020-10-15', '22:06:00', '84,85,57,31,12,74,20,77,72,1,3,50,78,2,62,23,71,35,59,6,33,7,28,70,53,83,41,56,17,65,39,60,18,27,22,54,76,80,11,81,86,58,55,79,25,26,52,87,88,21,66,68,40,10,73,90,64,29,82,51,47,30,16,38,34,46,69,45,5,42,37,24,75,8,9,67,15,44,19,32,43,4,89,36,63,13,48,61,14,49', '2020-10-16 05:06:05', '2020-10-16 05:06:05'),
(6, '2020-10-15', '22:09:00', '21,50,45,90,33,84,87,37,12,11,68,46,4,71,77,41,66,64,59,47,81,7,36,40,78,5,20,14,6,61,73,48,85,10,76,28,15,57,29,25,80,18,26,74,75,60,70,83,30,31,88,9,23,8,53,35,55,86,43,62,54,44,27,22,24,38,89,1,2,63,32,65,52,34,69,3,13,39,82,42,67,79,51,17,16,72,49,56,58,19', '2020-10-16 05:09:18', '2020-10-16 05:09:18'),
(7, '2020-10-15', '22:16:00', '33,78,22,11,61,56,76,53,80,35,7,45,59,84,41,36,23,70,13,9,47,24,86,63,14,43,48,79,20,89,25,55,90,38,54,88,10,31,75,81,83,1,65,21,26,67,28,57,6,82,74,3,27,87,8,34,66,16,18,49,39,71,50,37,77,46,85,32,42,4,52,2,12,64,60,58,62,51,19,68,69,17,73,5,29,30,40,72,15,44', '2020-10-16 05:16:03', '2020-10-16 05:16:03'),
(8, '2020-10-15', '22:21:00', '69,54,82,44,59,71,8,2,42,48,4,29,16,53,32,51,35,20,83,15,70,28,73,1,30,13,18,49,85,37,25,90,62,75,55,36,23,19,77,9,7,39,84,40,38,86,47,88,10,14,74,78,79,58,64,26,43,87,56,68,50,21,81,57,11,33,65,52,72,41,76,80,17,24,63,66,3,31,67,46,27,60,6,45,61,5,12,89,34,22', '2020-10-16 05:21:03', '2020-10-16 05:21:03'),
(9, '2020-10-15', '22:27:00', '38,45,54,83,5,71,46,81,67,17,37,61,25,4,35,63,80,39,57,13,65,14,64,42,18,88,43,7,73,62,87,58,21,11,12,74,51,50,90,82,23,75,28,6,2,56,9,20,29,1,78,85,8,69,16,77,22,79,36,70,89,68,72,10,47,41,84,53,44,76,15,49,52,34,26,3,31,59,55,48,60,30,32,86,24,33,19,27,40,66', '2020-10-16 05:27:03', '2020-10-16 05:27:03'),
(10, '2020-10-15', '22:30:00', '78,39,46,18,36,20,3,11,19,1,59,61,8,80,25,70,14,73,75,35,48,12,31,72,87,66,90,71,52,88,86,23,13,17,53,63,67,57,62,7,37,45,64,83,55,49,68,28,51,54,38,16,56,44,40,26,10,89,74,4,5,33,58,2,79,34,24,15,21,50,30,81,43,84,60,27,22,32,47,82,29,6,9,77,65,69,41,42,76,85', '2020-10-16 05:30:02', '2020-10-16 05:30:02'),
(11, '2020-10-17', '15:00:00', '38,37,10,47,76,80,70,44,68,53,52,60,21,79,64,58,11,14,57,13,62,74,59,27,49,73,82,54,22,16,81,25,66,12,77,61,55,87,17,48,51,31,88,67,46,36,20,72,43,65,41,30,45,39,29,8,7,85,63,71,50,56,78,18,3,42,89,1,90,23,69,24,2,35,34,9,26,83,15,19,33,4,6,32,75,40,5,86,28,84', '2020-10-18 01:39:16', '2020-10-18 01:39:16'),
(12, '2020-10-17', '19:00:00', '47,80,28,21,81,43,68,61,90,85,88,71,2,15,83,82,18,50,42,79,46,75,60,77,13,39,45,31,86,4,22,29,12,48,72,37,3,16,52,26,7,11,6,66,32,55,57,73,35,1,33,8,49,25,58,51,40,17,84,53,36,59,24,56,41,70,9,65,23,67,64,69,14,44,5,19,87,89,63,20,10,27,62,78,76,74,38,34,30,54', '2020-10-18 02:00:03', '2020-10-18 02:00:03'),
(13, '2020-10-17', '20:00:00', '62,26,71,32,4,2,24,10,28,42,60,65,50,68,48,64,67,80,16,54,49,52,55,19,45,84,46,6,23,86,41,51,22,37,5,3,34,39,25,36,77,61,31,59,87,29,66,90,70,74,72,63,81,57,14,33,85,38,76,21,17,83,9,35,89,58,47,13,11,1,56,78,82,88,69,73,75,8,40,79,12,20,27,15,53,7,44,43,18,30', '2020-10-18 03:00:03', '2020-10-18 03:00:03'),
(14, '2020-10-20', '22:00:00', '60,85,69,54,19,76,24,49,37,30,83,12,18,15,59,71,72,17,70,73,35,45,86,44,51,46,6,67,53,29,9,64,8,81,4,41,47,57,89,63,23,77,28,10,55,66,33,22,3,31,75,32,39,11,43,26,90,68,79,2,56,7,82,88,78,38,16,84,34,65,74,50,61,87,5,27,36,20,62,40,52,42,58,14,21,1,48,13,80,25', '2020-10-21 05:00:04', '2020-10-21 05:00:04'),
(15, '2020-10-21', '14:30:00', '18,70,28,44,78,75,43,15,55,88,52,61,84,67,80,34,12,54,10,11,86,35,13,26,66,31,56,8,57,1,30,7,39,46,29,42,69,16,27,74,50,90,22,71,82,45,17,6,53,62,3,47,85,21,51,20,65,5,68,89,76,38,36,63,33,2,49,72,25,64,79,60,40,83,41,48,24,77,4,14,87,59,9,37,73,23,19,81,58,32', '2020-10-21 21:30:06', '2020-10-21 21:30:06'),
(16, '2020-10-21', '15:00:00', '17,34,4,82,11,71,78,49,46,63,15,38,39,41,79,69,7,16,18,29,83,86,10,54,26,20,76,35,44,68,50,6,70,90,13,36,66,73,47,85,58,84,67,2,14,43,52,55,88,37,9,25,19,24,59,75,1,81,77,87,28,62,72,65,40,60,22,31,33,89,61,8,21,48,45,23,57,80,5,74,51,56,42,3,32,27,53,12,64,30', '2020-10-21 22:03:40', '2020-10-21 22:03:40'),
(17, '2020-10-21', '17:00:00', '27,67,47,5,22,31,25,49,35,3,2,15,64,19,42,90,78,17,65,13,18,41,14,60,26,80,58,71,59,50,7,30,39,1,46,23,54,34,84,88,33,4,87,12,9,8,44,52,83,43,29,24,75,66,62,28,11,21,10,68,51,45,70,57,48,81,16,37,38,69,82,55,6,89,32,77,86,56,40,85,74,76,36,79,20,53,61,73,72,63', '2020-10-22 00:00:07', '2020-10-22 00:00:07'),
(18, '2020-10-22', '14:30:00', '41,72,25,67,70,44,2,54,14,32,10,73,46,90,87,4,80,29,6,56,65,39,26,3,30,64,17,69,27,42,35,12,21,66,47,77,45,59,31,79,53,71,68,55,83,8,7,48,85,74,40,11,78,38,61,23,89,58,49,88,50,60,75,36,22,33,5,57,28,24,63,20,16,76,62,43,86,81,82,18,15,13,51,34,37,19,1,52,84,9', '2020-10-22 21:30:05', '2020-10-22 21:30:05'),
(19, '2020-10-22', '15:00:00', '43,25,71,15,28,10,37,11,83,79,85,87,51,82,3,64,31,39,59,20,58,56,69,12,19,72,66,86,21,61,75,77,23,49,22,34,2,5,89,55,53,52,62,81,40,60,78,46,1,17,48,9,47,4,35,18,76,14,26,7,41,90,16,57,13,63,36,27,74,88,80,65,73,30,67,6,44,45,29,70,38,50,24,32,33,68,8,42,54,84', '2020-10-22 22:00:06', '2020-10-22 22:00:06'),
(20, '2020-10-22', '15:30:00', '76,52,36,49,4,57,84,25,42,78,71,21,39,23,70,74,86,44,88,48,77,82,63,35,54,15,14,24,18,45,85,11,87,90,12,75,51,46,40,89,59,16,32,68,31,66,10,47,64,72,43,17,22,80,58,79,60,27,5,55,65,13,34,26,3,37,6,38,73,56,50,33,29,61,28,62,7,9,1,30,69,19,53,67,81,2,83,20,41,8', '2020-10-22 22:30:31', '2020-10-22 22:30:31'),
(21, '2020-10-22', '16:00:00', '81,14,43,89,45,77,26,47,6,21,28,36,84,53,51,78,2,71,57,41,17,27,13,11,38,24,16,48,44,29,33,9,54,58,15,32,69,31,55,59,68,1,66,30,85,37,70,90,60,10,83,63,72,61,73,56,76,25,50,74,34,5,3,12,20,40,49,88,39,64,87,46,19,22,35,67,42,86,65,79,75,7,8,80,18,82,52,23,4,62', '2020-10-22 23:00:05', '2020-10-22 23:00:05'),
(22, '2020-10-22', '16:30:00', '12,20,82,47,56,45,75,59,53,37,27,88,13,66,84,87,90,85,21,68,17,1,19,80,36,76,10,60,30,81,54,71,69,15,11,16,5,40,39,61,3,83,46,28,65,43,42,51,35,86,6,44,25,62,64,77,49,32,4,33,72,55,2,34,67,31,73,74,14,24,18,38,22,41,23,79,58,50,8,48,57,7,52,70,89,29,9,63,26,78', '2020-10-22 23:30:05', '2020-10-22 23:30:05'),
(23, '2020-10-22', '17:30:00', '29,52,40,78,1,76,23,7,4,15,18,68,19,81,56,30,69,12,22,45,9,70,67,28,50,58,65,31,43,48,26,14,27,63,6,85,46,61,41,49,75,32,51,55,89,57,83,80,16,79,59,39,24,42,64,21,34,25,5,66,20,38,37,73,8,82,71,47,54,33,90,36,53,3,10,44,87,74,86,84,17,62,35,13,11,60,77,72,88,2', '2020-10-23 00:30:03', '2020-10-23 00:30:03'),
(24, '2020-10-23', '17:00:00', '13,60,33,9,85,6,77,15,7,45,4,14,38,20,57,67,75,24,73,12,44,52,76,50,72,82,48,32,3,22,10,53,81,35,49,83,62,23,29,55,79,19,90,58,84,27,47,28,54,87,17,8,31,26,46,5,63,43,2,40,36,71,1,64,69,21,61,30,51,42,89,65,78,37,88,68,86,34,18,59,41,25,11,80,66,56,16,39,70,74', '2020-10-24 00:00:04', '2020-10-24 00:00:04'),
(25, '2020-10-31', '12:00:00', '42,41,80,88,21,46,54,73,66,31,25,4,27,89,30,2,51,82,1,37,75,18,50,33,87,29,7,16,6,69,40,72,47,39,60,45,86,24,64,32,78,55,58,22,48,68,15,23,67,12,62,76,71,49,36,17,43,9,79,10,14,57,84,19,59,26,11,65,63,13,85,77,83,56,74,90,20,28,35,38,44,8,61,81,53,5,34,3,70,52', '2020-10-31 19:00:04', '2020-10-31 19:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_08_28_050227_create_ticket_category_table', 1),
(10, '2020_08_28_050250_create_ticket_category_changes_table', 1),
(11, '2020_09_01_153025_create_my_tickets_table', 1),
(12, '2020_09_01_160350_create_transactions_table', 1),
(13, '2020_09_04_172712_create_prizes_table', 1),
(14, '2020_09_05_221634_create_game_joins_table', 1),
(15, '2020_09_05_221751_create_game_responses_table', 1),
(16, '2020_09_06_000124_create_game_results_table', 1),
(17, '2020_10_13_164458_create_settings_table', 1),
(18, '2020_10_13_170114_create_referral_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_tickets`
--

CREATE TABLE `my_tickets` (
  `my_ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `my_ticket_date` date NOT NULL,
  `my_ticket_time` time NOT NULL,
  `ticket_combo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_unit_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_tickets`
--

INSERT INTO `my_tickets` (`my_ticket_id`, `user_id`, `my_ticket_date`, `my_ticket_time`, `ticket_combo`, `ticket_unit_price`, `created_at`, `updated_at`) VALUES
(9, 1, '2020-10-14', '16:35:00', ', , ,36,44,56,62,78, , ,12,25, ,48,60, , ,84,1,14, ,39, , ,70, ,90,', 5, '2020-10-14 23:48:12', '2020-10-14 23:48:12'),
(10, 1, '2020-10-14', '16:35:00', ',19,23,36,47, , , ,83,6, , ,33, ,51,66, ,88,8, ,30,40, , ,70,75, ,', 50, '2020-10-14 23:48:12', '2020-10-14 23:48:12'),
(11, 1, '2020-10-11', '10:00:00', 'dfsdgj', 43, '2020-10-15 15:51:33', '2020-10-15 15:51:33'),
(12, 1, '2020-10-11', '10:00:00', 'dfsdgj', 43, '2020-10-15 15:51:33', '2020-10-15 15:51:33'),
(13, 1, '2020-10-15', '16:35:00', '2, ,29,36, ,54,64, , ,7, , , ,41,58, ,72,81,9,19, , ,46,60, , ,86,', 5, '2020-10-15 15:51:46', '2020-10-15 15:51:46'),
(14, 1, '2020-10-15', '16:35:00', '3,12,25, , , , ,74,81,5, , , ,43, ,63,71,90,8, , ,32, ,55,69,76, ,', 5, '2020-10-15 15:51:46', '2020-10-15 15:51:46'),
(15, 1, '2020-10-15', '16:40:00', ',13,27,32,47, ,69, , , , ,29, , ,52,70,75,81,7, , ,36,50,55, , ,90,', 20, '2020-10-15 15:52:07', '2020-10-15 15:52:07'),
(16, 1, '2020-10-15', '09:12:00', '1, ,21, ,44,56, , ,83, , , ,35,43, ,62,74,89,7,13,26, ,47, , ,80, ,', 20, '2020-10-15 15:55:37', '2020-10-15 15:55:37'),
(17, 1, '2020-10-15', '09:12:00', ',13,29,32,42, ,65, , ,7,19, ,35, , ,66,73, , ,20, ,39, ,60,67, ,85,', 5, '2020-10-15 15:55:37', '2020-10-15 15:55:37'),
(18, 1, '2020-10-15', '10:00:00', ',18, ,39,41, ,64,71, ,3, ,25, ,43,57,68, , ,7,19, , ,46, , ,75,86,', 5, '2020-10-15 16:39:45', '2020-10-15 16:39:45'),
(19, 1, '2020-10-15', '11:00:00', ',16,22, , ,56,61,80, , ,12, ,34,47, ,62, ,89,7,18, ,36, , ,66, ,90,', 20, '2020-10-15 17:41:17', '2020-10-15 17:41:17'),
(20, 1, '2020-10-15', '11:00:00', '5, ,27, ,41, ,62, ,86, ,11, ,38,49, ,66,73, , ,14, ,40, ,59,69,80, ,', 100, '2020-10-15 17:41:17', '2020-10-15 17:41:17'),
(21, 1, '2020-10-15', '11:40:00', ', ,21,37, ,51, ,73,82,3, ,26,39, ,53,66, , ,8,12,30, ,50, , ,75, ,', 5, '2020-10-15 18:20:40', '2020-10-15 18:20:40'),
(22, 1, '2020-10-15', '11:40:00', ',18,26,40,49, ,66, , , ,14,27, , ,54, ,78,84,8,19,29, , , ,70, ,90,', 50, '2020-10-15 18:20:40', '2020-10-15 18:20:40'),
(23, 1, '2020-10-15', '13:15:00', ',15,22,38, , ,63,71, , , ,21, ,43,52,67, ,86,9, ,28, ,49,59, , ,90,', 20, '2020-10-15 19:55:38', '2020-10-15 19:55:38'),
(24, 1, '2020-10-15', '13:15:00', '1, , ,35, ,59,70,76, , ,18,22, ,48, , ,80,89,6,19,28, ,50, , , ,90,', 100, '2020-10-15 19:55:38', '2020-10-15 19:55:38'),
(25, 1, '2020-10-15', '14:00:00', ', ,21, ,44,55,66, ,83,5, ,23,32, ,59, ,79, ,10,13, , , ,60,67, ,85,', 5, '2020-10-15 20:41:57', '2020-10-15 20:42:14'),
(26, 1, '2020-10-15', '14:00:00', '3,13,22,33, , , ,71, , ,16, ,36,41, ,63, ,88, ,17,23, , ,57,69,73, ,', 20, '2020-10-15 20:41:57', '2020-10-15 20:42:25'),
(27, 1, '2020-10-15', '16:10:00', '10, ,26,32, ,55, ,78, , , ,29,37,44, ,69, ,83, ,11, , , ,56,70,79,88,', 5, '2020-10-15 22:46:57', '2020-10-15 22:46:57'),
(28, 1, '2020-10-15', '16:10:00', ', ,24,33,44, ,67, ,83,10,13, , , ,52,70, ,87,6, ,25,38, ,53, ,77, ,', 20, '2020-10-15 22:46:57', '2020-10-15 22:46:57'),
(29, 1, '2020-10-15', '16:42:00', ',13,30,32, , , ,79,85, ,18, , ,46,53,63, ,84,7, , ,39, ,56,66, ,88,', 5, '2020-10-15 23:26:00', '2020-10-15 23:26:00'),
(30, 1, '2020-10-15', '16:42:00', '10,14, ,34,43, , , ,82, , ,23,35,42, , ,71,88,2, , ,37,44,60,65, , ,', 20, '2020-10-15 23:26:00', '2020-10-15 23:26:00'),
(31, 3, '2020-10-15', '18:00:00', '10,11, , ,45, , ,74,85, , ,23,31, ,59,62,80, , ,15, ,33,46, ,70, ,87,', 5, '2020-10-16 00:34:41', '2020-10-16 00:34:41'),
(32, 3, '2020-10-15', '18:00:00', '10,11,21, , , , ,71,81, , , , ,45,56,70,77,83, ,20,23,33,48, , , ,88,', 5, '2020-10-16 00:34:41', '2020-10-16 00:34:41'),
(33, 3, '2020-10-15', '19:30:00', '6, , , ,41,51,67,73, , ,14, ,33, ,55, ,77,87,10, ,24,37,42, , , ,89,', 20, '2020-10-16 02:14:21', '2020-10-16 02:14:21'),
(34, 3, '2020-10-15', '19:30:00', ', , ,32,48,56,68,74, , ,19,23,33,49,59, , , ,9, ,24, , ,60, ,77,84,', 50, '2020-10-16 02:14:21', '2020-10-16 02:14:37'),
(35, 1, '2020-10-15', '22:00:00', ', ,21,32,42,51,62, , ,5, ,22,34, ,57, ,77, , ,14,26, ,43,58, , ,89,', 20, '2020-10-16 04:51:00', '2020-10-16 04:51:00'),
(36, 1, '2020-10-15', '22:00:00', '6, ,27, ,45,52, ,80, , ,12,29,34, ,55, , ,81, ,13, ,37,47, ,67, ,87,', 5, '2020-10-16 04:51:00', '2020-10-16 04:51:00'),
(37, 1, '2020-10-15', '22:06:00', '1, ,24, ,43,53,61, , , ,20, ,32,45, , ,76,85,3, , ,40,48, ,63,77, ,', 20, '2020-10-16 05:05:11', '2020-10-16 05:05:11'),
(38, 1, '2020-10-15', '22:06:00', '2,11,21,37, ,57, , , , ,14, ,40, ,58,70,71, ,4, ,26, ,41,59, , ,89,', 5, '2020-10-16 05:05:11', '2020-10-16 05:05:11'),
(39, 1, '2020-10-15', '22:09:00', '9, ,23,38, , ,68, ,81, ,19,26, ,42, , ,73,84, , ,30, ,50,51, ,74,90,', 5, '2020-10-16 05:07:57', '2020-10-16 05:07:57'),
(40, 1, '2020-10-15', '22:09:00', ', ,24, , ,52,65,73,81, , ,28,33,45, ,67,78, ,10,18,30, , ,56, , ,90,', 20, '2020-10-16 05:07:57', '2020-10-16 05:07:57'),
(41, 1, '2020-10-15', '22:16:00', ', , ,37,41, ,63,73,85, ,11,23, , ,52,68,79, ,4,18,28, , ,57, , ,90,', 5, '2020-10-16 05:15:32', '2020-10-16 05:15:32'),
(42, 1, '2020-10-15', '22:16:00', ',11, ,34,43, ,65, ,86, ,12,21,37, ,52, ,80, ,8,18,26,38, ,54, , , ,', 20, '2020-10-16 05:15:32', '2020-10-16 05:15:32'),
(43, 1, '2020-10-15', '22:21:00', ',12,23, ,43, ,65,74, ,2, ,28, ,47,57, , ,87,6, , ,39, ,59, ,77,89,', 100, '2020-10-16 05:19:43', '2020-10-16 05:19:43'),
(44, 1, '2020-10-15', '22:21:00', ', ,23,34,45, ,61,72, ,7, , , ,47,58,62, ,83, ,16, , ,48, ,65,78,87,', 50, '2020-10-16 05:19:43', '2020-10-16 05:19:43'),
(45, 1, '2020-10-15', '22:27:00', '1,13,26, , ,58, ,74, ,6, ,27,36, , ,64, ,89,8, , ,39,42,59,65, , ,', 5, '2020-10-16 05:25:55', '2020-10-16 05:25:55'),
(46, 1, '2020-10-15', '22:27:00', ',11,27, ,42, ,64,77, ,6,14, ,35, ,57, , ,85,7,16, ,37,43, ,68, , ,', 20, '2020-10-16 05:25:55', '2020-10-16 05:25:55'),
(47, 1, '2020-10-15', '22:30:00', '10, ,21,34, ,52, , ,85, ,18,25, ,43,53, , ,86, , ,29,40,47, ,69,76, ,', 5, '2020-10-16 05:29:28', '2020-10-16 05:29:28'),
(48, 1, '2020-10-15', '22:30:00', '2, , , ,47,51, ,74,81, ,15,22,34, , ,67, ,89,10, ,26,37, ,60,69, , ,', 20, '2020-10-16 05:29:28', '2020-10-16 05:29:28'),
(49, 3, '2020-10-16', '18:30:00', '1,18, ,36, ,53,61, , ,7, ,29, ,42, ,62, ,82,10, , , , ,57,64,80,90,', 20, '2020-10-17 00:58:00', '2020-10-17 00:58:00'),
(50, 3, '2020-10-16', '18:30:00', ',12, , ,49,55,64, ,81, ,13,21,37, , ,67,72, ,9,18,25, , , , ,73,84,', 20, '2020-10-17 00:58:00', '2020-10-17 00:58:02'),
(51, 4, '2020-10-17', '15:00:00', '2,16, ,35, , , ,72,88,6, ,21,36,42, , ,75, ,7, , , , ,59,65,78,90,', 5, '2020-10-17 21:40:26', '2020-10-17 21:40:26'),
(52, 3, '2020-10-17', '15:00:00', '8, ,22, , ,54,68, ,83, , ,24, ,45,55, ,79,84,10,20,27,35, , ,70, , ,', 20, '2020-10-17 21:43:51', '2020-10-17 21:43:51'),
(53, 3, '2020-10-17', '15:00:00', ', , , ,45,57,65,78,82,1,19,25, ,46,60, , , ,5, , ,35,48, ,69, ,88,', 100, '2020-10-17 21:43:51', '2020-10-17 21:43:51'),
(54, 1, '2020-10-17', '15:30:00', ',16,26,33, ,55,63, , ,5, , ,35,48, , ,73,83,8, , ,37, ,60, ,76,90,', 5, '2020-10-17 22:12:43', '2020-10-17 22:12:43'),
(55, 1, '2020-10-17', '15:30:00', ', ,21, , ,52,63,73,86, ,15,24, ,43,57, ,79, ,2, , ,36,49, ,65, ,87,', 20, '2020-10-17 22:12:43', '2020-10-17 22:12:43'),
(56, 1, '2020-10-17', '16:00:00', ',16,21,33, , , ,71,82,7, ,22, ,45, , ,80,89, , , ,35,49,53,69, ,90,', 5, '2020-10-17 22:44:45', '2020-10-17 22:44:45'),
(57, 1, '2020-10-17', '16:00:00', '2,13,21,37, , , , ,81, , ,25,39,43, ,61,73, ,7,14, , ,49,54,70, , ,', 50, '2020-10-17 22:44:45', '2020-10-17 22:44:45'),
(58, 1, '2020-10-17', '17:00:00', '5,13,23, ,46,53, , , , , ,24, , ,56,61,72,88, ,18, ,39, ,57,62, ,89,', 5, '2020-10-17 23:41:24', '2020-10-17 23:41:24'),
(59, 1, '2020-10-17', '17:00:00', ', ,21,33,43,56, ,80, ,5,15, ,38, , ,63, ,81,8,18,22, ,50, , , ,88,', 50, '2020-10-17 23:41:24', '2020-10-17 23:41:24'),
(60, 4, '2020-10-17', '19:00:00', '3,15, , ,42, , ,73,86,5, ,22, , ,57,62, ,88,8,18,24,31, ,59, , , ,', 5, '2020-10-18 01:40:56', '2020-10-18 01:42:06'),
(61, 4, '2020-10-17', '19:00:00', ', ,26, ,41, ,64,73,85,1,13, ,36,44,52, , , ,9,20, ,38, , ,67,79, ,', 20, '2020-10-18 01:41:25', '2020-10-18 01:41:50'),
(62, 4, '2020-10-17', '20:00:00', '7, ,24,32,44, , ,73, ,8,18, ,34, ,53, , ,86, , , , ,48,57,68,77,87,', 5, '2020-10-18 02:16:12', '2020-10-18 02:16:12'),
(63, 1, '2020-10-19', '18:00:00', ',17,28,33, , ,61,78, , ,18, ,40,43,58,69, , ,5,20, , ,48, , ,79,81,', 5, '2020-10-20 00:29:27', '2020-10-20 00:29:27'),
(64, 1, '2020-10-19', '18:00:00', ',14,26, ,43,52,70, , ,3,19, ,34, ,58, ,71, ,5, ,30, ,48, , ,74,81,', 20, '2020-10-20 00:29:27', '2020-10-20 00:29:27'),
(65, 3, '2020-10-19', '23:59:00', '4,11, ,35,47,56, , , ,5, , , , ,59,70,73,83,9,12,23,38, , , ,77, ,', 50, '2020-10-20 06:24:15', '2020-10-20 06:24:23'),
(66, 4, '2020-10-20', '23:59:00', '1, , , , ,54,64,74,89,4,15,26,32, , , ,79, ,6,18, ,40,46, ,65, , ,', 5, '2020-10-20 23:58:51', '2020-10-20 23:58:51'),
(67, 4, '2020-10-21', '00:30:00', '1,13, ,32, ,52, , ,87,4,14, , , ,57,69,78, ,5,18,28, ,43, , ,79, ,', 20, '2020-10-20 23:59:13', '2020-10-20 23:59:13'),
(68, 4, '2020-10-20', '17:30:00', ',11,28,37,44, , ,73, , ,18, , , ,58,63,74,87,7, , , ,50, ,65,78,90,', 20, '2020-10-21 00:06:25', '2020-10-21 00:06:25'),
(69, 4, '2020-10-21', '17:00:00', ', ,22, ,40,51, ,70,82,3, ,27,31, , ,68,71, , ,13,29,34, , , ,72,90,', 5, '2020-10-21 00:06:47', '2020-10-21 23:28:11'),
(70, 1, '2020-10-21', '22:00:00', ',11, ,36,49,57,67, , ,4,20, , , ,59, ,79,82,5, ,29,40, , ,69, ,83,', 100, '2020-10-21 00:07:23', '2020-10-21 00:07:23'),
(71, 4, '2020-10-20', '18:00:00', '4, , ,40, ,59,64, ,81,8, ,24, ,42, , ,71,86, ,14,29, ,44,60,65, , ,', 5, '2020-10-21 00:07:38', '2020-10-21 00:07:38'),
(72, 1, '2020-10-21', '17:00:00', '5,14, ,32,40, , ,74, ,8, ,29, ,41,54, , ,85, , , ,36,49,58,69, ,86,', 20, '2020-10-21 00:09:43', '2020-10-21 22:22:12'),
(73, 1, '2020-10-21', '19:00:00', ',14, ,32, ,52, ,76,87,1, ,25, , ,59,61, ,88,2, ,30, ,46, ,67,80, ,', 50, '2020-10-21 00:10:04', '2020-10-21 00:10:04'),
(74, 1, '2020-10-21', '17:30:00', '5,11, , , , ,62,77,90,9,18,29,31, , ,65, , , ,19, , ,50,51,66,80, ,', 20, '2020-10-21 00:10:13', '2020-10-21 00:10:13'),
(75, 1, '2020-10-21', '17:00:00', '8, ,21,36, ,52, ,72, ,9,14,22, ,42, ,62, , ,10,20, , ,48,56, , ,85,', 50, '2020-10-21 00:11:28', '2020-10-21 00:11:28'),
(76, 4, '2020-10-21', '19:00:00', '2,19,20,31, ,52, , , , , , ,35,46,55,69, ,82,3, ,21,37, , , ,75,87,', 5, '2020-10-21 00:13:29', '2020-10-21 23:31:02'),
(77, 1, '2020-10-20', '22:00:00', ', ,21,36,46, ,65,75, ,5, , ,37, ,52,69, ,83,8,11,30,39, , , , ,88,', 5, '2020-10-21 04:40:06', '2020-10-21 04:40:06'),
(78, 1, '2020-10-20', '22:00:00', '1, ,24,31, ,58,61, , , ,15,25,38,42, , , ,86,10, ,30, ,44, , ,71,89,', 20, '2020-10-21 04:40:06', '2020-10-21 04:40:06'),
(79, 3, '2020-10-20', '22:30:00', ', ,24, ,44,52,61,80, ,3, , ,32, ,58,68, ,81,6,18,30,36, , , , ,86,', 50, '2020-10-21 05:10:10', '2020-10-21 05:10:10'),
(80, 1, '2020-10-20', '23:00:00', ', , ,32,46,51,63, ,81,4, ,22,38, ,55, ,78, ,9,15,28, , ,59, , ,86,', 5, '2020-10-21 05:38:23', '2020-10-21 05:38:23'),
(81, 4, '2020-10-21', '01:00:00', '7,12, , , ,55,62, ,81, ,15, ,40,42, ,67,77, , ,19,22, ,50,58, ,79, ,', 5, '2020-10-21 07:30:30', '2020-10-21 07:30:30'),
(82, 1, '2020-10-21', '21:00:00', ',13, ,33,44,51, , ,81, , , , ,46,53,61,76,84,2,20,25,37, , , , ,86,', 5, '2020-10-21 20:34:49', '2020-10-21 20:34:49'),
(83, 3, '2020-10-21', '14:03:00', ',17,25,36, , , ,77,85,5, , , ,45,51,65,80, ,6, ,27, , ,59,66, ,89,', 50, '2020-10-21 20:47:34', '2020-10-21 20:47:34'),
(84, 4, '2020-10-21', '14:30:00', '1,15, ,38, ,56, ,77, ,6, ,24, ,46, ,70,79, , , ,28,39,48,60, , ,82,', 5, '2020-10-21 20:50:14', '2020-10-21 21:11:49'),
(85, 4, '2020-10-22', '14:30:00', '7,12, ,34,46, , ,74, ,9,15,23, , , ,63, ,86, , ,25,38,49,51, ,79, ,', 5, '2020-10-21 20:55:07', '2020-10-21 20:55:07'),
(86, 4, '2020-10-21', '14:30:00', '8,16,21,33, , ,63, , , , , , ,50,52,69,72,83, , ,30,34, ,53, ,78,84,', 20, '2020-10-21 21:06:22', '2020-10-21 21:06:22'),
(87, 4, '2020-10-21', '15:00:00', ', , ,33, ,60,62,71,83,2, ,21, ,44, ,66,76, , ,20,28,35, , ,68, ,89,', 5, '2020-10-21 21:40:32', '2020-10-21 21:40:32'),
(88, 4, '2020-10-21', '15:00:00', ', ,23,31,44,59, ,72, ,6, , ,37, , ,62,77,81,8,17, , ,50, , ,80,88,', 20, '2020-10-21 21:40:41', '2020-10-21 21:40:41'),
(89, 4, '2020-10-21', '17:00:00', ', , ,37,40, ,64,72,81, ,16,20, ,45,50, ,77, ,7, , ,39, ,52,68, ,84,', 20, '2020-10-21 23:27:03', '2020-10-21 23:30:59'),
(90, 1, '2020-10-11', '10:00:00', 'dfsdgj', 43, '2020-10-22 17:00:11', '2020-10-22 17:00:11'),
(91, 1, '2020-10-11', '10:00:00', 'dfsdgj', 43, '2020-10-22 17:00:11', '2020-10-22 17:00:11'),
(92, 1, '2020-10-22', '14:03:00', ', ,25,32, , ,61,73,81,3,11, , ,47,52, ,74, ,9,19, ,37, , ,69, ,90,', 5, '2020-10-22 18:20:11', '2020-10-22 18:20:30'),
(93, 4, '2020-10-22', '14:03:00', '5, ,22, , ,51,65, ,84, ,12, ,38, , ,66,70,90, ,17, ,39,44,57,68, , ,', 5, '2020-10-22 18:41:59', '2020-10-22 18:41:59'),
(94, 4, '2020-10-22', '14:03:00', ',14,20,38,40, , , ,80,3, ,24, , ,50, ,73,83,7, ,26, , , ,61,76,89,', 20, '2020-10-22 18:58:55', '2020-10-22 18:58:55'),
(95, 1, '2020-10-22', '14:03:00', '1, ,20,34, ,51, ,70, ,4,12, ,36, , ,66,74, ,7,15, ,39,48, , , ,87,', 5, '2020-10-22 20:32:56', '2020-10-22 20:32:56'),
(96, 4, '2020-10-22', '14:30:00', '2,14, , ,46, ,68,73, ,8, ,25,37, ,51, , ,87, ,19,28,39, ,56, ,77, ,', 20, '2020-10-22 20:36:55', '2020-10-22 20:36:55'),
(97, 4, '2020-10-22', '15:00:00', '3,15, ,34, , , ,71,82, , ,24, ,47,54,62, ,90,4, ,25,39, ,56, ,74, ,', 5, '2020-10-22 21:42:00', '2020-10-22 21:42:00'),
(98, 4, '2020-10-22', '15:30:00', '1, , ,35, , ,68,73,80,6, ,25, ,45,50, , ,84,9,19,26, ,46, ,69, , ,', 5, '2020-10-22 22:05:27', '2020-10-22 22:05:27'),
(99, 4, '2020-10-22', '16:00:00', ', , ,33,43,59,61, ,83,4,19, , , , ,64,74,84,5, ,25,39, , ,66, ,85,', 5, '2020-10-22 22:36:18', '2020-10-22 22:36:18'),
(100, 4, '2020-10-22', '16:00:00', '6,16,23, ,47,58, , , ,7, ,25,31, , ,62, ,84,8, ,27,33, , , ,78,90,', 20, '2020-10-22 22:37:02', '2020-10-22 22:56:17'),
(101, 4, '2020-10-22', '16:30:00', '1,11,26,33, ,52, , , ,7, ,28, ,42, ,64,70, , ,14, ,38,45, , ,71,88,', 5, '2020-10-22 23:11:02', '2020-10-22 23:11:02'),
(102, 4, '2020-10-22', '17:30:00', ', ,29,32, ,50,61,74, ,1,15, ,34,43, , , ,89, , , ,38,47, ,69,79,90,', 5, '2020-10-23 00:12:41', '2020-10-23 00:12:41'),
(103, 3, '2020-10-22', '23:30:00', '9, , , ,43,50,61, ,82, ,12,21,37, ,56, ,77, , ,17,23,39,47, , , ,90,', 20, '2020-10-23 05:51:20', '2020-10-23 05:51:28'),
(104, 1, '2020-10-11', '10:00:00', 'dfsdgj', 43, '2020-10-23 21:49:41', '2020-10-23 21:49:41'),
(105, 1, '2020-10-11', '10:00:00', 'dfsdgj', 43, '2020-10-23 21:49:41', '2020-10-23 21:49:41'),
(106, 1, '2020-10-23', '23:00:00', ', ,25,30, ,52, ,71,90, ,14,28, , ,53,65,77, ,8, ,29, ,43,54, ,78, ,', 5, '2020-10-23 21:49:56', '2020-10-23 21:49:56'),
(107, 1, '2020-10-23', '23:00:00', '1, , , , ,50,60,73,87,2,17,23, ,43, ,65, , ,8, , ,38,47,52,66, , ,', 5, '2020-10-23 21:55:49', '2020-10-23 21:55:49'),
(108, 4, '2020-10-23', '15:30:00', '4, ,25, ,40, ,60, ,80,7,11, , ,43, , ,72,84, , ,28,38,46,55,66, , ,', 5, '2020-10-23 22:03:55', '2020-10-23 22:03:55'),
(109, 4, '2020-10-23', '17:00:00', ',15, , , ,54,61,73,83,3,16,25, ,41, , ,76, , ,17,28,33, ,56, ,78, ,', 5, '2020-10-23 23:36:51', '2020-10-23 23:36:51'),
(110, 3, '2020-10-23', '17:00:00', '2,17, , ,44, ,61, ,89,3, ,24, , ,53,63,75, ,5, ,29,30, , ,64,77, ,', 20, '2020-10-23 23:41:02', '2020-10-23 23:41:02'),
(111, 4, '2020-10-23', '17:00:00', '9, , ,30, ,52,61, ,87, ,16,24,33, , ,64, ,88, ,17, ,35,45,57, ,73, ,', 20, '2020-10-23 23:42:09', '2020-10-23 23:42:09'),
(112, 4, '2020-10-23', '18:00:00', ', ,29, ,44, ,62,76,87, ,12, ,38, ,56,63,78, ,4,18, , ,48, ,65, ,88,', 5, '2020-10-24 00:19:51', '2020-10-24 00:19:51'),
(113, 1, '2020-10-24', '15:30:00', '1, ,26,30, ,51, ,76, ,2,12, ,32, , ,63, ,82,4, , ,33,40, ,66, ,84,', 5, '2020-10-24 03:11:40', '2020-10-24 03:12:00'),
(114, 4, '2020-10-31', '16:30:00', ', ,21, ,44,51,62,72, ,7, , , ,46,57, ,76,81, ,13, ,37, , ,64,77,82,', 8, '2020-10-31 17:58:15', '2020-10-31 17:58:15'),
(115, 4, '2020-10-31', '12:00:00', ',14,20, , , ,66,73,88,4,17,21,32, ,52, , , ,9, ,24,37,45,59, , , ,', 4, '2020-10-31 18:02:07', '2020-10-31 18:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('0a3547cfbf6c7341404cdb9c30118b902325b8d030b67fbde545ea2cc4fb5ada1efbe425fbe420cb', 6, 1, 'MyApp', '[]', 0, '2020-10-31 17:55:31', '2020-10-31 17:55:31', '2021-10-31 10:55:31'),
('1197376365a83a83bed2d65c9d2e9a327b1589d5b67b17e6787399143e754fb9f4bf326e7381e42b', 4, 1, 'MyApp', '[]', 0, '2020-10-22 01:14:04', '2020-10-22 01:14:04', '2021-10-21 18:14:04'),
('1c519df7761b857cc7250692f76431457b3b770ac78d927f1bc0518f89a6af596aa565e59cf84931', 4, 1, 'MyApp', '[]', 0, '2020-10-23 23:36:34', '2020-10-23 23:36:34', '2021-10-23 16:36:34'),
('207b90cf434ddea5b311b0e94fd09c5a6fc2a8fafb5752ddba258ae5cceb1a1ddd80d0c134966eb0', 3, 1, 'MyApp', '[]', 0, '2020-10-23 05:50:46', '2020-10-23 05:50:46', '2021-10-22 22:50:46'),
('28e859afbc54d3819d2605e5df6c10c08ebb96939bed28ca8150c5cd2b6e5c09b8e986722426cbd0', 2, 1, 'MyApp', '[]', 0, '2020-10-14 22:45:12', '2020-10-14 22:45:12', '2021-10-14 15:45:12'),
('34b8b9dc58558536ef92c97c849aaa87e3073c09e4147eab8d806bae676bc79c21fbd31d4471bd39', 4, 1, 'MyApp', '[]', 0, '2020-10-17 21:39:41', '2020-10-17 21:39:41', '2021-10-17 14:39:41'),
('34e7104dc5a18ba975ff7e52c04ce566432f48b087b139303ca25894bc22d7a5f86d61ad3cbba9a1', 3, 1, 'MyApp', '[]', 0, '2020-10-21 20:47:20', '2020-10-21 20:47:20', '2021-10-21 13:47:20'),
('50d904f91496448d6e36829bad5805cc1596b8f515ba1082f8ee30eca52f1be9d985629d7bacf7a5', 1, 1, 'MyApp', '[]', 0, '2020-10-14 22:41:05', '2020-10-14 22:41:05', '2021-10-14 15:41:05'),
('54081b895be4b135758846433518cbf02c5a5dca2e40def2b0f239c724fa7f270369705b8d13c0ed', 4, 1, 'MyApp', '[]', 0, '2020-10-23 13:44:26', '2020-10-23 13:44:26', '2021-10-23 06:44:26'),
('58aa49e3f21d80774b19982766dd8578befc80f763a1f6e631d46f85e0a59ceef222c9dfe6c81487', 3, 1, 'MyApp', '[]', 0, '2020-10-22 18:43:26', '2020-10-22 18:43:26', '2021-10-22 11:43:26'),
('58de769a77cf843023a102baf437530e9c368312bf508425b301a12f24685c9151c3a9b585e45f7b', 6, 1, 'MyApp', '[]', 0, '2020-10-30 06:20:18', '2020-10-30 06:20:18', '2021-10-29 23:20:18'),
('620233c9195435b3937412e726eb3e91137520d781f008386a61ee74c5d985abea1e928f49a36086', 1, 1, 'MyApp', '[]', 0, '2020-10-20 00:27:25', '2020-10-20 00:27:25', '2021-10-19 17:27:25'),
('67394ee4c8e37dcf47647dfeaa984fc3d8613e9670af234e7e524ff5a22602de3d4896ecbc078dd1', 4, 1, 'MyApp', '[]', 0, '2020-10-20 23:56:37', '2020-10-20 23:56:37', '2021-10-20 16:56:37'),
('6993860d35da1d5f49f9ab735ec072c3ff69c7a682d996a4c7b94d01304dd63873fc308ef8299e44', 4, 1, 'MyApp', '[]', 0, '2020-10-21 07:27:34', '2020-10-21 07:27:34', '2021-10-21 00:27:34'),
('753190719d797bc98feda38fd5a0598877d37e83ba0551f331c3aae3fd9470199d95cdf7caf4d3ea', 4, 1, 'MyApp', '[]', 0, '2020-10-21 23:24:44', '2020-10-21 23:24:44', '2021-10-21 16:24:44'),
('82d3f6643e97219b9dc5e8cb5589fd484012d0ec560ae0aa09425a4909456412e225156ac2500bef', 5, 1, 'MyApp', '[]', 0, '2020-10-24 03:46:09', '2020-10-24 03:46:09', '2021-10-23 20:46:09'),
('916cbd0f8dad01a335e4cd5cef5dff4347fae041442c0cba88f8a34b89f8f61e8c54b7935ae534d1', 3, 1, 'MyApp', '[]', 0, '2020-10-16 00:34:21', '2020-10-16 00:34:21', '2021-10-15 17:34:21'),
('91eb3b9d199c1d7a02cb60f8083fef2ea7124fe80bc42c7881939068d6f8397672a02ecf8495bcae', 4, 1, 'MyApp', '[]', 0, '2020-10-20 23:53:00', '2020-10-20 23:53:00', '2021-10-20 16:53:00'),
('9b0f1f7f97d5b73ddf4c6e929faa58ec3696b233f9a47474ca4733e8cdfbf473e0bc125aae2944f0', 6, 1, 'MyApp', '[]', 0, '2020-10-30 06:18:03', '2020-10-30 06:18:03', '2021-10-29 23:18:03'),
('9e2c41bb5cc05d580a3bacf5820860935ad8b771082c9baf5b859498893aed1fac30affd1570dc42', 4, 1, 'MyApp', '[]', 0, '2020-10-31 17:52:50', '2020-10-31 17:52:50', '2021-10-31 10:52:50'),
('af7da7ab07d4d86f455c1bd2ed7278a98308809daec158255b96893e656a5dbe705bfd8a694bdb42', 4, 1, 'MyApp', '[]', 0, '2020-10-18 01:35:34', '2020-10-18 01:35:34', '2021-10-17 18:35:34'),
('b87b4b1c9ae247a58051f4bcf44d4366e594706f5dc82b3b51721274443130873dbc298dc6427c84', 4, 1, 'MyApp', '[]', 0, '2020-10-21 23:26:18', '2020-10-21 23:26:18', '2021-10-21 16:26:18'),
('bd256bab4a9e3e267ed9be56670bdce8f2c0ffc80f7aa297d2aeb412f75e7d22031fe6b2155b2ff4', 4, 1, 'MyApp', '[]', 0, '2020-10-23 22:05:36', '2020-10-23 22:05:36', '2021-10-23 15:05:36'),
('bf782335046b01ee13fd9c384e47f1cfcb48fa3a006ca50645a3730c9e65f0f2d41876f225251327', 4, 1, 'MyApp', '[]', 0, '2020-10-21 20:50:00', '2020-10-21 20:50:00', '2021-10-21 13:50:00'),
('d0011615cda7f4ede65d45839134a6a0f52924ebdbfb585dfb37c3383fda183865318aa5f2e1c1a4', 4, 1, 'MyApp', '[]', 0, '2020-10-18 01:32:08', '2020-10-18 01:32:08', '2021-10-17 18:32:08'),
('ddb7b0edf863076afc228a5875f6640687fdb3d45c57b9aa3856a469fc26d49ec8354afb664c5cad', 4, 1, 'MyApp', '[]', 0, '2020-10-23 22:03:42', '2020-10-23 22:03:42', '2021-10-23 15:03:42'),
('dfe84196b47a657c89130f89f1855acb568260cba2d400c8fea492989da34a577d8e858a36fb2737', 1, 1, 'MyApp', '[]', 0, '2020-10-14 22:59:04', '2020-10-14 22:59:04', '2021-10-14 15:59:04'),
('ef397bb2a94fa8c54080abcd0205271db65d20a962d554e00f4fafe90d65689940bb0720bdbf4213', 4, 1, 'MyApp', '[]', 0, '2020-10-22 18:41:22', '2020-10-22 18:41:22', '2021-10-22 11:41:22'),
('f42b4acadf8be9d2cf69b74d214f7116c36e211a3acf1ecc5e19e3164ce4b5fe9e6c3b7ab0830415', 4, 1, 'MyApp', '[]', 0, '2020-10-18 01:32:43', '2020-10-18 01:32:43', '2021-10-17 18:32:43'),
('f95ecb0b6082e68b5ee0fa336b3d44f950496eac9c1388fbf95579f9ce434caeb29556bcedd76ec3', 3, 1, 'MyApp', '[]', 0, '2020-10-21 05:09:58', '2020-10-21 05:09:58', '2021-10-20 22:09:58'),
('ff3064b051223c4d90d429e177cb90e6a6af448b0203b0c8fedf735d5576000d28a2371187fc5f33', 4, 1, 'MyApp', '[]', 0, '2020-10-22 19:07:51', '2020-10-22 19:07:51', '2021-10-22 12:07:51'),
('ff5d068ea9f79e55bf96f4c4a7d95770a0fcd6f3d11622417d4d9cf72e3c2e4cfd2b4c0f31110733', 4, 1, 'MyApp', '[]', 0, '2020-10-31 17:53:59', '2020-10-31 17:53:59', '2021-10-31 10:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'AxYjlcMy2R9gXEj6Raxzh1LNzh52gmVsa5kz2Gut', NULL, 'http://localhost', 1, 0, 0, '2020-10-14 10:00:20', '2020-10-14 10:00:20'),
(2, NULL, 'Laravel Password Grant Client', 't1qSSPLx7woEf7OqV0eGnoN3Ssx8koyg12f85Ejv', 'users', 'http://localhost', 0, 1, 0, '2020-10-14 10:00:21', '2020-10-14 10:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-14 10:00:21', '2020-10-14 10:00:21');

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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prizes`
--

CREATE TABLE `prizes` (
  `prize_id` bigint(20) UNSIGNED NOT NULL,
  `prize_unit_price` double NOT NULL,
  `prize_count` bigint(20) NOT NULL,
  `ef_rate` double NOT NULL,
  `li_rate` double NOT NULL,
  `fh_rate` double NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prizes`
--

INSERT INTO `prizes` (`prize_id`, `prize_unit_price`, `prize_count`, `ef_rate`, `li_rate`, `fh_rate`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 20, 1, 14, 40, 80, 0, '2020-10-15 10:53:48', '2020-10-31 18:07:01'),
(3, 50, 1, 14, 40, 56, 1, '2020-10-15 10:54:11', '2020-10-17 17:41:48'),
(4, 100, 1, 14, 80, 160, 1, '2020-10-15 10:54:29', '2020-10-17 17:16:27'),
(5, 5, 5, 2, 5, 5, 0, '2020-10-30 23:44:14', '2020-10-31 18:05:47'),
(7, 4, 2, 12, 12, 23, 1, '2020-10-31 18:12:08', '2020-10-31 18:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referral_user_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_user_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_user_id` bigint(20) NOT NULL,
  `new_user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`id`, `referral_user_code`, `new_user_code`, `referral_user_id`, `new_user_id`, `created_at`, `updated_at`) VALUES
(1, 'BVBJZX', 'DJUXZ6', 1, 2, '2020-10-14 22:45:12', '2020-10-14 22:45:12'),
(2, 'ESDOXK', 'CHS5YY', 3, 5, '2020-10-24 03:46:08', '2020-10-24 03:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `MID1` text COLLATE utf8mb4_unicode_ci,
  `MID2` text COLLATE utf8mb4_unicode_ci,
  `ORS` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `A` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PP` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TNC` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `FAQS` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CU` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `CP` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `REFINST` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `MID1`, `MID2`, `ORS`, `A`, `PP`, `TNC`, `FAQS`, `CU`, `CP`, `REFINST`, `created_at`, `updated_at`) VALUES
(0, 'ZDekxj49789428477837', 'KVVent16263227771812', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n</head>\r\n<body>\r\n    <div style=\"font-weight: bold;color:#000099;font-family:verdana\"> \r\n  <p>  Click on the link for a demo video session :</p>\r\n<a href=\"#\" style=\"text-decoration: none;\">How to Play KV - The live game show</a>\r\n\r\n<h4>RULES:</h4>\r\n\r\n<p>There are seven games in a day:</p>\r\n<ol>\r\n<li>10:00 am</li>\r\n<li>12:00 pm</li>\r\n<li>05:00 pm</li>\r\n<li>02:00 pm</li>\r\n<li>08:00 pm</li>\r\n<li>10:00 pm</li>\r\n<li>11:59 pm</li>\r\n</ol>\r\n<p>Buy tickets 15 minutes prior to the game like buy tickets till 1:45 pm for the 2:00 pm game and till 9:45 pm for the 10:00 pm game.</p>\r\n\r\n<p>At the time og game, a new ‘Join Game’ button will appear on the home screen. Tap it to enter the game. On the live game screen the number will appear in a circle above the ticket.</p>\r\n\r\n<p>Players can buy a maximum of two tickets. The number will appear only for 6 seconds.</p> \r\n<p>Player has to dab the number in his/her ticket which appears in the circle. If it is present in the ticket.</p>\r\n\r\nCLAIM:\r\n\r\n<p>On each ticket there is a claim button on the upper right corner, the player has to tap it to claim any prize. After tapping it a popup will open on which different winning combinations are mentioned.</p>\r\nYou have to tap on the winning combination; it means it is already claimed by another person.\r\n\r\n<p>A player can claim more than one winning combination on one ticket.</p>\r\n\r\n<p>Winning Combinations:</p>\r\n<ol>\r\n<li>Early Five</li>\r\n<li>Top Line</li>\r\n<li>Middle Line</li>\r\n<li>Bottom Line</li>\r\n<li>Full House</li>\r\n</ol>\r\n\r\n\r\n\r\n\r\n<p>KV is a number game known as Tambola, housie, bingo and many other names around the world. It is one of the most popular games in every age group.</p>\r\n\r\n<p>We have made it even more exciting by making it a live game show and adding timings to dab a number which makes it an exciting skill game to play. It brings the family together.</p>\r\n\r\n<p>You can find us on Facebook and Instagram.</p>\r\n\r\nFacebook:<br/>\r\n\r\n<b><a style=\"text-decoration: none;\"href=\"https://www.facebook.com/KV-Games-112424463968281/\">Click here to find us on Facebook</a></b><br/><br/>\r\n    Instagram :<br/>\r\n\r\n<b><a style=\"text-decoration: none; \" href=\"https://instagram.com/kv.ventures?igshid=69lfyy77g4cq\">Click here to find us on Instagram.</a></b><br/><br/>\r\n\r\n\r\n\r\n\r\n<p>Kindly check the FAQs If you are not familiar with the functionings of this app, or if your query is of urgent nature and is not answered in the FAQs, then do send us an email.</p>\r\n\r\n<p>Contact us for help.</p>\r\n<p>Kv Ventures Pvt. Ltd.</p>\r\n\r\nEmail-  <b style=\"text-decoration: none; \">kvgames13@gmail.com</b>\r\n</div>\r\n</body>\r\n</html>', 'is', 'a', 'dog', 'Her', 'Name', 'is', 'Frida', '2020-10-15 03:17:15', '2020-10-15 03:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `time` time NOT NULL,
  `sendto` int(11) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `time`, `sendto`, `title`, `message`, `status`, `created_at`, `updated_at`) VALUES
(3, '15:16:00', 2, 'vgg', 'message', 1, '2020-10-30 11:12:39', '2020-10-30 23:42:39'),
(4, '06:55:00', 1, 'This', 'is', 1, '2020-10-30 11:13:26', '2020-10-30 23:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_category`
--

CREATE TABLE `ticket_category` (
  `ticket_category_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_time` time NOT NULL,
  `tup_1` double NOT NULL,
  `tup_2` double NOT NULL,
  `tup_3` double NOT NULL,
  `tup_4` double NOT NULL,
  `is_enabled` int(11) NOT NULL,
  `double_game` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_category`
--

INSERT INTO `ticket_category` (`ticket_category_id`, `ticket_time`, `tup_1`, `tup_2`, `tup_3`, `tup_4`, `is_enabled`, `double_game`, `created_at`, `updated_at`) VALUES
(5, '16:30:00', 5, 10, 50, 109, 0, 0, '2020-10-15 11:46:53', '2020-10-30 19:07:18'),
(6, '17:00:00', 5, 20, 50, 100, 1, 0, '2020-10-17 19:05:52', '2020-10-17 19:05:57'),
(8, '17:30:00', 5, 20, 50, 100, 1, 0, '2020-10-15 11:48:33', '2020-10-15 11:48:33'),
(9, '18:00:00', 5, 20, 50, 100, 1, 0, '2020-10-15 11:49:11', '2020-10-15 11:49:11'),
(10, '18:30:00', 5, 20, 50, 100, 1, 0, '2020-10-15 11:52:04', '2020-10-15 11:52:04'),
(11, '19:00:00', 5, 20, 50, 100, 1, 1, '2020-10-15 11:52:27', '2020-10-30 21:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_category_changes`
--

CREATE TABLE `ticket_category_changes` (
  `tc_change_id` bigint(20) UNSIGNED NOT NULL,
  `tup_1` double NOT NULL,
  `tup_2` double NOT NULL,
  `tup_3` double NOT NULL,
  `tup_4` double NOT NULL,
  `change_for_date` date DEFAULT NULL,
  `change_for_time` time DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `double_game` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_category_changes`
--

INSERT INTO `ticket_category_changes` (`tc_change_id`, `tup_1`, `tup_2`, `tup_3`, `tup_4`, `change_for_date`, `change_for_time`, `status`, `double_game`, `created_at`, `updated_at`) VALUES
(1, 5, 20, 50, 100, '2020-10-14', '17:02:53', 1, 0, '2020-10-14 10:33:19', '2020-10-14 10:33:19'),
(3, 5, 20, 50, 100, '2020-10-17', '16:00:00', 1, 1, '2020-10-17 18:06:12', '2020-10-17 18:06:12'),
(6, 2, 20, 50, 100, '2020-10-22', '14:03:00', 0, 0, '2020-10-21 21:05:04', '2020-10-21 21:05:04'),
(7, 10, 20, 50, 100, '2020-10-29', '15:30:00', 0, 0, '2020-10-29 18:50:05', '2020-10-29 18:50:05'),
(9, 5, 20, 50, 100, '2020-10-29', '16:30:00', 1, 1, '2020-10-29 18:51:33', '2020-10-29 18:51:33'),
(11, 51, 20, 50, 100, '2020-10-30', '17:30:00', 0, 0, '2020-10-30 00:42:26', '2020-10-30 00:42:26'),
(12, 5, 10, 50, 100, '2020-10-30', '23:00:00', 1, 0, '2020-10-30 07:03:42', '2020-10-30 07:03:42'),
(13, 8, 81, 82, 83, '2020-10-31', '16:30:00', 1, 0, '2020-10-30 18:50:44', '2020-10-30 21:21:12'),
(14, 5, 20, 50, 100, '2020-10-31', '17:00:00', 1, 1, '2020-10-30 20:38:05', '2020-10-30 20:38:05'),
(15, 5, 10, 15, 20, '2020-10-30', '12:00:00', 1, 0, '2020-10-31 00:09:17', '2020-10-31 00:09:17'),
(16, 4, 9, 16, 49, '2020-10-31', '12:00:00', 1, 1, '2020-10-31 18:00:58', '2020-10-31 18:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_txn_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `txn_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `bank_txn_id`, `txn_id`, `order_id`, `user_id`, `txn_type`, `txn_status`, `amount`, `created_at`, `updated_at`) VALUES
(8, 'KVW141020203319', 'KVWALLET-141020207836', '141020205435', 1, 'KVWALLET', 'SUCCESS', -55, '2020-10-14 23:48:12', '2020-10-14 23:48:12'),
(9, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 55, '2020-10-14 23:48:12', '2020-10-14 23:48:12'),
(10, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 55, '2020-10-14 23:48:12', '2020-10-14 23:48:12'),
(11, '-', '-', '141020201026', 1, 'WITHDRAW', 'FAILURE', 1, '2020-10-14 23:49:32', '2020-10-22 08:02:21'),
(12, '-', '-', '141020209193', 1, 'WITHDRAW', 'FAILURE', 1, '2020-10-15 00:04:02', '2020-10-22 08:02:31'),
(13, 'sSA', 'sd', '141020207513', 1, 'WITHDRAW', 'SUCCESS', 1, '2020-10-15 05:48:49', '2020-10-15 05:48:51'),
(14, 'fs', 're', 'dfg', 1, 'GAME', 'SUCCESS', 32, '2020-10-15 15:51:00', '2020-10-15 15:51:00'),
(15, 'fs', 're', 'dfg', 1, 'GAME', 'SUCCESS', 32, '2020-10-15 15:51:33', '2020-10-15 15:51:33'),
(16, 'desrd', 'dfsgdh', 'ddfhg', 1, 'GAME', 'SUCCESS', -43, '2020-10-15 15:51:33', '2020-10-15 15:51:33'),
(17, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-15 15:51:46', '2020-10-15 15:51:46'),
(18, 'KVW151020207761', 'KVWALLET-151020208322', '151020207877', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-15 15:51:46', '2020-10-15 15:51:46'),
(19, 'KVW151020202259', 'KVWALLET-151020208622', '151020208883', 1, 'KVWALLET', 'SUCCESS', -20, '2020-10-15 15:52:07', '2020-10-15 15:52:07'),
(20, 'KVW151020209226', 'KVWALLET-151020204829', '151020208999', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-15 15:55:37', '2020-10-15 15:55:37'),
(21, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 5, '2020-10-15 16:39:44', '2020-10-15 16:39:44'),
(22, 'KVW151020206432', 'KVWALLET-151020206860', '151020204735', 1, 'KVWALLET', 'SUCCESS', -5, '2020-10-15 16:39:45', '2020-10-15 16:39:45'),
(23, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 20, '2020-10-15 16:47:15', '2020-10-15 16:47:15'),
(24, 'sSA', 'sd', '151020206096', 1, 'WITHDRAW', 'SUCCESS', 1, '2020-10-15 17:09:21', '2020-10-15 17:09:23'),
(25, 'sSA', 'sd', '151020208440', 1, 'WITHDRAW', 'SUCCESS', 1, '2020-10-15 17:25:19', '2020-10-15 17:25:20'),
(26, 'sSA', 'sd', '151020203193', 1, 'WITHDRAW', 'SUCCESS', 130, '2020-10-15 17:37:33', '2020-10-15 17:37:34'),
(27, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 120, '2020-10-15 17:41:17', '2020-10-15 17:41:17'),
(28, 'KVW151020204785', 'KVWALLET-151020208652', '151020206790', 1, 'KVWALLET', 'SUCCESS', -120, '2020-10-15 17:41:17', '2020-10-15 17:41:17'),
(29, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 55, '2020-10-15 18:20:40', '2020-10-15 18:20:40'),
(30, 'KVW151020209711', 'KVWALLET-151020203596', '151020205485', 1, 'KVWALLET', 'SUCCESS', -55, '2020-10-15 18:20:40', '2020-10-15 18:20:40'),
(31, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 120, '2020-10-15 19:55:38', '2020-10-15 19:55:38'),
(32, 'KVW151020204354', 'KVWALLET-151020202543', '151020202217', 1, 'KVWALLET', 'SUCCESS', -120, '2020-10-15 19:55:38', '2020-10-15 19:55:38'),
(33, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-15 20:41:57', '2020-10-15 20:41:57'),
(34, 'KVW151020202580', 'KVWALLET-151020202728', '151020204312', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-15 20:41:57', '2020-10-15 20:41:57'),
(35, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-15 22:46:57', '2020-10-15 22:46:57'),
(36, 'KVW151020206594', 'KVWALLET-151020207257', '151020202646', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-15 22:46:57', '2020-10-15 22:46:57'),
(37, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-15 23:26:00', '2020-10-15 23:26:00'),
(38, 'KVW151020203970', 'KVWALLET-151020203357', '151020209666', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-15 23:26:00', '2020-10-15 23:26:00'),
(39, 'sSA', 'sd', '151020206228', 1, 'WITHDRAW', 'SUCCESS', 178, '2020-10-15 23:55:28', '2020-10-15 23:55:30'),
(40, 'dsadfd', 'sadfer', 'srtefd', 3, 'PAYTM', 'SUCCESS', 10, '2020-10-16 00:34:41', '2020-10-16 00:34:41'),
(41, 'KVW151020203036', 'KVWALLET-151020209091', '151020202247', 3, 'KVWALLET', 'SUCCESS', -10, '2020-10-16 00:34:41', '2020-10-16 00:34:41'),
(42, 'dsadfd', 'sadfer', 'srtefd', 3, 'PAYTM', 'SUCCESS', 70, '2020-10-16 02:14:21', '2020-10-16 02:14:21'),
(43, 'KVW151020203437', 'KVWALLET-151020203493', '151020203730', 3, 'KVWALLET', 'SUCCESS', -70, '2020-10-16 02:14:21', '2020-10-16 02:14:21'),
(44, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-16 04:50:59', '2020-10-16 04:50:59'),
(45, 'KVW151020202794', 'KVWALLET-151020208698', '151020208181', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-16 04:51:00', '2020-10-16 04:51:00'),
(46, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-16 05:05:10', '2020-10-16 05:05:10'),
(47, 'KVW151020202796', 'KVWALLET-151020205418', '151020207246', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-16 05:05:11', '2020-10-16 05:05:11'),
(48, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-16 05:07:57', '2020-10-16 05:07:57'),
(49, 'KVW151020203944', 'KVWALLET-151020201907', '151020206842', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-16 05:07:57', '2020-10-16 05:07:57'),
(50, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-16 05:15:32', '2020-10-16 05:15:32'),
(51, 'KVW151020203247', 'KVWALLET-151020202758', '151020207222', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-16 05:15:32', '2020-10-16 05:15:32'),
(52, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 150, '2020-10-16 05:19:43', '2020-10-16 05:19:43'),
(53, 'KVW151020202581', 'KVWALLET-151020202697', '151020207939', 1, 'KVWALLET', 'SUCCESS', -150, '2020-10-16 05:19:43', '2020-10-16 05:19:43'),
(54, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-16 05:25:55', '2020-10-16 05:25:55'),
(55, 'KVW151020203300', 'KVWALLET-151020208787', '151020209498', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-16 05:25:55', '2020-10-16 05:25:55'),
(56, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-16 05:29:28', '2020-10-16 05:29:28'),
(57, 'KVW151020208313', 'KVWALLET-151020208860', '151020202040', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-16 05:29:28', '2020-10-16 05:29:28'),
(58, 'dsadfd', 'sadfer', 'srtefd', 3, 'PAYTM', 'SUCCESS', 40, '2020-10-17 00:58:00', '2020-10-17 00:58:00'),
(59, 'KVW161020203408', 'KVWALLET-161020206162', '161020208977', 3, 'KVWALLET', 'SUCCESS', -40, '2020-10-17 00:58:00', '2020-10-17 00:58:00'),
(60, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-17 21:40:26', '2020-10-17 21:40:26'),
(61, 'KVW171020208814', 'KVWALLET-171020207613', '171020208687', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-17 21:40:26', '2020-10-17 21:40:26'),
(62, 'dsadfd', 'sadfer', 'srtefd', 3, 'PAYTM', 'SUCCESS', 120, '2020-10-17 21:43:51', '2020-10-17 21:43:51'),
(63, 'KVW171020202855', 'KVWALLET-171020201748', '171020208706', 3, 'KVWALLET', 'SUCCESS', -120, '2020-10-17 21:43:51', '2020-10-17 21:43:51'),
(64, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-17 22:12:42', '2020-10-17 22:12:42'),
(65, 'KVW171020204318', 'KVWALLET-171020205020', '171020201280', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-17 22:12:43', '2020-10-17 22:12:43'),
(66, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 55, '2020-10-17 22:44:44', '2020-10-17 22:44:44'),
(67, 'KVW171020206349', 'KVWALLET-171020201794', '171020203196', 1, 'KVWALLET', 'SUCCESS', -55, '2020-10-17 22:44:45', '2020-10-17 22:44:45'),
(68, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 55, '2020-10-17 23:41:24', '2020-10-17 23:41:24'),
(69, 'KVW171020209130', 'KVWALLET-171020209451', '171020209608', 1, 'KVWALLET', 'SUCCESS', -55, '2020-10-17 23:41:24', '2020-10-17 23:41:24'),
(70, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-18 01:40:56', '2020-10-18 01:40:56'),
(71, 'KVW171020203947', 'KVWALLET-171020206309', '171020206092', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-18 01:40:56', '2020-10-18 01:40:56'),
(72, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 20, '2020-10-18 01:41:25', '2020-10-18 01:41:25'),
(73, 'KVW171020202106', 'KVWALLET-171020207364', '171020203238', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-18 01:41:25', '2020-10-18 01:41:25'),
(74, 'sSA', 'sd', '171020201079', 4, 'WITHDRAW', 'SUCCESS', 122, '2020-10-18 02:13:22', '2020-10-18 02:13:24'),
(75, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-18 02:16:12', '2020-10-18 02:16:12'),
(76, 'KVW171020203501', 'KVWALLET-171020201569', '171020201225', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-18 02:16:12', '2020-10-18 02:16:12'),
(77, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-20 00:29:27', '2020-10-20 00:29:27'),
(78, 'KVW191020204147', 'KVWALLET-191020204758', '191020209088', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-20 00:29:27', '2020-10-20 00:29:27'),
(79, 'dsadfd', 'sadfer', 'srtefd', 3, 'PAYTM', 'SUCCESS', 50, '2020-10-20 06:24:14', '2020-10-20 06:24:14'),
(80, 'KVW191020208586', 'KVWALLET-191020208615', '191020202469', 3, 'KVWALLET', 'SUCCESS', -50, '2020-10-20 06:24:15', '2020-10-20 06:24:15'),
(81, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-20 23:58:51', '2020-10-20 23:58:51'),
(82, 'KVW201020203313', 'KVWALLET-201020206721', '201020201585', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-20 23:58:51', '2020-10-20 23:58:51'),
(83, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 20, '2020-10-20 23:59:13', '2020-10-20 23:59:13'),
(84, 'KVW201020201499', 'KVWALLET-201020205263', '201020208449', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-20 23:59:13', '2020-10-20 23:59:13'),
(85, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 20, '2020-10-21 00:06:25', '2020-10-21 00:06:25'),
(86, 'KVW201020208647', 'KVWALLET-201020209126', '201020202752', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-21 00:06:25', '2020-10-21 00:06:25'),
(87, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-21 00:06:47', '2020-10-21 00:06:47'),
(88, 'KVW201020207747', 'KVWALLET-201020201806', '201020206191', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-21 00:06:47', '2020-10-21 00:06:47'),
(89, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 100, '2020-10-21 00:07:23', '2020-10-21 00:07:23'),
(90, 'KVW201020203819', 'KVWALLET-201020204794', '201020203836', 1, 'KVWALLET', 'SUCCESS', -100, '2020-10-21 00:07:23', '2020-10-21 00:07:23'),
(91, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-21 00:07:38', '2020-10-21 00:07:38'),
(92, 'KVW201020208721', 'KVWALLET-201020202955', '201020208892', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-21 00:07:38', '2020-10-21 00:07:38'),
(93, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 20, '2020-10-21 00:09:43', '2020-10-21 00:09:43'),
(94, 'KVW201020204525', 'KVWALLET-201020201926', '201020204946', 1, 'KVWALLET', 'SUCCESS', -20, '2020-10-21 00:09:43', '2020-10-21 00:09:43'),
(95, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 50, '2020-10-21 00:10:04', '2020-10-21 00:10:04'),
(96, 'KVW201020201036', 'KVWALLET-201020207099', '201020205779', 1, 'KVWALLET', 'SUCCESS', -50, '2020-10-21 00:10:04', '2020-10-21 00:10:04'),
(97, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 20, '2020-10-21 00:10:13', '2020-10-21 00:10:13'),
(98, 'KVW201020203945', 'KVWALLET-201020202458', '201020204685', 1, 'KVWALLET', 'SUCCESS', -20, '2020-10-21 00:10:13', '2020-10-21 00:10:13'),
(99, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 50, '2020-10-21 00:11:28', '2020-10-21 00:11:28'),
(100, 'KVW201020202976', 'KVWALLET-201020208544', '201020208390', 1, 'KVWALLET', 'SUCCESS', -50, '2020-10-21 00:11:28', '2020-10-21 00:11:28'),
(101, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-21 00:13:29', '2020-10-21 00:13:29'),
(102, 'KVW201020206366', 'KVWALLET-201020205030', '201020209951', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-21 00:13:29', '2020-10-21 00:13:29'),
(103, 'dsadfd', 'sadfer', 'srtefd', 1, 'PAYTM', 'SUCCESS', 25, '2020-10-21 04:40:06', '2020-10-21 04:40:06'),
(104, 'KVW201020201052', 'KVWALLET-201020208155', '201020202300', 1, 'KVWALLET', 'SUCCESS', -25, '2020-10-21 04:40:06', '2020-10-21 04:40:06'),
(105, 'dsadfd', 'sadfer', 'srtefd', 3, 'PAYTM', 'SUCCESS', 50, '2020-10-21 05:10:10', '2020-10-21 05:10:10'),
(106, 'KVW201020208531', 'KVWALLET-201020208264', '201020205940', 3, 'KVWALLET', 'SUCCESS', -50, '2020-10-21 05:10:10', '2020-10-21 05:10:10'),
(107, 'KVW201020203306', 'KVWALLET-201020206587', '201020205879', 1, 'KVWALLET', 'SUCCESS', -5, '2020-10-21 05:38:23', '2020-10-21 05:38:23'),
(108, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-21 07:30:30', '2020-10-21 07:30:30'),
(109, 'KVW211020203434', 'KVWALLET-211020201231', '211020204635', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-21 07:30:30', '2020-10-21 07:30:30'),
(110, 'KVW211020208704', 'KVWALLET-211020208993', '211020209535', 1, 'KVWALLET', 'SUCCESS', -5, '2020-10-21 20:34:49', '2020-10-21 20:34:49'),
(111, 'dsadfd', 'sadfer', 'srtefd', 3, 'PAYTM', 'SUCCESS', 50, '2020-10-21 20:47:34', '2020-10-21 20:47:34'),
(112, 'KVW211020208845', 'KVWALLET-211020207795', '211020208562', 3, 'KVWALLET', 'SUCCESS', -50, '2020-10-21 20:47:34', '2020-10-21 20:47:34'),
(113, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-21 20:50:14', '2020-10-21 20:50:14'),
(114, 'KVW211020205305', 'KVWALLET-211020208648', '211020208386', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-21 20:50:14', '2020-10-21 20:50:14'),
(115, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-21 20:55:07', '2020-10-21 20:55:07'),
(116, 'KVW211020204608', 'KVWALLET-211020205919', '211020204638', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-21 20:55:07', '2020-10-21 20:55:07'),
(117, '-', '-', '211020201298', 4, 'WITHDRAW', 'FAILURE', 0, '2020-10-21 20:57:47', '2020-10-22 18:40:38'),
(118, '-', '-', '211020205974', 4, 'WITHDRAW', 'FAILURE', 0, '2020-10-21 21:00:04', '2020-10-22 18:41:25'),
(119, 'dsadfd', 'sadfer', 'srtefd', 4, 'PAYTM', 'SUCCESS', 20, '2020-10-21 21:06:22', '2020-10-21 21:06:22'),
(120, 'KVW211020201178', 'KVWALLET-211020201015', '211020202527', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-21 21:06:22', '2020-10-21 21:06:22'),
(121, 'KVW211020203978', 'KVWALLET-211020201973', '211020203827', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-21 21:40:32', '2020-10-21 21:40:32'),
(122, 'KVW211020203412', 'KVWALLET-211020208793', '211020203912', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-21 21:40:41', '2020-10-21 21:40:41'),
(123, '-', '-', '211020209764', 4, 'WITHDRAW', 'FAILURE', 111, '2020-10-21 21:58:14', '2020-10-22 18:46:38'),
(124, 'KVW211020203519', 'KVWALLET-211020205866', '211020205361', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-21 23:27:03', '2020-10-21 23:27:03'),
(125, '-', '-', '211020201443', 4, 'WITHDRAW', 'FAILURE', 91, '2020-10-21 23:29:28', '2020-10-22 18:47:05'),
(126, '-', '-', '211020203005', 4, 'WITHDRAW', 'FAILURE', 159, '2020-10-22 01:28:35', '2020-10-22 18:47:07'),
(127, '-', '-', '211020204534', 1, 'WITHDRAW', 'SUCCESS', 2, '2020-10-22 06:16:56', '2020-10-22 08:04:30'),
(128, '-', '-', '221020202226', 1, 'WITHDRAW', 'SUCCESS', 2, '2020-10-22 08:14:28', '2020-10-22 08:14:28'),
(129, 'fs', 're', 'dfg', 1, 'GAME', 'SUCCESS', 32, '2020-10-22 17:00:11', '2020-10-22 17:00:11'),
(130, 'desrd', 'dfsgdh', 'ddfhg', 1, 'GAME', 'SUCCESS', -43, '2020-10-22 17:00:11', '2020-10-22 17:00:11'),
(131, '-', '-', '221020205357', 1, 'WITHDRAW', 'FAILURE', 2, '2020-10-22 17:18:02', '2020-10-27 00:37:26'),
(132, '146567285283', '20201022111212800110168388754920652', '221020202698', 1, 'PAYTM', 'SUCCESS', 5, '2020-10-22 18:20:11', '2020-10-22 18:20:11'),
(133, 'KVW221020201128', 'KVWALLET-221020208494', '221020201268', 1, 'KVWALLET', 'SUCCESS', -5, '2020-10-22 18:20:11', '2020-10-22 18:20:11'),
(134, 'KVW221020204857', 'KVWALLET-221020203921', '221020209665', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-22 18:41:59', '2020-10-22 18:41:59'),
(135, '-', '-', '221020201085', 4, 'WITHDRAW', 'FAILURE', 154, '2020-10-22 18:46:41', '2020-10-22 18:48:08'),
(136, '-', '-', '221020208134', 4, 'WITHDRAW', 'FAILURE', 0, '2020-10-22 18:51:06', '2020-10-22 18:51:06'),
(137, '029682711404', '20201022111212800110168281155125600', '221020205893', 4, 'PAYTM', 'SUCCESS', 20, '2020-10-22 18:58:55', '2020-10-22 18:58:55'),
(138, 'KVW221020201096', 'KVWALLET-221020201390', '221020203901', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-22 18:58:55', '2020-10-22 18:58:55'),
(139, '-', '-', '221020205980', 3, 'WITHDRAW', 'FAILURE', 10, '2020-10-22 19:06:41', '2020-10-22 19:07:10'),
(140, '-', '-', '221020204717', 3, 'WITHDRAW', 'SUCCESS', 10, '2020-10-22 19:07:50', '2020-10-22 19:08:09'),
(141, '-', '-', '221020202754', 4, 'WITHDRAW', 'SUCCESS', 10, '2020-10-22 19:08:01', '2020-10-22 19:08:06'),
(142, '146575947890', '20201022111212800110168408754328917', '221020205417', 1, 'PAYTM', 'SUCCESS', 5, '2020-10-22 20:32:55', '2020-10-22 20:32:55'),
(143, 'KVW221020207478', 'KVWALLET-221020208964', '221020204797', 1, 'KVWALLET', 'SUCCESS', -5, '2020-10-22 20:32:56', '2020-10-22 20:32:56'),
(144, '029684351740', '20201022111212800110168646654310615', '221020202252', 4, 'PAYTM', 'SUCCESS', 20, '2020-10-22 20:36:55', '2020-10-22 20:36:55'),
(145, 'KVW221020207318', 'KVWALLET-221020207532', '221020203378', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-22 20:36:55', '2020-10-22 20:36:55'),
(146, 'KVW221020204496', 'KVWALLET-221020206949', '221020204411', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-22 21:42:00', '2020-10-22 21:42:00'),
(147, '-', '-', '221020207617', 4, 'WITHDRAW', 'SUCCESS', 293, '2020-10-22 21:42:24', '2020-10-22 21:42:41'),
(148, '029685744282', '20201022111212800110168506554730374', '221020209657', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-22 22:05:26', '2020-10-22 22:05:26'),
(149, 'KVW221020207564', 'KVWALLET-221020205107', '221020202938', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-22 22:05:27', '2020-10-22 22:05:27'),
(150, '029686180219', '20201022111212800110168597254934656', '221020207234', 4, 'PAYTM', 'SUCCESS', 5, '2020-10-22 22:36:18', '2020-10-22 22:36:18'),
(151, 'KVW221020208685', 'KVWALLET-221020206742', '221020208406', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-22 22:36:18', '2020-10-22 22:36:18'),
(152, '029686191633', '20201022111212800110168487154662647', '221020204173', 4, 'PAYTM', 'SUCCESS', 20, '2020-10-22 22:37:02', '2020-10-22 22:37:02'),
(153, 'KVW221020201489', 'KVWALLET-221020201659', '221020201134', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-22 22:37:02', '2020-10-22 22:37:02'),
(154, 'KVW221020203846', 'KVWALLET-221020209524', '221020206583', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-22 23:11:02', '2020-10-22 23:11:02'),
(155, 'KVW221020206847', 'KVWALLET-221020203687', '221020207444', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-23 00:12:41', '2020-10-23 00:12:41'),
(156, 'KVW221020202616', 'KVWALLET-221020206070', '221020201817', 3, 'KVWALLET', 'SUCCESS', -20, '2020-10-23 05:51:20', '2020-10-23 05:51:20'),
(157, '146635490579', '20201023111212800110168441655014427', '231020208301', 1, 'PAYTM', 'SUCCESS', 5, '2020-10-23 21:43:30', '2020-10-23 21:43:30'),
(158, 'fs', 're', 'dfg', 1, 'GAME', 'SUCCESS', 32, '2020-10-23 21:45:09', '2020-10-23 21:45:09'),
(159, 'fs', 're', 'dfg', 1, 'GAME', 'SUCCESS', 32, '2020-10-23 21:49:41', '2020-10-23 21:49:41'),
(160, 'desrd', 'dfsgdh', 'ddfhg', 1, 'GAME', 'SUCCESS', -43, '2020-10-23 21:49:41', '2020-10-23 21:49:41'),
(161, '146635490579', '20201023111212800110168441655014427', '231020208301', 1, 'PAYTM', 'SUCCESS', 5, '2020-10-23 21:49:56', '2020-10-23 21:49:56'),
(162, '146635944555', '20201023111212800110168004054465937', '231020202941', 1, 'PAYTM', 'SUCCESS', 5, '2020-10-23 21:49:56', '2020-10-23 21:49:56'),
(163, 'KVW231020207077', 'KVWALLET-231020204961', '231020201151', 1, 'KVWALLET', 'SUCCESS', -5, '2020-10-23 21:49:56', '2020-10-23 21:49:56'),
(164, '146636283336', '20201023111212800110168993054795446', '231020206425', 1, 'PAYTM', 'SUCCESS', 5, '2020-10-23 21:54:38', '2020-10-23 21:54:38'),
(165, '146636324457', '20201023111212800110168948855138853', '231020205872', 1, 'PAYTM', 'SUCCESS', 5, '2020-10-23 21:55:12', '2020-10-23 21:55:12'),
(166, '146636324457', '20201023111212800110168948855138853', '231020205872', 1, 'PAYTM', 'SUCCESS', 5, '2020-10-23 21:55:49', '2020-10-23 21:55:49'),
(167, '146636367370', '20201023111212800110168103554770804', '231020208846', 1, 'PAYTM', 'FAILURE', 5, '2020-10-23 21:55:49', '2020-10-30 20:12:07'),
(168, 'KVW231020205708', 'KVWALLET-231020208388', '231020209516', 1, 'KVWALLET', 'SUCCESS', -5, '2020-10-23 21:55:49', '2020-10-23 21:55:49'),
(169, 'KVW231020201294', 'KVWALLET-231020202447', '231020205088', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-23 22:03:55', '2020-10-23 22:03:55'),
(170, 'KVW231020207026', 'KVWALLET-231020201509', '231020209371', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-23 23:36:51', '2020-10-23 23:36:51'),
(171, 'KVW231020202723', 'KVWALLET-231020201254', '231020207605', 3, 'KVWALLET', 'SUCCESS', -20, '2020-10-23 23:41:02', '2020-10-23 23:41:02'),
(172, 'KVW231020201859', 'KVWALLET-231020203040', '231020205345', 4, 'KVWALLET', 'SUCCESS', -20, '2020-10-23 23:42:09', '2020-10-23 23:42:09'),
(173, 'KVW231020205577', 'KVWALLET-231020209185', '231020202101', 4, 'KVWALLET', 'SUCCESS', -5, '2020-10-24 00:19:51', '2020-10-24 00:19:51'),
(174, 'KVW231020201979', 'KVWALLET-231020209342', '231020209532', 1, 'KVWALLET', 'PENDING', -5, '2020-10-24 03:11:40', '2020-10-24 03:11:40'),
(175, 'KVW311020207556', 'KVWALLET-311020204104', '311020208192', 4, 'KVWALLET', 'SUCCESS', -8, '2020-10-31 17:58:15', '2020-10-31 17:58:15'),
(176, 'KVW311020204856', 'KVWALLET-311020202930', '311020203775', 4, 'KVWALLET', 'SUCCESS', -4, '2020-10-31 18:02:07', '2020-10-31 18:02:07'),
(177, '-', '-', '311020201143', 4, 'WITHDRAW', 'SUCCESS', 38, '2020-10-31 18:16:08', '2020-10-31 18:16:14'),
(178, '-', '-', '021120201656', 4, 'WITHDRAW', 'PENDING', 1, '2020-11-02 19:05:04', '2020-11-02 19:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `referral_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `gms_token` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `status`, `referral_code`, `balance`, `gms_token`, `email_verified_at`, `image_url`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Aryan', '9599695958', NULL, 1, 'DJUXZ6', 5, NULL, NULL, NULL, '$2y$10$bULoX7HLngteGY7ASxpEw.szj23V.JKvCqc0QnkM2mYpGTrSfKuhW', NULL, '2020-10-14 22:45:12', '2020-10-14 22:45:12'),
(3, 'vedant', '8587925218', NULL, 1, 'ESDOXK', 60, NULL, NULL, 'http://glacademy.in/kvgames/public/images/1602850963.jpg', '$2y$10$Q1ekITk93rtpSpFwRc5GnOJT7QvzuudTOtbcoyAqp.ARDnLsWNci2', NULL, '2020-10-16 00:34:20', '2020-10-23 23:41:02'),
(4, 'kalvinder', '7509695243', 'kalvinder40@gmail.com', 1, '2N6ZLZ', 161, 'dhmAitu2Sf6zwYhlLB5ACe:APA91bF53we3YaDKQuWcTldA9Sp0ITqMOVf9AJjmUe6XMcLts_WQsGCxHXPVnnOgHyvPQFsnKaPaMW8bMwqB5-u5sKxRDmN6OtWkTeoDTDBn-O_0s4xtRJwoD9ORxXyC7wgJ27QzQVJG', NULL, 'http://glacademy.in/kvgames/public/images/1604121864.jpg', '$2y$10$CuDlyaOGh1QHOFr6UfOnwue9IvGIyoX..L7I1CWvaWFq4Z4.9kbqu', NULL, '2020-10-17 21:39:40', '2020-11-02 19:05:04'),
(5, 'vedant2', '9891760013', NULL, 1, 'CHS5YY', 5, NULL, NULL, NULL, '$2y$10$rhXAMHvHw7APf4YFfZwYJ.8rlk4lzLed9DtyIlAr8UT7htrCMd8ZW', NULL, '2020-10-24 03:46:08', '2020-10-24 03:46:08'),
(6, 'Raj Aryan', '9358174783', NULL, 1, 'AF4GP4', 10, 'fCYIDkFyTTmjiNikX5x0od:APA91bGegeh28FYka6xMgNdhvJH7pG7JvSkcuNQO6xaRueEdOjlRkg96S9HfNyLlO5ShETo4Pmc6fHpb6P8tbj351eQC5vG3E2oXN4lTD0kYyU0M_HMl6o6JZtKFjYtM89r3G8sM01nb', NULL, NULL, '$2y$10$S2ipfNaV0NsjQU5deyoBwujV2vN87Zb6UeuXE0Xcl/yGCcOmRW4jS', NULL, '2020-10-30 06:18:03', '2020-10-30 23:10:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_joins`
--
ALTER TABLE `game_joins`
  ADD PRIMARY KEY (`join_id`);

--
-- Indexes for table `game_responses`
--
ALTER TABLE `game_responses`
  ADD PRIMARY KEY (`response_id`);

--
-- Indexes for table `game_results`
--
ALTER TABLE `game_results`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_tickets`
--
ALTER TABLE `my_tickets`
  ADD PRIMARY KEY (`my_ticket_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`prize_id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_category`
--
ALTER TABLE `ticket_category`
  ADD PRIMARY KEY (`ticket_category_id`);

--
-- Indexes for table `ticket_category_changes`
--
ALTER TABLE `ticket_category_changes`
  ADD PRIMARY KEY (`tc_change_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_joins`
--
ALTER TABLE `game_joins`
  MODIFY `join_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `game_responses`
--
ALTER TABLE `game_responses`
  MODIFY `response_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `game_results`
--
ALTER TABLE `game_results`
  MODIFY `result_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `my_tickets`
--
ALTER TABLE `my_tickets`
  MODIFY `my_ticket_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prizes`
--
ALTER TABLE `prizes`
  MODIFY `prize_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_category`
--
ALTER TABLE `ticket_category`
  MODIFY `ticket_category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ticket_category_changes`
--
ALTER TABLE `ticket_category_changes`
  MODIFY `tc_change_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `quizapp_db`
--
CREATE DATABASE IF NOT EXISTS `quizapp_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quizapp_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'aryanraj', 'aryanraj');

-- --------------------------------------------------------

--
-- Table structure for table `daily_challenges`
--

CREATE TABLE `daily_challenges` (
  `dc_id` bigint(20) UNSIGNED NOT NULL,
  `dc_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dc_img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dc_played_times` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `isActive` int(11) NOT NULL DEFAULT '1',
  `dc_for_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_challenges`
--

INSERT INTO `daily_challenges` (`dc_id`, `dc_name`, `dc_img_url`, `dc_played_times`, `isActive`, `dc_for_date`, `created_at`, `updated_at`) VALUES
(1, 'Amazon Forest', 'https://firebasestorage.googleapis.com/v0/b/quizapp-4da73.appspot.com/o/img_dummy.png?alt=media&token=0992fc1f-f371-49e1-b679-7e5abd671790', '3', 1, '2020-10-10', '2020-08-14 01:41:14', '2020-10-10 23:48:22'),
(2, 'Sports', 'https://firebasestorage.googleapis.com/v0/b/quizapp-4da73.appspot.com/o/dummy_img_3.png?alt=media&token=66981cab-8e86-425e-8dc2-ae6520b8b8c3', '3', 1, '2020-10-04', '2020-08-08 01:42:14', '2020-10-05 05:52:49'),
(3, 'Crime & Story', 'https://firebasestorage.googleapis.com/v0/b/quizapp-4da73.appspot.com/o/dummy_img_2.png?alt=media&token=9f57b598-3a37-460c-ae3f-7bf3c6d03d94', '0', 1, '2020-10-03', '2020-08-08 01:42:49', '2020-08-08 01:42:49'),
(4, 'New Challenge', 'https://firebasestorage.googleapis.com/v0/b/quizapp-4da73.appspot.com/o/dummy_img_3.png?alt=media&token=66981cab-8e86-425e-8dc2-ae6520b8b8c3', '0', 1, '2020-10-03', '2020-08-08 01:54:55', '2020-08-08 01:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `dc_questions`
--

CREATE TABLE `dc_questions` (
  `dcq_id` bigint(20) UNSIGNED NOT NULL,
  `dc_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dc_questions`
--

INSERT INTO `dc_questions` (`dcq_id`, `dc_id`, `question`, `answer`, `o1`, `o2`, `o3`, `o4`, `created_at`, `updated_at`) VALUES
(2, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', '1', 'Largest railway station', 'Highest railway station', 'Largest railway station', 'None of the above', '2020-10-02 13:03:06', '2020-10-02 13:03:06'),
(3, 2, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', '2', 'Asia', 'Africa', 'Europe', 'Australia', '2020-10-02 13:03:23', '2020-10-02 13:03:23'),
(4, 2, 'Garampani sanctuary is located at', '2', 'Junagarh, Gujarat', 'Diphu, Assam', 'Kohima, Nagaland', 'Gangtok, Sikkim', '2020-10-02 13:03:39', '2020-10-02 13:03:39'),
(5, 2, 'Hitler party which came into power in 1933 is known as', '2', 'Labour Party', 'Nazi Party', 'Ku-Klux-Klan', 'Democratic Party', '2020-10-02 13:03:53', '2020-10-02 13:03:53'),
(6, 2, 'Fastest shorthand writer was', '1', 'Dr. G. D. Bist', 'J.R.D. Tata', 'J.M. Tagore', 'Khudada Khan', '2020-10-02 13:04:07', '2020-10-02 13:04:07'),
(7, 2, 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in', '1', '1967', '1968', '1958', '1922', '2020-10-02 13:04:18', '2020-10-02 13:04:18'),
(8, 2, 'Golf player Vijay Singh belongs to which country?', '2', 'USA', 'Fiji', 'India', 'UK', '2020-10-02 13:04:48', '2020-10-02 13:04:48'),
(9, 1, 'What is your name', '2', 'Aryan', 'Aman', 'Sumit', 'Prince', '2020-10-10 16:20:48', '2020-10-10 16:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `dummy_users`
--

CREATE TABLE `dummy_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT '1',
  `firebase_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_img` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dummy_users`
--

INSERT INTO `dummy_users` (`user_id`, `name`, `isActive`, `firebase_user_id`, `email`, `created_at`, `updated_at`, `user_img`) VALUES
(2, 'First', 1, 'qsdfgvhbasd', 'firstbot@gmail.com', '2020-10-01 14:57:28', '2020-10-01 14:57:56', 'https://lh3.googleusercontent.com/a-/AOh14GgOq-FB-ZmX4xY-GwkRJSSVEquI_dSXT7jB1fJdgg=s96-c'),
(3, 'TestBot1', 1, 'someuserid', 'testbot1@gmail.com', '2020-10-04 00:56:39', '2020-10-04 00:56:39', 'https://homepages.cae.wisc.edu/~ece533/images/airplane.png'),
(4, 'NewBot', 1, 'newbotid', 'newbot@gmail.com', '2020-10-04 00:57:48', '2020-10-04 00:57:48', 'https://homepages.cae.wisc.edu/~ece533/images/pool.png');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_07_29_092844_create_topics_table', 1),
(9, '2020_07_29_093019_create_daily_challenges_table', 1),
(10, '2020_07_29_102323_create_dummy_users_table', 1),
(11, '2020_08_02_052752_create_topic_questions_table', 1),
(12, '2020_08_02_053005_create_dc_questions_table', 1),
(13, '2020_08_02_053050_create_quiz_response_table', 1),
(14, '2020_08_02_084607_create_question_combination_table', 1),
(15, '2020_08_16_170554_create_my_topics_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_topics`
--

CREATE TABLE `my_topics` (
  `id` int(11) NOT NULL,
  `firebase_user_id` text,
  `topic_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_topics`
--

INSERT INTO `my_topics` (`id`, `firebase_user_id`, `topic_id`, `created_at`, `updated_at`) VALUES
(4, 'X1WaOqDl7KO1WsbBr5CGeMPuksx2', 5, '2020-10-01 14:41:35', '2020-10-01 14:41:35'),
(6, 'PuaUScc0iLMG022cNdebw6ACOC62', 4, '2020-10-06 09:20:15', '2020-10-06 09:20:15'),
(8, 'PuaUScc0iLMG022cNdebw6ACOC62', 1, '2020-10-08 12:58:17', '2020-10-08 12:58:17'),
(10, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 1, '2020-10-28 15:05:12', '2020-10-28 15:05:12'),
(11, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 1, '2020-11-16 15:03:17', '2020-11-16 15:03:17'),
(12, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 2, '2020-11-16 15:03:19', '2020-11-16 15:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('03fdfdb5d17b7b627aa3891257e2e7eca144a35c2ea3815bef890e6f56376865a4290d64e3c892cb', 12, 1, 'MyApp', '[]', 0, '2020-11-13 01:37:35', '2020-11-13 01:37:35', '2021-11-12 18:37:35'),
('08495f0d0d056d7ed773c85768487572534391208ba91badd9f787dfbd302e445b1e53262b9c4f2b', 5, 1, 'MyApp', '[]', 0, '2020-08-27 15:31:07', '2020-08-27 15:31:07', '2021-08-27 08:31:07'),
('132651f990d863d4cfd862df2a73f5e18cd73ddc388c229696cb99cf02002dceb17cae7343c1587f', 5, 1, 'MyApp', '[]', 0, '2020-08-08 10:57:05', '2020-08-08 10:57:05', '2021-08-08 03:57:05'),
('1d30daa62dde7567d92cb47f5e001906acc93c3bbd9c3eadfa587670739a868021bcd6b3ef04ed69', 5, 1, 'MyApp', '[]', 0, '2020-10-26 14:35:28', '2020-10-26 14:35:28', '2021-10-26 07:35:28'),
('249830cad98cb72550b9df83866e18559263e012a0a7a145fa06ca1e214801ff3376dead5c914728', 7, 1, 'MyApp', '[]', 0, '2020-08-13 09:17:29', '2020-08-13 09:17:29', '2021-08-13 02:17:29'),
('24cb9175386753b29d2ff1e5cc8593ec3ad0be5ffc9da1671d4b15ffc459b422950bec651242cd6f', 8, 1, 'MyApp', '[]', 0, '2020-08-13 14:46:08', '2020-08-13 14:46:08', '2021-08-13 07:46:08'),
('259c12cdfeed2a2613a421629b4a9496f9cf8e061b49814ccecf29a67a68cd078f010f9dcf2a1eaa', 7, 1, 'MyApp', '[]', 0, '2020-10-13 14:53:50', '2020-10-13 14:53:50', '2021-10-13 07:53:50'),
('2b06bbaf0727d62108bab44cc505bc28e0087c1d9a801f29d0df81bbe5f3b6764155ddf2611b743a', 5, 1, 'MyApp', '[]', 0, '2020-11-08 09:51:27', '2020-11-08 09:51:27', '2021-11-08 02:51:27'),
('339985e8b834287027db50ef07cbfb3af562d40e905b32f47e4c1e47bbe493bd318f6a9c8be8f424', 7, 1, 'MyApp', '[]', 0, '2020-10-05 17:12:42', '2020-10-05 17:12:42', '2021-10-05 10:12:42'),
('3cec7d7cddd42d802f57ba002b489953be04fb2bb3a3d7848f11961e5e600e7a6ca5adac0a81d159', 6, 1, 'MyApp', '[]', 0, '2020-08-18 00:33:24', '2020-08-18 00:33:24', '2021-08-17 17:33:24'),
('3fa9c9be01ee0f76d29dcd46db3e3d22cf316476f88c78bfd243952228895d45bb6076ddb59020fc', 18, 1, 'MyApp', '[]', 0, '2020-11-12 17:59:18', '2020-11-12 17:59:18', '2021-11-12 10:59:18'),
('4ba283b938cba3402713f431ea77b32d6b7d63c0657a0816065c1ec325d88c83a735b8f2496f3e8b', 5, 1, 'MyApp', '[]', 0, '2020-09-11 15:51:20', '2020-09-11 15:51:20', '2021-09-11 08:51:20'),
('4bb532f3db8e507744db4644180888a5c6408903aab9d807777cb8ab38f13dec607b7a408f7d4fea', 5, 1, 'MyApp', '[]', 0, '2020-09-02 22:00:06', '2020-09-02 22:00:06', '2021-09-02 15:00:06'),
('5c2a0e51a81f0d5ebc23423bcb10343f4fb3e1c7a6ee3d27b2925bf885483afafa9914528a26a3a4', 5, 1, 'MyApp', '[]', 0, '2020-08-27 18:58:18', '2020-08-27 18:58:18', '2021-08-27 11:58:18'),
('5ccb4c4b19ec74844be1d4e96b18f65ad9fcbc44a315df1f8e2b9ae69474042d5f86473b889f9b3e', 7, 1, 'MyApp', '[]', 0, '2020-11-09 20:30:27', '2020-11-09 20:30:27', '2021-11-09 13:30:27'),
('5d9bbf9e40fb01f95e8b1d02629c2b874075ab056beb1b8048417dbc18955b7ee92777efb51c26e4', 7, 1, 'MyApp', '[]', 0, '2020-10-25 15:00:17', '2020-10-25 15:00:17', '2021-10-25 08:00:17'),
('60924c44aebc518747ea6a3411536fb2d73fafe161010c05ba5c86ad9af14ffed731e7e3dc3af7d3', 5, 1, 'MyApp', '[]', 0, '2020-08-18 10:01:03', '2020-08-18 10:01:03', '2021-08-18 03:01:03'),
('60f9af4c595b97b47740ceaf8e6e5907017fe6ddf8472b4f20ea91d68cf55d7cef46936dc5f0927c', 5, 1, 'MyApp', '[]', 0, '2020-11-04 23:18:06', '2020-11-04 23:18:06', '2021-11-04 16:18:06'),
('623307afe37662f738d7cd7b93f9068f3155c08f447bfbeead74657a56dfb823c0ac9ffebc2da365', 7, 1, 'MyApp', '[]', 0, '2020-08-13 09:16:00', '2020-08-13 09:16:00', '2021-08-13 02:16:00'),
('6574b24ecb8f246f6b4235efef3c5d0f1e04c63dbd1c988d1c781fce5319a72881254c88ef8a0522', 5, 1, 'MyApp', '[]', 0, '2020-08-29 01:40:39', '2020-08-29 01:40:39', '2021-08-28 18:40:39'),
('667f8866b7bdc6b20dcc9544b7eb26b841b0288e11026df1eec7dc5981303ccdeec3ffa999fc7610', 7, 1, 'MyApp', '[]', 0, '2020-10-05 19:41:49', '2020-10-05 19:41:49', '2021-10-05 12:41:49'),
('67243361f060ba33c49404868d5dc887cfe9af2e6edd5be3b4ecf45f7b94c500b2b7e1fde710a42b', 4, 1, 'MyApp', '[]', 0, '2020-08-08 09:57:51', '2020-08-08 09:57:51', '2021-08-08 02:57:51'),
('6830824f1ed8c73b691c62bc74b2c112e8beb36831b53d6e3ad65db9d178ae386feaa4569bbf55b9', 7, 1, 'MyApp', '[]', 0, '2020-11-05 16:50:14', '2020-11-05 16:50:14', '2021-11-05 09:50:14'),
('6c9423d2d29b2388d4f369dd887e3374b86dcb238e95b1023bdf60deff6519e93742e0e5c709ee11', 3, 1, 'MyApp', '[]', 0, '2020-08-08 08:32:19', '2020-08-08 08:32:19', '2021-08-08 01:32:19'),
('6d2254e8b28468709bb17493cf03fc0649560e69924f796920589ba72efd7de7d3f3f7a28e8df5ac', 12, 1, 'MyApp', '[]', 0, '2020-11-13 02:16:37', '2020-11-13 02:16:37', '2021-11-12 19:16:37'),
('767edbb556f9733b4b9579533dcd230f48ecf81153fbb2c88d59dec333835556c56af7316de16d39', 5, 1, 'MyApp', '[]', 0, '2020-11-09 14:13:09', '2020-11-09 14:13:09', '2021-11-09 07:13:09'),
('77fa53a10cd99563a2aaaaf9d45f2d66e37d3b999d623f2a34bd531a4e1d029e9a67b3cdf6a6a779', 5, 1, 'MyApp', '[]', 0, '2020-11-09 20:32:36', '2020-11-09 20:32:36', '2021-11-09 13:32:36'),
('7a8fe37d296e5a47adc3e422b92945e54ada290def0888a87c6b25960caa9b9ba84ca2199b0999ae', 4, 1, 'MyApp', '[]', 0, '2020-08-11 23:43:45', '2020-08-11 23:43:45', '2021-08-11 16:43:45'),
('7b3a9b64d0d45661d6da0a62833e25d46b8514f4e7165fda5479593ee063eab1dd0a4f6fd3f56c75', 12, 1, 'MyApp', '[]', 0, '2020-10-02 04:32:10', '2020-10-02 04:32:10', '2021-10-01 21:32:10'),
('7cce62871e3724ead1a92a4fcbe82cf3b5bf146beb44d85ae3463c1eccbce333db7a834c41f452cc', 17, 1, 'MyApp', '[]', 0, '2020-11-08 16:56:37', '2020-11-08 16:56:37', '2021-11-08 09:56:37'),
('804d54d354a68c6cfa90e63c35e674ba76012fd88530f1942fde491ca7809b94094cce52b248783a', 5, 1, 'MyApp', '[]', 0, '2020-08-25 21:29:27', '2020-08-25 21:29:27', '2021-08-25 14:29:27'),
('8098d1cf0efb5f3628f48e447543bd1e6f6ce5bf8229b59879f42a39de223f5aff39c450cbb25dbe', 5, 1, 'MyApp', '[]', 0, '2020-08-16 00:04:08', '2020-08-16 00:04:08', '2021-08-15 17:04:08'),
('82553384fe95fd8d6e5c1ed1c33d705ff7280d2896296afe57ca96a2efaa5ed7962eeeac6e6ef9d7', 7, 1, 'MyApp', '[]', 0, '2020-11-08 16:56:37', '2020-11-08 16:56:37', '2021-11-08 09:56:37'),
('872ec2317eba0d88c3fdd41e20fdbd0fae5be0f2b36724df122aa126d83d4cb97201bf1885ad5537', 1, 1, 'MyApp', '[]', 0, '2020-08-08 08:00:27', '2020-08-08 08:00:27', '2021-08-08 01:00:27'),
('879a700a72fa87d45bebeca00e6a94fe6213c7a6382589519461b9913a34065e985e323856f6158a', 14, 1, 'MyApp', '[]', 0, '2020-10-12 17:51:28', '2020-10-12 17:51:28', '2021-10-12 10:51:28'),
('884c97c3e55611a25cb55fc3b47668846bf2dc91b743bcd1606fdd2845dd18db5662d8e66a76ecc7', 4, 1, 'MyApp', '[]', 0, '2020-09-28 13:53:08', '2020-09-28 13:53:08', '2021-09-28 06:53:08'),
('8bef1a79a83b6a4aa9e47e2e64628425677ff0a432332a7cde53b7dfb4ba8b51e302dde415e060e9', 5, 1, 'MyApp', '[]', 0, '2020-11-17 00:24:42', '2020-11-17 00:24:42', '2021-11-16 17:24:42'),
('8d79247019baf59b19f8a3cc8e25eea2e7df4355963f295c02ccb6f356f4efec94b73c96c73d270b', 5, 1, 'MyApp', '[]', 0, '2020-08-12 23:46:23', '2020-08-12 23:46:23', '2021-08-12 16:46:23'),
('91e2dba38ccca9bed2213c713047b1cb1ededc554ca01611167bbcf5700d4cac4f3dc8dbb2456ffd', 7, 1, 'MyApp', '[]', 0, '2020-10-26 14:35:43', '2020-10-26 14:35:43', '2021-10-26 07:35:43'),
('93dfbefb854912a7f560602b53a6b3c76daf189532c3234ebf3e74bce0b24a1243f89280f1537fd9', 7, 1, 'MyApp', '[]', 0, '2020-11-05 16:49:58', '2020-11-05 16:49:58', '2021-11-05 09:49:58'),
('952d09847296cdea66932e9093e299fc580e62d50437824b7695731671a506f6a08a693a056711b0', 5, 1, 'MyApp', '[]', 0, '2020-10-13 14:54:25', '2020-10-13 14:54:25', '2021-10-13 07:54:25'),
('96e7424de66ab99fcb6d9cd77a0099808ed2f15e473f8de19267c32cd65a7b6c78869fb51c75e129', 16, 1, 'MyApp', '[]', 0, '2020-10-28 14:59:42', '2020-10-28 14:59:42', '2021-10-28 07:59:42'),
('9e63a2b74ec0a7f92cc3f8d4a99793c678bbdc9ab83b365ab8580dcff18f230472573b643ce4c60c', 6, 1, 'MyApp', '[]', 0, '2020-08-11 23:38:24', '2020-08-11 23:38:24', '2021-08-11 16:38:24'),
('a1f7bde0bf6d1c9a5572e85d0daafcafe1f2300666473a2efaa6057bcccde571b915516b244cf432', 4, 1, 'MyApp', '[]', 0, '2020-11-04 15:52:10', '2020-11-04 15:52:10', '2021-11-04 08:52:10'),
('a1fa828303ee9a27a36a74c265e7ccf4b3bb78e49f88c83d913c36122510192e7a76abed57cc7db7', 4, 1, 'MyApp', '[]', 0, '2020-11-16 22:21:04', '2020-11-16 22:21:04', '2021-11-16 15:21:04'),
('a99d4a98f7f45bb308a1c80f43aa851cdba9be9851965ef372743f24e3a9fc89fe000c53cc1377cb', 11, 1, 'MyApp', '[]', 0, '2020-10-01 14:40:54', '2020-10-01 14:40:54', '2021-10-01 07:40:54'),
('a9f4720b230b78cf23654c1e2797eb160d7d2dcad6ba1009f2b30e18c6ca2436ef8412f77e8442eb', 5, 1, 'MyApp', '[]', 0, '2020-10-31 23:50:11', '2020-10-31 23:50:11', '2021-10-31 16:50:11'),
('ab15fcf88e31ad2ccfce9835c65aaa64b210a18bf24d01e7779a0f8e4453bfb51c882de490061571', 5, 1, 'MyApp', '[]', 0, '2020-08-25 09:48:46', '2020-08-25 09:48:46', '2021-08-25 02:48:46'),
('ae4ca85adf42028d17a20ff3b56dab6fff5e7ab6b2195456388274ab378957889ba029a876cdbdce', 5, 1, 'MyApp', '[]', 0, '2020-08-14 09:18:17', '2020-08-14 09:18:17', '2021-08-14 02:18:17'),
('b54287601442a2251bfa47b3b2e6cdd9b97b94711eef6d85b2b38b214a21173f6b14284bb7d58007', 7, 1, 'MyApp', '[]', 0, '2020-10-05 17:12:42', '2020-10-05 17:12:42', '2021-10-05 10:12:42'),
('b5825a48f4b333421eb0053730fd4084c35e14c7e0841e009359e42dac50675caa2a2c3f026c8a1c', 5, 1, 'MyApp', '[]', 0, '2020-08-23 11:17:08', '2020-08-23 11:17:08', '2021-08-23 04:17:08'),
('ba759721aef8aa4944ae273d50698bbf46328d48b99f139abd054c097fe57c407876017b08a770a3', 10, 1, 'MyApp', '[]', 0, '2020-09-11 13:01:32', '2020-09-11 13:01:32', '2021-09-11 06:01:32'),
('bc0ac08d5fe4c839f923f42aa1c9f2e8293c9162ed920f5915bb6cbc981f77f6b8c94a30dea680af', 5, 1, 'MyApp', '[]', 0, '2020-08-22 18:40:01', '2020-08-22 18:40:01', '2021-08-22 11:40:01'),
('bca47b702a8e02a0b45d699454fc6183cce7961db5608049104c3d24aa7e401975ddc5029b0610fe', 13, 1, 'MyApp', '[]', 0, '2020-10-06 20:33:14', '2020-10-06 20:33:14', '2021-10-06 13:33:14'),
('bda4202414dd6af7a8eaec05194db7bc25cb6b5bafb3cc06ea73451315471d0898286331aa71eac9', 9, 1, 'MyApp', '[]', 0, '2020-08-31 00:20:51', '2020-08-31 00:20:51', '2021-08-30 17:20:51'),
('bec099202c772f460f6a2bab700cc5be8b5907022ec137dea99364b67f3e923b0099de941b3bec1a', 5, 1, 'MyApp', '[]', 0, '2020-11-16 22:34:57', '2020-11-16 22:34:57', '2021-11-16 15:34:57'),
('c4974c0818faef25efeb36f4bbe9a85152a15e7b02b2fe9bc7e65769d31544f0917929cce392ad95', 10, 1, 'MyApp', '[]', 0, '2020-09-11 13:01:32', '2020-09-11 13:01:32', '2021-09-11 06:01:32'),
('c6a9e6d9a3cfbbe39ff5fed6c467cf12fb6c86904c2cf35406c3b20f42bc54dc41efe4667ee6a85f', 4, 1, 'MyApp', '[]', 0, '2020-10-21 23:28:37', '2020-10-21 23:28:37', '2021-10-21 16:28:37'),
('c920c5d8c5b10bb929eed85e878893a186bc8e31a28141f791dc803066684faa69c045046e252c68', 5, 1, 'MyApp', '[]', 0, '2020-08-29 01:40:45', '2020-08-29 01:40:45', '2021-08-28 18:40:45'),
('cb052a1beea22c44ca250b07e1e305bce3d24d6fe5ec41a0919ca54da2932ec6d76e385f99d2fb9e', 17, 1, 'MyApp', '[]', 0, '2020-11-05 16:50:48', '2020-11-05 16:50:48', '2021-11-05 09:50:48'),
('cbb4e844c188db2b04418fcc8861226d1149190a891f558d0e3b0ceb05b94d0afe18a9b768d3e50d', 5, 1, 'MyApp', '[]', 0, '2020-11-04 23:44:06', '2020-11-04 23:44:06', '2021-11-04 16:44:06'),
('cbbefeba49e65dbb6836b394202f89b582fa1c6f0c1ae28c86ebe4a7ead0a7f4f6d181b326e2f5d3', 5, 1, 'MyApp', '[]', 0, '2020-11-17 00:51:32', '2020-11-17 00:51:32', '2021-11-16 17:51:32'),
('ccf5c979534534109726acd28722a2ac4e3aeda1868de2aeae2ca6a1f46d86317f9dd052600885ab', 2, 1, 'MyApp', '[]', 0, '2020-08-08 08:00:56', '2020-08-08 08:00:56', '2021-08-08 01:00:56'),
('cef18608f6f30d2fa77e3c2ae59dd17a161cd424b194416fda70897cd3f6430134c90d52edd1b226', 5, 1, 'MyApp', '[]', 0, '2020-11-08 16:57:29', '2020-11-08 16:57:29', '2021-11-08 09:57:29'),
('d60191cf2f02fe957b520dfc971847f8ce9da84192f22e07794ad72b73745b54f4636aeb2b90c117', 5, 1, 'MyApp', '[]', 0, '2020-08-25 20:38:51', '2020-08-25 20:38:51', '2021-08-25 13:38:51'),
('d69f273d43c7cd15e7c10eb38407355888354b0acb3f2b4b59bf59b346e92885eabaa5bc85539d3e', 7, 1, 'MyApp', '[]', 0, '2020-11-11 22:32:04', '2020-11-11 22:32:04', '2021-11-11 15:32:04'),
('d71e60db7cdb2ee523296672917fc6d6c08282d0fc1f02610cb5a4993f50312c64152d36a6faa7df', 5, 1, 'MyApp', '[]', 0, '2020-08-27 18:58:18', '2020-08-27 18:58:18', '2021-08-27 11:58:18'),
('dbe4e5d696c4165c36f7f851266175169a43bf4d446afb5f0f74b3a7d0c06fa20d7d348aecf0104a', 5, 1, 'MyApp', '[]', 0, '2020-08-18 17:04:51', '2020-08-18 17:04:51', '2021-08-18 10:04:51'),
('dc7f8facae523fbebfbce116bfd2292cf58d833197779deeaa2810b190f836de4846dbed01c59402', 5, 1, 'MyApp', '[]', 0, '2020-08-18 17:30:23', '2020-08-18 17:30:23', '2021-08-18 10:30:23'),
('e9b43fc9eff3c3f6c82193de687c09b2c31fb5cfee649d2126d9b3a0966cf52f461abd65804dd4b3', 5, 1, 'MyApp', '[]', 0, '2020-11-05 16:50:06', '2020-11-05 16:50:06', '2021-11-05 09:50:06'),
('ee9c6f05a682edfe5f93b771bff946bfdb25a079829f84d558ca8a4f90717a1924f85ca02709f36b', 5, 1, 'MyApp', '[]', 0, '2020-08-13 09:29:54', '2020-08-13 09:29:54', '2021-08-13 02:29:54'),
('f604fd24d424ca861a14d6507e4bd1bbe13453844664ef3d0842f5edb3f5fcc97a319584aeb56a42', 7, 1, 'MyApp', '[]', 0, '2020-10-25 13:05:06', '2020-10-25 13:05:06', '2021-10-25 06:05:06'),
('fc32b7d4653315dbbcc4b54c28a4c44e9b196e632aacdd7f9369bf5e9790fcf54c065168fd80573f', 15, 1, 'MyApp', '[]', 0, '2020-10-26 16:10:48', '2020-10-26 16:10:48', '2021-10-26 09:10:48'),
('fd4307a407bfa5b440947464ceaf8828fbc4370b79fa45c6c4cd5c0eada296253cc24af0fe3b9b1a', 7, 1, 'MyApp', '[]', 0, '2020-10-06 13:35:21', '2020-10-06 13:35:21', '2021-10-06 06:35:21'),
('fdc5fedc0111950343d7406728a7a28ae2668c63c6f353758d4c776d77fb0f4f0fcef48c35c439f3', 4, 1, 'MyApp', '[]', 0, '2020-11-16 22:34:31', '2020-11-16 22:34:31', '2021-11-16 15:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'tK1kI9UN1lRfXhLpHXD0xQNvK152Pq2T3cmIcmin', NULL, 'http://localhost', 1, 0, 0, '2020-08-07 19:23:11', '2020-08-07 19:23:11'),
(2, NULL, 'Laravel Password Grant Client', 'X2VepBSR8d1adAEKwgg7rv6JhEMy8FlLl0PAHPNX', 'users', 'http://localhost', 0, 1, 0, '2020-08-07 19:23:12', '2020-08-07 19:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-07 19:23:11', '2020-08-07 19:23:11');

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
-- Table structure for table `question_combination`
--

CREATE TABLE `question_combination` (
  `qc_id` bigint(20) UNSIGNED NOT NULL,
  `combination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_combination`
--

INSERT INTO `question_combination` (`qc_id`, `combination`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, '2,14,11,12,1,7,13', 1, '2020-08-08 08:04:09', '2020-08-08 08:04:09'),
(2, '0', 2, '2020-08-08 09:58:33', '2020-08-08 09:58:33'),
(3, '0', 3, '2020-08-08 09:58:56', '2020-08-08 09:58:56'),
(4, '0', 2, '2020-08-08 10:04:03', '2020-08-08 10:04:03'),
(5, '0', 2, '2020-08-08 10:04:22', '2020-08-08 10:04:22'),
(6, '0', 2, '2020-08-08 10:08:13', '2020-08-08 10:08:13'),
(7, '0', 2, '2020-08-08 10:08:32', '2020-08-08 10:08:32'),
(8, '4,10,3,2,13,14,8', 1, '2020-08-08 10:08:43', '2020-08-08 10:08:43'),
(9, '0', 2, '2020-08-08 10:19:01', '2020-08-08 10:19:01'),
(10, '0', 2, '2020-08-08 10:19:27', '2020-08-08 10:19:27'),
(11, '6,13,9,8,10,7,4', 1, '2020-08-08 10:19:38', '2020-08-08 10:19:38'),
(12, '4,14,11,10,13,2,5', 1, '2020-08-08 10:19:56', '2020-08-08 10:19:56'),
(13, '14,11,7,3,9,10,1', 1, '2020-08-08 10:23:52', '2020-08-08 10:23:52'),
(14, '7,6,13,2,5,4,1', 1, '2020-08-08 10:33:32', '2020-08-08 10:33:32'),
(15, '9,13,2,6,10,1,11', 1, '2020-08-08 10:57:21', '2020-08-08 10:57:21'),
(16, '13,8,3,14,5,11,4', 1, '2020-08-08 10:59:23', '2020-08-08 10:59:23'),
(17, '10,1,7,5,3,13,11', 1, '2020-08-08 13:03:46', '2020-08-08 13:03:46'),
(18, '0', 2, '2020-08-08 13:04:24', '2020-08-08 13:04:24'),
(19, '0', 3, '2020-08-08 13:04:36', '2020-08-08 13:04:36'),
(20, '6,11,13,8,3,9,14', 1, '2020-08-08 13:04:43', '2020-08-08 13:04:43'),
(21, '13,11,5,7,4,8,14', 1, '2020-08-08 13:05:51', '2020-08-08 13:05:51'),
(22, '7,8,4,12,13,2,9', 1, '2020-08-11 23:23:08', '2020-08-11 23:23:08'),
(23, '13,1,14,5,2,11,8', 1, '2020-08-12 01:26:01', '2020-08-12 01:26:01'),
(24, '12,8,5,10,3,9,11', 1, '2020-08-12 13:23:19', '2020-08-12 13:23:19'),
(25, '6,12,8,9,11,13,3', 1, '2020-08-12 19:26:44', '2020-08-12 19:26:44'),
(26, '3,9,12,11,13,8,7', 1, '2020-08-12 21:24:17', '2020-08-12 21:24:17'),
(27, '10,13,6,3,2,14,8', 1, '2020-08-12 22:09:43', '2020-08-12 22:09:43'),
(28, '14,7,1,5,4,6,9', 1, '2020-08-13 00:07:08', '2020-08-13 00:07:08'),
(29, '5,12,1,7,10,4,6', 1, '2020-08-13 01:48:10', '2020-08-13 01:48:10'),
(30, '7,4,9,14,12,1,3', 1, '2020-08-13 02:00:09', '2020-08-13 02:00:09'),
(31, '5,14,4,8,11,12,6', 1, '2020-08-13 02:00:15', '2020-08-13 02:00:15'),
(32, '12,4,6,2,10,1,14', 1, '2020-08-13 02:52:20', '2020-08-13 02:52:20'),
(33, '13,8,12,14,2,11,9', 1, '2020-08-13 03:08:04', '2020-08-13 03:08:04'),
(34, '0', 2, '2020-08-13 03:17:39', '2020-08-13 03:17:39'),
(35, '9,6,2,4,10,7,11', 1, '2020-08-13 03:17:46', '2020-08-13 03:17:46'),
(36, '10,4,3,11,14,5,6', 1, '2020-08-13 03:19:18', '2020-08-13 03:19:18'),
(37, '9,7,3,11,1,13,14', 1, '2020-08-13 03:49:31', '2020-08-13 03:49:31'),
(38, '4,1,6,8,5,11,3', 1, '2020-08-13 05:12:32', '2020-08-13 05:12:32'),
(39, '14,13,3,12,1,7,4', 1, '2020-08-13 07:17:09', '2020-08-13 07:17:09'),
(40, '6,10,14,8,11,3,13', 1, '2020-08-13 03:35:52', '2020-08-13 03:35:52'),
(41, '10,9,13,4,1,5,7', 1, '2020-08-13 09:17:55', '2020-08-13 09:17:55'),
(42, '3,8,2,10,7,6,13', 1, '2020-08-13 09:18:53', '2020-08-13 09:18:53'),
(43, '7,13,12,11,5,10,9', 1, '2020-08-13 09:23:30', '2020-08-13 09:23:30'),
(44, '11,8,5,12,3,6,9', 1, '2020-08-13 09:23:30', '2020-08-13 09:23:30'),
(45, '8,12,1,6,10,3,7', 1, '2020-08-13 09:30:09', '2020-08-13 09:30:09'),
(46, '5,8,2,4,7,3,6', 1, '2020-08-13 09:45:53', '2020-08-13 09:45:53'),
(47, '10,7,2,9,3,1,8', 1, '2020-08-13 14:46:49', '2020-08-13 14:46:49'),
(48, '13,1,9,5,14,8,11', 1, '2020-08-13 22:46:21', '2020-08-13 22:46:21'),
(49, '11,12,2,5,4,8,6', 1, '2020-08-13 23:12:47', '2020-08-13 23:12:47'),
(50, '16,20,24,17,15,23,21', 1, '2020-08-14 00:07:05', '2020-08-14 00:07:05'),
(51, '18,24,20,23,22,16,17', 1, '2020-08-14 00:15:12', '2020-08-14 00:15:12'),
(52, '23,20,24,15,21,19,22', 1, '2020-08-14 09:18:32', '2020-08-14 09:18:32'),
(53, '24,17,22,23,16,20,21', 1, '2020-08-14 09:37:49', '2020-08-14 09:37:49'),
(54, '16,22,21,20,24,17,23', 1, '2020-08-14 09:43:20', '2020-08-14 09:43:20'),
(55, '22,19,21,18,24,17,15', 1, '2020-08-14 09:57:00', '2020-08-14 09:57:00'),
(56, '19,18,24,17,23,15,16', 1, '2020-08-14 10:00:18', '2020-08-14 10:00:18'),
(57, '24,21,16,15,19,23,18', 1, '2020-08-14 10:01:47', '2020-08-14 10:01:47'),
(58, '19,18,20,22,23,17,16', 1, '2020-08-14 10:02:58', '2020-08-14 10:02:58'),
(59, '22,20,15,18,24,16,23', 1, '2020-08-14 10:04:08', '2020-08-14 10:04:08'),
(60, '16,24,20,18,17,21,15', 1, '2020-08-14 10:15:51', '2020-08-14 10:15:51'),
(61, '22,16,24,23,21,17,20', 1, '2020-08-15 14:50:48', '2020-08-15 14:50:48'),
(62, '21,17,19,23,22,15,18', 1, '2020-08-15 15:16:32', '2020-08-15 15:16:32'),
(63, '24,23,18,22,15,19,16', 1, '2020-08-15 15:29:18', '2020-08-15 15:29:18'),
(64, '16,17,21,20,15,24,18', 1, '2020-08-15 15:29:33', '2020-08-15 15:29:33'),
(65, '21,18,17,23,19,16,15', 1, '2020-08-15 15:43:30', '2020-08-15 15:43:30'),
(66, '19,17,15,18,24,22,20', 1, '2020-08-15 16:21:32', '2020-08-15 16:21:32'),
(67, '16,20,21,18,19,24,17', 1, '2020-08-15 16:27:51', '2020-08-15 16:27:51'),
(68, '16,15,17,18,24,22,23', 1, '2020-08-15 16:59:27', '2020-08-15 16:59:27'),
(69, '15,18,23,20,19,17,24', 1, '2020-08-15 17:08:56', '2020-08-15 17:08:56'),
(70, '16,18,21,19,17,23,20', 1, '2020-08-15 17:10:44', '2020-08-15 17:10:44'),
(71, '17,15,23,16,22,20,21', 1, '2020-08-15 17:12:05', '2020-08-15 17:12:05'),
(72, '22,19,20,15,21,16,17', 1, '2020-08-15 17:16:06', '2020-08-15 17:16:06'),
(73, '19,17,18,15,22,24,23', 1, '2020-08-15 23:55:52', '2020-08-15 23:55:52'),
(74, '17,15,24,20,21,16,19', 1, '2020-08-16 00:01:50', '2020-08-16 00:01:50'),
(75, '23,17,22,20,18,19,16', 1, '2020-08-16 00:02:05', '2020-08-16 00:02:05'),
(76, '18,22,20,15,16,24,23', 1, '2020-08-16 00:02:05', '2020-08-16 00:02:05'),
(77, '19,18,16,15,20,24,17', 1, '2020-08-16 00:04:21', '2020-08-16 00:04:21'),
(78, '24,23,20,15,17,22,21', 1, '2020-08-16 14:49:02', '2020-08-16 14:49:02'),
(79, '18,16,23,22,24,21,17', 1, '2020-08-16 14:49:35', '2020-08-16 14:49:35'),
(80, '20,15,18,17,16,24,19', 1, '2020-08-16 17:58:08', '2020-08-16 17:58:08'),
(81, '19,16,15,17,20,22,21', 1, '2020-08-16 19:39:24', '2020-08-16 19:39:24'),
(82, '24,20,19,16,22,23,15', 1, '2020-08-16 19:41:44', '2020-08-16 19:41:44'),
(83, '20,16,17,21,18,23,15', 1, '2020-08-16 19:47:48', '2020-08-16 19:47:48'),
(84, '16,19,15,18,21,17,20', 1, '2020-08-16 20:02:38', '2020-08-16 20:02:38'),
(85, '22,19,18,16,20,23,17', 1, '2020-08-16 20:03:27', '2020-08-16 20:03:27'),
(86, '16,20,21,19,23,18,15', 1, '2020-08-16 20:08:58', '2020-08-16 20:08:58'),
(87, '17,19,18,20,24,16,23', 1, '2020-08-18 04:10:04', '2020-08-18 04:10:04'),
(88, '16,24,15,22,17,23,19', 1, '2020-08-18 17:31:35', '2020-08-18 17:31:35'),
(89, '20,15,18,24,16,21,19', 1, '2020-08-18 17:38:35', '2020-08-18 17:38:35'),
(90, '22,17,15,18,24,23,21', 1, '2020-08-18 17:39:13', '2020-08-18 17:39:13'),
(91, '15,20,22,18,19,24,16', 1, '2020-08-18 17:39:39', '2020-08-18 17:39:39'),
(92, '18,23,22,24,19,17,21', 1, '2020-08-18 17:39:48', '2020-08-18 17:39:48'),
(93, '0', 2, '2020-08-18 17:41:13', '2020-08-18 17:41:13'),
(94, '17,20,23,16,15,24,22', 1, '2020-08-18 17:41:34', '2020-08-18 17:41:34'),
(95, '21,17,15,18,20,23,24', 1, '2020-08-18 17:42:08', '2020-08-18 17:42:08'),
(96, '17,24,16,19,21,22,20', 1, '2020-08-18 17:48:29', '2020-08-18 17:48:29'),
(97, '15,21,23,19,24,17,16', 1, '2020-08-18 17:50:52', '2020-08-18 17:50:52'),
(98, '22,18,20,16,15,24,23', 1, '2020-08-18 17:52:59', '2020-08-18 17:52:59'),
(99, '23,24,22,20,15,21,16', 1, '2020-08-18 17:52:59', '2020-08-18 17:52:59'),
(100, '23,17,15,19,21,16,18', 1, '2020-08-18 17:53:30', '2020-08-18 17:53:30'),
(101, '15,16,23,21,19,24,22', 1, '2020-08-18 17:56:53', '2020-08-18 17:56:53'),
(102, '21,20,15,18,17,19,24', 1, '2020-08-22 14:21:16', '2020-08-22 14:21:16'),
(103, '24,16,23,20,21,15,18', 1, '2020-08-22 14:29:45', '2020-08-22 14:29:45'),
(104, '19,20,24,22,21,15,23', 1, '2020-08-22 18:40:26', '2020-08-22 18:40:26'),
(105, '15,16,19,22,18,24,20', 1, '2020-08-22 18:41:46', '2020-08-22 18:41:46'),
(106, '20,24,17,16,19,21,22', 1, '2020-08-22 18:41:49', '2020-08-22 18:41:49'),
(107, '24,16,18,15,23,17,20', 1, '2020-08-22 18:42:05', '2020-08-22 18:42:05'),
(108, '19,20,22,16,21,17,23', 1, '2020-08-22 18:42:11', '2020-08-22 18:42:11'),
(109, '24,23,22,19,17,18,21', 1, '2020-08-22 18:42:35', '2020-08-22 18:42:35'),
(110, '23,17,20,16,22,15,21', 1, '2020-08-22 18:46:06', '2020-08-22 18:46:06'),
(111, '18,23,20,24,21,16,15', 1, '2020-08-22 18:51:07', '2020-08-22 18:51:07'),
(112, '17,21,16,24,18,15,23', 1, '2020-08-23 11:36:43', '2020-08-23 11:36:43'),
(113, '19,24,22,17,18,23,21', 1, '2020-08-23 11:37:58', '2020-08-23 11:37:58'),
(114, '15,21,20,24,22,18,17', 1, '2020-08-23 13:54:50', '2020-08-23 13:54:50'),
(115, '24,21,18,20,16,15,23', 1, '2020-08-23 13:55:12', '2020-08-23 13:55:12'),
(116, '21,24,17,23,20,16,22', 1, '2020-08-23 13:57:24', '2020-08-23 13:57:24'),
(117, '24,18,19,23,22,20,15', 1, '2020-08-23 14:08:47', '2020-08-23 14:08:47'),
(118, '15,23,17,22,21,16,18', 1, '2020-08-23 14:33:19', '2020-08-23 14:33:19'),
(119, '23,22,16,18,17,15,21', 1, '2020-08-23 14:33:42', '2020-08-23 14:33:42'),
(120, '22,19,20,15,17,18,24', 1, '2020-08-23 14:44:10', '2020-08-23 14:44:10'),
(121, '22,16,17,20,23,18,24', 1, '2020-08-23 14:58:18', '2020-08-23 14:58:18'),
(122, '24,17,16,22,18,21,19', 1, '2020-08-25 09:49:29', '2020-08-25 09:49:29'),
(123, '22,16,21,23,19,20,17', 1, '2020-08-25 09:49:32', '2020-08-25 09:49:32'),
(124, '22,20,21,18,17,19,23', 1, '2020-08-25 09:49:59', '2020-08-25 09:49:59'),
(125, '23,20,24,18,22,16,17', 1, '2020-08-25 09:50:07', '2020-08-25 09:50:07'),
(126, '22,15,17,20,19,18,21', 1, '2020-08-25 17:08:32', '2020-08-25 17:08:32'),
(127, '20,18,16,24,15,23,21', 1, '2020-08-25 17:08:57', '2020-08-25 17:08:57'),
(128, '21,23,24,22,19,15,16', 1, '2020-08-25 20:38:12', '2020-08-25 20:38:12'),
(129, '22,23,24,16,19,17,18', 1, '2020-08-25 20:39:13', '2020-08-25 20:39:13'),
(130, '15,23,20,19,16,21,22', 1, '2020-08-25 20:40:18', '2020-08-25 20:40:18'),
(131, '23,18,15,19,21,24,22', 1, '2020-08-25 20:40:34', '2020-08-25 20:40:34'),
(132, '20,22,15,24,18,23,16', 1, '2020-08-25 20:42:47', '2020-08-25 20:42:47'),
(133, '16,22,20,19,24,15,18', 1, '2020-08-25 20:43:33', '2020-08-25 20:43:33'),
(134, '20,22,17,15,18,21,16', 1, '2020-08-25 21:01:07', '2020-08-25 21:01:07'),
(135, '22,21,17,24,16,20,15', 1, '2020-08-25 21:02:47', '2020-08-25 21:02:47'),
(136, '16,22,18,21,19,15,20', 1, '2020-08-25 21:03:19', '2020-08-25 21:03:19'),
(137, '20,23,22,18,15,16,21', 1, '2020-08-25 21:06:38', '2020-08-25 21:06:38'),
(138, '15,19,16,20,18,21,17', 1, '2020-08-25 21:08:44', '2020-08-25 21:08:44'),
(139, '23,20,19,24,21,18,22', 1, '2020-08-25 21:09:38', '2020-08-25 21:09:38'),
(140, '21,24,22,15,20,18,16', 1, '2020-08-25 21:29:42', '2020-08-25 21:29:42'),
(141, '24,21,15,22,20,16,18', 1, '2020-08-25 21:31:33', '2020-08-25 21:31:33'),
(142, '22,21,24,18,17,19,20', 1, '2020-08-25 21:39:06', '2020-08-25 21:39:06'),
(143, '19,15,21,20,16,18,17', 1, '2020-08-25 21:41:44', '2020-08-25 21:41:44'),
(144, '19,21,24,22,15,17,23', 1, '2020-08-25 21:46:36', '2020-08-25 21:46:36'),
(145, '23,15,21,22,19,17,18', 1, '2020-08-25 21:48:27', '2020-08-25 21:48:27'),
(146, '17,22,23,21,24,18,16', 1, '2020-08-25 21:55:26', '2020-08-25 21:55:26'),
(147, '18,24,16,20,15,22,19', 1, '2020-08-25 21:56:04', '2020-08-25 21:56:04'),
(148, '16,24,21,17,19,15,20', 1, '2020-08-25 21:59:28', '2020-08-25 21:59:28'),
(149, '22,20,18,16,24,21,17', 1, '2020-08-29 01:41:18', '2020-08-29 01:41:18'),
(150, '15,20,17,21,16,24,22', 1, '2020-08-29 01:41:36', '2020-08-29 01:41:36'),
(151, '20,21,22,23,19,16,17', 1, '2020-08-31 00:21:27', '2020-08-31 00:21:27'),
(152, '24,16,22,19,15,20,21', 1, '2020-08-31 00:22:05', '2020-08-31 00:22:05'),
(153, '16,24,19,15,23,22,18', 1, '2020-08-31 00:22:44', '2020-08-31 00:22:44'),
(154, '22,15,16,18,23,24,17', 1, '2020-08-31 00:23:42', '2020-08-31 00:23:42'),
(155, '15,24,17,18,21,23,22', 1, '2020-08-31 00:24:21', '2020-08-31 00:24:21'),
(156, '20,24,23,18,17,21,16', 1, '2020-08-31 00:36:14', '2020-08-31 00:36:14'),
(157, '16,17,18,22,23,20,21', 1, '2020-08-31 00:36:38', '2020-08-31 00:36:38'),
(158, '23,24,22,17,19,21,20', 1, '2020-08-31 00:37:10', '2020-08-31 00:37:10'),
(159, '19,20,24,16,18,15,17', 1, '2020-08-31 00:37:31', '2020-08-31 00:37:31'),
(160, '20,23,16,19,15,17,22', 1, '2020-08-31 00:46:41', '2020-08-31 00:46:41'),
(161, '24,19,23,16,20,18,17', 1, '2020-08-31 00:47:09', '2020-08-31 00:47:09'),
(162, '21,20,16,15,17,24,19', 1, '2020-08-31 00:47:44', '2020-08-31 00:47:44'),
(163, '23,22,17,15,16,18,19', 1, '2020-08-31 00:50:39', '2020-08-31 00:50:39'),
(164, '15,22,23,20,18,16,24', 1, '2020-08-31 00:58:45', '2020-08-31 00:58:45'),
(165, '19,18,20,16,17,21,15', 1, '2020-08-31 01:01:24', '2020-08-31 01:01:24'),
(166, '18,19,22,20,21,16,17', 1, '2020-08-31 01:09:22', '2020-08-31 01:09:22'),
(167, '15,18,20,19,17,16,21', 1, '2020-08-31 01:14:58', '2020-08-31 01:14:58'),
(168, '18,23,16,21,24,20,19', 1, '2020-08-31 01:15:29', '2020-08-31 01:15:29'),
(169, '22,16,19,17,24,18,20', 1, '2020-08-31 01:16:23', '2020-08-31 01:16:23'),
(170, '18,17,16,24,15,22,20', 1, '2020-08-31 01:35:40', '2020-08-31 01:35:40'),
(171, '24,15,20,21,19,17,23', 1, '2020-08-31 01:36:28', '2020-08-31 01:36:28'),
(172, '23,21,17,16,18,19,20', 1, '2020-08-31 01:36:56', '2020-08-31 01:36:56'),
(173, '16,24,15,20,17,18,19', 1, '2020-08-31 01:40:34', '2020-08-31 01:40:34'),
(174, '17,19,21,22,20,16,15', 1, '2020-08-31 01:56:32', '2020-08-31 01:56:32'),
(175, '24,21,23,17,19,16,15', 1, '2020-09-02 01:16:55', '2020-09-02 01:16:55'),
(176, '18,24,23,21,16,17,19', 1, '2020-09-02 13:06:06', '2020-09-02 13:06:06'),
(177, '21,22,24,16,18,23,17', 1, '2020-09-02 13:20:31', '2020-09-02 13:20:31'),
(178, '22,24,21,15,23,18,17', 1, '2020-09-02 13:47:42', '2020-09-02 13:47:42'),
(179, '20,19,21,17,18,23,15', 1, '2020-09-02 14:14:15', '2020-09-02 14:14:15'),
(180, '15,24,17,19,18,22,16', 1, '2020-09-02 22:00:54', '2020-09-02 22:00:54'),
(181, '20,21,23,22,24,15,18', 1, '2020-09-02 22:05:15', '2020-09-02 22:05:15'),
(182, '23,19,24,15,18,20,17', 1, '2020-09-02 22:05:27', '2020-09-02 22:05:27'),
(183, '23,16,15,17,20,18,21', 1, '2020-09-02 22:50:16', '2020-09-02 22:50:16'),
(184, '17,15,19,16,24,21,23', 1, '2020-09-03 14:53:53', '2020-09-03 14:53:53'),
(185, '21,23,18,17,20,19,22', 1, '2020-09-03 23:46:22', '2020-09-03 23:46:22'),
(186, '17,18,19,23,24,22,20', 1, '2020-09-03 23:54:36', '2020-09-03 23:54:36'),
(187, '20,17,21,23,24,19,16', 1, '2020-09-04 00:48:56', '2020-09-04 00:48:56'),
(188, '17,19,18,20,22,23,24', 1, '2020-09-04 00:50:19', '2020-09-04 00:50:19'),
(189, '17,21,24,15,18,19,22', 1, '2020-09-04 00:51:25', '2020-09-04 00:51:25'),
(190, '16,21,24,20,15,19,23', 1, '2020-09-04 00:52:21', '2020-09-04 00:52:21'),
(191, '16,22,15,17,19,23,18', 1, '2020-09-04 00:52:58', '2020-09-04 00:52:58'),
(192, '19,15,17,22,23,18,16', 1, '2020-09-04 01:10:22', '2020-09-04 01:10:22'),
(193, '22,16,24,20,18,21,15', 1, '2020-09-04 13:30:42', '2020-09-04 13:30:42'),
(194, '17,21,18,20,15,23,22', 1, '2020-09-11 02:52:12', '2020-09-11 02:52:12'),
(195, '17,18,15,19,22,24,16', 1, '2020-09-11 03:16:30', '2020-09-11 03:16:30'),
(196, '16,21,18,17,24,22,20', 1, '2020-09-11 12:39:24', '2020-09-11 12:39:24'),
(197, '15,20,16,23,24,22,17', 1, '2020-09-11 12:48:09', '2020-09-11 12:48:09'),
(198, '19,23,21,18,20,16,22', 1, '2020-09-11 13:30:41', '2020-09-11 13:30:41'),
(199, '20,23,16,19,22,15,18', 1, '2020-09-11 13:33:25', '2020-09-11 13:33:25'),
(200, '22,18,16,24,20,23,17', 1, '2020-09-11 19:24:09', '2020-09-11 19:24:09'),
(201, '23,18,24,15,19,21,20', 1, '2020-09-27 19:24:55', '2020-09-27 19:24:55'),
(202, '15,22,21,17,19,23,16', 1, '2020-09-27 19:27:10', '2020-09-27 19:27:10'),
(203, '16,17,18,15,21,19,23', 1, '2020-09-27 19:30:02', '2020-09-27 19:30:02'),
(204, '20,23,19,17,21,22,15', 1, '2020-09-27 19:31:04', '2020-09-27 19:31:04'),
(205, '24,22,18,20,19,17,23', 1, '2020-09-27 19:31:29', '2020-09-27 19:31:29'),
(206, '19,20,21,22,17,24,23', 1, '2020-09-27 19:33:20', '2020-09-27 19:33:20'),
(207, '21,24,17,23,22,20,19', 1, '2020-09-27 19:33:56', '2020-09-27 19:33:56'),
(208, '21,19,15,23,20,22,16', 1, '2020-09-27 20:16:47', '2020-09-27 20:16:47'),
(209, '15,16,21,18,17,19,24', 1, '2020-09-27 20:20:46', '2020-09-27 20:20:46'),
(210, '23,18,17,16,19,24,22', 1, '2020-09-27 20:34:28', '2020-09-27 20:34:28'),
(211, '17,23,21,18,15,22,19', 1, '2020-09-27 20:39:13', '2020-09-27 20:39:13'),
(212, '19,23,20,24,15,17,22', 1, '2020-09-27 20:41:11', '2020-09-27 20:41:11'),
(213, '17,24,21,15,20,23,18', 1, '2020-09-27 20:42:54', '2020-09-27 20:42:54'),
(214, '21,18,17,19,24,16,15', 1, '2020-09-27 20:45:25', '2020-09-27 20:45:25'),
(215, '17,15,20,21,23,24,18', 1, '2020-09-27 20:49:54', '2020-09-27 20:49:54'),
(216, '23,19,17,20,21,18,24', 1, '2020-09-27 20:52:20', '2020-09-27 20:52:20'),
(217, '22,16,15,18,19,17,21', 1, '2020-09-27 20:57:24', '2020-09-27 20:57:24'),
(218, '16,22,17,23,19,15,20', 1, '2020-09-27 20:57:54', '2020-09-27 20:57:54'),
(219, '15,20,16,24,21,17,22', 1, '2020-09-27 23:15:18', '2020-09-27 23:15:18'),
(220, '22,21,20,15,24,17,18', 1, '2020-09-27 23:20:52', '2020-09-27 23:20:52'),
(221, '15,17,23,18,22,24,16', 1, '2020-09-27 23:23:19', '2020-09-27 23:23:19'),
(222, '17,23,16,21,19,22,20', 1, '2020-09-27 23:27:36', '2020-09-27 23:27:36'),
(223, '21,24,23,18,19,15,17', 1, '2020-09-27 23:31:48', '2020-09-27 23:31:48'),
(224, '19,17,22,24,15,21,18', 1, '2020-09-27 23:36:41', '2020-09-27 23:36:41'),
(225, '17,23,24,22,16,20,15', 1, '2020-09-28 00:00:24', '2020-09-28 00:00:24'),
(226, '21,20,16,24,19,15,23', 1, '2020-09-28 00:05:17', '2020-09-28 00:05:17'),
(227, '20,18,24,17,22,23,21', 1, '2020-09-28 00:07:26', '2020-09-28 00:07:26'),
(228, '22,16,21,17,19,18,15', 1, '2020-09-28 00:09:20', '2020-09-28 00:09:20'),
(229, '15,19,24,16,22,21,20', 1, '2020-09-28 00:20:46', '2020-09-28 00:20:46'),
(230, '17,23,19,18,15,20,16', 1, '2020-09-28 00:23:18', '2020-09-28 00:23:18'),
(231, '16,19,22,21,17,20,18', 1, '2020-09-28 00:23:25', '2020-09-28 00:23:25'),
(232, '24,21,23,18,15,19,16', 1, '2020-09-28 00:25:17', '2020-09-28 00:25:17'),
(233, '24,18,15,21,23,16,22', 1, '2020-09-28 00:25:22', '2020-09-28 00:25:22'),
(234, '22,24,21,18,19,16,15', 1, '2020-09-28 00:27:22', '2020-09-28 00:27:22'),
(235, '15,22,17,19,18,24,23', 1, '2020-09-28 00:35:29', '2020-09-28 00:35:29'),
(236, '17,18,15,23,24,22,19', 1, '2020-09-28 00:39:21', '2020-09-28 00:39:21'),
(237, '20,18,22,15,19,23,21', 1, '2020-09-28 00:41:17', '2020-09-28 00:41:17'),
(238, '23,21,19,18,15,16,24', 1, '2020-09-28 00:42:19', '2020-09-28 00:42:19'),
(239, '19,18,20,23,21,22,15', 1, '2020-09-28 00:43:08', '2020-09-28 00:43:08'),
(240, '17,23,18,22,19,21,24', 1, '2020-09-28 00:44:08', '2020-09-28 00:44:08'),
(241, '23,20,16,17,15,24,18', 1, '2020-09-28 00:44:31', '2020-09-28 00:44:31'),
(242, '15,20,18,17,24,16,19', 1, '2020-09-28 00:44:37', '2020-09-28 00:44:37'),
(243, '18,22,16,24,17,23,19', 1, '2020-09-28 00:51:24', '2020-09-28 00:51:24'),
(244, '16,15,17,23,22,24,19', 1, '2020-09-28 00:52:11', '2020-09-28 00:52:11'),
(245, '21,24,20,18,16,19,23', 1, '2020-09-28 00:52:57', '2020-09-28 00:52:57'),
(246, '18,17,16,20,15,21,24', 1, '2020-09-28 00:53:58', '2020-09-28 00:53:58'),
(247, '21,23,15,20,22,18,17', 1, '2020-09-28 00:54:14', '2020-09-28 00:54:14'),
(248, '19,15,23,22,24,18,20', 1, '2020-09-28 01:00:10', '2020-09-28 01:00:10'),
(249, '15,24,23,19,18,20,16', 1, '2020-09-28 01:02:54', '2020-09-28 01:02:54'),
(250, '15,16,18,22,19,17,20', 1, '2020-09-28 01:14:35', '2020-09-28 01:14:35'),
(251, '23,20,22,18,21,24,19', 1, '2020-09-28 01:16:17', '2020-09-28 01:16:17'),
(252, '17,22,16,23,15,21,18', 1, '2020-09-28 01:19:28', '2020-09-28 01:19:28'),
(253, '18,24,17,22,15,19,21', 1, '2020-09-28 01:22:34', '2020-09-28 01:22:34'),
(254, '18,20,16,22,21,15,23', 1, '2020-09-28 01:25:42', '2020-09-28 01:25:42'),
(255, '23,20,18,19,17,24,15', 1, '2020-09-28 01:45:07', '2020-09-28 01:45:07'),
(256, '19,23,22,17,20,21,24', 1, '2020-09-28 01:47:48', '2020-09-28 01:47:48'),
(257, '18,24,16,15,17,22,23', 1, '2020-09-28 01:48:19', '2020-09-28 01:48:19'),
(258, '19,22,18,23,20,15,17', 1, '2020-09-28 01:50:15', '2020-09-28 01:50:15'),
(259, '16,17,22,15,18,20,21', 1, '2020-09-28 01:52:13', '2020-09-28 01:52:13'),
(260, '19,22,17,18,23,16,24', 1, '2020-09-28 02:07:42', '2020-09-28 02:07:42'),
(261, '21,22,24,15,19,18,17', 1, '2020-09-28 02:10:00', '2020-09-28 02:10:00'),
(262, '15,18,19,23,20,24,17', 1, '2020-09-28 02:12:25', '2020-09-28 02:12:25'),
(263, '22,21,17,20,15,16,19', 1, '2020-09-28 02:12:43', '2020-09-28 02:12:43'),
(264, '22,17,24,18,21,19,23', 1, '2020-09-28 02:13:07', '2020-09-28 02:13:07'),
(265, '15,20,22,19,23,17,18', 1, '2020-09-28 02:17:18', '2020-09-28 02:17:18'),
(266, '17,23,20,21,19,16,18', 1, '2020-09-28 02:17:37', '2020-09-28 02:17:37'),
(267, '23,20,17,22,19,18,21', 1, '2020-09-28 02:19:17', '2020-09-28 02:19:17'),
(268, '15,16,24,19,18,22,21', 1, '2020-09-28 02:23:51', '2020-09-28 02:23:51'),
(269, '24,20,21,18,17,22,19', 1, '2020-09-28 02:24:13', '2020-09-28 02:24:13'),
(270, '22,23,15,21,16,18,19', 1, '2020-09-28 02:29:14', '2020-09-28 02:29:14'),
(271, '15,19,22,18,16,17,24', 1, '2020-09-28 02:29:41', '2020-09-28 02:29:41'),
(272, '20,23,16,15,17,24,21', 1, '2020-09-28 02:29:45', '2020-09-28 02:29:45'),
(273, '20,15,22,18,23,21,17', 1, '2020-09-28 02:30:06', '2020-09-28 02:30:06'),
(274, '0', 2, '2020-09-28 13:43:27', '2020-09-28 13:43:27'),
(275, '0', 2, '2020-09-28 13:43:33', '2020-09-28 13:43:33'),
(276, '21,17,19,18,16,23,22', 1, '2020-09-28 13:45:06', '2020-09-28 13:45:06'),
(277, '15,18,23,22,16,21,19', 1, '2020-09-28 13:46:45', '2020-09-28 13:46:45'),
(278, '0', 3, '2020-09-28 14:34:17', '2020-09-28 14:34:17'),
(279, '15,23,21,17,19,22,16', 1, '2020-09-28 14:34:38', '2020-09-28 14:34:38'),
(280, '21,22,19,15,16,20,18', 1, '2020-09-28 14:45:47', '2020-09-28 14:45:47'),
(281, '24,19,15,22,17,16,18', 1, '2020-09-28 14:47:10', '2020-09-28 14:47:10'),
(282, '15,18,22,16,17,19,20', 1, '2020-09-28 14:50:27', '2020-09-28 14:50:27'),
(283, '18,22,21,24,20,23,17', 1, '2020-09-28 14:50:32', '2020-09-28 14:50:32'),
(284, '18,19,15,16,20,21,24', 1, '2020-09-28 14:53:58', '2020-09-28 14:53:58'),
(285, '21,16,23,15,17,22,20', 1, '2020-09-28 15:27:32', '2020-09-28 15:27:32'),
(286, '20,18,15,17,19,21,22', 1, '2020-09-28 15:27:39', '2020-09-28 15:27:39'),
(287, '20,16,15,18,17,24,21', 1, '2020-10-01 11:55:03', '2020-10-01 11:55:03'),
(288, '22,19,24,20,17,21,16', 1, '2020-10-01 12:06:17', '2020-10-01 12:06:17'),
(289, '23,18,22,16,15,24,17', 1, '2020-10-01 12:09:46', '2020-10-01 12:09:46'),
(290, '16,17,15,22,21,18,24', 1, '2020-10-01 12:11:18', '2020-10-01 12:11:18'),
(291, '16,21,23,19,22,20,17', 1, '2020-10-01 13:44:36', '2020-10-01 13:44:36'),
(292, '22,20,16,18,23,17,15', 1, '2020-10-01 13:46:43', '2020-10-01 13:46:43'),
(293, '16,24,20,18,22,23,17', 1, '2020-10-01 13:53:10', '2020-10-01 13:53:10'),
(294, '23,20,15,22,18,17,21', 1, '2020-10-01 13:59:00', '2020-10-01 13:59:00'),
(295, '21,20,18,17,19,24,16', 1, '2020-10-01 14:02:18', '2020-10-01 14:02:18'),
(296, '23,21,19,24,18,22,17', 1, '2020-10-01 14:04:45', '2020-10-01 14:04:45'),
(297, '22,18,16,21,23,19,24', 1, '2020-10-01 14:07:09', '2020-10-01 14:07:09'),
(298, '22,23,16,17,20,19,21', 1, '2020-10-01 14:10:31', '2020-10-01 14:10:31'),
(299, '21,17,22,20,15,23,18', 1, '2020-10-01 14:21:46', '2020-10-01 14:21:46'),
(300, '0', 5, '2020-10-01 14:59:34', '2020-10-01 14:59:34'),
(301, '21,17,24,15,19,23,20', 1, '2020-10-01 14:59:55', '2020-10-01 14:59:55'),
(302, '21,18,19,17,22,24,15', 1, '2020-10-01 15:00:18', '2020-10-01 15:00:18'),
(303, '21,22,20,24,15,18,16', 1, '2020-10-01 15:12:39', '2020-10-01 15:12:39'),
(304, '24,18,16,22,15,17,20', 1, '2020-10-01 17:11:32', '2020-10-01 17:11:32'),
(305, '16,22,24,17,15,18,19', 1, '2020-10-01 17:13:14', '2020-10-01 17:13:14'),
(306, '17,19,24,21,23,15,20', 1, '2020-10-01 17:14:55', '2020-10-01 17:14:55'),
(307, '19,23,16,22,18,17,21', 1, '2020-10-01 17:45:37', '2020-10-01 17:45:37'),
(308, '15,19,18,24,17,21,20', 1, '2020-10-02 04:37:51', '2020-10-02 04:37:51'),
(309, '19,22,23,21,15,24,16', 1, '2020-10-02 18:25:34', '2020-10-02 18:25:34'),
(310, '24,19,22,21,16,18,15', 1, '2020-10-03 01:52:31', '2020-10-03 01:52:31'),
(311, '15,16,17,21,22,19,18', 1, '2020-10-03 02:01:00', '2020-10-03 02:01:00'),
(312, '23,22,24,18,17,21,16', 1, '2020-10-03 02:04:59', '2020-10-03 02:04:59'),
(313, '18,16,21,17,20,15,19', 1, '2020-10-03 03:36:46', '2020-10-03 03:36:46'),
(314, '19,18,17,24,16,20,21', 1, '2020-10-03 03:46:57', '2020-10-03 03:46:57'),
(315, '24,15,17,19,18,22,16', 1, '2020-10-03 03:55:03', '2020-10-03 03:55:03'),
(316, '16,17,20,23,19,22,18', 1, '2020-10-03 04:03:06', '2020-10-03 04:03:06'),
(317, '23,20,22,21,17,15,24', 1, '2020-10-03 12:40:22', '2020-10-03 12:40:22'),
(318, '18,20,16,24,19,15,17', 1, '2020-10-04 08:39:44', '2020-10-04 08:39:44'),
(319, '0', 3, '2020-10-04 22:41:37', '2020-10-04 22:41:37'),
(320, '18,21,22,20,17,15,24', 1, '2020-10-04 22:41:59', '2020-10-04 22:41:59'),
(321, '23,20,15,22,21,16,18', 1, '2020-10-04 22:58:41', '2020-10-04 22:58:41'),
(322, '16,24,17,22,23,18,19', 1, '2020-10-04 23:03:56', '2020-10-04 23:03:56'),
(323, '20,15,24,22,16,21,19', 1, '2020-10-04 23:05:58', '2020-10-04 23:05:58'),
(324, '15,21,19,23,17,22,24', 1, '2020-10-04 23:23:15', '2020-10-04 23:23:15'),
(325, '15,23,21,19,24,16,22', 1, '2020-10-04 23:26:39', '2020-10-04 23:26:39'),
(326, '22,15,24,21,23,16,17', 1, '2020-10-04 23:28:52', '2020-10-04 23:28:52'),
(327, '23,18,19,15,21,16,24', 1, '2020-10-04 23:39:15', '2020-10-04 23:39:15'),
(328, '24,18,19,17,16,23,21', 1, '2020-10-04 23:46:27', '2020-10-04 23:46:27'),
(329, '16,17,18,21,24,15,20', 1, '2020-10-05 00:02:34', '2020-10-05 00:02:34'),
(330, '17,15,23,20,19,16,18', 1, '2020-10-05 00:42:33', '2020-10-05 00:42:33'),
(331, '23,20,22,16,19,24,18', 1, '2020-10-05 17:13:20', '2020-10-05 17:13:20'),
(332, '23,16,18,17,15,21,24', 1, '2020-10-05 17:13:26', '2020-10-05 17:13:26'),
(333, '22,17,23,24,19,21,20', 1, '2020-10-05 17:16:00', '2020-10-05 17:16:00'),
(334, '16,22,15,21,18,24,17', 1, '2020-10-05 17:16:05', '2020-10-05 17:16:05'),
(335, '0', 4, '2020-10-05 17:19:17', '2020-10-05 17:19:17'),
(336, '17,23,18,19,16,15,24', 1, '2020-10-05 17:19:32', '2020-10-05 17:19:32'),
(337, '16,17,19,18,21,15,23', 1, '2020-10-05 17:20:40', '2020-10-05 17:20:40'),
(338, '15,19,21,22,18,24,23', 1, '2020-10-05 19:42:09', '2020-10-05 19:42:09'),
(339, '15,21,16,20,17,18,19', 1, '2020-10-05 19:46:12', '2020-10-05 19:46:12'),
(340, '17,23,21,20,22,19,15', 1, '2020-10-05 19:46:17', '2020-10-05 19:46:17'),
(341, '18,19,24,16,15,21,20', 1, '2020-10-06 06:54:14', '2020-10-06 06:54:14'),
(342, '20,15,19,17,23,18,24', 1, '2020-10-06 06:57:04', '2020-10-06 06:57:04'),
(343, '16,23,24,20,15,18,17', 1, '2020-10-06 07:02:46', '2020-10-06 07:02:46'),
(344, '19,16,23,22,20,21,18', 1, '2020-10-06 07:04:56', '2020-10-06 07:04:56'),
(345, '18,15,17,24,20,16,21', 1, '2020-10-06 07:07:37', '2020-10-06 07:07:37'),
(346, '19,15,16,24,17,18,20', 1, '2020-10-06 07:09:27', '2020-10-06 07:09:27'),
(347, '22,15,19,18,17,24,20', 1, '2020-10-06 07:15:04', '2020-10-06 07:15:04'),
(348, '21,19,23,22,17,18,15', 1, '2020-10-06 07:32:34', '2020-10-06 07:32:34'),
(349, '17,18,19,15,20,23,22', 1, '2020-10-06 07:34:06', '2020-10-06 07:34:06'),
(350, '24,20,17,22,16,19,15', 1, '2020-10-06 07:40:20', '2020-10-06 07:40:20'),
(351, '0', 5, '2020-10-06 13:37:10', '2020-10-06 13:37:10'),
(352, '16,21,22,17,18,20,15', 1, '2020-10-06 13:38:10', '2020-10-06 13:38:10'),
(353, '15,19,20,18,22,16,21', 1, '2020-10-06 13:41:38', '2020-10-06 13:41:38'),
(354, '20,22,18,19,15,17,21', 1, '2020-10-06 13:41:46', '2020-10-06 13:41:46'),
(355, '17,16,22,21,15,20,23', 1, '2020-10-06 13:44:10', '2020-10-06 13:44:10'),
(356, '17,16,22,24,23,20,19', 1, '2020-10-06 13:56:06', '2020-10-06 13:56:06'),
(357, '17,21,18,20,23,19,22', 1, '2020-10-06 13:56:11', '2020-10-06 13:56:11'),
(358, '19,16,18,22,20,17,15', 1, '2020-10-06 13:59:03', '2020-10-06 13:59:03'),
(359, '24,19,22,20,23,15,16', 1, '2020-10-06 13:59:08', '2020-10-06 13:59:08'),
(360, '16,15,18,20,19,21,24', 1, '2020-10-06 20:34:21', '2020-10-06 20:34:21'),
(361, '15,19,23,22,24,20,16', 1, '2020-10-06 20:37:06', '2020-10-06 20:37:06'),
(362, '21,24,15,18,19,17,22', 1, '2020-10-06 20:37:22', '2020-10-06 20:37:22'),
(363, '21,15,17,23,19,20,18', 1, '2020-10-06 20:39:43', '2020-10-06 20:39:43'),
(364, '18,15,21,23,22,20,17', 1, '2020-10-06 20:40:00', '2020-10-06 20:40:00'),
(365, '23,22,24,20,19,17,18', 1, '2020-10-06 20:41:44', '2020-10-06 20:41:44'),
(366, '16,21,15,17,24,23,22', 1, '2020-10-06 20:41:57', '2020-10-06 20:41:57'),
(367, '18,22,21,20,23,17,15', 1, '2020-10-08 12:58:07', '2020-10-08 12:58:07'),
(368, '17,21,24,22,23,16,20', 1, '2020-10-08 12:59:56', '2020-10-08 12:59:56'),
(369, '21,15,24,20,16,18,19', 1, '2020-10-08 13:00:13', '2020-10-08 13:00:13'),
(370, '23,18,15,16,20,19,22', 1, '2020-10-08 13:00:58', '2020-10-08 13:00:58'),
(371, '21,20,23,17,16,19,24', 1, '2020-10-08 13:02:43', '2020-10-08 13:02:43'),
(372, '16,21,22,19,24,18,15', 1, '2020-10-08 13:07:06', '2020-10-08 13:07:06'),
(373, '18,17,20,22,15,24,19', 0, '2020-10-12 17:33:34', '2020-10-12 17:33:34'),
(374, '20,18,25,15,24,23,21', 0, '2020-10-12 17:36:07', '2020-10-12 17:36:07'),
(375, '20,21,16,19,15,24,23', 0, '2020-10-13 14:54:49', '2020-10-13 14:54:49'),
(376, '18,23,17,15,20,24,22', 0, '2020-10-13 14:55:03', '2020-10-13 14:55:03'),
(377, '18,16,25,23,20,21,17', 0, '2020-10-13 14:57:24', '2020-10-13 14:57:24'),
(378, '17,15,24,22,25,19,18', 0, '2020-10-13 15:05:28', '2020-10-13 15:05:28'),
(379, '22,20,15,17,19,25,21', 0, '2020-10-13 15:08:15', '2020-10-13 15:08:15'),
(380, '24,25,23,18,19,21,16', 0, '2020-10-13 15:08:19', '2020-10-13 15:08:19'),
(381, '19,18,24,15,22,17,21', 1, '2020-10-16 00:40:52', '2020-10-16 00:40:52'),
(382, '22,15,18,19,20,16,21', 1, '2020-10-22 12:14:41', '2020-10-22 12:14:41'),
(383, '15,18,21,19,23,17,22', 1, '2020-10-22 19:17:04', '2020-10-22 19:17:04'),
(384, '21,15,19,22,18,17,24', 0, '2020-10-25 13:29:52', '2020-10-25 13:29:52'),
(385, '15,18,21,25,16,17,22', 0, '2020-10-25 15:00:40', '2020-10-25 15:00:40'),
(386, '24,20,23,19,16,25,17', 0, '2020-10-25 15:02:46', '2020-10-25 15:02:46'),
(387, '22,18,15,20,25,23,16', 0, '2020-10-26 14:35:56', '2020-10-26 14:35:56'),
(388, '23,17,21,24,25,16,19', 0, '2020-10-26 14:36:50', '2020-10-26 14:36:50'),
(389, '23,15,24,20,17,21,22', 0, '2020-10-26 16:17:07', '2020-10-26 16:17:07'),
(390, '18,20,16,22,21,23,17', 0, '2020-10-26 16:17:18', '2020-10-26 16:17:18'),
(391, '16,15,17,23,18,25,20', 0, '2020-10-26 16:18:17', '2020-10-26 16:18:17'),
(392, '19,23,22,24,20,16,18', 0, '2020-10-26 16:19:30', '2020-10-26 16:19:30'),
(393, '23,22,24,21,18,17,20', 0, '2020-10-26 16:20:02', '2020-10-26 16:20:02'),
(394, '18,19,15,20,25,16,17', 0, '2020-10-26 16:20:23', '2020-10-26 16:20:23'),
(395, '25,24,23,19,20,15,16', 0, '2020-10-26 16:20:27', '2020-10-26 16:20:27'),
(396, '24,22,20,25,17,15,18', 0, '2020-10-26 16:20:43', '2020-10-26 16:20:43'),
(397, '21,22,24,17,18,23,19', 0, '2020-10-28 14:59:50', '2020-10-28 14:59:50'),
(398, '19,18,23,20,17,15,24', 0, '2020-10-28 15:02:53', '2020-10-28 15:02:53'),
(399, '16,17,20,24,18,23,21', 1, '2020-10-31 23:50:39', '2020-10-31 23:50:39'),
(400, '25', 2, '2020-11-02 00:28:09', '2020-11-02 00:28:09'),
(401, '25', 2, '2020-11-02 18:26:48', '2020-11-02 18:26:48'),
(402, '21,18,20,19,22,25,23', 0, '2020-11-04 15:37:29', '2020-11-04 15:37:29'),
(403, '22,15,25,19,16,23,24', 0, '2020-11-04 15:46:40', '2020-11-04 15:46:40'),
(404, '22,25,18,23,20,19,24', 0, '2020-11-04 22:58:12', '2020-11-04 22:58:12'),
(405, '23,15,25,22,19,24,16', 0, '2020-11-04 22:59:52', '2020-11-04 22:59:52'),
(406, '20,19,18,21,24,23,15', 1, '2020-11-04 23:00:17', '2020-11-04 23:00:17'),
(407, '18,21,23,19,22,24,20', 1, '2020-11-04 23:01:07', '2020-11-04 23:01:07'),
(408, '25,21,17,16,24,15,22', 0, '2020-11-04 23:46:55', '2020-11-04 23:46:55'),
(409, '19,22,18,15,25,24,23', 0, '2020-11-04 23:48:00', '2020-11-04 23:48:00'),
(410, '23,18,19,25,15,20,22', 0, '2020-11-05 16:52:49', '2020-11-05 16:52:49'),
(411, '23,17,19,15,20,24,25', 0, '2020-11-05 16:52:51', '2020-11-05 16:52:51'),
(412, '22,23,19,20,18,25,21', 0, '2020-11-05 16:53:12', '2020-11-05 16:53:12'),
(413, '24,19,15,21,23,20,16', 0, '2020-11-05 17:21:56', '2020-11-05 17:21:56'),
(414, '22,16,18,17,19,23,20', 0, '2020-11-05 17:24:33', '2020-11-05 17:24:33'),
(415, '17,21,16,15,25,18,23', 0, '2020-11-05 17:24:41', '2020-11-05 17:24:41'),
(416, '20,24,16,21,18,23,15', 0, '2020-11-05 17:26:52', '2020-11-05 17:26:52'),
(417, '15,23,19,24,16,21,20', 0, '2020-11-05 17:27:13', '2020-11-05 17:27:13'),
(418, '21,20,25,15,16,24,19', 0, '2020-11-05 17:32:41', '2020-11-05 17:32:41'),
(419, '16,25,23,17,19,20,15', 0, '2020-11-05 17:33:00', '2020-11-05 17:33:00'),
(420, '16,25,20,18,15,22,19', 0, '2020-11-05 17:52:56', '2020-11-05 17:52:56'),
(421, '20,18,23,16,25,21,22', 0, '2020-11-05 17:52:59', '2020-11-05 17:52:59'),
(422, '23,24,16,25,20,17,18', 0, '2020-11-06 01:06:32', '2020-11-06 01:06:32'),
(423, '17,25,23,20,16,19,24', 0, '2020-11-06 01:11:04', '2020-11-06 01:11:04'),
(424, '23,18,25,16,22,21,19', 0, '2020-11-06 16:59:01', '2020-11-06 16:59:01'),
(425, '18,20,19,22,17,24,23', 0, '2020-11-06 16:59:04', '2020-11-06 16:59:04'),
(426, '17,15,18,24,22,25,21', 0, '2020-11-06 17:11:41', '2020-11-06 17:11:41'),
(427, '19,16,22,17,18,20,23', 0, '2020-11-06 17:13:38', '2020-11-06 17:13:38'),
(428, '18,15,16,24,23,20,19', 0, '2020-11-06 17:13:53', '2020-11-06 17:13:53'),
(429, '23,22,16,17,20,21,25', 0, '2020-11-06 17:15:44', '2020-11-06 17:15:44'),
(430, '25,19,18,23,21,17,22', 0, '2020-11-06 17:16:00', '2020-11-06 17:16:00'),
(431, '23,21,20,17,22,15,19', 0, '2020-11-06 17:18:39', '2020-11-06 17:18:39'),
(432, '23,19,20,22,17,15,25', 0, '2020-11-06 17:18:54', '2020-11-06 17:18:54'),
(433, '15,20,21,23,19,22,18', 1, '2020-11-08 00:38:49', '2020-11-08 00:38:49'),
(434, '21,15,25,20,16,18,24', 0, '2020-11-08 09:54:17', '2020-11-08 09:54:17'),
(435, '23,20,24,17,18,19,22', 0, '2020-11-08 10:49:45', '2020-11-08 10:49:45'),
(436, '19,16,17,21,18,23,25', 0, '2020-11-08 10:50:13', '2020-11-08 10:50:13'),
(437, '19,18,22,16,15,25,20', 0, '2020-11-08 10:50:47', '2020-11-08 10:50:47'),
(438, '20,24,21,25,18,19,15', 0, '2020-11-08 10:52:39', '2020-11-08 10:52:39'),
(439, '15,22,16,19,21,18,25', 0, '2020-11-08 16:57:43', '2020-11-08 16:57:43'),
(440, '20,16,18,15,19,21,24', 0, '2020-11-08 16:57:44', '2020-11-08 16:57:44'),
(441, '20,23,24,15,18,22,25', 0, '2020-11-08 17:08:09', '2020-11-08 17:08:09'),
(442, '19,23,22,18,24,17,20', 0, '2020-11-09 14:13:36', '2020-11-09 14:13:36'),
(443, '17,20,16,25,23,21,22', 0, '2020-11-13 02:19:08', '2020-11-13 02:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_response`
--

CREATE TABLE `quiz_response` (
  `qr_id` bigint(20) UNSIGNED NOT NULL,
  `firebase_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matchId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_response`
--

INSERT INTO `quiz_response` (`qr_id`, `firebase_user_id`, `matchId`, `score`, `created_at`, `updated_at`) VALUES
(1, 'NkkSHP3ejlg443eJ4tx3DtTJ98G3', 'sumitpandeyNkkSHP3ejlg443eJ4tx3DtTJ98G3', 0, '2020-08-08 08:05:50', '2020-08-08 08:05:50'),
(2, 'sumitpandey', 'sumitpandeyNkkSHP3ejlg443eJ4tx3DtTJ98G3', 96, '2020-08-05 08:05:50', '2020-08-08 08:05:50'),
(3, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 24, '2020-08-08 10:35:18', '2020-08-08 10:35:18'),
(4, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 86, '2020-08-08 10:35:18', '2020-08-08 10:35:18'),
(5, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 47, '2020-08-11 23:25:05', '2020-08-11 23:25:05'),
(6, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 75, '2020-08-11 23:25:05', '2020-08-11 23:25:05'),
(7, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 61, '2020-08-12 01:27:43', '2020-08-12 01:27:43'),
(8, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 86, '2020-08-12 01:27:43', '2020-08-12 01:27:43'),
(9, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 16, '2020-08-12 13:24:48', '2020-08-12 13:24:48'),
(10, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 69, '2020-08-12 13:24:48', '2020-08-12 13:24:48'),
(11, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-08-12 19:28:17', '2020-08-12 19:28:17'),
(12, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 63, '2020-08-12 19:28:17', '2020-08-12 19:28:17'),
(13, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 90, '2020-08-13 01:49:44', '2020-08-13 01:49:44'),
(14, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 52, '2020-08-13 01:49:44', '2020-08-13 01:49:44'),
(15, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 20, '2020-08-13 03:09:24', '2020-08-13 03:09:24'),
(16, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 50, '2020-08-13 03:09:24', '2020-08-13 03:09:24'),
(17, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 21, '2020-08-13 03:19:11', '2020-08-13 03:19:11'),
(18, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 109, '2020-08-13 03:19:11', '2020-08-13 03:19:11'),
(19, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 83, '2020-08-13 03:20:22', '2020-08-13 03:20:22'),
(20, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 73, '2020-08-13 03:20:22', '2020-08-13 03:20:22'),
(21, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 59, '2020-08-13 05:14:13', '2020-08-13 05:14:13'),
(22, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 41, '2020-08-13 05:14:13', '2020-08-13 05:14:13'),
(23, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 31, '2020-08-13 09:25:26', '2020-08-13 09:25:26'),
(24, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 195, '2020-08-13 09:25:26', '2020-08-13 09:25:26'),
(25, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 20, '2020-08-13 09:32:13', '2020-08-13 09:32:13'),
(26, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-13 09:32:13', '2020-08-13 09:32:13'),
(27, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 60, '2020-08-13 09:47:43', '2020-08-13 09:47:43'),
(28, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-13 09:47:43', '2020-08-13 09:47:43'),
(29, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'KOKBGElZDCRNZOWFoVnaAgu54md24OPX6jadszPz0lc1idObcrm4wbs1', 42, '2020-08-13 14:48:43', '2020-08-13 14:48:43'),
(30, '4OPX6jadszPz0lc1idObcrm4wbs1', 'KOKBGElZDCRNZOWFoVnaAgu54md24OPX6jadszPz0lc1idObcrm4wbs1', 0, '2020-08-13 14:48:43', '2020-08-13 14:48:43'),
(31, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 22, '2020-08-14 00:08:26', '2020-08-14 00:08:26'),
(32, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 78, '2020-08-14 00:08:26', '2020-08-14 00:08:26'),
(33, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 108, '2020-08-14 00:16:21', '2020-08-14 00:16:21'),
(34, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 81, '2020-08-14 00:16:21', '2020-08-14 00:16:21'),
(35, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 131, '2020-08-14 09:19:57', '2020-08-14 09:19:57'),
(36, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 116, '2020-08-14 09:19:57', '2020-08-14 09:19:57'),
(37, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 137, '2020-08-14 10:01:40', '2020-08-14 10:01:40'),
(38, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 112, '2020-08-14 10:01:40', '2020-08-14 10:01:40'),
(39, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 140, '2020-08-14 10:02:52', '2020-08-14 10:02:52'),
(40, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 96, '2020-08-14 10:02:52', '2020-08-14 10:02:52'),
(41, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 121, '2020-08-14 10:03:59', '2020-08-14 10:03:59'),
(42, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 56, '2020-08-14 10:03:59', '2020-08-14 10:03:59'),
(43, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 94, '2020-08-14 10:05:19', '2020-08-14 10:05:19'),
(44, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 96, '2020-08-14 10:05:19', '2020-08-14 10:05:19'),
(45, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 85, '2020-08-14 10:16:59', '2020-08-14 10:16:59'),
(46, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 63, '2020-08-14 10:16:59', '2020-08-14 10:16:59'),
(47, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 46, '2020-08-15 14:52:21', '2020-08-15 14:52:21'),
(48, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 60, '2020-08-15 14:52:21', '2020-08-15 14:52:21'),
(49, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 94, '2020-08-15 15:17:52', '2020-08-15 15:17:52'),
(50, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 53, '2020-08-15 15:17:52', '2020-08-15 15:17:52'),
(51, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 92, '2020-08-15 16:22:51', '2020-08-15 16:22:51'),
(52, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 98, '2020-08-15 16:22:51', '2020-08-15 16:22:51'),
(53, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 128, '2020-08-15 17:00:45', '2020-08-15 17:00:45'),
(54, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 137, '2020-08-15 17:00:45', '2020-08-15 17:00:45'),
(55, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 130, '2020-08-15 17:10:14', '2020-08-15 17:10:14'),
(56, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 94, '2020-08-15 17:10:14', '2020-08-15 17:10:14'),
(57, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 134, '2020-08-15 17:11:54', '2020-08-15 17:11:54'),
(58, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 90, '2020-08-15 17:11:54', '2020-08-15 17:11:54'),
(59, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 155, '2020-08-15 17:13:10', '2020-08-15 17:13:10'),
(60, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 73, '2020-08-15 17:13:10', '2020-08-15 17:13:10'),
(61, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 160, '2020-08-15 17:17:14', '2020-08-15 17:17:14'),
(62, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 97, '2020-08-15 17:17:14', '2020-08-15 17:17:14'),
(63, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 124, '2020-08-16 00:05:36', '2020-08-16 00:05:36'),
(64, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 160, '2020-08-16 00:05:36', '2020-08-16 00:05:36'),
(65, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 37, '2020-08-16 00:06:13', '2020-08-16 00:06:13'),
(66, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-16 00:06:13', '2020-08-16 00:06:13'),
(67, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 140, '2020-08-16 17:59:22', '2020-08-16 17:59:22'),
(68, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 20, '2020-08-16 17:59:22', '2020-08-16 17:59:22'),
(69, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 143, '2020-08-16 19:41:15', '2020-08-16 19:41:15'),
(70, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-16 19:41:15', '2020-08-16 19:41:15'),
(71, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 105, '2020-08-16 19:49:40', '2020-08-16 19:49:40'),
(72, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-16 19:49:40', '2020-08-16 19:49:40'),
(73, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 97, '2020-08-16 20:05:20', '2020-08-16 20:05:20'),
(74, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-16 20:05:20', '2020-08-16 20:05:20'),
(75, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 23, '2020-08-18 17:41:27', '2020-08-18 17:41:27'),
(76, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 116, '2020-08-18 17:41:27', '2020-08-18 17:41:27'),
(77, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 128, '2020-08-18 17:50:20', '2020-08-18 17:50:20'),
(78, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 151, '2020-08-18 17:50:20', '2020-08-18 17:50:20'),
(79, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 39, '2020-08-18 17:58:41', '2020-08-18 17:58:41'),
(80, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 88, '2020-08-18 17:58:41', '2020-08-18 17:58:41'),
(81, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 92, '2020-08-22 14:22:45', '2020-08-22 14:22:45'),
(82, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 115, '2020-08-22 14:22:45', '2020-08-22 14:22:45'),
(83, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 144, '2020-08-22 14:30:54', '2020-08-22 14:30:54'),
(84, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 118, '2020-08-22 14:30:54', '2020-08-22 14:30:54'),
(85, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 115, '2020-08-22 18:47:33', '2020-08-22 18:47:33'),
(86, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 127, '2020-08-22 18:47:33', '2020-08-22 18:47:33'),
(87, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 70, '2020-08-23 14:45:26', '2020-08-23 14:45:26'),
(88, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 73, '2020-08-23 14:45:26', '2020-08-23 14:45:26'),
(89, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 69, '2020-08-23 14:59:34', '2020-08-23 14:59:34'),
(90, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 78, '2020-08-23 14:59:34', '2020-08-23 14:59:34'),
(91, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 33, '2020-08-25 20:40:08', '2020-08-25 20:40:08'),
(92, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-08-25 20:40:08', '2020-08-25 20:40:08'),
(93, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 66, '2020-08-25 21:07:55', '2020-08-25 21:07:55'),
(94, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 74, '2020-08-25 21:07:55', '2020-08-25 21:07:55'),
(95, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-08-25 21:08:47', '2020-08-25 21:08:47'),
(96, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-08-25 21:08:47', '2020-08-25 21:08:47'),
(97, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-25 21:40:58', '2020-08-25 21:40:58'),
(98, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-25 21:40:58', '2020-08-25 21:40:58'),
(99, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 153, '2020-08-25 21:47:40', '2020-08-25 21:47:40'),
(100, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 82, '2020-08-25 21:47:40', '2020-08-25 21:47:40'),
(101, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-25 21:50:29', '2020-08-25 21:50:29'),
(102, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-25 21:50:29', '2020-08-25 21:50:29'),
(103, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-25 22:01:30', '2020-08-25 22:01:30'),
(104, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-25 22:01:30', '2020-08-25 22:01:30'),
(105, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 21, '2020-08-29 01:41:54', '2020-08-29 01:41:54'),
(106, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-08-29 01:41:54', '2020-08-29 01:41:54'),
(107, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:22:27', '2020-08-31 00:22:27'),
(108, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 18, '2020-08-31 00:22:27', '2020-08-31 00:22:27'),
(109, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:23:24', '2020-08-31 00:23:24'),
(110, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 23, '2020-08-31 00:23:24', '2020-08-31 00:23:24'),
(111, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:24:06', '2020-08-31 00:24:06'),
(112, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:24:06', '2020-08-31 00:24:06'),
(113, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:36:32', '2020-08-31 00:36:32'),
(114, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:36:32', '2020-08-31 00:36:32'),
(115, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:36:49', '2020-08-31 00:36:49'),
(116, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:36:49', '2020-08-31 00:36:49'),
(117, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:37:21', '2020-08-31 00:37:21'),
(118, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:37:21', '2020-08-31 00:37:21'),
(119, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:37:33', '2020-08-31 00:37:33'),
(120, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:37:33', '2020-08-31 00:37:33'),
(121, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:46:57', '2020-08-31 00:46:57'),
(122, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:46:57', '2020-08-31 00:46:57'),
(123, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:47:32', '2020-08-31 00:47:32'),
(124, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:47:32', '2020-08-31 00:47:32'),
(125, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 22, '2020-08-31 00:51:31', '2020-08-31 00:51:31'),
(126, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 00:51:31', '2020-08-31 00:51:31'),
(127, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 01:09:42', '2020-08-31 01:09:42'),
(128, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-08-31 01:09:42', '2020-08-31 01:09:42'),
(129, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 147, '2020-09-02 01:18:38', '2020-09-02 01:18:38'),
(130, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 92, '2020-09-02 01:18:38', '2020-09-02 01:18:38'),
(131, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-02 13:06:26', '2020-09-02 13:06:26'),
(132, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-02 13:06:26', '2020-09-02 13:06:26'),
(133, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-02 13:20:35', '2020-09-02 13:20:35'),
(134, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-02 13:20:35', '2020-09-02 13:20:35'),
(135, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-02 13:47:58', '2020-09-02 13:47:58'),
(136, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-02 13:47:58', '2020-09-02 13:47:58'),
(137, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 40, '2020-09-02 14:15:49', '2020-09-02 14:15:49'),
(138, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 73, '2020-09-02 14:15:49', '2020-09-02 14:15:49'),
(139, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-09-02 22:02:53', '2020-09-02 22:02:53'),
(140, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 75, '2020-09-02 22:02:53', '2020-09-02 22:02:53'),
(141, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-09-02 22:05:48', '2020-09-02 22:05:48'),
(142, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 39, '2020-09-02 22:05:48', '2020-09-02 22:05:48'),
(143, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-09-02 22:06:39', '2020-09-02 22:06:39'),
(144, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 17, '2020-09-02 22:06:39', '2020-09-02 22:06:39'),
(145, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 0, '2020-09-02 22:52:13', '2020-09-02 22:52:13'),
(146, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 64, '2020-09-02 22:52:13', '2020-09-02 22:52:13'),
(147, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-09-03 14:54:06', '2020-09-03 14:54:06'),
(148, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-09-03 14:54:06', '2020-09-03 14:54:06'),
(149, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 68, '2020-09-04 00:28:47', '2020-09-04 00:28:47'),
(150, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 76, '2020-09-04 00:28:47', '2020-09-04 00:28:47'),
(151, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 47, '2020-09-04 00:49:54', '2020-09-04 00:49:54'),
(152, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 56, '2020-09-04 00:49:54', '2020-09-04 00:49:54'),
(153, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 45, '2020-09-04 00:53:43', '2020-09-04 00:53:43'),
(154, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 52, '2020-09-04 00:53:43', '2020-09-04 00:53:43'),
(155, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 37, '2020-09-04 01:11:10', '2020-09-04 01:11:10'),
(156, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 98, '2020-09-04 01:11:10', '2020-09-04 01:11:10'),
(157, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 47, '2020-09-04 13:31:22', '2020-09-04 13:31:22'),
(158, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 57, '2020-09-04 13:31:22', '2020-09-04 13:31:22'),
(159, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'KOKBGElZDCRNZOWFoVnaAgu54md2', 34, '2020-09-09 18:57:33', '2020-09-09 18:57:33'),
(160, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'KOKBGElZDCRNZOWFoVnaAgu54md2', 353, '2020-09-09 18:58:33', '2020-09-09 18:58:33'),
(161, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'KOKBGElZDCRNZOWFoVnaAgu54md2', 353, '2020-09-09 19:23:12', '2020-09-09 19:23:12'),
(162, 'ss', '1sdfsdf', 45, '2020-09-11 00:32:34', '2020-09-11 00:32:34'),
(163, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 22, '2020-09-11 00:33:49', '2020-09-11 00:33:49'),
(164, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 90, '2020-09-11 02:32:11', '2020-09-11 02:32:11'),
(165, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-09-11 02:53:21', '2020-09-11 02:53:21'),
(166, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 92, '2020-09-11 02:53:21', '2020-09-11 02:53:21'),
(167, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 23, '2020-09-11 03:17:04', '2020-09-11 03:17:04'),
(168, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 18, '2020-09-11 03:17:04', '2020-09-11 03:17:04'),
(169, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 23, '2020-09-11 12:40:12', '2020-09-11 12:40:12'),
(170, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 42, '2020-09-11 12:40:12', '2020-09-11 12:40:12'),
(171, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 20, '2020-09-11 12:48:51', '2020-09-11 12:48:51'),
(172, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 37, '2020-09-11 12:48:51', '2020-09-11 12:48:51'),
(173, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 23, '2020-09-11 13:31:43', '2020-09-11 13:31:43'),
(174, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 81, '2020-09-11 13:31:43', '2020-09-11 13:31:43'),
(175, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 112, '2020-09-11 13:32:45', '2020-09-11 13:32:45'),
(176, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 95, '2020-09-11 13:34:04', '2020-09-11 13:34:04'),
(177, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'KOKBGElZDCRNZOWFoVnaAgu54md2', 112, '2020-09-11 15:52:07', '2020-09-11 15:52:07'),
(178, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 44, '2020-09-11 19:25:19', '2020-09-11 19:25:19'),
(179, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 59, '2020-09-11 19:25:19', '2020-09-11 19:25:19'),
(180, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-09-27 19:23:26', '2020-09-27 19:23:26'),
(181, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-09-27 19:23:26', '2020-09-27 19:23:26'),
(182, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 19:26:47', '2020-09-27 19:26:47'),
(183, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 19:26:47', '2020-09-27 19:26:47'),
(184, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 19:29:50', '2020-09-27 19:29:50'),
(185, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 19:29:50', '2020-09-27 19:29:50'),
(186, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 15, '2020-09-27 19:30:51', '2020-09-27 19:30:51'),
(187, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 11, '2020-09-27 19:30:51', '2020-09-27 19:30:51'),
(188, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 19, '2020-09-27 19:33:44', '2020-09-27 19:33:44'),
(189, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 19:33:44', '2020-09-27 19:33:44'),
(190, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 19:34:06', '2020-09-27 19:34:06'),
(191, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 19:34:06', '2020-09-27 19:34:06'),
(192, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:17:08', '2020-09-27 20:17:08'),
(193, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:17:08', '2020-09-27 20:17:08'),
(194, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:20:54', '2020-09-27 20:20:54'),
(195, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:20:54', '2020-09-27 20:20:54'),
(196, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:35:25', '2020-09-27 20:35:25'),
(197, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 33, '2020-09-27 20:35:25', '2020-09-27 20:35:25'),
(198, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:40:04', '2020-09-27 20:40:04'),
(199, 'sumitpandey', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 96, '2020-09-27 20:40:04', '2020-09-27 20:40:04'),
(200, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:41:42', '2020-09-27 20:41:42'),
(201, 'sumitpandey', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 20, '2020-09-27 20:41:42', '2020-09-27 20:41:42'),
(202, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:43:46', '2020-09-27 20:43:46'),
(203, 'sumitpandey', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 57, '2020-09-27 20:43:46', '2020-09-27 20:43:46'),
(204, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:46:37', '2020-09-27 20:46:37'),
(205, 'sumitpandey', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 122, '2020-09-27 20:46:37', '2020-09-27 20:46:37'),
(206, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:50:27', '2020-09-27 20:50:27'),
(207, 'sumitpandey', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 57, '2020-09-27 20:50:27', '2020-09-27 20:50:27'),
(208, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:57:34', '2020-09-27 20:57:34'),
(209, 'sumitpandey', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 20:57:34', '2020-09-27 20:57:34'),
(210, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 23:21:09', '2020-09-27 23:21:09'),
(211, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 23:21:09', '2020-09-27 23:21:09'),
(212, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 23:23:34', '2020-09-27 23:23:34'),
(213, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 23:23:34', '2020-09-27 23:23:34'),
(214, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 42, '2020-09-27 23:28:29', '2020-09-27 23:28:29'),
(215, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 57, '2020-09-27 23:28:29', '2020-09-27 23:28:29'),
(216, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-27 23:32:47', '2020-09-27 23:32:47'),
(217, 'sumitpandey', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 78, '2020-09-27 23:32:47', '2020-09-27 23:32:47'),
(218, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 46, '2020-09-27 23:37:22', '2020-09-27 23:37:22'),
(219, 'sumitpandey', 'sumitpandeyFt2MHCEnbwZHbSDJJKtiKcDxFxk1', 44, '2020-09-27 23:37:22', '2020-09-27 23:37:22'),
(220, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 89, '2020-09-28 01:01:00', '2020-09-28 01:01:00'),
(221, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 89, '2020-09-28 01:01:00', '2020-09-28 01:01:00'),
(222, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 24, '2020-09-28 01:16:00', '2020-09-28 01:16:00'),
(223, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 90, '2020-09-28 01:16:00', '2020-09-28 01:16:00'),
(224, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 64, '2020-09-28 01:17:02', '2020-09-28 01:17:02'),
(225, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 108, '2020-09-28 01:17:02', '2020-09-28 01:17:02'),
(226, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 90, '2020-09-28 01:20:06', '2020-09-28 01:20:06'),
(227, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 117, '2020-09-28 01:20:06', '2020-09-28 01:20:06'),
(228, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 114, '2020-09-28 01:23:12', '2020-09-28 01:23:12'),
(229, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 91, '2020-09-28 01:23:12', '2020-09-28 01:23:12'),
(230, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-09-28 01:24:15', '2020-09-28 01:24:15'),
(231, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 72, '2020-09-28 01:26:20', '2020-09-28 01:26:20'),
(232, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 45, '2020-09-28 01:26:20', '2020-09-28 01:26:20'),
(233, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 46, '2020-09-28 01:45:42', '2020-09-28 01:45:42'),
(234, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 118, '2020-09-28 01:45:42', '2020-09-28 01:45:42'),
(235, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-28 01:50:35', '2020-09-28 01:50:35'),
(236, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-28 01:50:35', '2020-09-28 01:50:35'),
(237, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 68, '2020-09-28 01:52:31', '2020-09-28 01:52:31'),
(238, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 48, '2020-09-28 01:52:31', '2020-09-28 01:52:31'),
(239, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 117, '2020-09-28 02:09:00', '2020-09-28 02:09:00'),
(240, 'sumitpandey', 'sumitpandeypHXhIuGi7eabWswx0NKCHBKFpNP2', 79, '2020-09-28 02:09:00', '2020-09-28 02:09:00'),
(241, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-28 02:10:20', '2020-09-28 02:10:20'),
(242, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, '2020-09-28 02:10:20', '2020-09-28 02:10:20'),
(243, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 24, '2020-09-28 02:14:46', '2020-09-28 02:14:46'),
(244, 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 'pHXhIuGi7eabWswx0NKCHBKFpNP2Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 21, '2020-09-28 02:14:46', '2020-09-28 02:14:46'),
(245, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 66, '2020-09-28 13:46:24', '2020-09-28 13:46:24'),
(246, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 63, '2020-09-28 13:46:24', '2020-09-28 13:46:24'),
(247, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 83, '2020-09-28 13:49:34', '2020-09-28 13:49:34'),
(248, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 24, '2020-09-28 13:55:24', '2020-09-28 13:55:24'),
(249, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 56, '2020-09-28 14:48:22', '2020-09-28 14:48:22'),
(250, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'aYtQuJlK45gk8wUhq2tiKGMIQga2KOKBGElZDCRNZOWFoVnaAgu54md2', 65, '2020-09-28 14:48:22', '2020-09-28 14:48:22'),
(251, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 106, '2020-09-28 14:53:22', '2020-09-28 14:53:22'),
(252, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 78, '2020-09-28 14:53:22', '2020-09-28 14:53:22'),
(253, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'sumitpandeyaYtQuJlK45gk8wUhq2tiKGMIQga2', 114, '2020-09-28 14:53:31', '2020-09-28 14:53:31'),
(254, 'sumitpandey', 'sumitpandeyaYtQuJlK45gk8wUhq2tiKGMIQga2', 89, '2020-09-28 14:53:31', '2020-09-28 14:53:31'),
(255, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 145, '2020-09-28 15:28:58', '2020-09-28 15:28:58'),
(256, 'sumitpandey', 'sumitpandeyKOKBGElZDCRNZOWFoVnaAgu54md2', 117, '2020-09-28 15:28:58', '2020-09-28 15:28:58'),
(257, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIXy-79FQf3H3xX2-Up', 31, '2020-10-01 14:04:00', '2020-10-01 14:04:00'),
(258, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIXy-79FQf3H3xX2-Up', 131, '2020-10-01 14:04:00', '2020-10-01 14:04:00'),
(259, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIXyYyeiQzphas1JWlf', 89, '2020-10-01 14:06:04', '2020-10-01 14:06:04'),
(260, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIXyYyeiQzphas1JWlf', 89, '2020-10-01 14:06:04', '2020-10-01 14:06:04'),
(261, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIXz6Kv_-g4ScXoxQ5z', 25, '2020-10-01 14:08:41', '2020-10-01 14:08:41'),
(262, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIXz6Kv_-g4ScXoxQ5z', 132, '2020-10-01 14:08:41', '2020-10-01 14:08:41'),
(263, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIXzscdtXiAGY7QEgFu', 80, '2020-10-01 14:11:49', '2020-10-01 14:11:49'),
(264, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIXzscdtXiAGY7QEgFu', 45, '2020-10-01 14:11:49', '2020-10-01 14:11:49'),
(265, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIY1STdB5GEj69RQUal', 110, '2020-10-01 14:22:30', '2020-10-01 14:22:30'),
(266, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIY1STdB5GEj69RQUal', 63, '2020-10-01 14:22:30', '2020-10-01 14:22:30'),
(267, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIY1STdB5GEj69RQUal', 110, '2020-10-01 14:22:30', '2020-10-01 14:22:30'),
(268, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIY1STdB5GEj69RQUal', 63, '2020-10-01 14:22:30', '2020-10-01 14:22:30'),
(269, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIYABC4gr0uG-YwXDQr', 95, '2020-10-01 15:01:22', '2020-10-01 15:01:22'),
(270, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIYABC4gr0uG-YwXDQr', 11, '2020-10-01 15:01:22', '2020-10-01 15:01:22'),
(271, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIYAH8dCwP-19Ks_xMi', 125, '2020-10-01 15:01:43', '2020-10-01 15:01:43'),
(272, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIYAH8dCwP-19Ks_xMi', 40, '2020-10-01 15:01:43', '2020-10-01 15:01:43'),
(273, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIYD5uM1TwKiUiGYOEE', 0, '2020-10-01 15:12:55', '2020-10-01 15:12:55'),
(274, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIYD5uM1TwKiUiGYOEE', 17, '2020-10-01 15:12:55', '2020-10-01 15:12:55'),
(275, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIYdJnO4rHoSgx8GwkM', 72, '2020-10-01 17:12:38', '2020-10-01 17:12:38'),
(276, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIYdJnO4rHoSgx8GwkM', 64, '2020-10-01 17:12:38', '2020-10-01 17:12:38'),
(277, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIYdhCLNlky9yQZ0uer', 0, '2020-10-01 17:14:04', '2020-10-01 17:14:04'),
(278, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIYdhCLNlky9yQZ0uer', 48, '2020-10-01 17:14:04', '2020-10-01 17:14:04'),
(279, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards--MIYdhCLNlky9yQZ0uer', 0, '2020-10-01 17:14:21', '2020-10-01 17:14:21'),
(280, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIYe4sCY-s-EG15fGvt', 119, '2020-10-01 17:16:02', '2020-10-01 17:16:02'),
(281, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIYe4sCY-s-EG15fGvt', 12, '2020-10-01 17:16:02', '2020-10-01 17:16:02'),
(282, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards--MIYe4sCY-s-EG15fGvt', 119, '2020-10-01 17:16:21', '2020-10-01 17:16:21'),
(283, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIYl6fjx5vljOnhzNrt', 112, '2020-10-01 17:47:06', '2020-10-01 17:47:06'),
(284, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIYl6fjx5vljOnhzNrt', 71, '2020-10-01 17:47:06', '2020-10-01 17:47:06'),
(285, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'KOKBGElZDCRNZOWFoVnaAgu54md2', 133, '2020-10-01 18:34:15', '2020-10-01 18:34:15'),
(286, 'PuaUScc0iLMG022cNdebw6ACOC62', '-MIa5PS0lLxCJkqxSn0s', 88, '2020-10-02 04:39:34', '2020-10-02 04:39:34'),
(287, 'PuaUScc0iLMG022cNdebw6ACOC62', '-MIa5PS0lLxCJkqxSn0s', 61, '2020-10-02 04:39:34', '2020-10-02 04:39:34'),
(288, 'PuaUScc0iLMG022cNdebw6ACOC62', 'rewards--MIa5PS0lLxCJkqxSn0s', 88, '2020-10-02 04:41:03', '2020-10-02 04:41:03'),
(289, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MId2qvuT7G1Z_uzdGT6', 137, '2020-10-02 18:26:41', '2020-10-02 18:26:41'),
(290, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MId2qvuT7G1Z_uzdGT6', 66, '2020-10-02 18:26:41', '2020-10-02 18:26:41'),
(291, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIee9BEKGTomOzGsD4t', 47, '2020-10-03 01:54:20', '2020-10-03 01:54:20'),
(292, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIee9BEKGTomOzGsD4t', 0, '2020-10-03 01:54:20', '2020-10-03 01:54:20'),
(293, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIeg54ZlmrUP5nAvXdo', 70, '2020-10-03 02:02:25', '2020-10-03 02:02:25'),
(294, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIeg54ZlmrUP5nAvXdo', 71, '2020-10-03 02:02:25', '2020-10-03 02:02:25'),
(295, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards--MIeg54ZlmrUP5nAvXdo', 70, '2020-10-03 02:02:45', '2020-10-03 02:02:45'),
(296, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIeh-BUX77TBWgwP7Fi', 14, '2020-10-03 02:05:29', '2020-10-03 02:05:29'),
(297, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIeh-BUX77TBWgwP7Fi', 24, '2020-10-03 02:05:29', '2020-10-03 02:05:29'),
(298, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards--MIeh-BUX77TBWgwP7Fi', 14, '2020-10-03 02:05:51', '2020-10-03 02:05:51'),
(299, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIf10CoSbrVCbywl5CT', 90, '2020-10-03 03:38:22', '2020-10-03 03:38:22'),
(300, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIf10CoSbrVCbywl5CT', 84, '2020-10-03 03:38:22', '2020-10-03 03:38:22'),
(301, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIf3KniNh_M1atreeW1', 21, '2020-10-03 03:47:22', '2020-10-03 03:47:22'),
(302, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIf3KniNh_M1atreeW1', 23, '2020-10-03 03:47:22', '2020-10-03 03:47:22'),
(303, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIf5BLUhG8bdcRhqtB1', 24, '2020-10-03 03:55:18', '2020-10-03 03:55:18'),
(304, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIf5BLUhG8bdcRhqtB1', 28, '2020-10-03 03:55:18', '2020-10-03 03:55:18'),
(305, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIf71I53GG6H8L0CZba', 24, '2020-10-03 04:03:23', '2020-10-03 04:03:23'),
(306, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIf71I53GG6H8L0CZba', 21, '2020-10-03 04:03:23', '2020-10-03 04:03:23'),
(307, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 96, '2020-10-03 04:05:46', '2020-10-03 04:05:46'),
(308, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-10-03 04:11:51', '2020-10-03 04:11:51'),
(309, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 72, '2020-10-03 09:25:37', '2020-10-03 09:25:37'),
(310, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 0, '2020-10-03 09:26:25', '2020-10-03 09:26:25'),
(311, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'KOKBGElZDCRNZOWFoVnaAgu54md2', 92, '2020-10-03 11:48:38', '2020-10-03 11:48:38'),
(312, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIgyQzHpKCnFur0hvx9', 23, '2020-10-03 12:42:35', '2020-10-03 12:42:35'),
(313, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIgyQzHpKCnFur0hvx9', 46, '2020-10-03 12:42:35', '2020-10-03 12:42:35'),
(314, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'aeds', 23, '2020-10-04 08:34:46', '2020-10-04 08:34:46'),
(315, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 72, '2020-10-04 08:36:23', '2020-10-04 08:36:23'),
(316, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 72, '2020-10-04 08:38:54', '2020-10-04 08:38:54'),
(317, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIlFwuRqpB-XCbyTkf_', 96, '2020-10-04 08:41:05', '2020-10-04 08:41:05'),
(318, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIlFwuRqpB-XCbyTkf_', 89, '2020-10-04 08:41:05', '2020-10-04 08:41:05'),
(319, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIoGhtF9FI7yMmABRpj', 71, '2020-10-04 22:43:12', '2020-10-04 22:43:12'),
(320, 'newbotid', '-MIoGhtF9FI7yMmABRpj', 0, '2020-10-04 22:43:12', '2020-10-04 22:43:12'),
(321, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards--MIoGhtF9FI7yMmABRpj', 71, '2020-10-04 22:48:12', '2020-10-04 22:48:12'),
(322, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIoKY7xm0thgBaVPFKt', 0, '2020-10-04 22:59:12', '2020-10-04 22:59:12'),
(323, 'newbotid', '-MIoKY7xm0thgBaVPFKt', 17, '2020-10-04 22:59:12', '2020-10-04 22:59:12'),
(324, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIoLjZJpvp4aOQlRBRr', 95, '2020-10-04 23:05:18', '2020-10-04 23:05:18'),
(325, 'qsdfgvhbasd', '-MIoLjZJpvp4aOQlRBRr', 74, '2020-10-04 23:05:18', '2020-10-04 23:05:18'),
(326, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIoMCLi9jyicWuV0iY5', 0, '2020-10-04 23:06:26', '2020-10-04 23:06:26'),
(327, 'someuserid', '-MIoMCLi9jyicWuV0iY5', 12, '2020-10-04 23:06:26', '2020-10-04 23:06:26'),
(328, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIoQwQAGczmrJIm9PgS', 24, '2020-10-04 23:27:32', '2020-10-04 23:27:32'),
(329, 'qsdfgvhbasd', '-MIoQwQAGczmrJIm9PgS', 0, '2020-10-04 23:27:32', '2020-10-04 23:27:32'),
(330, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIoRRnG2nBPwmfQSurU', 17, '2020-10-04 23:29:05', '2020-10-04 23:29:05'),
(331, 'newbotid', '-MIoRRnG2nBPwmfQSurU', 0, '2020-10-04 23:29:05', '2020-10-04 23:29:05'),
(332, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIoTopXMeBcAwSAdcDD', 23, '2020-10-04 23:39:34', '2020-10-04 23:39:34'),
(333, 'newbotid', '-MIoTopXMeBcAwSAdcDD', 0, '2020-10-04 23:39:34', '2020-10-04 23:39:34'),
(334, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 22, '2020-10-04 23:40:18', '2020-10-04 23:40:18'),
(335, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 23, '2020-10-04 23:41:38', '2020-10-04 23:41:38'),
(336, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIoVTOuZ7mP8vfk5PKR', 0, '2020-10-04 23:46:34', '2020-10-04 23:46:34'),
(337, 'someuserid', '-MIoVTOuZ7mP8vfk5PKR', 0, '2020-10-04 23:46:34', '2020-10-04 23:46:34'),
(338, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIoZA-IT8AoSdsfjkdo', 156, '2020-10-05 00:03:51', '2020-10-05 00:03:51'),
(339, 'someuserid', '-MIoZA-IT8AoSdsfjkdo', 32, '2020-10-05 00:03:51', '2020-10-05 00:03:51'),
(340, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'rewards--MIoZA-IT8AoSdsfjkdo', 156, '2020-10-05 00:04:12', '2020-10-05 00:04:12'),
(341, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'KOKBGElZDCRNZOWFoVnaAgu54md2', 163, '2020-10-05 00:09:45', '2020-10-05 00:09:45'),
(342, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIohJhuFTOiTAAimozX', 161, '2020-10-05 00:43:44', '2020-10-05 00:43:44'),
(343, 'newbotid', '-MIohJhuFTOiTAAimozX', 69, '2020-10-05 00:43:44', '2020-10-05 00:43:44'),
(344, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'rewards--MIohJhuFTOiTAAimozX', 161, '2020-10-05 00:44:18', '2020-10-05 00:44:18'),
(345, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 91, '2020-10-05 05:52:49', '2020-10-05 05:52:49'),
(348, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIsF50LQW-YMuWtfGz1', 119, '2020-10-05 17:14:49', '2020-10-05 17:14:49'),
(349, 'newbotid', '-MIsF50LQW-YMuWtfGz1', 44, '2020-10-05 17:14:49', '2020-10-05 17:14:49'),
(350, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIsFge2Q30VhI_oegNf', 0, '2020-10-05 17:17:52', '2020-10-05 17:17:52'),
(351, 'someuserid', '-MIsFge2Q30VhI_oegNf', 20, '2020-10-05 17:17:52', '2020-10-05 17:17:52'),
(354, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 71, '2020-10-05 17:18:29', '2020-10-05 17:18:29'),
(355, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards-singleplayer', 71, '2020-10-05 17:18:53', '2020-10-05 17:18:53'),
(356, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 48, '2020-10-05 17:20:38', '2020-10-05 17:20:38'),
(359, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 48, '2020-10-05 17:23:19', '2020-10-05 17:23:19'),
(362, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 143, '2020-10-05 17:28:53', '2020-10-05 17:28:53'),
(363, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 119, '2020-10-05 17:31:24', '2020-10-05 17:31:24'),
(364, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards-singleplayer-1601893925855', 119, '2020-10-05 17:32:09', '2020-10-05 17:32:09'),
(365, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 23, '2020-10-05 17:35:38', '2020-10-05 17:35:38'),
(366, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 23, '2020-10-05 17:35:52', '2020-10-05 17:35:52'),
(367, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards-singleplayer-1601894165064', 23, '2020-10-05 17:36:06', '2020-10-05 17:36:06'),
(368, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 48, '2020-10-05 18:27:58', '2020-10-05 18:27:58'),
(369, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards-singleplayer-1601897311881', 48, '2020-10-05 18:28:33', '2020-10-05 18:28:33'),
(370, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIsm9BuhIoeBHjHsZvn', 108, '2020-10-05 19:42:54', '2020-10-05 19:42:54'),
(371, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIsm9BuhIoeBHjHsZvn', 137, '2020-10-05 19:42:54', '2020-10-05 19:42:54'),
(372, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'rewards--MIsm9BuhIoeBHjHsZvn', 137, '2020-10-05 19:43:17', '2020-10-05 19:43:17'),
(373, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'rewards--MIsm9BuhIoeBHjHsZvn', 108, '2020-10-05 19:43:21', '2020-10-05 19:43:21'),
(374, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIsn3mQ4W-_3tOvbzT_', 0, '2020-10-05 19:48:19', '2020-10-05 19:48:19'),
(375, 'newbotid', '-MIsn3mQ4W-_3tOvbzT_', 32, '2020-10-05 19:48:19', '2020-10-05 19:48:19'),
(376, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIsn59akiP9QBqxJDZn', 32, '2020-10-05 19:48:58', '2020-10-05 19:48:58'),
(377, 'qsdfgvhbasd', '-MIsn59akiP9QBqxJDZn', 19, '2020-10-05 19:48:58', '2020-10-05 19:48:58'),
(378, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 48, '2020-10-06 06:15:04', '2020-10-06 06:15:04'),
(379, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards-singleplayer-1601939748907', 48, '2020-10-06 06:15:49', '2020-10-06 06:15:49'),
(380, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1601941162868', 96, '2020-10-06 06:39:23', '2020-10-06 06:39:23'),
(381, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1601941516157', 113, '2020-10-06 06:45:17', '2020-10-06 06:45:17'),
(382, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1601941682042', 44, '2020-10-06 06:48:03', '2020-10-06 06:48:03'),
(383, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1601941966263', 71, '2020-10-06 06:52:47', '2020-10-06 06:52:47'),
(384, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards-singleplayer-1601941988809', 71, '2020-10-06 06:53:09', '2020-10-06 06:53:09'),
(385, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1601942014304', 24, '2020-10-06 06:53:35', '2020-10-06 06:53:35'),
(386, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards-singleplayer-1601942035777', 24, '2020-10-06 06:53:56', '2020-10-06 06:53:56'),
(387, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1601942059678', 24, '2020-10-06 06:54:20', '2020-10-06 06:54:20'),
(388, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvAyxzw09cowJ1M9Nc', 93, '2020-10-06 06:55:46', '2020-10-06 06:55:46'),
(389, 'qsdfgvhbasd', '-MIvAyxzw09cowJ1M9Nc', 38, '2020-10-06 06:55:46', '2020-10-06 06:55:46'),
(390, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1601942206887', 0, '2020-10-06 06:56:47', '2020-10-06 06:56:47'),
(391, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvBc3lLG7bUCr8QuDw', 111, '2020-10-06 06:58:12', '2020-10-06 06:58:12'),
(392, 'qsdfgvhbasd', '-MIvBc3lLG7bUCr8QuDw', 102, '2020-10-06 06:58:12', '2020-10-06 06:58:12'),
(393, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1601942311350', 0, '2020-10-06 06:58:32', '2020-10-06 06:58:32'),
(394, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards--MIvBc3lLG7bUCr8QuDw', 111, '2020-10-06 06:59:13', '2020-10-06 06:59:13'),
(395, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvCvf1s3-JAjdlDdFm', 59, '2020-10-06 07:03:44', '2020-10-06 07:03:44'),
(396, 'newbotid', '-MIvCvf1s3-JAjdlDdFm', 44, '2020-10-06 07:03:44', '2020-10-06 07:03:44'),
(397, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards--MIvCvf1s3-JAjdlDdFm', 59, '2020-10-06 07:04:11', '2020-10-06 07:04:11'),
(398, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvDQMlP1dCXNylSFne', 71, '2020-10-06 07:05:38', '2020-10-06 07:05:38'),
(399, 'someuserid', '-MIvDQMlP1dCXNylSFne', 47, '2020-10-06 07:05:38', '2020-10-06 07:05:38'),
(400, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards--MIvDQMlP1dCXNylSFne', 71, '2020-10-06 07:06:14', '2020-10-06 07:06:14'),
(401, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvE1TgRrH1rnXfn5mq', 27, '2020-10-06 07:09:01', '2020-10-06 07:09:01'),
(402, 'qsdfgvhbasd', '-MIvE1TgRrH1rnXfn5mq', 23, '2020-10-06 07:09:01', '2020-10-06 07:09:01'),
(403, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvESL2qLaYrf4UNAOr', 0, '2020-10-06 07:10:14', '2020-10-06 07:10:14'),
(404, 'newbotid', '-MIvESL2qLaYrf4UNAOr', 44, '2020-10-06 07:10:14', '2020-10-06 07:10:14'),
(405, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards--MIvESL2qLaYrf4UNAOr', 0, '2020-10-06 07:10:35', '2020-10-06 07:10:35'),
(406, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvFj_qqXCgg-LbTDtv', 23, '2020-10-06 07:15:32', '2020-10-06 07:15:32'),
(407, 'someuserid', '-MIvFj_qqXCgg-LbTDtv', 0, '2020-10-06 07:15:32', '2020-10-06 07:15:32'),
(408, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvJkC6TtstyEjFd8ic', 68, '2020-10-06 07:33:28', '2020-10-06 07:33:28'),
(409, 'newbotid', '-MIvJkC6TtstyEjFd8ic', 0, '2020-10-06 07:33:28', '2020-10-06 07:33:28'),
(410, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvK5LObhU1XiIZM-Mj', 0, '2020-10-06 07:35:25', '2020-10-06 07:35:25'),
(411, 'someuserid', '-MIvK5LObhU1XiIZM-Mj', 0, '2020-10-06 07:35:25', '2020-10-06 07:35:25'),
(412, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MIvLWcd-BQe5vZseK8u', 22, '2020-10-06 07:40:29', '2020-10-06 07:40:29'),
(413, 'newbotid', '-MIvLWcd-BQe5vZseK8u', 0, '2020-10-06 07:40:29', '2020-10-06 07:40:29');
INSERT INTO `quiz_response` (`qr_id`, `firebase_user_id`, `matchId`, `score`, `created_at`, `updated_at`) VALUES
(414, 'PuaUScc0iLMG022cNdebw6ACOC62', 'Single-Player1601950161381', 93, '2020-10-06 09:09:22', '2020-10-06 09:09:22'),
(415, 'PuaUScc0iLMG022cNdebw6ACOC62', 'Single-Player1601950393076', 0, '2020-10-06 09:13:13', '2020-10-06 09:13:13'),
(416, 'PuaUScc0iLMG022cNdebw6ACOC62', 'Single-Player1601950488019', 0, '2020-10-06 09:14:50', '2020-10-06 09:14:50'),
(417, 'PuaUScc0iLMG022cNdebw6ACOC62', 'Single-Player1601950555047', 0, '2020-10-06 09:15:57', '2020-10-06 09:15:57'),
(418, 'PuaUScc0iLMG022cNdebw6ACOC62', 'Single-Player1601950683810', 0, '2020-10-06 09:18:06', '2020-10-06 09:18:06'),
(419, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIwcQNTfMM8is4y_3BP', 152, '2020-10-06 13:38:51', '2020-10-06 13:38:51'),
(420, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIwcQNTfMM8is4y_3BP', 151, '2020-10-06 13:38:51', '2020-10-06 13:38:51'),
(421, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIwcQNTfMM8is4y_3BP', 152, '2020-10-06 13:38:51', '2020-10-06 13:38:51'),
(422, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIwcQNTfMM8is4y_3BP', 151, '2020-10-06 13:38:51', '2020-10-06 13:38:51'),
(423, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'rewards--MIwcQNTfMM8is4y_3BP', 151, '2020-10-06 13:39:31', '2020-10-06 13:39:31'),
(424, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'rewards--MIwcQNTfMM8is4y_3BP', 152, '2020-10-06 13:39:35', '2020-10-06 13:39:35'),
(425, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIwdDIq2h3SWqgqcMpJ', 12, '2020-10-06 13:43:27', '2020-10-06 13:43:27'),
(426, 'qsdfgvhbasd', '-MIwdDIq2h3SWqgqcMpJ', 44, '2020-10-06 13:43:27', '2020-10-06 13:43:27'),
(427, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIwdFoDxdK6PO5j1mEo', 18, '2020-10-06 13:43:33', '2020-10-06 13:43:33'),
(428, 'newbotid', '-MIwdFoDxdK6PO5j1mEo', 75, '2020-10-06 13:43:33', '2020-10-06 13:43:33'),
(429, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIwdnOGvohSKYw1qF8X', 85, '2020-10-06 13:44:53', '2020-10-06 13:44:53'),
(430, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIwdnOGvohSKYw1qF8X', 86, '2020-10-06 13:44:53', '2020-10-06 13:44:53'),
(431, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'rewards--MIwdnOGvohSKYw1qF8X', 86, '2020-10-06 13:46:03', '2020-10-06 13:46:03'),
(432, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'rewards--MIwdnOGvohSKYw1qF8X', 85, '2020-10-06 13:46:23', '2020-10-06 13:46:23'),
(433, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIwgX8h75Xd4EIuECOB', 42, '2020-10-06 13:57:41', '2020-10-06 13:57:41'),
(434, 'newbotid', '-MIwgX8h75Xd4EIuECOB', 85, '2020-10-06 13:57:41', '2020-10-06 13:57:41'),
(435, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIwgY_r6TwcpP6mq9pa', 78, '2020-10-06 13:57:49', '2020-10-06 13:57:49'),
(436, 'newbotid', '-MIwgY_r6TwcpP6mq9pa', 34, '2020-10-06 13:57:49', '2020-10-06 13:57:49'),
(437, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIwhCMHYXI8zf6HYexO', 0, '2020-10-06 14:03:25', '2020-10-06 14:03:25'),
(438, 'newbotid', '-MIwhCMHYXI8zf6HYexO', 53, '2020-10-06 14:03:25', '2020-10-06 14:03:25'),
(439, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIwhDgl4RKxh-tNjxhg', 0, '2020-10-06 20:36:33', '2020-10-06 20:36:33'),
(440, 'qsdfgvhbasd', '-MIwhDgl4RKxh-tNjxhg', 26, '2020-10-06 20:36:33', '2020-10-06 20:36:33'),
(441, 'NGr7TfytHzblIWrkIp3drN0OCBO2', '-MIy6idKbyTpGLJFBvWo', 0, '2020-10-06 20:36:51', '2020-10-06 20:36:51'),
(442, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIy6idKbyTpGLJFBvWo', 0, '2020-10-06 20:36:51', '2020-10-06 20:36:51'),
(443, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIy7NLKZuK32Fw9v9mA', 0, '2020-10-06 20:39:00', '2020-10-06 20:39:00'),
(444, 'newbotid', '-MIy7NLKZuK32Fw9v9mA', 44, '2020-10-06 20:39:00', '2020-10-06 20:39:00'),
(445, 'NGr7TfytHzblIWrkIp3drN0OCBO2', '-MIy7JLuxIBg6sdmITfy', 0, '2020-10-06 20:39:05', '2020-10-06 20:39:05'),
(446, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIy7JLuxIBg6sdmITfy', 0, '2020-10-06 20:39:05', '2020-10-06 20:39:05'),
(447, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIy7yaa4wJdTnbO0uP0', 101, '2020-10-06 20:40:59', '2020-10-06 20:40:59'),
(448, 'newbotid', '-MIy7yaa4wJdTnbO0uP0', 41, '2020-10-06 20:40:59', '2020-10-06 20:40:59'),
(449, 'NGr7TfytHzblIWrkIp3drN0OCBO2', '-MIy7uajHckMBgMXcpza', 76, '2020-10-06 20:41:01', '2020-10-06 20:41:01'),
(450, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIy7uajHckMBgMXcpza', 115, '2020-10-06 20:41:01', '2020-10-06 20:41:01'),
(451, 'NGr7TfytHzblIWrkIp3drN0OCBO2', '-MIy8N3QqBBfBHOSIJ07', 87, '2020-10-06 20:43:05', '2020-10-06 20:43:05'),
(452, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MIy8N3QqBBfBHOSIJ07', 90, '2020-10-06 20:43:05', '2020-10-06 20:43:05'),
(453, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MIy8QHglSpX0zCAI8Vb', 45, '2020-10-06 20:43:23', '2020-10-06 20:43:23'),
(454, 'newbotid', '-MIy8QHglSpX0zCAI8Vb', 71, '2020-10-06 20:43:23', '2020-10-06 20:43:23'),
(455, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'rewards--MIy8N3QqBBfBHOSIJ07', 90, '2020-10-06 20:43:34', '2020-10-06 20:43:34'),
(456, 'NGr7TfytHzblIWrkIp3drN0OCBO2', 'rewards--MIy8N3QqBBfBHOSIJ07', 87, '2020-10-06 20:43:37', '2020-10-06 20:43:37'),
(457, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602033251560', 23, '2020-10-07 08:14:12', '2020-10-07 08:14:12'),
(458, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602033449574', 24, '2020-10-07 08:17:30', '2020-10-07 08:17:30'),
(459, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602033758609', 24, '2020-10-07 08:22:39', '2020-10-07 08:22:39'),
(460, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602033910853', 24, '2020-10-07 08:25:11', '2020-10-07 08:25:11'),
(461, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602034047189', 24, '2020-10-07 08:27:28', '2020-10-07 08:27:28'),
(462, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602034233535', 23, '2020-10-07 08:30:34', '2020-10-07 08:30:34'),
(463, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602034596461', 23, '2020-10-07 08:36:37', '2020-10-07 08:36:37'),
(464, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602034616802', 0, '2020-10-07 08:36:58', '2020-10-07 08:36:58'),
(465, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602034727214', 23, '2020-10-07 08:38:48', '2020-10-07 08:38:48'),
(466, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602034761866', 0, '2020-10-07 08:39:23', '2020-10-07 08:39:23'),
(467, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602035569001', 43, '2020-10-07 08:52:50', '2020-10-07 08:52:50'),
(468, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602035591624', 23, '2020-10-07 08:53:12', '2020-10-07 08:53:12'),
(469, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602035950916', 0, '2020-10-07 08:59:12', '2020-10-07 08:59:12'),
(470, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'rewards-singleplayer-1602035966764', 0, '2020-10-07 08:59:28', '2020-10-07 08:59:28'),
(471, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MJ5mRnpNRgMxWTrPf4y', 0, '2020-10-08 12:58:18', '2020-10-08 12:58:18'),
(472, 'qsdfgvhbasd', '-MJ5mRnpNRgMxWTrPf4y', 0, '2020-10-08 12:58:18', '2020-10-08 12:58:18'),
(473, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MJ5mv41vAjWAtYAYYny', 0, '2020-10-08 13:00:18', '2020-10-08 13:00:18'),
(474, 'qsdfgvhbasd', '-MJ5mv41vAjWAtYAYYny', 0, '2020-10-08 13:00:18', '2020-10-08 13:00:18'),
(475, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MJ5n4uYDez-PAkIPO-A', 0, '2020-10-08 13:01:02', '2020-10-08 13:01:02'),
(476, 'newbotid', '-MJ5n4uYDez-PAkIPO-A', 0, '2020-10-08 13:01:02', '2020-10-08 13:01:02'),
(477, 'PuaUScc0iLMG022cNdebw6ACOC62', '-MJ5mqqrCyihXUDIVI4n', 68, '2020-10-08 13:01:30', '2020-10-08 13:01:30'),
(478, 'qsdfgvhbasd', '-MJ5mqqrCyihXUDIVI4n', 37, '2020-10-08 13:01:30', '2020-10-08 13:01:30'),
(479, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MJ5nUk7exaDIusORy2A', 92, '2020-10-08 13:03:37', '2020-10-08 13:03:37'),
(480, 'PuaUScc0iLMG022cNdebw6ACOC62', '-MJ5nUk7exaDIusORy2A', 64, '2020-10-08 13:03:37', '2020-10-08 13:03:37'),
(481, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MJ5oUzzkXEDg1C6ijpm', 114, '2020-10-08 13:09:00', '2020-10-08 13:09:00'),
(482, 'PuaUScc0iLMG022cNdebw6ACOC62', '-MJ5oUzzkXEDg1C6ijpm', 65, '2020-10-08 13:09:00', '2020-10-08 13:09:00'),
(483, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602348466487', 0, '2020-10-10 23:47:47', '2020-10-10 23:47:47'),
(484, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602348482927', 0, '2020-10-10 23:48:04', '2020-10-10 23:48:04'),
(485, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602348501537', 23, '2020-10-10 23:48:22', '2020-10-10 23:48:22'),
(486, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MJRMqpLmTE7zvVZHoZy', 69, '2020-10-12 17:35:22', '2020-10-12 17:35:22'),
(487, 'someuserid', '-MJRMqpLmTE7zvVZHoZy', 88, '2020-10-12 17:35:22', '2020-10-12 17:35:22'),
(488, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MJRNQUkcV6MPPECqvKp', 116, '2020-10-12 17:37:37', '2020-10-12 17:37:37'),
(489, 'someuserid', '-MJRNQUkcV6MPPECqvKp', 17, '2020-10-12 17:37:37', '2020-10-12 17:37:37'),
(490, 'JzoPhKAantOVHR8YXJiJDByBTqL2', 'Single-Player1602499942248', 47, '2020-10-12 17:52:23', '2020-10-12 17:52:23'),
(491, 'JzoPhKAantOVHR8YXJiJDByBTqL2', 'Single-Player1602500094718', 0, '2020-10-12 17:54:55', '2020-10-12 17:54:55'),
(492, 'JzoPhKAantOVHR8YXJiJDByBTqL2', 'Single-Player1602500099626', 0, '2020-10-12 17:55:00', '2020-10-12 17:55:00'),
(493, 'JzoPhKAantOVHR8YXJiJDByBTqL2', 'Single-Player1602500107986', 0, '2020-10-12 17:55:08', '2020-10-12 17:55:08'),
(494, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MJVx5zLc-JTQZzShi9l', 0, '2020-10-13 14:56:44', '2020-10-13 14:56:44'),
(495, 'qsdfgvhbasd', '-MJVx5zLc-JTQZzShi9l', 81, '2020-10-13 14:56:44', '2020-10-13 14:56:44'),
(496, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MJVx98K5EC_cdGRwH48', 0, '2020-10-13 14:56:54', '2020-10-13 14:56:54'),
(497, 'someuserid', '-MJVx98K5EC_cdGRwH48', 77, '2020-10-13 14:56:54', '2020-10-13 14:56:54'),
(498, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MJVxgHXKCZ0nTNMN0xA', 0, '2020-10-13 14:59:12', '2020-10-13 14:59:12'),
(499, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MJVxgHXKCZ0nTNMN0xA', 0, '2020-10-13 14:59:12', '2020-10-13 14:59:12'),
(500, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'rewards--MJVxgHXKCZ0nTNMN0xA', 0, '2020-10-13 14:59:43', '2020-10-13 14:59:43'),
(501, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'rewards--MJVxgHXKCZ0nTNMN0xA', 0, '2020-10-13 14:59:45', '2020-10-13 14:59:45'),
(502, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MJVzXVEu0qXKmLBalZQ', 0, '2020-10-13 15:07:17', '2020-10-13 15:07:17'),
(503, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MJVzXVEu0qXKmLBalZQ', 0, '2020-10-13 15:07:17', '2020-10-13 15:07:17'),
(504, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MJW-ACJhCUWFAHQqq_D', 0, '2020-10-13 15:10:12', '2020-10-13 15:10:12'),
(505, 'newbotid', '-MJW-ACJhCUWFAHQqq_D', 30, '2020-10-13 15:10:12', '2020-10-13 15:10:12'),
(506, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MJW-BLqhl829bbDynwS', 0, '2020-10-13 15:29:18', '2020-10-13 15:29:18'),
(507, 'newbotid', '-MJW-BLqhl829bbDynwS', 94, '2020-10-13 15:29:18', '2020-10-13 15:29:18'),
(508, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MJhLQKv1FChPtzjDXgv', 24, '2020-10-16 00:41:06', '2020-10-16 00:41:06'),
(509, 'newbotid', '-MJhLQKv1FChPtzjDXgv', 0, '2020-10-16 00:41:06', '2020-10-16 00:41:06'),
(510, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'Single-Player1602784796809', 115, '2020-10-16 00:59:58', '2020-10-16 00:59:58'),
(511, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 'Single-Player1602785073804', 24, '2020-10-16 01:04:34', '2020-10-16 01:04:34'),
(512, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MKDikuN4p6yydG2jY7Z', 158, '2020-10-22 12:15:46', '2020-10-22 12:15:46'),
(513, 'someuserid', '-MKDikuN4p6yydG2jY7Z', 68, '2020-10-22 12:15:46', '2020-10-22 12:15:46'),
(514, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'Single-Player1603343785221', 141, '2020-10-22 12:16:26', '2020-10-22 12:16:26'),
(515, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MKFERMQRk0Wh4gGE8KZ', 47, '2020-10-22 19:17:50', '2020-10-22 19:17:50'),
(516, 'qsdfgvhbasd', '-MKFERMQRk0Wh4gGE8KZ', 15, '2020-10-22 19:17:50', '2020-10-22 19:17:50'),
(517, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MKTRjfPRlFEmGivZhso', 0, '2020-10-25 13:30:02', '2020-10-25 13:30:02'),
(518, 'newbotid', '-MKTRjfPRlFEmGivZhso', 0, '2020-10-25 13:30:02', '2020-10-25 13:30:02'),
(519, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MKTlX4d8HrW0n0o7woN', 144, '2020-10-25 15:02:02', '2020-10-25 15:02:02'),
(520, 'someuserid', '-MKTlX4d8HrW0n0o7woN', 44, '2020-10-25 15:02:02', '2020-10-25 15:02:02'),
(521, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MKTm-0cAqAmnC3GrVfJ', 136, '2020-10-25 15:03:41', '2020-10-25 15:03:41'),
(522, 'qsdfgvhbasd', '-MKTm-0cAqAmnC3GrVfJ', 112, '2020-10-25 15:03:41', '2020-10-25 15:03:41'),
(523, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MKYpS7k6CbcJp7FPqLq', 92, '2020-10-26 14:36:35', '2020-10-26 14:36:35'),
(524, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MKYpS7k6CbcJp7FPqLq', 92, '2020-10-26 14:36:35', '2020-10-26 14:36:35'),
(525, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MKYpdsNCCDb-kq1-Zrg', 112, '2020-10-26 14:37:47', '2020-10-26 14:37:47'),
(526, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MKYpdsNCCDb-kq1-Zrg', 114, '2020-10-26 14:37:47', '2020-10-26 14:37:47'),
(527, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 'rewards--MKYpdsNCCDb-kq1-Zrg', 114, '2020-10-26 14:38:15', '2020-10-26 14:38:15'),
(528, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'rewards--MKYpdsNCCDb-kq1-Zrg', 112, '2020-10-26 14:38:16', '2020-10-26 14:38:16'),
(529, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MKZBbNnTV9s-9Z3PsYK', 0, '2020-10-26 16:17:15', '2020-10-26 16:17:15'),
(530, 'someuserid', '-MKZBbNnTV9s-9Z3PsYK', 0, '2020-10-26 16:17:15', '2020-10-26 16:17:15'),
(531, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MKZBdTV0l6HVvteylMC', 81, '2020-10-26 16:18:20', '2020-10-26 16:18:20'),
(532, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MKZBdTV0l6HVvteylMC', 42, '2020-10-26 16:18:20', '2020-10-26 16:18:20'),
(533, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MKZBru1bSrV2qpEJauX', 130, '2020-10-26 16:19:30', '2020-10-26 16:19:30'),
(534, 'someuserid', '-MKZBru1bSrV2qpEJauX', 73, '2020-10-26 16:19:30', '2020-10-26 16:19:30'),
(535, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MKZC8mhBqVJE8OlamNp', 0, '2020-10-26 16:19:33', '2020-10-26 16:19:33'),
(536, 'someuserid', '-MKZC8mhBqVJE8OlamNp', 0, '2020-10-26 16:19:33', '2020-10-26 16:19:33'),
(537, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MKZCGWVhOsvqFW6Ithe', 0, '2020-10-26 16:20:05', '2020-10-26 16:20:05'),
(538, 'newbotid', '-MKZCGWVhOsvqFW6Ithe', 0, '2020-10-26 16:20:05', '2020-10-26 16:20:05'),
(539, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MKZCLbebGpi8FFCU_I1', 0, '2020-10-26 16:20:26', '2020-10-26 16:20:26'),
(540, 'qsdfgvhbasd', '-MKZCLbebGpi8FFCU_I1', 0, '2020-10-26 16:20:26', '2020-10-26 16:20:26'),
(541, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MKZCMgKR1QfAzJBZ-6h', 94, '2020-10-26 16:21:16', '2020-10-26 16:21:16'),
(542, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MKZCMgKR1QfAzJBZ-6h', 142, '2020-10-26 16:21:16', '2020-10-26 16:21:16'),
(543, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MKZCQVC5LbcX8V0dji6', 40, '2020-10-26 16:22:06', '2020-10-26 16:22:06'),
(544, 'someuserid', '-MKZCQVC5LbcX8V0dji6', 36, '2020-10-26 16:22:06', '2020-10-26 16:22:06'),
(545, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MKiD5lZjFzrdA3yt_mF', 155, '2020-10-28 15:00:51', '2020-10-28 15:00:51'),
(546, 'DegWbqd5P9d91xKao4gQzAIAPkU2', '-MKiD5lZjFzrdA3yt_mF', 119, '2020-10-28 15:00:51', '2020-10-28 15:00:51'),
(547, 'DegWbqd5P9d91xKao4gQzAIAPkU2', 'rewards--MKiD5lZjFzrdA3yt_mF', 119, '2020-10-28 15:01:23', '2020-10-28 15:01:23'),
(548, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MKiDmxHqFWwk_5J8L4d', 140, '2020-10-28 15:03:47', '2020-10-28 15:03:47'),
(549, 'someuserid', '-MKiDmxHqFWwk_5J8L4d', 79, '2020-10-28 15:03:47', '2020-10-28 15:03:47'),
(550, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'rewards--MKiDmxHqFWwk_5J8L4d', 140, '2020-10-28 15:04:16', '2020-10-28 15:04:16'),
(551, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MKzZMpBzE2Fctbs_k7t', 139, '2020-10-31 23:51:26', '2020-10-31 23:51:26'),
(552, 'qsdfgvhbasd', '-MKzZMpBzE2Fctbs_k7t', 44, '2020-10-31 23:51:26', '2020-10-31 23:51:26'),
(553, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'Single-Player1604251666915', 22, '2020-11-02 00:27:47', '2020-11-02 00:27:47'),
(554, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-ML3qXlRGRsqMxSRdgCB', 11, '2020-11-02 00:28:29', '2020-11-02 00:28:29'),
(555, 'newbotid', '-ML3qXlRGRsqMxSRdgCB', 0, '2020-11-02 00:28:29', '2020-11-02 00:28:29'),
(556, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-ML7hQTdHSLMhAALFBiP', 17, '2020-11-02 18:27:07', '2020-11-02 18:27:07'),
(557, 'qsdfgvhbasd', '-ML7hQTdHSLMhAALFBiP', 14, '2020-11-02 18:27:07', '2020-11-02 18:27:07'),
(558, 'KOKBGElZDCRNZOWFoVnaAgu54md2', 'Single-Player1604316558277', 44, '2020-11-02 18:29:19', '2020-11-02 18:29:19'),
(559, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLHOqVZDFpt9Qm6m9lG', 66, '2020-11-04 15:39:14', '2020-11-04 15:39:14'),
(560, 'someuserid', '-MLHOqVZDFpt9Qm6m9lG', 66, '2020-11-04 15:39:14', '2020-11-04 15:39:14'),
(561, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLHQwlHQQ0tcgHWylZO', 71, '2020-11-04 15:47:58', '2020-11-04 15:47:58'),
(562, 'qsdfgvhbasd', '-MLHQwlHQQ0tcgHWylZO', 21, '2020-11-04 15:47:58', '2020-11-04 15:47:58'),
(563, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLIyi8v0wew-mM77WGY', 48, '2020-11-04 22:59:23', '2020-11-04 22:59:23'),
(564, 'someuserid', '-MLIyi8v0wew-mM77WGY', 58, '2020-11-04 22:59:23', '2020-11-04 22:59:23'),
(565, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLIz5H3Xmjay0g4o5ep', 0, '2020-11-04 22:59:55', '2020-11-04 22:59:55'),
(566, 'someuserid', '-MLIz5H3Xmjay0g4o5ep', 0, '2020-11-04 22:59:55', '2020-11-04 22:59:55'),
(567, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLIzBIuAUaer3TkW1dO', 0, '2020-11-04 23:00:24', '2020-11-04 23:00:24'),
(568, 'newbotid', '-MLIzBIuAUaer3TkW1dO', 0, '2020-11-04 23:00:24', '2020-11-04 23:00:24'),
(569, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLIzNT47pnKu3edf3CU', 0, '2020-11-04 23:01:13', '2020-11-04 23:01:13'),
(570, 'newbotid', '-MLIzNT47pnKu3edf3CU', 0, '2020-11-04 23:01:13', '2020-11-04 23:01:13'),
(571, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLJ96MP0AQ0_jcbBogr', 156, '2020-11-04 23:49:00', '2020-11-04 23:49:00'),
(572, 'qsdfgvhbasd', '-MLJ96MP0AQ0_jcbBogr', 115, '2020-11-04 23:49:00', '2020-11-04 23:49:00'),
(573, 'YS1lWZDThwbaKkufDgQDvNRZHvx2', '-MLMofkhDjK4l1roVYsE', 0, '2020-11-05 16:54:40', '2020-11-05 16:54:40'),
(574, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLMofkhDjK4l1roVYsE', 0, '2020-11-05 16:54:40', '2020-11-05 16:54:40'),
(575, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLMofcMpWhgH305VXGi', 0, '2020-11-05 16:54:41', '2020-11-05 16:54:41'),
(576, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLMofcMpWhgH305VXGi', 0, '2020-11-05 16:54:41', '2020-11-05 16:54:41'),
(577, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLMokj9rIKj8ybVARwW', 0, '2020-11-05 16:55:04', '2020-11-05 16:55:04'),
(578, 'someuserid', '-MLMokj9rIKj8ybVARwW', 44, '2020-11-05 16:55:04', '2020-11-05 16:55:04'),
(579, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLMvLGFqhscwP03IkvJ', 0, '2020-11-05 17:23:49', '2020-11-05 17:23:49'),
(580, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLMvLGFqhscwP03IkvJ', 0, '2020-11-05 17:23:49', '2020-11-05 17:23:49'),
(581, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLMvw4woOdaJ9YziNNR', 19, '2020-11-05 17:26:15', '2020-11-05 17:26:15'),
(582, 'someuserid', '-MLMvw4woOdaJ9YziNNR', 49, '2020-11-05 17:26:15', '2020-11-05 17:26:15'),
(583, 'YS1lWZDThwbaKkufDgQDvNRZHvx2', '-MLMvy0NZv-0DM9Wdv3B', 23, '2020-11-05 17:26:32', '2020-11-05 17:26:32'),
(584, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLMvy0NZv-0DM9Wdv3B', 12, '2020-11-05 17:26:32', '2020-11-05 17:26:32'),
(585, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLMwT6VwqTbizxYdoK3', 0, '2020-11-05 17:28:42', '2020-11-05 17:28:42'),
(586, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLMwT6VwqTbizxYdoK3', 72, '2020-11-05 17:28:42', '2020-11-05 17:28:42'),
(587, 'YS1lWZDThwbaKkufDgQDvNRZHvx2', '-MLMwY4Cow8VRBs20Xvg', 22, '2020-11-05 17:29:04', '2020-11-05 17:29:04'),
(588, 'qsdfgvhbasd', '-MLMwY4Cow8VRBs20Xvg', 76, '2020-11-05 17:29:04', '2020-11-05 17:29:04'),
(589, 'YS1lWZDThwbaKkufDgQDvNRZHvx2', '-MLMxnDx4YL4mtYVJOOi', 124, '2020-11-05 17:33:34', '2020-11-05 17:33:34'),
(590, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLMxnDx4YL4mtYVJOOi', 127, '2020-11-05 17:33:34', '2020-11-05 17:33:34'),
(591, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLMxrn4L6kdhjkGSKWY', 12, '2020-11-05 17:52:10', '2020-11-05 17:52:10'),
(592, 'qsdfgvhbasd', '-MLMxrn4L6kdhjkGSKWY', 42, '2020-11-05 17:52:10', '2020-11-05 17:52:10'),
(593, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLN1RNcFv4r3iCsaKlF', 64, '2020-11-05 17:54:14', '2020-11-05 17:54:14'),
(594, 'YS1lWZDThwbaKkufDgQDvNRZHvx2', '-MLN1RNcFv4r3iCsaKlF', 56, '2020-11-05 17:54:14', '2020-11-05 17:54:14'),
(595, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLN1ReUhqOHwgr-PDqY', 22, '2020-11-05 17:55:32', '2020-11-05 17:55:32'),
(596, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLN1ReUhqOHwgr-PDqY', 0, '2020-11-05 17:55:32', '2020-11-05 17:55:32'),
(597, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLO_g01oV-Zff6Wfkb0', 0, '2020-11-06 01:07:31', '2020-11-06 01:07:31'),
(598, 'someuserid', '-MLO_g01oV-Zff6Wfkb0', 38, '2020-11-06 01:07:31', '2020-11-06 01:07:31'),
(599, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLRzgHCB7WGRJmSYhHY', 0, '2020-11-06 17:00:53', '2020-11-06 17:00:53'),
(600, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLRzgHCB7WGRJmSYhHY', 0, '2020-11-06 17:00:53', '2020-11-06 17:00:53'),
(601, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLS1_VxXwpKNQrVSwFt', 0, '2020-11-06 17:11:44', '2020-11-06 17:11:44'),
(602, 'someuserid', '-MLS1_VxXwpKNQrVSwFt', 0, '2020-11-06 17:11:44', '2020-11-06 17:11:44'),
(603, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLS20xE9JgOfrK4SuPr', 108, '2020-11-06 17:14:49', '2020-11-06 17:14:49'),
(604, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLS20xE9JgOfrK4SuPr', 98, '2020-11-06 17:14:49', '2020-11-06 17:14:49'),
(605, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLS2VhwIvxB1YM1gHCY', 85, '2020-11-06 17:17:33', '2020-11-06 17:17:33'),
(606, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLS2VhwIvxB1YM1gHCY', 0, '2020-11-06 17:17:33', '2020-11-06 17:17:33'),
(607, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLS2ZdZTbM7-oT6aqy3', 61, '2020-11-06 17:17:51', '2020-11-06 17:17:51'),
(608, 'qsdfgvhbasd', '-MLS2ZdZTbM7-oT6aqy3', 56, '2020-11-06 17:17:51', '2020-11-06 17:17:51'),
(609, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLS3AJWInSA_YQccV0X', 0, '2020-11-06 17:20:28', '2020-11-06 17:20:28'),
(610, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLS3AJWInSA_YQccV0X', 23, '2020-11-06 17:20:28', '2020-11-06 17:20:28'),
(611, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLS3E6L3gLHuopWANT9', 0, '2020-11-06 17:21:01', '2020-11-06 17:21:01'),
(612, 'newbotid', '-MLS3E6L3gLHuopWANT9', 11, '2020-11-06 17:21:01', '2020-11-06 17:21:01'),
(613, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-MLYmWbjYuWXo2TOujT5', 24, '2020-11-08 00:38:58', '2020-11-08 00:38:58'),
(614, 'qsdfgvhbasd', '-MLYmWbjYuWXo2TOujT5', 0, '2020-11-08 00:38:58', '2020-11-08 00:38:58'),
(615, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-ML_leDsLS3Gc7aDsu0d', 134, '2020-11-08 09:55:36', '2020-11-08 09:55:36'),
(616, 'qsdfgvhbasd', '-ML_leDsLS3Gc7aDsu0d', 67, '2020-11-08 09:55:36', '2020-11-08 09:55:36'),
(617, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-ML_yLlJAUu8ZyPzdizx', 0, '2020-11-08 10:49:54', '2020-11-08 10:49:54'),
(618, 'newbotid', '-ML_yLlJAUu8ZyPzdizx', 0, '2020-11-08 10:49:54', '2020-11-08 10:49:54'),
(619, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-ML_yS4rOIAlTEGdNslG', 21, '2020-11-08 10:50:20', '2020-11-08 10:50:20'),
(620, 'newbotid', '-ML_yS4rOIAlTEGdNslG', 24, '2020-11-08 10:50:20', '2020-11-08 10:50:20'),
(621, 'pHXhIuGi7eabWswx0NKCHBKFpNP2', '-ML_y_HvAszGU1KejTQ1', 0, '2020-11-08 10:50:52', '2020-11-08 10:50:52'),
(622, 'newbotid', '-ML_y_HvAszGU1KejTQ1', 0, '2020-11-08 10:50:52', '2020-11-08 10:50:52'),
(623, 'YS1lWZDThwbaKkufDgQDvNRZHvx2', '-MLbH_-XD6UrmTBy3bBm', 0, '2020-11-08 16:59:35', '2020-11-08 16:59:35'),
(624, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLbH_-XD6UrmTBy3bBm', 0, '2020-11-08 16:59:35', '2020-11-08 16:59:35'),
(625, 'aYtQuJlK45gk8wUhq2tiKGMIQga2', '-MLRzgSFbPfhVJi573D_', 0, '2020-11-08 16:59:36', '2020-11-08 16:59:36'),
(626, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLRzgSFbPfhVJi573D_', 0, '2020-11-08 16:59:36', '2020-11-08 16:59:36'),
(627, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLbH_8XVERDBxc2r9PN', 0, '2020-11-08 16:59:38', '2020-11-08 16:59:38'),
(628, 'YS1lWZDThwbaKkufDgQDvNRZHvx2', '-MLbH_8XVERDBxc2r9PN', 0, '2020-11-08 16:59:38', '2020-11-08 16:59:38'),
(629, 'KOKBGElZDCRNZOWFoVnaAgu54md2', '-MLfqaa8fKIx2JQdeg7R', 136, '2020-11-09 14:15:04', '2020-11-09 14:15:04'),
(630, 'newbotid', '-MLfqaa8fKIx2JQdeg7R', 34, '2020-11-09 14:15:04', '2020-11-09 14:15:04'),
(631, 'fMTGpmQQrNgFzx29xvzYWn9tgCd2', 'Single-Player1605178802850', 72, '2020-11-12 18:00:02', '2020-11-12 18:00:02'),
(632, 'fMTGpmQQrNgFzx29xvzYWn9tgCd2', 'Single-Player1605178947945', 24, '2020-11-12 18:02:27', '2020-11-12 18:02:27'),
(633, 'PuaUScc0iLMG022cNdebw6ACOC62', '-MLxtQmfP7tR9gWhVvIq', 69, '2020-11-13 02:20:47', '2020-11-13 02:20:47'),
(634, 'newbotid', '-MLxtQmfP7tR9gWhVvIq', 22, '2020-11-13 02:20:47', '2020-11-13 02:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `topic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_played_times` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic_name`, `topic_img_url`, `topic_played_times`, `created_at`, `updated_at`) VALUES
(0, 'Searching in All', 'http', 114, '2020-10-11 11:48:02', '2020-11-13 02:20:47'),
(1, 'Sports', 'https://firebasestorage.googleapis.com/v0/b/quizapp-4da73.appspot.com/o/img_dummy.png?alt=media&token=0992fc1f-f371-49e1-b679-7e5abd671790', 143, '2020-08-08 01:00:15', '2020-11-12 18:00:02'),
(2, 'Plant & Forest', 'https://firebasestorage.googleapis.com/v0/b/quizapp-4da73.appspot.com/o/dummy_img_2.png?alt=media&token=9f57b598-3a37-460c-ae3f-7bf3c6d03d94', 9, '2020-08-08 01:44:55', '2020-11-12 18:02:27'),
(3, 'Solar System', 'https://firebasestorage.googleapis.com/v0/b/quizapp-4da73.appspot.com/o/dummy_img_3.png?alt=media&token=66981cab-8e86-425e-8dc2-ae6520b8b8c3', 2, '2020-08-08 01:45:29', '2020-10-06 09:14:50'),
(4, 'test', '', 0, '2020-09-27 16:22:36', '2020-09-27 16:22:36'),
(5, 'dsgdfsgd', 'http://glacademy.in/quizapp/public/images/1601198844.png', 0, '2020-09-27 16:27:25', '2020-09-27 16:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `topic_questions`
--

CREATE TABLE `topic_questions` (
  `tq_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topic_questions`
--

INSERT INTO `topic_questions` (`tq_id`, `category_id`, `question`, `answer`, `o1`, `o2`, `o3`, `o4`, `created_at`, `updated_at`) VALUES
(15, 1, 'Grand Central Terminal, Park Avenue, New York is the world\'s', '1', 'Largest railway station', 'Highest railway station', 'Longest railway station', 'None of the above', '2020-08-13 16:48:17', '2020-08-13 16:48:17'),
(16, 1, 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', '2', 'Asia', 'Africa', 'Europe', 'Australia', '2020-08-13 16:49:52', '2020-08-13 16:49:52'),
(17, 1, 'Garampani sanctuary is located at', '2', 'Junagarh, Gujarat', 'Diphu, Assam', 'Kohima, Nagaland', 'Gangtok, Sikkim', '2020-08-13 16:50:56', '2020-08-13 16:50:56'),
(18, 1, 'Hitler party which came into power in 1933 is known as', '2', 'Labour Party', 'Nazi Party', 'Ku-Klux-Klan', 'Democratic Party', '2020-08-13 16:51:46', '2020-08-13 16:51:46'),
(19, 1, 'Fastest shorthand writer was', '1', 'Dr. G. D. Bist', 'J.R.D. Tata', 'J.M. Tagore', 'Khudada Khan', '2020-08-13 16:52:35', '2020-08-13 16:52:35'),
(20, 1, 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in', '1', '1967', '1968', '1958', '1922', '2020-08-13 16:53:20', '2020-08-13 16:53:20'),
(21, 1, 'Golf player Vijay Singh belongs to which country?', '2', 'USA', 'Fiji', 'India', 'UK', '2020-08-13 17:00:38', '2020-08-13 17:00:38'),
(22, 1, 'First Afghan War took place in', '1', '1839', '1843', '1833', '1848', '2020-08-13 17:02:02', '2020-08-13 17:02:02'),
(23, 1, 'First China War was fought between', '1', 'China and Britain', 'China and France', 'China and Egypt', 'China and Greek', '2020-08-13 17:03:55', '2020-08-13 17:03:55'),
(24, 1, 'Federation Cup, World Cup, Allywyn International Trophy and Challenge Cup are awarded to winners of', '2', 'Tennis', 'Volleyball', 'Basketball', 'Cricket', '2020-08-13 17:04:38', '2020-08-13 17:04:38'),
(25, 2, 'ryhrt', '1', 'hgfj', 'hgj', 'hgkhj', 'khjk', '2020-10-10 23:01:01', '2020-10-10 23:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firebase_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_searching` int(11) NOT NULL DEFAULT '0',
  `user_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search_time` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lst_dc_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_dc_finished` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_search_category` bigint(20) DEFAULT NULL,
  `fmc_token` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `firebase_user_id`, `is_searching`, `user_img`, `email`, `email_verified_at`, `password`, `search_time`, `remember_token`, `created_at`, `updated_at`, `lst_dc_date`, `last_dc_finished`, `last_search_category`, `fmc_token`) VALUES
(1, 'Aryan Raj', 'aaaaaaaaaa', 0, NULL, 'aarsdfyasdfsdfndictssssssioy@gmail.com', NULL, '$2y$10$tkqPmEHkj8h1aRXdExxPCOPb9A85BMrA/B5c8ia53MF3ADAKKrjRa', NULL, NULL, '2020-08-08 08:00:27', '2020-08-08 08:00:27', '', '', NULL, NULL),
(2, 'Aryan', 'NkkSHP3ejlg443eJ4tx3DtTJ98G3', 0, NULL, 'sumanrajdelhi@gmail.com', NULL, '$2y$10$muMDDnxqUOIoVhp3h2WKW.2vqWyswXiAmYNjhCaP8PLtMfO2JIlim', NULL, NULL, '2020-08-08 08:00:56', '2020-08-13 03:51:51', '2020-08-12', '1,1,1', NULL, NULL),
(3, 'Tech Rover', 'zXbDVQjVKDXKYgdMtMZxL2pFEcy1', 0, 'https://lh3.googleusercontent.com/a-/AOh14Ggp9mZkMRHkUIsNFRblYikwS7jTH3Mir9uJnzaX=s96-c', '10tech.official@gmail.com', NULL, '$2y$10$Y64J8n0lp0Ey8tgEUs9GBOCbdtPmPV3o06yA42XpyvE0Fl8vWZrGi', NULL, NULL, '2020-08-08 08:32:19', '2020-08-08 08:32:19', '', '', NULL, NULL),
(4, 'Raj Aryan', 'pHXhIuGi7eabWswx0NKCHBKFpNP2', 0, 'https://lh3.googleusercontent.com/a-/AOh14GgOq-FB-ZmX4xY-GwkRJSSVEquI_dSXT7jB1fJdgg=s96-c', 'aaryandictionary@gmail.com', NULL, '$2y$10$TJ6hokpC0996AwMRvVeJKeLZuvuP3EZBZtIVGpRPFe7tkJr3/r7Rq', NULL, NULL, '2020-08-08 09:57:51', '2020-11-16 22:34:31', '2020-10-10', '11,1,', NULL, 'fiQmLeSg5qM:APA91bEGcpXhbkn0SJDPRRYLoHUWDJKlWxoqQPfIbwMarFLQwPua0uipuPFx2FxL0ubAVQ44MDE1ILgDPxu6rE7SS_3DoCiwQFbcHS-xkKaKD9gd8E7R9Wnmuuf4A754dnA7gIeQApUo'),
(5, 'selva kumar', 'KOKBGElZDCRNZOWFoVnaAgu54md2', 0, 'https://lh3.googleusercontent.com/a-/AOh14GimPsuKjNc7zQsayjWtxtVSQ24Hr_VllWmCZZKm-g=s96-c', 'selvakmr160@gmail.com', NULL, '$2y$10$.Y22LaylnNi6iKgdOszLh.11HXbHmZvC1m5fC3KXtDCrgN4mQ5Lym', '2020-11-09 14:13:21', NULL, '2020-08-08 10:57:05', '2020-11-17 00:51:32', '2020-10-03', '2,3,3,4,', NULL, 'eSfbCjC8EzA:APA91bFrgJFjDTlC_bkzgmGOcyDLqTQf5rLeUpJ6pPMTurNA-nOW_Uv2Ni4c0bED5pWYYsQC86vt-4pOo7tvPdoaNBs3ZoBURAOHlAarMkKBPXRQFQea-k4tMn3i1ZMlXFTjthjb1YHN'),
(6, 'Aryan', 'dsfgdfgs', 0, NULL, 'aaryan@gmail.com', NULL, '$2y$10$kbAIrEQ8g.SUavPhmm0uMedQ0FFWNngfVhryAbAGu2Ra//Rrp7PW2', NULL, NULL, '2020-08-11 23:38:23', '2020-08-11 23:38:23', '', '', NULL, NULL),
(7, 'VIJI KANI', 'aYtQuJlK45gk8wUhq2tiKGMIQga2', 0, 'https://lh4.googleusercontent.com/-dulARQ6s-aI/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmmB2E1AGlYWTaDjMskFzKEtukiMg/s96-c/photo.jpg', 'viji29jivi@gmail.com', NULL, '$2y$10$9.32wfIZSSoMqAhaItpjeO9DW.1NJyexTjQ.80uBn.gIf4hXe3j9S', '2020-11-08 17:08:08', NULL, '2020-08-13 09:16:00', '2020-11-11 22:32:03', '2020-10-05', ',', 0, 'fpKzPRax4lY:APA91bFALmdW4lW-nyI6GA1g6_gL6elCCSzPcORVUFto5w0Rjn1s9APiOLH3sjIsUpDghK5TVnKTrgmnodqEUC9Og-1L2ro0u3pxFsZaDZu-3-rIJFRu0BtgPShIgem8dkwxTHgxk1HG'),
(8, 'vino babu', '4OPX6jadszPz0lc1idObcrm4wbs1', 0, 'https://lh3.googleusercontent.com/-8B-VWKroR-o/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnV2lCYOw_RGC8_4e1r_tEMIBv_nA/s96-c/photo.jpg', 'vinobabu.t@gmail.com', NULL, '$2y$10$fGll5rfppli/ajJvysdfyOm/dpnGI2VyGXvCjIZCdTiGpvh/1d6iu', NULL, NULL, '2020-08-13 14:46:07', '2020-08-13 14:46:49', '', '', NULL, NULL),
(9, 'Anita Kumari', 'Ft2MHCEnbwZHbSDJJKtiKcDxFxk1', 0, 'https://lh3.googleusercontent.com/-ZvsY1GtXFdQ/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckAk7T7qX2h3Ys1iD_soXIcTHopSg/s96-c/photo.jpg', 'kumarianita0852@gmail.com', NULL, '$2y$10$Bq6pxFac9J6uZxVP7Q1jROJoyA31Og/q6Eu43Pv447ZZTyA5QHaLm', NULL, NULL, '2020-08-31 00:20:51', '2020-10-01 14:21:46', '', '', NULL, NULL),
(10, 'Corey Grant', 'dojzuBsRcbfAMTJii3XoR8WRKN03', 1, 'https://lh3.googleusercontent.com/-79dXNhGmL88/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmX7GCSROdoHM2pRNYj8GhTwguI4w/s96-c/photo.jpg', 'coreygrant.41610@gmail.com', NULL, '$2y$10$pDDzRpeBkjkgZjSeNU/52.3GZo7QNV0KCPOAt0hzgw.V/0gcsFCb.', '2020-09-11 13:02:39', NULL, '2020-09-11 13:01:31', '2020-09-11 13:02:39', '', '', NULL, NULL),
(11, 'Chester Morton', 'X1WaOqDl7KO1WsbBr5CGeMPuksx2', 1, 'https://lh6.googleusercontent.com/-VgQFaProciI/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucks37yL64Q5tjkaq_Eip7AvILfO-A/s96-c/photo.jpg', 'chestermorton.80128@gmail.com', NULL, '$2y$10$gbILuf/Px2fxLMXbIFLfxuAIiszp29c2TiZgTvKFdZInKiwG3WWs.', '2020-10-01 14:41:40', NULL, '2020-10-01 14:40:53', '2020-10-01 14:41:40', '', '', NULL, NULL),
(12, 'Abhimanyu Tiwari', 'PuaUScc0iLMG022cNdebw6ACOC62', 0, 'https://lh3.googleusercontent.com/a-/AOh14GhY28F1-lbnp5Lzr3LLYgdok_W-kOWgccxWriNj=s96-c', 'tiwariabhimanyu001@gmail.com', NULL, '$2y$10$sF2/iOBSXeXYim05KW/ReO6bvAeE51xaIDJuCKeQE4IhyGBIixfqO', '2020-11-13 02:18:53', NULL, '2020-10-02 04:32:10', '2020-11-13 02:19:08', '', '', NULL, 'cqGwWZ6kQRI:APA91bGiALPp4-E5nFPf7lDvAy6g8UFo7tm92frVp-7uV5gcDRRl3X9Ncm-fNXP6888bC1vQpEni3kI4UcRTUsr9fUyZOIwDwXkeqihC3Yz-LVxe01JN2ERZ26ncK93WPfnkRHuEnM9p'),
(13, 'Ebenezer Chellain', 'NGr7TfytHzblIWrkIp3drN0OCBO2', 0, 'https://lh4.googleusercontent.com/-fTnNHjwPERw/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuck5K-edIGaKEuOEMTGN4v7MODSN2g/s96-c/photo.jpg', 'ebenezer.chellaiyan@gmail.com', NULL, '$2y$10$XiG5ZFiSztZzYwHhvRHajebYD/N690hH6/GAIGZwrhn8gV9Rs7uYq', NULL, NULL, '2020-10-06 20:33:13', '2020-10-06 20:41:44', '', '', NULL, NULL),
(14, 'Candice Ford', 'JzoPhKAantOVHR8YXJiJDByBTqL2', 1, 'https://lh3.googleusercontent.com/-e9tjksqqiz0/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclehFAL85eytKuC7rSpL2JIzEkIog/s96-c/photo.jpg', 'candiceford.63187@gmail.com', NULL, '$2y$10$B2.UMFrjH7FHqEA29sZE4uWoX2uWlJGWDRds9w94mHN/SEvWylovm', '2020-10-12 17:54:29', NULL, '2020-10-12 17:51:27', '2020-10-12 17:54:29', '', '', NULL, NULL),
(15, 'Monish Sindhya', 'BlhCzdRdRwRNmZpjxIA41Di6N0K3', 1, 'https://lh3.googleusercontent.com/a-/AOh14Gg4y078twMZQVzECqIrf01W-J_TOHhOcU7tHavUNg=s96-c', 'msindya5@gmail.com', NULL, '$2y$10$hlAU7qg9ZIfnPimTDYB3xO2GfapSoHgheUwEmReCeaA7nr9kiBWdm', '2020-10-26 16:12:26', NULL, '2020-10-26 16:10:47', '2020-10-26 16:12:26', '', '', NULL, NULL),
(16, 'Godwin Lijo', 'DegWbqd5P9d91xKao4gQzAIAPkU2', 0, 'https://lh3.googleusercontent.com/a-/AOh14GhAsQ5kqaT71qWzCCggQoQlZykPd8EmXr9f3tmkfw=s96-c', 'godgodwin22god.jg@gmail.com', NULL, '$2y$10$UGZVS8E5UW650.4jjWm/y.LLgq8fackHJcxONAEzkUY2TSLw7L6Dy', NULL, NULL, '2020-10-28 14:59:41', '2020-10-28 14:59:50', '', '', NULL, NULL),
(17, 'Jasphin Shanil', 'YS1lWZDThwbaKkufDgQDvNRZHvx2', 1, 'https://lh3.googleusercontent.com/-lSyVwNyTbnw/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckbcDh_fCrA0x0MR05O8w1Ikg1NqA/s96-c/photo.jpg', 'jasphinshanil321@gmail.com', NULL, '$2y$10$kTk9Ta1uSIb3P97.VhHEdubUqflw.3ThoXGdJwGcU1a03HHrSPDHu', '2020-11-08 17:08:11', NULL, '2020-11-05 16:50:48', '2020-11-08 17:08:11', '', '', 0, 'd9NYC0t_UfI:APA91bEM1Gmqt1jTiU59Tv4uBUie96C_CcI6rsvOLT_BoaGLyn-XSoVlWOGxBrRz6By6-qe2fYL_Jdk0zRljyZYUU3TPH95Ap0aJy6i9ikDFY2oTVPPZRNJldpEYsrDdsL23NVOb9Sll'),
(18, 'hrithik maheshwari', 'fMTGpmQQrNgFzx29xvzYWn9tgCd2', 0, 'https://lh3.googleusercontent.com/a-/AOh14GhRDBTvRBCYrWNd168jlMQU36Z3Gs1Fae33qlMi=s96-c', 'hrithikm942@gmail.com', NULL, '$2y$10$XuZxySDgIw64h8tm7YVEmOxlEDCUyjlJ37Qa.4jMu48oYUtrC1RXq', NULL, NULL, '2020-11-12 17:59:18', '2020-11-12 17:59:18', '', '', NULL, 'fS1DeeHj6so:APA91bGB8-g8VgGZnouL95qst1VSKdSlTTFM-gDIcXL7moCLIlVl3jcSfQAjMT2TMuUcBa5RUiZgtkJI6NKF5_I0ZvC6L6H4xuaDLUTdtH1ePUfwyaLhEFEFriITy1_AX2vJM0gDa4az');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_challenges`
--
ALTER TABLE `daily_challenges`
  ADD PRIMARY KEY (`dc_id`),
  ADD UNIQUE KEY `daily_challenges_dc_id_unique` (`dc_id`);

--
-- Indexes for table `dc_questions`
--
ALTER TABLE `dc_questions`
  ADD PRIMARY KEY (`dcq_id`);

--
-- Indexes for table `dummy_users`
--
ALTER TABLE `dummy_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_topics`
--
ALTER TABLE `my_topics`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `question_combination`
--
ALTER TABLE `question_combination`
  ADD PRIMARY KEY (`qc_id`);

--
-- Indexes for table `quiz_response`
--
ALTER TABLE `quiz_response`
  ADD PRIMARY KEY (`qr_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topics_topic_id_unique` (`topic_id`);

--
-- Indexes for table `topic_questions`
--
ALTER TABLE `topic_questions`
  ADD PRIMARY KEY (`tq_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daily_challenges`
--
ALTER TABLE `daily_challenges`
  MODIFY `dc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dc_questions`
--
ALTER TABLE `dc_questions`
  MODIFY `dcq_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dummy_users`
--
ALTER TABLE `dummy_users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `my_topics`
--
ALTER TABLE `my_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question_combination`
--
ALTER TABLE `question_combination`
  MODIFY `qc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `quiz_response`
--
ALTER TABLE `quiz_response`
  MODIFY `qr_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `topic_questions`
--
ALTER TABLE `topic_questions`
  MODIFY `tq_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `skilled_mate`
--
CREATE DATABASE IF NOT EXISTS `skilled_mate` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `skilled_mate`;

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `college_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `college_name`, `college_code`, `college_lat`, `college_lng`, `college_address`, `created_at`, `updated_at`) VALUES
(1, 'Galgotia College Of Engineering and Techonology', '097', '1', '1', 'Greater Noida', NULL, NULL),
(2, 'KIET College', '12', '1', '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conv_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conv_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conv_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conv_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_user`
--

CREATE TABLE `conversation_user` (
  `user_id` bigint(20) NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `start_at` bigint(20) NOT NULL DEFAULT '0',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `user_id`, `course_title`, `course_details`, `course_duration`, `course_fee`, `course_image`, `active`, `created_at`, `updated_at`) VALUES
(3, 3, 'Android development course', 'The course is free', '1 week', '0', 'http://glacademy.in/skilledmate/public/CourseImages/1604389641.jpg', 1, '2020-11-03 14:47:21', '2020-11-03 14:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `course_content`
--

CREATE TABLE `course_content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `event_organiser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_privacy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PUBLIC',
  `active` int(11) NOT NULL DEFAULT '1',
  `event_deadline` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_details`, `user_id`, `team_id`, `event_organiser`, `event_time`, `event_title`, `event_image`, `event_privacy`, `active`, `event_deadline`, `created_at`, `updated_at`) VALUES
(2, 'Attempt the quiz and get listed to our social profiles', 3, 8, 'GCET', '2020-10-03 12:00:00', 'Mirzapur Quiz', NULL, 'PUBLIC', 1, '2020-10-03 10:00:00', '2020-11-03 14:48:28', '2020-11-03 14:48:28'),
(3, 'Join us at 5 pm', 3, 8, 'Extreme Club', '2020-10-03 13:30:00', 'Singing Competition', NULL, 'PUBLIC', 1, '2020-10-03 10:30:00', '2020-11-03 14:59:06', '2020-11-03 14:59:06'),
(4, 'Come and join the live event', 4, 9, 'Aryan', '2020-10-03 10:41:00', 'Tiwari will Sing', NULL, 'PUBLIC', 1, '2020-10-03 12:41:00', '2020-11-03 17:11:37', '2020-11-03 17:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `event_participants`
--

CREATE TABLE `event_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_participants`
--

INSERT INTO `event_participants` (`id`, `event_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 2, 4, '2020-11-05 14:01:45', '2020-11-05 14:01:45'),
(3, 4, 4, '2020-11-05 14:04:43', '2020-11-05 14:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `expertises`
--

CREATE TABLE `expertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `expertise_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expertise_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expertise_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_free` int(11) NOT NULL DEFAULT '1',
  `rate` double NOT NULL,
  `rate_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `text_msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'TEXT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_09_05_200521_create_posts_table', 1),
(10, '2020_09_05_200543_create_projects_table', 1),
(11, '2020_09_05_201053_create_teams_table', 1),
(12, '2020_09_05_201125_create_expertises_table', 1),
(13, '2020_09_05_201150_create_colleges_table', 1),
(14, '2020_09_05_201513_create_post_likes_table', 1),
(15, '2020_09_05_201534_create_post_comments_table', 1),
(16, '2020_09_05_202253_create_friends_table', 1),
(17, '2020_09_05_202709_create_project_positions_table', 1),
(18, '2020_09_19_191618_create_post_images_table', 1),
(19, '2020_09_19_192759_create_team_user_table', 1),
(20, '2020_09_19_193906_create_team_images_table', 1),
(21, '2020_10_25_172855_create_events_table', 1),
(22, '2020_10_25_172926_create_event_participants_table', 1),
(23, '2020_10_25_191649_create_courses_table', 1),
(24, '2020_10_25_191711_create_course_content_table', 1),
(25, '2020_10_26_054944_create_tags_table', 1),
(26, '2020_10_26_055101_create_taggables_table', 1),
(27, '2020_11_01_031755_create_conversations_table', 1),
(28, '2020_11_01_032820_create_conversation_user_table', 1),
(29, '2020_11_01_104146_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `team_id` int(11) NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_type`, `event_id`, `team_id`, `post_image`, `post_content`, `created_at`, `updated_at`) VALUES
(7, 3, 'USERPOST', -1, -1, 'http://glacademy.in/skilledmate/public/PostImages/1604389487.jpg', 'This is a test post from Anjali', '2020-11-03 14:44:47', '2020-11-03 14:44:47'),
(8, 3, 'TEAMPOST', -1, 8, NULL, 'This is team post', '2020-11-03 14:46:15', '2020-11-03 14:46:15'),
(9, 3, 'TEAMEVENT', 2, 8, NULL, 'Attempt the quiz and get listed to our social profiles', '2020-11-03 14:48:28', '2020-11-03 14:48:28'),
(10, 3, 'USERPOST', -1, -1, NULL, 'This is a test post', '2020-11-03 14:54:20', '2020-11-03 14:54:20'),
(11, 3, 'TEAMEVENT', 3, 8, NULL, 'Join us at 5 pm', '2020-11-03 14:59:06', '2020-11-03 14:59:06'),
(12, 4, 'TEAMEVENT', 4, 9, NULL, 'Come and join the live event', '2020-11-03 17:11:37', '2020-11-03 17:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `post_comment_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `commenter_id` bigint(20) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`post_comment_id`, `post_id`, `commenter_id`, `comment`, `created_at`, `updated_at`) VALUES
(8, 7, 3, 'Nice', '2020-11-03 14:44:59', '2020-11-03 14:44:59'),
(9, 8, 3, 'comment in team post', '2020-11-03 14:46:46', '2020-11-03 14:46:46'),
(10, 9, 3, 'this is test comment', '2020-11-03 14:53:48', '2020-11-03 14:53:48'),
(11, 10, 3, 'test comment', '2020-11-03 14:54:35', '2020-11-03 14:54:35'),
(12, 7, 4, 'Tiwari Chadarmod hai', '2020-11-03 17:09:39', '2020-11-03 17:09:39'),
(13, 12, 4, 'hey', '2020-11-05 01:50:26', '2020-11-05 01:50:26'),
(14, 7, 4, '.', '2020-11-05 14:49:38', '2020-11-05 14:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `post_like_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `liker_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_like_id`, `post_id`, `liker_id`, `created_at`, `updated_at`) VALUES
(18, 8, 3, '2020-11-03 14:46:38', '2020-11-03 14:46:38'),
(19, 9, 3, '2020-11-03 14:48:38', '2020-11-03 14:48:38'),
(20, 7, 3, '2020-11-03 14:53:25', '2020-11-03 14:53:25'),
(21, 10, 3, '2020-11-03 14:54:25', '2020-11-03 14:54:25'),
(22, 11, 3, '2020-11-03 16:48:43', '2020-11-03 16:48:43'),
(23, 7, 4, '2020-11-03 16:51:00', '2020-11-03 16:51:00'),
(25, 10, 4, '2020-11-03 17:03:22', '2020-11-03 17:03:22'),
(26, 12, 4, '2020-11-05 01:51:14', '2020-11-05 01:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `project_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_positions`
--

CREATE TABLE `project_positions` (
  `project_position_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `position_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`) VALUES
(5, 1, 'App\\User'),
(1, 1, 'App\\User'),
(1, 1, 'App\\Models\\Post'),
(2, 1, 'App\\Models\\Post'),
(3, 1, 'App\\Models\\Post'),
(4, 1, 'App\\Models\\Post'),
(1, 1, 'App\\Models\\Course'),
(2, 1, 'App\\Models\\Course'),
(3, 1, 'App\\Models\\Course'),
(4, 1, 'App\\Models\\Course'),
(1, 2, 'App\\Models\\Post'),
(2, 2, 'App\\Models\\Post'),
(3, 2, 'App\\Models\\Post'),
(4, 2, 'App\\Models\\Post'),
(1, 2, 'App\\Models\\Course'),
(2, 2, 'App\\Models\\Course'),
(3, 2, 'App\\Models\\Course'),
(4, 2, 'App\\Models\\Course'),
(1, 5, 'App\\Models\\Team'),
(2, 5, 'App\\Models\\Team'),
(3, 5, 'App\\Models\\Team'),
(1, 2, 'App\\User'),
(5, 2, 'App\\User'),
(3, 2, 'App\\User'),
(4, 2, 'App\\User'),
(2, 2, 'App\\User'),
(1, 4, 'App\\Models\\Post'),
(5, 4, 'App\\Models\\Post'),
(3, 4, 'App\\Models\\Post'),
(4, 4, 'App\\Models\\Post'),
(3, 5, 'App\\Models\\Post'),
(5, 5, 'App\\Models\\Post'),
(2, 5, 'App\\Models\\Post'),
(1, 5, 'App\\Models\\Post'),
(4, 5, 'App\\Models\\Post'),
(1, 6, 'App\\Models\\Team'),
(2, 6, 'App\\Models\\Team'),
(4, 6, 'App\\Models\\Team'),
(3, 6, 'App\\Models\\Team'),
(5, 6, 'App\\Models\\Team'),
(3, 7, 'App\\Models\\Team'),
(2, 7, 'App\\Models\\Team'),
(4, 7, 'App\\Models\\Team'),
(1, 6, 'App\\Models\\Post'),
(3, 6, 'App\\Models\\Post'),
(4, 6, 'App\\Models\\Post'),
(2, 6, 'App\\Models\\Post'),
(5, 6, 'App\\Models\\Post'),
(3, 3, 'App\\User'),
(1, 3, 'App\\User'),
(6, 3, 'App\\User'),
(7, 3, 'App\\User'),
(8, 3, 'App\\User'),
(3, 7, 'App\\Models\\Post'),
(5, 7, 'App\\Models\\Post'),
(6, 7, 'App\\Models\\Post'),
(7, 7, 'App\\Models\\Post'),
(1, 7, 'App\\Models\\Post'),
(4, 7, 'App\\Models\\Post'),
(1, 8, 'App\\Models\\Team'),
(3, 8, 'App\\Models\\Team'),
(5, 8, 'App\\Models\\Team'),
(6, 8, 'App\\Models\\Team'),
(7, 8, 'App\\Models\\Team'),
(4, 8, 'App\\Models\\Team'),
(3, 8, 'App\\Models\\Post'),
(5, 8, 'App\\Models\\Post'),
(6, 8, 'App\\Models\\Post'),
(7, 8, 'App\\Models\\Post'),
(3, 3, 'App\\Models\\Course'),
(1, 3, 'App\\Models\\Course'),
(1, 4, 'App\\User'),
(3, 4, 'App\\User'),
(5, 4, 'App\\User'),
(6, 4, 'App\\User'),
(7, 4, 'App\\User'),
(4, 4, 'App\\User'),
(3, 10, 'App\\Models\\Post'),
(5, 10, 'App\\Models\\Post'),
(6, 10, 'App\\Models\\Post'),
(1, 10, 'App\\Models\\Post'),
(7, 10, 'App\\Models\\Post'),
(8, 9, 'App\\Models\\Team'),
(1, 9, 'App\\Models\\Team'),
(1, 5, 'App\\User'),
(2, 5, 'App\\User'),
(3, 5, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_skill` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `is_skill`) VALUES
(1, 'Java', 1),
(3, 'Android Studio', 1),
(4, 'Python', 1),
(5, 'Javascript', 1),
(6, 'Web Development', 1),
(7, 'Game Development', 1),
(8, 'Singing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `team_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_tagline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_title`, `user_id`, `team_icon`, `team_tagline`, `team_description`, `created_at`, `updated_at`) VALUES
(8, 'Extreme Club', 3, 'http://glacademy.in/skilledmate/public/images/1604389559.jpg', 'Extreme is a club of CSE', 'Learn new things and improve your skills daily', '2020-11-03 14:45:59', '2020-11-03 14:45:59'),
(9, 'Singers club', 4, 'http://glacademy.in/skilledmate/public/images/1604398241.jpg', 'Come and Sing', 'Song is....', '2020-11-03 17:10:41', '2020-11-03 17:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `team_images`
--

CREATE TABLE `team_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `team_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_user`
--

INSERT INTO `team_user` (`id`, `team_id`, `user_id`, `role`, `role_title`, `created_at`, `updated_at`) VALUES
(5, 8, 3, 'ADMIN', 'Social handler', '2020-11-03 14:45:59', '2020-11-03 14:45:59'),
(6, 9, 4, 'ADMIN', 'Singer', '2020-11-03 17:10:41', '2020-11-03 17:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_connected` int(11) DEFAULT NULL,
  `connection_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen_status` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_id` bigint(20) NOT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'http://glacademy.in/skilledmate/public/551dc09df431c56228fb5d0619a5e4ef.jpg',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `is_connected`, `connection_id`, `seen_status`, `token`, `name`, `email`, `college_id`, `user_image`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, NULL, 'eclitqA9tnA:APA91bEAt-ggYax7pkyQL-8TiCv8AdlyQGA4i9SbsqcG86mrpuMb1QG2KElbxc5nqoEn-d1i2A-6QTQl6BrqDf3mF7V28IOk0zhKq2WC13nVLGgw6lIeH2aZ7m3Wc_iWCa9ZLwxI_U64', 'Anjali Sharma', 'anjali@gmail.com', 1, 'http://glacademy.in/skilledmate/public/A004_C055_0825PL_001_1294032_-river.jpg', '9999999999', NULL, '$2y$10$1MX7ClMiCK7vAemSFiScVuvbaaSDXilypCIONoyn198oNg/O1m9pW', NULL, '2020-11-03 14:44:11', '2020-11-07 16:15:33'),
(4, NULL, NULL, NULL, 'fvL49MBSCWA:APA91bHNYLjIScbdpiz9Yp22MYh2AuSlfExHqRBdwR_1oE_u4YP_kjkTLrbOKUAfzoclZ8EwBIfHo7rSDFrvzJ_w0TCl_mEPfymnxitoRbCOi3xeInUf5v8qDeWTwvDLwME6yUuXD9pk', 'Aryan Raj', 'rajaryan9358@gmail.com', 1, 'http://glacademy.in/skilledmate/public/551dc09df431c56228fb5d0619a5e4ef.jpg', '9358174783', NULL, '$2y$10$hP/7IMOz/JhVYkMr.NOl6ubr.GqAiHAlcxNqbQOyrYQeM8KKTJzfe', NULL, '2020-11-03 14:49:43', '2020-11-07 16:14:58'),
(5, NULL, NULL, NULL, 'dfgh', 'Aryan Raj', 'rajaryan@gmail.com', 1, 'http://glacademy.in/skilledmate/public/551dc09df431c56228fb5d0619a5e4ef.jpg', '9495865493', NULL, '$2y$10$KKoQRdZ.PTk0uw0eUMUx9.7FYoPqmRwzutx0Y/vlkG4mD8g8qRbAy', NULL, '2020-11-07 16:38:21', '2020-11-07 16:38:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_content`
--
ALTER TABLE `course_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_participants`
--
ALTER TABLE `event_participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expertises`
--
ALTER TABLE `expertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`post_comment_id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`post_like_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_positions`
--
ALTER TABLE `project_positions`
  ADD PRIMARY KEY (`project_position_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_images`
--
ALTER TABLE `team_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_participants`
--
ALTER TABLE `event_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expertises`
--
ALTER TABLE `expertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `post_comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `post_like_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `team_images`
--
ALTER TABLE `team_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
