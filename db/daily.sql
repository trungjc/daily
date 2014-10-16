-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2014 at 06:23 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `daily`
--

-- --------------------------------------------------------

--
-- Table structure for table `jc_commentmeta`
--

CREATE TABLE IF NOT EXISTS `jc_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jc_comments`
--

CREATE TABLE IF NOT EXISTS `jc_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
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
`link_id` bigint(20) unsigned NOT NULL,
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
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jc_options`
--

CREATE TABLE IF NOT EXISTS `jc_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=184 ;

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
(33, 'active_plugins', 'a:5:{i:0;s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:23:"revslider/revslider.php";i:3;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:4;s:47:"ultimate-posts-widget/ultimate-posts-widget.php";}', 'yes'),
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
(80, 'widget_text', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:174:"<h2>FEEDBACK</h2>\r\n<div class="title">Drop a Comment</div>\r\n<p>Nunc magna eros, facilisis eu tempus eu, posuere nec magna. </p>\r\n[contact-form-7 id="35" title="Contact form"]";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:504:"  <!-- copyright -->\r\n				<p class="copyright">\r\n                                    <a href="" >Privacy</a>  \r\n                                    <a href="" >   Site Map  </a>  \r\n                                     <a href="" >©2014 Daily Groceries Co-op </a>  \r\n                                    <a href="" >Designed by Lightmark Media  </a>  \r\n                                       \r\n                                    <a href="" >Developed by picobarn </a>  \r\n				</p>\r\n				<!-- /copyright -->";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:13:"widget-area-1";a:2:{i:0;s:14:"sticky-posts-2";i:1;s:6:"text-2";}s:13:"widget-area-2";a:0:{}s:13:"widget-area-3";a:2:{i:0;s:10:"nav_menu-2";i:1;s:6:"text-3";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:9:{i:1413478862;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"4334b88fe3501b2f0e4f630eb24f7ca5";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:26;}}}}i:1413478918;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"4fde22776ee75e22ac8342be3aa0c974";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:27;}}}}i:1413479045;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"17f415781210aaa50f7cb291eccfc7af";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:28;}}}}i:1413480756;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"b76accc01229b487518cb150a88235da";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:34;}}}}i:1413488040;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1413496731;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1413539944;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1413541731;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_transient_random_seed', '280d459b2941ec3433df67f2bcd6fbf0', 'yes'),
(99, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1413473559;s:15:"version_checked";s:3:"4.0";s:12:"translations";a:0:{}}', 'yes'),
(107, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1413473574;s:7:"checked";a:4:{s:5:"daily";s:0:"";s:14:"twentyfourteen";s:3:"1.2";s:14:"twentythirteen";s:3:"1.3";s:12:"twentytwelve";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(108, '_transient_timeout_plugin_slugs', '1413559969', 'no'),
(109, '_transient_plugin_slugs', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:23:"revslider/revslider.php";i:4;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:5;s:47:"ultimate-posts-widget/ultimate-posts-widget.php";}', 'no'),
(112, 'can_compress_scripts', '1', 'yes'),
(116, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1413367228;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(117, 'current_theme', 'HTML5 Blank', 'yes'),
(118, 'theme_mods_daily', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(119, 'theme_switched', '', 'yes'),
(120, 'recently_activated', 'a:2:{s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";i:1413471914;s:53:"easy-bootstrap-shortcodes/osc_bootstrap_shortcode.php";i:1413471905;}', 'yes'),
(121, 'revslider_checktables', '1', 'yes'),
(122, 'revslider-static-css', '.tp-caption a {\ncolor:#ff7302;\ntext-shadow:none;\n-webkit-transition:all 0.2s ease-out;\n-moz-transition:all 0.2s ease-out;\n-o-transition:all 0.2s ease-out;\n-ms-transition:all 0.2s ease-out;\n}\n\n.tp-caption a:hover {\ncolor:#ffa902;\n}', 'yes'),
(123, 'revslider-update-check-short', '1413367388', 'yes'),
(124, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(130, 'category_children', 'a:0:{}', 'yes'),
(142, 'bs_options', 'a:12:{s:23:"chk_default_options_css";s:1:"1";s:22:"chk_default_options_js";s:1:"1";s:24:"chk_default_options_grid";s:1:"1";s:24:"chk_default_options_tabs";s:1:"1";s:28:"chk_default_options_collapse";s:1:"1";s:26:"chk_default_options_alerts";s:1:"1";s:25:"chk_default_options_wells";s:1:"1";s:27:"chk_default_options_buttons";s:1:"1";s:26:"chk_default_options_labels";s:1:"1";s:25:"chk_default_options_icons";s:1:"1";s:24:"chk_default_options_lead";s:1:"1";s:27:"chk_default_options_tooltip";s:1:"1";}', 'yes'),
(144, 'widget_sticky-posts', 'a:2:{i:2;a:32:{s:5:"title";s:10:"DAILY NEWS";s:5:"class";s:0:"";s:10:"title_link";s:0:"";s:6:"number";s:1:"1";s:5:"types";s:4:"post";s:4:"cats";s:1:"3";s:4:"tags";s:0:"";s:5:"atcat";b:1;s:5:"attag";b:0;s:12:"show_excerpt";b:1;s:12:"show_content";b:0;s:14:"show_thumbnail";b:1;s:9:"show_date";b:0;s:11:"date_format";s:12:"F j, Y g:i a";s:10:"show_title";b:1;s:11:"show_author";b:0;s:13:"show_comments";b:0;s:10:"thumb_size";s:6:"medium";s:13:"show_readmore";b:1;s:14:"excerpt_length";s:2:"10";s:16:"excerpt_readmore";s:26:"Read the rest of the story";s:6:"sticky";s:4:"show";s:5:"order";s:4:"DESC";s:7:"orderby";s:4:"date";s:8:"meta_key";s:0:"";s:9:"show_cats";b:0;s:9:"show_tags";b:0;s:13:"custom_fields";s:0:"";s:8:"template";s:8:"standard";s:15:"template_custom";s:0:"";s:12:"before_posts";s:0:"";s:11:"after_posts";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(146, '_site_transient_timeout_browser_b7686c633cfe8719a4fab9e3e09c6b8e', '1414075875', 'yes'),
(147, '_site_transient_browser_b7686c633cfe8719a4fab9e3e09c6b8e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"32.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(148, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1413514287', 'no');
INSERT INTO `jc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(149, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:51:"\n	\n	\n	\n	\n	\n	\n		\n		\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Oct 2014 13:39:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:42:"http://wordpress.org/?v=4.1-alpha-20141016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"WordPress 4.0 “Benny”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wordpress.org/news/2014/09/benny/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wordpress.org/news/2014/09/benny/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 04 Sep 2014 17:05:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3296";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:370:"Version 4.0 of WordPress, named “Benny” in honor of jazz clarinetist and bandleader Benny Goodman, is available for download or update in your WordPress dashboard. While 4.0 is just another number for us after 3.9 and before 4.1, we feel we&#8217;ve put a little extra polish into it. This release brings you a smoother writing and management experience [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:23113:"<p>Version 4.0 of WordPress, named “Benny” in honor of jazz clarinetist and bandleader <a href="http://en.wikipedia.org/wiki/Benny_Goodman">Benny Goodman</a>, is available <a href="https://wordpress.org/download/">for download</a> or update in your WordPress dashboard. While 4.0 is just another number for us after 3.9 and before 4.1, we feel we&#8217;ve put a little extra polish into it. This release brings you a smoother writing and management experience we think you&#8217;ll enjoy.</p>\n<div id="v-bUdzKMro-1" class="video-player"><embed id="v-bUdzKMro-1-video" src="https://v0.wordpress.com/player.swf?v=1.03&amp;guid=bUdzKMro&amp;isDynamicSeeking=true" type="application/x-shockwave-flash" width="692" height="388" title="Introducing WordPress 4.0 &quot;Benny&quot;" wmode="direct" seamlesstabbing="true" allowfullscreen="true" allowscriptaccess="always" overstretch="true"></embed></div>\n<hr />\n<h2 style="text-align: center">Manage your media with style</h2>\n<p><img class="alignnone size-full wp-image-3316" src="https://wordpress.org/news/files/2014/09/media.jpg" alt="Media Library" width="1000" height="586" />Explore your uploads in a beautiful, endless grid. A new details preview makes viewing and editing any amount of media in sequence a snap.</p>\n<hr />\n<h2 style="text-align: center">Working with embeds has never been easier</h2>\n<div style="width: 632px; height: 445px; " class="wp-video"><!--[if lt IE 9]><script>document.createElement(''video'');</script><![endif]-->\n<video class="wp-video-shortcode" id="video-3296-1" width="632" height="445" autoplay="true" preload="metadata" controls="controls"><source type="video/mp4" src="//s.w.org/images/core/4.0/embed.mp4?_=1" /><source type="video/webm" src="//s.w.org/images/core/4.0/embed.webm?_=1" /><source type="video/ogg" src="//s.w.org/images/core/4.0/embed.ogv?_=1" /><a href="//s.w.org/images/core/4.0/embed.mp4">//s.w.org/images/core/4.0/embed.mp4</a></video></div>\n<p>Paste in a YouTube URL on a new line, and watch it magically become an embedded video. Now try it with a tweet. Oh yeah — embedding has become a visual experience. The editor shows a true preview of your embedded content, saving you time and giving you confidence.</p>\n<p>We’ve expanded the services supported by default, too — you can embed videos from CollegeHumor, playlists from YouTube, and talks from TED. <a href="https://codex.wordpress.org/Embeds">Check out all of the embeds</a> that WordPress supports.</p>\n<hr />\n<h2 style="text-align: center">Focus on your content</h2>\n<div style="width: 632px; height: 356px; " class="wp-video"><video class="wp-video-shortcode" id="video-3296-2" width="632" height="356" autoplay="true" preload="metadata" controls="controls"><source type="video/mp4" src="//s.w.org/images/core/4.0/focus.mp4?_=2" /><source type="video/webm" src="//s.w.org/images/core/4.0/focus.webm?_=2" /><source type="video/ogg" src="//s.w.org/images/core/4.0/focus.ogv?_=2" /><a href="//s.w.org/images/core/4.0/focus.mp4">//s.w.org/images/core/4.0/focus.mp4</a></video></div>\n<p>Writing and editing is smoother and more immersive with an editor that expands to fit your content as you write, and keeps the formatting tools available at all times.</p>\n<hr />\n<h2 style="text-align: center">Finding the right plugin</h2>\n<p><img class="aligncenter size-large wp-image-3309" src="https://wordpress.org/news/files/2014/09/add-plugin1-1024x600.png" alt="Add plugins" width="692" height="405" /></p>\n<p>There are more than 30,000 free and open source plugins in the WordPress plugin directory. WordPress 4.0 makes it easier to find the right one for your needs, with new metrics, improved search, and a more visual browsing experience.</p>\n<hr />\n<h2 style="text-align: center">The Ensemble</h2>\n<p>This release was led by <a href="http://helenhousandi.com">Helen Hou-Sandí</a>, with the help of these fine individuals. There are 275 contributors with props in this release, a new high. Pull up some Benny Goodman on your music service of choice, as a bandleader or in one of his turns as a classical clarinetist, and check out some of their profiles:</p>\n<p><a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/kawauso">Adam Harley</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adelval">adelval</a>, <a href="https://profiles.wordpress.org/ajay">Ajay</a>, <a href="https://profiles.wordpress.org/akeda">Akeda Bagus</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/tellyworth">Alex Shiels</a>, <a href="https://profiles.wordpress.org/aliso">Alison Barrett</a>, <a href="https://profiles.wordpress.org/collinsinternet">Allan Collins</a>, <a href="https://profiles.wordpress.org/sabreuse">Amy Hendrix (sabreuse)</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/norcross">Andrew Norcross</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rarst">Andrey "Rarst" Savchenko</a>, <a href="https://profiles.wordpress.org/andykeith">Andy Keith</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="https://profiles.wordpress.org/aubreypwd">Aubrey Portwood</a>, <a href="https://profiles.wordpress.org/barry">Barry</a>, <a href="https://profiles.wordpress.org/toszcze">Bartosz Romanowski</a>, <a href="https://profiles.wordpress.org/bassgang">bassgang</a>, <a href="https://profiles.wordpress.org/bcworkz">bcworkz</a>, <a href="https://profiles.wordpress.org/empireoflight">Ben Dunkle</a>, <a href="https://profiles.wordpress.org/neoxx">Bernhard Riedl</a>, <a href="https://profiles.wordpress.org/bigdawggi">bigdawggi</a>, <a href="https://profiles.wordpress.org/bobbravo2">Bob Gregor</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="https://profiles.wordpress.org/bradparbs">bradparbs</a>, <a href="https://profiles.wordpress.org/bramd">Bram Duvigneau</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brasofilo">brasofilo</a>, <a href="https://profiles.wordpress.org/bravokeyl">bravokeyl</a>, <a href="https://profiles.wordpress.org/bpetty">Bryan Petty</a>, <a href="https://profiles.wordpress.org/cgaffga">cgaffga</a>, <a href="https://profiles.wordpress.org/chiragswadia">Chirag Swadia</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/ehg">Chris Blower</a>, <a href="https://profiles.wordpress.org/cmmarslender">Chris Marslender</a>, <a href="https://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="https://profiles.wordpress.org/chrisscott">Chris Scott</a>, <a href="https://profiles.wordpress.org/chriseverson">chriseverson</a>, <a href="https://profiles.wordpress.org/chrisguitarguy">chrisguitarguy</a>, <a href="https://profiles.wordpress.org/cfinke">Christopher Finke</a>, <a href="https://profiles.wordpress.org/ciantic">ciantic</a>, <a href="https://profiles.wordpress.org/antorome">Comparativa de Bancos</a>, <a href="https://profiles.wordpress.org/cojennin">Connor Jennings</a>, <a href="https://profiles.wordpress.org/corvannoorloos">Cor van Noorloos</a>, <a href="https://profiles.wordpress.org/corphi">Corphi</a>, <a href="https://profiles.wordpress.org/cramdesign">cramdesign</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/redsweater">Daniel Jalkut (Red Sweater)</a>, <a href="https://profiles.wordpress.org/dannydehaan">Danny de Haan</a>, <a href="https://profiles.wordpress.org/koop">Daryl Koopersmith</a>, <a href="https://profiles.wordpress.org/eightface">Dave Kellam (eightface)</a>, <a href="https://profiles.wordpress.org/dpe415">DaveE</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davidanderson">David Anderson</a>, <a href="https://profiles.wordpress.org/davidmarichal">David Marichal</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/drprotocols">DrProtocols</a>, <a href="https://profiles.wordpress.org/dustyf">Dustin Filippini</a>, <a href="https://profiles.wordpress.org/eatingrules">eatingrules</a>, <a href="https://profiles.wordpress.org/plocha">edik</a>, <a href="https://profiles.wordpress.org/oso96_2000">Eduardo Reveles</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/enej">enej</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Lewis</a>, <a href="https://profiles.wordpress.org/ericmann">Eric Mann</a>, <a href="https://profiles.wordpress.org/evarlese">Erica Varlese</a>, <a href="https://profiles.wordpress.org/ethitter">Erick Hitter</a>, <a href="https://profiles.wordpress.org/ejdanderson">Evan Anderson</a>, <a href="https://profiles.wordpress.org/fahmiadib">Fahmi Adib</a>, <a href="https://profiles.wordpress.org/fboender">fboender</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/garyc40">Gary Cao</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/genkisan">genkisan</a>, <a href="https://profiles.wordpress.org/soulseekah">Gennady Kovshenin</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/grahamarmfield">Graham Armfield</a>, <a href="https://profiles.wordpress.org/vancoder">Grant Mangham</a>, <a href="https://profiles.wordpress.org/gcorne">Gregory Cornelius</a>, <a href="https://profiles.wordpress.org/tivnet">Gregory Karpinsky (@tivnet)</a>, <a href="https://profiles.wordpress.org/hakre">hakre</a>, <a href="https://profiles.wordpress.org/hanni">hanni</a>, <a href="https://profiles.wordpress.org/ippetkov">ippetkov</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jackreichert">Jack Reichert</a>, <a href="https://profiles.wordpress.org/_jameslee">jameslee</a>, <a href="https://profiles.wordpress.org/avryl">Janneke Van Dorpe</a>, <a href="https://profiles.wordpress.org/janrenn">janrenn</a>, <a href="https://profiles.wordpress.org/jaycc">JayCC</a>, <a href="https://profiles.wordpress.org/jeffsebring">Jeff Sebring</a>, <a href="https://profiles.wordpress.org/jenmylo">Jen</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/jayjdk">Jesper Johansen (jayjdk)</a>, <a href="https://profiles.wordpress.org/jnielsendotnet">jnielsendotnet</a>, <a href="https://profiles.wordpress.org/jartes">Joan Artes</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpbloch">John P. Bloch</a>, <a href="https://profiles.wordpress.org/johnregan3">John Regan</a>, <a href="https://profiles.wordpress.org/duck_">Jon Cave</a>, <a href="https://profiles.wordpress.org/jond3r">Jonas Bolinder (jond3r)</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshuaabenazer">Joshua Abenazer</a>, <a href="https://profiles.wordpress.org/jstraitiff">jstraitiff</a>, <a href="https://profiles.wordpress.org/juliobox">Julio Potier</a>, <a href="https://profiles.wordpress.org/kopepasah">Justin Kopepasah</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/kadamwhite">K.Adam White</a>, <a href="https://profiles.wordpress.org/trepmal">Kailey (trepmal)</a>, <a href="https://profiles.wordpress.org/kasparsd">Kaspars</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/kerikae">kerikae</a>, <a href="https://profiles.wordpress.org/kworthington">Kevin Worthington</a>, <a href="https://profiles.wordpress.org/kpdesign">Kim Parsell</a>, <a href="https://profiles.wordpress.org/kwight">Kirk Wight</a>, <a href="https://profiles.wordpress.org/kitchin">kitchin</a>, <a href="https://profiles.wordpress.org/klihelp">klihelp</a>, <a href="https://profiles.wordpress.org/knutsp">Knut Sparhell</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/drozdz">Krzysiek Drozdz</a>, <a href="https://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="https://profiles.wordpress.org/ldebrouwer">ldebrouwer</a>, <a href="https://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="https://profiles.wordpress.org/lpointet">lpointet</a>, <a href="https://profiles.wordpress.org/spmlucas">Lucas Karpiuk</a>, <a href="https://profiles.wordpress.org/lkwdwrd">Luke Woodward</a>, <a href="https://profiles.wordpress.org/nofearinc">Mario Peshev</a>, <a href="https://profiles.wordpress.org/mark8barnes">Mark Barnes</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/marventus">Marventus</a>, <a href="https://profiles.wordpress.org/iammattthomas">Matt (Thomas) Miklic</a>, <a href="https://profiles.wordpress.org/mjbanks">Matt Banks</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/mboynes">Matthew Boynes</a>, <a href="https://profiles.wordpress.org/mdbitz">Matthew Denton</a>, <a href="https://profiles.wordpress.org/mattheu">Matthew Haines-Young</a>, <a href="https://profiles.wordpress.org/mattonomics">mattonomics</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/matveb">Matías Ventura</a>, <a href="https://profiles.wordpress.org/maxcutler">Max Cutler</a>, <a href="https://profiles.wordpress.org/mcadwell">mcadwell</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/meloniq">meloniq</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michelwppi">Michel - xiligroup dev</a>, <a href="https://profiles.wordpress.org/mcsf">Miguel Fonseca</a>, <a href="https://profiles.wordpress.org/gradyetc">Mike Burns</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikemanger">Mike Manger</a>, <a href="https://profiles.wordpress.org/mikeschinkel">Mike Schinkel</a>, <a href="https://profiles.wordpress.org/dh-shredder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/mikecorkum">mikecorkum</a>, <a href="https://profiles.wordpress.org/mitchoyoshitaka">mitcho (Michael Yoshitaka Erlewine)</a>, <a href="https://profiles.wordpress.org/batmoo">Mohammad Jangda</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mor10">Morten Rand-Hendriksen</a>, <a href="https://profiles.wordpress.org/Nao">Naoko Takano</a>, <a href="https://profiles.wordpress.org/alex-ye">Nashwan Doaqan</a>, <a href="https://profiles.wordpress.org/nendeb55">nendeb55</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nicolealleyinteractivecom">Nicole Arnold</a>, <a href="https://profiles.wordpress.org/nikv">Nikhil Vimal (NikV)</a>, <a href="https://profiles.wordpress.org/nivijah">Nivi Jah</a>, <a href="https://profiles.wordpress.org/nunomorgadinho">Nuno Morgadinho</a>, <a href="https://profiles.wordpress.org/olivm">olivM</a>, <a href="https://profiles.wordpress.org/jbkkd">Omer Korner</a>, <a href="https://profiles.wordpress.org/originalexe">OriginalEXE</a>, <a href="https://profiles.wordpress.org/patricknami">patricknami</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/djpaul">Paul Gibbs</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="https://profiles.wordpress.org/philiparthurmoore">Philip Arthur Moore</a>, <a href="https://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="https://profiles.wordpress.org/nprasath002">Prasath Nadarajah</a>, <a href="https://profiles.wordpress.org/prettyboymp">prettyboymp</a>, <a href="https://profiles.wordpress.org/raamdev">Raam Dev</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/mauryaratan">Ram Ratan Maurya</a>, <a href="https://profiles.wordpress.org/ramonchiara">ramonchiara</a>, <a href="https://profiles.wordpress.org/ounziw">Rescuework Support</a>, <a href="https://profiles.wordpress.org/rhyswynne">Rhys Wynne</a>, <a href="https://profiles.wordpress.org/ricardocorreia">Ricardo Correia</a>, <a href="https://profiles.wordpress.org/richard2222">Richard</a>, <a href="https://profiles.wordpress.org/theorboman">Richard Sweeney</a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/rickalee">Ricky Lee Whittemore</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/robmiller">robmiller</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/romaimperator">romaimperator</a>, <a href="https://profiles.wordpress.org/roothorick">roothorick</a>, <a href="https://profiles.wordpress.org/ruudjoyo">Ruud Laan</a>, <a href="https://profiles.wordpress.org/ryan">Ryan Boren</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/otto42">Samuel Wood (Otto)</a>, <a href="https://profiles.wordpress.org/sandyr">Sandeep</a>, <a href="https://profiles.wordpress.org/scottlee">Scott Lee</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/greglone">ScreenfeedFr</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/sdasse">sdasse</a>, <a href="https://profiles.wordpress.org/bootsz">Sean Butze</a>, <a href="https://profiles.wordpress.org/seanchayes">Sean Hayes</a>, <a href="https://profiles.wordpress.org/nessworthy">Sean Nessworthy</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shahpranaf">shahpranaf</a>, <a href="https://profiles.wordpress.org/shaunandrews">Shaun Andrews</a>, <a href="https://profiles.wordpress.org/shinichin">ShinichiN</a>, <a href="https://profiles.wordpress.org/pross">Simon Prosser</a>, <a href="https://profiles.wordpress.org/simonwheatley">Simon Wheatley</a>, <a href="https://profiles.wordpress.org/siobhan">Siobhan</a>, <a href="https://profiles.wordpress.org/siobhyb">Siobhan Bamber (siobhyb)</a>, <a href="https://profiles.wordpress.org/sirzooro">sirzooro</a>, <a href="https://profiles.wordpress.org/solarissmoke">solarissmoke</a>, <a href="https://profiles.wordpress.org/sonjanyc">sonjanyc</a>, <a href="https://profiles.wordpress.org/spencerfinnell">Spencer Finnell</a>, <a href="https://profiles.wordpress.org/piontkowski">Spencer Piontkowski</a>, <a href="https://profiles.wordpress.org/stephcook22">stephcook22</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/sbruner">Steve Bruner</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/miyauchi">Takayuki Miyauchi</a>, <a href="https://profiles.wordpress.org/tanner-m">Tanner Moushey</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/tbrams">tbrams</a>, <a href="https://profiles.wordpress.org/tobiasbg">TobiasBg</a>, <a href="https://profiles.wordpress.org/tomauger">Tom Auger</a>, <a href="https://profiles.wordpress.org/willmot">Tom Willmot</a>, <a href="https://profiles.wordpress.org/topher1kenobe">Topher</a>, <a href="https://profiles.wordpress.org/topquarky">topquarky</a>, <a href="https://profiles.wordpress.org/zodiac1978">Torsten Landsiedel</a>, <a href="https://profiles.wordpress.org/toru">Toru Miki</a>, <a href="https://profiles.wordpress.org/wpsmith">Travis Smith</a>, <a href="https://profiles.wordpress.org/umeshsingla">Umesh Kumar</a>, <a href="https://profiles.wordpress.org/undergroundnetwork">undergroundnetwork</a>, <a href="https://profiles.wordpress.org/varunagw">VarunAgw</a>, <a href="https://profiles.wordpress.org/wawco">wawco</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/wokamoto">wokamoto</a>, <a href="https://profiles.wordpress.org/xsonic">xsonic</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/yurivictor">Yuri Victor</a>, <a href="https://profiles.wordpress.org/zbtirrell">Zach Tirrell</a>, and <a href="https://profiles.wordpress.org/vanillalounge">Ze Fontainhas</a>. Also thanks to <a href="http://michaelpick.wordpress.com/">Michael Pick</a> for producing the release video, and Helen with <a href="http://adriansandi.com">Adrián Sandí</a> for the music.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.1!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/news/2014/09/benny/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.0 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2014/08/wordpress-4-0-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/news/2014/08/wordpress-4-0-release-candidate/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Aug 2014 12:20:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3287";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:321:"The first release candidate for WordPress 4.0 is now available! In RC 1, we’ve made refinements to what we&#8217;ve been working on for this release. Check out the Beta 1 announcement post for more details on those features. We hope to ship WordPress 4.0 next week, but we need your help to get there. If you [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2134:"<p>The first release candidate for WordPress 4.0 is now available!</p>\n<p>In RC 1, we’ve made refinements to what we&#8217;ve been working on for this release. Check out the <a href="https://wordpress.org/news/2014/07/wordpress-4-0-beta-1/">Beta 1 announcement post</a> for more details on those features. We hope to ship WordPress 4.0 <em>next week</em>, but we need your help to get there. If you haven’t tested 4.0 yet, there’s no time like the present. (Please, not on a production site, unless you’re adventurous.)</p>\n<p><strong>Think you’ve found a bug? </strong>Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta area in the support forums</a>. If any known issues come up, you’ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.0 RC1, try the <a href="https://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.0-RC1.zip">download the release candidate here</a> (zip). If you’d like to learn more about what’s new in WordPress 4.0, visit the awesome About screen in your dashboard (<strong><img src="https://i0.wp.com/core.svn.wordpress.org/branches/3.6/wp-content/themes/twentyten/images/wordpress.png?w=692" alt="" width="16" height="16" /> → About</strong> in the toolbar).</p>\n<p><strong>Developers,</strong> please test your plugins and themes against WordPress 4.0 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.0 before next week. If you find compatibility problems, please be sure to post any issues to the support forums so we can figure those out before the final release. You also may want to <a href="https://make.wordpress.org/core/2014/08/21/introducing-plugin-icons-in-the-plugin-installer/">give your plugin an icon</a>, which we launched last week and will appear in the dashboard along with banners.</p>\n<p><em>It is almost time</em><br />\n<em> For the 4.0 release</em><br />\n<em> And its awesomeness</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2014/08/wordpress-4-0-release-candidate/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.0 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2014/08/wordpress-4-0-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2014/08/wordpress-4-0-beta-4/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 15 Aug 2014 05:06:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3280";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:353:"The fourth and likely final beta for WordPress 4.0 is now available. We&#8217;ve made more than 250 changes in the past month, including: Further improvements to the editor scrolling experience, especially when it comes to the second column of boxes. Better handling of small screens in the media library modals. A separate bulk selection mode [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2003:"<p>The fourth and likely final beta for WordPress 4.0 is now available. We&#8217;ve made <a href="https://core.trac.wordpress.org/log?rev=29496&amp;stop_rev=29229&amp;limit=300">more than 250 changes</a> in the past month, including:</p>\n<ul>\n<li>Further improvements to the editor scrolling experience, especially when it comes to the second column of boxes.</li>\n<li>Better handling of small screens in the media library modals.</li>\n<li>A separate bulk selection mode for the media library grid view.</li>\n<li>Improvements to the installation language selector.</li>\n<li>Visual tweaks to plugin details and customizer panels.</li>\n</ul>\n<p><strong>We need your help</strong>. We’re still aiming for a release this month, which means the next week will be critical for identifying and squashing bugs. If you’re just joining us, please see <a href="https://wordpress.org/news/2014/07/wordpress-4-0-beta-1/">the Beta 1 announcement post</a> for what to look out for.</p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums, where friendly moderators are standing by. <b>Plugin developers</b><strong>,</strong> if you haven’t tested WordPress 4.0 yet, now is the time — and be sure to update the “tested up to” version for your plugins so they’re listed as compatible with 4.0.</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.0, try the <a href="https://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.0-beta4.zip">download the beta here</a> (zip).</p>\n<p><em>We are working hard</em><br />\n<em>To finish up 4.0<br />\n</em><em>Will you help us too?</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2014/08/wordpress-4-0-beta-4/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"WordPress 3.9.2 Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2014/08/wordpress-3-9-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/news/2014/08/wordpress-3-9-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Aug 2014 19:04:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3269";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:377:"WordPress 3.9.2 is now available as a security release for all previous versions. We strongly encourage you to update your sites immediately. This release fixes a possible denial of service issue in PHP&#8217;s XML processing, reported by Nir Goldshlager of the Salesforce.com Product Security Team. It  was fixed by Michael Adams and Andrew Nacin of the WordPress [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2353:"<p>WordPress 3.9.2 is now available as a security release for all previous versions. We strongly encourage you to update your sites immediately.</p>\n<p>This release fixes a possible denial of service issue in PHP&#8217;s XML processing, reported by <a href="https://twitter.com/nirgoldshlager">Nir Goldshlager</a> of the Salesforce.com Product Security Team. It  was fixed by Michael Adams and Andrew Nacin of the WordPress security team and David Rothstein of the <a href="https://www.drupal.org/SA-CORE-2014-004">Drupal security team</a>. This is the first time our two projects have coordinated joint security releases.</p>\n<p>WordPress 3.9.2 also contains other security changes:</p>\n<ul>\n<li>Fixes a possible but unlikely code execution when processing widgets (WordPress is not affected by default), discovered by <a href="http://www.buayacorp.com/">Alex Concha</a> of the WordPress security team.</li>\n<li>Prevents information disclosure via XML entity attacks in the external GetID3 library, reported by <a href="http://onsec.ru/en/">Ivan Novikov</a> of ONSec.</li>\n<li>Adds protections against brute attacks against CSRF tokens, reported by <a href="http://systemoverlord.com/">David Tomaschik</a> of the Google Security Team.</li>\n<li>Contains some additional security hardening, like preventing cross-site scripting that could be triggered only by administrators.</li>\n</ul>\n<p>We appreciated responsible disclosure of these issues directly to our security team. For more information, see the <a href="https://codex.wordpress.org/Version_3.9.2">release notes</a> or consult the <a href="https://core.trac.wordpress.org/log/branches/3.9?stop_rev=29383&amp;rev=29411">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 3.9.2</a> or venture over to <strong>Dashboard → Updates</strong> and simply click &#8220;Update Now&#8221;.</p>\n<p>Sites that support automatic background updates will be updated to WordPress 3.9.2 within 12 hours. (If you are still on WordPress 3.8.3 or 3.7.3, you will also be updated to 3.8.4 or 3.7.4. We don&#8217;t support older versions, so please update to 3.9.2 for the latest and greatest.)</p>\n<p>Already testing WordPress 4.0? The third beta is <a href="https://wordpress.org/wordpress-4.0-beta3.zip">now available</a> (zip) and it contains these security fixes.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2014/08/wordpress-3-9-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.0 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2014/07/wordpress-4-0-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2014/07/wordpress-4-0-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 18 Jul 2014 21:15:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3261";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:374:"WordPress 4.0 Beta 2 is now available for download and testing. This is software still in development, so we don’t recommend that you run it on a production site. To get the beta, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can download the beta here (zip). For more of what’s new in version 4.0, check out [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1745:"<p>WordPress 4.0 Beta 2 is now available for download and testing. This is software still in development, so we don’t recommend that you run it on a production site. To get the beta, try the <a href="https://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.0-beta2.zip">download the beta here</a> (zip).</p>\n<p>For more of what’s new in version 4.0, <a href="https://wordpress.org/news/2014/07/wordpress-4-0-beta-1/">check out the Beta 1 blog post</a>. Some of the changes in Beta 2 include:</p>\n<ul>\n<li>Further refinements for the the plugin installation and media library experiences.</li>\n<li>Updated TinyMCE, which now includes better indentation for lists and the restoration of the color picker.</li>\n<li>Cookies are now tied to a session internally, so if you have trouble logging in, <a href="https://core.trac.wordpress.org/ticket/20276">#20276</a> may be the culprit.</li>\n<li>Various bug fixes (there were <a href="https://core.trac.wordpress.org/log?rev=29228&amp;stop_rev=29060&amp;limit=200">nearly 170 changes</a> since last week).</li>\n</ul>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.0">everything we’ve fixed</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2014/07/wordpress-4-0-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.0 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2014/07/wordpress-4-0-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/news/2014/07/wordpress-4-0-beta-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Jul 2014 10:17:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3248";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.0 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.0, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4031:"<p>WordPress 4.0 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.0, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.0-beta1.zip">download the beta here</a> (zip).</p>\n<p>4.0 is due out next month, but to get there, we need your help testing what we&#8217;ve been working on:</p>\n<ul>\n<li><strong>Previews of <a href="https://codex.wordpress.org/Embeds">embedding via URLs</a></strong> in the visual editor and the &#8220;Insert from URL&#8221; tab in the media modal. Try pasting a URL (such as a <a href="http://wordpress.tv/">WordPress.tv</a> or YouTube video) onto its own line in the visual editor. (<a href="https://core.trac.wordpress.org/ticket/28195">#28195</a>, <a href="https://core.trac.wordpress.org/ticket/15490">#15490</a>)</li>\n<li>The <strong>Media Library</strong> now has a &#8220;grid&#8221; view in addition to the existing list view. Clicking on an item takes you into a modal where you can see a larger preview and edit information about that attachment, and you can navigate between items right from the modal without closing it. (<a href="https://core.trac.wordpress.org/ticket/24716">#24716</a>)</li>\n<li>We&#8217;re freshening up the <strong>plugin install experience</strong>. You&#8217;ll see some early visual changes as well as more information when searching for plugins and viewing details. (<a href="https://core.trac.wordpress.org/ticket/28785">#28785</a>, <a href="https://core.trac.wordpress.org/ticket/27440">#27440</a>)</li>\n<li><strong>Selecting a language</strong> when you run the installation process. (<a href="https://core.trac.wordpress.org/ticket/28577">#28577</a>)</li>\n<li>The <strong>editor</strong> intelligently resizes and its top and bottom bars pin when needed. Browsers don&#8217;t like to agree on where to put things like cursors, so if you find a bug here, please also let us know your browser and operating system. (<a href="https://core.trac.wordpress.org/ticket/28328">#28328</a>)</li>\n<li>We&#8217;ve made some improvements to how your keyboard and cursor interact with <strong>TinyMCE views</strong> such as the gallery preview. Much like the editor resizing and scrolling improvements, knowing about your setup is particularly important for bug reports here. (<a href="https://core.trac.wordpress.org/ticket/28595">#28595</a>)</li>\n<li><strong>Widgets in the Customizer</strong> are now loaded in a separate panel. (<a href="https://core.trac.wordpress.org/ticket/27406">#27406</a>)</li>\n<li>We&#8217;ve also made some changes to some <strong>formatting</strong> functions, so if you see quotes curling in the wrong direction, please file a bug report.</li>\n</ul>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.0">everything we’ve fixed</a> so far.</p>\n<p><strong>Developers:</strong> Never fear, we haven&#8217;t forgotten you. There&#8217;s plenty for you, too &#8211; more on that in upcoming posts. In the meantime, check out the <a href="https://make.wordpress.org/core/2014/07/08/customizer-improvements-in-4-0/#customizer-panels">API for panels in the Customizer</a>.</p>\n<p>Happy testing!</p>\n<p><em>Plugins, editor</em><br />\n<em>Media, things in between</em><br />\n<em>Please help look for bugs</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2014/07/wordpress-4-0-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 3.9.1 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2014/05/wordpress-3-9-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/news/2014/05/wordpress-3-9-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 May 2014 18:40:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3241";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:385:"After three weeks and more than 9 million downloads of WordPress 3.9, we&#8217;re pleased to announce that WordPress 3.9.1 is now available. This maintenance release fixes 34 bugs in 3.9, including numerous fixes for multisite networks, customizing widgets while previewing themes, and the updated visual editor. We&#8217;ve also made some improvements to the new audio/video [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3106:"<p>After three weeks and more than 9 million downloads of <a title="WordPress 3.9 “Smith”" href="https://wordpress.org/news/2014/04/smith/">WordPress 3.9</a>, we&#8217;re pleased to announce that WordPress 3.9.1 is now available.</p>\n<p>This maintenance release fixes 34 bugs in 3.9, including numerous fixes for multisite networks, customizing widgets while previewing themes, and the updated visual editor. We&#8217;ve also made some improvements to the new audio/video playlists feature and made some adjustments to improve performance. For a full list of changes, consult the <a href="https://core.trac.wordpress.org/query?milestone=3.9.1">list of tickets</a> and the <a href="https://core.trac.wordpress.org/log/branches/3.9?rev=28353&amp;stop_rev=28154">changelog</a>.</p>\n<p>If you are one of the millions already running WordPress 3.9, we&#8217;ve started rolling out automatic background updates for 3.9.1. For sites <a href="https://wordpress.org/plugins/background-update-tester/">that support them</a>, of course.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 3.9.1</a> or venture over to <strong>Dashboard → Updates</strong> and simply click &#8220;Update Now.&#8221;</p>\n<p>Thanks to all of these fine individuals for contributing to 3.9.1: <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rzen">Brian Richards</a>, <a href="https://profiles.wordpress.org/ehg">Chris Blower</a>, <a href="https://profiles.wordpress.org/jupiterwise">Corey McKrill</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/feedmeastraycat">feedmeastraycat</a>, <a href="https://profiles.wordpress.org/gcorne">Gregory Cornelius</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandi</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/avryl">Janneke Van Dorpe</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="https://profiles.wordpress.org/m_i_n">m_i_n</a>, <a href="https://profiles.wordpress.org/clorith">Marius Jensen</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/SergeyBiryukov">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2014/05/wordpress-3-9-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"WordPress 3.9 “Smith”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wordpress.org/news/2014/04/smith/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wordpress.org/news/2014/04/smith/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Apr 2014 18:33:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3154";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:411:"Version 3.9 of WordPress, named &#8220;Smith&#8221; in honor of jazz organist Jimmy Smith, is available for download or update in your WordPress dashboard. This release features a number of refinements that we hope you&#8217;ll love. A smoother media editing experience Improved visual editing The updated visual editor has improved speed, accessibility, and mobile support. You can paste into the [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:23561:"<p>Version 3.9 of WordPress, named &#8220;Smith&#8221; in honor of jazz organist <a href="http://en.wikipedia.org/wiki/Jimmy_Smith_(musician)">Jimmy Smith</a>, is available <a href="https://wordpress.org/download/">for download</a> or update in your WordPress dashboard. This release features a number of refinements that we hope you&#8217;ll love.</p>\n<div id="v-sAiXhCfV-1" class="video-player"><embed id="v-sAiXhCfV-1-video" src="https://v0.wordpress.com/player.swf?v=1.03&amp;guid=sAiXhCfV&amp;isDynamicSeeking=true" type="application/x-shockwave-flash" width="692" height="388" wmode="direct" seamlesstabbing="true" allowfullscreen="true" allowscriptaccess="always" overstretch="true"></embed></div>\n<h2 class="about-headline-callout" style="text-align: center">A smoother media editing experience</h2>\n<div>\n<p><img class="alignright wp-image-3168" src="//wordpress.org/news/files/2014/04/editor1-300x233.jpg" alt="editor" width="228" height="177" /></p>\n<h3>Improved visual editing</h3>\n<p>The updated visual editor has improved speed, accessibility, and mobile support. You can paste into the visual editor from your word processor without wasting time to clean up messy styling. (Yeah, we’re talking about you, Microsoft Word.)</p>\n</div>\n<div style="clear: both"></div>\n<div>\n<p><img class="alignright wp-image-3170" src="//wordpress.org/news/files/2014/04/image1-300x233.jpg" alt="image" width="228" height="178" /></p>\n<h3>Edit images easily</h3>\n<p>With quicker access to crop and rotation tools, it’s now much easier to edit your images while editing posts. You can also scale images directly in the editor to find just the right fit.</p>\n</div>\n<div style="clear: both"></div>\n<div>\n<p><img class="alignright wp-image-3187" src="//wordpress.org/news/files/2014/04/dragdrop1-300x233.jpg" alt="dragdrop" width="228" height="178" /></p>\n<h3>Drag and drop your images</h3>\n<p>Uploading your images is easier than ever. Just grab them from your desktop and drop them in the editor.</p>\n</div>\n<div style="clear: both"></div>\n<hr />\n<h2 style="text-align: center">Gallery previews</h2>\n<p><img class="aligncenter size-full wp-image-3169" src="//wordpress.org/news/files/2014/04/gallery1.jpg" alt="gallery" width="980" height="550" /></p>\n<p>Galleries display a beautiful grid of images right in the editor, just like they do in your published post.</p>\n<hr />\n<h2 style="text-align: center">Do more with audio and video</h2>\n\n<a href=''https://wordpress.org/news/files/2014/04/AintMisbehavin.mp3''>Ain''t Misbehavin''</a>\n<a href=''https://wordpress.org/news/files/2014/04/DavenportBlues.mp3''>Davenport Blues</a>\n<a href=''https://wordpress.org/news/files/2014/04/JellyRollMorton-BuddyBoldensBlues.mp3''>Buddy Bolden''s Blues</a>\n<a href=''https://wordpress.org/news/files/2014/04/Johnny_Hodges_Orchestra-Squaty_Roo-1941.mp3''>Squaty Roo</a>\n<a href=''https://wordpress.org/news/files/2014/04/Louisiana_Five-Dixie_Blues-1919.mp3''>Dixie Blues</a>\n<a href=''https://wordpress.org/news/files/2014/04/WolverineBlues.mp3''>Wolverine Blues</a>\n\n<p>Images have galleries; now we’ve added simple audio and video playlists, so you can showcase your music and clips.</p>\n<hr />\n<h2 style="text-align: center">Live widget and header previews</h2>\n<div style="width: 692px; height: 448px; " class="wp-video"><video class="wp-video-shortcode" id="video-3154-3" width="692" height="448" preload="metadata" controls="controls"><source type="video/mp4" src="//wordpress.org/news/files/2014/04/widgets.mp4?_=3" /><a href="//wordpress.org/news/files/2014/04/widgets.mp4">//wordpress.org/news/files/2014/04/widgets.mp4</a></video></div>\n<p>Add, edit, and rearrange your site’s widgets right in the theme customizer. No “save and surprise” — preview your changes live and only save them when you’re ready.</p>\n<p>The improved header image tool also lets you upload, crop, and manage headers while customizing your theme.</p>\n<hr />\n<h2 style="text-align: center">Stunning new theme browser</h2>\n<p><img class="aligncenter size-full wp-image-3172" src="//wordpress.org/news/files/2014/04/theme1.jpg" alt="theme" width="1003" height="558" /><br />\nLooking for a new theme should be easy and fun. Lose yourself in the boundless supply of free WordPress.org themes with the beautiful new theme browser.</p>\n<hr />\n<h2 style="text-align: center">The Crew</h2>\n<p>This release was led by <a href="http://nacin.com/">Andrew Nacin</a> and <a href="http://www.getsource.net/">Mike Schroder</a>, with the help of these fine individuals. There are 267 contributors with props in this release, a new high:</p>\n<p><a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/kawauso">Adam Harley</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adelval">adelval</a>, <a href="https://profiles.wordpress.org/ajay">Ajay</a>, <a href="https://profiles.wordpress.org/akeda">Akeda Bagus</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/tellyworth">Alex Shiels</a>, <a href="https://profiles.wordpress.org/aliso">Alison Barrett</a>, <a href="https://profiles.wordpress.org/collinsinternet">Allan Collins</a>, <a href="https://profiles.wordpress.org/sabreuse">Amy Hendrix (sabreuse)</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/norcross">Andrew Norcross</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rarst">Andrey "Rarst" Savchenko</a>, <a href="https://profiles.wordpress.org/andykeith">Andy Keith</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="https://profiles.wordpress.org/aubreypwd">Aubrey Portwood</a>, <a href="https://profiles.wordpress.org/barry">Barry</a>, <a href="https://profiles.wordpress.org/toszcze">Bartosz Romanowski</a>, <a href="https://profiles.wordpress.org/bassgang">bassgang</a>, <a href="https://profiles.wordpress.org/bcworkz">bcworkz</a>, <a href="https://profiles.wordpress.org/empireoflight">Ben Dunkle</a>, <a href="https://profiles.wordpress.org/neoxx">Bernhard Riedl</a>, <a href="https://profiles.wordpress.org/bigdawggi">bigdawggi</a>, <a href="https://profiles.wordpress.org/bobbravo2">Bob Gregor</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="https://profiles.wordpress.org/bradparbs">bradparbs</a>, <a href="https://profiles.wordpress.org/bramd">Bram Duvigneau</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brasofilo">brasofilo</a>, <a href="https://profiles.wordpress.org/bravokeyl">bravokeyl</a>, <a href="https://profiles.wordpress.org/bpetty">Bryan Petty</a>, <a href="https://profiles.wordpress.org/cgaffga">cgaffga</a>, <a href="https://profiles.wordpress.org/chiragswadia">Chirag Swadia</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/ehg">Chris Blower</a>, <a href="https://profiles.wordpress.org/cmmarslender">Chris Marslender</a>, <a href="https://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="https://profiles.wordpress.org/chrisscott">Chris Scott</a>, <a href="https://profiles.wordpress.org/chriseverson">chriseverson</a>, <a href="https://profiles.wordpress.org/chrisguitarguy">chrisguitarguy</a>, <a href="https://profiles.wordpress.org/cfinke">Christopher Finke</a>, <a href="https://profiles.wordpress.org/ciantic">ciantic</a>, <a href="https://profiles.wordpress.org/antorome">Comparativa de Bancos</a>, <a href="https://profiles.wordpress.org/cojennin">Connor Jennings</a>, <a href="https://profiles.wordpress.org/corvannoorloos">Cor van Noorloos</a>, <a href="https://profiles.wordpress.org/corphi">Corphi</a>, <a href="https://profiles.wordpress.org/cramdesign">cramdesign</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/redsweater">Daniel Jalkut (Red Sweater)</a>, <a href="https://profiles.wordpress.org/dannydehaan">Danny de Haan</a>, <a href="https://profiles.wordpress.org/koop">Daryl Koopersmith</a>, <a href="https://profiles.wordpress.org/eightface">Dave Kellam (eightface)</a>, <a href="https://profiles.wordpress.org/dpe415">DaveE</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davidanderson">David Anderson</a>, <a href="https://profiles.wordpress.org/davidmarichal">David Marichal</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/drprotocols">DrProtocols</a>, <a href="https://profiles.wordpress.org/dustyf">Dustin Filippini</a>, <a href="https://profiles.wordpress.org/eatingrules">eatingrules</a>, <a href="https://profiles.wordpress.org/plocha">edik</a>, <a href="https://profiles.wordpress.org/oso96_2000">Eduardo Reveles</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/enej">enej</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Lewis</a>, <a href="https://profiles.wordpress.org/ericmann">Eric Mann</a>, <a href="https://profiles.wordpress.org/evarlese">Erica Varlese</a>, <a href="https://profiles.wordpress.org/ethitter">Erick Hitter</a>, <a href="https://profiles.wordpress.org/ejdanderson">Evan Anderson</a>, <a href="https://profiles.wordpress.org/fahmiadib">Fahmi Adib</a>, <a href="https://profiles.wordpress.org/fboender">fboender</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/garyc40">Gary Cao</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/genkisan">genkisan</a>, <a href="https://profiles.wordpress.org/soulseekah">Gennady Kovshenin</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/grahamarmfield">Graham Armfield</a>, <a href="https://profiles.wordpress.org/vancoder">Grant Mangham</a>, <a href="https://profiles.wordpress.org/gcorne">Gregory Cornelius</a>, <a href="https://profiles.wordpress.org/tivnet">Gregory Karpinsky (@tivnet)</a>, <a href="https://profiles.wordpress.org/hakre">hakre</a>, <a href="https://profiles.wordpress.org/hanni">hanni</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/ippetkov">ippetkov</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jackreichert">Jack Reichert</a>, <a href="https://profiles.wordpress.org/_jameslee">jameslee</a>, <a href="https://profiles.wordpress.org/avryl">Janneke Van Dorpe</a>, <a href="https://profiles.wordpress.org/janrenn">janrenn</a>, <a href="https://profiles.wordpress.org/jaycc">JayCC</a>, <a href="https://profiles.wordpress.org/jeffsebring">Jeff Sebring</a>, <a href="https://profiles.wordpress.org/jenmylo">Jen</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/jayjdk">Jesper Johansen (jayjdk)</a>, <a href="https://profiles.wordpress.org/jnielsendotnet">jnielsendotnet</a>, <a href="https://profiles.wordpress.org/jartes">Joan Artes</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpbloch">John P. Bloch</a>, <a href="https://profiles.wordpress.org/johnregan3">John Regan</a>, <a href="https://profiles.wordpress.org/duck_">Jon Cave</a>, <a href="https://profiles.wordpress.org/jond3r">Jonas Bolinder (jond3r)</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshuaabenazer">Joshua Abenazer</a>, <a href="https://profiles.wordpress.org/jstraitiff">jstraitiff</a>, <a href="https://profiles.wordpress.org/juliobox">Julio Potier</a>, <a href="https://profiles.wordpress.org/kopepasah">Justin Kopepasah</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/kadamwhite">K.Adam White</a>, <a href="https://profiles.wordpress.org/trepmal">Kailey (trepmal)</a>, <a href="https://profiles.wordpress.org/kasparsd">Kaspars</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/kerikae">kerikae</a>, <a href="https://profiles.wordpress.org/kworthington">Kevin Worthington</a>, <a href="https://profiles.wordpress.org/kpdesign">Kim Parsell</a>, <a href="https://profiles.wordpress.org/kwight">Kirk Wight</a>, <a href="https://profiles.wordpress.org/kitchin">kitchin</a>, <a href="https://profiles.wordpress.org/klihelp">klihelp</a>, <a href="https://profiles.wordpress.org/knutsp">Knut Sparhell</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/drozdz">Krzysiek Drozdz</a>, <a href="https://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="https://profiles.wordpress.org/ldebrouwer">ldebrouwer</a>, <a href="https://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="https://profiles.wordpress.org/lpointet">lpointet</a>, <a href="https://profiles.wordpress.org/spmlucas">Lucas Karpiuk</a>, <a href="https://profiles.wordpress.org/lkwdwrd">Luke Woodward</a>, <a href="https://profiles.wordpress.org/nofearinc">Mario Peshev</a>, <a href="https://profiles.wordpress.org/mark8barnes">Mark Barnes</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/marventus">Marventus</a>, <a href="https://profiles.wordpress.org/iammattthomas">Matt (Thomas) Miklic</a>, <a href="https://profiles.wordpress.org/mjbanks">Matt Banks</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/mboynes">Matthew Boynes</a>, <a href="https://profiles.wordpress.org/mdbitz">Matthew Denton</a>, <a href="https://profiles.wordpress.org/mattheu">Matthew Haines-Young</a>, <a href="https://profiles.wordpress.org/mattonomics">mattonomics</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/matveb">Matías Ventura</a>, <a href="https://profiles.wordpress.org/maxcutler">Max Cutler</a>, <a href="https://profiles.wordpress.org/mcadwell">mcadwell</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/meloniq">meloniq</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michelwppi">Michel - xiligroup dev</a>, <a href="https://profiles.wordpress.org/mcsf">Miguel Fonseca</a>, <a href="https://profiles.wordpress.org/gradyetc">Mike Burns</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikemanger">Mike Manger</a>, <a href="https://profiles.wordpress.org/mikeschinkel">Mike Schinkel</a>, <a href="https://profiles.wordpress.org/dh-shredder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/mikecorkum">mikecorkum</a>, <a href="https://profiles.wordpress.org/mitchoyoshitaka">mitcho (Michael Yoshitaka Erlewine)</a>, <a href="https://profiles.wordpress.org/batmoo">Mohammad Jangda</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mor10">Morten Rand-Hendriksen</a>, <a href="https://profiles.wordpress.org/Nao">Naoko Takano</a>, <a href="https://profiles.wordpress.org/alex-ye">Nashwan Doaqan</a>, <a href="https://profiles.wordpress.org/nendeb55">nendeb55</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nicolealleyinteractivecom">Nicole Arnold</a>, <a href="https://profiles.wordpress.org/nikv">Nikhil Vimal (NikV)</a>, <a href="https://profiles.wordpress.org/nivijah">Nivi Jah</a>, <a href="https://profiles.wordpress.org/nunomorgadinho">Nuno Morgadinho</a>, <a href="https://profiles.wordpress.org/olivm">olivM</a>, <a href="https://profiles.wordpress.org/jbkkd">Omer Korner</a>, <a href="https://profiles.wordpress.org/originalexe">OriginalEXE</a>, <a href="https://profiles.wordpress.org/patricknami">patricknami</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/djpaul">Paul Gibbs</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="https://profiles.wordpress.org/philiparthurmoore">Philip Arthur Moore</a>, <a href="https://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="https://profiles.wordpress.org/nprasath002">Prasath Nadarajah</a>, <a href="https://profiles.wordpress.org/prettyboymp">prettyboymp</a>, <a href="https://profiles.wordpress.org/raamdev">Raam Dev</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/mauryaratan">Ram Ratan Maurya</a>, <a href="https://profiles.wordpress.org/ramonchiara">ramonchiara</a>, <a href="https://profiles.wordpress.org/ounziw">Rescuework Support</a>, <a href="https://profiles.wordpress.org/rhyswynne">Rhys Wynne</a>, <a href="https://profiles.wordpress.org/ricardocorreia">Ricardo Correia</a>, <a href="https://profiles.wordpress.org/richard2222">Richard</a>, <a href="https://profiles.wordpress.org/theorboman">Richard Sweeney</a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/rickalee">Ricky Lee Whittemore</a>, <a href="https://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="https://profiles.wordpress.org/robmiller">robmiller</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/romaimperator">romaimperator</a>, <a href="https://profiles.wordpress.org/roothorick">roothorick</a>, <a href="https://profiles.wordpress.org/ruudjoyo">Ruud Laan</a>, <a href="https://profiles.wordpress.org/ryan">Ryan Boren</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/otto42">Samuel Wood (Otto)</a>, <a href="https://profiles.wordpress.org/sandyr">Sandeep</a>, <a href="https://profiles.wordpress.org/scottlee">Scott Lee</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/greglone">ScreenfeedFr</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/sdasse">sdasse</a>, <a href="https://profiles.wordpress.org/bootsz">Sean Butze</a>, <a href="https://profiles.wordpress.org/seanchayes">Sean Hayes</a>, <a href="https://profiles.wordpress.org/nessworthy">Sean Nessworthy</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shahpranaf">shahpranaf</a>, <a href="https://profiles.wordpress.org/shaunandrews">Shaun Andrews</a>, <a href="https://profiles.wordpress.org/shinichin">ShinichiN</a>, <a href="https://profiles.wordpress.org/pross">Simon Prosser</a>, <a href="https://profiles.wordpress.org/simonwheatley">Simon Wheatley</a>, <a href="https://profiles.wordpress.org/siobhan">Siobhan</a>, <a href="https://profiles.wordpress.org/siobhyb">Siobhan Bamber (siobhyb)</a>, <a href="https://profiles.wordpress.org/sirzooro">sirzooro</a>, <a href="https://profiles.wordpress.org/solarissmoke">solarissmoke</a>, <a href="https://profiles.wordpress.org/sonjanyc">sonjanyc</a>, <a href="https://profiles.wordpress.org/spencerfinnell">Spencer Finnell</a>, <a href="https://profiles.wordpress.org/piontkowski">Spencer Piontkowski</a>, <a href="https://profiles.wordpress.org/stephcook22">stephcook22</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/sbruner">Steve Bruner</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/miyauchi">Takayuki Miyauchi</a>, <a href="https://profiles.wordpress.org/tanner-m">Tanner Moushey</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/tbrams">tbrams</a>, <a href="https://profiles.wordpress.org/tobiasbg">TobiasBg</a>, <a href="https://profiles.wordpress.org/tomauger">Tom Auger</a>, <a href="https://profiles.wordpress.org/willmot">Tom Willmot</a>, <a href="https://profiles.wordpress.org/topher1kenobe">Topher</a>, <a href="https://profiles.wordpress.org/topquarky">topquarky</a>, <a href="https://profiles.wordpress.org/zodiac1978">Torsten Landsiedel</a>, <a href="https://profiles.wordpress.org/toru">Toru Miki</a>, <a href="https://profiles.wordpress.org/wpsmith">Travis Smith</a>, <a href="https://profiles.wordpress.org/umeshsingla">Umesh Kumar</a>, <a href="https://profiles.wordpress.org/undergroundnetwork">undergroundnetwork</a>, <a href="https://profiles.wordpress.org/varunagw">VarunAgw</a>, <a href="https://profiles.wordpress.org/wawco">wawco</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/wokamoto">wokamoto</a>, <a href="https://profiles.wordpress.org/xsonic">xsonic</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/yurivictor">Yuri Victor</a>, <a href="https://profiles.wordpress.org/zbtirrell">Zach Tirrell</a>, and <a href="https://profiles.wordpress.org/vanillalounge">Ze Fontainhas</a>. Also thanks to <a href="http://michaelpick.wordpress.com/">Michael Pick</a> for producing the release video.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.0!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/news/2014/04/smith/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress 3.9 Release Candidate 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/news/2014/04/wordpress-3-9-release-candidate-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:78:"https://wordpress.org/news/2014/04/wordpress-3-9-release-candidate-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Apr 2014 09:47:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3151";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:356:"The second release candidate for WordPress 3.9 is now available for testing. If you haven&#8217;t tested 3.9 yet, you&#8217;re running out of time! We made about five dozen changes since the first release candidate, and those changes are all helpfully summarized in our weekly post on the development blog. Probably the biggest fixes are to live [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2273:"<p>The second release candidate for WordPress 3.9 is now available for testing.</p>\n<p>If you haven&#8217;t tested 3.9 yet, you&#8217;re running out of time! We made about five dozen changes since the <a title="WordPress 3.9 Release Candidate" href="//wordpress.org/news/2014/04/wordpress-3-9-release-candidate/">first release candidate</a>, and those changes are all helpfully summarized <a href="//make.wordpress.org/core/?p=10237">in our weekly post</a> on the development blog. Probably the biggest fixes are to live widget previews and the new theme browser, along with some extra TinyMCE compatibility and some RTL fixes.</p>\n<p><strong>Plugin authors:</strong> Could you test your plugins against 3.9, and if they&#8217;re compatible, make sure they are marked as tested up to 3.9? It only takes a few minutes and this really helps make launch easier. Be sure to follow along the core development blog; we&#8217;ve been posting <a href="//make.wordpress.org/core/tag/3-9-dev-notes/">notes for developers for 3.9</a>. (For example: <a href="//make.wordpress.org/core/2014/04/15/html5-galleries-captions-in-wordpress-3-9/">HTML5</a>, <a href="//make.wordpress.org/core/2014/04/14/symlinked-plugins-in-wordpress-3-9/">symlinks</a>, <a href="//make.wordpress.org/core/2014/04/07/mysql-in-wordpress-3-9/">MySQL</a>, <a href="//make.wordpress.org/core/2014/04/11/plupload-2-x-in-wordpress-3-9/">Plupload</a>.)</p>\n<p>To test WordPress 3.9 RC2, try the <a href="//wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="//wordpress.org/wordpress-3.9-RC2.zip">download the release candidate here</a> (zip). If you’d like to learn more about what’s new in WordPress 3.9, visit the nearly complete About screen in your dashboard (<strong><img src="//i0.wp.com/core.svn.wordpress.org/branches/3.6/wp-content/themes/twentyten/images/wordpress.png?w=692" alt="" width="16" height="16" /> → About</strong> in the toolbar) and also check out <a title="WordPress 3.9 Beta 1" href="//wordpress.org/news/2014/03/wordpress-3-9-beta-1/">the Beta 1 post</a>.</p>\n<p><em>This is for testing,</em><br />\n<em>so not recommended for<br />\nproduction sites—yet.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:74:"https://wordpress.org/news/2014/04/wordpress-3-9-release-candidate-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 3.8.3 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2014/04/wordpress-3-8-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/news/2014/04/wordpress-3-8-3/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 14 Apr 2014 19:29:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3145";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:338:"WordPress 3.8.3 is now available to fix a small but unfortunate bug in the WordPress 3.8.2 security release. The &#8220;Quick Draft&#8221; tool on the dashboard screen was broken in the 3.8.2 update. If you tried to use it, your draft would disappear and it wouldn&#8217;t save. While we doubt anyone was writing a novella using [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2341:"<p>WordPress 3.8.3 is now available to fix a small but unfortunate bug in the <a title="WordPress 3.8.2 Security Release" href="https://wordpress.org/news/2014/04/wordpress-3-8-2/">WordPress 3.8.2 security release</a>.</p>\n<p>The &#8220;Quick Draft&#8221; tool on the dashboard screen was broken in the 3.8.2 update. If you tried to use it, your draft would disappear and it wouldn&#8217;t save. While we doubt anyone was writing a novella using this tool, <em>any</em> loss of content is unacceptable to us.</p>\n<p>We recognize how much trust you place in us to safeguard your content, and we take this responsibility very seriously. We&#8217;re sorry we let you down.</p>\n<p>We&#8217;ve all lost words we&#8217;ve written before, like an email thanks to a cat on the keyboard or a term paper to a blue screen of death. Over the last few WordPress releases, we&#8217;ve made a number of improvements to features like autosaves and revisions. With revisions, an old edit can always be restored. We&#8217;re trying our hardest to save your content somewhere even if your power goes out or your browser crashes. We even monitor your internet connection and prevent you from hitting that &#8220;Publish&#8221; button at the exact moment the coffee shop Wi-Fi has a hiccup.</p>\n<p>It&#8217;s <em>possible</em> that the quick draft you lost last week is still in the database, and just hidden from view. As an added complication, these &#8220;discarded drafts&#8221; normally get deleted after seven days, and it&#8217;s already been six days since the release. If we were able to rescue your draft, you&#8217;ll see it on the &#8220;All Posts&#8221; screen after you update to 3.8.3. (We&#8217;ll also be pushing 3.8.3 out as a background update, so you may just see a draft appear.)</p>\n<p>So, if you tried to jot down a quick idea last week, I hope WordPress has recovered it for you. Maybe it&#8217;ll turn into that novella.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 3.8.3</a> or click &#8220;Update Now&#8221; on Dashboard → Updates.</p>\n<p><em>This affected version 3.7.2 as well, so we&#8217;re pushing a 3.7.3 to these installs, but we&#8217;d encourage you to update to the latest and greatest.</em></p>\n<hr />\n<p><em>Now for some good news:<br />\nWordPress 3.9 is near.<br />\nExpect it this week</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2014/04/wordpress-3-8-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 16 Oct 2014 14:51:16 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:10:"x-pingback";s:37:"https://wordpress.org/news/xmlrpc.php";s:13:"last-modified";s:29:"Wed, 15 Oct 2014 13:39:33 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20130910210210";}', 'no');
INSERT INTO `jc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(150, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1413514287', 'no'),
(151, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1413471087', 'no'),
(152, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1413514299', 'no'),
(153, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Oct 2014 14:45:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"MailPoet Newsletters";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wysija-newsletters/#post-32629";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Dec 2011 17:09:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"32629@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:94:"Send newsletters, post notifications or autoresponders from WordPress easily, and beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"MailPoet Staff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:104:"Supercharge your WordPress site with powerful features previously only available to WordPress.com users.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"The easiest, most effective way to secure WordPress in seconds.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"arnee";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 10 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WPtouch Mobile Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wptouch/#post-5468";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 May 2008 04:58:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5468@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"Create a slick mobile WordPress website with just a few clicks.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"BraveNewCode Inc.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:11:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 16 Oct 2014 14:51:37 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:7:"expires";s:29:"Thu, 16 Oct 2014 15:20:37 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Thu, 16 Oct 2014 14:45:37 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20130910210210";}', 'no'),
(154, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1413514299', 'no'),
(155, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1413471099', 'no'),
(156, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1413514299', 'no'),
(157, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2014/09/benny/''>WordPress 4.0 “Benny”</a> <span class="rss-date">September 4, 2014</span><div class="rssSummary">Version 4.0 of WordPress, named “Benny” in honor of jazz clarinetist and bandleader Benny Goodman, is available for download or update in your WordPress dashboard. While 4.0 is just another number for us after 3.9 and before 4.1, we feel we’ve put a little extra polish into it. This release brings you a smoother writing and management experience [&hellip;]</div></li></ul></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 9999 milliseconds with 165200 out of 253835 bytes received</p></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''https://wordpress.org/plugins/black-studio-tinymce-widget/'' class=''dashboard-news-plugin-link''>Black Studio TinyMCE Widget</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=black-studio-tinymce-widget&amp;_wpnonce=711c158ea2&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Black Studio TinyMCE Widget''>Install</a>)</span></li></ul></div>', 'no'),
(158, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1413482132', 'yes'),
(159, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4690";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2907";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2823";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2344";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2238";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1804";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1619";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1591";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1569";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1533";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1496";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1485";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1403";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1236";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1183";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1133";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1081";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1027";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1018";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"849";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"844";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"838";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"806";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"798";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"747";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"710";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"709";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"673";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"663";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"631";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"626";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"623";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"619";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"613";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"600";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"572";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"564";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"561";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"554";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"553";}}', 'yes'),
(163, 'scporder_options', 'a:1:{s:7:"objects";a:4:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:10:"attachment";i:3;s:11:"html5-blank";}}', 'yes'),
(170, 'EBS_SHORTCODE_PREFIX', '', 'yes'),
(172, 'EBS_CUSTOM_CSS', '', 'yes'),
(178, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:"nav_menu";i:2;}s:12:"_multiwidget";i:1;}', 'yes'),
(179, '_site_transient_timeout_theme_roots', '1413475304', 'yes'),
(180, '_site_transient_theme_roots', 'a:4:{s:5:"daily";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(181, 'revslider-valid-notice', 'false', 'yes'),
(182, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.0.1";}', 'yes'),
(183, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1413473579;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.0.2.zip";}s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";O:8:"stdClass":6:{s:2:"id";s:5:"47122";s:4:"slug";s:22:"bootstrap-3-shortcodes";s:6:"plugin";s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";s:11:"new_version";s:5:"3.2.4";s:3:"url";s:53:"https://wordpress.org/plugins/bootstrap-3-shortcodes/";s:7:"package";s:70:"http://downloads.wordpress.org/plugin/bootstrap-3-shortcodes.3.2.4.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:62:"http://downloads.wordpress.org/plugin/contact-form-7.4.0.1.zip";}s:53:"simple-custom-post-order/simple-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:5:"42644";s:4:"slug";s:24:"simple-custom-post-order";s:6:"plugin";s:53:"simple-custom-post-order/simple-custom-post-order.php";s:11:"new_version";s:3:"2.2";s:3:"url";s:55:"https://wordpress.org/plugins/simple-custom-post-order/";s:7:"package";s:66:"http://downloads.wordpress.org/plugin/simple-custom-post-order.zip";}s:47:"ultimate-posts-widget/ultimate-posts-widget.php";O:8:"stdClass":6:{s:2:"id";s:5:"31287";s:4:"slug";s:21:"ultimate-posts-widget";s:6:"plugin";s:47:"ultimate-posts-widget/ultimate-posts-widget.php";s:11:"new_version";s:5:"2.0.3";s:3:"url";s:52:"https://wordpress.org/plugins/ultimate-posts-widget/";s:7:"package";s:69:"http://downloads.wordpress.org/plugin/ultimate-posts-widget.2.0.3.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `jc_postmeta`
--

CREATE TABLE IF NOT EXISTS `jc_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=372 ;

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
(74, 31, '_edit_lock', '1413471920:1'),
(75, 31, '_wp_page_template', 'template-demo.php'),
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
(97, 36, '_edit_lock', '1413474587:1'),
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
(113, 44, '_edit_lock', '1413474645:1'),
(114, 46, '_edit_last', '1'),
(115, 46, '_wp_page_template', 'default'),
(116, 46, 'slide_template', 'default'),
(117, 46, '_edit_lock', '1413474659:1'),
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
(135, 56, '_edit_lock', '1413474587:1'),
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
(318, 87, '_edit_lock', '1413474984:1'),
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
(370, 97, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `jc_posts`
--

CREATE TABLE IF NOT EXISTS `jc_posts` (
`ID` bigint(20) unsigned NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `jc_posts`
--

INSERT INTO `jc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-10-15 09:58:48', '2014-10-15 09:58:48', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Convenient Beer & Wine Selection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-10-16 10:36:55', '2014-10-16 10:36:55', '', 0, 'http://localhost/daily/?p=1', 2, 'post', '', 1),
(2, 1, '2014-10-15 09:58:48', '2014-10-15 09:58:48', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/daily/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-10-16 10:52:55', '2014-10-16 10:52:55', '', 0, 'http://localhost/daily/?page_id=2', 22, 'page', '', 0),
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
(31, 1, '2014-10-16 15:07:20', '2014-10-16 15:07:20', '[container]\r\n[row]\r\n[column md="6"]\r\nthis is left\r\n[/column]\r\n[column md="6"]\r\nthis is right\r\n[/column]\r\n[/row]\r\n[/container]', 'contact us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2014-10-16 15:07:20', '2014-10-16 15:07:20', '', 0, 'http://localhost/daily/?page_id=31', 21, 'page', '', 0),
(32, 1, '2014-10-16 15:07:20', '2014-10-16 15:07:20', '[container]\r\n[row]\r\n[column md="6"]\r\nthis is left\r\n[/column]\r\n[column md="6"]\r\nthis is right\r\n[/column]\r\n[/row]\r\n[/container]', 'contact us', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2014-10-16 15:07:20', '2014-10-16 15:07:20', '', 31, 'http://localhost/daily/?p=32', 0, 'revision', '', 0),
(35, 1, '2014-10-16 15:32:46', '2014-10-16 15:32:46', '<div> [text* your-name placeholder  "Name (optional)"] </div>\r\n\r\n<div>[email* your-email placeholder  "email (optional)"] </div>\r\n\r\n<div>[textarea your-message placeholder "Please type your comment here"] </div>\r\n<div class="clearfix">\r\n<a class="pull-left" href="#">Your privacy is\r\nimportant to us.</a>\r\n<div class="pull-right">[submit "Send" ]</div></div>\n\n[your-name] <trungnguyenthanh70@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: \r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on daily (http://localhost/daily)\ntrungnguyenthanh70@gmail.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\ndaily <trungnguyenthanh70@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on daily (http://localhost/daily)\n[your-email]\nReply-To: trungnguyenthanh70@gmail.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Contact form', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2014-10-16 15:40:43', '2014-10-16 15:40:43', '', 0, 'http://localhost/daily/?post_type=wpcf7_contact_form&#038;p=35', 0, 'wpcf7_contact_form', '', 0),
(36, 1, '2014-10-16 15:49:45', '2014-10-16 15:49:45', '', 'Food you can trust', '', 'publish', 'open', 'open', '', 'food-you-can-trust', '', '', '2014-10-16 15:49:45', '2014-10-16 15:49:45', '', 0, 'http://localhost/daily/?page_id=36', 20, 'page', '', 0),
(37, 1, '2014-10-16 15:49:45', '2014-10-16 15:49:45', '', 'Food you can trust', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2014-10-16 15:49:45', '2014-10-16 15:49:45', '', 36, 'http://localhost/daily/?p=37', 0, 'revision', '', 0),
(38, 1, '2014-10-16 15:49:59', '2014-10-16 15:49:59', '', 'Beer & Wine ', '', 'publish', 'open', 'open', '', 'beer-wine', '', '', '2014-10-16 15:49:59', '2014-10-16 15:49:59', '', 0, 'http://localhost/daily/?page_id=38', 19, 'page', '', 0),
(39, 1, '2014-10-16 15:49:59', '2014-10-16 15:49:59', '', 'Beer & Wine ', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-10-16 15:49:59', '2014-10-16 15:49:59', '', 38, 'http://localhost/daily/?p=39', 0, 'revision', '', 0),
(40, 1, '2014-10-16 15:50:11', '2014-10-16 15:50:11', '', 'Buy Local', '', 'publish', 'open', 'open', '', 'buy-local', '', '', '2014-10-16 15:50:11', '2014-10-16 15:50:11', '', 0, 'http://localhost/daily/?page_id=40', 18, 'page', '', 0),
(41, 1, '2014-10-16 15:50:11', '2014-10-16 15:50:11', '', 'Buy Local', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2014-10-16 15:50:11', '2014-10-16 15:50:11', '', 40, 'http://localhost/daily/?p=41', 0, 'revision', '', 0),
(42, 1, '2014-10-16 15:50:24', '2014-10-16 15:50:24', '', 'Membership     ', '', 'publish', 'open', 'open', '', 'membership', '', '', '2014-10-16 15:50:24', '2014-10-16 15:50:24', '', 0, 'http://localhost/daily/?page_id=42', 17, 'page', '', 0),
(43, 1, '2014-10-16 15:50:24', '2014-10-16 15:50:24', '', 'Membership     ', '', 'inherit', 'open', 'open', '', '42-revision-v1', '', '', '2014-10-16 15:50:24', '2014-10-16 15:50:24', '', 42, 'http://localhost/daily/?p=43', 0, 'revision', '', 0),
(44, 1, '2014-10-16 15:50:43', '2014-10-16 15:50:43', '', 'About ', '', 'publish', 'open', 'open', '', 'about', '', '', '2014-10-16 15:50:43', '2014-10-16 15:50:43', '', 0, 'http://localhost/daily/?page_id=44', 16, 'page', '', 0),
(45, 1, '2014-10-16 15:50:43', '2014-10-16 15:50:43', '', 'About ', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2014-10-16 15:50:43', '2014-10-16 15:50:43', '', 44, 'http://localhost/daily/?p=45', 0, 'revision', '', 0),
(46, 1, '2014-10-16 15:50:56', '2014-10-16 15:50:56', '', 'Daily Exclusives ', '', 'publish', 'open', 'open', '', 'daily-exclusives', '', '', '2014-10-16 15:50:56', '2014-10-16 15:50:56', '', 0, 'http://localhost/daily/?page_id=46', 15, 'page', '', 0),
(47, 1, '2014-10-16 15:50:56', '2014-10-16 15:50:56', '', 'Daily Exclusives ', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2014-10-16 15:50:56', '2014-10-16 15:50:56', '', 46, 'http://localhost/daily/?p=47', 0, 'revision', '', 0),
(48, 1, '2014-10-16 15:51:16', '2014-10-16 15:51:16', '', 'Special Diets ', '', 'publish', 'open', 'open', '', 'special-diets', '', '', '2014-10-16 15:51:16', '2014-10-16 15:51:16', '', 0, 'http://localhost/daily/?page_id=48', 14, 'page', '', 0),
(49, 1, '2014-10-16 15:51:16', '2014-10-16 15:51:16', '', 'Special Diets ', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2014-10-16 15:51:16', '2014-10-16 15:51:16', '', 48, 'http://localhost/daily/?p=49', 0, 'revision', '', 0),
(50, 1, '2014-10-16 15:51:28', '2014-10-16 15:51:28', '', 'Schedule of Deliveries ', '', 'publish', 'open', 'open', '', 'schedule-of-deliveries', '', '', '2014-10-16 15:51:28', '2014-10-16 15:51:28', '', 0, 'http://localhost/daily/?page_id=50', 13, 'page', '', 0),
(51, 1, '2014-10-16 15:51:28', '2014-10-16 15:51:28', '', 'Schedule of Deliveries ', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2014-10-16 15:51:28', '2014-10-16 15:51:28', '', 50, 'http://localhost/daily/?p=51', 0, 'revision', '', 0),
(52, 1, '2014-10-16 15:51:36', '2014-10-16 15:51:36', '', 'Food FAQs​', '', 'publish', 'open', 'open', '', 'food-faqs%e2%80%8b', '', '', '2014-10-16 15:51:36', '2014-10-16 15:51:36', '', 0, 'http://localhost/daily/?page_id=52', 12, 'page', '', 0),
(53, 1, '2014-10-16 15:51:36', '2014-10-16 15:51:36', '', 'Food FAQs​', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2014-10-16 15:51:36', '2014-10-16 15:51:36', '', 52, 'http://localhost/daily/?p=53', 0, 'revision', '', 0),
(54, 1, '2014-10-16 15:51:58', '2014-10-16 15:51:58', '', 'Featured ', '', 'publish', 'open', 'open', '', 'featured', '', '', '2014-10-16 15:51:58', '2014-10-16 15:51:58', '', 0, 'http://localhost/daily/?page_id=54', 11, 'page', '', 0),
(55, 1, '2014-10-16 15:51:58', '2014-10-16 15:51:58', '', 'Featured ', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2014-10-16 15:51:58', '2014-10-16 15:51:58', '', 54, 'http://localhost/daily/?p=55', 0, 'revision', '', 0),
(56, 1, '2014-10-16 15:52:07', '2014-10-16 15:52:07', '', 'Local Eggs', '', 'publish', 'open', 'open', '', 'local-eggs', '', '', '2014-10-16 15:52:07', '2014-10-16 15:52:07', '', 0, 'http://localhost/daily/?page_id=56', 10, 'page', '', 0),
(57, 1, '2014-10-16 15:52:07', '2014-10-16 15:52:07', '', 'Local Eggs', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2014-10-16 15:52:07', '2014-10-16 15:52:07', '', 56, 'http://localhost/daily/?p=57', 0, 'revision', '', 0),
(58, 1, '2014-10-16 15:52:16', '2014-10-16 15:52:16', '', ' Local Dairy', '', 'publish', 'open', 'open', '', 'local-dairy', '', '', '2014-10-16 15:52:16', '2014-10-16 15:52:16', '', 0, 'http://localhost/daily/?page_id=58', 9, 'page', '', 0),
(59, 1, '2014-10-16 15:52:16', '2014-10-16 15:52:16', '', ' Local Dairy', '', 'inherit', 'open', 'open', '', '58-revision-v1', '', '', '2014-10-16 15:52:16', '2014-10-16 15:52:16', '', 58, 'http://localhost/daily/?p=59', 0, 'revision', '', 0),
(60, 1, '2014-10-16 15:52:37', '2014-10-16 15:52:37', '', 'Benefits ', '', 'publish', 'open', 'open', '', 'benefits', '', '', '2014-10-16 15:52:37', '2014-10-16 15:52:37', '', 0, 'http://localhost/daily/?page_id=60', 8, 'page', '', 0),
(61, 1, '2014-10-16 15:52:37', '2014-10-16 15:52:37', '', 'Benefits ', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2014-10-16 15:52:37', '2014-10-16 15:52:37', '', 60, 'http://localhost/daily/?p=61', 0, 'revision', '', 0),
(62, 1, '2014-10-16 15:52:52', '2014-10-16 15:52:52', '', 'How to Join ', '', 'publish', 'open', 'open', '', 'how-to-join', '', '', '2014-10-16 15:52:52', '2014-10-16 15:52:52', '', 0, 'http://localhost/daily/?page_id=62', 7, 'page', '', 0),
(63, 1, '2014-10-16 15:52:52', '2014-10-16 15:52:52', '', 'How to Join ', '', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2014-10-16 15:52:52', '2014-10-16 15:52:52', '', 62, 'http://localhost/daily/?p=63', 0, 'revision', '', 0),
(64, 1, '2014-10-16 15:53:00', '2014-10-16 15:53:00', '', 'Membership FAQ’s', '', 'publish', 'open', 'open', '', 'membership-faqs', '', '', '2014-10-16 15:53:00', '2014-10-16 15:53:00', '', 0, 'http://localhost/daily/?page_id=64', 6, 'page', '', 0),
(65, 1, '2014-10-16 15:53:00', '2014-10-16 15:53:00', '', 'Membership FAQ’s', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2014-10-16 15:53:00', '2014-10-16 15:53:00', '', 64, 'http://localhost/daily/?p=65', 0, 'revision', '', 0),
(66, 1, '2014-10-16 15:53:50', '2014-10-16 15:53:50', ' ', '', '', 'publish', 'open', 'open', '', '66', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=66', 12, 'nav_menu_item', '', 0),
(67, 1, '2014-10-16 15:53:50', '2014-10-16 15:53:50', ' ', '', '', 'publish', 'open', 'open', '', '67', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=67', 8, 'nav_menu_item', '', 0),
(68, 1, '2014-10-16 15:53:50', '2014-10-16 15:53:50', ' ', '', '', 'publish', 'open', 'open', '', '68', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=68', 7, 'nav_menu_item', '', 0),
(69, 1, '2014-10-16 15:53:50', '2014-10-16 15:53:50', ' ', '', '', 'publish', 'open', 'open', '', '69', '', '', '2014-10-16 15:57:12', '2014-10-16 15:57:12', '', 0, 'http://localhost/daily/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2014-10-16 15:53:51', '2014-10-16 15:53:51', ' ', '', '', 'publish', 'open', 'open', '', '70', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=70', 16, 'nav_menu_item', '', 0),
(71, 1, '2014-10-16 15:55:02', '2014-10-16 15:55:02', ' ', '', '', 'publish', 'open', 'open', '', '71', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=71', 17, 'nav_menu_item', '', 0),
(72, 1, '2014-10-16 15:55:01', '2014-10-16 15:55:01', ' ', '', '', 'publish', 'open', 'open', '', '72', '', '', '2014-10-16 15:57:12', '2014-10-16 15:57:12', '', 0, 'http://localhost/daily/?p=72', 2, 'nav_menu_item', '', 0),
(73, 1, '2014-10-16 15:55:01', '2014-10-16 15:55:01', ' ', '', '', 'publish', 'open', 'open', '', '73', '', '', '2014-10-16 15:57:12', '2014-10-16 15:57:12', '', 0, 'http://localhost/daily/?p=73', 3, 'nav_menu_item', '', 0),
(74, 1, '2014-10-16 15:55:02', '2014-10-16 15:55:02', ' ', '', '', 'publish', 'open', 'open', '', '74', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=74', 6, 'nav_menu_item', '', 0),
(75, 1, '2014-10-16 15:55:02', '2014-10-16 15:55:02', ' ', '', '', 'publish', 'open', 'open', '', '75', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=75', 5, 'nav_menu_item', '', 0),
(76, 1, '2014-10-16 15:55:02', '2014-10-16 15:55:02', ' ', '', '', 'publish', 'open', 'open', '', '76', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=76', 4, 'nav_menu_item', '', 0),
(77, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '77', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=77', 11, 'nav_menu_item', '', 0),
(78, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '78', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=78', 10, 'nav_menu_item', '', 0),
(79, 1, '2014-10-16 15:55:45', '2014-10-16 15:55:45', ' ', '', '', 'publish', 'open', 'open', '', '79', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=79', 9, 'nav_menu_item', '', 0),
(80, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '80', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=80', 15, 'nav_menu_item', '', 0),
(81, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '81', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=81', 14, 'nav_menu_item', '', 0),
(82, 1, '2014-10-16 15:55:46', '2014-10-16 15:55:46', ' ', '', '', 'publish', 'open', 'open', '', '82', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=82', 13, 'nav_menu_item', '', 0),
(83, 1, '2014-10-16 15:56:00', '2014-10-16 15:56:00', '', 'Directions ', '', 'publish', 'open', 'open', '', 'directions', '', '', '2014-10-16 15:56:00', '2014-10-16 15:56:00', '', 0, 'http://localhost/daily/?page_id=83', 5, 'page', '', 0),
(84, 1, '2014-10-16 15:56:00', '2014-10-16 15:56:00', '', 'Directions ', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2014-10-16 15:56:00', '2014-10-16 15:56:00', '', 83, 'http://localhost/daily/?p=84', 0, 'revision', '', 0),
(85, 1, '2014-10-16 15:56:11', '2014-10-16 15:56:11', '', 'Hours ', '', 'publish', 'open', 'open', '', 'hours', '', '', '2014-10-16 15:56:11', '2014-10-16 15:56:11', '', 0, 'http://localhost/daily/?page_id=85', 4, 'page', '', 0),
(86, 1, '2014-10-16 15:56:11', '2014-10-16 15:56:11', '', 'Hours ', '', 'inherit', 'open', 'open', '', '85-revision-v1', '', '', '2014-10-16 15:56:11', '2014-10-16 15:56:11', '', 85, 'http://localhost/daily/?p=86', 0, 'revision', '', 0),
(87, 1, '2014-10-16 15:56:21', '2014-10-16 15:56:21', '', 'Contacts Info', '', 'publish', 'open', 'open', '', 'contacts-info', '', '', '2014-10-16 15:56:21', '2014-10-16 15:56:21', '', 0, 'http://localhost/daily/?page_id=87', 3, 'page', '', 0),
(88, 1, '2014-10-16 15:56:21', '2014-10-16 15:56:21', '', 'Contacts Info', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2014-10-16 15:56:21', '2014-10-16 15:56:21', '', 87, 'http://localhost/daily/?p=88', 0, 'revision', '', 0),
(89, 1, '2014-10-16 15:56:30', '2014-10-16 15:56:30', '', ' Gift Certificates ', '', 'publish', 'open', 'open', '', 'gift-certificates', '', '', '2014-10-16 15:56:30', '2014-10-16 15:56:30', '', 0, 'http://localhost/daily/?page_id=89', 2, 'page', '', 0),
(90, 1, '2014-10-16 15:56:30', '2014-10-16 15:56:30', '', ' Gift Certificates ', '', 'inherit', 'open', 'open', '', '89-revision-v1', '', '', '2014-10-16 15:56:30', '2014-10-16 15:56:30', '', 89, 'http://localhost/daily/?p=90', 0, 'revision', '', 0),
(91, 1, '2014-10-16 15:56:40', '2014-10-16 15:56:40', '', 'Comments', '', 'publish', 'open', 'open', '', 'comments', '', '', '2014-10-16 15:56:40', '2014-10-16 15:56:40', '', 0, 'http://localhost/daily/?page_id=91', 1, 'page', '', 0),
(92, 1, '2014-10-16 15:56:40', '2014-10-16 15:56:40', '', 'Comments', '', 'inherit', 'open', 'open', '', '91-revision-v1', '', '', '2014-10-16 15:56:40', '2014-10-16 15:56:40', '', 91, 'http://localhost/daily/?p=92', 0, 'revision', '', 0),
(93, 1, '2014-10-16 15:57:14', '2014-10-16 15:57:14', ' ', '', '', 'publish', 'open', 'open', '', '93', '', '', '2014-10-16 15:57:14', '2014-10-16 15:57:14', '', 0, 'http://localhost/daily/?p=93', 22, 'nav_menu_item', '', 0),
(94, 1, '2014-10-16 15:57:14', '2014-10-16 15:57:14', ' ', '', '', 'publish', 'open', 'open', '', '94', '', '', '2014-10-16 15:57:14', '2014-10-16 15:57:14', '', 0, 'http://localhost/daily/?p=94', 21, 'nav_menu_item', '', 0),
(95, 1, '2014-10-16 15:57:13', '2014-10-16 15:57:13', ' ', '', '', 'publish', 'open', 'open', '', '95', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=95', 20, 'nav_menu_item', '', 0),
(96, 1, '2014-10-16 15:57:13', '2014-10-16 15:57:13', ' ', '', '', 'publish', 'open', 'open', '', '96', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=96', 19, 'nav_menu_item', '', 0),
(97, 1, '2014-10-16 15:57:13', '2014-10-16 15:57:13', ' ', '', '', 'publish', 'open', 'open', '', '97', '', '', '2014-10-16 15:57:13', '2014-10-16 15:57:13', '', 0, 'http://localhost/daily/?p=97', 18, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jc_revslider_css`
--

CREATE TABLE IF NOT EXISTS `jc_revslider_css` (
`id` int(9) NOT NULL,
  `handle` text NOT NULL,
  `settings` text,
  `hover` text,
  `params` text NOT NULL
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
`id` int(9) NOT NULL,
  `handle` text NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jc_revslider_settings`
--

CREATE TABLE IF NOT EXISTS `jc_revslider_settings` (
`id` int(9) NOT NULL,
  `general` text NOT NULL,
  `params` text NOT NULL
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
`id` int(9) NOT NULL,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` text NOT NULL
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
`id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL
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
`id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jc_terms`
--

CREATE TABLE IF NOT EXISTS `jc_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jc_terms`
--

INSERT INTO `jc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'primary menu', 'primary-menu', 0),
(3, 'news', 'news', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jc_term_relationships`
--

CREATE TABLE IF NOT EXISTS `jc_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
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
(97, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jc_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `jc_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jc_term_taxonomy`
--

INSERT INTO `jc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 22),
(3, 3, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `jc_usermeta`
--

CREATE TABLE IF NOT EXISTS `jc_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

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
(14, 1, 'session_tokens', 'a:3:{s:64:"491c8091cd8fdc42cdcb2b4dac47d4a0e402f12bdb6213204980431898af25b4";i:1413539936;s:64:"9031fddef122859ba92a2ad59bbc582abc4ccc37ffd200aed1d906207c86752a";i:1413626543;s:64:"47a2fc35f541030699a108aa1ab1de2850db7314cd290feccea5f462800629b5";i:1413643872;}'),
(15, 1, 'jc_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:15:"add-html5-blank";i:2;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'jc_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'jc_user-settings-time', '1413455502'),
(21, 1, 'closedpostboxes_post', 'a:1:{i:0;s:21:"mymetabox_revslider_0";}'),
(22, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `jc_users`
--

CREATE TABLE IF NOT EXISTS `jc_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jc_users`
--

INSERT INTO `jc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bzi.t4mEV1X6KVC6yT/PHd/pcPEtbE1', 'admin', 'trungnguyenthanh70@gmail.com', '', '2014-10-15 09:58:48', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jc_commentmeta`
--
ALTER TABLE `jc_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `jc_comments`
--
ALTER TABLE `jc_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `jc_links`
--
ALTER TABLE `jc_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `jc_options`
--
ALTER TABLE `jc_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `jc_postmeta`
--
ALTER TABLE `jc_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `jc_posts`
--
ALTER TABLE `jc_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `jc_revslider_css`
--
ALTER TABLE `jc_revslider_css`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jc_revslider_layer_animations`
--
ALTER TABLE `jc_revslider_layer_animations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jc_revslider_settings`
--
ALTER TABLE `jc_revslider_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jc_revslider_sliders`
--
ALTER TABLE `jc_revslider_sliders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jc_revslider_slides`
--
ALTER TABLE `jc_revslider_slides`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jc_revslider_static_slides`
--
ALTER TABLE `jc_revslider_static_slides`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jc_terms`
--
ALTER TABLE `jc_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `jc_term_relationships`
--
ALTER TABLE `jc_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `jc_term_taxonomy`
--
ALTER TABLE `jc_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `jc_usermeta`
--
ALTER TABLE `jc_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `jc_users`
--
ALTER TABLE `jc_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jc_commentmeta`
--
ALTER TABLE `jc_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jc_comments`
--
ALTER TABLE `jc_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jc_links`
--
ALTER TABLE `jc_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jc_options`
--
ALTER TABLE `jc_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT for table `jc_postmeta`
--
ALTER TABLE `jc_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=372;
--
-- AUTO_INCREMENT for table `jc_posts`
--
ALTER TABLE `jc_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `jc_revslider_css`
--
ALTER TABLE `jc_revslider_css`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `jc_revslider_layer_animations`
--
ALTER TABLE `jc_revslider_layer_animations`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jc_revslider_settings`
--
ALTER TABLE `jc_revslider_settings`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jc_revslider_sliders`
--
ALTER TABLE `jc_revslider_sliders`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jc_revslider_slides`
--
ALTER TABLE `jc_revslider_slides`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jc_revslider_static_slides`
--
ALTER TABLE `jc_revslider_static_slides`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jc_terms`
--
ALTER TABLE `jc_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jc_term_taxonomy`
--
ALTER TABLE `jc_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jc_usermeta`
--
ALTER TABLE `jc_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `jc_users`
--
ALTER TABLE `jc_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
