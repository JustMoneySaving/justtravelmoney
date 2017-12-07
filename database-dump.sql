-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2017 at 09:53 PM
-- Server version: 5.5.56-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jtm`
--

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_commentmeta`
--

CREATE TABLE `4ewLHnA_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_comments`
--

CREATE TABLE `4ewLHnA_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_links`
--

CREATE TABLE `4ewLHnA_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_options`
--

CREATE TABLE `4ewLHnA_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `4ewLHnA_options`
--

INSERT INTO `4ewLHnA_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://demo.wdc.me/jtm', 'yes'),
(2, 'home', 'http://demo.wdc.me/jtm', 'yes'),
(3, 'blogname', 'JustTravelMoney', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'stefan.vasiljevic@toptal.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '1', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";i:1;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:37:\"meta-box-columns/meta-box-columns.php\";i:4;s:33:\"meta-box-group/meta-box-group.php\";i:5;s:31:\"meta-box-tabs/meta-box-tabs.php\";i:6;s:21:\"meta-box/meta-box.php\";i:7;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '1', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:108:\"/var/www/vhosts/wdc.me/demo.wdc.me/jtm/wp-content/themes/just-travel-money/assets/styles/common/_global.scss\";i:1;s:88:\"/var/www/vhosts/wdc.me/demo.wdc.me/jtm/wp-content/themes/just-travel-money/functions.php\";i:2;s:84:\"/var/www/vhosts/wdc.me/demo.wdc.me/jtm/wp-content/themes/just-travel-money/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'just-travel-money', 'yes'),
(41, 'stylesheet', 'just-travel-money', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
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
(55, 'show_avatars', '', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '160', 'yes'),
(59, 'thumbnail_size_h', '125', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '320', 'yes'),
(62, 'medium_size_h', '250', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:238:\"JustTravelMoney.co.uk is operated by JustMoneySaving Ltd © 2017. All rights reserved.\r\nJustMoneySaving Ltd is registered in England and Wales with Company No. 10849979\r\nJustMoneySaving Ltd, International House, 142 Cromwell Road, SW7 4EF\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:27:\"autoptimize/autoptimize.php\";s:21:\"autoptimize_uninstall\";s:57:\"remove-query-strings-littlebizzy/remove-query-strings.php\";a:2:{i:0;s:20:\"RMQRST_Admin_Notices\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '12', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, '4ewLHnA_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:2:{i:0;s:26:\"wdc_compare_rates_widget-2\";i:1;s:25:\"wdc_recent_posts_widget-2\";}s:12:\"sidebar-blog\";a:1:{i:0;s:26:\"wdc_compare_rates_widget-4\";}s:19:\"sidebar-blog-single\";a:2:{i:0;s:23:\"wdc_browse_all_widget-2\";i:1;s:26:\"wdc_compare_rates_widget-3\";}s:17:\"sidebar-providers\";a:0:{}s:14:\"sidebar-footer\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'cron', 'a:5:{i:1512704906;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512721900;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512724219;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512730318;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, '_transient_twentysixteen_categories', '1', 'yes'),
(106, 'WPLANG', '', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'rewrite_rules', 'a:172:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:25:\"travel-money-providers/?$\";s:29:\"index.php?post_type=providers\";s:55:\"travel-money-providers/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=providers&feed=$matches[1]\";s:50:\"travel-money-providers/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=providers&feed=$matches[1]\";s:42:\"travel-money-providers/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=providers&paged=$matches[1]\";s:18:\"currency-guides/?$\";s:35:\"index.php?post_type=currency-guides\";s:48:\"currency-guides/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=currency-guides&feed=$matches[1]\";s:43:\"currency-guides/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=currency-guides&feed=$matches[1]\";s:35:\"currency-guides/page/([0-9]{1,})/?$\";s:53:\"index.php?post_type=currency-guides&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:53:\"faq-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?faq_category=$matches[1]&feed=$matches[2]\";s:48:\"faq-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?faq_category=$matches[1]&feed=$matches[2]\";s:29:\"faq-category/([^/]+)/embed/?$\";s:45:\"index.php?faq_category=$matches[1]&embed=true\";s:41:\"faq-category/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?faq_category=$matches[1]&paged=$matches[2]\";s:23:\"faq-category/([^/]+)/?$\";s:34:\"index.php?faq_category=$matches[1]\";s:32:\"faqs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"faqs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"faqs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"faqs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"faqs/([^/]+)/embed/?$\";s:37:\"index.php?faqs=$matches[1]&embed=true\";s:25:\"faqs/([^/]+)/trackback/?$\";s:31:\"index.php?faqs=$matches[1]&tb=1\";s:33:\"faqs/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&paged=$matches[2]\";s:40:\"faqs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&cpage=$matches[2]\";s:29:\"faqs/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?faqs=$matches[1]&page=$matches[2]\";s:21:\"faqs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"faqs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"faqs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"faqs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"travel-money-providers/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"travel-money-providers/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"travel-money-providers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"travel-money-providers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"travel-money-providers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"travel-money-providers/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"travel-money-providers/([^/]+)/embed/?$\";s:42:\"index.php?providers=$matches[1]&embed=true\";s:43:\"travel-money-providers/([^/]+)/trackback/?$\";s:36:\"index.php?providers=$matches[1]&tb=1\";s:63:\"travel-money-providers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?providers=$matches[1]&feed=$matches[2]\";s:58:\"travel-money-providers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?providers=$matches[1]&feed=$matches[2]\";s:51:\"travel-money-providers/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?providers=$matches[1]&paged=$matches[2]\";s:58:\"travel-money-providers/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?providers=$matches[1]&cpage=$matches[2]\";s:47:\"travel-money-providers/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?providers=$matches[1]&page=$matches[2]\";s:39:\"travel-money-providers/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"travel-money-providers/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"travel-money-providers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"travel-money-providers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"travel-money-providers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"travel-money-providers/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"special-offers/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"special-offers/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"special-offers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"special-offers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"special-offers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"special-offers/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"special-offers/([^/]+)/embed/?$\";s:47:\"index.php?special-offers=$matches[1]&embed=true\";s:35:\"special-offers/([^/]+)/trackback/?$\";s:41:\"index.php?special-offers=$matches[1]&tb=1\";s:43:\"special-offers/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?special-offers=$matches[1]&paged=$matches[2]\";s:50:\"special-offers/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?special-offers=$matches[1]&cpage=$matches[2]\";s:39:\"special-offers/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?special-offers=$matches[1]&page=$matches[2]\";s:31:\"special-offers/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"special-offers/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"special-offers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"special-offers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"special-offers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"special-offers/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"currency-guides/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"currency-guides/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"currency-guides/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"currency-guides/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"currency-guides/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"currency-guides/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"currency-guides/([^/]+)/embed/?$\";s:48:\"index.php?currency-guides=$matches[1]&embed=true\";s:36:\"currency-guides/([^/]+)/trackback/?$\";s:42:\"index.php?currency-guides=$matches[1]&tb=1\";s:56:\"currency-guides/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?currency-guides=$matches[1]&feed=$matches[2]\";s:51:\"currency-guides/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?currency-guides=$matches[1]&feed=$matches[2]\";s:44:\"currency-guides/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?currency-guides=$matches[1]&paged=$matches[2]\";s:51:\"currency-guides/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?currency-guides=$matches[1]&cpage=$matches[2]\";s:40:\"currency-guides/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?currency-guides=$matches[1]&page=$matches[2]\";s:32:\"currency-guides/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"currency-guides/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"currency-guides/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"currency-guides/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"currency-guides/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"currency-guides/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(115, 'db_upgraded', '', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:5:{s:27:\"autoptimize/autoptimize.php\";i:1512563792;s:33:\"duplicate-post/duplicate-post.php\";i:1512563791;s:33:\"w3-total-cache/w3-total-cache.php\";i:1512563784;s:42:\"scripts-to-footerphp/scripts-to-footer.php\";i:1512563782;s:57:\"remove-query-strings-littlebizzy/remove-query-strings.php\";i:1512563776;}', 'yes'),
(146, 'new_admin_email', 'stefan.vasiljevic@toptal.com', 'yes'),
(160, 'nonce_key', '&+~XSVSuZO2wL/%l#-9&d3PB14bBVad&W|_o;]Mf V?!V6}T}tv{S`Z9<.NX+iNC', 'no'),
(161, 'nonce_salt', '+32}7wR5=q<|MiT&xW^Bqt!3w6n _&pu+al@,:xCAhsM|z5_{CKo2$6)XT2 {5h&', 'no'),
(162, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1511861227;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(164, 'auth_key', 'wnAti`qHG<U>c^}zWvuwNHP4[jC})HUruYfN13D[4838%J.`v&Dym7<Mnb+@8sFr', 'no'),
(165, 'auth_salt', '*=v~0fO`oz47dxbLIvcy)Q3!;%Z0.{>g@66O=PN4@WCypqWrr[oe|1R>d4H,%YbB', 'no'),
(166, 'logged_in_key', 'zs96LYjs@%u.J@YD|s= pTPT H]w>S#l0gW=n$J[}K%ueAz:JKytx-=#+D^Ih^!@', 'no'),
(167, 'logged_in_salt', 'C7v$h^-8RZMI$rC,WGMeo+0;1be+=;WY.i0=WY3[?;QKoyQ9m/5`}-l>|V>7e2*s', 'no'),
(179, 'current_theme', 'Sage Starter Theme', 'yes'),
(180, 'theme_mods_just-travel-money/resources', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1511861219;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-footer\";a:0:{}}}}', 'yes'),
(181, 'theme_switched', '', 'yes'),
(185, 'fresh_site', '0', 'yes'),
(190, 'theme_mods_just-travel-money', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:18:\"primary_navigation\";i:2;s:17:\"footer_navigation\";i:3;s:9:\"offer_nav\";i:5;s:17:\"mobile_navigation\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(192, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(238, 'duplicate_post_copytitle', '1', 'yes'),
(239, 'duplicate_post_copydate', '', 'yes'),
(240, 'duplicate_post_copystatus', '', 'yes'),
(241, 'duplicate_post_copyslug', '1', 'yes'),
(242, 'duplicate_post_copyexcerpt', '1', 'yes'),
(243, 'duplicate_post_copycontent', '1', 'yes'),
(244, 'duplicate_post_copythumbnail', '1', 'yes'),
(245, 'duplicate_post_copytemplate', '1', 'yes'),
(246, 'duplicate_post_copyformat', '1', 'yes'),
(247, 'duplicate_post_copyauthor', '', 'yes'),
(248, 'duplicate_post_copypassword', '', 'yes'),
(249, 'duplicate_post_copyattachments', '', 'yes'),
(250, 'duplicate_post_copychildren', '', 'yes'),
(251, 'duplicate_post_copycomments', '', 'yes'),
(252, 'duplicate_post_copymenuorder', '1', 'yes'),
(253, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(254, 'duplicate_post_blacklist', '', 'yes'),
(255, 'duplicate_post_types_enabled', 'a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:9:\"providers\";}', 'yes'),
(256, 'duplicate_post_show_row', '1', 'yes'),
(257, 'duplicate_post_show_adminbar', '1', 'yes'),
(258, 'duplicate_post_show_submitbox', '1', 'yes'),
(259, 'duplicate_post_show_bulkactions', '1', 'yes'),
(260, 'duplicate_post_version', '3.2.1', 'yes'),
(261, 'duplicate_post_show_notice', '', 'no'),
(267, 'category_children', 'a:0:{}', 'yes'),
(303, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"stefan.vasiljevic@toptal.com\";s:7:\"version\";s:5:\"4.9.1\";s:9:\"timestamp\";i:1511988949;}', 'no'),
(329, 'widget_bcn_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(330, 'bcn_version', '5.7.1', 'no'),
(331, 'bcn_options_bk', 'a:41:{s:17:\"bmainsite_display\";b:0;s:18:\"Hmainsite_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hmainsite_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:230:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">Home</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hhome_template_no_anchor\";s:138:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Home</span><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bblog_display\";b:1;s:14:\"Hblog_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hblog_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:10:\"hseparator\";s:31:\" <span class=\"sep\">&gt;</span> \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:19:\"Hpost_page_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_page_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_page_root\";s:1:\"6\";s:15:\"Hpaged_template\";s:147:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Page %htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_post_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_post_root\";s:2:\"12\";s:27:\"bpost_post_taxonomy_display\";b:0;s:27:\"bpost_post_taxonomy_referer\";b:0;s:24:\"Spost_post_taxonomy_type\";s:8:\"category\";s:25:\"Hpost_attachment_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_attachment_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"H404_template\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:302:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Search results for &#039;<a property=\"item\" typeof=\"WebPage\" title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hsearch_template_no_anchor\";s:173:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Search results for &#039;%htitle%&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:22:\"Htax_post_tag_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_post_tag_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:25:\"Htax_post_format_template\";s:247:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_post_format_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:16:\"Hauthor_template\";s:180:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:26:\"Hauthor_template_no_anchor\";s:155:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Articles by: %htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:22:\"Htax_category_template\";s:256:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_category_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:14:\"Hdate_template\";s:247:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hdate_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";}', 'yes'),
(332, 'bcn_options', 'a:41:{s:17:\"bmainsite_display\";b:0;s:18:\"Hmainsite_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hmainsite_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:230:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">Home</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hhome_template_no_anchor\";s:138:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Home</span><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bblog_display\";b:1;s:14:\"Hblog_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hblog_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:10:\"hseparator\";s:29:\"<span class=\"sep\">&gt;</span>\";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:19:\"Hpost_page_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_page_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_page_root\";s:1:\"6\";s:15:\"Hpaged_template\";s:147:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Page %htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_post_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_post_root\";s:2:\"12\";s:27:\"bpost_post_taxonomy_display\";b:0;s:27:\"bpost_post_taxonomy_referer\";b:0;s:24:\"Spost_post_taxonomy_type\";s:8:\"category\";s:25:\"Hpost_attachment_template\";s:234:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_attachment_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"H404_template\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:302:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Search results for &#039;<a property=\"item\" typeof=\"WebPage\" title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hsearch_template_no_anchor\";s:173:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Search results for &#039;%htitle%&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:22:\"Htax_post_tag_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_post_tag_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:25:\"Htax_post_format_template\";s:247:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_post_format_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:16:\"Hauthor_template\";s:180:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\">%htitle%</a>\";s:26:\"Hauthor_template_no_anchor\";s:155:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Articles by: %htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:22:\"Htax_category_template\";s:256:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_category_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:14:\"Hdate_template\";s:247:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\"><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hdate_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";}', 'yes'),
(358, 'faq_category_children', 'a:0:{}', 'yes'),
(361, 'widget_wdc_cta_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(362, 'widget_wdc_browse_all_widget', 'a:2:{i:2;a:2:{s:5:\"title\";s:17:\"All Advice & Tips\";s:12:\"button_label\";s:10:\"Browse All\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(363, 'widget_wdc_recent_posts_widget', 'a:2:{i:2;a:3:{s:5:\"title\";s:20:\"Latest From The Blog\";s:15:\"number_of_posts\";s:1:\"6\";s:12:\"button_label\";s:10:\"Go To Blog\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(364, 'widget_wdc_compare_rates_widget', 'a:4:{i:2;a:3:{s:5:\"title\";s:30:\"Compare Travel   Money Rates\";s:20:\"comparison_shortcode\";s:0:\"\";s:12:\"button_label\";s:18:\"Compare The Rates!\";}i:3;a:2:{s:5:\"title\";s:30:\"Compare Travel   Money Rates\";s:12:\"button_label\";s:18:\"Compare The Rates!\";}i:4;a:2:{s:5:\"title\";s:30:\"Compare Travel   Money Rates\";s:12:\"button_label\";s:18:\"Compare The Rates!\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(369, 'duplicate_post_title_prefix', '', 'yes'),
(370, 'duplicate_post_title_suffix', '', 'yes'),
(371, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(372, 'duplicate_post_roles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}', 'yes'),
(437, '_site_transient_timeout_browser_f3f76e59bfe58ff0f210dd4a7ddfd652', '1513101250', 'no'),
(438, '_site_transient_browser_f3f76e59bfe58ff0f210dd4a7ddfd652', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(449, '_site_transient_timeout_browser_19c9bfaa3e17f41093a48f3e8ba9910c', '1513102059', 'no'),
(450, '_site_transient_browser_19c9bfaa3e17f41093a48f3e8ba9910c', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"11.0.1\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(475, '_site_transient_timeout_browser_6cd77015ec4a62e4fdace07d0b0a8f84', '1513152404', 'no'),
(476, '_site_transient_browser_6cd77015ec4a62e4fdace07d0b0a8f84', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"62.0.3202.94\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `4ewLHnA_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(477, '_transient_timeout_plugin_slugs', '1512757075', 'no'),
(478, '_transient_plugin_slugs', 'a:12:{i:0;s:27:\"autoptimize/autoptimize.php\";i:1;s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";i:2;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:33:\"duplicate-post/duplicate-post.php\";i:5;s:21:\"meta-box/meta-box.php\";i:6;s:37:\"meta-box-columns/meta-box-columns.php\";i:7;s:33:\"meta-box-group/meta-box-group.php\";i:8;s:31:\"meta-box-tabs/meta-box-tabs.php\";i:9;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:10;s:42:\"scripts-to-footerphp/scripts-to-footer.php\";i:11;s:33:\"w3-total-cache/w3-total-cache.php\";}', 'no'),
(494, 'w3tc_state', '{\"common.install\":1512557365,\"minify.hide_minify_help\":true,\"common.show_note.flush_posts_needed\":false,\"common.show_note.flush_posts_needed.timestamp\":1512563671,\"minify.show_note.need_flush\":false,\"minify.show_note.need_flush.timestamp\":1512563671,\"common.show_note.plugins_updated\":true,\"common.show_note.plugins_updated.timestamp\":1512563782,\"common.show_note.flush_statics_needed\":false,\"common.show_note.flush_statics_needed.timestamp\":1512563671,\"objectcache.show_note.flush_needed\":false,\"objectcache.show_note.flush_needed.timestamp\":1512563671,\"extension.swarmify.hide_note_activate_suggestion\":\"true\"}', 'no'),
(500, '_transient_timeout_w3tc_license_status', '1512989411', 'no'),
(501, '_transient_w3tc_license_status', 'no_key', 'no'),
(510, 'autoptimize_version', '2.2.0', 'yes'),
(529, 'autoptimize_html', '', 'yes'),
(530, 'autoptimize_html_keepcomments', '', 'yes'),
(531, 'autoptimize_js', '', 'yes'),
(532, 'autoptimize_js_exclude', 'seal.js, js/jquery/jquery.js', 'yes'),
(533, 'autoptimize_js_trycatch', '', 'yes'),
(534, 'autoptimize_js_justhead', '', 'yes'),
(535, 'autoptimize_js_forcehead', '', 'yes'),
(536, 'autoptimize_js_include_inline', '', 'yes'),
(537, 'autoptimize_css', '', 'yes'),
(538, 'autoptimize_css_exclude', 'admin-bar.min.css, dashicons.min.css', 'yes'),
(539, 'autoptimize_css_justhead', '', 'yes'),
(540, 'autoptimize_css_datauris', '', 'yes'),
(541, 'autoptimize_css_defer', 'on', 'yes'),
(542, 'autoptimize_css_defer_inline', 'body{\r\n}', 'yes'),
(543, 'autoptimize_css_inline', '', 'yes'),
(544, 'autoptimize_css_include_inline', '', 'yes'),
(545, 'autoptimize_css_nogooglefont', '', 'yes'),
(546, 'autoptimize_cdn_url', '', 'yes'),
(547, 'autoptimize_cache_clean', '0', 'yes'),
(548, 'autoptimize_cache_nogzip', 'on', 'yes'),
(549, 'autoptimize_show_adv', '1', 'yes'),
(550, 'autoptimize_optimize_logged', '', 'yes'),
(551, 'autoptimize_optimize_checkout', '', 'yes'),
(554, 'w3tc_minify', '{\"94ebe.js\":[\"jtm\\/wp-includes\\/js\\/jquery\\/jquery.js\",\"jtm\\/wp-includes\\/js\\/jquery\\/jquery-migrate.min.js\"],\"60da5.js\":[\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/scripts\\/modernizr.js\",\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/scripts\\/slidebars.js\",\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/scripts\\/main.js\",\"jtm\\/wp-includes\\/js\\/wp-embed.min.js\"],\"050e7.css\":[\"jtm\\/wp-content\\/cache\\/autoptimize\\/css\\/autoptimize_e58b6356b535c5d40fa4ef75f8cb183f.css\"],\"80e6d.js\":[\"jtm\\/wp-includes\\/js\\/admin-bar.min.js\"],\"f4966.js\":[\"jtm\\/wp-content\\/plugins\\/autoptimize\\/classes\\/static\\/toolbar.js\",\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/scripts\\/modernizr.js\",\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/scripts\\/slidebars.js\",\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/scripts\\/main.js\",\"jtm\\/wp-includes\\/js\\/wp-embed.min.js\"],\"78e19.js\":[\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/scripts\\/modernizr.js\",\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/scripts\\/slidebars.js\",\"jtm\\/wp-includes\\/js\\/jquery\\/jquery.js\",\"jtm\\/wp-includes\\/js\\/jquery\\/jquery-migrate.min.js\",\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/scripts\\/main.js\",\"jtm\\/wp-includes\\/js\\/wp-embed.min.js\"],\"910e7.js\":[\"jtm\\/wp-includes\\/js\\/admin-bar.min.js\",\"jtm\\/wp-includes\\/js\\/jquery\\/jquery.js\",\"jtm\\/wp-includes\\/js\\/jquery\\/jquery-migrate.min.js\"],\"ba88d.css\":[\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/styles\\/main.css\"],\"2247d.css\":[\"jtm\\/wp-includes\\/css\\/dashicons.min.css\",\"jtm\\/wp-includes\\/css\\/admin-bar.min.css\",\"jtm\\/wp-content\\/plugins\\/duplicate-post\\/duplicate-post.css\",\"jtm\\/wp-content\\/plugins\\/autoptimize\\/classes\\/static\\/toolbar.css\",\"jtm\\/wp-content\\/themes\\/just-travel-money\\/dist\\/styles\\/main.css\"]}', 'no'),
(565, '_site_transient_timeout_browser_4650af8706f666aa5dc7371b1530fd58', '1513166217', 'no'),
(566, '_site_transient_browser_4650af8706f666aa5dc7371b1530fd58', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"11.0.1\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(569, 'w3tc_nr_application_id', '{\"d41d8cd98f00b204e9800998ecf8427e\":0}', 'yes'),
(570, 'w3tc_generic_widgetservices', '{\"items\":[{\"name\":\"Premium Support Response (Usually <1h First Response)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Premium Support Response (Usually <1h First Response)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Plugin Configuration\",\"parameter_name\":\"field4\",\"parameter_value\":\"Plugin Configuration\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"SSL Performance Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"SSL Performance Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Full Site Delivery Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"Full Site Delivery Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Hosting Environment Troubleshooting\",\"parameter_name\":\"field4\",\"parameter_value\":\"Hosting Environment Troubleshooting\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Monitoring\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Monitoring\",\"form_hash\":\"m5pom8z0qy59rm\"}],\"expires\":1513166359}', 'no'),
(593, 'scripts-to-footer', 'a:0:{}', 'yes'),
(633, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1512573235;s:7:\"version\";s:5:\"4.9.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(649, '_site_transient_timeout_browser_5a22b190797100eb69ba5d8076112edd', '1513190147', 'no'),
(650, '_site_transient_browser_5a22b190797100eb69ba5d8076112edd', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"11.0\";s:8:\"platform\";s:6:\"iPhone\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(663, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1512662722;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(664, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512670712;s:7:\"checked\";a:4:{s:17:\"just-travel-money\";s:5:\"1.0.1\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(665, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512670674;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:27:\"autoptimize/autoptimize.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/autoptimize\";s:4:\"slug\";s:11:\"autoptimize\";s:6:\"plugin\";s:27:\"autoptimize/autoptimize.php\";s:11:\"new_version\";s:5:\"2.2.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/autoptimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/autoptimize.2.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.jpg?rev=1315940\";s:7:\"default\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.jpg?rev=1315940\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";s:7:\"default\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";}s:11:\"banners_rtl\";a:0:{}}s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/bootstrap-for-contact-form-7\";s:4:\"slug\";s:28:\"bootstrap-for-contact-form-7\";s:6:\"plugin\";s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/bootstrap-for-contact-form-7/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/bootstrap-for-contact-form-7.1.4.5.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:81:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/icon-128x128.png?rev=1021147\";s:2:\"2x\";s:81:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/icon-256x256.png?rev=1021147\";s:7:\"default\";s:81:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/icon-256x256.png?rev=1021147\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:84:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/banner-1544x500.png?rev=1019325\";s:2:\"1x\";s:83:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/banner-772x250.png?rev=1019325\";s:7:\"default\";s:84:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/banner-1544x500.png?rev=1019325\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/breadcrumb-navxt\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"5.7.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.5.7.1.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:68:\"https://ps.w.org/breadcrumb-navxt/assets/icon-128x128.png?rev=971477\";s:2:\"2x\";s:68:\"https://ps.w.org/breadcrumb-navxt/assets/icon-256x256.png?rev=971477\";s:3:\"svg\";s:60:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=971477\";s:7:\"default\";s:60:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=971477\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.jpg?rev=479408\";s:7:\"default\";s:70:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.jpg?rev=479408\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:7:\"default\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";s:7:\"default\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"meta-box/meta-box.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/meta-box\";s:4:\"slug\";s:8:\"meta-box\";s:6:\"plugin\";s:21:\"meta-box/meta-box.php\";s:11:\"new_version\";s:6:\"4.12.6\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/meta-box/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/meta-box.4.12.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/meta-box/assets/icon-128x128.png?rev=1100915\";s:7:\"default\";s:61:\"https://ps.w.org/meta-box/assets/icon-128x128.png?rev=1100915\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:63:\"https://ps.w.org/meta-box/assets/banner-772x250.png?rev=1626382\";s:7:\"default\";s:63:\"https://ps.w.org/meta-box/assets/banner-772x250.png?rev=1626382\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";s:7:\"default\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";s:7:\"default\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"scripts-to-footerphp/scripts-to-footer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/scripts-to-footerphp\";s:4:\"slug\";s:20:\"scripts-to-footerphp\";s:6:\"plugin\";s:42:\"scripts-to-footerphp/scripts-to-footer.php\";s:11:\"new_version\";s:5:\"0.6.2\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/scripts-to-footerphp/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/scripts-to-footerphp.0.6.2.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:74:\"https://ps.w.org/scripts-to-footerphp/assets/banner-772x250.jpg?rev=833162\";s:7:\"default\";s:74:\"https://ps.w.org/scripts-to-footerphp/assets/banner-772x250.jpg?rev=833162\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"w3-total-cache/w3-total-cache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/w3-total-cache\";s:4:\"slug\";s:14:\"w3-total-cache\";s:6:\"plugin\";s:33:\"w3-total-cache/w3-total-cache.php\";s:11:\"new_version\";s:7:\"0.9.5.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/w3-total-cache/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/w3-total-cache.0.9.5.4.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-128x128.png?rev=1041806\";s:2:\"2x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806\";s:7:\"default\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806\";s:7:\"default\";s:69:\"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(670, '_site_transient_timeout_community-events-9aa79624f5256f40fd888117816a346c', '1512712283', 'no'),
(671, '_site_transient_community-events-9aa79624f5256f40fd888117816a346c', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:11:\"89.197.83.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:23:\"WordPress Meetup - WPTW\";s:3:\"url\";s:81:\"https://www.meetup.com/Tunbridge-Wells-Small-Business-Meetup/events/mhfnvmywqbkb/\";s:6:\"meetup\";s:39:\"Tunbridge Wells WordPress Meetup - WPTW\";s:10:\"meetup_url\";s:61:\"https://www.meetup.com/Tunbridge-Wells-Small-Business-Meetup/\";s:4:\"date\";s:19:\"2017-12-07 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:31:\"Tunbridge Wells, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:51.133113999999999;s:9:\"longitude\";d:0.26524199999999998;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:56:\"Cambridge Wordpress: GDPR for websites with Howard Elsey\";s:3:\"url\";s:60:\"https://www.meetup.com/wordpress-cambridge/events/239661053/\";s:6:\"meetup\";s:26:\"WordPress Cambridge Meetup\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/wordpress-cambridge/\";s:4:\"date\";s:19:\"2017-12-11 18:45:00\";s:8:\"location\";a:4:{s:8:\"location\";s:33:\"Cambridge CB4 0GF, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:52.235432000000003;s:9:\"longitude\";d:0.14132600000000001;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:14:\"Bloggers Unite\";s:3:\"url\";s:68:\"https://www.meetup.com/Whitstable-WordPress-Meetup/events/245305659/\";s:6:\"meetup\";s:27:\"Whitstable WordPress Meetup\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/Whitstable-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-12-13 10:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:26:\"Whitstable, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:51.356555999999998;s:9:\"longitude\";d:1.0244040000000001;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:31:\"WordPress Meetup #8 Lean Coffee\";s:3:\"url\";s:67:\"https://www.meetup.com/St-Albans-WordPress-Meetup/events/245251641/\";s:6:\"meetup\";s:26:\"St Albans WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/St-Albans-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-12-14 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:25:\"St Albans, United Kingdom\";s:7:\"country\";s:2:\"gb\";s:8:\"latitude\";d:51.751396;s:9:\"longitude\";d:-0.32293100000000002;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:26:\"WordPress Maidstone Meetup\";s:3:\"url\";s:67:\"https://www.meetup.com/Maidstone-WordPress-Meetup/events/244788074/\";s:6:\"meetup\";s:26:\"Maidstone WordPress Meetup\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Maidstone-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-12-14 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:34:\"Maidstone, England, United Kingdom\";s:7:\"country\";s:2:\"GB\";s:8:\"latitude\";d:51.279998779297003;s:9:\"longitude\";d:0.50999999046325994;}}}}', 'no'),
(672, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1512712284', 'no'),
(673, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1512712284', 'no'),
(674, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1512669084', 'no'),
(675, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1512712286', 'no'),
(676, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1512712286', 'no'),
(677, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1512669086', 'no'),
(678, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1512712286', 'no'),
(679, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2017/12/the-month-in-wordpress-november-2017/\'>The Month in WordPress: November 2017</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ma.tt/2017/12/iphone-charging/\'>Matt: iPhone Fast Charging</a></li><li><a class=\'rsswidget\' href=\'https://ma.tt/2017/12/state-of-the-word-2017/\'>Matt: State of the Word, 2017</a></li><li><a class=\'rsswidget\' href=\'https://heropress.com/essays/remote-work-brings-freedom/#utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=remote-work-brings-freedom\'>HeroPress: Remote Work Brings Freedom</a></li></ul></div>', 'no'),
(680, '_site_transient_timeout_theme_roots', '1512672510', 'no'),
(681, '_site_transient_theme_roots', 'a:4:{s:17:\"just-travel-money\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_postmeta`
--

CREATE TABLE `4ewLHnA_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `4ewLHnA_postmeta`
--

INSERT INTO `4ewLHnA_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 6, '_edit_last', '1'),
(10, 6, '_wp_page_template', 'template-homepage.php'),
(11, 6, '_edit_lock', '1512670639:2'),
(12, 8, '_edit_last', '1'),
(14, 8, '_edit_lock', '1512041723:1'),
(15, 10, '_edit_last', '1'),
(16, 10, '_edit_lock', '1511860110:1'),
(17, 10, '_wp_page_template', 'default'),
(18, 12, '_edit_last', '1'),
(19, 12, '_edit_lock', '1512042047:1'),
(21, 14, '_edit_last', '1'),
(23, 14, '_edit_lock', '1512584230:2'),
(24, 16, '_menu_item_type', 'post_type'),
(25, 16, '_menu_item_menu_item_parent', '0'),
(26, 16, '_menu_item_object_id', '6'),
(27, 16, '_menu_item_object', 'page'),
(28, 16, '_menu_item_target', ''),
(29, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 16, '_menu_item_xfn', ''),
(31, 16, '_menu_item_url', ''),
(32, 16, '_menu_item_orphaned', '1511863780'),
(33, 17, '_menu_item_type', 'post_type'),
(34, 17, '_menu_item_menu_item_parent', '0'),
(35, 17, '_menu_item_object_id', '6'),
(36, 17, '_menu_item_object', 'page'),
(37, 17, '_menu_item_target', ''),
(38, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 17, '_menu_item_xfn', ''),
(40, 17, '_menu_item_url', ''),
(42, 18, '_menu_item_type', 'post_type'),
(43, 18, '_menu_item_menu_item_parent', '0'),
(44, 18, '_menu_item_object_id', '8'),
(45, 18, '_menu_item_object', 'page'),
(46, 18, '_menu_item_target', ''),
(47, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 18, '_menu_item_xfn', ''),
(49, 18, '_menu_item_url', ''),
(51, 19, '_menu_item_type', 'post_type'),
(52, 19, '_menu_item_menu_item_parent', '0'),
(53, 19, '_menu_item_object_id', '10'),
(54, 19, '_menu_item_object', 'page'),
(55, 19, '_menu_item_target', ''),
(56, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 19, '_menu_item_xfn', ''),
(58, 19, '_menu_item_url', ''),
(60, 20, '_menu_item_type', 'post_type'),
(61, 20, '_menu_item_menu_item_parent', '0'),
(62, 20, '_menu_item_object_id', '12'),
(63, 20, '_menu_item_object', 'page'),
(64, 20, '_menu_item_target', ''),
(65, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 20, '_menu_item_xfn', ''),
(67, 20, '_menu_item_url', ''),
(69, 21, '_menu_item_type', 'post_type'),
(70, 21, '_menu_item_menu_item_parent', '0'),
(71, 21, '_menu_item_object_id', '14'),
(72, 21, '_menu_item_object', 'page'),
(73, 21, '_menu_item_target', ''),
(74, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 21, '_menu_item_xfn', ''),
(76, 21, '_menu_item_url', ''),
(77, 21, '_menu_item_orphaned', '1511863780'),
(78, 22, '_menu_item_type', 'post_type'),
(79, 22, '_menu_item_menu_item_parent', '0'),
(80, 22, '_menu_item_object_id', '6'),
(81, 22, '_menu_item_object', 'page'),
(82, 22, '_menu_item_target', ''),
(83, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 22, '_menu_item_xfn', ''),
(85, 22, '_menu_item_url', ''),
(87, 23, '_menu_item_type', 'post_type'),
(88, 23, '_menu_item_menu_item_parent', '0'),
(89, 23, '_menu_item_object_id', '8'),
(90, 23, '_menu_item_object', 'page'),
(91, 23, '_menu_item_target', ''),
(92, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 23, '_menu_item_xfn', ''),
(94, 23, '_menu_item_url', ''),
(96, 24, '_menu_item_type', 'post_type'),
(97, 24, '_menu_item_menu_item_parent', '0'),
(98, 24, '_menu_item_object_id', '12'),
(99, 24, '_menu_item_object', 'page'),
(100, 24, '_menu_item_target', ''),
(101, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 24, '_menu_item_xfn', ''),
(103, 24, '_menu_item_url', ''),
(105, 25, '_menu_item_type', 'post_type'),
(106, 25, '_menu_item_menu_item_parent', '0'),
(107, 25, '_menu_item_object_id', '14'),
(108, 25, '_menu_item_object', 'page'),
(109, 25, '_menu_item_target', ''),
(110, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 25, '_menu_item_xfn', ''),
(112, 25, '_menu_item_url', ''),
(113, 6, 'WDC_section_1_title', 'What We Do'),
(114, 6, 'WDC_section_1_content', '<p>We compare the exchange rates from leading travel money providers so you can get the most out of your money!</p>\n<p>[wdc_arrow_cta arrow=\"yes\"]Watch our video now![/wdc_arrow_cta]</p>\n'),
(115, 6, 'WDC_section_2_title', 'Compare 100+ Currencies'),
(116, 6, 'WDC_section_2_content', '<p>No matter where you’re going in the world, you can compare and find the best exchange rate for your travel money</p>\n<p>One website, 100+ currencies to compare!</p>\n'),
(117, 6, 'WDC_section_3_title', 'How Travel Money Comparison Works'),
(118, 6, 'slides_content', 'a:0:{}'),
(119, 6, 's3_box_1', 'a:2:{s:14:\"WDC_box1_title\";s:25:\"Enter Your Currency Needs\";s:16:\"WDC_box1_content\";s:136:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condintum felis, nec mattis dui.\";}'),
(120, 6, 's3_box_2', 'a:2:{s:14:\"WDC_box2_title\";s:20:\"We Compare The Rates\";s:16:\"WDC_box2_content\";s:136:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condintum felis, nec mattis dui.\";}'),
(121, 6, 's3_box_3', 'a:2:{s:14:\"WDC_box3_title\";s:25:\"You Get The Best Exchange\";s:16:\"WDC_box3_content\";s:136:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condintum felis, nec mattis dui.\";}'),
(122, 6, 'WDC_section_1_video_id', 'rsHMSZ4JZT0'),
(123, 26, '_edit_last', '1'),
(124, 26, '_edit_lock', '1511963691:1'),
(126, 28, '_edit_last', '1'),
(128, 28, '_edit_lock', '1511963705:1'),
(129, 30, '_dp_original', '26'),
(130, 31, '_dp_original', '28'),
(131, 32, '_dp_original', '26'),
(132, 33, '_dp_original', '28'),
(134, 33, '_wp_old_slug', 'the-top-10-ways-to-save-on-travel-money'),
(136, 32, '_wp_old_slug', 'how-do-find-the-best-exchange-rate'),
(138, 31, '_wp_old_slug', 'the-top-10-ways-to-save-on-travel-money'),
(140, 30, '_wp_old_slug', 'how-do-find-the-best-exchange-rate'),
(143, 38, '_wp_attached_file', '2017/11/home-box-image.png'),
(144, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:118;s:4:\"file\";s:26:\"2017/11/home-box-image.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"home-box-image-160x118.png\";s:5:\"width\";i:160;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 6, 's4_box_1', 'a:2:{s:14:\"WDC_box1_image\";a:1:{i:0;s:2:\"38\";}s:14:\"WDC_box1_title\";s:28:\"Over 80 Currencies Supported\";}'),
(146, 6, 's4_box_2', 'a:2:{s:14:\"WDC_box2_image\";a:1:{i:0;s:2:\"38\";}s:14:\"WDC_box2_title\";s:26:\"Rates Updated Every Minute\";}'),
(147, 6, 's4_box_3', 'a:2:{s:14:\"WDC_box3_image\";a:1:{i:0;s:2:\"38\";}s:14:\"WDC_box3_title\";s:20:\"Impartial Comparison\";}'),
(148, 6, 's4_box_4', 'a:2:{s:14:\"WDC_box4_image\";a:1:{i:0;s:2:\"38\";}s:14:\"WDC_box4_title\";s:22:\"Results Emailed To You\";}'),
(150, 39, '_wp_attached_file', '2017/11/homepage-hero.jpg'),
(151, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:546;s:4:\"file\";s:25:\"2017/11/homepage-hero.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"homepage-hero-160x125.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"homepage-hero-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"homepage-hero-768x349.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:349;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"homepage-hero-1024x466.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 6, '_thumbnail_id', '39'),
(154, 6, 'WDC_hero_title', 'Get The Best Rate <br>On Your Travel Money'),
(155, 6, 'WDC_hero_content', '<p>Discover the best rate, see the latest deals<br />\nand order securely direct from the providers</p>\n'),
(156, 40, '_wp_attached_file', '2017/11/asda-money.png'),
(157, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:77;s:6:\"height\";i:77;s:4:\"file\";s:22:\"2017/11/asda-money.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 41, '_wp_attached_file', '2017/11/post-money.png'),
(159, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:77;s:6:\"height\";i:77;s:4:\"file\";s:22:\"2017/11/post-money.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 42, '_wp_attached_file', '2017/11/tesco-bank.png'),
(161, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:75;s:6:\"height\";i:77;s:4:\"file\";s:22:\"2017/11/tesco-bank.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 43, '_wp_attached_file', '2017/11/thomas-cook-money.png'),
(163, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:77;s:6:\"height\";i:77;s:4:\"file\";s:29:\"2017/11/thomas-cook-money.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 44, '_wp_attached_file', '2017/11/travelex.png'),
(165, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:75;s:6:\"height\";i:77;s:4:\"file\";s:20:\"2017/11/travelex.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 12, 'WDC_page_hero_title', 'Advice & Tips'),
(192, 12, 'WDC_page_hero_content', '<p>We’ve compared the rates of British Pounds (GBP) to Dollars (USD)<br />\nAt the best rate, 500 Pounds buys you 212 USD from Travelex</p>\n'),
(193, 50, '_wp_attached_file', '2017/11/hero-placeholder.jpg'),
(194, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:281;s:4:\"file\";s:28:\"2017/11/hero-placeholder.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hero-placeholder-160x125.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"hero-placeholder-300x70.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hero-placeholder-768x180.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"hero-placeholder-1024x240.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 12, '_thumbnail_id', '50'),
(196, 31, '_edit_lock', '1512049719:1'),
(197, 31, '_edit_last', '1'),
(198, 31, '_thumbnail_id', '51'),
(200, 30, '_edit_lock', '1512552770:2'),
(201, 51, '_wp_attached_file', '2017/11/blog-placeholder.png'),
(202, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:158;s:6:\"height\";i:123;s:4:\"file\";s:28:\"2017/11/blog-placeholder.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 30, '_edit_last', '1'),
(204, 30, '_thumbnail_id', '76'),
(210, 52, '_edit_last', '1'),
(211, 52, '_edit_lock', '1512390767:1'),
(212, 53, '_wp_attached_file', '2017/12/post-money.png'),
(213, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:116;s:6:\"height\";i:40;s:4:\"file\";s:22:\"2017/12/post-money.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 52, '_thumbnail_id', '50'),
(216, 52, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(219, 52, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(223, 54, '_edit_last', '1'),
(224, 54, '_edit_lock', '1512146544:1'),
(225, 55, '_edit_last', '1'),
(226, 55, '_edit_lock', '1512561476:2'),
(228, 52, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(229, 52, 'WDC_about_provider_url', 'rsHMSZ4JZT0'),
(231, 52, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(233, 56, '_thumbnail_id', '50'),
(234, 56, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(235, 56, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(236, 56, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(237, 56, 'WDC_about_provider_url', '#'),
(238, 56, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(240, 56, '_dp_original', '52'),
(241, 57, '_thumbnail_id', '50'),
(242, 57, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(243, 57, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(244, 57, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(245, 57, 'WDC_about_provider_url', '#'),
(246, 57, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(247, 57, 'WDC_provider_logo', '53'),
(248, 57, '_dp_original', '52'),
(249, 58, '_thumbnail_id', '50'),
(250, 58, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(251, 58, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(252, 58, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(253, 58, 'WDC_about_provider_url', '#'),
(254, 58, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(255, 58, 'WDC_provider_logo', '53'),
(256, 58, '_dp_original', '52'),
(257, 59, '_thumbnail_id', '50'),
(258, 59, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(259, 59, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(260, 59, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(261, 59, 'WDC_about_provider_url', '#'),
(262, 59, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(263, 59, 'WDC_provider_logo', '53'),
(264, 59, '_dp_original', '52'),
(265, 60, '_thumbnail_id', '50'),
(266, 60, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(267, 60, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(268, 60, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(269, 60, 'WDC_about_provider_url', '#'),
(270, 60, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(271, 60, 'WDC_provider_logo', '53'),
(272, 60, '_dp_original', '52'),
(273, 61, '_thumbnail_id', '50'),
(274, 61, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(275, 61, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(276, 61, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(277, 61, 'WDC_about_provider_url', '#'),
(278, 61, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(279, 61, 'WDC_provider_logo', '53'),
(280, 61, '_dp_original', '52'),
(281, 61, '_wp_old_slug', 'post-office-money'),
(282, 60, '_wp_old_slug', 'post-office-money'),
(283, 59, '_wp_old_slug', 'post-office-money'),
(284, 58, '_wp_old_slug', 'post-office-money'),
(285, 57, '_wp_old_slug', 'post-office-money'),
(286, 56, '_wp_old_slug', 'post-office-money'),
(287, 56, '_edit_lock', '1512151001:1'),
(288, 56, '_edit_last', '1'),
(289, 56, 'WDC_provider_logo', '53'),
(290, 56, 'WDC_faq_cat', '4'),
(292, 52, 'WDC_faq_cat', '4'),
(293, 62, '_wp_attached_file', '2017/12/intro-placeholder.png'),
(294, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:472;s:6:\"height\";i:266;s:4:\"file\";s:29:\"2017/12/intro-placeholder.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"intro-placeholder-160x125.png\";s:5:\"width\";i:160;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"intro-placeholder-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 52, 'WDC_provider_intro', '<p><img class=\"aligncenter size-full wp-image-62\" src=\"//localhost:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000/jtm/wp-content/uploads/2017/12/intro-placeholder.png\" alt=\"\" width=\"472\" height=\"266\" /></p>\n'),
(297, 63, '_wp_attached_file', '2017/12/travel-money-guide.png'),
(298, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:117;s:4:\"file\";s:30:\"2017/12/travel-money-guide.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"travel-money-guide-160x117.png\";s:5:\"width\";i:160;s:6:\"height\";i:117;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 65, '_wp_attached_file', '2017/12/exchange-tip-icon.png'),
(312, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:69;s:6:\"height\";i:68;s:4:\"file\";s:29:\"2017/12/exchange-tip-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 66, '_wp_attached_file', '2017/12/avoid-frustration.png'),
(316, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:69;s:6:\"height\";i:69;s:4:\"file\";s:29:\"2017/12/avoid-frustration.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 52, 'WDC_provider_logo', '53'),
(320, 52, 'WDC_provider_video_id', 'rsHMSZ4JZT0'),
(326, 56, '_wp_trash_meta_status', 'publish'),
(327, 56, '_wp_trash_meta_time', '1512390922'),
(328, 56, '_wp_desired_post_slug', 'post-office-money-7'),
(329, 57, '_wp_trash_meta_status', 'publish'),
(330, 57, '_wp_trash_meta_time', '1512390922'),
(331, 57, '_wp_desired_post_slug', 'post-office-money-6'),
(332, 58, '_wp_trash_meta_status', 'publish'),
(333, 58, '_wp_trash_meta_time', '1512390922'),
(334, 58, '_wp_desired_post_slug', 'post-office-money-5'),
(335, 59, '_wp_trash_meta_status', 'publish'),
(336, 59, '_wp_trash_meta_time', '1512390922'),
(337, 59, '_wp_desired_post_slug', 'post-office-money-4'),
(338, 60, '_wp_trash_meta_status', 'publish'),
(339, 60, '_wp_trash_meta_time', '1512390922'),
(340, 60, '_wp_desired_post_slug', 'post-office-money-3'),
(341, 61, '_wp_trash_meta_status', 'publish'),
(342, 61, '_wp_trash_meta_time', '1512390922'),
(343, 61, '_wp_desired_post_slug', 'post-office-money-2'),
(344, 67, '_thumbnail_id', '50'),
(345, 67, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(347, 67, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(348, 67, 'WDC_about_provider_url', 'rsHMSZ4JZT0'),
(349, 67, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(350, 67, 'WDC_faq_cat', '4'),
(351, 67, 'WDC_provider_intro', '<p><img class=\"aligncenter size-full wp-image-62\" src=\"//localhost:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000/jtm/wp-content/uploads/2017/12/intro-placeholder.png\" alt=\"\" width=\"472\" height=\"266\" /></p>\n'),
(353, 67, 'WDC_provider_video_id', 'rsHMSZ4JZT0'),
(354, 67, '_dp_original', '52'),
(355, 68, '_thumbnail_id', '50'),
(356, 68, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(357, 68, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(358, 68, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(359, 68, 'WDC_about_provider_url', 'rsHMSZ4JZT0'),
(360, 68, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(361, 68, 'WDC_faq_cat', '4'),
(362, 68, 'WDC_provider_intro', '<p><img class=\"aligncenter size-full wp-image-62\" src=\"//localhost:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000/jtm/wp-content/uploads/2017/12/intro-placeholder.png\" alt=\"\" width=\"472\" height=\"266\" /></p>\n'),
(363, 68, 'WDC_provider_logo', '53'),
(364, 68, 'WDC_provider_video_id', 'rsHMSZ4JZT0'),
(365, 68, '_dp_original', '52'),
(366, 69, '_thumbnail_id', '50'),
(367, 69, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(368, 69, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(369, 69, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(370, 69, 'WDC_about_provider_url', 'rsHMSZ4JZT0'),
(371, 69, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(372, 69, 'WDC_faq_cat', '4'),
(373, 69, 'WDC_provider_intro', '<p><img class=\"aligncenter size-full wp-image-62\" src=\"//localhost:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000/jtm/wp-content/uploads/2017/12/intro-placeholder.png\" alt=\"\" width=\"472\" height=\"266\" /></p>\n'),
(374, 69, 'WDC_provider_logo', '53'),
(375, 69, 'WDC_provider_video_id', 'rsHMSZ4JZT0'),
(376, 69, '_dp_original', '52'),
(377, 70, '_thumbnail_id', '50'),
(378, 70, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(379, 70, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(380, 70, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(381, 70, 'WDC_about_provider_url', 'rsHMSZ4JZT0'),
(382, 70, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(383, 70, 'WDC_faq_cat', '4'),
(384, 70, 'WDC_provider_intro', '<p><img class=\"aligncenter size-full wp-image-62\" src=\"//localhost:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000/jtm/wp-content/uploads/2017/12/intro-placeholder.png\" alt=\"\" width=\"472\" height=\"266\" /></p>\n'),
(385, 70, 'WDC_provider_logo', '53'),
(386, 70, 'WDC_provider_video_id', 'rsHMSZ4JZT0'),
(387, 70, '_dp_original', '52'),
(388, 71, '_thumbnail_id', '50'),
(389, 71, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(390, 71, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(391, 71, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(392, 71, 'WDC_about_provider_url', 'rsHMSZ4JZT0'),
(393, 71, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(394, 71, 'WDC_faq_cat', '4'),
(395, 71, 'WDC_provider_intro', '<p><img class=\"aligncenter size-full wp-image-62\" src=\"//localhost:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000/jtm/wp-content/uploads/2017/12/intro-placeholder.png\" alt=\"\" width=\"472\" height=\"266\" /></p>\n'),
(396, 71, 'WDC_provider_logo', '53'),
(397, 71, 'WDC_provider_video_id', 'rsHMSZ4JZT0'),
(398, 71, '_dp_original', '52'),
(399, 72, '_thumbnail_id', '50'),
(400, 72, 'WDC_provider_hero_content', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis<br />\nmetus eget sagittis. Quisque iaculis, nibh et</p>\n'),
(402, 72, 'WDC_about_provider', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum venenatis metus eget sagittis. Quisque iaculis, nibh et mattis ultricies, risus dui dictum quam, nec consectetur velit neque et est.</p>\n<p>Maecenas congue justo nec sodales porttitor. Pellentesque gravida, ipsum at pharetra commodo, eros quam aliquam odio, sed eleifend quam dolor sit amet magna. Aenean sed augue augue.</p>\n'),
(403, 72, 'WDC_about_provider_url', 'rsHMSZ4JZT0'),
(404, 72, 'WDC_provider_fact_box', '<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Delivery / Collection</p>\n<ul>\n<li>Home delivery only for card holders</li>\n<li>Reserve &amp; Collect for everybody</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n<p>Currency Collection</p>\n<ul>\n<li>120 collection locations nationally</li>\n</ul>\n'),
(405, 72, 'WDC_faq_cat', '4'),
(406, 72, 'WDC_provider_intro', '<p><img class=\"aligncenter size-full wp-image-62\" src=\"//localhost:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000:3000/jtm/wp-content/uploads/2017/12/intro-placeholder.png\" alt=\"\" width=\"472\" height=\"266\" /></p>\n'),
(408, 72, 'WDC_provider_video_id', 'rsHMSZ4JZT0'),
(409, 72, '_dp_original', '52'),
(410, 72, '_wp_old_slug', 'post-office-money'),
(411, 71, '_wp_old_slug', 'post-office-money'),
(412, 70, '_wp_old_slug', 'post-office-money'),
(413, 69, '_wp_old_slug', 'post-office-money'),
(414, 68, '_wp_old_slug', 'post-office-money'),
(415, 67, '_wp_old_slug', 'post-office-money'),
(416, 72, '_edit_lock', '1512391012:1'),
(417, 67, '_edit_lock', '1512561558:2'),
(418, 67, '_edit_last', '1'),
(419, 72, '_edit_last', '1'),
(421, 72, 'WDC_provider_logo', '53'),
(422, 67, 'WDC_provider_hero_title', 'Post Office Travel Money'),
(424, 74, '_menu_item_type', 'custom'),
(425, 74, '_menu_item_menu_item_parent', '0'),
(426, 74, '_menu_item_object_id', '74'),
(427, 74, '_menu_item_object', 'custom'),
(428, 74, '_menu_item_target', ''),
(429, 74, '_menu_item_classes', 'a:1:{i:0;s:16:\"open-offer-popup\";}'),
(430, 74, '_menu_item_xfn', ''),
(431, 74, '_menu_item_url', '#'),
(433, 75, '_edit_last', '2'),
(434, 75, '_edit_lock', '1512584723:2'),
(435, 75, 'WDC_offer_expiry', '2017-12-22'),
(436, 75, 'WDC_offer_copy', '<h3>Get special delivery on your currency for<br />\nFREE with no mimimum order amount</h3>\n<p>Exclusive to JustTravelMoney</p>\n'),
(438, 75, 'WDC_offer_provider', '52'),
(439, 75, 'WDC_offer_desc', 'a:2:{i:0;s:17:\"Time Limited Deal\";i:1;s:16:\"Expires 22/12/17\";}'),
(440, 75, 'WDC_offer_active', '1'),
(446, 75, 'WDC_highlight_copy', '<p>Delivery<br />\n<strong>FREE</strong></p>\n'),
(447, 76, '_wp_attached_file', '2017/11/754610743371594.jpeg'),
(448, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:468;s:4:\"file\";s:28:\"2017/11/754610743371594.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"754610743371594-160x125.jpeg\";s:5:\"width\";i:160;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"754610743371594-315x250.jpeg\";s:5:\"width\";i:315;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(450, 30, 'WDC_post_hero_image', '50'),
(451, 67, 'WDC_provider_logo', '53'),
(454, 79, '_wp_attached_file', '2017/12/754610743371594.jpeg'),
(455, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:468;s:4:\"file\";s:28:\"2017/12/754610743371594.jpeg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"754610743371594-160x125.jpeg\";s:5:\"width\";i:160;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"754610743371594-315x250.jpeg\";s:5:\"width\";i:315;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(456, 81, '_menu_item_type', 'post_type'),
(457, 81, '_menu_item_menu_item_parent', '0'),
(458, 81, '_menu_item_object_id', '6'),
(459, 81, '_menu_item_object', 'page'),
(460, 81, '_menu_item_target', ''),
(461, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(462, 81, '_menu_item_xfn', ''),
(463, 81, '_menu_item_url', ''),
(465, 82, '_menu_item_type', 'post_type'),
(466, 82, '_menu_item_menu_item_parent', '0'),
(467, 82, '_menu_item_object_id', '8'),
(468, 82, '_menu_item_object', 'page'),
(469, 82, '_menu_item_target', ''),
(470, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(471, 82, '_menu_item_xfn', ''),
(472, 82, '_menu_item_url', ''),
(474, 83, '_menu_item_type', 'post_type'),
(475, 83, '_menu_item_menu_item_parent', '0'),
(476, 83, '_menu_item_object_id', '10'),
(477, 83, '_menu_item_object', 'page'),
(478, 83, '_menu_item_target', ''),
(479, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(480, 83, '_menu_item_xfn', ''),
(481, 83, '_menu_item_url', ''),
(483, 84, '_menu_item_type', 'post_type'),
(484, 84, '_menu_item_menu_item_parent', '0'),
(485, 84, '_menu_item_object_id', '12'),
(486, 84, '_menu_item_object', 'page'),
(487, 84, '_menu_item_target', ''),
(488, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(489, 84, '_menu_item_xfn', ''),
(490, 84, '_menu_item_url', ''),
(492, 85, '_menu_item_type', 'post_type'),
(493, 85, '_menu_item_menu_item_parent', '0'),
(494, 85, '_menu_item_object_id', '14'),
(495, 85, '_menu_item_object', 'page'),
(496, 85, '_menu_item_target', ''),
(497, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(498, 85, '_menu_item_xfn', ''),
(499, 85, '_menu_item_url', ''),
(501, 88, '_edit_lock', '1512562287:2'),
(502, 89, '_form', '[text* your-name placeholder \"Name\"]\n\n[email* your-email placeholder \"Email Address\"]\n\n[text your-reason placeholder \"Reason For Contacting Us\"]\n\n[textarea your-message]\n\n[submit class:btn class:btn-primary \"Send\"]'),
(503, 89, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:19:\"New Website Enquiry\";s:6:\"sender\";s:39:\"JustTravelMoney <wordpress@demo.wdc.me>\";s:9:\"recipient\";s:27:\"hello@justtravelmoney.co.uk\";s:4:\"body\";s:174:\"From: [your-name] <[your-email]>\nReason: [your-reason]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on JustTravelMoney (http://demo.wdc.me/jtm)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(504, 89, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"JustTravelMoney \"[your-subject]\"\";s:6:\"sender\";s:39:\"JustTravelMoney <wordpress@demo.wdc.me>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:118:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on JustTravelMoney (http://demo.wdc.me/jtm)\";s:18:\"additional_headers\";s:38:\"Reply-To: stefan.vasiljevic@toptal.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(505, 89, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(506, 89, '_additional_settings', ''),
(507, 89, '_locale', 'en_US'),
(508, 14, '_thumbnail_id', '50'),
(509, 14, '_wp_page_template', 'template-contact.php'),
(510, 14, 'WDC_page_hero_title', 'Contact Us'),
(511, 14, 'WDC_quick_links', '<p>Contact Us Directly</p>\n<ul>\n<li><a href=\"mailto:hello@justtravelmoney.co.uk\">hello@justtravelmoney.co.uk</a></li>\n</ul>\n<p>Connect With Us On Social Media</p>\n<ul>\n<li><a href=\"#\">Facebook</a></li>\n<li><a href=\"#\">Twitter</a></li>\n<li><a href=\"#\">Youtube</a></li>\n</ul>\n<p>Write to us</p>\n<ul>\n<li>JustMoneySaving Ltd, International House, 142 Cromwell Road, SW7 4EF</li>\n</ul>\n'),
(512, 6, 'hero_logos', 'a:5:{i:0;a:2:{s:13:\"WDC_hero_logo\";a:1:{i:0;s:2:\"41\";}s:17:\"WDC_hero_logo_url\";s:1:\"#\";}i:1;a:2:{s:13:\"WDC_hero_logo\";a:1:{i:0;s:2:\"43\";}s:17:\"WDC_hero_logo_url\";s:1:\"#\";}i:2;a:2:{s:13:\"WDC_hero_logo\";a:1:{i:0;s:2:\"40\";}s:17:\"WDC_hero_logo_url\";s:1:\"#\";}i:3;a:2:{s:13:\"WDC_hero_logo\";a:1:{i:0;s:2:\"42\";}s:17:\"WDC_hero_logo_url\";s:1:\"#\";}i:4;a:2:{s:13:\"WDC_hero_logo\";a:1:{i:0;s:2:\"44\";}s:17:\"WDC_hero_logo_url\";s:1:\"#\";}}'),
(513, 6, 'WDC_hero_logos', '41'),
(514, 6, 'WDC_hero_logos', '43'),
(515, 6, 'WDC_hero_logos', '40'),
(516, 6, 'WDC_hero_logos', '42'),
(517, 6, 'WDC_hero_logos', '44'),
(518, 92, '_edit_lock', '1512578445:1'),
(519, 92, '_edit_last', '1'),
(521, 94, '_edit_lock', '1512578453:1'),
(522, 94, '_edit_last', '1'),
(524, 96, '_edit_lock', '1512578464:1'),
(525, 96, '_edit_last', '1'),
(581, 104, '_edit_last', '2'),
(583, 104, '_edit_lock', '1512585274:2'),
(584, 106, '_edit_last', '2'),
(586, 106, '_edit_lock', '1512585281:2'),
(587, 108, '_edit_last', '2'),
(589, 108, '_edit_lock', '1512585292:2'),
(590, 110, '_edit_last', '2'),
(592, 110, '_edit_lock', '1512585300:2'),
(593, 112, '_edit_lock', '1512585307:2'),
(594, 112, '_edit_last', '2'),
(596, 114, '_edit_lock', '1512679826:1'),
(597, 114, '_edit_last', '1'),
(598, 114, 'WDC_currenct_name', 'Euro'),
(600, 114, 'guide_section', 'a:3:{i:0;a:2:{s:17:\"WDC_section_title\";s:9:\"Section 1\";s:19:\"WDC_section_content\";s:430:\"<img class=\"alignnone size-full wp-image-51\" src=\"http://demo.wdc.me/jtm/wp-content/uploads/2017/11/blog-placeholder.png\" alt=\"\" width=\"158\" height=\"123\" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.\";}i:1;a:2:{s:17:\"WDC_section_title\";s:9:\"Section 2\";s:19:\"WDC_section_content\";s:430:\"<img class=\"size-full wp-image-51 alignleft\" src=\"http://demo.wdc.me/jtm/wp-content/uploads/2017/11/blog-placeholder.png\" alt=\"\" width=\"158\" height=\"123\" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.\";}i:2;a:2:{s:17:\"WDC_section_title\";s:9:\"Section 3\";s:19:\"WDC_section_content\";s:430:\"<img class=\"size-full wp-image-51 alignleft\" src=\"http://demo.wdc.me/jtm/wp-content/uploads/2017/11/blog-placeholder.png\" alt=\"\" width=\"158\" height=\"123\" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.\";}}'),
(601, 114, 'guide_sidebar', 'a:3:{i:0;a:2:{s:17:\"WDC_sidebar_title\";s:24:\"Countries Using The Euro\";s:19:\"WDC_sidebar_content\";s:179:\"Contact Us Directly\r\n<ul>\r\n 	<li>hello@justtravelmoney.co.uk</li>\r\n</ul>\r\nWhat Countries Use The Euro Currency?\r\n<ul>\r\n 	<li>Spain</li>\r\n 	<li>Italy</li>\r\n 	<li>France</li>\r\n</ul>\";}i:1;a:2:{s:17:\"WDC_sidebar_title\";s:26:\"Latest Euro Exchange Rates\";s:19:\"WDC_sidebar_content\";s:11:\"Lorem ipsum\";}i:2;a:2:{s:17:\"WDC_sidebar_title\";s:26:\"Useful Europe Travel Links\";s:19:\"WDC_sidebar_content\";s:310:\"Contact Us Directly\r\n<ul>\r\n 	<li><a href=\"#\">www.example.com</a></li>\r\n</ul>\r\nContact Us Directly\r\n<ul>\r\n 	<li><a href=\"#\">www.example.com</a></li>\r\n</ul>\r\nContact Us Directly\r\n<ul>\r\n 	<li><a href=\"#\">www.example.com</a></li>\r\n</ul>\r\nContact Us Directly\r\n<ul>\r\n 	<li><a href=\"#\">www.example.com</a></li>\r\n</ul>\";}}'),
(602, 114, '_thumbnail_id', '50'),
(603, 115, '_menu_item_type', 'post_type'),
(604, 115, '_menu_item_menu_item_parent', '19'),
(605, 115, '_menu_item_object_id', '114'),
(606, 115, '_menu_item_object', 'currency-guides'),
(607, 115, '_menu_item_target', '');
INSERT INTO `4ewLHnA_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(608, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(609, 115, '_menu_item_xfn', ''),
(610, 115, '_menu_item_url', ''),
(612, 116, '_menu_item_type', 'post_type'),
(613, 116, '_menu_item_menu_item_parent', '83'),
(614, 116, '_menu_item_object_id', '114'),
(615, 116, '_menu_item_object', 'currency-guides'),
(616, 116, '_menu_item_target', ''),
(617, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(618, 116, '_menu_item_xfn', ''),
(619, 116, '_menu_item_url', ''),
(621, 117, '_wp_attached_file', '2017/12/flag_yellow_low.jpg'),
(622, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:401;s:4:\"file\";s:27:\"2017/12/flag_yellow_low.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"flag_yellow_low-160x125.jpg\";s:5:\"width\";i:160;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"flag_yellow_low-320x214.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(623, 114, '_wp_old_slug', 'buy-euro-online'),
(624, 114, 'WDC_currency_logo', '117');

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_posts`
--

CREATE TABLE `4ewLHnA_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `4ewLHnA_posts`
--

INSERT INTO `4ewLHnA_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2017-11-28 09:10:23', '2017-11-28 09:10:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-06 16:41:33', '2017-12-06 16:41:33', '', 0, 'http://demo.wdc.me/jtm/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-11-28 09:10:23', '2017-11-28 09:10:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-28 09:10:23', '2017-11-28 09:10:23', '', 6, 'http://demo.wdc.me/jtm/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-11-28 09:10:43', '2017-11-28 09:10:43', '', 'Travel Money Providers', '', 'publish', 'closed', 'closed', '', 'travel-money-providers', '', '', '2017-11-28 09:10:43', '2017-11-28 09:10:43', '', 0, 'http://demo.wdc.me/jtm/?page_id=8', 1, 'page', '', 0),
(9, 1, '2017-11-28 09:10:43', '2017-11-28 09:10:43', '', 'Travel Money Providers', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-11-28 09:10:43', '2017-11-28 09:10:43', '', 8, 'http://demo.wdc.me/jtm/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-11-28 09:10:53', '2017-11-28 09:10:53', '', 'Currency Guides', '', 'publish', 'closed', 'closed', '', 'currency-guides', '', '', '2017-11-28 09:10:53', '2017-11-28 09:10:53', '', 0, 'http://demo.wdc.me/jtm/?page_id=10', 2, 'page', '', 0),
(11, 1, '2017-11-28 09:10:53', '2017-11-28 09:10:53', '', 'Currency Guides', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-11-28 09:10:53', '2017-11-28 09:10:53', '', 10, 'http://demo.wdc.me/jtm/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-11-28 09:11:10', '2017-11-28 09:11:10', '', 'Advice & Tips', '', 'publish', 'closed', 'closed', '', 'advice-tips', '', '', '2017-11-30 11:41:52', '2017-11-30 11:41:52', '', 0, 'http://demo.wdc.me/jtm/?page_id=12', 3, 'page', '', 0),
(13, 1, '2017-11-28 09:11:10', '2017-11-28 09:11:10', '', 'Advice & Tips', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-11-28 09:11:10', '2017-11-28 09:11:10', '', 12, 'http://demo.wdc.me/jtm/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-11-28 09:11:32', '2017-11-28 09:11:32', '<img class=\"alignleft size-full wp-image-51\" src=\"http://demo.wdc.me/jtm/wp-content/uploads/2017/11/blog-placeholder.png\" alt=\"\" width=\"158\" height=\"123\" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.\r\n\r\n[contact-form-7 id=\"89\" title=\"Contact form\"]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-12-06 15:15:46', '2017-12-06 15:15:46', '', 0, 'http://demo.wdc.me/jtm/?page_id=14', 4, 'page', '', 0),
(15, 1, '2017-11-28 09:11:32', '2017-11-28 09:11:32', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-11-28 09:11:32', '2017-11-28 09:11:32', '', 14, 'http://demo.wdc.me/jtm/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-11-28 10:09:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-28 10:09:40', '0000-00-00 00:00:00', '', 0, 'http://demo.wdc.me/jtm/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2017-11-28 10:09:54', '2017-11-28 10:09:54', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2017-12-07 20:49:25', '2017-12-07 20:49:25', '', 0, 'http://demo.wdc.me/jtm/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2017-11-28 10:09:54', '2017-11-28 10:09:54', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2017-12-07 20:49:25', '2017-12-07 20:49:25', '', 0, 'http://demo.wdc.me/jtm/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2017-11-28 10:09:54', '2017-11-28 10:09:54', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2017-12-07 20:49:25', '2017-12-07 20:49:25', '', 0, 'http://demo.wdc.me/jtm/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2017-11-28 10:09:54', '2017-11-28 10:09:54', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2017-12-07 20:49:25', '2017-12-07 20:49:25', '', 0, 'http://demo.wdc.me/jtm/?p=20', 5, 'nav_menu_item', '', 0),
(21, 1, '2017-11-28 10:09:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-28 10:09:40', '0000-00-00 00:00:00', '', 0, 'http://demo.wdc.me/jtm/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2017-11-28 15:11:12', '2017-11-28 15:11:12', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2017-11-28 15:11:12', '2017-11-28 15:11:12', '', 0, 'http://demo.wdc.me/jtm/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2017-11-28 15:11:12', '2017-11-28 15:11:12', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-11-28 15:11:12', '2017-11-28 15:11:12', '', 0, 'http://demo.wdc.me/jtm/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2017-11-28 15:11:12', '2017-11-28 15:11:12', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-11-28 15:11:12', '2017-11-28 15:11:12', '', 0, 'http://demo.wdc.me/jtm/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2017-11-28 15:11:12', '2017-11-28 15:11:12', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-11-28 15:11:12', '2017-11-28 15:11:12', '', 0, 'http://demo.wdc.me/jtm/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2017-11-29 13:57:07', '2017-11-29 13:57:07', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'How Do Find The Best Exchange Rate', '', 'publish', 'closed', 'closed', '', 'how-do-find-the-best-exchange-rate', '', '', '2017-11-29 13:58:36', '2017-11-29 13:58:36', '', 0, 'http://demo.wdc.me/jtm/?p=26', 0, 'post', '', 0),
(27, 1, '2017-11-29 13:57:07', '2017-11-29 13:57:07', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'How Do Find The Best Exchange Rate', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-11-29 13:57:07', '2017-11-29 13:57:07', '', 26, 'http://demo.wdc.me/jtm/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-11-29 13:57:24', '2017-11-29 13:57:24', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'The Top 10 Ways To Save On Travel Money', '', 'publish', 'closed', 'closed', '', 'the-top-10-ways-to-save-on-travel-money', '', '', '2017-11-29 13:58:36', '2017-11-29 13:58:36', '', 0, 'http://demo.wdc.me/jtm/?p=28', 0, 'post', '', 0),
(29, 1, '2017-11-29 13:57:24', '2017-11-29 13:57:24', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'The Top 10 Ways To Save On Travel Money', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-11-29 13:57:24', '2017-11-29 13:57:24', '', 28, 'http://demo.wdc.me/jtm/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-11-29 13:58:36', '2017-11-29 13:58:36', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'How Do Find The Best Exchange Rate', '', 'publish', 'closed', 'closed', '', 'how-do-find-the-best-exchange-rate-3', '', '', '2017-12-04 21:56:43', '2017-12-04 21:56:43', '', 0, 'http://demo.wdc.me/jtm/?p=30', 0, 'post', '', 0),
(31, 1, '2017-11-29 13:58:36', '2017-11-29 13:58:36', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'The Top 10 Ways To Save On Travel Money', '', 'publish', 'closed', 'closed', '', 'the-top-10-ways-to-save-on-travel-money-3', '', '', '2017-11-30 13:47:16', '2017-11-30 13:47:16', '', 0, 'http://demo.wdc.me/jtm/?p=31', 0, 'post', '', 0),
(32, 1, '2017-11-29 13:58:36', '2017-11-29 13:58:36', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'How Do Find The Best Exchange Rate', '', 'publish', 'closed', 'closed', '', 'how-do-find-the-best-exchange-rate-2', '', '', '2017-11-29 13:58:36', '2017-11-29 13:58:36', '', 0, 'http://demo.wdc.me/jtm/?p=32', 0, 'post', '', 0),
(33, 1, '2017-11-29 13:58:36', '2017-11-29 13:58:36', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'The Top 10 Ways To Save On Travel Money', '', 'publish', 'closed', 'closed', '', 'the-top-10-ways-to-save-on-travel-money-2', '', '', '2017-11-29 13:58:36', '2017-11-29 13:58:36', '', 0, 'http://demo.wdc.me/jtm/?p=33', 0, 'post', '', 0),
(34, 1, '2017-11-29 13:58:36', '2017-11-29 13:58:36', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'The Top 10 Ways To Save On Travel Money', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-11-29 13:58:36', '2017-11-29 13:58:36', '', 33, 'http://demo.wdc.me/jtm/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-11-29 13:58:36', '2017-11-29 13:58:36', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'How Do Find The Best Exchange Rate', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-29 13:58:36', '2017-11-29 13:58:36', '', 32, 'http://demo.wdc.me/jtm/32-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-11-29 13:58:36', '2017-11-29 13:58:36', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'The Top 10 Ways To Save On Travel Money', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-11-29 13:58:36', '2017-11-29 13:58:36', '', 31, 'http://demo.wdc.me/jtm/31-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-11-29 13:58:36', '2017-11-29 13:58:36', '<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante. </span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>\r\n<p class=\"p1\"><span class=\"s1\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'How Do Find The Best Exchange Rate', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-11-29 13:58:36', '2017-11-29 13:58:36', '', 30, 'http://demo.wdc.me/jtm/30-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-11-29 15:49:19', '2017-11-29 15:49:19', '', 'home-box-image', '', 'inherit', 'closed', 'closed', '', 'home-box-image', '', '', '2017-11-29 15:49:19', '2017-11-29 15:49:19', '', 6, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/home-box-image.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2017-11-29 16:33:42', '2017-11-29 16:33:42', '', 'homepage-hero', '', 'inherit', 'closed', 'closed', '', 'homepage-hero', '', '', '2017-11-29 16:33:42', '2017-11-29 16:33:42', '', 6, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/homepage-hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2017-11-29 17:31:19', '2017-11-29 17:31:19', '', 'asda-money', '', 'inherit', 'closed', 'closed', '', 'asda-money', '', '', '2017-11-29 17:31:19', '2017-11-29 17:31:19', '', 6, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/asda-money.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2017-11-29 17:31:19', '2017-11-29 17:31:19', '', 'post-money', '', 'inherit', 'closed', 'closed', '', 'post-money', '', '', '2017-11-29 17:31:19', '2017-11-29 17:31:19', '', 6, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/post-money.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2017-11-29 17:31:20', '2017-11-29 17:31:20', '', 'tesco-bank', '', 'inherit', 'closed', 'closed', '', 'tesco-bank', '', '', '2017-11-29 17:31:20', '2017-11-29 17:31:20', '', 6, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/tesco-bank.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2017-11-29 17:31:21', '2017-11-29 17:31:21', '', 'thomas-cook-money', '', 'inherit', 'closed', 'closed', '', 'thomas-cook-money', '', '', '2017-11-29 17:31:21', '2017-11-29 17:31:21', '', 6, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/thomas-cook-money.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2017-11-29 17:31:21', '2017-11-29 17:31:21', '', 'travelex', '', 'inherit', 'closed', 'closed', '', 'travelex', '', '', '2017-11-29 17:31:21', '2017-11-29 17:31:21', '', 6, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/travelex.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2017-11-30 11:41:48', '2017-11-30 11:41:48', '', 'hero-placeholder', '', 'inherit', 'closed', 'closed', '', 'hero-placeholder', '', '', '2017-11-30 11:41:48', '2017-11-30 11:41:48', '', 12, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/hero-placeholder.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2017-11-30 13:35:23', '2017-11-30 13:35:23', '', 'blog-placeholder', '', 'inherit', 'closed', 'closed', '', 'blog-placeholder', '', '', '2017-11-30 13:35:23', '2017-11-30 13:35:23', '', 30, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/blog-placeholder.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2017-12-01 11:45:14', '2017-12-01 11:45:14', '[wdc_money_guide number=\"1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"2\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"3\" title=\"Better Exchange Rate Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"4\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"5\" title=\"Avoid Frustration Tip\" bg_color=\"#FDD7D7\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/avoid-frustration.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]', 'Post Office Money', '', 'publish', 'closed', 'closed', '', 'post-office-money', '', '', '2017-12-04 12:35:47', '2017-12-04 12:35:47', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=52', 0, 'providers', '', 0),
(53, 1, '2017-12-01 14:22:05', '2017-12-01 14:22:05', '', 'post-money', '', 'inherit', 'closed', 'closed', '', 'post-money-2', '', '', '2017-12-01 14:22:05', '2017-12-01 14:22:05', '', 52, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/12/post-money.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2017-12-01 16:44:42', '2017-12-01 16:44:42', '<p class=\"p1\"><span class=\"s1\">adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'Lorem ipsum dolor sit amet, consectetur', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-dolor-sit-amet-consectetur', '', '', '2017-12-01 16:44:42', '2017-12-01 16:44:42', '', 0, 'http://demo.wdc.me/jtm/?post_type=faqs&#038;p=54', 0, 'faqs', '', 0),
(55, 1, '2017-12-01 16:44:56', '2017-12-01 16:44:56', '<p class=\"p1\"><span class=\"s1\">adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.</span></p>', 'Lorem ipsum dolor sit amet, consectetur', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-dolor-sit-amet-consectetur-2', '', '', '2017-12-01 16:44:56', '2017-12-01 16:44:56', '', 0, 'http://demo.wdc.me/jtm/?post_type=faqs&#038;p=55', 0, 'faqs', '', 0),
(56, 1, '2017-12-01 17:51:26', '2017-12-01 17:51:26', '', 'Post Office Money', '', 'trash', 'closed', 'closed', '', 'post-office-money-7__trashed', '', '', '2017-12-04 12:35:22', '2017-12-04 12:35:22', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=56', 0, 'providers', '', 0),
(57, 1, '2017-12-01 17:51:26', '2017-12-01 17:51:26', '', 'Post Office Money', '', 'trash', 'closed', 'closed', '', 'post-office-money-6__trashed', '', '', '2017-12-04 12:35:22', '2017-12-04 12:35:22', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=57', 0, 'providers', '', 0),
(58, 1, '2017-12-01 17:51:26', '2017-12-01 17:51:26', '', 'Post Office Money', '', 'trash', 'closed', 'closed', '', 'post-office-money-5__trashed', '', '', '2017-12-04 12:35:22', '2017-12-04 12:35:22', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=58', 0, 'providers', '', 0),
(59, 1, '2017-12-01 17:51:26', '2017-12-01 17:51:26', '', 'Post Office Money', '', 'trash', 'closed', 'closed', '', 'post-office-money-4__trashed', '', '', '2017-12-04 12:35:22', '2017-12-04 12:35:22', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=59', 0, 'providers', '', 0),
(60, 1, '2017-12-01 17:51:26', '2017-12-01 17:51:26', '', 'Post Office Money', '', 'trash', 'closed', 'closed', '', 'post-office-money-3__trashed', '', '', '2017-12-04 12:35:22', '2017-12-04 12:35:22', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=60', 0, 'providers', '', 0),
(61, 1, '2017-12-01 17:51:26', '2017-12-01 17:51:26', '', 'Post Office Money', '', 'trash', 'closed', 'closed', '', 'post-office-money-2__trashed', '', '', '2017-12-04 12:35:22', '2017-12-04 12:35:22', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=61', 0, 'providers', '', 0),
(62, 1, '2017-12-04 11:16:25', '2017-12-04 11:16:25', '', 'intro-placeholder', '', 'inherit', 'closed', 'closed', '', 'intro-placeholder', '', '', '2017-12-04 11:16:25', '2017-12-04 11:16:25', '', 52, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/12/intro-placeholder.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2017-12-04 11:45:07', '2017-12-04 11:45:07', '', 'travel-money-guide', '', 'inherit', 'closed', 'closed', '', 'travel-money-guide', '', '', '2017-12-04 11:45:07', '2017-12-04 11:45:07', '', 52, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/12/travel-money-guide.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2017-12-04 12:15:30', '2017-12-04 12:15:30', '[wdc_money_guide number=\"1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\n\n[wdc_money_guide number=\"2\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\n\n[wdc_money_guide number=\"3\" title=\"Better Exchange Rate Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\n\n[wdc_money_guide number=\"4\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\n\n[wdc_money_guide number=\"5\" title=\"Avoid Frustration Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\n', 'Post Office Money', '', 'inherit', 'closed', 'closed', '', '52-autosave-v1', '', '', '2017-12-04 12:15:30', '2017-12-04 12:15:30', '', 52, 'http://demo.wdc.me/jtm/52-autosave-v1/', 0, 'revision', '', 0),
(65, 1, '2017-12-04 12:14:13', '2017-12-04 12:14:13', '', 'exchange-tip-icon', '', 'inherit', 'closed', 'closed', '', 'exchange-tip-icon', '', '', '2017-12-04 12:14:13', '2017-12-04 12:14:13', '', 52, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2017-12-04 12:27:44', '2017-12-04 12:27:44', '', 'avoid-frustration', '', 'inherit', 'closed', 'closed', '', 'avoid-frustration', '', '', '2017-12-04 12:27:44', '2017-12-04 12:27:44', '', 52, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/12/avoid-frustration.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2017-12-04 12:35:47', '2017-12-04 12:35:47', '[wdc_money_guide number=\"1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"2\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"3\" title=\"Better Exchange Rate Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"4\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"5\" title=\"Avoid Frustration Tip\" bg_color=\"#FDD7D7\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/avoid-frustration.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]', 'Post Office Money', '', 'publish', 'closed', 'closed', '', 'post-office-money-7', '', '', '2017-12-05 10:45:03', '2017-12-05 10:45:03', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=67', 0, 'providers', '', 0),
(68, 1, '2017-12-04 12:35:47', '2017-12-04 12:35:47', '[wdc_money_guide number=\"1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"2\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"3\" title=\"Better Exchange Rate Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"4\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"5\" title=\"Avoid Frustration Tip\" bg_color=\"#FDD7D7\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/avoid-frustration.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]', 'Post Office Money', '', 'publish', 'closed', 'closed', '', 'post-office-money-6', '', '', '2017-12-04 12:35:47', '2017-12-04 12:35:47', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=68', 0, 'providers', '', 0),
(69, 1, '2017-12-04 12:35:47', '2017-12-04 12:35:47', '[wdc_money_guide number=\"1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"2\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"3\" title=\"Better Exchange Rate Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"4\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"5\" title=\"Avoid Frustration Tip\" bg_color=\"#FDD7D7\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/avoid-frustration.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]', 'Post Office Money', '', 'publish', 'closed', 'closed', '', 'post-office-money-5', '', '', '2017-12-04 12:35:47', '2017-12-04 12:35:47', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=69', 0, 'providers', '', 0),
(70, 1, '2017-12-04 12:35:47', '2017-12-04 12:35:47', '[wdc_money_guide number=\"1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"2\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"3\" title=\"Better Exchange Rate Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"4\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"5\" title=\"Avoid Frustration Tip\" bg_color=\"#FDD7D7\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/avoid-frustration.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]', 'Post Office Money', '', 'publish', 'closed', 'closed', '', 'post-office-money-4', '', '', '2017-12-04 12:35:47', '2017-12-04 12:35:47', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=70', 0, 'providers', '', 0),
(71, 1, '2017-12-04 12:35:47', '2017-12-04 12:35:47', '[wdc_money_guide number=\"1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"2\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"3\" title=\"Better Exchange Rate Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"4\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"5\" title=\"Avoid Frustration Tip\" bg_color=\"#FDD7D7\" icon=\"//localhost:3000/jtm/wp-content/uploads/2017/12/avoid-frustration.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]', 'Post Office Money', '', 'publish', 'closed', 'closed', '', 'post-office-money-3', '', '', '2017-12-04 12:35:47', '2017-12-04 12:35:47', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=71', 0, 'providers', '', 0),
(72, 1, '2017-12-04 12:35:47', '2017-12-04 12:35:47', '[wdc_money_guide number=\"1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"2\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"3\" title=\"Better Exchange Rate Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"4\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\r\n\r\n[wdc_money_guide number=\"5\" title=\"Avoid Frustration Tip\" bg_color=\"#FDD7D7\" icon=\"//localhost:3000:3000/jtm/wp-content/uploads/2017/12/avoid-frustration.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]', 'Post Office Money', '', 'publish', 'closed', 'closed', '', 'post-office-money-2', '', '', '2017-12-04 12:39:10', '2017-12-04 12:39:10', '', 0, 'http://demo.wdc.me/jtm/?post_type=providers&#038;p=72', 0, 'providers', '', 0);
INSERT INTO `4ewLHnA_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(73, 1, '2017-12-04 12:38:26', '2017-12-04 12:38:26', '[wdc_money_guide number=\"1\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\n\n[wdc_money_guide number=\"2\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\n\n[wdc_money_guide number=\"3\" title=\"Better Exchange Rate Tip\" bg_color=\"#DAFFD4\" icon=\"//localhost:3000:3000/jtm/wp-content/uploads/2017/12/exchange-tip-icon.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\n\n[wdc_money_guide number=\"4\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]\n\n[wdc_money_guide number=\"5\" title=\"Avoid Frustration Tip\" bg_color=\"#FDD7D7\" icon=\"//localhost:3000:3000/jtm/wp-content/uploads/2017/12/avoid-frustration.png\"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.[/wdc_money_guide]', 'Post Office Money', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2017-12-04 12:38:26', '2017-12-04 12:38:26', '', 72, 'http://demo.wdc.me/jtm/72-autosave-v1/', 0, 'revision', '', 0),
(74, 1, '2017-12-04 12:48:10', '2017-12-04 12:48:10', '', 'Special Offer!', '', 'publish', 'closed', 'closed', '', 'special-offer', '', '', '2017-12-04 14:02:02', '2017-12-04 14:02:02', '', 0, 'http://demo.wdc.me/jtm/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2017-12-04 14:50:24', '2017-12-04 14:50:24', '', 'Expires 22/12/17', '', 'publish', 'closed', 'closed', '', 'expires-22-12-17', '', '', '2017-12-06 18:18:29', '2017-12-06 18:18:29', '', 0, 'http://demo.wdc.me/jtm/?post_type=special-offers&#038;p=75', 0, 'special-offers', '', 0),
(76, 1, '2017-12-04 21:56:40', '2017-12-04 21:56:40', '', '754610743371594', '', 'inherit', 'closed', 'closed', '', '754610743371594', '', '', '2017-12-04 21:56:40', '2017-12-04 21:56:40', '', 30, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/11/754610743371594.jpeg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2017-12-05 12:16:26', '2017-12-05 12:16:26', 'hjkhkjhkjh', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-05 12:16:26', '2017-12-05 12:16:26', '', 14, 'http://demo.wdc.me/jtm/14-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-12-05 12:19:52', '2017-12-05 12:19:52', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-05 12:19:52', '2017-12-05 12:19:52', '', 14, 'http://demo.wdc.me/jtm/14-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-12-05 12:43:54', '2017-12-05 12:43:54', '', '754610743371594', '', 'inherit', 'closed', 'closed', '', '754610743371594-2', '', '', '2017-12-05 12:43:54', '2017-12-05 12:43:54', '', 0, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/12/754610743371594.jpeg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2017-12-05 17:54:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-05 17:54:10', '0000-00-00 00:00:00', '', 0, 'http://demo.wdc.me/jtm/?p=80', 0, 'post', '', 0),
(81, 1, '2017-12-05 17:54:34', '2017-12-05 17:54:34', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2017-12-07 20:49:44', '2017-12-07 20:49:44', '', 0, 'http://demo.wdc.me/jtm/?p=81', 1, 'nav_menu_item', '', 0),
(82, 1, '2017-12-05 17:54:34', '2017-12-05 17:54:34', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2017-12-07 20:49:44', '2017-12-07 20:49:44', '', 0, 'http://demo.wdc.me/jtm/?p=82', 2, 'nav_menu_item', '', 0),
(83, 1, '2017-12-05 17:54:34', '2017-12-05 17:54:34', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2017-12-07 20:49:44', '2017-12-07 20:49:44', '', 0, 'http://demo.wdc.me/jtm/?p=83', 3, 'nav_menu_item', '', 0),
(84, 1, '2017-12-05 17:54:34', '2017-12-05 17:54:34', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2017-12-07 20:49:44', '2017-12-07 20:49:44', '', 0, 'http://demo.wdc.me/jtm/?p=84', 5, 'nav_menu_item', '', 0),
(85, 1, '2017-12-05 17:54:34', '2017-12-05 17:54:34', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2017-12-07 20:49:44', '2017-12-07 20:49:44', '', 0, 'http://demo.wdc.me/jtm/?p=85', 6, 'nav_menu_item', '', 0),
(86, 2, '2017-12-05 18:07:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-05 18:07:39', '0000-00-00 00:00:00', '', 0, 'http://demo.wdc.me/jtm/?p=86', 0, 'post', '', 0),
(87, 2, '2017-12-05 18:11:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-05 18:11:27', '0000-00-00 00:00:00', '', 0, 'http://demo.wdc.me/jtm/?post_type=faqs&p=87', 0, 'faqs', '', 0),
(88, 2, '2017-12-06 12:09:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-06 12:09:42', '0000-00-00 00:00:00', '', 0, 'http://demo.wdc.me/jtm/?p=88', 0, 'post', '', 0),
(89, 1, '2017-12-06 15:13:55', '2017-12-06 15:13:55', '[text* your-name placeholder \"Name\"]\r\n\r\n[email* your-email placeholder \"Email Address\"]\r\n\r\n[text your-reason placeholder \"Reason For Contacting Us\"]\r\n\r\n[textarea your-message]\r\n\r\n[submit class:btn class:btn-primary \"Send\"]\n1\nNew Website Enquiry\nJustTravelMoney <wordpress@demo.wdc.me>\nhello@justtravelmoney.co.uk\nFrom: [your-name] <[your-email]>\r\nReason: [your-reason]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on JustTravelMoney (http://demo.wdc.me/jtm)\nReply-To: [your-email]\n\n\n\n\nJustTravelMoney \"[your-subject]\"\nJustTravelMoney <wordpress@demo.wdc.me>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on JustTravelMoney (http://demo.wdc.me/jtm)\nReply-To: stefan.vasiljevic@toptal.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-12-06 15:29:04', '2017-12-06 15:29:04', '', 0, 'http://demo.wdc.me/jtm/?post_type=wpcf7_contact_form&#038;p=89', 0, 'wpcf7_contact_form', '', 0),
(90, 1, '2017-12-06 15:14:55', '2017-12-06 15:14:55', '[contact-form-7 id=\"89\" title=\"Contact form\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-06 15:14:55', '2017-12-06 15:14:55', '', 14, 'http://demo.wdc.me/jtm/14-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-12-06 15:15:46', '2017-12-06 15:15:46', '<img class=\"alignleft size-full wp-image-51\" src=\"http://demo.wdc.me/jtm/wp-content/uploads/2017/11/blog-placeholder.png\" alt=\"\" width=\"158\" height=\"123\" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus nunc non finibus cursus. Maecenas a condimentum felis, nec mattis dui. Pellentesque sollicitudin, arcu non vulputate blandit, nisl sapien consectetur ante, eu faucibus est ex sed urna. Integer a neque ante.\r\n\r\n[contact-form-7 id=\"89\" title=\"Contact form\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-06 15:15:46', '2017-12-06 15:15:46', '', 14, 'http://demo.wdc.me/jtm/14-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-12-06 16:43:08', '2017-12-06 16:43:08', '', 'Sample Guide 1', '', 'publish', 'closed', 'closed', '', 'sample-guide-1', '', '', '2017-12-06 16:43:08', '2017-12-06 16:43:08', '', 10, 'http://demo.wdc.me/jtm/?page_id=92', 0, 'page', '', 0),
(93, 1, '2017-12-06 16:43:08', '2017-12-06 16:43:08', '', 'Sample Guide 1', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-12-06 16:43:08', '2017-12-06 16:43:08', '', 92, 'http://demo.wdc.me/jtm/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-12-06 16:43:16', '2017-12-06 16:43:16', '', 'Sample Guide 2', '', 'publish', 'closed', 'closed', '', 'sample-guide-2', '', '', '2017-12-06 16:43:16', '2017-12-06 16:43:16', '', 10, 'http://demo.wdc.me/jtm/?page_id=94', 1, 'page', '', 0),
(95, 1, '2017-12-06 16:43:16', '2017-12-06 16:43:16', '', 'Sample Guide 2', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-12-06 16:43:16', '2017-12-06 16:43:16', '', 94, 'http://demo.wdc.me/jtm/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-12-06 16:43:26', '2017-12-06 16:43:26', '', 'Sample Guide 3', '', 'publish', 'closed', 'closed', '', 'sample-guide-3', '', '', '2017-12-06 16:43:26', '2017-12-06 16:43:26', '', 10, 'http://demo.wdc.me/jtm/?page_id=96', 2, 'page', '', 0),
(97, 1, '2017-12-06 16:43:26', '2017-12-06 16:43:26', '', 'Sample Guide 3', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-12-06 16:43:26', '2017-12-06 16:43:26', '', 96, 'http://demo.wdc.me/jtm/96-revision-v1/', 0, 'revision', '', 0),
(104, 2, '2017-12-06 18:34:33', '2017-12-06 18:34:33', '', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2017-12-06 18:34:33', '2017-12-06 18:34:33', '', 0, 'http://demo.wdc.me/jtm/?p=104', 0, 'post', '', 0),
(105, 2, '2017-12-06 18:34:33', '2017-12-06 18:34:33', '', 'test', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2017-12-06 18:34:33', '2017-12-06 18:34:33', '', 104, 'http://demo.wdc.me/jtm/104-revision-v1/', 0, 'revision', '', 0),
(106, 2, '2017-12-06 18:34:41', '2017-12-06 18:34:41', '', 'test', '', 'publish', 'closed', 'closed', '', 'test-2', '', '', '2017-12-06 18:34:41', '2017-12-06 18:34:41', '', 0, 'http://demo.wdc.me/jtm/?p=106', 0, 'post', '', 0),
(107, 2, '2017-12-06 18:34:41', '2017-12-06 18:34:41', '', 'test', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2017-12-06 18:34:41', '2017-12-06 18:34:41', '', 106, 'http://demo.wdc.me/jtm/106-revision-v1/', 0, 'revision', '', 0),
(108, 2, '2017-12-06 18:34:50', '2017-12-06 18:34:50', '', 'test', '', 'publish', 'closed', 'closed', '', 'test-3', '', '', '2017-12-06 18:34:50', '2017-12-06 18:34:50', '', 0, 'http://demo.wdc.me/jtm/?p=108', 0, 'post', '', 0),
(109, 2, '2017-12-06 18:34:50', '2017-12-06 18:34:50', '', 'test', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2017-12-06 18:34:50', '2017-12-06 18:34:50', '', 108, 'http://demo.wdc.me/jtm/108-revision-v1/', 0, 'revision', '', 0),
(110, 2, '2017-12-06 18:35:00', '2017-12-06 18:35:00', '', 'test', '', 'publish', 'closed', 'closed', '', 'test-4', '', '', '2017-12-06 18:35:00', '2017-12-06 18:35:00', '', 0, 'http://demo.wdc.me/jtm/?p=110', 0, 'post', '', 0),
(111, 2, '2017-12-06 18:35:00', '2017-12-06 18:35:00', '', 'test', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-12-06 18:35:00', '2017-12-06 18:35:00', '', 110, 'http://demo.wdc.me/jtm/110-revision-v1/', 0, 'revision', '', 0),
(112, 2, '2017-12-06 18:35:06', '2017-12-06 18:35:06', '', 'test', '', 'publish', 'closed', 'closed', '', 'test-5', '', '', '2017-12-06 18:35:06', '2017-12-06 18:35:06', '', 0, 'http://demo.wdc.me/jtm/?p=112', 0, 'post', '', 0),
(113, 2, '2017-12-06 18:35:06', '2017-12-06 18:35:06', '', 'test', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2017-12-06 18:35:06', '2017-12-06 18:35:06', '', 112, 'http://demo.wdc.me/jtm/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-12-07 17:42:12', '2017-12-07 17:42:12', '', 'Buy Euros Online', '', 'publish', 'closed', 'closed', '', 'buy-euros-online', '', '', '2017-12-07 20:52:48', '2017-12-07 20:52:48', '', 0, 'http://demo.wdc.me/jtm/?post_type=currency-guides&#038;p=114', 0, 'currency-guides', '', 0),
(115, 1, '2017-12-07 20:49:25', '2017-12-07 20:49:25', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2017-12-07 20:49:25', '2017-12-07 20:49:25', '', 0, 'http://demo.wdc.me/jtm/?p=115', 4, 'nav_menu_item', '', 0),
(116, 1, '2017-12-07 20:49:44', '2017-12-07 20:49:44', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2017-12-07 20:49:44', '2017-12-07 20:49:44', '', 0, 'http://demo.wdc.me/jtm/?p=116', 4, 'nav_menu_item', '', 0),
(117, 1, '2017-12-07 20:50:01', '2017-12-07 20:50:01', '', 'flag_yellow_low', '', 'inherit', 'closed', 'closed', '', 'flag_yellow_low', '', '', '2017-12-07 20:50:01', '2017-12-07 20:50:01', '', 114, 'http://demo.wdc.me/jtm/wp-content/uploads/2017/12/flag_yellow_low.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2017-12-07 20:51:00', '2017-12-07 20:51:00', '', 'Buy Euros Online', '', 'inherit', 'closed', 'closed', '', '114-autosave-v1', '', '', '2017-12-07 20:51:00', '2017-12-07 20:51:00', '', 114, 'http://demo.wdc.me/jtm/114-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_termmeta`
--

CREATE TABLE `4ewLHnA_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_terms`
--

CREATE TABLE `4ewLHnA_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `4ewLHnA_terms`
--

INSERT INTO `4ewLHnA_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer menu', 'footer-menu', 0),
(4, 'Post Office Money', 'post-office-money', 0),
(5, 'Special Offer', 'special-offer', 0),
(6, 'Mobile menu', 'mobile-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_term_relationships`
--

CREATE TABLE `4ewLHnA_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `4ewLHnA_term_relationships`
--

INSERT INTO `4ewLHnA_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 1, 0),
(28, 1, 0),
(30, 1, 0),
(31, 1, 0),
(32, 1, 0),
(33, 1, 0),
(54, 4, 0),
(55, 4, 0),
(74, 5, 0),
(81, 6, 0),
(82, 6, 0),
(83, 6, 0),
(84, 6, 0),
(85, 6, 0),
(104, 1, 0),
(106, 1, 0),
(108, 1, 0),
(110, 1, 0),
(112, 1, 0),
(115, 2, 0),
(116, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_term_taxonomy`
--

CREATE TABLE `4ewLHnA_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `4ewLHnA_term_taxonomy`
--

INSERT INTO `4ewLHnA_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 11),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'faq_category', '', 0, 2),
(5, 5, 'nav_menu', '', 0, 1),
(6, 6, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_usermeta`
--

CREATE TABLE `4ewLHnA_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `4ewLHnA_usermeta`
--

INSERT INTO `4ewLHnA_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jtm-admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, '4ewLHnA_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, '4ewLHnA_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'syntax_highlighting', 'true'),
(15, 1, 'locale', ''),
(16, 1, 'session_tokens', 'a:3:{s:64:\"7df9f6490a196e692a4c7c093b279ce81e87e21a777166878b933bf7cda0af53\";a:4:{s:10:\"expiration\";i:1512758146;s:2:\"ip\";s:14:\"212.200.65.180\";s:2:\"ua\";s:136:\"Mozilla/5.0 (iPhone; CPU iPhone OS 11_1_2 like Mac OS X) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0 Mobile/15B202 Safari/604.1\";s:5:\"login\";i:1512585346;}s:64:\"75f406b489d8d4ccd90dd5fcfebd758a906d442ee63ba90ce43b0390cacc57c3\";a:4:{s:10:\"expiration\";i:1512841278;s:2:\"ip\";s:14:\"212.200.65.240\";s:2:\"ua\";s:134:\"Mozilla/5.0 (iPhone; CPU iPhone OS 11_2 like Mac OS X) AppleWebKit/604.4.7 (KHTML, like Gecko) Version/11.0 Mobile/15C114 Safari/604.1\";s:5:\"login\";i:1512668478;}s:64:\"7acda9f9375d83317bc303a57d4d511ec4e2d42c2bf71fcc55dfab4f77cfd272\";a:4:{s:10:\"expiration\";i:1512852546;s:2:\"ip\";s:14:\"178.223.57.251\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512679746;}}'),
(17, 1, '4ewLHnA_dashboard_quick_press_last_post_id', '80'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"212.200.65.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'nav_menu_recently_edited', '6'),
(22, 1, '4ewLHnA_user-settings', 'editor=tinymce&hidetb=0&libraryContent=browse&imgsize=full&align=center'),
(23, 1, '4ewLHnA_user-settings-time', '1512668527'),
(24, 1, 'closedpostboxes_providers', 'a:0:{}'),
(25, 1, 'metaboxhidden_providers', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 2, 'nickname', 'chris'),
(27, 2, 'first_name', 'Chris'),
(28, 2, 'last_name', 'Ball'),
(29, 2, 'description', ''),
(30, 2, 'rich_editing', 'true'),
(31, 2, 'syntax_highlighting', 'true'),
(32, 2, 'comment_shortcuts', 'false'),
(33, 2, 'admin_color', 'fresh'),
(34, 2, 'use_ssl', '0'),
(35, 2, 'show_admin_bar_front', 'true'),
(36, 2, 'locale', ''),
(37, 2, '4ewLHnA_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(38, 2, '4ewLHnA_user_level', '10'),
(39, 2, 'dismissed_wp_pointers', 'theme_editor_notice'),
(40, 2, 'session_tokens', 'a:3:{s:64:\"0214ffcf04c7e93cc6a578b855dfce1af3a20ac4fdfe67bd0b471fd3ce715f18\";a:4:{s:10:\"expiration\";i:1512670058;s:2:\"ip\";s:13:\"89.197.83.102\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0.1 Safari/604.3.5\";s:5:\"login\";i:1512497258;}s:64:\"d706027a8fc61ea00ad89068de6426fb74cf44cc8d6b58beafb16c700f0d0c89\";a:4:{s:10:\"expiration\";i:1512720403;s:2:\"ip\";s:13:\"77.89.146.167\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1512547603;}s:64:\"d10742f531f6a48b5fb98f7b64bc4a0e8805f262df34e48430f810fb3bac1681\";a:4:{s:10:\"expiration\";i:1512841881;s:2:\"ip\";s:13:\"89.197.83.102\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0.1 Safari/604.3.5\";s:5:\"login\";i:1512669081;}}'),
(41, 2, '4ewLHnA_dashboard_quick_press_last_post_id', '86'),
(42, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"89.197.83.0\";}'),
(43, 2, 'closedpostboxes_faqs', 'a:1:{i:0;s:15:\"faq_categorydiv\";}'),
(44, 2, 'metaboxhidden_faqs', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(45, 2, 'closedpostboxes_dashboard', 'a:0:{}'),
(46, 2, 'metaboxhidden_dashboard', 'a:0:{}'),
(47, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"4.9\";}');

-- --------------------------------------------------------

--
-- Table structure for table `4ewLHnA_users`
--

CREATE TABLE `4ewLHnA_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `4ewLHnA_users`
--

INSERT INTO `4ewLHnA_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jtm-admin', '$P$B99uJavb2ygDNI2AnZWzroNXYPqojj0', 'jtm-admin', 'stefan.vasiljevic@toptal.com', '', '2017-11-28 08:31:08', '', 0, 'admin'),
(2, 'chris', '$P$BWa7ASCAuscQ2avWS5u60hGjeaWMKs0', 'chris', 'chris.ball@justsave.co.uk', '', '2017-12-05 16:52:59', '', 0, 'Chris Ball');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `4ewLHnA_commentmeta`
--
ALTER TABLE `4ewLHnA_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `4ewLHnA_comments`
--
ALTER TABLE `4ewLHnA_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `4ewLHnA_links`
--
ALTER TABLE `4ewLHnA_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `4ewLHnA_options`
--
ALTER TABLE `4ewLHnA_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `4ewLHnA_postmeta`
--
ALTER TABLE `4ewLHnA_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `4ewLHnA_posts`
--
ALTER TABLE `4ewLHnA_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `4ewLHnA_termmeta`
--
ALTER TABLE `4ewLHnA_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `4ewLHnA_terms`
--
ALTER TABLE `4ewLHnA_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `4ewLHnA_term_relationships`
--
ALTER TABLE `4ewLHnA_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `4ewLHnA_term_taxonomy`
--
ALTER TABLE `4ewLHnA_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `4ewLHnA_usermeta`
--
ALTER TABLE `4ewLHnA_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `4ewLHnA_users`
--
ALTER TABLE `4ewLHnA_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `4ewLHnA_commentmeta`
--
ALTER TABLE `4ewLHnA_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `4ewLHnA_comments`
--
ALTER TABLE `4ewLHnA_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `4ewLHnA_links`
--
ALTER TABLE `4ewLHnA_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `4ewLHnA_options`
--
ALTER TABLE `4ewLHnA_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;
--
-- AUTO_INCREMENT for table `4ewLHnA_postmeta`
--
ALTER TABLE `4ewLHnA_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;
--
-- AUTO_INCREMENT for table `4ewLHnA_posts`
--
ALTER TABLE `4ewLHnA_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `4ewLHnA_termmeta`
--
ALTER TABLE `4ewLHnA_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `4ewLHnA_terms`
--
ALTER TABLE `4ewLHnA_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `4ewLHnA_term_taxonomy`
--
ALTER TABLE `4ewLHnA_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `4ewLHnA_usermeta`
--
ALTER TABLE `4ewLHnA_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `4ewLHnA_users`
--
ALTER TABLE `4ewLHnA_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
