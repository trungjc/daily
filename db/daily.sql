-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2014 at 01:12 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `daily`
--
CREATE DATABASE IF NOT EXISTS `daily` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `daily`;

-- --------------------------------------------------------

--
-- Table structure for table `jc_commentmeta`
--

CREATE TABLE IF NOT EXISTS `jc_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jc_comments`
--

CREATE TABLE IF NOT EXISTS `jc_comments` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jc_comments`
--

INSERT INTO `jc_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-10-15 09:58:48', '2014-10-15 09:58:48', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jc_links`
--

CREATE TABLE IF NOT EXISTS `jc_links` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jc_options`
--

CREATE TABLE IF NOT EXISTS `jc_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=218 ;

--
-- Dumping data for table `jc_options`
--

INSERT INTO `jc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/daily', 'yes'),
(2, 'home', 'http://localhost/daily', 'yes'),
(3, 'blogname', 'daily', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'trungnguyenthanh70@gmail.com', 'yes'),
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
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:23:"revslider/revslider.php";i:3;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:4;s:43:"testimonials-widget/testimonials-widget.php";i:5;s:47:"ultimate-posts-widget/ultimate-posts-widget.php";i:6;s:29:"widget-logic/widget_logic.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'daily', 'yes'),
(42, 'stylesheet', 'daily', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
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
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:5:{i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:174:"<h2>FEEDBACK</h2>\r\n<div class="title">Drop a Comment</div>\r\n<p>Nunc magna eros, facilisis eu tempus eu, posuere nec magna. </p>\r\n[contact-form-7 id="35" title="Contact form"]";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:504:"  <!-- copyright -->\r\n				<p class="copyright">\r\n                                    <a href="" >Privacy</a>  \r\n                                    <a href="" >   Site Map  </a>  \r\n                                     <a href="" >©2014 Daily Groceries Co-op </a>  \r\n                                    <a href="" >Designed by Lightmark Media  </a>  \r\n                                       \r\n                                    <a href="" >Developed by picobarn </a>  \r\n				</p>\r\n				<!-- /copyright -->";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:0:"";s:4:"text";s:209:"<div class="gift-card">\r\n<div class="gift-card-inner"><h3>Get someone a giftcard!</h3>\r\n\r\nNunc magna eros, facilisis eu tempus eu, posuere nec magna. \r\n<a class="button-gift">Give nourishment</a>\r\n</div></div>";s:6:"filter";b:0;}i:6;a:3:{s:5:"title";s:0:"";s:4:"text";s:128:"[testimonialswidget_widget refresh_interval=3]\r\n<a href="http://localhost/daily/?page_id=109" >Read what others are saying.></a>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:43:"testimonials-widget/testimonials-widget.php";a:2:{i:0;s:19:"Testimonials_Widget";i:1;s:9:"uninstall";}}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'jc_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:13:"widget-area-1";a:4:{i:0;s:14:"sticky-posts-2";i:1;s:6:"text-5";i:2;s:6:"text-6";i:3;s:6:"text-2";}s:13:"widget-area-2";a:0:{}s:13:"widget-area-3";a:2:{i:0;s:10:"nav_menu-2";i:1;s:6:"text-3";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:8:{i:1413548088;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"d13e25e7d92ea83e0f670149684b0c8d";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:98;}}}}i:1413548201;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"8e37d112eed2311de901b0df41a405d3";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:99;}}}}i:1413548278;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"3c1ac9cb56bb16aa647950520b9c356f";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:100;}}}}i:1413574440;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1413583131;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1413626344;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1413628131;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_transient_random_seed', '3feacbcf44e957b628e0fcc925f3bd85', 'yes'),
(99, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1413541080;s:15:"version_checked";s:3:"4.0";s:12:"translations";a:0:{}}', 'yes'),
(107, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1413541081;s:7:"checked";a:4:{s:5:"daily";s:0:"";s:14:"twentyfourteen";s:3:"1.2";s:14:"twentythirteen";s:3:"1.3";s:12:"twentytwelve";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(108, '_transient_timeout_plugin_slugs', '1413627494', 'no'),
(109, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:23:"revslider/revslider.php";i:4;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:5;s:43:"testimonials-widget/testimonials-widget.php";i:6;s:47:"ultimate-posts-widget/ultimate-posts-widget.php";i:7;s:29:"widget-logic/widget_logic.php";}', 'no'),
(112, 'can_compress_scripts', '1', 'yes'),
(116, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1413367228;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(117, 'current_theme', 'HTML5 Blank', 'yes'),
(118, 'theme_mods_daily', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(119, 'theme_switched', '', 'yes'),
(120, 'recently_activated', 'a:2:{s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";i:1413471914;s:53:"easy-bootstrap-shortcodes/osc_bootstrap_shortcode.php";i:1413471905;}', 'yes'),
(121, 'revslider_checktables', '1', 'yes'),
(122, 'revslider-static-css', '.tp-caption a {\ncolor:#ff7302;\ntext-shadow:none;\n-webkit-transition:all 0.2s ease-out;\n-moz-transition:all 0.2s ease-out;\n-o-transition:all 0.2s ease-out;\n-ms-transition:all 0.2s ease-out;\n}\n\n.tp-caption a:hover {\ncolor:#ffa902;\n}', 'yes'),
(123, 'revslider-update-check-short', '1413540268', 'yes'),
(124, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(142, 'bs_options', 'a:12:{s:23:"chk_default_options_css";s:1:"1";s:22:"chk_default_options_js";s:1:"1";s:24:"chk_default_options_grid";s:1:"1";s:24:"chk_default_options_tabs";s:1:"1";s:28:"chk_default_options_collapse";s:1:"1";s:26:"chk_default_options_alerts";s:1:"1";s:25:"chk_default_options_wells";s:1:"1";s:27:"chk_default_options_buttons";s:1:"1";s:26:"chk_default_options_labels";s:1:"1";s:25:"chk_default_options_icons";s:1:"1";s:24:"chk_default_options_lead";s:1:"1";s:27:"chk_default_options_tooltip";s:1:"1";}', 'yes'),
(144, 'widget_sticky-posts', 'a:2:{i:2;a:32:{s:5:"title";s:10:"DAILY NEWS";s:5:"class";s:0:"";s:10:"title_link";s:0:"";s:6:"number";s:1:"1";s:5:"types";s:4:"post";s:4:"cats";s:1:"3";s:4:"tags";s:0:"";s:5:"atcat";b:1;s:5:"attag";b:0;s:12:"show_excerpt";b:1;s:12:"show_content";b:0;s:14:"show_thumbnail";b:1;s:9:"show_date";b:0;s:11:"date_format";s:12:"F j, Y g:i a";s:10:"show_title";b:1;s:11:"show_author";b:0;s:13:"show_comments";b:0;s:10:"thumb_size";s:6:"medium";s:13:"show_readmore";b:1;s:14:"excerpt_length";s:2:"10";s:16:"excerpt_readmore";s:26:"Read the rest of the story";s:6:"sticky";s:4:"show";s:5:"order";s:4:"DESC";s:7:"orderby";s:4:"date";s:8:"meta_key";s:0:"";s:9:"show_cats";b:0;s:9:"show_tags";b:0;s:13:"custom_fields";s:0:"";s:8:"template";s:8:"standard";s:15:"template_custom";s:0:"";s:12:"before_posts";s:0:"";s:11:"after_posts";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(146, '_site_transient_timeout_browser_b7686c633cfe8719a4fab9e3e09c6b8e', '1414075875', 'yes'),
(147, '_site_transient_browser_b7686c633cfe8719a4fab9e3e09c6b8e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"32.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(163, 'scporder_options', 'a:1:{s:7:"objects";a:4:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:10:"attachment";i:3;s:11:"html5-blank";}}', 'yes'),
(170, 'EBS_SHORTCODE_PREFIX', '', 'yes'),
(172, 'EBS_CUSTOM_CSS', '', 'yes'),
(178, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:"nav_menu";i:2;}s:12:"_multiwidget";i:1;}', 'yes'),
(181, 'revslider-valid-notice', 'false', 'yes'),
(182, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.0.1";}', 'yes'),
(188, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1413572304', 'no'),
(189, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: A feed could not be found at http://wordpress.org/news/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: A feed could not be found at http://planet.wordpress.org/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(196, '_site_transient_timeout_theme_roots', '1413541833', 'yes'),
(197, '_site_transient_theme_roots', 'a:4:{s:5:"daily";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(198, 'revslider-latest-version', '4.6.0', 'yes'),
(199, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1413551612', 'yes'),
(200, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4690";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2907";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2823";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2344";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2238";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1804";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1619";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1591";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1569";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1533";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1496";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1485";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1403";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1236";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1183";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1133";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1081";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1027";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1018";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"849";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"844";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"838";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"806";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"798";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"747";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"710";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"709";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"673";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"663";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"631";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"626";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"623";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"619";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"613";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"600";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"572";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"564";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"561";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"554";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"553";}}', 'yes'),
(202, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1413541085;s:7:"checked";a:8:{s:19:"akismet/akismet.php";s:5:"3.0.2";s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";s:5:"3.2.4";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.0.1";s:23:"revslider/revslider.php";s:5:"4.6.0";s:53:"simple-custom-post-order/simple-custom-post-order.php";s:3:"2.2";s:43:"testimonials-widget/testimonials-widget.php";s:5:"3.0.0";s:47:"ultimate-posts-widget/ultimate-posts-widget.php";s:5:"2.0.3";s:29:"widget-logic/widget_logic.php";s:4:"0.57";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.2.zip";}s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";O:8:"stdClass":6:{s:2:"id";s:5:"47122";s:4:"slug";s:22:"bootstrap-3-shortcodes";s:6:"plugin";s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";s:11:"new_version";s:5:"3.2.4";s:3:"url";s:53:"https://wordpress.org/plugins/bootstrap-3-shortcodes/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/bootstrap-3-shortcodes.3.2.4.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.0.1.zip";}s:53:"simple-custom-post-order/simple-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:5:"42644";s:4:"slug";s:24:"simple-custom-post-order";s:6:"plugin";s:53:"simple-custom-post-order/simple-custom-post-order.php";s:11:"new_version";s:3:"2.2";s:3:"url";s:55:"https://wordpress.org/plugins/simple-custom-post-order/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/simple-custom-post-order.zip";}s:43:"testimonials-widget/testimonials-widget.php";O:8:"stdClass":7:{s:2:"id";s:5:"24817";s:4:"slug";s:19:"testimonials-widget";s:6:"plugin";s:43:"testimonials-widget/testimonials-widget.php";s:11:"new_version";s:5:"3.0.0";s:14:"upgrade_notice";s:300:"This is a major overhaul without backwards compliance of over 80 changes. Please read the Testimonials Widget 3.0 and Testimonials Widget Premium 2.0 Upgrade Notice for more help.\n\nIf you use custom CSS, actions, or filters to modify Testimonials Widget and Testimonials Widget Premium actions or out";s:3:"url";s:50:"https://wordpress.org/plugins/testimonials-widget/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/testimonials-widget.3.0.0.zip";}s:47:"ultimate-posts-widget/ultimate-posts-widget.php";O:8:"stdClass":6:{s:2:"id";s:5:"31287";s:4:"slug";s:21:"ultimate-posts-widget";s:6:"plugin";s:47:"ultimate-posts-widget/ultimate-posts-widget.php";s:11:"new_version";s:5:"2.0.3";s:3:"url";s:52:"https://wordpress.org/plugins/ultimate-posts-widget/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/ultimate-posts-widget.2.0.3.zip";}s:29:"widget-logic/widget_logic.php";O:8:"stdClass":6:{s:2:"id";s:4:"2545";s:4:"slug";s:12:"widget-logic";s:6:"plugin";s:29:"widget-logic/widget_logic.php";s:11:"new_version";s:4:"0.57";s:3:"url";s:43:"https://wordpress.org/plugins/widget-logic/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/widget-logic.0.57.zip";}}}', 'yes'),
(203, 'widget_logic', 'a:3:{s:14:"sticky-posts-2";s:9:"is_home()";s:6:"text-5";s:11:"is_tree(36)";s:6:"text-6";s:10:"!is_home()";}', 'yes'),
(204, '_transient_timeout_tw_requirements_check', '1413544692', 'no'),
(205, '_transient_tw_requirements_check', '1', 'no'),
(206, 'testimonialswidget_settings', 'a:71:{s:13:"item_reviewed";s:5:"daily";s:17:"item_reviewed_url";s:22:"http://localhost/daily";s:6:"paging";s:1:"1";s:13:"enable_schema";s:1:"1";s:12:"do_shortcode";s:1:"1";s:13:"remove_hentry";s:1:"1";s:6:"target";s:0:"";s:12:"hide_company";b:1;s:10:"hide_email";s:1:"1";s:13:"hide_gravatar";b:1;s:10:"hide_image";b:1;s:10:"hide_title";b:1;s:13:"hide_location";b:1;s:8:"hide_url";b:1;s:8:"category";s:0:"";s:7:"exclude";s:0:"";s:3:"ids";s:0:"";s:5:"limit";s:2:"10";s:4:"tags";s:0:"";s:7:"orderby";s:2:"ID";s:8:"meta_key";s:0:"";s:5:"order";s:4:"DESC";s:14:"columns_author";s:1:"1";s:11:"has_archive";s:20:"testimonials-archive";s:12:"rewrite_slug";s:11:"testimonial";s:5:"title";s:0:"";s:10:"title_link";s:0:"";s:15:"adaptive_height";s:1:"1";s:11:"bottom_text";s:0:"";s:10:"char_limit";s:0:"";s:16:"refresh_interval";s:1:"5";s:15:"show_start_stop";s:1:"1";s:15:"transition_mode";s:4:"fade";s:15:"keep_whitespace";i:0;s:17:"widget_expand_all";N;s:20:"general_expand_begin";N;s:14:"disable_quotes";i:0;s:14:"hide_not_found";i:0;s:12:"enable_video";i:0;s:20:"exclude_bxslider_css";i:0;s:11:"exclude_css";i:0;s:13:"use_quote_tag";i:0;s:18:"general_expand_end";N;s:19:"fields_expand_begin";N;s:11:"hide_source";i:0;s:12:"hide_content";i:0;s:17:"hide_image_single";i:0;s:17:"fields_expand_end";N;s:22:"selection_expand_begin";N;s:8:"tags_all";i:0;s:20:"selection_expand_end";N;s:21:"ordering_expand_begin";N;s:6:"random";i:0;s:19:"ordering_expand_end";N;s:14:"allow_comments";i:0;s:16:"use_cpt_taxonomy";i:0;s:15:"enable_archives";i:0;s:15:"columns_company";b:0;s:13:"columns_email";b:0;s:10:"columns_id";b:0;s:17:"columns_thumbnail";i:0;s:17:"columns_job_title";b:0;s:16:"columns_location";b:0;s:17:"columns_shortcode";i:0;s:11:"columns_url";b:0;s:18:"reset_expand_begin";N;s:11:"delete_data";i:0;s:14:"reset_defaults";i:0;s:16:"reset_expand_end";N;s:7:"version";s:5:"3.0.0";s:14:"donate_version";s:5:"3.0.0";}', 'yes'),
(211, 'category_children', 'a:0:{}', 'yes'),
(213, 'widget_testimonials_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `jc_postmeta`
--

CREATE TABLE IF NOT EXISTS `jc_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=415 ;

--
-- Dumping data for table `jc_postmeta`
--

INSERT INTO `jc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'template-demo.php'),
(21, 7, '_wp_attached_file', '2014/10/slideshow.png'),
(22, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1397;s:6:"height";i:340;s:4:"file";s:21:"2014/10/slideshow.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"slideshow-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"slideshow-250x60.png";s:5:"width";i:250;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"slideshow-700x170.png";s:5:"width";i:700;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:20:"slideshow-120x29.png";s:5:"width";i:120;s:6:"height";i:29;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:21:"slideshow-700x200.png";s:5:"width";i:700;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(23, 8, '_edit_last', '1'),
(24, 8, '_edit_lock', '1413455460:1'),
(25, 9, '_wp_attached_file', '2014/10/Membership.png'),
(26, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:336;s:6:"height";i:253;s:4:"file";s:22:"2014/10/Membership.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Membership-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"Membership-250x188.png";s:5:"width";i:250;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:22:"Membership-336x252.png";s:5:"width";i:336;s:6:"height";i:252;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:21:"Membership-120x90.png";s:5:"width";i:120;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:22:"Membership-336x200.png";s:5:"width";i:336;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(27, 8, '_thumbnail_id', '9'),
(29, 8, 'slide_template', 'default'),
(31, 8, 'read-more-text', 'Why would you want to join?'),
(32, 12, '_edit_last', '1'),
(33, 12, '_edit_lock', '1413455686:1'),
(34, 12, 'read-more-text', 'Read more about our local offerings.'),
(35, 13, '_wp_attached_file', '2014/10/We-buy-local-so-you-can-too..png'),
(36, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:336;s:6:"height";i:253;s:4:"file";s:40:"2014/10/We-buy-local-so-you-can-too..png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"We-buy-local-so-you-can-too.-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:40:"We-buy-local-so-you-can-too.-250x188.png";s:5:"width";i:250;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:40:"We-buy-local-so-you-can-too.-336x252.png";s:5:"width";i:336;s:6:"height";i:252;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:39:"We-buy-local-so-you-can-too.-120x90.png";s:5:"width";i:120;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:40:"We-buy-local-so-you-can-too.-336x200.png";s:5:"width";i:336;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(37, 14, '_wp_attached_file', '2014/10/We-buy-local-so-you-can-too.1.png'),
(38, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:336;s:6:"height";i:253;s:4:"file";s:41:"2014/10/We-buy-local-so-you-can-too.1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"We-buy-local-so-you-can-too.1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:41:"We-buy-local-so-you-can-too.1-250x188.png";s:5:"width";i:250;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:41:"We-buy-local-so-you-can-too.1-336x252.png";s:5:"width";i:336;s:6:"height";i:252;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:40:"We-buy-local-so-you-can-too.1-120x90.png";s:5:"width";i:120;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:41:"We-buy-local-so-you-can-too.1-336x200.png";s:5:"width";i:336;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(39, 12, '_thumbnail_id', '14'),
(41, 12, 'slide_template', 'default'),
(42, 1, '_edit_lock', '1413455787:1'),
(43, 1, 'read-more-text', 'See what we’re stocking'),
(44, 17, '_wp_attached_file', '2014/10/Convenient-Beer.png'),
(45, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:336;s:6:"height";i:253;s:4:"file";s:27:"2014/10/Convenient-Beer.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"Convenient-Beer-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"Convenient-Beer-250x188.png";s:5:"width";i:250;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"Convenient-Beer-336x252.png";s:5:"width";i:336;s:6:"height";i:252;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:26:"Convenient-Beer-120x90.png";s:5:"width";i:120;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:27:"Convenient-Beer-336x200.png";s:5:"width";i:336;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(46, 1, '_thumbnail_id', '17'),
(47, 1, '_edit_last', '1'),
(49, 1, 'slide_template', 'default'),
(50, 19, '_edit_last', '1'),
(51, 19, '_edit_lock', '1413455988:1'),
(52, 19, 'read-more-text', 'Read more about food you can trust'),
(53, 20, '_wp_attached_file', '2014/10/food.png'),
(54, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:336;s:6:"height";i:253;s:4:"file";s:16:"2014/10/food.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"food-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"food-250x188.png";s:5:"width";i:250;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:16:"food-336x252.png";s:5:"width";i:336;s:6:"height";i:252;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:15:"food-120x90.png";s:5:"width";i:120;s:6:"height";i:90;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:16:"food-336x200.png";s:5:"width";i:336;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(55, 19, '_thumbnail_id', '20'),
(57, 19, 'slide_template', 'default'),
(62, 2, '_edit_lock', '1413471685:1'),
(63, 2, '_edit_last', '1'),
(64, 2, 'slide_template', 'default'),
(71, 30, '_edit_last', '1'),
(72, 30, '_edit_lock', '1413471989:1'),
(73, 31, '_edit_last', '1'),
(74, 31, '_edit_lock', '1413542845:1'),
(75, 31, '_wp_page_template', 'default'),
(76, 31, 'slide_template', 'default'),
(88, 35, '_form', '<div> [text* your-name placeholder  "Name (optional)"] </div>\n\n<div>[email* your-email placeholder  "email (optional)"] </div>\n\n<div>[textarea your-message placeholder "Please type your comment here"] </div>\n<div class="clearfix">\n<a class="pull-left" href="#">Your privacy is\nimportant to us.</a>\n<div class="pull-right">[submit "Send" ]</div></div>'),
(89, 35, '_mail', 'a:8:{s:7:"subject";s:0:"";s:6:"sender";s:42:"[your-name] <trungnguyenthanh70@gmail.com>";s:4:"body";s:151:"From: [your-name] <[your-email]>\nSubject: \n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on daily (http://localhost/daily)";s:9:"recipient";s:28:"trungnguyenthanh70@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(90, 35, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:36:"daily <trungnguyenthanh70@gmail.com>";s:4:"body";s:107:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on daily (http://localhost/daily)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:38:"Reply-To: trungnguyenthanh70@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(91, 35, '_messages', 'a:21:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:31:"Please fill the required field.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";}'),
(92, 35, '_additional_settings', ''),
(93, 35, '_locale', 'en_US'),
(94, 36, '_edit_last', '1'),
(95, 36, '_wp_page_template', 'default'),
(96, 36, 'slide_template', 'default'),
(97, 36, '_edit_lock', '1413542189:1'),
(98, 38, '_edit_last', '1'),
(99, 38, '_wp_page_template', 'default'),
(100, 38, 'slide_template', 'default'),
(101, 38, '_edit_lock', '1413474602:1'),
(102, 40, '_edit_last', '1'),
(103, 40, '_wp_page_template', 'default'),
(104, 40, 'slide_template', 'default'),
(105, 40, '_edit_lock', '1413474615:1'),
(106, 42, '_edit_last', '1'),
(107, 42, '_wp_page_template', 'default'),
(108, 42, 'slide_template', 'default'),
(109, 42, '_edit_lock', '1413474628:1'),
(110, 44, '_edit_last', '1'),
(111, 44, '_wp_page_template', 'default'),
(112, 44, 'slide_template', 'default'),
(113, 44, '_edit_lock', '1413543430:1'),
(114, 46, '_edit_last', '1'),
(115, 46, '_wp_page_template', 'default'),
(116, 46, 'slide_template', ''),
(117, 46, '_edit_lock', '1413543588:1'),
(118, 48, '_edit_last', '1'),
(119, 48, '_edit_lock', '1413474535:1'),
(120, 48, '_wp_page_template', 'default'),
(121, 48, 'slide_template', 'default'),
(122, 50, '_edit_last', '1'),
(123, 50, '_edit_lock', '1413474548:1'),
(124, 50, '_wp_page_template', 'default'),
(125, 50, 'slide_template', 'default'),
(126, 52, '_edit_last', '1'),
(127, 52, '_wp_page_template', 'default'),
(128, 52, 'slide_template', 'default'),
(129, 52, '_edit_lock', '1413474568:1'),
(130, 54, '_edit_last', '1'),
(131, 54, '_wp_page_template', 'default'),
(132, 54, 'slide_template', 'default'),
(133, 54, '_edit_lock', '1413474577:1'),
(134, 56, '_edit_last', '1'),
(135, 56, '_edit_lock', '1413540667:1'),
(136, 56, '_wp_page_template', 'default'),
(137, 56, 'slide_template', 'default'),
(138, 58, '_edit_last', '1'),
(139, 58, '_wp_page_template', 'default'),
(140, 58, 'slide_template', 'default'),
(141, 58, '_edit_lock', '1413474603:1'),
(142, 60, '_edit_last', '1'),
(143, 60, '_edit_lock', '1413474760:1'),
(144, 60, '_wp_page_template', 'default'),
(145, 60, 'slide_template', 'default'),
(146, 62, '_edit_last', '1'),
(147, 62, '_edit_lock', '1413474775:1'),
(148, 62, '_wp_page_template', 'default'),
(149, 62, 'slide_template', 'default'),
(150, 64, '_edit_last', '1'),
(151, 64, '_wp_page_template', 'default'),
(152, 64, 'slide_template', 'default'),
(153, 64, '_edit_lock', '1413474806:1'),
(154, 66, '_menu_item_type', 'post_type'),
(155, 66, '_menu_item_menu_item_parent', '0'),
(156, 66, '_menu_item_object_id', '42'),
(157, 66, '_menu_item_object', 'page'),
(158, 66, '_menu_item_target', ''),
(159, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(160, 66, '_menu_item_xfn', ''),
(161, 66, '_menu_item_url', ''),
(163, 67, '_menu_item_type', 'post_type'),
(164, 67, '_menu_item_menu_item_parent', '0'),
(165, 67, '_menu_item_object_id', '40'),
(166, 67, '_menu_item_object', 'page'),
(167, 67, '_menu_item_target', ''),
(168, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(169, 67, '_menu_item_xfn', ''),
(170, 67, '_menu_item_url', ''),
(172, 68, '_menu_item_type', 'post_type'),
(173, 68, '_menu_item_menu_item_parent', '0'),
(174, 68, '_menu_item_object_id', '38'),
(175, 68, '_menu_item_object', 'page'),
(176, 68, '_menu_item_target', ''),
(177, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(178, 68, '_menu_item_xfn', ''),
(179, 68, '_menu_item_url', ''),
(181, 69, '_menu_item_type', 'post_type'),
(182, 69, '_menu_item_menu_item_parent', '0'),
(183, 69, '_menu_item_object_id', '36'),
(184, 69, '_menu_item_object', 'page'),
(185, 69, '_menu_item_target', ''),
(186, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(187, 69, '_menu_item_xfn', ''),
(188, 69, '_menu_item_url', ''),
(190, 70, '_menu_item_type', 'taxonomy'),
(191, 70, '_menu_item_menu_item_parent', '0'),
(192, 70, '_menu_item_object_id', '3'),
(193, 70, '_menu_item_object', 'category'),
(194, 70, '_menu_item_target', ''),
(195, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(196, 70, '_menu_item_xfn', ''),
(197, 70, '_menu_item_url', ''),
(199, 71, '_menu_item_type', 'post_type'),
(200, 71, '_menu_item_menu_item_parent', '0'),
(201, 71, '_menu_item_object_id', '31'),
(202, 71, '_menu_item_object', 'page'),
(203, 71, '_menu_item_target', ''),
(204, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(205, 71, '_menu_item_xfn', ''),
(206, 71, '_menu_item_url', ''),
(208, 72, '_menu_item_type', 'post_type'),
(209, 72, '_menu_item_menu_item_parent', '69'),
(210, 72, '_menu_item_object_id', '44'),
(211, 72, '_menu_item_object', 'page'),
(212, 72, '_menu_item_target', ''),
(213, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(214, 72, '_menu_item_xfn', ''),
(215, 72, '_menu_item_url', ''),
(217, 73, '_menu_item_type', 'post_type'),
(218, 73, '_menu_item_menu_item_parent', '69'),
(219, 73, '_menu_item_object_id', '46'),
(220, 73, '_menu_item_object', 'page'),
(221, 73, '_menu_item_target', ''),
(222, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(223, 73, '_menu_item_xfn', ''),
(224, 73, '_menu_item_url', ''),
(226, 74, '_menu_item_type', 'post_type'),
(227, 74, '_menu_item_menu_item_parent', '69'),
(228, 74, '_menu_item_object_id', '52'),
(229, 74, '_menu_item_object', 'page'),
(230, 74, '_menu_item_target', ''),
(231, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(232, 74, '_menu_item_xfn', ''),
(233, 74, '_menu_item_url', ''),
(235, 75, '_menu_item_type', 'post_type'),
(236, 75, '_menu_item_menu_item_parent', '69'),
(237, 75, '_menu_item_object_id', '50'),
(238, 75, '_menu_item_object', 'page'),
(239, 75, '_menu_item_target', ''),
(240, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(241, 75, '_menu_item_xfn', ''),
(242, 75, '_menu_item_url', ''),
(244, 76, '_menu_item_type', 'post_type'),
(245, 76, '_menu_item_menu_item_parent', '69'),
(246, 76, '_menu_item_object_id', '48'),
(247, 76, '_menu_item_object', 'page'),
(248, 76, '_menu_item_target', ''),
(249, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(250, 76, '_menu_item_xfn', ''),
(251, 76, '_menu_item_url', ''),
(253, 77, '_menu_item_type', 'post_type'),
(254, 77, '_menu_item_menu_item_parent', '67'),
(255, 77, '_menu_item_object_id', '58'),
(256, 77, '_menu_item_object', 'page'),
(257, 77, '_menu_item_target', ''),
(258, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(259, 77, '_menu_item_xfn', ''),
(260, 77, '_menu_item_url', ''),
(262, 78, '_menu_item_type', 'post_type'),
(263, 78, '_menu_item_menu_item_parent', '67'),
(264, 78, '_menu_item_object_id', '56'),
(265, 78, '_menu_item_object', 'page'),
(266, 78, '_menu_item_target', ''),
(267, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(268, 78, '_menu_item_xfn', ''),
(269, 78, '_menu_item_url', ''),
(271, 79, '_menu_item_type', 'post_type'),
(272, 79, '_menu_item_menu_item_parent', '67'),
(273, 79, '_menu_item_object_id', '54'),
(274, 79, '_menu_item_object', 'page'),
(275, 79, '_menu_item_target', ''),
(276, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(277, 79, '_menu_item_xfn', ''),
(278, 79, '_menu_item_url', ''),
(280, 80, '_menu_item_type', 'post_type'),
(281, 80, '_menu_item_menu_item_parent', '66'),
(282, 80, '_menu_item_object_id', '64'),
(283, 80, '_menu_item_object', 'page'),
(284, 80, '_menu_item_target', ''),
(285, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(286, 80, '_menu_item_xfn', ''),
(287, 80, '_menu_item_url', ''),
(289, 81, '_menu_item_type', 'post_type'),
(290, 81, '_menu_item_menu_item_parent', '66'),
(291, 81, '_menu_item_object_id', '62'),
(292, 81, '_menu_item_object', 'page'),
(293, 81, '_menu_item_target', ''),
(294, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(295, 81, '_menu_item_xfn', ''),
(296, 81, '_menu_item_url', ''),
(298, 82, '_menu_item_type', 'post_type'),
(299, 82, '_menu_item_menu_item_parent', '66'),
(300, 82, '_menu_item_object_id', '60'),
(301, 82, '_menu_item_object', 'page'),
(302, 82, '_menu_item_target', ''),
(303, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(304, 82, '_menu_item_xfn', ''),
(305, 82, '_menu_item_url', ''),
(307, 83, '_edit_last', '1'),
(308, 83, '_wp_page_template', 'default'),
(309, 83, 'slide_template', 'default'),
(310, 83, '_edit_lock', '1413474963:1'),
(311, 85, '_edit_last', '1'),
(312, 85, '_wp_page_template', 'default'),
(313, 85, 'slide_template', 'default'),
(314, 85, '_edit_lock', '1413474974:1'),
(315, 87, '_edit_last', '1'),
(316, 87, '_wp_page_template', 'default'),
(317, 87, 'slide_template', 'default'),
(318, 87, '_edit_lock', '1413542596:1'),
(319, 89, '_edit_last', '1'),
(320, 89, '_wp_page_template', 'default'),
(321, 89, 'slide_template', 'default'),
(322, 89, '_edit_lock', '1413474993:1'),
(323, 91, '_edit_last', '1'),
(324, 91, '_wp_page_template', 'default'),
(325, 91, 'slide_template', 'default'),
(326, 91, '_edit_lock', '1413475001:1'),
(327, 93, '_menu_item_type', 'post_type'),
(328, 93, '_menu_item_menu_item_parent', '71'),
(329, 93, '_menu_item_object_id', '91'),
(330, 93, '_menu_item_object', 'page'),
(331, 93, '_menu_item_target', ''),
(332, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(333, 93, '_menu_item_xfn', ''),
(334, 93, '_menu_item_url', ''),
(336, 94, '_menu_item_type', 'post_type'),
(337, 94, '_menu_item_menu_item_parent', '71'),
(338, 94, '_menu_item_object_id', '89'),
(339, 94, '_menu_item_object', 'page'),
(340, 94, '_menu_item_target', ''),
(341, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(342, 94, '_menu_item_xfn', ''),
(343, 94, '_menu_item_url', ''),
(345, 95, '_menu_item_type', 'post_type'),
(346, 95, '_menu_item_menu_item_parent', '71'),
(347, 95, '_menu_item_object_id', '87'),
(348, 95, '_menu_item_object', 'page'),
(349, 95, '_menu_item_target', ''),
(350, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(351, 95, '_menu_item_xfn', ''),
(352, 95, '_menu_item_url', ''),
(354, 96, '_menu_item_type', 'post_type'),
(355, 96, '_menu_item_menu_item_parent', '71'),
(356, 96, '_menu_item_object_id', '85'),
(357, 96, '_menu_item_object', 'page'),
(358, 96, '_menu_item_target', ''),
(359, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(360, 96, '_menu_item_xfn', ''),
(361, 96, '_menu_item_url', ''),
(363, 97, '_menu_item_type', 'post_type'),
(364, 97, '_menu_item_menu_item_parent', '71'),
(365, 97, '_menu_item_object_id', '83'),
(366, 97, '_menu_item_object', 'page'),
(367, 97, '_menu_item_target', ''),
(368, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(369, 97, '_menu_item_xfn', ''),
(370, 97, '_menu_item_url', ''),
(376, 100, '_wp_attached_file', '2014/10/testimonials-widget.3.0.0.zip'),
(377, 100, '_wp_attachment_context', 'upgrader'),
(378, 102, '_edit_last', '1'),
(379, 102, '_edit_lock', '1413541931:1'),
(380, 102, 'slide_template', 'default'),
(381, 102, '_metaidlast', '2'),
(382, 102, 'testimonials-widget-author', 'Trung jimmy'),
(383, 102, 'testimonials-widget-title', 'dev'),
(384, 102, 'testimonials-widget-location', 'ha noi'),
(385, 102, 'testimonials-widget-company', 'exo'),
(386, 102, 'testimonials-widget-email', 'trung@gmail.com'),
(387, 102, 'testimonials-widget-url', ''),
(388, 103, '_edit_last', '1'),
(389, 103, '_edit_lock', '1413541242:1'),
(390, 103, '_wp_trash_meta_status', 'draft'),
(391, 103, '_wp_trash_meta_time', '1413541391'),
(392, 105, '_edit_last', '1'),
(393, 105, '_edit_lock', '1413541787:1'),
(394, 105, 'slide_template', 'default'),
(395, 105, '_metaidlast', '3'),
(396, 105, 'testimonials-widget-author', 'admin'),
(397, 105, 'testimonials-widget-title', 'dev'),
(398, 105, 'testimonials-widget-location', 'ha noi'),
(399, 105, 'testimonials-widget-company', 'exxo'),
(400, 105, 'testimonials-widget-email', 'trung@gmail.com'),
(401, 105, 'testimonials-widget-url', ''),
(411, 109, '_edit_last', '1'),
(412, 109, '_edit_lock', '1413543635:1'),
(413, 109, '_wp_page_template', 'default'),
(414, 109, 'slide_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `jc_posts`
--

CREATE TABLE IF NOT EXISTS `jc_posts` (
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
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `jc_posts`
--

INSERT INTO `jc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-10-15 09:58:48', '2014-10-15 09:58:48', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Convenient Beer & Wine Selection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-10-16 10:36:55', '2014-10-16 10:36:55', '', 0, 'http://localhost/daily/?p=1', 2, 'post', '', 1),
(2, 1, '2014-10-15 09:58:48', '2014-10-15 09:58:48', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/daily/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-10-16 10:52:55', '2014-10-16 10:52:55', '', 0, 'http://localhost/daily/?page_id=2', 23, 'page', '', 0),
(3, 1, '2014-10-15 09:58:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-15 09:58:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/daily/?p=3', 0, 'post', '', 0),
(7, 1, '2014-10-16 10:06:33', '2014-10-16 10:06:33', '', 'slideshow', '', 'inherit', 'open', 'open', '', 'slideshow', '', '', '2014-10-16 10:06:33', '2014-10-16 10:06:33', '', 0, 'http://localhost/daily/wp-content/uploads/2014/10/slideshow.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2014-10-16 10:31:06', '2014-10-16 10:31:06', 'aloorem ipsum dolor sit amet, consectetur adipiscing elit...Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'Membership comes with benefits.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'publish', 'open', 'open', '', 'membership-comes-with-benefits', '', '', '2014-10-16 10:31:44', '2014-10-16 10:31:44', '', 0, 'http://localhost/daily/?p=8', 5, 'post', '', 0),
(9, 1, '2014-10-16 10:31:00', '2014-10-16 10:31:00', '', 'Membership', '', 'inherit', 'open', 'open', '', 'membership', '', '', '2014-10-16 10:31:00', '2014-10-16 10:31:00', '', 8, 'http://localhost/daily/wp-content/uploads/2014/10/Membership.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2014-10-16 10:31:06', '2014-10-16 10:31:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...\r\n<a href="#">Why would you want to join?&gt;</a>\r\n\r\n<!--more-->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit...Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'Membership comes with benefits.', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-16 10:31:06', '2014-10-16 10:31:06', '', 8, 'http://localhost/daily/?p=10', 0, 'revision', '', 0),
(11, 1, '2014-10-16 10:31:44', '2014-10-16 10:31:44', 'aloorem ipsum dolor sit amet, consectetur adipiscing elit...Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'Membership comes with benefits.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-16 10:31:44', '2014-10-16 10:31:44', '', 8, 'http://localhost/daily/?p=11', 0, 'revision', '', 0),
(12, 1, '2014-10-16 10:35:14', '2014-10-16 10:35:14', 'this is content .Donec eu orci lobortis, vulputate turpis a, consectetur adipiscing elit....', 'We buy local so you can too.', 'Donec eu orci lobortis, vulputate turpis a, consectetur adipiscing elit....', 'publish', 'open', 'open', '', 'we-buy-local-so-you-can-too', '', '', '2014-10-16 10:35:14', '2014-10-16 10:35:14', '', 0, 'http://localhost/daily/?p=12', 4, 'post', '', 0),
(13, 1, '2014-10-16 10:34:58', '2014-10-16 10:34:58', '', 'We-buy-local-so-you-can-too.', '', 'inherit', 'open', 'open', '', 'we-buy-local-so-you-can-too', '', '', '2014-10-16 10:34:58', '2014-10-16 10:34:58', '', 12, 'http://localhost/daily/wp-content/uploads/2014/10/We-buy-local-so-you-can-too..png', 0, 'attachment', 'image/png', 0),
(14, 1, '2014-10-16 10:35:00', '2014-10-16 10:35:00', '', 'We-buy-local-so-you-can-too.', '', 'inherit', 'open', 'open', '', 'we-buy-local-so-you-can-too-2', '', '', '2014-10-16 10:35:00', '2014-10-16 10:35:00', '', 12, 'http://localhost/daily/wp-content/uploads/2014/10/We-buy-local-so-you-can-too.1.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2014-10-16 10:35:14', '2014-10-16 10:35:14', 'this is content .Donec eu orci lobortis, vulputate turpis a, consectetur adipiscing elit....', 'We buy local so you can too.', 'Donec eu orci lobortis, vulputate turpis a, consectetur adipiscing elit....', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-10-16 10:35:14', '2014-10-16 10:35:14', '', 12, 'http://localhost/daily/?p=15', 0, 'revision', '', 0),
(16, 1, '2014-10-16 10:36:33', '2014-10-16 10:36:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'Convenient Beer & Wine Selection', '', 'inherit', 'open', 'open', '', '1-autosave-v1', '', '', '2014-10-16 10:36:33', '2014-10-16 10:36:33', '', 1, 'http://localhost/daily/?p=16', 0, 'revision', '', 0),
(17, 1, '2014-10-16 10:36:39', '2014-10-16 10:36:39', '', 'Convenient-Beer', '', 'inherit', 'open', 'open', '', 'convenient-beer', '', '', '2014-10-16 10:36:39', '2014-10-16 10:36:39', '', 1, 'http://localhost/daily/wp-content/uploads/2014/10/Convenient-Beer.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2014-10-16 10:36:55', '2014-10-16 10:36:55', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Convenient Beer & Wine Selection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-10-16 10:36:55', '2014-10-16 10:36:55', '', 1, 'http://localhost/daily/?p=18', 0, 'revision', '', 0),
(19, 1, '2014-10-16 10:38:22', '2014-10-16 10:38:22', 'Nunc magna eros, facilisis eu tempus eu, posuere nec magna. Donec eu orci lobortis, vulputate turpis a, consectetur adipiscing elit....', 'Get going with food you can trust.', 'Nunc magna eros, facilisis eu tempus eu, posuere nec magna. Donec eu orci lobortis, vulputate turpis a, consectetur adipiscing elit....', 'publish', 'open', 'open', '', 'get-going-with-food-you-can-trust', '', '', '2014-10-16 10:38:22', '2014-10-16 10:38:22', '', 0, 'http://localhost/daily/?p=19', 3, 'post', '', 0),
(20, 1, '2014-10-16 10:38:15', '2014-10-16 10:38:15', '', 'food', '', 'inherit', 'open', 'open', '', 'food', '', '', '2014-10-16 10:38:15', '2014-10-16 10:38:15', '', 19, 'http://localhost/daily/wp-content/uploads/2014/10/food.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2014-10-16 10:38:22', '2014-10-16 10:38:22', 'Nunc magna eros, facilisis eu tempus eu, posuere nec magna. Donec eu orci lobortis, vulputate turpis a, consectetur adipiscing elit....', 'Get going with food you can trust.', 'Nunc magna eros, facilisis eu tempus eu, posuere nec magna. Donec eu orci lobortis, vulputate turpis a, consectetur adipiscing elit....', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2014-10-16 10:38:22', '2014-10-16 10:38:22', '', 19, 'http://localhost/daily/?p=21', 0, 'revision', '', 0),
(24, 1, '2014-10-16 10:50:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-16 10:50:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/daily/?p=24', 0, 'post', '', 0),
(25, 1, '2014-10-16 10:52:55', '2014-10-16 10:52:55', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/daily/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-10-16 10:52:55', '2014-10-16 10:52:55', '', 2, 'http://localhost/daily/?p=25', 0, 'revision', '', 0),
(29, 1, '2014-10-16 15:04:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-16 15:04:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/daily/?p=29', 0, 'post', '', 0),
(30, 1, '2014-10-16 15:06:29', '0000-00-00 00:00:00', '[container]\n[row]\n[column md="6"]\nthis is left\n[/column]\n[column md="6"]\nthis is right\n[/column]\n[/row]\n[/container]', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-10-16 15:06:29', '2014-10-16 15:06:29', '', 0, 'http://localhost/daily/?p=30', 1, 'post', '', 0),
(31, 1, '2014-10-16 15:07:20', '2014-10-16 15:07:20', '\r\n[testimonials category=4]', 'contact us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2014-10-17 10:47:24', '2014-10-17 10:47:24', '', 0, 'http://localhost/daily/?page_id=31', 22, 'page', '', 0),
(32, 1, '2014-10-16 15:07:20', '2014-10-16 15:07:20', '[container]\r\n[row]\r\n[column md="6"]\r\nthis is left\r\n[/column]\r\n[column md="6"]\r\nthis is right\r\n[/column]\r\n[/row]\r\n[/container]', 'contact us', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2014-10-16 15:07:20', '2014-10-16 15:07:20', '', 31, 'http://localhost/daily/?p=32', 0, 'revision', '', 0),
(35, 1, '2014-10-16 15:32:46', '2014-10-16 15:32:46', '<div> [text* your-name placeholder  "Name (optional)"] </div>\r\n\r\n<div>[email* your-email placeholder  "email (optional)"] </div>\r\n\r\n<div>[textarea your-message placeholder "Please type your comment here"] </div>\r\n<div class="clearfix">\r\n<a class="pull-left" href="#">Your privacy is\r\nimportant to us.</a>\r\n<div class="pull-right">[submit "Send" ]</div></div>\n\n[your-name] <trungnguyenthanh70@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: \r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on daily (http://localhost/daily)\ntrungnguyenthanh70@gmail.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\ndaily <trungnguyenthanh70@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on daily (http://localhost/daily)\n[your-email]\nReply-To: trungnguyenthanh70@gmail.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Contact form', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2014-10-16 15:40:43', '2014-10-16 15:40:43', '', 0, 'http://localhost/daily/?post_type=wpcf7_contact_form&#038;p=35', 0, 'wpcf7_contact_form', '', 0),
(36, 1, '2014-10-16 15:49:45', '2014-10-16 15:49:45', '', 'Food you can trust', '', 'publish', 'open', 'open', '', 'food-you-can-trust', '', '', '2014-10-16 15:49:45', '2014-10-16 15:49:45', '', 0, 'http://localhost/daily/?page_id=36', 21, 'page', '', 0),
(37, 1, '2014-10-16 15:49:45', '2014-10-16 15:49:45', '', 'Food you can trust', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2014-10-16 15:49:45', '2014-10-16 15:49:45', '', 36, 'http://localhost/daily/?p=37', 0, 'revision', '', 0),
(38, 1, '2014-10-16 15:49:59', '2014-10-16 15:49:59', '', 'Beer & Wine ', '', 'publish', 'open', 'open', '', 'beer-wine', '', '', '2014-10-16 15:49:59', '2014-10-16 15:49:59', '', 0, 'http://localhost/daily/?page_id=38', 20, 'page', '', 0),
(39, 1, '2014-10-16 15:49:59', '2014-10-16 15:49:59', '', 'Beer & Wine ', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-10-16 15:49:59', '2014-10-16 15:49:59', '', 38, 'http://localhost/daily/?p=39', 0, 'revision', '', 0),
(40, 1, '2014-10-16 15:50:11', '2014-10-16 15:50:11', '', 'Buy Local', '', 'publish', 'open', 'open', '', 'buy-local', '', '', '2014-10-16 15:50:11', '2014-10-16 15:50:11', '', 0, 'http://localhost/daily/?page_id=40', 19, 'page', '', 0),
(41, 1, '2014-10-16 15:50:11', '2014-10-16 15:50:11', '', 'Buy Local', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2014-10-16 15:50:11', '2014-10-16 15:50:11', '', 40, 'http://localhost/daily/?p=41', 0, 'revision', '', 0),
(42, 1, '2014-10-16 15:50:24', '2014-10-16 15:50:24', '', 'Membership     ', '', 'publish', 'open', 'open', '', 'membership', '', '', '2014-10-16 15:50:24', '2014-10-16 15:50:24', '', 0, 'http://localhost/daily/?page_id=42', 18, 'page', '', 0),
(43, 1, '2014-10-16 15:50:24', '2014-10-16 15:50:24', '', 'Membership     ', '', 'inherit', 'open', 'open', '', '42-revision-v1', '', '', '2014-10-16 15:50:24', '2014-10-16 15:50:24', '', 42, 'http://localhost/daily/?p=43', 0, 'revision', '', 0),
(44, 1, '2014-10-16 15:50:43', '2014-10-16 15:50:43', '', 'About', '', 'publish', 'open', 'closed', '', 'about', '', '', '2014-10-17 10:59:12', '2014-10-17 10:59:12', '', 36, 'http://localhost/daily/?page_id=44', 17, 'page', '', 0),
(45, 1, '2014-10-16 15:50:43', '2014-10-16 15:50:43', '', 'About ', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2014-10-16 15:50:43', '2014-10-16 15:50:43', '', 44, 'http://localhost/daily/?p=45', 0, 'revision', '', 0),
(46, 1, '2014-10-16 15:50:56', '2014-10-16 15:50:56', '', 'Daily Exclusives', '', 'publish', 'open', 'closed', '', 'daily-exclusives', '', '', '2014-10-17 10:59:48', '2014-10-17 10:59:48', '', 36, 'http://localhost/daily/?page_id=46', 16, 'page', '', 0),
(47, 1, '2014-10-16 15:50:56', '2014-10-16 15:50:56', '', 'Daily Exclusives ', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2014-10-16 15:50:56', '2014-10-16 15:50:56', '', 46, 'http://localhost/daily/?p=47', 0, 'revision', '', 0),
(48, 1, '2014-10-16 15:51:16', '2014-10-16 15:51:16', '', 'Special Diets ', '', 'publish', 'open', 'open', '', 'special-diets', '', '', '2014-10-16 15:51:16', '2014-10-16 15:51:16', '', 0, 'http://localhost/daily/?page_id=48', 15, 'page', '', 0),
(49, 1, '2014-10-16 15:51:16', '2014-10-16 15:51:16', '', 'Special Diets ', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-10-16 15:51:16', '2014-10-16 15:51:16', '', 48, 'http://localhost/daily/?p=49', 0, 'revision', '', 0),
(50, 1, '2014-10-16 15:51:28', '2014-10-16 15:51:28', '', 'Schedule of Deliveries ', '', 'publish', 'open', 'open', '', 'schedule-of-deliveries', '', '', '2014-10-16 15:51:28', '2014-10-16 15:51:28', '', 0, 'http://localhost/daily/?page_id=50', 14, 'page', '', 0),
(51, 1, '2014-10-16 15:51:28', '2014-10-16 15:51:28', '', 'Schedule of Deliveries ', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2014-10-16 15:51:28', '2014-10-16 15:51:28', '', 50, 'http://localhost/daily/?p=51', 0, 'revision', '', 0),
(52, 1, '2014-10-16 15:51:36', '2014-10-16 15:51:36', '', 'Food FAQs​', '', 'publish', 'open', 'open', '', 'food-faqs%e2%80%8b', '', '', '2014-10-16 15:51:36', '2014-10-16 15:51:36', '', 0, 'http://localhost/daily/?page_id=52', 13, 'page', '', 0),
(53, 1, '2014-10-16 15:51:36', '2014-10-16 15:51:36', '', 'Food FAQs​', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2014-10-16 15:51:36', '2014-10-16 15:51:36', '', 52, 'http://localhost/daily/?p=53', 0, 'revision', '', 0),
(54, 1, '2014-10-16 15:51:58', '2014-10-16 15:51:58', '', 'Featured ', '', 'publish', 'open', 'open', '', 'featured', '', '', '2014-10-16 15:51:58', '2014-10-16 15:51:58', '', 0, 'http://localhost/daily/?page_id=54', 12, 'page', '', 0),
(55, 1, '2014-10-16 15:51:58', '2014-10-16 15:51:58', '', 'Featured ', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2014-10-16 15:51:58', '2014-10-16 15:51:58', '', 54, 'http://localhost/daily/?p=55', 0, 'revision', '', 0),
(56, 1, '2014-10-16 15:52:07', '2014-10-16 15:52:07', '', 'Local Eggs', '', 'publish', 'open', 'open', '', 'local-eggs', '', '', '2014-10-16 15:52:07', '2014-10-16 15:52:07', '', 0, 'http://localhost/daily/?page_id=56', 11, 'page', '', 0),
(57, 1, '2014-10-16 15:52:07', '2014-10-16 15:52:07', '', 'Local Eggs', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2014-10-16 15:52:07', '2014-10-16 15:52:07', '', 56, 'http://localhost/daily/?p=57', 0, 'revision', '', 0),
(58, 1, '2014-10-16 15:52:16', '2014-10-16 15:52:16', '', ' Local Dairy', '', 'publish', 'open', 'open', '', 'local-dairy', '', '', '2014-10-16 15:52:16', '2014-10-16 15:52:16', '', 0, 'http://localhost/daily/?page_id=58', 10, 'page', '', 0),
(59, 1, '2014-10-16 15:52:16', '2014-10-16 15:52:16', '', ' Local Dairy', '', 'inherit', 'open', 'open', '', '58-revision-v1', '', '', '2014-10-16 15:52:16', '2014-10-16 15:52:16', '', 58, 'http://localhost/daily/?p=59', 0, 'revision', '', 0),
(60, 1, '2014-10-16 15:52:37', '2014-10-16 15:52:37', '', 'Benefits ', '', 'publish', 'open', 'open', '', 'benefits', '', '', '2014-10-16 15:52:37', '2014-10-16 15:52:37', '', 0, 'http://localhost/daily/?page_id=60', 9, 'page', '', 0),
(61, 1, '2014-10-16 15:52:37', '2014-10-16 15:52:37', '', 'Benefits ', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2014-10-16 15:52:37', '2014-10-16 15:52:37', '', 60, 'http://localhost/daily/?p=61', 0, 'revision', '', 0),
(62, 1, '2014-10-16 15:52:52', '2014-10-16 15:52:52', '', 'How to Join ', '', 'publish', 'open', 'open', '', 'how-to-join', '', '', '2014-10-16 15:52:52', '2014-10-16 15:52:52', '', 0, 'http://localhost/daily/?page_id=62', 8, 'page', '', 0),
(63, 1, '2014-10-16 15:52:52', '2014-10-16 15:52:52', '', 'How to Join ', '', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2014-10-16 15:52:52', '2014-10-16 15:52:52', '', 62, 'http://localhost/daily/?p=63', 0, 'revision', '', 0),
(64, 1, '2014-10-16 15:53:00', '2014-10-16 15:53:00', '', 'Membership FAQ’s', '', 'publish', 'open', 'open', '', 'membership-faqs', '', '', '2014-10-16 15:53:00', '2014-10-16 15:53:00', '', 0, 'http://localhost/daily/?page_id=64', 7, 'page', '', 0),
(65, 1, '2014-10-16 15:53:00', '2014-10-16 15:53:00', '', 'Membership FAQ’s', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2014-10-16 15:53:00', '2014-10-16 15:53:00', '', 64, 'http://localhost/daily/?p=65', 0, 'revision', '', 0),
(66, 1, '2014-10-16 15:53:50', '2014-10-16 15:53:50', ' ', '', '', 'publish', 'open', 'open', '', '66', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=66', 12, 'nav_menu_item', '', 0),
(67, 1, '2014-10-16 15:53:50', '2014-10-16 15:53:50', ' ', '', '', 'publish', 'open', 'open', '', '67', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=67', 8, 'nav_menu_item', '', 0),
(68, 1, '2014-10-16 15:53:50', '2014-10-16 15:53:50', ' ', '', '', 'publish', 'open', 'open', '', '68', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=68', 7, 'nav_menu_item', '', 0),
(69, 1, '2014-10-16 15:53:50', '2014-10-16 15:53:50', ' ', '', '', 'publish', 'open', 'open', '', '69', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2014-10-16 15:53:51', '2014-10-16 15:53:51', ' ', '', '', 'publish', 'open', 'open', '', '70', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=70', 16, 'nav_menu_item', '', 0),
(71, 1, '2014-10-16 15:55:02', '2014-10-16 15:55:02', ' ', '', '', 'publish', 'open', 'open', '', '71', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=71', 17, 'nav_menu_item', '', 0),
(72, 1, '2014-10-16 15:55:01', '2014-10-16 15:55:01', ' ', '', '', 'publish', 'open', 'open', '', '72', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 36, 'http://localhost/daily/?p=72', 2, 'nav_menu_item', '', 0),
(73, 1, '2014-10-16 15:55:01', '2014-10-16 15:55:01', ' ', '', '', 'publish', 'open', 'open', '', '73', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 36, 'http://localhost/daily/?p=73', 3, 'nav_menu_item', '', 0),
(74, 1, '2014-10-16 15:55:02', '2014-10-16 15:55:02', ' ', '', '', 'publish', 'open', 'open', '', '74', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=74', 6, 'nav_menu_item', '', 0),
(75, 1, '2014-10-16 15:55:02', '2014-10-16 15:55:02', ' ', '', '', 'publish', 'open', 'open', '', '75', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=75', 5, 'nav_menu_item', '', 0),
(76, 1, '2014-10-16 15:55:02', '2014-10-16 15:55:02', ' ', '', '', 'publish', 'open', 'open', '', '76', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=76', 4, 'nav_menu_item', '', 0),
(77, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '77', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=77', 11, 'nav_menu_item', '', 0),
(78, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '78', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=78', 10, 'nav_menu_item', '', 0),
(79, 1, '2014-10-16 15:55:45', '2014-10-16 15:55:45', ' ', '', '', 'publish', 'open', 'open', '', '79', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=79', 9, 'nav_menu_item', '', 0),
(80, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '80', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=80', 15, 'nav_menu_item', '', 0),
(81, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '81', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=81', 14, 'nav_menu_item', '', 0),
(82, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '82', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=82', 13, 'nav_menu_item', '', 0),
(83, 1, '2014-10-16 15:56:00', '2014-10-16 15:56:00', '', 'Directions ', '', 'publish', 'open', 'open', '', 'directions', '', '', '2014-10-16 15:56:00', '2014-10-16 15:56:00', '', 0, 'http://localhost/daily/?page_id=83', 6, 'page', '', 0),
(84, 1, '2014-10-16 15:56:00', '2014-10-16 15:56:00', '', 'Directions ', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2014-10-16 15:56:00', '2014-10-16 15:56:00', '', 83, 'http://localhost/daily/?p=84', 0, 'revision', '', 0),
(85, 1, '2014-10-16 15:56:11', '2014-10-16 15:56:11', '', 'Hours ', '', 'publish', 'open', 'open', '', 'hours', '', '', '2014-10-16 15:56:11', '2014-10-16 15:56:11', '', 0, 'http://localhost/daily/?page_id=85', 5, 'page', '', 0),
(86, 1, '2014-10-16 15:56:11', '2014-10-16 15:56:11', '', 'Hours ', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2014-10-16 15:56:11', '2014-10-16 15:56:11', '', 85, 'http://localhost/daily/?p=86', 0, 'revision', '', 0),
(87, 1, '2014-10-16 15:56:21', '2014-10-16 15:56:21', '', 'Contacts Info', '', 'publish', 'open', 'open', '', 'contacts-info', '', '', '2014-10-16 15:56:21', '2014-10-16 15:56:21', '', 0, 'http://localhost/daily/?page_id=87', 4, 'page', '', 0),
(88, 1, '2014-10-16 15:56:21', '2014-10-16 15:56:21', '', 'Contacts Info', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2014-10-16 15:56:21', '2014-10-16 15:56:21', '', 87, 'http://localhost/daily/?p=88', 0, 'revision', '', 0),
(89, 1, '2014-10-16 15:56:30', '2014-10-16 15:56:30', '', ' Gift Certificates ', '', 'publish', 'open', 'open', '', 'gift-certificates', '', '', '2014-10-16 15:56:30', '2014-10-16 15:56:30', '', 0, 'http://localhost/daily/?page_id=89', 3, 'page', '', 0),
(90, 1, '2014-10-16 15:56:30', '2014-10-16 15:56:30', '', ' Gift Certificates ', '', 'inherit', 'open', 'open', '', '89-revision-v1', '', '', '2014-10-16 15:56:30', '2014-10-16 15:56:30', '', 89, 'http://localhost/daily/?p=90', 0, 'revision', '', 0),
(91, 1, '2014-10-16 15:56:40', '2014-10-16 15:56:40', '', 'Comments', '', 'publish', 'open', 'open', '', 'comments', '', '', '2014-10-16 15:56:40', '2014-10-16 15:56:40', '', 0, 'http://localhost/daily/?page_id=91', 2, 'page', '', 0),
(92, 1, '2014-10-16 15:56:40', '2014-10-16 15:56:40', '', 'Comments', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2014-10-16 15:56:40', '2014-10-16 15:56:40', '', 91, 'http://localhost/daily/?p=92', 0, 'revision', '', 0),
(93, 1, '2014-10-16 15:57:14', '2014-10-16 15:57:14', ' ', '', '', 'publish', 'open', 'open', '', '93', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=93', 22, 'nav_menu_item', '', 0),
(94, 1, '2014-10-16 15:57:14', '2014-10-16 15:57:14', ' ', '', '', 'publish', 'open', 'open', '', '94', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=94', 21, 'nav_menu_item', '', 0),
(95, 1, '2014-10-16 15:57:13', '2014-10-16 15:57:13', ' ', '', '', 'publish', 'open', 'open', '', '95', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=95', 20, 'nav_menu_item', '', 0),
(96, 1, '2014-10-16 15:57:13', '2014-10-16 15:57:13', ' ', '', '', 'publish', 'open', 'open', '', '96', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=96', 19, 'nav_menu_item', '', 0),
(97, 1, '2014-10-16 15:57:13', '2014-10-16 15:57:13', ' ', '', '', 'publish', 'open', 'open', '', '97', '', '', '2014-10-17 11:11:10', '2014-10-17 11:11:10', '', 0, 'http://localhost/daily/?p=97', 18, 'nav_menu_item', '', 0),
(100, 1, '2014-10-17 10:17:58', '2014-10-17 10:17:58', 'http://localhost/daily/wp-content/uploads/2014/10/testimonials-widget.3.0.0.zip', 'testimonials-widget.3.0.0.zip', '', 'private', 'open', 'open', '', 'testimonials-widget-3-0-0-zip', '', '', '2014-10-17 10:17:58', '2014-10-17 10:17:58', '', 0, 'http://localhost/daily/wp-content/uploads/2014/10/testimonials-widget.3.0.0.zip', 1, 'attachment', '', 0),
(101, 1, '2014-10-17 10:20:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-17 10:20:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/daily/?post_type=testimonials-widget&p=101', 0, 'testimonials-widget', '', 0),
(102, 1, '2014-10-17 10:22:10', '2014-10-17 10:22:10', 'Ut bibendum metus sed est accumsan interdum. Phasellus consectetur in leo eget posuere. Cras fringilla orci eget augue sollicitudin, vel pulvinar odio tincidunt.', 'Trung Jimmy', '', 'publish', 'closed', 'closed', '', 'trung-jimmy', '', '', '2014-10-17 10:32:09', '2014-10-17 10:32:09', '', 0, 'http://localhost/daily/?post_type=testimonials-widget&#038;p=102', 0, 'testimonials-widget', '', 0),
(103, 1, '2014-10-17 10:22:29', '2014-10-17 10:22:29', '“Ut bibendum metus sed est accumsan interdum. Phasellus consectetur in leo eget posuere. Cras fringilla orci eget augue sollicitudin, vel pulvinar odio tincidunt. ”\n', 'admin', '', 'trash', 'closed', 'closed', '', 'admin', '', '', '2014-10-17 10:23:11', '2014-10-17 10:23:11', '', 0, 'http://localhost/daily/?post_type=testimonials-widget&#038;p=103', 0, 'testimonials-widget', '', 0),
(104, 1, '2014-10-17 10:22:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-17 10:22:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/daily/?post_type=testimonials-widget&p=104', 0, 'testimonials-widget', '', 0),
(105, 1, '2014-10-17 10:23:30', '2014-10-17 10:23:30', 'Ut bibendum metus sed est accumsan interdum. Phasellus consectetur in leo eget posuere. Cras fringilla orci eget augue sollicitudin, vel pulvinar odio tincidunt.', 'admin', '', 'publish', 'closed', 'closed', '', 'admin-2', '', '', '2014-10-17 10:32:04', '2014-10-17 10:32:04', '', 0, 'http://localhost/daily/?post_type=testimonials-widget&#038;p=105', 0, 'testimonials-widget', '', 0),
(106, 1, '2014-10-17 10:46:54', '2014-10-17 10:46:54', '\nRead what others are saying.>', 'contact us', '', 'inherit', 'open', 'open', '', '31-autosave-v1', '', '', '2014-10-17 10:46:54', '2014-10-17 10:46:54', '', 31, 'http://localhost/daily/?p=106', 0, 'revision', '', 0),
(107, 1, '2014-10-17 10:47:24', '2014-10-17 10:47:24', '\r\n[testimonials category=4]', 'contact us', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2014-10-17 10:47:24', '2014-10-17 10:47:24', '', 31, 'http://localhost/daily/?p=107', 0, 'revision', '', 0),
(109, 1, '2014-10-17 11:02:52', '2014-10-17 11:02:52', '[testimonials category=4]', 'Testimonial', '', 'publish', 'open', 'open', '', 'testimonial-2', '', '', '2014-10-17 11:02:52', '2014-10-17 11:02:52', '', 0, 'http://localhost/daily/?page_id=109', 1, 'page', '', 0),
(110, 1, '2014-10-17 11:02:52', '2014-10-17 11:02:52', '[testimonials category=4]', 'Testimonial', '', 'inherit', 'open', 'open', '', '109-revision-v1', '', '', '2014-10-17 11:02:52', '2014-10-17 11:02:52', '', 109, 'http://localhost/daily/?p=110', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jc_revslider_css`
--

CREATE TABLE IF NOT EXISTS `jc_revslider_css` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `settings` text,
  `hover` text,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `jc_revslider_css`
--

INSERT INTO `jc_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.boxshadow', NULL, NULL, '{"-moz-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","-webkit-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)"}'),
(15, '.tp-caption.black', NULL, NULL, '{"color":"#000","text-shadow":"none"}'),
(16, '.tp-caption.noshadow', NULL, NULL, '{"text-shadow":"none"}'),
(17, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(18, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(19, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(21, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(22, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(23, '.tp-caption.excerpt', NULL, NULL, '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","padding":"1px 4px 0px 4px","width":"150px","white-space":"normal !important","height":"auto","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(24, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(25, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(28, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.grassfloor', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(160, 179, 151, 1)","width":"4000px","height":"150px","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(36, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(42, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.mediumlarge_light_darkblue', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(44, '.tp-caption.small_light_white', NULL, NULL, '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(45, '.tp-caption.roundedimage', NULL, NULL, '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(46, '.tp-caption.large_bg_black', NULL, NULL, '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(47, '.tp-caption.mediumwhitebg', NULL, NULL, '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Table structure for table `jc_revslider_layer_animations`
--

CREATE TABLE IF NOT EXISTS `jc_revslider_layer_animations` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jc_revslider_settings`
--

CREATE TABLE IF NOT EXISTS `jc_revslider_settings` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `general` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jc_revslider_settings`
--

INSERT INTO `jc_revslider_settings` (`id`, `general`, `params`) VALUES
(1, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `jc_revslider_sliders`
--

CREATE TABLE IF NOT EXISTS `jc_revslider_sliders` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jc_revslider_sliders`
--

INSERT INTO `jc_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'home-slider', 'home', '{"title":"home-slider","alias":"home","shortcode":"[rev_slider home]","source_type":"gallery","post_types":"post","post_category":"category_1","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_offset_size":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"off","min_height":"0","width":"960","height":"340","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"9000","shuffle":"off","lazy_load":"off","use_wpml":"off","enable_static_layers":"off","next_slide_on_window_focus":"off","simplify_ie8_ios4":"off","stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"show_timerbar":"top","loop_slide":"loop","position":"center","margin_top":0,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"0","padding":0,"background_color":"#E9E9E9","background_dotted_overlay":"none","show_background_image":"false","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","stop_on_hover":"on","keyboard_navigation":"off","navigation_style":"round","navigaion_type":"bullet","navigation_arrows":"solo","navigaion_always_on":"false","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"use_spinner":"0","spinner_color":"#FFFFFF","use_parallax":"off","disable_parallax_mobile":"off","parallax_type":"mouse","parallax_bg_freeze":"off","parallax_level_1":"5","parallax_level_2":"10","parallax_level_3":"15","parallax_level_4":"20","parallax_level_5":"25","parallax_level_6":"30","parallax_level_7":"35","parallax_level_8":"40","parallax_level_9":"45","parallax_level_10":"50","touchenabled":"on","swipe_velocity":75,"swipe_min_touches":1,"drag_block_vertical":"false","disable_on_mobile":"off","disable_kenburns_on_mobile":"off","hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_arrows_on_mobile":"off","hide_bullets_on_mobile":"off","hide_thumbs_on_mobile":"off","hide_thumbs_under_resolution":0,"hide_thumbs_delay_mobile":1500,"start_with_slide":"1","first_transition_active":"false","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","jquery_noconflict":"on","js_to_body":"false","output_type":"none","custom_css":"","custom_javascript":"","template":"false"}');

-- --------------------------------------------------------

--
-- Table structure for table `jc_revslider_slides`
--

CREATE TABLE IF NOT EXISTS `jc_revslider_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jc_revslider_slides`
--

INSERT INTO `jc_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 1, '{"background_type":"image","image":"http:\\/\\/localhost\\/daily\\/wp-content\\/uploads\\/2014\\/10\\/slideshow.png","image_id":"7","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone"}', '[{"text":"Friendly headline about<br\\/>\\nfresh local food.","type":"text","left":100,"top":100,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"large_text","time":500,"endtime":"8700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":0,"endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8500,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Our new delivery schedule","type":"text","left":101,"top":198,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"medium_bg_red","time":500,"endtime":"8700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":0,"height":0,"serial":1,"endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8500,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(2, 1, 2, '{"background_type":"image","image":"http:\\/\\/localhost\\/daily\\/wp-content\\/uploads\\/2014\\/10\\/slideshow.png","image_id":"7","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone"}', '[{"text":"Friendly headline about<br\\/>\\nfresh local food.","type":"text","left":100,"top":100,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"large_text","time":500,"endtime":"8700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":0,"endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8500,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"Our new delivery schedule","type":"text","left":101,"top":198,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":300,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"medium_bg_red","time":500,"endtime":"8700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":0,"height":0,"serial":1,"endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":9000,"timeLast":8500,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]');

-- --------------------------------------------------------

--
-- Table structure for table `jc_revslider_static_slides`
--

CREATE TABLE IF NOT EXISTS `jc_revslider_static_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jc_terms`
--

CREATE TABLE IF NOT EXISTS `jc_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jc_terms`
--

INSERT INTO `jc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'primary menu', 'primary-menu', 0),
(3, 'news', 'news', 0),
(4, 'Testimonial', 'testimonial', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jc_term_relationships`
--

CREATE TABLE IF NOT EXISTS `jc_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jc_term_relationships`
--

INSERT INTO `jc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(8, 3, 0),
(12, 3, 0),
(19, 3, 0),
(30, 1, 0),
(66, 2, 0),
(67, 2, 0),
(68, 2, 0),
(69, 2, 0),
(70, 2, 0),
(71, 2, 0),
(72, 2, 0),
(73, 2, 0),
(74, 2, 0),
(75, 2, 0),
(76, 2, 0),
(77, 2, 0),
(78, 2, 0),
(79, 2, 0),
(80, 2, 0),
(81, 2, 0),
(82, 2, 0),
(93, 2, 0),
(94, 2, 0),
(95, 2, 0),
(96, 2, 0),
(97, 2, 0),
(102, 4, 0),
(105, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jc_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `jc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jc_term_taxonomy`
--

INSERT INTO `jc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 22),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jc_usermeta`
--

CREATE TABLE IF NOT EXISTS `jc_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `jc_usermeta`
--

INSERT INTO `jc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'jc_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'jc_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:4:{s:64:"491c8091cd8fdc42cdcb2b4dac47d4a0e402f12bdb6213204980431898af25b4";i:1413539936;s:64:"9031fddef122859ba92a2ad59bbc582abc4ccc37ffd200aed1d906207c86752a";i:1413626543;s:64:"47a2fc35f541030699a108aa1ab1de2850db7314cd290feccea5f462800629b5";i:1413643872;s:64:"af7f5dde23008e36093e75a446b75e59f029da13443de9158fa0e42eaecfa889";i:1413701900;}'),
(15, 1, 'jc_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:15:"add-html5-blank";i:2;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'jc_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'jc_user-settings-time', '1413541327'),
(21, 1, 'closedpostboxes_post', 'a:1:{i:0;s:21:"mymetabox_revslider_0";}'),
(22, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(23, 1, 'closedpostboxes_testimonials-widget', 'a:0:{}'),
(24, 1, 'metaboxhidden_testimonials-widget', 'a:1:{i:0;s:7:"slugdiv";}'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `jc_users`
--

CREATE TABLE IF NOT EXISTS `jc_users` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jc_users`
--

INSERT INTO `jc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bzi.t4mEV1X6KVC6yT/PHd/pcPEtbE1', 'admin', 'trungnguyenthanh70@gmail.com', '', '2014-10-15 09:58:48', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
