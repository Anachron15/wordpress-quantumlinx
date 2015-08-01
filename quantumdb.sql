-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 01, 2015 at 09:47 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quantum_db`
--
CREATE DATABASE `quantum_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quantum_db`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-07-24 02:41:41', '2015-07-24 02:41:41', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=273 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/bethovenAchaTest2/wordpress', 'yes'),
(2, 'home', 'http://localhost/bethovenAchaTest2/wordpress', 'yes'),
(3, 'blogname', 'Quantumlinx', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bmacha2015@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:1;s:44:"slideshow-jquery-image-gallery/slideshow.php";i:2;s:44:"wonderplugin-gallery/wonderplugingallery.php";i:3;s:66:"wpb-accordion-menu-or-category/wpb-category-and-menu-accordion.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'quantumTheme', 'yes'),
(42, 'stylesheet', 'quantumTheme', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31536', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:44:"wonderplugin-gallery/wonderplugingallery.php";s:30:"wonderplugin_gallery_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:65:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:13:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:45:"slideshow-jquery-image-gallery-add-slideshows";b:1;s:46:"slideshow-jquery-image-gallery-edit-slideshows";b:1;s:48:"slideshow-jquery-image-gallery-delete-slideshows";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:3:"woo";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1438267303;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1438286160;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1438310517;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1438313864;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1438246674;s:7:"checked";a:1:{s:12:"quantumTheme";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(106, '_transient_random_seed', '5197633c90e6be3d0124cbdf349cc3e7', 'yes'),
(115, '_transient_twentyfifteen_categories', '1', 'yes'),
(116, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(122, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1437707479;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(123, 'current_theme', 'Quantumlinx Examination Theme', 'yes'),
(124, 'theme_mods_quantumTheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:2;}}', 'yes'),
(125, 'theme_switched', '', 'yes'),
(126, 'theme_switched_via_customizer', '', 'yes'),
(127, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(128, '_site_transient_timeout_browser_4560fb85574712dc100403ea8a85501b', '1438313858', 'yes'),
(129, '_site_transient_browser_4560fb85574712dc100403ea8a85501b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"39.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(136, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1437728625', 'yes'),
(137, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(140, 'wonderplugin_gallery_userrole', 'manage_options', 'yes'),
(141, 'wonderplugin-gallery-engine', 'WordPress YouTube Gallery Plugin', 'yes'),
(142, 'recently_activated', 'a:2:{s:38:"list-category-posts/list_cat_posts.php";i:1437721380;s:37:"superb-slideshow/superb-slideshow.php";i:1437718779;}', 'yes'),
(143, 'wonderplugin_gallery_information', 's:1371:"O:8:"stdClass":14:{s:6:"author";s:19:"Magic Hills Pty Ltd";s:8:"homepage";s:47:"https://www.wonderplugin.com/wordpress-gallery/";s:4:"name";s:20:"WonderPlugin Gallery";s:8:"requires";s:3:"3.6";s:7:"version";s:3:"5.4";s:11:"new_version";s:3:"5.4";s:12:"last_updated";s:10:"2015-07-23";s:8:"sections";a:1:{s:10:"change log";s:832:"<h4>Version 5.4</h4>\n<p>- Support images hosted on Google Drive</p>\n<h4>Version 5.3</h4>\n<p>- Fix bugs</p>\n<h4>Version 5.0</h4>\n<p>- Support YouTube playlist gallery that has more than 50 videos</p>\n<h4>Version 4.9</h4>\n<p>- Add an option to display gallery in text widgets<br />\n- Add an option to load gallery js file in the footer<br />\n- Fix the bug of arrows not having the same distance to the border</p>\n<h4>Version 4.8</h4>\n<p>- Create <a href="https://www.wonderplugin.com/wordpress-gallery/examples/wordpress-youtube-playlist-gallery-id28/" target="_blank">WordPress YouTube Playlist Gallery</a><br />\n- Support iframe videos<br />\n- Add an option to specify slideshow interval<br />\n- Add options to specify the speed of fade and slide transition effects</p>\n<h4>Version 4.7</h4>\n<p>- Support version check and update</p>";}s:3:"key";s:0:"";s:10:"key_status";s:5:"empty";s:10:"key_expire";i:0;s:4:"slug";s:20:"wonderplugin-gallery";s:6:"plugin";s:44:"wonderplugin-gallery/wonderplugingallery.php";s:12:"last_checked";i:1438067661;}";', 'yes'),
(167, 'slideshow-plugin-updated-from-v1-x-x-to-v2-0-1', 'updated', 'no'),
(168, 'slideshow-plugin-updated-from-v2-to-v2-1-20', 'updated', 'no'),
(169, 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22', 'updated', 'no'),
(170, 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-23', 'updated', 'no'),
(171, 'slideshow-jquery-image-gallery-updated-from-v2-1-23-to-v2-2-0', 'updated', 'no'),
(172, 'slideshow-jquery-image-gallery-updated-from-v2-2-0-to-v2-2-8', 'updated', 'no'),
(173, 'slideshow-jquery-image-gallery-updated-from-v2-2-8-to-v2-2-12', 'updated', 'no'),
(174, 'slideshow-jquery-image-gallery-updated-from-v2-2-12-to-v2-2-16', 'updated', 'no'),
(175, 'slideshow-jquery-image-gallery-updated-from-v2-2-16-to-v2-2-17', 'updated', 'no'),
(176, 'slideshow-jquery-image-gallery-updated-from-v2-2-17-to-v2-2-20', 'updated', 'no'),
(177, 'slideshow-jquery-image-gallery-plugin-version', '2.2.23', 'yes'),
(182, 'numberposts', '5', 'yes'),
(199, 'category_children', 'a:0:{}', 'yes'),
(207, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1438246704;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:44:"slideshow-jquery-image-gallery/slideshow.php";O:8:"stdClass":6:{s:2:"id";s:5:"31854";s:4:"slug";s:30:"slideshow-jquery-image-gallery";s:6:"plugin";s:44:"slideshow-jquery-image-gallery/slideshow.php";s:11:"new_version";s:6:"2.2.23";s:3:"url";s:61:"https://wordpress.org/plugins/slideshow-jquery-image-gallery/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/slideshow-jquery-image-gallery.zip";}s:66:"wpb-accordion-menu-or-category/wpb-category-and-menu-accordion.php";O:8:"stdClass":6:{s:2:"id";s:5:"62114";s:4:"slug";s:30:"wpb-accordion-menu-or-category";s:6:"plugin";s:66:"wpb-accordion-menu-or-category/wpb-category-and-menu-accordion.php";s:11:"new_version";s:5:"1.0.0";s:3:"url";s:61:"https://wordpress.org/plugins/wpb-accordion-menu-or-category/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/wpb-accordion-menu-or-category.zip";}}}', 'yes'),
(212, 'db_upgraded', '', 'yes'),
(213, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.3";s:7:"version";s:5:"4.2.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1438246674;s:15:"version_checked";s:5:"4.2.3";s:12:"translations";a:0:{}}', 'yes'),
(214, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:20:"bmacha2015@gmail.com";s:7:"version";s:5:"4.2.3";s:9:"timestamp";i:1437727858;}', 'yes'),
(215, 'rewrite_rules', 'a:90:{s:12:"slideshow/?$";s:29:"index.php?post_type=slideshow";s:42:"slideshow/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=slideshow&feed=$matches[1]";s:37:"slideshow/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=slideshow&feed=$matches[1]";s:29:"slideshow/page/([0-9]{1,})/?$";s:47:"index.php?post_type=slideshow&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:37:"slideshow/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"slideshow/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"slideshow/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"slideshow/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"slideshow/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"slideshow/([^/]+)/trackback/?$";s:36:"index.php?slideshow=$matches[1]&tb=1";s:50:"slideshow/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?slideshow=$matches[1]&feed=$matches[2]";s:45:"slideshow/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?slideshow=$matches[1]&feed=$matches[2]";s:38:"slideshow/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?slideshow=$matches[1]&paged=$matches[2]";s:45:"slideshow/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?slideshow=$matches[1]&cpage=$matches[2]";s:30:"slideshow/([^/]+)(/[0-9]+)?/?$";s:48:"index.php?slideshow=$matches[1]&page=$matches[2]";s:26:"slideshow/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"slideshow/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"slideshow/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"slideshow/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"slideshow/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(216, 'can_compress_scripts', '1', 'yes'),
(227, 'widget_slideshowwidget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(266, '_site_transient_timeout_theme_roots', '1438248394', 'yes'),
(267, '_site_transient_theme_roots', 'a:1:{s:12:"quantumTheme";s:7:"/themes";}', 'yes'),
(269, '_transient_timeout_plugin_slugs', '1438333104', 'no'),
(270, '_transient_plugin_slugs', 'a:4:{i:0;s:9:"hello.php";i:1;s:44:"slideshow-jquery-image-gallery/slideshow.php";i:2;s:44:"wonderplugin-gallery/wonderplugingallery.php";i:3;s:66:"wpb-accordion-menu-or-category/wpb-category-and-menu-accordion.php";}', 'no'),
(271, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1438289869', 'no'),
(272, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: No such host is known. </p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: No such host is known. </p></div><div class="rss-widget"><ul></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=233 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/bethovenAchaTest2/wordpress/'),
(10, 4, '_menu_item_orphaned', '1437707747'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1437707748'),
(29, 7, '_edit_last', '1'),
(30, 7, '_edit_lock', '1437817999:1'),
(31, 9, '_menu_item_type', 'post_type'),
(32, 9, '_menu_item_menu_item_parent', '0'),
(33, 9, '_menu_item_object_id', '7'),
(34, 9, '_menu_item_object', 'page'),
(35, 9, '_menu_item_target', ''),
(36, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 9, '_menu_item_xfn', ''),
(38, 9, '_menu_item_url', ''),
(39, 9, '_menu_item_orphaned', '1437709128'),
(40, 10, '_menu_item_type', 'post_type'),
(41, 10, '_menu_item_menu_item_parent', '0'),
(42, 10, '_menu_item_object_id', '2'),
(43, 10, '_menu_item_object', 'page'),
(44, 10, '_menu_item_target', ''),
(45, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 10, '_menu_item_xfn', ''),
(47, 10, '_menu_item_url', ''),
(48, 10, '_menu_item_orphaned', '1437709128'),
(49, 11, '_menu_item_type', 'custom'),
(50, 11, '_menu_item_menu_item_parent', '0'),
(51, 11, '_menu_item_object_id', '11'),
(52, 11, '_menu_item_object', 'custom'),
(53, 11, '_menu_item_target', ''),
(54, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 11, '_menu_item_xfn', ''),
(56, 11, '_menu_item_url', 'http://localhost/bethovenAchaTest2/wordpress/about-us/'),
(57, 11, '_menu_item_orphaned', '1437709165'),
(58, 2, '_wp_trash_meta_status', 'publish'),
(59, 2, '_wp_trash_meta_time', '1437709276'),
(60, 13, '_edit_last', '1'),
(61, 13, '_edit_lock', '1438079801:1'),
(62, 15, '_edit_last', '1'),
(63, 15, '_edit_lock', '1437818092:1'),
(64, 17, '_edit_last', '1'),
(65, 17, '_edit_lock', '1437818040:1'),
(66, 19, '_edit_last', '1'),
(67, 19, '_edit_lock', '1437817982:1'),
(68, 22, '_edit_last', '1'),
(69, 22, '_edit_lock', '1437817924:1'),
(70, 27, '_menu_item_type', 'post_type'),
(71, 27, '_menu_item_menu_item_parent', '0'),
(72, 27, '_menu_item_object_id', '22'),
(73, 27, '_menu_item_object', 'page'),
(74, 27, '_menu_item_target', ''),
(75, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(76, 27, '_menu_item_xfn', ''),
(77, 27, '_menu_item_url', ''),
(79, 28, '_menu_item_type', 'post_type'),
(80, 28, '_menu_item_menu_item_parent', '0'),
(81, 28, '_menu_item_object_id', '19'),
(82, 28, '_menu_item_object', 'page'),
(83, 28, '_menu_item_target', ''),
(84, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 28, '_menu_item_xfn', ''),
(86, 28, '_menu_item_url', ''),
(88, 29, '_menu_item_type', 'post_type'),
(89, 29, '_menu_item_menu_item_parent', '0'),
(90, 29, '_menu_item_object_id', '17'),
(91, 29, '_menu_item_object', 'page'),
(92, 29, '_menu_item_target', ''),
(93, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 29, '_menu_item_xfn', ''),
(95, 29, '_menu_item_url', ''),
(97, 30, '_menu_item_type', 'post_type'),
(98, 30, '_menu_item_menu_item_parent', '0'),
(99, 30, '_menu_item_object_id', '15'),
(100, 30, '_menu_item_object', 'page'),
(101, 30, '_menu_item_target', ''),
(102, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 30, '_menu_item_xfn', ''),
(104, 30, '_menu_item_url', ''),
(115, 32, '_menu_item_type', 'post_type'),
(116, 32, '_menu_item_menu_item_parent', '0'),
(117, 32, '_menu_item_object_id', '7'),
(118, 32, '_menu_item_object', 'page'),
(119, 32, '_menu_item_target', ''),
(120, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(121, 32, '_menu_item_xfn', ''),
(122, 32, '_menu_item_url', ''),
(124, 1, '_wp_trash_meta_status', 'publish'),
(125, 1, '_wp_trash_meta_time', '1437716295'),
(126, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(127, 35, '_edit_last', '1'),
(128, 35, '_edit_lock', '1437789860:1'),
(133, 40, '_wp_attached_file', '2015/07/h1.jpg'),
(134, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:660;s:4:"file";s:14:"2015/07/h1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"h1-300x165.jpg";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"h1-1024x563.jpg";s:5:"width";i:1024;s:6:"height";i:563;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(135, 41, '_wp_attached_file', '2015/07/h2.jpg'),
(136, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:255;s:6:"height";i:197;s:4:"file";s:14:"2015/07/h2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(137, 42, '_wp_attached_file', '2015/07/h3.jpg'),
(138, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1067;s:4:"file";s:14:"2015/07/h3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"h3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"h3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"h3-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(143, 45, '_edit_last', '1'),
(144, 45, '_edit_lock', '1438247499:1'),
(145, 46, '_wp_attached_file', '2015/07/house.png'),
(146, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:298;s:4:"file";s:17:"2015/07/house.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"house-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"house-300x149.png";s:5:"width";i:300;s:6:"height";i:149;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(147, 45, 'settings', 'a:26:{s:9:"animation";s:10:"directFade";s:10:"slideSpeed";s:1:"1";s:16:"descriptionSpeed";s:3:"0.4";s:13:"intervalSpeed";s:1:"3";s:13:"slidesPerView";s:1:"1";s:8:"maxWidth";s:1:"0";s:11:"aspectRatio";s:3:"3:1";s:6:"height";s:3:"300";s:14:"imageBehaviour";s:7:"natural";s:15:"showDescription";s:4:"true";s:15:"hideDescription";s:4:"true";s:27:"preserveSlideshowDimensions";s:5:"false";s:20:"enableResponsiveness";s:4:"true";s:4:"play";s:4:"true";s:4:"loop";s:4:"true";s:12:"pauseOnHover";s:4:"true";s:12:"controllable";s:5:"false";s:21:"hideNavigationButtons";s:5:"false";s:14:"showPagination";s:4:"true";s:14:"hidePagination";s:4:"true";s:12:"controlPanel";s:5:"false";s:16:"hideControlPanel";s:4:"true";s:15:"waitUntilLoaded";s:4:"true";s:15:"showLoadingIcon";s:4:"true";s:6:"random";s:5:"false";s:11:"avoidFilter";s:4:"true";}'),
(148, 45, 'styleSettings', 'a:1:{s:5:"style";s:15:"style-light.css";}'),
(149, 45, 'slides', 'a:3:{i:1;a:9:{s:17:"titleElementTagID";s:1:"0";s:5:"title";s:7:"House 1";s:23:"descriptionElementTagID";s:1:"0";s:11:"description";s:17:"House description";s:3:"url";s:54:"http://localhost/bethovenAchaTest2/wordpress/services/";s:9:"urlTarget";s:5:"_self";s:15:"alternativeText";s:0:"";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"46";}i:2;a:9:{s:17:"titleElementTagID";s:1:"0";s:5:"title";s:7:"House 2";s:23:"descriptionElementTagID";s:1:"0";s:11:"description";s:19:"House 2 description";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:15:"alternativeText";s:0:"";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"41";}i:3;a:9:{s:17:"titleElementTagID";s:1:"0";s:5:"title";s:7:"House 3";s:23:"descriptionElementTagID";s:1:"0";s:11:"description";s:18:"Sample Description";s:3:"url";s:0:"";s:9:"urlTarget";s:5:"_self";s:15:"alternativeText";s:0:"";s:4:"type";s:10:"attachment";s:6:"postId";s:2:"42";}}'),
(153, 49, '_edit_last', '1'),
(154, 49, '_edit_lock', '1437720196:1'),
(156, 51, '_edit_last', '1'),
(157, 51, '_edit_lock', '1437720216:1'),
(159, 53, '_edit_last', '1'),
(160, 53, '_edit_lock', '1437720270:1'),
(163, 55, '_edit_last', '1'),
(164, 55, '_edit_lock', '1437720491:1'),
(166, 57, '_edit_last', '1'),
(167, 57, '_edit_lock', '1437720466:1'),
(169, 59, '_edit_last', '1'),
(170, 59, '_edit_lock', '1437816944:1'),
(181, 62, '_menu_item_type', 'post_type'),
(182, 62, '_menu_item_menu_item_parent', '0'),
(183, 62, '_menu_item_object_id', '13'),
(184, 62, '_menu_item_object', 'page'),
(185, 62, '_menu_item_target', ''),
(186, 62, '_menu_item_classes', 'a:1:{i:0;s:6:"active";}'),
(187, 62, '_menu_item_xfn', ''),
(188, 62, '_menu_item_url', ''),
(189, 63, '_edit_last', '1'),
(190, 63, '_edit_lock', '1437801846:1'),
(199, 66, '_edit_last', '1'),
(200, 66, '_edit_lock', '1437801863:1'),
(227, 7, '_wp_page_template', 't_template_about_us.php'),
(228, 15, '_wp_page_template', 't_template_services.php'),
(229, 13, '_wp_page_template', 't_home.php'),
(230, 19, '_wp_page_template', 'default'),
(231, 22, '_wp_page_template', 'default'),
(232, 17, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-07-24 02:41:41', '2015-07-24 02:41:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2015-07-24 05:38:15', '2015-07-24 05:38:15', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2015-07-24 02:41:41', '2015-07-24 02:41:41', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/bethovenAchaTest2/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-07-24 03:41:17', '2015-07-24 03:41:17', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-07-24 02:41:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-24 02:41:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2015-07-24 03:15:46', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-24 03:15:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2015-07-24 03:15:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-24 03:15:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=5', 1, 'nav_menu_item', '', 0),
(7, 1, '2015-07-24 03:38:22', '2015-07-24 03:38:22', '<span style="color: #414042; font-family: Arial; font-size: small;">QL PTY LTD is an Australian company specializing in online marketing solutions. We are an industry leader in the online lead generation field providing our clients with a viable online marketing strategy centered on our ability to achieve top organic Search Engine Rankings, manage effective Pay Per Click (PPC) campaigns and other individually tailored search and online marketing strategies. We are looking for a Web Developer to join our professional, first-class team.</span>', '<h4>About Us</h4>', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2015-07-25 09:55:40', '2015-07-25 09:55:40', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-07-24 03:38:22', '2015-07-24 03:38:22', '<span style="color: #414042; font-family: Arial; font-size: small;">QL PTY LTD is an Australian company specializing in online marketing solutions. We are an industry leader in the online lead generation field providing our clients with a viable online marketing strategy centered on our ability to achieve top organic Search Engine Rankings, manage effective Pay Per Click (PPC) campaigns and other individually tailored search and online marketing strategies. We are looking for a Web Developer to join our professional, first-class team.</span>', 'About Us', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-07-24 03:38:22', '2015-07-24 03:38:22', '', 7, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-07-24 03:38:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-24 03:38:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2015-07-24 03:38:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-24 03:38:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2015-07-24 03:39:24', '0000-00-00 00:00:00', '', 'About Us', '', 'draft', 'open', 'open', '', '', '', '', '2015-07-24 03:39:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2015-07-24 03:41:17', '2015-07-24 03:41:17', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/bethovenAchaTest2/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-24 03:41:17', '2015-07-24 03:41:17', '', 2, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2015-07-24 03:42:10', '2015-07-24 03:42:10', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', '<h4>Home</h4>', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-07-28 10:36:38', '2015-07-28 10:36:38', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2015-07-24 03:42:10', '2015-07-24 03:42:10', 'Welcome to our website', 'Home', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-07-24 03:42:10', '2015-07-24 03:42:10', '', 13, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2015-07-24 03:42:37', '2015-07-24 03:42:37', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', '<h4>Services</h4>', '', 'publish', 'open', 'open', '', 'services', '', '', '2015-07-25 09:56:39', '2015-07-25 09:56:39', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2015-07-24 03:42:37', '2015-07-24 03:42:37', 'Services content', 'Services', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-07-24 03:42:37', '2015-07-24 03:42:37', '', 15, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2015-07-24 03:43:00', '2015-07-24 03:43:00', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', '<h4>Partners</h4>', '', 'publish', 'open', 'open', '', 'partners', '', '', '2015-07-25 09:56:15', '2015-07-25 09:56:15', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2015-07-24 03:43:00', '2015-07-24 03:43:00', 'Partners content', 'Partners', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-07-24 03:43:00', '2015-07-24 03:43:00', '', 17, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2015-07-24 03:44:07', '2015-07-24 03:44:07', '<div>\r\n<div class="lc">\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>', '<h4>Houses</h4>', '', 'publish', 'open', 'open', '', 'houses', '', '', '2015-07-25 09:55:24', '2015-07-25 09:55:24', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2015-07-24 03:44:07', '2015-07-24 03:44:07', 'Houses content', 'Houses', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-07-24 03:44:07', '2015-07-24 03:44:07', '', 19, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2015-07-24 03:45:07', '2015-07-24 03:45:07', '<div>\r\n<div class="lc">\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>', 'Houses', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-07-24 03:45:07', '2015-07-24 03:45:07', '', 19, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2015-07-24 03:45:25', '2015-07-24 03:45:25', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', '<h4>Locations</h4>', '', 'publish', 'open', 'open', '', 'locations', '', '', '2015-07-25 09:54:25', '2015-07-25 09:54:25', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2015-07-24 03:45:25', '2015-07-24 03:45:25', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Locations', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2015-07-24 03:45:25', '2015-07-24 03:45:25', '', 22, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2015-07-24 03:45:44', '2015-07-24 03:45:44', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Home', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-07-24 03:45:44', '2015-07-24 03:45:44', '', 13, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/13-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-07-24 03:46:39', '2015-07-24 03:46:39', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Services', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-07-24 03:46:39', '2015-07-24 03:46:39', '', 15, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/15-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2015-07-24 03:46:58', '2015-07-24 03:46:58', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Partners', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-07-24 03:46:58', '2015-07-24 03:46:58', '', 17, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/17-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-07-24 03:50:58', '2015-07-24 03:50:58', '', 'LOCATIONS', '', 'publish', 'open', 'open', '', '27', '', '', '2015-07-28 08:44:45', '2015-07-28 08:44:45', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=27', 6, 'nav_menu_item', '', 0),
(28, 1, '2015-07-24 03:50:58', '2015-07-24 03:50:58', '', 'HOUSES', '', 'publish', 'open', 'open', '', '28', '', '', '2015-07-28 08:44:45', '2015-07-28 08:44:45', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=28', 5, 'nav_menu_item', '', 0),
(29, 1, '2015-07-24 03:50:58', '2015-07-24 03:50:58', '', 'PARTNERS', '', 'publish', 'open', 'open', '', '29', '', '', '2015-07-28 08:44:44', '2015-07-28 08:44:44', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=29', 4, 'nav_menu_item', '', 0),
(30, 1, '2015-07-24 03:50:58', '2015-07-24 03:50:58', '', 'SERVICES', '', 'publish', 'open', 'open', '', '30', '', '', '2015-07-28 08:44:44', '2015-07-28 08:44:44', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=30', 3, 'nav_menu_item', '', 0),
(32, 1, '2015-07-24 03:50:58', '2015-07-24 03:50:58', 'about us desc', 'ABOUT US', 'title attribute', 'publish', 'open', 'open', '', '32', '', '', '2015-07-28 08:44:44', '2015-07-28 08:44:44', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2015-07-24 05:38:15', '2015-07-24 05:38:15', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-07-24 05:38:15', '2015-07-24 05:38:15', '', 1, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-07-24 05:40:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-24 05:40:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=34', 0, 'post', '', 0),
(35, 1, '2015-07-24 05:41:10', '2015-07-24 05:41:10', '<strong>Welcome to our website\r\n</strong>\r\n\r\nLorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al\r\n\r\nLorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-07-25 02:06:06', '2015-07-25 02:06:06', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=35', 0, 'post', '', 0),
(36, 1, '2015-07-24 05:41:10', '2015-07-24 05:41:10', '<strong>Welcome to our website\r\n</strong>\r\n\r\nis simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Home', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2015-07-24 05:41:10', '2015-07-24 05:41:10', '', 35, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2015-07-24 05:48:02', '2015-07-24 05:48:02', '<strong>Welcome to our website\r\n</strong>\r\n\r\nLorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al\r\n\r\nLorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Home', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2015-07-24 05:48:02', '2015-07-24 05:48:02', '', 35, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/35-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2015-07-24 06:08:15', '2015-07-24 06:08:15', '', 'h1', '', 'inherit', 'open', 'open', '', 'h1', '', '', '2015-07-24 06:08:15', '2015-07-24 06:08:15', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/wp-content/uploads/2015/07/h1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2015-07-24 06:08:40', '2015-07-24 06:08:40', '', 'h2', '', 'inherit', 'open', 'open', '', 'h2', '', '', '2015-07-24 06:08:40', '2015-07-24 06:08:40', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/wp-content/uploads/2015/07/h2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2015-07-24 06:08:46', '2015-07-24 06:08:46', '', 'h3', '', 'inherit', 'open', 'open', '', 'h3', '', '', '2015-07-24 06:08:46', '2015-07-24 06:08:46', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/wp-content/uploads/2015/07/h3.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2015-07-24 06:23:34', '2015-07-24 06:23:34', '', 'House Slideshow', '', 'publish', 'closed', 'closed', '', 'house-slideshow', '', '', '2015-07-30 09:13:47', '2015-07-30 09:13:47', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?post_type=slideshow&#038;p=45', 0, 'slideshow', '', 0),
(46, 1, '2015-07-24 06:22:56', '2015-07-24 06:22:56', '', 'house', '', 'inherit', 'open', 'open', '', 'house', '', '', '2015-07-24 06:22:56', '2015-07-24 06:22:56', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/wp-content/uploads/2015/07/house.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2015-07-24 06:44:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-24 06:44:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=48', 0, 'post', '', 0),
(49, 1, '2015-07-24 06:45:31', '2015-07-24 06:45:31', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'About Us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2015-07-24 06:45:31', '2015-07-24 06:45:31', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=49', 0, 'post', '', 0),
(50, 1, '2015-07-24 06:45:31', '2015-07-24 06:45:31', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'About Us', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-07-24 06:45:31', '2015-07-24 06:45:31', '', 49, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2015-07-24 06:45:51', '2015-07-24 06:45:51', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Services', '', 'publish', 'open', 'open', '', 'services', '', '', '2015-07-24 06:45:51', '2015-07-24 06:45:51', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=51', 0, 'post', '', 0),
(52, 1, '2015-07-24 06:45:51', '2015-07-24 06:45:51', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Services', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-24 06:45:51', '2015-07-24 06:45:51', '', 51, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-07-24 06:46:10', '2015-07-24 06:46:10', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Contact Us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2015-07-24 06:46:33', '2015-07-24 06:46:33', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=53', 0, 'post', '', 0),
(54, 1, '2015-07-24 06:46:10', '2015-07-24 06:46:10', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Contact Us', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-07-24 06:46:10', '2015-07-24 06:46:10', '', 53, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2015-07-24 06:47:05', '2015-07-24 06:47:05', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Partners', '', 'publish', 'open', 'open', '', 'partners', '', '', '2015-07-24 06:50:24', '2015-07-24 06:50:24', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=55', 0, 'post', '', 0),
(56, 1, '2015-07-24 06:47:05', '2015-07-24 06:47:05', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Partners', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2015-07-24 06:47:05', '2015-07-24 06:47:05', '', 55, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2015-07-24 06:47:22', '2015-07-24 06:47:22', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Houses', '', 'publish', 'open', 'open', '', 'houses', '', '', '2015-07-24 06:50:00', '2015-07-24 06:50:00', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=57', 0, 'post', '', 0),
(58, 1, '2015-07-24 06:47:22', '2015-07-24 06:47:22', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Houses', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-07-24 06:47:22', '2015-07-24 06:47:22', '', 57, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-07-24 06:47:39', '2015-07-24 06:47:39', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Locations', '', 'publish', 'open', 'open', '', 'locations', '', '', '2015-07-24 06:49:43', '2015-07-24 06:49:43', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=59', 0, 'post', '', 0),
(60, 1, '2015-07-24 06:47:39', '2015-07-24 06:47:39', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', 'Locations', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-07-24 06:47:39', '2015-07-24 06:47:39', '', 59, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/24/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2015-07-25 02:38:43', '2015-07-25 02:38:43', '', 'HOME', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-07-28 08:44:44', '2015-07-28 08:44:44', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2015-07-25 05:26:26', '2015-07-25 05:26:26', 'sdf\r\n\r\nsdf\r\n\r\nsdf\r\n\r\ndsf\r\n\r\nsdf\r\n\r\nsdf\r\n\r\ndf\r\n\r\nsdf', 'New Page 1', '', 'publish', 'open', 'open', '', 'new-page-1', '', '', '2015-07-25 05:26:26', '2015-07-25 05:26:26', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?page_id=63', 0, 'page', '', 0),
(65, 1, '2015-07-25 05:26:26', '2015-07-25 05:26:26', 'sdf\r\n\r\nsdf\r\n\r\nsdf\r\n\r\ndsf\r\n\r\nsdf\r\n\r\nsdf\r\n\r\ndf\r\n\r\nsdf', 'New Page 1', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2015-07-25 05:26:26', '2015-07-25 05:26:26', '', 63, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/63-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2015-07-25 05:26:42', '2015-07-25 05:26:42', 'sdf\r\n\r\nsdf\r\n\r\nsdf\r\n\r\ndsf\r\n\r\nsdf\r\n\r\nsdf\r\n\r\ndf\r\n\r\nsdf', 'New Page 2', '', 'publish', 'open', 'open', '', 'new-page-2', '', '', '2015-07-25 05:26:42', '2015-07-25 05:26:42', '', 0, 'http://localhost/bethovenAchaTest2/wordpress/?page_id=66', 0, 'page', '', 0),
(68, 1, '2015-07-25 05:26:42', '2015-07-25 05:26:42', 'sdf\r\n\r\nsdf\r\n\r\nsdf\r\n\r\ndsf\r\n\r\nsdf\r\n\r\nsdf\r\n\r\ndf\r\n\r\nsdf', 'New Page 2', '', 'inherit', 'open', 'open', '', '66-revision-v1', '', '', '2015-07-25 05:26:42', '2015-07-25 05:26:42', '', 66, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/66-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2015-07-25 09:51:37', '2015-07-25 09:51:37', '<span style="color: #414042; font-family: Arial; font-size: small;">QL PTY LTD is an Australian company specializing in online marketing solutions. We are an industry leader in the online lead generation field providing our clients with a viable online marketing strategy centered on our ability to achieve top organic Search Engine Rankings, manage effective Pay Per Click (PPC) campaigns and other individually tailored search and online marketing strategies. We are looking for a Web Developer to join our professional, first-class team.</span>', '<h1>About Us</h1>', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-07-25 09:51:37', '2015-07-25 09:51:37', '', 7, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/7-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2015-07-25 09:52:15', '2015-07-25 09:52:15', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', '<h1>Home</h1>', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-07-25 09:52:15', '2015-07-25 09:52:15', '', 13, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/13-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2015-07-25 09:52:49', '2015-07-25 09:52:49', '<div>\r\n<div class="lc">\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>', '<h4>Houses</h4>', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-07-25 09:52:49', '2015-07-25 09:52:49', '', 19, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/19-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2015-07-25 09:53:21', '2015-07-25 09:53:21', '<div>\r\n<div class="lc">\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>', '<h3>Houses</h3>', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-07-25 09:53:21', '2015-07-25 09:53:21', '', 19, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/19-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2015-07-25 09:54:25', '2015-07-25 09:54:25', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', '<h4>Locations</h4>', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2015-07-25 09:54:25', '2015-07-25 09:54:25', '', 22, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/22-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2015-07-25 09:54:43', '2015-07-25 09:54:43', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', '<h4>Home</h4>', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-07-25 09:54:43', '2015-07-25 09:54:43', '', 13, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/13-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2015-07-25 09:55:24', '2015-07-25 09:55:24', '<div>\r\n<div class="lc">\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n</div>', '<h4>Houses</h4>', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-07-25 09:55:24', '2015-07-25 09:55:24', '', 19, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/19-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2015-07-25 09:55:40', '2015-07-25 09:55:40', '<span style="color: #414042; font-family: Arial; font-size: small;">QL PTY LTD is an Australian company specializing in online marketing solutions. We are an industry leader in the online lead generation field providing our clients with a viable online marketing strategy centered on our ability to achieve top organic Search Engine Rankings, manage effective Pay Per Click (PPC) campaigns and other individually tailored search and online marketing strategies. We are looking for a Web Developer to join our professional, first-class team.</span>', '<h4>About Us</h4>', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-07-25 09:55:40', '2015-07-25 09:55:40', '', 7, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/7-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2015-07-25 09:56:15', '2015-07-25 09:56:15', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', '<h4>Partners</h4>', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-07-25 09:56:15', '2015-07-25 09:56:15', '', 17, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/17-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2015-07-25 09:56:39', '2015-07-25 09:56:39', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Al', '<h4>Services</h4>', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-07-25 09:56:39', '2015-07-25 09:56:39', '', 15, 'http://localhost/bethovenAchaTest2/wordpress/2015/07/25/15-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(32, 2, 0),
(35, 8, 0),
(49, 1, 0),
(51, 1, 0),
(53, 1, 0),
(55, 4, 0),
(57, 3, 0),
(59, 5, 0),
(62, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Examination Menu', 'examination-menu', 0),
(3, 'Houses', 'houses', 0),
(4, 'Partners', 'partners', 0),
(5, 'Locations', 'locations', 0),
(6, 'AboutUs', 'aboutus', 0),
(7, 'Services', 'services', 0),
(8, 'Home', 'home', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'bethoven'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"d840b42b06f99856cc7ed5d0f49b30a82cb80674a5d3d06de3b606e0c44d3cd0";a:4:{s:10:"expiration";i:1438419457;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:39.0) Gecko/20100101 Firefox/39.0";s:5:"login";i:1438246657;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:1:{i:0;s:0:"";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(20, 1, 'wp_user-settings-time', '1437721513'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'bethoven', '$P$BPb5pIi42WNsZgJ3ozoYnBF7.Czdnm1', 'bethoven', 'bmacha2015@gmail.com', '', '2015-07-24 02:41:40', '', 0, 'bethoven');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wonderplugin_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_wonderplugin_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `data` mediumtext NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `authorid` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_wonderplugin_gallery`
--

INSERT INTO `wp_wonderplugin_gallery` (`id`, `name`, `data`, `time`, `authorid`) VALUES
(1, 'My Gallery', '{"name":"My Gallery","width":640,"height":360,"slides":[{"type":0,"image":"http:\\/\\/localhost\\/bethovenAchaTest2\\/wordpress\\/wp-content\\/uploads\\/2015\\/07\\/h1.jpg","thumbnail":"http:\\/\\/localhost\\/bethovenAchaTest2\\/wordpress\\/wp-content\\/uploads\\/2015\\/07\\/h1-150x150.jpg","video":"","mp4":"","hdmp4":"","webm":"","hdwebm":"","title":"House 1","description":"Sample Description","weblink":"","linktarget":""},{"type":0,"image":"http:\\/\\/localhost\\/bethovenAchaTest2\\/wordpress\\/wp-content\\/uploads\\/2015\\/07\\/h2.jpg","thumbnail":"http:\\/\\/localhost\\/bethovenAchaTest2\\/wordpress\\/wp-content\\/uploads\\/2015\\/07\\/h2-150x150.jpg","video":"","mp4":"","hdmp4":"","webm":"","hdwebm":"","title":"House 2","description":"Sample Description","weblink":"","linktarget":""},{"type":0,"image":"http:\\/\\/localhost\\/bethovenAchaTest2\\/wordpress\\/wp-content\\/uploads\\/2015\\/07\\/h3.jpg","thumbnail":"http:\\/\\/localhost\\/bethovenAchaTest2\\/wordpress\\/wp-content\\/uploads\\/2015\\/07\\/h3-150x150.jpg","video":"","mp4":"","hdmp4":"","webm":"","hdwebm":"","title":"House 3","description":"Sample Description","weblink":"","linktarget":""}],"skin":"vertical","autoplayvideo":"false","html5player":"true","autoslide":"false","slideshowinterval":2000,"responsive":"true","fullwidth":"false","resizemode":"fill","imagetoolboxmode":"mouseover","showtitle":"true","showdescription":"false","titlecss":"{color:#ffffff; font-size:16px; font-family:Armata, sans-serif, Arial; overflow:hidden; white-space:normal; text-align:left; padding:10px 0px;}","descriptioncss":"{color:#ffffff; font-size:12px; font-family:Armata, sans-serif, Arial; overflow:hidden; white-space:normal; text-align:left; padding:0px 0px 10px 0px;}","showplaybutton":"true","showfullscreenbutton":"true","effect":"fadeinout","duration":1500,"slideduration":1000,"showtimer":"true","showcarousel":"true","googleanalyticsaccount":"","padding":12,"galleryshadow":"false","slideshadow":"false","bgcolor":"#444444","bgimage":"background.jpg","thumbwidth":148,"thumbheight":48,"thumbshowtitle":"true","thumbshadow":"false","thumbgap":8,"thumbrowgap":16,"customcss":"","dataoptions":"","lightboxtextheight":72,"lightboxshowtitle":"true","lightboxshowdescription":"true","lightboxtitlecss":"{color:#333333; font:bold 12px Arial,Helvetica,sans-serif; overflow:hidden; white-space:normal; line-height:18px;}","lightboxdescriptioncss":"{color:#333333; font:normal 12px Arial,Helvetica,sans-serif; overflow:hidden; white-space:normal; line-height:14px;}","specifyid":"true"}', '2015-07-30 09:03:19', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
