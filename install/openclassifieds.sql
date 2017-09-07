-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2017 at 01:59 PM
-- Server version: 5.7.14-1+deb.sury.org~trusty+0
-- PHP Version: 7.0.23-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `openclassifieds`
--

-- --------------------------------------------------------

--
-- Table structure for table `yc3_access`
--

CREATE TABLE `yc3_access` (
  `id_access` int(10) UNSIGNED NOT NULL,
  `id_role` int(10) UNSIGNED NOT NULL,
  `access` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_access`
--

INSERT INTO `yc3_access` (`id_access`, `id_role`, `access`) VALUES
(1, 10, '*.*'),
(2, 1, 'profile.*'),
(3, 1, 'stats.user'),
(4, 1, 'myads.*'),
(5, 1, 'messages.*'),
(6, 5, 'translations.*'),
(7, 5, 'profile.*'),
(8, 5, 'stats.user'),
(9, 5, 'content.*'),
(10, 5, 'myads.*'),
(11, 5, 'messages.*'),
(12, 7, 'profile.*'),
(13, 7, 'content.*'),
(14, 7, 'stats.user'),
(15, 7, 'blog.*'),
(16, 7, 'translations.*'),
(17, 7, 'ad.*'),
(18, 7, 'widgets.*'),
(19, 7, 'menu.*'),
(20, 7, 'category.*'),
(21, 7, 'location.*'),
(22, 7, 'myads.*'),
(23, 7, 'messages.*');

-- --------------------------------------------------------

--
-- Table structure for table `yc3_ads`
--

CREATE TABLE `yc3_ads` (
  `id_ad` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_location` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(145) NOT NULL,
  `seotitle` varchar(145) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(145) DEFAULT '0',
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `phone` varchar(30) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published` datetime DEFAULT NULL,
  `featured` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `has_images` tinyint(1) NOT NULL DEFAULT '0',
  `stock` int(10) UNSIGNED DEFAULT NULL,
  `rate` float(4,2) DEFAULT NULL,
  `favorited` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_ads`
--

INSERT INTO `yc3_ads` (`id_ad`, `id_user`, `id_category`, `id_location`, `title`, `seotitle`, `description`, `address`, `latitude`, `longitude`, `price`, `phone`, `website`, `ip_address`, `created`, `published`, `featured`, `last_modified`, `status`, `has_images`, `stock`, `rate`, `favorited`) VALUES
(1, 1, 2, 2, 'some nice title here', 'some-nice-title-here', 'description allows bbcode', 'optional address', NULL, NULL, '0.000', '949494949', 'http://open-classifieds.com', NULL, '2009-06-18 22:04:03', '2009-06-18 23:04:03', NULL, NULL, 1, 2, NULL, NULL, 0),
(2, 2, 20, 3, 'another great title', 'another-great-title', 'description allows bbcode', '', NULL, NULL, '5.000', '419949494', 'NULL', NULL, '2009-06-29 11:55:03', '2009-06-29 12:55:03', NULL, NULL, 1, 1, NULL, NULL, 0),
(3, 3, 8, 4, 'just random title here', 'just-random-title-here', 'description allows bbcode', 'street number', NULL, NULL, '300.000', '8848585', 'NULL', NULL, '2009-07-07 07:58:40', '2009-07-07 08:58:40', NULL, NULL, 1, 0, NULL, NULL, 0),
(4, 4, 2, 5, 'title for the ad', 'title-for-the-ad', 'description allows bbcode', 'street number', NULL, NULL, '2500.000', '908848585', 'NULL', NULL, '2009-08-06 06:25:36', '2009-08-06 07:25:36', NULL, NULL, 1, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yc3_adsimport`
--

CREATE TABLE `yc3_adsimport` (
  `id_import` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL,
  `user_name` varchar(145) NOT NULL,
  `user_email` varchar(145) NOT NULL,
  `id_category` int(10) UNSIGNED DEFAULT NULL,
  `category` varchar(145) NOT NULL,
  `id_location` int(10) UNSIGNED DEFAULT NULL,
  `location` varchar(145) NOT NULL,
  `title` varchar(145) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(145) DEFAULT '0',
  `price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `phone` varchar(30) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `image_1` varchar(200) DEFAULT NULL,
  `image_2` varchar(200) DEFAULT NULL,
  `image_3` varchar(200) DEFAULT NULL,
  `image_4` varchar(200) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_adsimport`
--

INSERT INTO `yc3_adsimport` (`id_import`, `id_user`, `user_name`, `user_email`, `id_category`, `category`, `id_location`, `location`, `title`, `description`, `address`, `price`, `phone`, `date`, `website`, `image_1`, `image_2`, `image_3`, `image_4`, `processed`) VALUES
(1, 1, 'admin', 'admin@reoc.lo', NULL, 'Jobs', 2, 'Madrid', 'some nice title here', 'description allows bbcode', 'optional address', '0.000', '949494949', '2009-06-18 23:04:03', 'http://open-classifieds.com', 'http://lorempixel.com/1200/800/technics/', 'http://lorempixel.com/1200/800/technics/', '', '', 1),
(2, 2, 'Jermaine Doe', 'user@reoc.lo', NULL, 'House', 3, 'London', 'another great title', 'description allows bbcode', '', '5.000', '419949494', '2009-06-29 12:55:03', 'NULL', 'http://lorempixel.com/1200/800/abstract/', '', '', '', 1),
(3, 3, 'Gary Doe', 'gazzasdasd@reoc.lo', NULL, 'Part Time', 4, 'Barcelona', 'just random title here', 'description allows bbcode', 'street number', '300.000', '8848585', '2009-07-07 08:58:40', 'NULL', 'http://lorempixel.com/1200/800/people/', '', '', '', 1),
(4, 4, 'John Smith', 'john@gmail.com', NULL, 'Jobs', 5, 'Paris', 'title for the ad', 'description allows bbcode', 'street number', '2500.000', '908848585', '2009-08-06 07:25:36', 'NULL', 'http://lorempixel.com/1200/800/people/', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yc3_categories`
--

CREATE TABLE `yc3_categories` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `name` varchar(145) NOT NULL,
  `order` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_category_parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_deep` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `seoname` varchar(145) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `last_modified` datetime DEFAULT NULL,
  `has_image` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_categories`
--

INSERT INTO `yc3_categories` (`id_category`, `name`, `order`, `created`, `id_category_parent`, `parent_deep`, `seoname`, `description`, `price`, `last_modified`, `has_image`) VALUES
(1, 'Home category', 0, '2017-09-07 12:54:08', 0, 0, 'all', 'root category', '0.00', NULL, 0),
(2, 'Jobs', 1, '2013-05-01 15:41:04', 1, 0, 'jobs', 'The best place to find work is with our job offers. Also you can ask for work in the \'Need\' section.', '0.00', NULL, 0),
(3, 'Languages', 2, '2013-05-01 15:41:04', 1, 0, 'languages', 'You want to learn a new language? Or can you teach a language? This is your section!', '0.00', NULL, 0),
(4, 'Others', 4, '2013-05-01 15:41:04', 1, 0, 'others', 'Whatever you can imagine is in this section.', '0.00', NULL, 0),
(5, 'Housing', 0, '2013-05-01 15:41:53', 1, 0, 'housing', 'Do you need a place to sleep, or you have something to offer; rooms, shared apartments, houses... etc.\n\nFind your perfect roommate here!', '0.00', NULL, 0),
(6, 'Market', 3, '2013-05-01 15:41:04', 1, 0, 'market', 'Buy or sell things that you don\'t need anymore in the City, you will find someone interested, or maybe you are going to find exactly what you need.', '0.00', NULL, 0),
(7, 'Full Time', 1, '2009-04-22 16:31:43', 2, 1, 'full-time', 'Are you looking for a fulltime job? Or do you have a fulltime job to offer? Post your Ad here!', '0.00', NULL, 0),
(8, 'Part Time', 2, '2009-04-22 16:32:15', 2, 1, 'part-time', 'Are you looking for a parttime job? Or do you have a partime job to offer? Post your Ad here!', '0.00', NULL, 0),
(9, 'Internship', 3, '2009-04-22 16:33:05', 2, 1, 'internship', 'Are you looking for a internship in the City? Or do you have an internship to offer? Post it here!', '0.00', NULL, 0),
(10, 'Au pair', 4, '2009-06-19 08:26:22', 2, 1, 'au-pair', 'Find or require for a Au Pair service. Here is the best place', '0.00', NULL, 0),
(11, 'English', 1, '2009-04-22 16:33:52', 3, 1, 'english', 'Do you speak English? Or can you teach it? Do you want to learn? This is your category.', '0.00', NULL, 0),
(12, 'Spanish', 2, '2009-04-22 16:34:29', 3, 1, 'spanish', 'You want to learn Spanish? Or can you teach Spanish? This is your section!', '0.00', NULL, 0),
(13, 'Other Languages', 3, '2009-04-22 16:35:34', 3, 1, 'other-languages', 'Are you interested in learning or teaching any other language that is not listed? Post it here!', '0.00', NULL, 0),
(14, 'Events', 0, '2013-05-01 15:41:11', 4, 1, 'events', 'Upcoming Parties, Cinema, Museums, Parades, Birthdays, Dinners.... Everything!', '0.00', NULL, 0),
(15, 'Hobbies', 1, '2013-05-01 15:41:11', 4, 1, 'hobbies', 'Share your hobby with someone! Football, running, cinema, music, cinema, party ... Post it here!', '0.00', NULL, 0),
(16, 'Services', 3, '2009-04-22 16:38:33', 4, 1, 'services', 'Do you need a service? Relocation? Insurance? Doctor? Cleaning? Here you can ask for it or offer services!', '0.00', NULL, 0),
(17, 'Friendship', 2, '2013-05-01 15:41:17', 1, 1, 'friendship', 'Are you alone in the City? Here you can find new friends! or a new boyfriend/girlfriend ;)', '0.00', NULL, 0),
(18, 'Apartment', 1, '2009-04-22 16:39:32', 5, 1, 'apartment', 'Apartments, flats, monthly rentals, long terms, for days... this is the section to have your apartment in the City!', '0.00', NULL, 0),
(19, 'Shared Apartments - Rooms', 2, '2009-05-03 20:53:57', 5, 1, 'shared-apartments-rooms', 'You want to share an apartment? Then you need a room! Ask for rooms or add yours in this section.', '0.00', NULL, 0),
(20, 'House', 3, '2009-04-22 16:40:50', 5, 1, 'house', 'Rent a house, or offer your house for rent! Here you can find your beach house close to the City!', '0.00', NULL, 0),
(21, 'TV', 1, '2009-04-22 16:41:39', 6, 1, 'tv', 'TV, Video Games, TFT, Plasma, your old TV, or your new one can find a new owner!', '0.00', NULL, 0),
(22, 'Audio', 2, '2009-04-22 16:42:13', 6, 1, 'audio', 'HI-FI systems, iPod, MP3 players, MP4, if you don\'t use it anymore sell it! If you try to find a second hand one, this is your place!', '0.00', NULL, 0),
(23, 'Furniture', 3, '2009-04-22 16:43:16', 6, 1, 'furniture', 'Do you need to furnish your home? Or would you like to sell your furniture? Post it here!', '0.00', NULL, 0),
(24, 'IT', 4, '2009-04-22 16:43:48', 6, 1, 'it', 'You need a computer? Laptop? Or do you have some old components? This is the IT market of the City!', '0.00', NULL, 0),
(25, 'Other Market', 5, '2009-04-22 16:44:12', 6, 1, 'other-market', 'In this market you can sell everything you want! Or search for it!', '0.00', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yc3_config`
--

CREATE TABLE `yc3_config` (
  `group_name` varchar(128) NOT NULL,
  `config_key` varchar(128) NOT NULL,
  `config_value` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_config`
--

INSERT INTO `yc3_config` (`group_name`, `config_key`, `config_value`) VALUES
('advertisement', 'access_token', ''),
('advertisement', 'access_token_secret', ''),
('general', 'adblock', '0'),
('advertisement', 'address', '1'),
('advertisement', 'ads_in_home', '0'),
('advertisement', 'advertisements_per_page', '10'),
('general', 'akismet_key', ''),
('general', 'alert_terms', ''),
('general', 'algolia_powered_by_enabled', '1'),
('general', 'algolia_search', '0'),
('general', 'algolia_search_admin_key', ''),
('general', 'algolia_search_application_id', ''),
('general', 'algolia_search_only_key', ''),
('image', 'allowed_formats', 'jpeg,jpg,png,'),
('i18n', 'allow_query_language', '0'),
('appearance', 'allow_query_theme', '0'),
('payment', 'alternative', ''),
('general', 'analytics', ''),
('general', 'api_key', 'd%yfrvbb87ce43pf@qsxdt6ks7kfmk7a'),
('payment', 'authorize_key', ''),
('payment', 'authorize_login', ''),
('payment', 'authorize_sandbox', '0'),
('general', 'auto_locate', '0'),
('advertisement', 'auto_locate_distance', '100'),
('image', 'aws_access_key', ''),
('image', 'aws_s3_active', '0'),
('image', 'aws_s3_bucket', ''),
('image', 'aws_s3_domain', '0'),
('image', 'aws_secret_key', ''),
('advertisement', 'banned_words', ''),
('advertisement', 'banned_words_replacement', 'xxx'),
('general', 'base_url', 'http://reoc.lo/'),
('payment', 'bitpay_apikey', ''),
('general', 'black_list', '1'),
('general', 'blog', '0'),
('general', 'blog_disqus', ''),
('advertisement', 'captcha', '1'),
('advertisement', 'center_lat', ''),
('advertisement', 'center_lon', ''),
('i18n', 'charset', 'utf-8'),
('social', 'config', '{"debug_mode":"0","providers":{"OpenID":{"enabled":"0"},"Yahoo":{"enabled":"0","keys":{"key":"","secret":""}},\n"AOL":{"enabled":"0"},"Google":{"enabled":"0","keys":{"id":"","secret":""}},"Facebook":{"enabled":"0","keys":{"id":"","secret":""}},\n"Twitter":{"enabled":"0","keys":{"key":"","secret":""}},"Live":{"enabled":"0","keys":{"id":"","secret":""}},"MySpace":{"enabled":"0","keys":{"key":"","secret":""}},\n"LinkedIn":{"enabled":"0","keys":{"key":"","secret":""}},"Foursquare":{"enabled":"0","keys":{"id":"","secret":""}},"Vkontakte":{"enabled":"0","keys":{"id":"","secret":""}}},"base_url":"","debug_file":""}'),
('advertisement', 'contact', '1'),
('general', 'contact_page', ''),
('advertisement', 'contact_price', '1'),
('general', 'cookie_consent', '0'),
('general', 'country', ''),
('advertisement', 'count_visits', '1'),
('general', 'cron', '1'),
('appearance', 'custom_css', '0'),
('appearance', 'custom_css_version', '0'),
('general', 'date_format', 'd-m-y'),
('theme', 'default', '{"theme":"default","category_badge":"0","hide_description_icon":"0"}'),
('advertisement', 'delete_ad', '0'),
('advertisement', 'description', '1'),
('advertisement', 'description_bbcode', '1'),
('general', 'disallowbots', '0'),
('image', 'disallow_nudes', '0'),
('advertisement', 'disqus', ''),
('advertisement', 'dropbox_app_key', ''),
('email', 'elastic_listname', ''),
('email', 'elastic_password', ''),
('email', 'elastic_username', ''),
('general', 'email_domains', ''),
('advertisement', 'expire_date', '0'),
('advertisement', 'expire_reactivation', '1'),
('advertisement', 'facebook', '0'),
('advertisement', 'facebook_access_token', ''),
('advertisement', 'facebook_app_id', ''),
('advertisement', 'facebook_app_secret', ''),
('advertisement', 'facebook_id', ''),
('general', 'faq', '0'),
('general', 'faq_disqus', ''),
('advertisement', 'fbcomments', ''),
('payment', 'featured_plans', '{"5":"10"}'),
('advertisement', 'feed_elements', '20'),
('advertisement', 'fields', ''),
('general', 'forums', '0'),
('payment', 'fraudlabspro', ''),
('advertisement', 'free', '0'),
('general', 'gcm_apikey', ''),
('advertisement', 'gm_api_key', ''),
('general', 'google_authenticator', '1'),
('image', 'height', ''),
('image', 'height_thumb', '200'),
('general', 'hide_homepage_categories', '{}'),
('general', 'html_footer', ''),
('general', 'html_head', ''),
('advertisement', 'instagram', '0'),
('advertisement', 'instagram_password', ''),
('advertisement', 'instagram_username', ''),
('general', 'landing_page', '{"controller":"home","action":"index"}'),
('advertisement', 'leave_alert', '1'),
('i18n', 'locale', 'en_US'),
('advertisement', 'location', '1'),
('advertisement', 'logbee', '0'),
('advertisement', 'login_to_contact', '0'),
('advertisement', 'login_to_post', '0'),
('advertisement', 'login_to_view_ad', '0'),
('general', 'maintenance', '0'),
('advertisement', 'map', '0'),
('appearance', 'map_active', '0'),
('advertisement', 'map_elements', '100'),
('appearance', 'map_jscode', ''),
('advertisement', 'map_pub_new', '0'),
('appearance', 'map_settings', ''),
('advertisement', 'map_style', ''),
('advertisement', 'map_zoom', '14'),
('image', 'max_image_size', '5'),
('general', 'measurement', 'metric'),
('payment', 'mercadopago_client_id', ''),
('payment', 'mercadopago_client_secret', ''),
('general', 'messaging', '1'),
('general', 'minify', '0'),
('general', 'moderation', '0'),
('email', 'new_ad_notify', '0'),
('email', 'notify_email', 'admin@reoc.lo'),
('email', 'notify_name', 'no-reply Site Name'),
('general', 'number_format', '%n'),
('advertisement', 'num_images', '4'),
('general', 'ocacu', '1504788871'),
('advertisement', 'only_admin_post', '0'),
('payment', 'paguelofacil_cclw', ''),
('payment', 'paguelofacil_testing', '0'),
('advertisement', 'parent_category', '1'),
('payment', 'payfast_merchant_id', ''),
('payment', 'payfast_merchant_key', ''),
('payment', 'payfast_sandbox', '0'),
('payment', 'paymill_private', ''),
('payment', 'paymill_public', ''),
('payment', 'paypal_account', ''),
('payment', 'paypal_currency', 'USD'),
('payment', 'paypal_seller', '0'),
('payment', 'paysbuy', ''),
('payment', 'paysbuy_sandbox', '0'),
('payment', 'paytabs_merchant_email', ''),
('payment', 'paytabs_secret_key', ''),
('payment', 'pay_to_go_on_feature', '1'),
('payment', 'pay_to_go_on_top', '5'),
('advertisement', 'phone', '1'),
('advertisement', 'picker_api_key', ''),
('advertisement', 'picker_client_id', ''),
('advertisement', 'pinterest', '0'),
('advertisement', 'pinterest_access_token', ''),
('advertisement', 'pinterest_app_id', ''),
('advertisement', 'pinterest_app_secret', ''),
('advertisement', 'pinterest_board', ''),
('advertisement', 'price', '1'),
('general', 'private_site', '0'),
('general', 'private_site_page', ''),
('general', 'pusher_notifications', '0'),
('general', 'pusher_notifications_app_id', ''),
('general', 'pusher_notifications_cluster', 'eu'),
('general', 'pusher_notifications_key', ''),
('general', 'pusher_notifications_secret', ''),
('advertisement', 'qr_code', '0'),
('image', 'quality', '90'),
('general', 'recaptcha_active', '0'),
('general', 'recaptcha_secretkey', ''),
('general', 'recaptcha_sitekey', ''),
('advertisement', 'related', '5'),
('advertisement', 'report', '1'),
('advertisement', 'reviews', '0'),
('advertisement', 'reviews_paid', '0'),
('advertisement', 'rich_snippets', '0'),
('payment', 'robokassa_login', ''),
('payment', 'robokassa_pass1', ''),
('payment', 'robokassa_pass2', ''),
('payment', 'robokassa_testing', '0'),
('payment', 'sandbox', '0'),
('general', 'search_by_description', '0'),
('general', 'search_multi_catloc', '0'),
('payment', 'securepay_merchant', ''),
('payment', 'securepay_password', ''),
('payment', 'securepay_testing', '0'),
('email', 'service', 'mail'),
('advertisement', 'sharing', '0'),
('general', 'site_description', ''),
('general', 'site_name', 'Site Name'),
('general', 'sms_auth', '0'),
('general', 'sms_clickatell_api', ''),
('email', 'smtp_auth', '0'),
('email', 'smtp_host', ''),
('email', 'smtp_pass', ''),
('email', 'smtp_port', ''),
('email', 'smtp_secure', ''),
('email', 'smtp_user', ''),
('general', 'social_auth', '0'),
('advertisement', 'social_post_only_featured', '0'),
('advertisement', 'sort_by', 'published-desc'),
('payment', 'stock', '0'),
('payment', 'stripe_3d_secure', '0'),
('payment', 'stripe_address', '0'),
('payment', 'stripe_alipay', '0'),
('payment', 'stripe_appfee', '0'),
('payment', 'stripe_bitcoin', '0'),
('payment', 'stripe_clientid', ''),
('payment', 'stripe_connect', '0'),
('payment', 'stripe_private', ''),
('payment', 'stripe_public', ''),
('general', 'subscribe', '0'),
('general', 'subscriptions', '0'),
('general', 'subscriptions_expire', '1'),
('advertisement', 'thanks_page', ''),
('appearance', 'theme', 'default'),
('appearance', 'theme_mobile', ''),
('i18n', 'timezone', 'Europe/London'),
('advertisement', 'tos', ''),
('payment', 'to_featured', '0'),
('payment', 'to_top', '0'),
('general', 'translate', ''),
('advertisement', 'twitter', '0'),
('advertisement', 'twitter_consumer_key', ''),
('advertisement', 'twitter_consumer_secret', ''),
('payment', 'twocheckout_sandbox', '0'),
('payment', 'twocheckout_secretword', ''),
('payment', 'twocheckout_sid', ''),
('advertisement', 'upload_file', '0'),
('image', 'upload_from_url', '0'),
('user', 'user_fields', '{}'),
('advertisement', 'validate_banned_words', '0'),
('payment', 'vat_country', ''),
('payment', 'vat_number', ''),
('image', 'watermark', '0'),
('image', 'watermark_path', ''),
('image', 'watermark_position', '0'),
('advertisement', 'website', '1'),
('image', 'width', '1200'),
('image', 'width_thumb', '200');

-- --------------------------------------------------------

--
-- Table structure for table `yc3_content`
--

CREATE TABLE `yc3_content` (
  `id_content` int(10) UNSIGNED NOT NULL,
  `locale` varchar(8) NOT NULL DEFAULT 'en_UK',
  `order` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(145) NOT NULL,
  `seotitle` varchar(145) NOT NULL,
  `description` mediumtext,
  `from_email` varchar(145) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` enum('page','email','help') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_content`
--

INSERT INTO `yc3_content` (`id_content`, `locale`, `order`, `title`, `seotitle`, `description`, `from_email`, `created`, `type`, `status`) VALUES
(1, 'en_UK', 0, 'Change Password [SITE.NAME]', 'auth-remember', 'Hello [USER.NAME],\n\nFollow this link  [URL.QL]\n\nThanks!!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(2, 'en_UK', 0, 'Welcome to [SITE.NAME]!', 'auth-register', 'Welcome [USER.NAME],\n\nWe are really happy that you have joined us! [URL.QL]\n\nRemember your user details:\nEmail: [USER.EMAIL]\nPassword: [USER.PWD]\n\nWe do not have your original password anymore.\n\nRegards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(3, 'en_UK', 0, 'Hello [USER.NAME]!', 'user-contact', 'You have been contacted regarding your advertisement: \n\n`[AD.NAME]`. \n\n User [EMAIL.SENDER] [EMAIL.FROM], have a message for you: \n\n[EMAIL.BODY]. \n\nYou can check your advertisement by following this link [URL.AD]\n\n Regards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(4, 'en_UK', 0, 'Hello [USER.NAME]!', 'user-profile-contact', 'User [EMAIL.SENDER] [EMAIL.FROM], have a message for you: \n\n[EMAIL.SUBJECT] \n\n[EMAIL.BODY]. \n\n Regards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(5, 'en_UK', 0, '[EMAIL.SENDER] wants to contact you!', 'contact-admin', 'Hello Admin,\n\n [EMAIL.SENDER]: [EMAIL.FROM], have a message for you:\n\n [EMAIL.SUBJECT]\n\n [EMAIL.BODY] \n\n Regards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(6, 'en_UK', 0, 'Your advertisement `[AD.NAME]` at [SITE.NAME], has been activated!', 'ads-activated', 'Hello [USER.OWNER],\n\n We want to inform you that your advertisement [URL.QL] has been activated!\n\n Now it can be seen by others. \n\n We hope we did not make you wait for long. \n\nRegards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(7, 'en_UK', 0, 'Success! Your advertisement `[AD.NAME]` is created on [SITE.NAME]!', 'ads-notify', 'Hello [USER.NAME],\n\nThank you for creating an advertisement at [SITE.NAME]! \n\nYou can edit your advertisement here [URL.QL].\n\n Your ad is still not published, it needs to be validated by an administrator. \n\n We are sorry for any inconvenience. We will review it as soon as possible. \n\nRegards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(8, 'en_UK', 0, 'Advertisement `[AD.NAME]` is created on [SITE.NAME]!', 'ads-user-check', 'Hello [USER.NAME],\n\n Advertisement is created under your account [USER.NAME]! You can visit this link to see advertisement [URL.AD]\n\n If you are not responsible for creating this advertisement, click a link to contact us [URL.CONTACT].\n\n', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(9, 'en_UK', 0, 'Advertisement `[AD.TITLE]` is created on [SITE.NAME]!', 'ads-subscribers', 'Hello,\n\n You may be interested in this one!\n\nYou can visit this link to see advertisement [URL.AD]\n\n', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(10, 'en_UK', 0, 'Advertisement `[AD.TITLE]` is created on [SITE.NAME]!', 'ads-to-admin', 'Click here to visit [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(11, 'en_UK', 0, 'Advertisement `[AD.TITLE]` is sold on [SITE.NAME]!', 'ads-sold', 'Order ID: [ORDER.ID]\n\nProduct ID: [PRODUCT.ID]\n\nPlease check your account for the incoming payment.\n\nClick here to visit [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(12, 'en_UK', 0, 'Advertisement `[AD.TITLE]` is out of stock on [SITE.NAME]!', 'out-of-stock', 'Hello [USER.NAME],\n\nWhile your ad is out of stock, it is unavailable for others to see. If you wish to increase stock and activate, please follow this link [URL.EDIT].\n\nRegards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(13, 'en_UK', 0, 'You bought `[AD.TITLE]`', 'ads-purchased', 'Order ID: [ORDER.ID]\n\nProduct ID: [PRODUCT.ID]\n\nClick here to visit [URL.AD]\n\n[BUYER.INSTRUCTIONS]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(14, 'en_UK', 0, 'Receipt for [ORDER.DESC] #[ORDER.ID]', 'new-order', 'Hello [USER.NAME],Thanks for buying [ORDER.DESC].\n\nPlease complete the payment here [URL.CHECKOUT]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(15, 'en_UK', 0, 'Success! Your advertisement `[AD.NAME]` is created on [SITE.NAME]!', 'ads-confirm', 'Welcome [USER.NAME],\n\nThank you for creating an advertisement at [SITE.NAME]! \n\nPlease click on this link [URL.QL] to confirm it.\n\nRegards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(16, 'en_UK', 0, 'Your ad [AD.NAME] has expired', 'ad-expired', 'Hello [USER.NAME],Your ad [AD.NAME] has expired \n\nPlease check your ad here [URL.EDITAD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(17, 'en_UK', 0, 'Your ad [AD.NAME] is going to expire', 'ad-to-expire', 'Hello [USER.NAME],Your ad [AD.NAME] will expire soon \n\nPlease check your ad here [URL.EDITAD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(18, 'en_UK', 0, 'Password Changed [SITE.NAME]', 'password-changed', 'Hello [USER.NAME],\n\nYour password has been changed.\n\nThese are now your user details:\nEmail: [USER.EMAIL]\nPassword: [USER.PWD]\n\nWe do not have your original password anymore.\n\nRegards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(19, 'en_UK', 0, 'New reply: [TITLE]', 'messaging-reply', '[URL.QL]\n\n[DESCRIPTION]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(20, 'en_UK', 0, '[FROM.NAME] sent you a direct message', 'messaging-user-contact', 'Hello [TO.NAME],\n\n[FROM.NAME] have a message for you:\n\n[DESCRIPTION]\n\n[URL.QL]\n\nRegards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(21, 'en_UK', 0, 'Hello [TO.NAME]!', 'messaging-ad-contact', 'You have been contacted regarding your advertisement:\n\n`[AD.NAME]`.\n\nUser [FROM.NAME], have a message for you:\n\n[DESCRIPTION]\n\n[URL.QL]\n\nRegards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(22, 'en_UK', 0, 'New review for [AD.TITLE] [RATE]', 'ad-review', '[URL.QL]\n\n[RATE]\n\n[DESCRIPTION]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(23, 'en_UK', 0, 'There is a new reply on the forum', 'new-forum-answer', 'There is a new reply on a forum post where you participated.<br><br><a target="_blank" href="[FORUM.LINK]">Check it here</a><br><br>[FORUM.LINK]<br>', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(24, 'en_UK', 0, 'Your plan [PLAN.NAME] has expired', 'plan-expired', 'Hello [USER.NAME],Your plan [PLAN.NAME] has expired \n\nPlease renew your plan here [URL.CHECKOUT]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(30, 'ro_RO', 0, 'Anunțul dvs. `[AD.NAME]` a fost adăugat cu succes pe [SITE.NAME]!', 'ads-confirm', 'Bun venit, [USER.NAME].\n\nÎți mulțumim pentru adăugarea anunțului dvs. pe [SITE.NAME].\n\nTe rugăm să apeși un click pe acest link [URL.QL], pentru a confirma anunțul.\n\nToate cele bune!', 'admin@reoc.lo', '2013-07-29 09:25:48', 'email', 1),
(31, 'ro_RO', 0, 'Anunțul dvs. `[AD.NAME]` a fost adăugat pe [SITE.NAME].', 'ads-user-check', 'Bună [USER.NAME],\n\nAnunțul a fost adăugat în contul dvs. [USER.NAME]. Puteți vizita acest link pentru vizualizarea anunțului [URL.AD].\n\nDacă nu sunteți răspunzător pentru adăugarea acestui anunț, vă rugăm să ne contactați, folosind link-ul următor: [URL.CONTACT].', 'admin@reoc.lo', '2013-07-29 09:27:46', 'email', 1),
(32, 'ro_RO', 0, 'Anunțul dvs. `[AD.NAME]` a fost adăugat cu succes pe [SITE.NAME]!', 'ads-notify', 'Bună [USER.NAME],\n\nVă mulțumim că folosii serviciul nostru de anunțuri, [SITE.NAME]\n\nPuteți edita anunțul dvs. aici: [URL.QL].\n\nAnunțul dvs. nu este publicat momentan, deoarece este necesară validarea lui de către un administrator. \nNe cerem scuze pentru eventualele neplăceri. Vom încerca să-l revizuim cât mai repede posibil.\n\nCu stimă.', 'admin@reoc.lo', '2013-07-29 09:30:59', 'email', 1),
(33, 'ro_RO', 0, '[EMAIL.SENDER] dorește să ia legătura cu dvs.', 'contact-admin', 'Salut Admin,\n\n[EMAIL.SENDER]: [EMAIL.FROM], are un mesaj pentru tine:\n\n[EMAIL.BODY]\n\nCu stimă.', 'admin@reoc.lo', '2013-07-29 09:32:57', 'email', 1),
(34, 'ro_RO', 0, 'Anunțul dvs. pe [SITE.NAME] a fost activat!', 'ads-activated', 'Salutări [USER.OWNER],\n\nDorim să vă informăm că anunțul dvs. [URL.QL] a fost activat.\nAcum, el poate fi vizualizat de către toată lumea.\n\nSperăm că nu v-am făcut să așteptați prea mult timp.\n\nCu stimă.', 'admin@reoc.lo', '2013-07-29 09:35:35', 'email', 1),
(36, 'ro_RO', 0, 'Bună [USER.NAME]!', 'user-contact', 'Ați fost contactat referitor la anunțul dvs. \n\nUtilizatorul [EMAIL.SENDER] [EMAIL.FROM], are un mesaj pentru dvs.:\n[EMAIL.BODY].\n\nCu stimă.', 'admin@reoc.lo', '2013-07-29 09:40:46', 'email', 1),
(37, 'ro_RO', 0, 'Modificare parolă [SITE.NAME]', 'auth-remember', 'Salutare [USER.NAME],\n\nVizitează acest link: [URL.QL] \n\nMulțumim!', 'admin@reoc.lo', '2013-07-29 09:41:59', 'email', 1),
(38, 'ro_RO', 0, 'Bun venit pe [SITE.NAME]!', 'auth-register', 'Bun venit [USER.NAME],\n\nNe bucurăm că v-ați decis să vă alăturați echipei și serviciilor noastre! [URL.QL]\n\nIată detaliile contului dvs.:\nE-mail: [USER.EMAIL]\nParolă: [USER.PWD]\n\nDe acum, vă puteți autentifica folosind aceste date. (parola generată automat nu mai este valabilă).\n\nCu stimă!', 'admin@reoc.lo', '2013-07-29 09:44:44', 'email', 1),
(39, 'pl_PL', 0, 'Sukces! Twoje ogłoszenie `[AD.NAME]` zostało utworzone na [SITE.NAME]!', 'ads-confirm', 'Witaj [USER.NAME],\n\nDziękujemy za zamieszczenie ogłoszenia na [SITE.NAME]!\n\nKliknij na ten link [URL.QL] aby je zatwierdzić.\n\nMiłego dnia!', 'admin@reoc.lo', '2013-07-29 09:49:48', 'email', 1),
(40, 'pl_PL', 0, 'Ogłoszenie utworzone na [SITE.NAME]!', 'ads-user-check', 'Witaj [USER.NAME],\n\nOgłoszenie zostało utworzone na Twoim koncie [USER.NAME]! Odwiedź ten link, aby zobaczyć ogłoszenie [URL.AD].\n\nJeśli to nie Ty utworzyłeś to ogłoszenie, kliknij na link, aby się z nami skontaktować [URL.CONTACT].', 'admin@reoc.lo', '2013-07-29 09:51:48', 'email', 1),
(41, 'pl_PL', 0, 'Sukces! Twoje ogłoszenie `[AD.NAME]` zostało utworzone na [SITE.NAME]!', 'ads-notify', 'Witaj [USER.NAME],\n\nDziękujemy za zamieszczenie ogłoszenia na [SITE.NAME]!\n\nMożesz edytować swoje ogłoszenie tutaj [URL.QL].\n\nTwoje ogłoszenie jest wciąż nieopublikowane, najpierw musi być zatwierdzone przez administratora.\nPrzepraszamy za wszelkie niedogodności. Ogłoszenie zostanie zatwierdzone najszybciej jak to tylko możliwe.\n\nPozdrowienia!', 'admin@reoc.lo', '2013-07-29 09:53:51', 'email', 1),
(42, 'pl_PL', 0, '[EMAIL.SENDER] chce się z Tobą skontaktować!', 'contact-admin', 'Drogi administratorze,\n\n[EMAIL.SENDER]: [EMAIL.FROM], ma dla Ciebie wiadomość:\n\n[EMAIL.BODY] \n\nPozdrowienia!', 'admin@reoc.lo', '2013-07-29 09:55:08', 'email', 1),
(43, 'pl_PL', 0, 'Twoje ogłoszenie na [SITE.NAME] zostało aktywowane!', 'ads-activated', 'Witaj [USER.OWNER],\n\nInformujemy, że Twoje ogłoszenie [URL.QL] zostało aktywowane! Teraz może być widziane przez innych.\n\nMamy nadzieję, że nie musiałeś czekać długo.\n\nPozdrowienia!', 'admin@reoc.lo', '2013-07-29 09:56:23', 'email', 1),
(45, 'pl_PL', 0, 'Witaj [USER.NAME]!', 'user-contact', 'Dostałeś/aś wiadomość związaną z Twoim ogłoszeniem. \n\nUżytkownik [EMAIL.SENDER] [EMAIL.FROM] ma dla Ciebie wiadomość:\n\n[EMAIL.BODY]. \n\nMiłego dnia!', 'admin@reoc.lo', '2013-07-29 10:00:12', 'email', 1),
(46, 'pl_PL', 0, 'Zmień hasło [SITE.NAME]', 'auth-remember', 'Witaj [USER.NAME],\n\nKliknij na ten link [URL.QL]\n\nDziękujemy!!', 'admin@reoc.lo', '2013-07-29 10:00:51', 'email', 1),
(47, 'pl_PL', 0, 'Witamy na [SITE.NAME]!', 'auth-register', 'Witamy na [SITE.NAME].\n\nBardzo się cieszymy, że do nas dołączyłeś.\n\nZapamiętaj swoje dane logowania:\nEmail: [USER.EMAIL]\nHasło: [USER.PWD]\n\nNie posiadamy już Twojego poprzedniego hasła.\n\nPozdrowienia!', 'admin@reoc.lo', '2013-07-29 10:03:08', 'email', 1),
(57, 'cs_CZ', 0, 'Úspěch! Váš inzerát `[AD.NAME]` byl vytvořen na [SITE.NAME]!', 'ads-confirm', 'Vítejte [USER.NAME],\n\nDěkujeme za vytvoření inzerátu na [SITE.NAME]! \n\nPro potvrzení prosím klikněte na tento link  [URL.QL]\n\nPřejeme příjemný zbytek dne!', 'admin@reoc.lo', '2013-07-30 07:22:12', 'email', 1),
(58, 'cs_CZ', 0, 'Inzerát je vytvořen na [SITE.NAME]!', 'ads-user-check', 'Dobrý den  [USER.NAME],\n\nInzerát byl vytvořen pod Vaším účtem [USER.NAME]!  Pro prohlédnutí inzerátu můžete kliknout na tento link  [URL.AD]\n\nPokud jste inzerát nevytvořili Vy, prosím kontaktujte nás na [URL.CONTACT].', 'admin@reoc.lo', '2013-07-30 07:23:07', 'email', 1),
(59, 'cs_CZ', 0, 'Úspěch! Váš inzerát `[AD.NAME]` byl vytvořen na [SITE.NAME]!', 'ads-notify', 'Dobrý den  [USER.NAME],\n\nDěkujeme za zveřejnění inzerátu na [SITE.NAME]! \n\nVáš inzerát můžete upravit zde  [URL.QL].\n\nVáš inzerát ještě není zveřejněn, potřebuje být schválen administrátorem.\nOmlouváme se za nepříjemností. Shlédneme ho, co nejdříve to bude možné.\n\nPřejeme příjemný zbytek dne!', 'admin@reoc.lo', '2013-07-30 07:24:31', 'email', 1),
(60, 'cs_CZ', 0, '[EMAIL.SENDER] Vás chce kontaktovat!', 'contact-admin', 'Dobrý den Admine,\n\n[EMAIL.SENDER]: [EMAIL.FROM], má pro Vás zprávu:\n\n[EMAIL.BODY] \n\nPřejeme příjemný zbytek dne!', 'admin@reoc.lo', '2013-07-30 07:26:28', 'email', 1),
(61, 'cs_CZ', 0, 'Váš inzerát na [SITE.NAME] byl aktivován!', 'ads-activated', 'Dobrý den [USER.OWNER],\n\nChceme Vás informovat, že Váš inzerát [URL.QL]  byl aktivován!\nNyní si ho mohou prohlížet ostatní.\n\nDoufáme, že jste nečekali dlouho.\n\nPřejeme příjemný zbytek dne!', 'admin@reoc.lo', '2013-07-30 07:27:36', 'email', 1),
(63, 'cs_CZ', 0, 'Dobrý den [USER.NAME]!', 'user-contact', 'Byli jste kontaktování ohledně Vašeho inzerátu, uživatelem [EMAIL.SENDER] \n\n[EMAIL.FROM], má pro Vás tuto zprávu:\n\n[EMAIL.BODY]. \n\nPřejeme příjemný zbytek dne!', 'admin@reoc.lo', '2013-07-30 07:30:08', 'email', 1),
(64, 'cs_CZ', 0, 'Změna hesla [SITE.NAME]', 'auth-remember', 'Dobrý den [USER.NAME],\n\nKlikněte na tento link  [URL.QL]\n\nDěkujeme!', 'admin@reoc.lo', '2013-07-30 07:31:01', 'email', 1),
(65, 'cs_CZ', 0, 'Vítejte na [SITE.NAME]!', 'auth-register', 'Vítejte [USER.NAME],\n\nJsme rádi, že jste se k nám připojili! [URL.QL]\n\nZapamatujte si Vaše přihlašovací údaje:\nEmail: [USER.EMAIL]\nHeslo: [USER.PWD]\n\nJiž nemáme Vaše původní heslo.\n\nPřejeme příjemný zbytek dne!', 'admin@reoc.lo', '2013-07-30 07:32:10', 'email', 1),
(75, 'da_DK', 0, 'Din annonce `[AD.NAME]` blev oprettet på [SITE.NAME]!', 'ads-confirm', 'Velkommen [USER.NAME],\n\nTak for din annonce på [SITE.NAME]!\n\nFølge dette link for at bekræfte annoncen.\n\nMed venlig hilsen', 'admin@reoc.lo', '2013-07-30 07:55:52', 'email', 1),
(76, 'da_DK', 0, 'Annonce oprettet på [SITE.NAME]!', 'ads-user-check', 'Hej [USER.NAME],\n\nAnnoncen er oprettet under din profil [USER.NAME]! Du kan følge dette link for at se din annonce: [URL.AD]\n\nHvis det ikke er dig der har oprettet denne annonce, så kontakt os her: [URL.CONTACT].', 'admin@reoc.lo', '2013-07-30 07:56:56', 'email', 1),
(77, 'da_DK', 0, 'Din annonce `[AD.NAME]` blev oprettet på [SITE.NAME]!', 'ads-notify', 'Hej [USER.NAME],\n\nTak for din annonce på [SITE.NAME]! \n\nDu kan redigere din annonce her [URL.QL].\n\nDin annonce er endnu ikke udgivet, da den skal valideres af en administrator. \n\nVi validerer annoncer så hurtigt vi kan, og undskylder på forhånd for ventetiden.\n\nMed venlig hilsen', 'admin@reoc.lo', '2013-07-30 07:58:35', 'email', 1),
(78, 'da_DK', 0, '[EMAIL.SENDER] vil gerne i kontakt med dig', 'contact-admin', 'Hej Admin,\n\n[EMAIL.SENDER]: [EMAIL.FROM], har skrevet en besked til dig:\n\n[EMAIL.BODY] \n\nMed venlig hilsen', 'admin@reoc.lo', '2013-07-30 07:59:54', 'email', 1),
(79, 'da_DK', 0, 'Din annonce på [SITE.NAME] er blevet aktiveret!', 'ads-activated', 'Hej [USER.OWNER],\n\nDin annonce [URL.QL] er blevet aktiveret,\nden er nu synlig for alle!\n\nHeld og lykke med annoncen.\n\nMed venlig hilsen', 'admin@reoc.lo', '2013-07-30 08:01:26', 'email', 1),
(81, 'da_DK', 0, 'Hej [USER.NAME]!', 'user-contact', 'Der er et svar til din annonce. \nBrugeren [EMAIL.SENDER] [EMAIL.FROM], har skrevet følgende besked til dig:\n\n[EMAIL.BODY]. \n\nMed venlig hilsen', 'admin@reoc.lo', '2013-07-30 08:04:57', 'email', 1),
(82, 'da_DK', 0, 'Ændring af adgangskode på [SITE.NAME]', 'auth-remember', 'Hej [USER.NAME],\n\nFølg dette link: [URL.QL]\n\nTak!', 'admin@reoc.lo', '2013-07-30 08:07:13', 'email', 1),
(83, 'da_DK', 0, 'Velkommen til [SITE.NAME]!', 'auth-register', 'Velkommen [USER.NAME],\n\nVi er glade for du vil være med! [URL.QL]\n\nHusk venligst dine log ind oplysninger:\nEmail: [USER.EMAIL]\nAdgangskode: [USER.PWD]\n\nDin oprindelige adgangskode er ikke længere gyldig.\n\nMed venlig hilsen', 'admin@reoc.lo', '2013-07-30 08:08:14', 'email', 1),
(84, 'no_NO', 0, 'Vellykket! Din annonse `[AD.NAME]` er opprettet på [SITE.NAME]!', 'ads-confirm', 'Velkommen [USER.NAME],\n\nTakk for at du la inn annonnse på [SITE.NAME]! \n\nVennligst klikk på denne lenken [URL.QL] for å godkjenne den.\n\nHilsen!', 'admin@reoc.lo', '2013-07-31 10:22:01', 'email', 1),
(85, 'no_NO', 0, 'Annonse er opprettet på [SITE.NAME]!', 'ads-user-check', 'Hallo [USER.NAME],\n\nAnnonse er opprettet for din bruker [USER.NAME]! Du kan klikke på denne lenken for å se annonsen [URL.AD]\n\nHvis du ikke har opprettet denne annonse, klikk på lenken for å kontakte oss [URL.CONTACT].', 'admin@reoc.lo', '2013-07-31 10:22:55', 'email', 1),
(86, 'no_NO', 0, 'Vellykket! Din annonse `[AD.NAME]` er opprettet på [SITE.NAME]!', 'ads-notify', 'Hallo [USER.NAME],\n\nTakk for at du la inn annonnse på [SITE.NAME]! \nDu kan editere annonsen her [URL.QL].\n\nDin annonse er fremdeles ikke publisert, den må godkjennes av en administrator. \n\nVi beklager ubeleiligheten. Vi vill se på det så snarest mulig.\n\nHilsen!', 'admin@reoc.lo', '2013-07-31 10:31:47', 'email', 1),
(87, 'no_NO', 0, '[EMAIL.SENDER] ønsker å kontakte deg!', 'contact-admin', 'Hallo Admin,\n\n[EMAIL.SENDER]: [EMAIL.FROM], har en melding til deg:\n\n[EMAIL.BODY] \n\nHilsen!', 'admin@reoc.lo', '2013-07-31 10:32:36', 'email', 1),
(88, 'no_NO', 0, 'Din annonse påt [SITE.NAME], har blitt aktivert!', 'ads-activated', 'Hallo [USER.OWNER],\n\nVi vil informere deg om at din annonse [URL.QL] har blitt aktivert!\nDen kan nå ses av andre. \n\nVi håper du ikke måtte vente for lenge. \n\nHilsen!', 'admin@reoc.lo', '2013-07-31 10:33:29', 'email', 1),
(90, 'no_NO', 0, 'Hallo [USER.NAME]!', 'user-contact', 'Du har blitt kontaktet angående din annonse. \nBruker [EMAIL.SENDER] [EMAIL.FROM], har en beskjed til deg: \n[EMAIL.BODY]. \n\nHilsen!', 'admin@reoc.lo', '2013-07-31 10:35:54', 'email', 1),
(91, 'no_NO', 0, 'Endre passord [SITE.NAME]', 'auth-remember', 'Hallo [USER.NAME],\n\nKlikk på denne lenken  [URL.QL]\n\nTakk!!', 'admin@reoc.lo', '2013-07-31 10:37:12', 'email', 1),
(92, 'no_NO', 0, 'Velkommen to [SITE.NAME]!', 'auth-register', 'Velkommen [USER.NAME],\n\nVi setter pris på at du har registrert deg! [URL.QL]\n\nHusk din brukerinformasjon:\nE-post: [USER.EMAIL]\nPassword: [USER.PWD]\n\nVi har ikke ditt opprinnelige passord lenger.\n\nHilsen!', 'admin@reoc.lo', '2013-07-31 10:38:06', 'email', 1),
(93, 'ca_ES', 0, 'Èxit! El vostre anunci `[AD.NAME]` és creat damunt [SITE.NAME]!', 'ads-confirm', 'Benvingut [USER.NAME],\n\nGràcies Per crear un anunci a [SITE.NAME]! \n\nSi us plau clic en aquest enllaç [URL.QL] per confirmar-lo.\n\nConsideracions,', 'admin@reoc.lo', '2013-07-31 10:46:03', 'email', 1),
(94, 'ca_ES', 0, 'El vostre anunci és creat damunt [SITE.NAME]!', 'ads-user-check', 'Hola [USER.NAME],\n\nL\'anunci és creat sota el vostre compte [USER.NAME]! Pots visitar aquest enllaç per veure anunci [URL.AD].\n\nSi no ets responsable per crear aquest anunci, clic un enllaç per contactar-nos [URL.CONTACT].', 'admin@reoc.lo', '2013-07-31 10:55:59', 'email', 1),
(95, 'ca_ES', 0, 'Èxit! El vostre anunci `[AD.NAME]` és creat damunt [SITE.NAME]!', 'ads-notify', 'Hola [USER.NAME],\n\nGràcies Per crear un anunci a [SITE.NAME]! \nEt Pot editar el vostre anunci aquí [URL.QL].\n\nEl vostre anunci és encara no publicat, necessita ser validat per un administrador. \nEns sap greu per qualsevol inconveniència. El revisarem al més aviat possible. \n\nConsideracions!', 'admin@reoc.lo', '2013-08-02 08:29:57', 'email', 1),
(96, 'ca_ES', 0, '[EMAIL.SENDER] vol contactarte!', 'contact-admin', 'Hola Admin,\n\n[EMAIL.SENDER]: [EMAIL.FROM], té un missatge per tu:\n\n[EMAIL.BODY]\n\nConsideracions!', 'admin@reoc.lo', '2013-08-02 10:17:04', 'email', 1),
(97, 'ca_ES', 0, 'El vostre anunci a [SITE.NAME] ha estat activat!', 'ads-activated', 'Hola [USER.OWNER],\n\nEt volem informar que el vostre anunci [URL.QL] ha estat activat! Ara pugui ser vist per altres. \nEsperem no vam fer esperes per llarg. \n\nConsideracions!', 'admin@reoc.lo', '2013-08-02 10:18:05', 'email', 1),
(99, 'ca_ES', 0, 'Hola [USER.NAME]!', 'user-contact', 'T\'Ha estat contactat pel que fa al vostre anunci. Usuari [EMAIL.SENDER] [EMAIL.FROM], té un missatge per tu: \n[EMAIL.BODY]\n\nConsideracions!', 'admin@reoc.lo', '2013-08-02 08:47:07', 'email', 1),
(100, 'ca_ES', 0, 'Canvi contrasenya [SITE.NAME]', 'auth-remember', 'Hola [USER.NAME],\n\nSeguir aquest enllaç [URL.QL]\n\nGràcies!!', 'admin@reoc.lo', '2013-08-02 08:48:18', 'email', 1),
(101, 'ca_ES', 0, 'Benvingut a [SITE.NAME]!', 'auth-register', 'Benvinguda [USER.NAME],\n\nSom realment feliços que te\'ns ha unit! [URL.QL]\n\nRecordar els vostres detalls d\'usuari:\nCorreu electrònic: [USER.EMAIL]\nContrasenya: [USER.PWD]\nNo tenim la vostra contrasenya original més.\n\nConsideracions!', 'admin@reoc.lo', '2013-08-02 08:49:40', 'email', 1),
(102, 'in_ID', 0, 'Berhasil! Iklan anda `[AD.NAME]` telah dibuat [SITE.NAME]!', 'ads-confirm', 'Selamat datang [USER.NAME],\n\nTerima kasih telah membuat iklan di [SITE.NAME]! \n\nSilahkan Klik link ini [URL.QL] untuk konfirmasi.\n\nRegard!', 'admin@reoc.lo', '2013-08-02 09:04:14', 'email', 1),
(103, 'in_ID', 0, 'Iklan telah dibuat [SITE.NAME]!', 'ads-user-check', 'Halo [USER.NAME],\n\nIklananda telah dibuat dibawah email [USER.NAME]! Anda dapat mengunjungi tutan ini untuk melihat iklan [URL.AD]\n\nJika anda tidak bertanggung jawab membuat iklan ini, klik tautan untuk hubungi kami [URL.CONTACT].', 'admin@reoc.lo', '2013-08-02 09:05:30', 'email', 1),
(104, 'in_ID', 0, 'Berhasil! Iklan anda `[AD.NAME]` telah dibuat [SITE.NAME]!', 'ads-notify', 'Halo [USER.NAME],\n\nTerima kasih telah membuat iklan di [SITE.NAME]! \n\nAnda dapar mengedit iklan anda disini [URL.QL].\n\nIklan ada masih belum dipublikasi, harus disahkan oleh administrator.\nKami meminta maaf atas gangguan ini. Kami akan mengadakan peninjauan segera.\n\nRegard!', 'admin@reoc.lo', '2013-08-02 09:07:03', 'email', 1),
(105, 'in_ID', 0, '[EMAIL.SENDER] ingin menghubungi Anda!', 'contact-admin', 'Halo Admin,\n\n[EMAIL.SENDER]: [EMAIL.FROM], Mempunyai pesan untuk anda:\n[EMAIL.BODY] \n\nRegard!', 'admin@reoc.lo', '2013-08-02 09:07:54', 'email', 1),
(106, 'in_ID', 0, 'Iklan ada pada situs [SITE.NAME] telah diaktifan!', 'ads-activated', 'Halo [USER.OWNER],\n\nKami akan menginformasikan bahwa iklan anda [URL.QL] telah diaktifkan!\nSekarang dapat terlihat oleh yang lain.\n\nKami harap tidak membuat anda menunggu lama.\n\nRegard!', 'admin@reoc.lo', '2013-08-02 09:09:34', 'email', 1),
(108, 'in_ID', 0, 'Halo [USER.NAME]!', 'user-contact', 'Anda telah dihubungi mengenai iklan Anda. Pengguna [EMAIL.SENDER] [EMAIL.FROM], mempunyai pesan untuk anda: \n[EMAIL.BODY]. \n\nRegard!', 'admin@reoc.lo', '2013-08-02 09:12:05', 'email', 1),
(109, 'in_ID', 0, 'Ubah kata sandi [SITE.NAME]', 'auth-remember', 'Halo [USER.NAME],\n\nIkutitautan ini [URL.QL]\n\nTerima kasih!!', 'admin@reoc.lo', '2013-08-02 09:13:28', 'email', 1),
(110, 'in_ID', 0, 'Selamat datang di [SITE.NAME]!', 'auth-register', 'Selamat datang [USER.NAME],\n\nKami sangat senang karena anda telah bergabung dengan kami! [URL.QL]\n\nMengingat rincian pengguna Anda:\nEmail: [USER.EMAIL]\nKata sandi: [USER.PWD]\n\nKami tidak mempunyai kata sandi anda yang asli lagi.\n\nRegard!', 'admin@reoc.lo', '2013-08-02 09:14:44', 'email', 1),
(111, 'sk_SK', 0, 'Blahoželáme! Váš inzerát `[AD.NAME]` je vytvorený na [SITE.NAME]!', 'ads-confirm', 'Vitajte [USER.NAME],\n\nĎakujeme za pridanie inzerátu na [SITE.NAME]!\n\nProsím kliknite na nasledujúci odkaz [URL.QL] pre potvrdenie.\n\nS pozdravom!', 'admin@reoc.lo', '2013-08-02 09:19:56', 'email', 1),
(112, 'sk_SK', 0, 'Inzerát je vytvorený na [SITE.NAME]!', 'ads-user-check', 'Dobrý deň [USER.NAME],\n\n Inzerát bol vytvorený pod Vaším účtom [USER.NAME]! Pre zobrazenie inzerátu môžete navštíviť túto stránku [URL.AD]\n\nAk ste nevytvorili tento inzerát, kliknite na nasledujúci link aby ste nás kontaktovali  [URL.CONTACT].', 'admin@reoc.lo', '2013-08-02 09:21:41', 'email', 1),
(113, 'sk_SK', 0, 'Blahoželáme! Váš inzerát `[AD.NAME]` je vytvorený na [SITE.NAME]!', 'ads-notify', 'Dobrý deň  [USER.NAME],\n\nĎakujeme za zadanie inzerátu na stránke [SITE.NAME]! \nVáš inzerát môžete upraviť tu [URL.QL].\n\nVáš inzerát ešte nie je zverenený, musí ho schváliť administrátor.\nOspravedlňujeme sa za nepríjemnosť. Budeme sa tomu venovať hneď ako to bude možné.\n\nS pozdravom!', 'admin@reoc.lo', '2013-08-02 09:23:18', 'email', 1),
(114, 'sk_SK', 0, '[EMAIL.SENDER] má pre Vás správu', 'contact-admin', 'Dobrý deň Admin,\n\n[EMAIL.SENDER]: [EMAIL.FROM], má pre Vás správu:\n\nS pozdravom!', 'admin@reoc.lo', '2013-08-02 09:27:37', 'email', 1),
(115, 'sk_SK', 0, 'Váš inzerát na [SITE.NAME] bol aktivovaný!', 'ads-activated', 'Dobrý deň [USER.OWNER],\n\nOznamujeme Vám, že Váš inzerát [URL.QL] aktivovaný!\nTeraz to môžu vidieť aj ostatní.\n\nDúfame, že sme Vás nenechali čakať dlho.\n\nS pozdravom !', 'admin@reoc.lo', '2013-08-02 09:28:44', 'email', 1),
(117, 'sk_SK', 0, 'Dobrý deň [USER.NAME]!', 'user-contact', 'Boli ste kontaktovaní vzhľadom na Váš inzerát. \n\nUžívateľ [EMAIL.SENDER] [EMAIL.FROM], má pre Vás správu: \n\n[EMAIL.BODY]. \n\nS pozdravom!', 'admin@reoc.lo', '2013-08-02 09:32:17', 'email', 1),
(118, 'sk_SK', 0, 'Zmena hesla [SITE.NAME]', 'auth-remember', 'Dobrý deň  [USER.NAME],\n\nNásledujte tento odkaz [URL.QL]\n\nĎakujeme!', 'admin@reoc.lo', '2013-08-02 09:34:08', 'email', 1),
(119, 'sk_SK', 0, 'Vitajte na [SITE.NAME]!', 'auth-register', 'Vitajte [USER.NAME],\n\nNaozaj nás teší, že ste sa k nám pripojili! [URL.QL]\nUchovajte si Vaše údaje:\nEmail: [USER.EMAIL]\nHeslo: [USER.PWD]\nUž nemáme vaše pôvodné heslo.\n\nĎakujeme!', 'admin@reoc.lo', '2013-08-02 09:35:50', 'email', 1),
(120, 'ml_IN', 0, '[SITE.NAME] - ല്‍ താങ്കളുടെ `[AD.NAME]` പരസ്യം സ്വീകരിക്കപ്പെട്ടിരിക്കുന്നു.  അഭിനന്ദനങ്ങള്‍!', 'ads-confirm', 'സ്വാഗതം [USER.NAME],\n\n[SITE.NAME] - ല്‍ ഒരു പരസ്യം പ്രസിദ്ധീകരിക്കുവാന്‍ മുമ്പോട്ടുവന്നതില്‍ താങ്കളോട്‌ നന്ദി അറിയിക്കുന്നു.\n\nദയവായി അത്‌ ഉറപ്പാക്കുവാന്‍ ഈ ലിങ്കില്‍ ക്ലിക്ക് ചെയ്യുക [URL.QL] \n\nഅന്യേഷണങ്ങള്‍ അറിയിക്കുന്നു !', 'admin@reoc.lo', '2013-08-02 10:21:25', 'email', 1),
(121, 'ml_IN', 0, '[SITE.NAME] - ല്‍  പരസ്യം സ്വീകരിക്കപ്പെട്ടിരിക്കുന്നു!', 'ads-user-check', 'ഹെല്ലോ [USER.NAME],\n\nപ്രിയ [USER.NAME], താങ്കളുടെ അക്കൗണ്ടില്‍ ഈ പരസ്യം ഞങ്ങള്‍ സ്വീകരിച്ചിരിക്കുന്നു. താങ്കളുടെ പരസ്യം കാണുവാന്‍ ഈ ലിങ്കില്‍ ക്ലിക്ക് ചെയ്യുക [URL.AD]\n\nഈ പരസ്യം താങ്കള്‍ തന്നിരിക്കുന്നതല്ല എങ്കില്‍, ദയവായി ഈ ലിങ്കില്‍ ക്ലിക്ക് ചെയ്ത്‌ ഞങ്ങളെ വിവരമറിയിക്കുക [URL.CONTACT].', 'admin@reoc.lo', '2013-08-02 10:23:21', 'email', 1),
(122, 'ml_IN', 0, '[SITE.NAME] - ല്‍ താങ്കളുടെ `[AD.NAME]` പരസ്യം സ്വീകരിക്കപ്പെട്ടിരിക്കുന്നു.  അഭിനന്ദനങ്ങള്‍!', 'ads-notify', 'ഹെല്ലോ [USER.NAME],\n\n[SITE.NAME] - ല്‍ ഒരു പരസ്യം പ്രസിദ്ധീകരിക്കുവാന്‍ മുമ്പോട്ടുവന്നതില്‍ താങ്കളോട്‌ നന്ദി അറിയിക്കുന്നു.\n\nതാങ്കളുടെ പരസ്യത്തില്‍ ഏതെങ്കിലും മാറ്റം വരുത്തുവാന്‍ ഉണ്ടെങ്കില്‍ ഈ ലിങ്ക് ഉപയോഗിക്കുക [URL.QL].\n\nതാങ്കളുടെ പരസ്യം ഇപ്പോഴും പ്രസിദ്ധീകരിക്കപ്പെട്ടില്ല. അത് അഡ്മിനിസ്ട്രേട്ടരുടെ വിലയിരുത്തലിനുകൂടി വിധേയമാവേണ്ടതുണ്ട്.\nതാങ്കള്‍ക്കുണ്ടായ അസൌകര്യങ്ങള്‍ക്ക് ക്ഷമാപണം നടത്തുന്നു.ഏറ്റവും വേഗത്തില്‍ പരിശോധനാ നടപടികള്‍ പൂര്‍ത്തീകരിക്കുന്നതാണ്.\n\nഅന്യേഷണങ്ങള്‍ അറിയിക്കുന്നു !', 'admin@reoc.lo', '2013-08-02 10:25:33', 'email', 1),
(123, 'ml_IN', 0, '[SITE.NAME] - ല്‍ തന്നിരുന്ന താങ്കളുടെ പരസ്യം ആക്ടിവേറ്റ് ചെയ്യപ്പെട്ടിരിക്കുന്നു. അഭിനന്ദനങ്ങള്‍', 'ads-activated', 'ഹെല്ലോ [USER.OWNER],\n\nതാങ്കളുടെ പരസ്യം [URL.QL] ആക്ടിവേറ്റ് ആയിരിക്കുന്നതായി അറിയിക്കുന്നതില്‍ അതിയായ സന്തോഷമുണ്ട്.\nഇപ്പോള്‍ താങ്കളുടെ പരസ്യം മറ്റുള്ളവര്‍ക്കും കാണുവാന്‍ കഴിയും.\nതാങ്കളെ ഏറെ കാത്തിരുത്തിയില്ലായെന്നു കരുതട്ടെ.\nഅന്യേഷണങ്ങള്‍ അറിയിക്കുന്നു !', 'admin@reoc.lo', '2013-08-02 10:27:09', 'email', 1),
(125, 'ml_IN', 0, 'ഹെല്ലോ [USER.NAME]!', 'user-contact', 'താങ്കളുടെ പരസ്യത്തിന് ഇതാ ഒരു അന്വേഷണം എത്തിയിരിക്കുന്നു.  [EMAIL.SENDER] [EMAIL.FROM] - ല്‍ നിന്നുമുള്ള പ്രതികരണമാണിത്.\n\n[EMAIL.BODY]\n\nഅന്യേഷണങ്ങള്‍ അറിയിക്കുന്നു !', 'admin@reoc.lo', '2013-08-02 10:29:59', 'email', 1),
(126, 'ml_IN', 0, 'പാസ്‌വേഡ് മാറ്റം : [SITE.NAME]!', 'auth-remember', 'ഹെല്ലോ [USER.NAME],\n\nഈ ലിങ്ക് പിന്‍തുടരുക [URL.QL]\n\nനന്ദി!', 'admin@reoc.lo', '2013-08-02 10:31:21', 'email', 1),
(127, 'ml_IN', 0, '[SITE.NAME] - ലേയ്ക്ക് സ്വാഗതം!', 'auth-register', 'സ്വാഗതം [USER.NAME],\n\nപ്രിയ [URL.QL], താങ്കള്‍ ഞങ്ങളോടൊപ്പം ഒത്തുചേര്‍ന്നത്തില്‍ അതിയായ സന്തോഷം അറിയിക്കുന്നു.\n\nതാങ്കളുടെ യൂസര്‍ അക്കൌണ്ട് വിവരങ്ങള്‍ ഓര്‍ത്തിരിക്കുക:\nഇമെയില്‍ : [USER.EMAIL]\nപാസ്‌വേഡ് : [USER.PWD]\n\nതുടര്‍ന്ന്‍ താങ്കളുടെ പാസ്‌വേഡ് ഞങ്ങളോടൊപ്പമല്ല, താങ്കളുടെ നിയന്ത്രണത്തിലാന്നെന്ന്‍ അറിയുക.\n\nഅന്യേഷണങ്ങള്‍ അറിയിക്കുന്നു !', 'admin@reoc.lo', '2013-08-02 10:32:29', 'email', 1),
(128, 'ar', 0, 'تم بنجاح `[AD.NAME]` اضافة اعلانك على موقع [SITE.NAME]!', 'ads-confirm', '[right][USER.NAME] مرحبا[/right]\n[right]شكرا  لك على وضع اعلانك على  موقع [SITE.NAME][/right]\n[right]الرجاء الضغط على الرابط  [URL.QL] للتاكيد[/right]\n[right]مع ارق التحيات[/right]', 'admin@reoc.lo', '2013-08-05 09:07:44', 'email', 1),
(129, 'ar', 0, 'تم ‘نشاء الاعلان  على  [SITE.NAME]!', 'ads-user-check', '[right][USER.NAME] مرحبا [/right]\n[right]تم انشاء اعلان  بواسطة حسابك [USER.NAME]!  اضغط على الرابط للتاكد من الاعلان [URL.AD][/right]\n[right]اذا لم تقم بانشاء هذا الاعلان , الرجاء الضغط على الرابط للتواصل معنا [URL.CONTACT][/right]', 'admin@reoc.lo', '2013-08-05 09:13:12', 'email', 1),
(130, 'ar', 0, 'تم بنجاح `[AD.NAME]` اضافة اعلانك على موقع [SITE.NAME]!', 'ads-notify', '[right]مرحبا[USER.NAME][/right]\n[right]شكرا لك لانشائك اعلان على موقع [SITE.NAME][/right]\n[right]بمكانك التعديل على الاعلان  هنا [URL.QL][/right]\n[right]لم يتم نشر اعلانك حتى تتم الموافقة من الادارة.[/right]\n[right]ونحن نعتذر عن أي إزعاج. وسوف يتم مراجعة في أقرب وقت ممكن.[/right]\n[right]تحياتنا  لك [/right]', 'admin@reoc.lo', '2013-08-05 09:16:20', 'email', 1),
(131, 'ar', 0, '!يريد الاتصال بك [EMAIL.SENDER]', 'contact-admin', '[right]اهلا مدير [/right]\n[right][EMAIL.SENDER] لديك رساله جديدة من [EMAIL.FROM][/right]\n[right][EMAIL.BODY][/right]\n[right]تحياتنا لك [/right]', 'admin@reoc.lo', '2013-08-05 09:20:56', 'email', 1),
(132, 'ar', 0, 'تم تفعيل علانك على موقع [SITE.NAME]!', 'ads-activated', '[right]مرحبا [USER.OWNER][/right]\n[right]نود اعلامك بان اعلانك [URL.QL] قد تم تفعيلة ![/right]\n[right]الان يمكن للاخرين مشاهدته[/right]\n[right]نتمنى ألا نكون قد اطلنا انتظارك [/right]\n[right]تحياتنا لك [/right]', 'admin@reoc.lo', '2013-08-05 09:22:53', 'email', 1),
(134, 'ar', 0, 'مرحبا [USER.NAME],', 'user-contact', '[right]تم الاتصال بك  بسبب اعلانك  المستخدم [EMAIL.FROM][EMAIL.SENDER] قام ارسالك  رساله  [/right]\n[right][EMAIL.BODY][/right]\n[right]تحياتنا لك [/right]', 'admin@reoc.lo', '2013-08-05 09:26:01', 'email', 1),
(135, 'ar', 0, 'تغيير كلمة المرور [SITE.NAME]', 'auth-remember', '[right]مرحبا [USER.NAME][/right]\n[right]الرجاء  الضغط على الرابط التالي [URL.QL][/right]\n[right]وشكرا لك [/right]', 'admin@reoc.lo', '2013-08-05 09:27:06', 'email', 1),
(136, 'ar', 0, 'مرحبا [SITE.NAME]', 'auth-register', '[right]مرحبا [USER.NAME][/right]\n[right]نحن في غاية السعادة بنظمامك الينا! [URL.QL][/right]\n[right]تفااصيل حسابك [/right]\n[right]البريد الالكتروني: [USER.EMAIL][/right]\n[right]كلمة السر: [USER.PWD][/right]\n[right]لم نعد نملك كلمة السر الاصلية  بعد الان.[/right]\n[right]تحياتنا لك[/right]', 'admin@reoc.lo', '2013-08-05 09:28:13', 'email', 1),
(137, 'es_ES', 0, 'Cambiar Contraseña [SITE.NAME]', 'auth-remember', 'Hola [USER.NAME],\r\n\r\nSigue este enlace  [URL.QL]\r\n\r\n¡Gracias!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(138, 'es_ES', 0, '¡Bienvenido a [SITE.NAME]!', 'auth-register', 'Bienvenido [USER.NAME],\r\n\r\n¡Estamos muy contentos de que te no hayas unido! [URL.QL]\r\n\r\nRecuerda tus detalles de usuario:\r\nEmail: [USER.EMAIL]\r\nContraseña: [USER.PWD]\r\n\r\nYa no tenemos más tu contraseña original.\r\n\r\n¡Saludos!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(139, 'es_ES', 0, '¡Hola [USER.NAME]!', 'user-contact', 'Has sido contactado en relación con tu anuncio: \r\n\r\n`[AD.NAME]`. \r\n\r\n Usuario [EMAIL.SENDER] [EMAIL.FROM], tiene un mensaje para ti: \r\n\r\n[EMAIL.BODY]. \r\n\r\n ¡Saludos!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(140, 'es_ES', 0, '¡Hola [USER.NAME]!', 'user-profile-contact', 'Usuario [EMAIL.SENDER] [EMAIL.FROM], tiene un mensaje para ti: \r\n\r\n[EMAIL.SUBJECT] \r\n\r\n[EMAIL.BODY]. \r\n\r\n ¡Saludos!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(141, 'es_ES', 0, '¡[EMAIL.SENDER] quiere contactarte!', 'contact-admin', 'Hello Admin,\r\n\r\n [EMAIL.SENDER]: [EMAIL.FROM], tiene un mensaje para ti:\r\n\r\n [EMAIL.BODY] \r\n\r\n ¡Saludos!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(142, 'es_ES', 0, '¡Tu anuncio `[AD.NAME]` en [SITE.NAME] ha sido activado!', 'ads-activated', 'Hola [USER.OWNER],\r\n\r\n ¡Queremos informate que tu anuncio [URL.QL] ha sido activado!\r\n\r\n Ahora puede ser visto por otros usuarios. \r\n\r\n Esperamos no habarte hecho esperar demasiado. \r\n\r\n¡Saludos!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(143, 'es_ES', 0, '¡Enhorabuena! Tu anuncio `[AD.NAME]` ha sido creado en [SITE.NAME]!', 'ads-notify', 'Hola [USER.NAME],\r\n\r\n¡Gracias por crear un anuncio en [SITE.NAME]! \r\n\r\nPuedes editar tu anuncio aquí [URL.QL].\r\n\r\n Tu anuncio aún no está publicado, necesita que sea validado por un administrador. \r\n\r\n Lamentamos el inconveniente. Lo revisaremos lo más pronto posible.\r\n\r\n¡Saludos!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(144, 'es_ES', 0, '¡Anuncio `[AD.NAME]` ha sido creado en [SITE.NAME]!', 'ads-user-check', 'Hola [USER.NAME],\r\n\r\n ¡[USER.NAME], un anuncio ha sido creado en tu cuenta! Puedes visitar este enlace para verlo [URL.AD]\r\n\r\n Si no eres el responsable de la creación de este anuncio, has clic en este enlace para contactarnos [URL.CONTACT].\r\n\r\n', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(145, 'es_ES', 0, '¡Anuncio `[AD.TITLE]` ha sido creado en [SITE.NAME]!', 'ads-subscribers', '¡Hola,\r\n\r\n ¡Quizás te interese esto!\r\n\r\nPuede visitar este enlace para ver el anuncio [URL.AD]\r\n\r\n', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(146, 'es_ES', 0, '¡Anuncio `[AD.TITLE]` ha sido creado en [SITE.NAME]!', 'ads-to-admin', 'Clic aquí para visitarlo [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(147, 'es_ES', 0, '¡Anuncio `[AD.TITLE]` ha sido vendido en [SITE.NAME]!', 'ads-sold', 'ID de la orden: [ORDER.ID]\r\n\r\nID del producto: [PRODUCT.ID]\r\n\r\nPor favor, verifica tu cuenta para el pago recibido.\r\n\r\nClic aquí para visitar [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(148, 'es_ES', 0, '¡El anuncio `[AD.TITLE]` ya no cuenta con stock en [SITE.NAME]!', 'out-of-stock', 'Hola [USER.NAME],\r\n\r\nMientras tu anuncio está fuera de stock, no estará disponible para que otros usuarios lo vean. Si deseas incrementar tu stock y activar tu anuncio, por favor sigue este enlace [URL.EDIT].\r\n\r\n¡Saludos!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(149, 'es_ES', 0, 'Ha comprado `[AD.TITLE]`', 'ads-purchased', 'ID de la orden: [ORDER.ID]\r\n\r\nID del producto: [PRODUCT.ID]\r\n\r\nClic aquí para visitar [URL.AD\n\n[BUYER.INSTRUCTIONS]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(150, 'es_ES', 0, 'Recibo de [ORDER.DESC] #[ORDER.ID]', 'new-order', 'Hola [USER.NAME], gracias por comprar [ORDER.DESC].\r\n\r\nPor favor, completa tu pago aquí [URL.CHECKOUT]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(151, 'es_ES', 0, '¡Enhorabuena! Tu anuncio `[AD.NAME]` fue creado en [SITE.NAME]!', 'ads-confirm', 'Bienvenido [USER.NAME],\r\n\r\nGracias por crear un anuncio en [SITE.NAME]! \r\n\r\nPor favor, has clic en este enlace [URL.QL] para confirmarlo.\r\n\r\n¡Saludos!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(152, 'es_ES', 0, 'Tu anuncio [AD.NAME] ha expirado', 'ad-expired', 'Hola [USER.NAME], Tu anuncio [AD.NAME] ha expirado \r\n\r\nPor favor, revisa tu anuncio aquí [URL.EDITAD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(153, 'es_ES', 0, 'Opinión nueva para [AD.TITLE] [RATE]', 'ad-review', '[URL.QL]\r\n\r\n[RATE]\r\n\r\n[DESCRIPTION]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(154, 'es_ES', 0, 'Tu anuncio [AD.NAME] está por expirar', 'ad-to-expire', 'Hola [USER.NAME], Tu anuncio [AD.NAME] pronto expirará \n\nPor favor, revisa tu anuncio aquí [URL.EDITAD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(155, 'es_ES', 0, 'Contraseña modificada [SITE.NAME]', 'password-changed', 'Hola [USER.NAME],\n\nTu contraseña ha sido modificada.\n\nEstos son ahora tus detalles:\nEmail: [USER.EMAIL]\nContraseña: [USER.PWD]\n\n\n\nSaludos', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(156, 'es_ES', 0, 'Respuesta nueva: [TITLE]', 'messaging-reply', '[URL.QL]\n\n[DESCRIPTION]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(157, 'es_ES', 0, '[FROM.NAME] Te ha enviado un mensaje directo', 'messaging-user-contact', 'Hola [TO.NAME],\n\n[FROM.NAME] tiene un mensaje para ti:\n\n[DESCRIPTION]\n\n[URL.QL]\n\nSaludos', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(158, 'es_ES', 0, 'Hola [TO.NAME]!', 'messaging-ad-contact', 'Has sido contactado respecto al anuncio:\n\n`[AD.NAME]`.\n\nEl usuario [FROM.NAME], tiene un mensaje para ti:\n\n[DESCRIPTION]\n\n[URL.QL]\n\nSaludos', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(159, 'es_ES', 0, 'Hay una nueva respuesta en el foro', 'new-forum-answer', 'Hay una nueva respuesta en el foro donde has participado.\r\n<br><br>\r\n<a target="_blank" href="[FORUM.LINK]">Puedes revisarla aquí</a>\r\n<br><br>\r\n[FORUM.LINK]\r\n<br>', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(160, 'es_ES', 0, 'Su plan [PLAN.NAME] ha expirado', 'plan-expired', 'Hola [USER.NAME],Su plan [PLAN.NAME] ha expirado \n\nPor favor renueve su plan aquí [URL.CHECKOUT]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(161, 'fr_FR', 0, 'Félicitations! Votre annonce a bien été créée sur [SITE.NAME]!', 'ads-confirm', 'Bienvenue [USER.NAME],<br /><br />\n<br /><br />\nMerci d\'avoir créé une anonnce sur [SITE.NAME]! <br /><br />\n<br /><br />\nVeuillez cliquer sur ce lien [URL.QL] pour la confirmer.<br /><br />\n<br /><br />\nCordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(162, 'fr_FR', 0, 'Félicitations! Votre annonce a été créée sur [SITE.NAME]!', 'ads-notify', 'Bonjour [USER.NAME],<br /><br />\n<br /><br />\nMerci d\'avoir créé une anonnce sur [SITE.NAME]! <br /><br />\n<br /><br />\nVous pouvez modifier votre annonce ici [URL.QL].<br /><br />\n<br /><br />\nVotre annonce est en attente de publication, elle doit encore être validée par l\'administrateur. Nous allons l\'examiner dès que possible. <br /><br />\n<br /><br />\nNous sommes désolés pour le délai et la gène occasionnée. Merci de votre compréhension.<br /><br />\n<br /><br />\nCordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(163, 'fr_FR', 0, '[EMAIL.SENDER] souhaite vous contacter!', 'contact-admin', 'Bonjour Administrateur,<br /><br />\n<br /><br />\n[EMAIL.SENDER]: [EMAIL.FROM], a un message pour vous:<br /><br />\n<br /><br />\n[EMAIL.BODY] <br /><br />\n<br /><br />\nCordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(164, 'fr_FR', 0, 'Votre annonce sur [SITE.NAME] a été activée!', 'ads-activated', 'Bonjour [USER.OWNER],<br /><br />\n<br /><br />\nNous vous informons que votre annonce [URL.QL] a été activée!<br /><br />\nElle est désormais visible de tous sur le site. <br /><br />\n<br /><br />\nEn espérant ne pas vous avoir fait trop attendre. <br /><br />\n<br /><br />\nCordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(165, 'fr_FR', 0, 'Bonjour [USER.NAME]!', 'user-new', 'Bienvenue sur [SITE.NAME]. <br /><br />\n<br /><br />\nNous sommes ravis de votre participation,<br /><br />\nVous pouvez vous connecter avec votre email: [USER.EMAIL], <br /><br />\net votre mot de passe: [USER.PWD]. <br /><br />\n<br /><br />\nLe mot de passe a été généré automatiquement; pour le remplacer par votre mot de passe préféré, cliquez sur ce lien: [URL.PWCH]. <br /><br />\n<br /><br />\nMerci de votre confiance! <br /><br />\n<br /><br />\nCordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(166, 'fr_FR', 0, 'Bonjour [USER.NAME]!', 'user-contact', 'Vous avez été contacté au sujet de votre annonce. <br /><br />\nL\'utilisateur [EMAIL.SENDER] [EMAIL.FROM] vous a envoyé le message suivant:<br /><br />\n[EMAIL.BODY]. <br /><br />\n<br /><br />\nCordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(167, 'fr_FR', 0, 'Changement de mot de passe [SITE.NAME]', 'auth-remember', 'Bonjour [USER.NAME],<br /><br />\n<br /><br />\nVeuillez suivre ce lien [URL.QL]<br /><br />\n<br /><br />\nMerci!!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(168, 'fr_FR', 0, 'Bienvenue sur [SITE.NAME]!', 'auth-register', 'Bienvenue [USER.NAME],<br /><br />\n<br /><br />\nNous sommes ravis de votre participation! [URL.QL]<br /><br />\nVoici pour rappel vos informations de connexion:<br /><br />\nEmail: [USER.EMAIL]<br /><br />\nMot de passe: [USER.PWD]<br /><br />\n<br /><br />\nPour des raisons de sécurité, nous ne gardons pas votre mot de passe original.<br /><br />\n<br /><br />\nCordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(169, 'fr_FR', 0, 'Bonjour [USER.NAME]!', 'user-profile-contact', 'L\'utilisateur [Email.SENDER] [EMAIL.From] a un message pour vous: [EMAIL.SUBJECT] [EMAIL.BODY]. Cordialement,', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(170, 'fr_FR', 0, 'L\'annonce `[AD.NAME]` a été créée sur [SITE.NAME]!', 'ads-user-check', 'Bonjour [USER.NAME], l\'annonce a été créée avec votre compte [USER.NAME]! Vous pouvez visiter ce lien pour Cliquez ici pour accéder à votre annonce: [URL.AD] Si vous n\'êtes pas l\'auteur de cette annonce, cliquez sur le lien pour nous contacter: [URL.CONTACT].', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(171, 'fr_FR', 0, 'L\'annonce `[AD.TITLE]` vient d\'être publiée sur [SITE.NAME]!', 'ads-subscribers', 'Bonjour, Vous êtes peut être intéressé(e) par cette nouvelle annonce! Cliquez sur ce lien pour Cliquez ici pour accéder à votre annonce: [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(172, 'fr_FR', 0, 'L\'annonce `[AD.TITLE]` vient d\'être créée sur [SITE.NAME]!', 'ads-to-admin', 'Cliquez ici pour voir l\'annnonce [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(173, 'fr_FR', 0, 'L\'annonce `[AD.TITLE]` a été vendue sur [SITE.NAME]!', 'ads-sold', 'Numéro de commande: [ORDER.ID] ID de produit: [PRODUCT.ID] Veuillez svp vérifier votre compte pour le paiement entrant. Cliquez ici pour accéder à votre annonce: [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(174, 'fr_FR', 0, 'L\'annonce `[AD.TITLE]` est en rupture de stock sur [SITE.NAME]!', 'out-of-stock', 'Bonjour [USER.NAME]. Comme votre annonce est en rupture de stock, il n\'est pas posible pour les visiteurs du site de la voir. Si vous souhaitez augmenter sa disponibilité et ainsi activer votre annonce, veuillez svp cliquer sur le lien suivant: [URL.EDIT]. Cordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(175, 'fr_FR', 0, 'Reçu pour votre commande [ORDER.DESC] # [ORDER.ID]', 'new-order', 'Bonjour [USER.NAME], Merci pour votre commande [ORDER.DESC]. Veuillez svp régler votre commande et procéder à son paiement ici: [URL.CHECKOUT]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(176, 'fr_FR', 0, 'Votre annonce [AD.NAME] a expiré', 'ad-expired', 'Bonjour [USER.NAME], Votre annonce [AD.NAME] a expiré. Veuillez svp vérifier votre annonce ici: [URL.EDITAD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(177, 'fr_FR', 0, 'L\'annonce `[AD.TITLE]` a été achetée sur [SITE.NAME]!', 'ads-purchased', 'Numéro de commande: [ORDER.ID] ID du produit: [PRODUCT.ID] Pour toute question ou demande veuillez svp contacter l\'administrateur du site [SITE.NAME] Cliquez ici pour accéder à votre annonce: [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(178, 'fr_FR', 0, 'Mot de passe modifié [SITE.NAME]', 'password-changed', 'Bonjour [USER.NAME], Votre mot de passe a été changé. Voici vos nouvelles informations de connexion: Email: [USER.EMAIL] Mot de passe: [USER.PWD] . Pour des raisons de sécurité, nous ne gardons pas votre mot de passe original. Cordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(179, 'fr_FR', 0, 'Votre annonce [AD.NAME] va expirer', 'ad-to-expire', 'Bonjour [USER.NAME], Votre annonce [AD.NAME] va bientôt expirer. Veuillez svp vérifier votre annonce en cliquant sur ce lien: [URL.EDITAD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(180, 'fr_FR', 0, 'Nouvelle réponse: [TITRE]', 'messaging-reply', '[URL.QL]\r\n\r\n[DESCRIPTION]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(181, 'fr_FR', 0, '[FROM.NAME] vous a envoyé un message direct', 'messaging-user-contact', 'Bonjour [TO.NAME], [FROM.NAME] a un message pour vous: [description] [URL.QL] Cordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(182, 'fr_FR', 0, 'Nouveau commentaire sur votre annonce [AD.TITLE] [RATE]', 'ad-review', 'Bonjour, une nouveau commentaire et une appréciation ont été publiés pour votre annonce. [URL.QL]\r\n\r\n[RATE]\r\n\r\n[DESCRIPTION]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(183, 'fr_FR', 0, 'Bonjour [TO.NAME]!', 'messaging-ad-contact', 'Vous avez été contacté au sujet de votre annonce: `[AD.NAME]`. L\'utilisateur [FROM.NAME] a un message pour vous: [DESCRIPTION] [URL.QL] Cordialement!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(184, 'ru_RU', 0, 'Добро Пожаловать на [SITE.NAME]!', 'auth-register', '<p>Добро Пожаловать [USER.NAME], мы очень рады, что Вы присоединились к нам! &nbsp;[URL.QL] Запомните детали своего профайла:\r\nEmail: [USER.EMAIL] Пароль: [USER.PWD] У нас больше нет вашего первоначального пароля. С уважением!&nbsp;</p>', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(185, 'ru_RU', 0, 'Изменить пароль на [SITE.NAME]', 'auth-remember', 'Здравствуйте [USER.NAME], перейдите за ссылкой [URL.QL] Спасибо!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(186, 'ru_RU', 0, 'Здравствуйте [USER.NAME]!', 'user-profile-contact', 'Пользователь [EMAIL.SENDER] [EMAIL.FROM], прислал вам сообщение: \r\n\r\n[EMAIL.SUBJECT] \r\n\r\n[EMAIL.BODY]. С уважением!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(187, 'ru_RU', 0, 'Здравствуйте [USER.NAME]!', 'user-contact', 'С Вами хотят связаться насчёт Вашего объявления: `[AD.NAME]`. Пользователь [EMAIL.SENDER] [EMAIL.FROM], прислал Вам сообщение: [EMAIL.BODY]. С уважением!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(188, 'ru_RU', 0, '[EMAIL.SENDER] хочет с Вами связаться!', 'contact-admin', 'Здравствуйте Адміністратор, [EMAIL.SENDER]: [EMAIL.FROM], прислал Вам сообщение: [EMAIL.BODY] С уважением!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(189, 'ru_RU', 0, 'Наши поздравления, объявление `[AD.NAME]` на [SITE.NAME] было успешно создано!', 'ads-notify', 'Здравствуйте [USER.NAME], Большое спасибо за объявление на [SITE.NAME]! Вы можете редактировать его здесь [URL.QL]. Ваше объявление еще не опубликовано, сначало оно должно быть подтверждено администратором. Приносим извинения за возможные неудобства. Мы рассмотрим его как можно скорее. С уважением!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(190, 'ru_RU', 0, 'Квитанция за [ORDER.DESC] #[ORDER.ID]', 'new-order', 'Здавствуйте [USER.NAME], Большое спасибо за покупку [ORDER.DESC]. Пожалуйста, продолжите оплату здесь  [URL.CHECKOUT].', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(191, 'ru_RU', 0, 'Объявление `[AD.TITLE]` is out of stock on [SITE.NAME]!', 'out-of-stock', 'Здавствуйте [USER.NAME],\r\n\r\nWhile your ad is out of stock, it is unavailable for others to see. If you wish to increase stock and activate, please follow this link [URL.EDIT].\r\n\r\nRegards!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(192, 'ru_RU', 0, 'Объявление`[AD.TITLE]` продано на [SITE.NAME]!', 'ads-sold', 'Номер заказа: [ORDER.ID] Номер продукта: [PRODUCT.ID] Пожалуйста, проверте свой акаунт на оплату. Для просмотра нажмите здесь [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(193, 'ru_RU', 0, 'Объявление `[AD.TITLE]` создано на [SITE.NAME]!', 'ads-to-admin', 'Для просмотра нажмите здесь [URL.AD]&nbsp;', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(194, 'ru_RU', 0, 'Объявление`[AD.TITLE]` создано на [SITE.NAME]!', 'ads-subscribers', 'Здравствуйте, Вам может быть интересно это объявление, перейдите по ссылке, что бы посмотреть [URL.AD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(195, 'ru_RU', 0, 'Объявление `[AD.NAME]`создано на [SITE.NAME]!', 'ads-user-check', 'Здравстуйте [USER.NAME], Объявление создано под именем [USER.NAME]! Вы можете просмотреть его за ссылкой [URL.AD]. Если Вы не создавали это объявление, перейдите за ссылкой, чтобы связаться с нами [URL.CONTACT].', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(196, 'ru_RU', 0, 'Наши поздравления, объявление `[AD.NAME]` на [SITE.NAME] было успешно создано!', 'ads-confirm', 'Добро Пожаловать [USER.NAME], Большое спасибо за создание объявления на [SITE.NAME]! Пожалуйста, перейдите за ссылкой [URL.QL] чтобы подтвердить. С уважением!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1);
INSERT INTO `yc3_content` (`id_content`, `locale`, `order`, `title`, `seotitle`, `description`, `from_email`, `created`, `type`, `status`) VALUES
(197, 'ru_RU', 0, 'Объявление `[AD.TITLE]` выставлено на [SITE.NAME]!', 'ads-purchased', 'Номер заказа: [ORDER.ID] Номер продукта: [PRODUCT.ID] Если у Вас возникли проблемы, пожалуйста, свяжитесь с администратором сайта [SITE.NAME] Перейдите за ссылкой для просмотра [URL.AD]\r\n\r\n[BUYER.INSTRUCTIONS]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(198, 'ru_RU', 0, 'Заканчивается срок публикации Вашего объявления [AD.NAME]', 'ad-to-expire', 'Здравствуйте [USER.NAME], Скоро истечёт срок вашего объявления [AD.NAME], пожалуйста, перейдите за ссылкой чтобы просмотреть [URL.EDITAD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(199, 'ru_RU', 0, 'Пароль Изменён [SITE.NAME]', 'password-changed', 'Здравствуйте[USER.NAME], Ваш пароль был изменён. Это Вашы новые детали :\r\nEmail: [USER.EMAIL] Пароль: [USER.PWD] У нас больше нет Вашего первоначального пароля. С уважением!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(200, 'ru_RU', 0, 'Вышел срок публикации Вашего объявления [AD.NAME] ', 'ad-expired', 'Здавствуйте [USER.NAME], Вышел срок публикации Вашего объявления [AD.NAME], Пожалуйста, перейдите за ссылкой для просмотра [URL.EDITAD]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(201, 'ru_RU', 0, '[FROM.NAME] прислал Вам сообщение', 'messaging-user-contact', 'Здравствуйте [TO.NAME], [FROM.NAME] прислал Вам сообщение: [DESCRIPTION] [URL.QL] С уважением!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(202, 'ru_RU', 0, 'Новый ответ: [TITLE]', 'messaging-reply', '[URL.QL]\r\n\r\n[DESCRIPTION]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(203, 'ru_RU', 0, 'Здравствуйте [TO.NAME]!', 'messaging-ad-contact', 'С Вами хотят связаться насчёт&nbsp;объявления: `[AD.NAME]`. Пользователь [FROM.NAME], прислал Вам сообщение: [DESCRIPTION] [URL.QL] С уважением!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(204, 'ru_RU', 0, 'Срок Вашего тарифного плана [PLAN.NAME] истёк', 'plan-expired', 'Здравствуйте [USER.NAME], Истёк срок Вашего тарифного плана [PLAN.NAME], Пожалуйста, перейдите за &nbsp;ссылкой чтобы просмотрет [URL.CHECKOUT]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(205, 'ru_RU', 0, 'Новый ответ на форуме', 'new-forum-answer', '<p>Новый ответ на форуме<br></p><p><br>&nbsp;&nbsp;<a href="[FORUM.LINK]" >Просмотреть здесь</a><br><br>[FORUM.LINK]<br></p>', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(206, 'ru_RU', 0, 'Новый отзыв на  [AD.TITLE] [RATE]', 'ad-review', '[URL.QL]\r\n\r\n[RATE]\r\n\r\n[DESCRIPTION]', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1),
(207, 'ru_RU', 0, 'Ваше объявление `[AD.NAME]` на [SITE.NAME], активировано', 'ads-activated', 'Здравствуйте [USER.OWNER], Ваше объявление [URL.QL] активировано! Теперь его может увидеть каждый посетитель. Надеемся, что мы не заставили Вас долго ждать. С уважением!', 'admin@reoc.lo', '2017-09-07 12:54:07', 'email', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yc3_coupons`
--

CREATE TABLE `yc3_coupons` (
  `id_coupon` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(145) NOT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `discount_amount` decimal(14,3) NOT NULL DEFAULT '0.000',
  `discount_percentage` decimal(14,3) NOT NULL DEFAULT '0.000',
  `number_coupons` int(10) DEFAULT NULL,
  `valid_date` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_crontab`
--

CREATE TABLE `yc3_crontab` (
  `id_crontab` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `period` varchar(50) NOT NULL,
  `callback` varchar(140) NOT NULL,
  `params` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_started` datetime DEFAULT NULL,
  `date_finished` datetime DEFAULT NULL,
  `date_next` datetime DEFAULT NULL,
  `times_executed` bigint(20) DEFAULT '0',
  `output` varchar(50) DEFAULT NULL,
  `running` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_crontab`
--

INSERT INTO `yc3_crontab` (`id_crontab`, `name`, `period`, `callback`, `params`, `description`, `date_created`, `date_started`, `date_finished`, `date_next`, `times_executed`, `output`, `running`, `active`) VALUES
(1, 'Sitemap', '0 3 * * *', 'Sitemap::generate', NULL, 'Regenerates the sitemap everyday at 3am', '2017-09-07 12:54:08', '2017-09-07 13:54:11', '2017-09-07 13:54:12', '2017-09-08 03:00:00', 1, 'Memory peak 1.37 MB - Time: 0.63s', 0, 1),
(2, 'Clean Cache', '0 5 * * *', 'Core::delete_cache', NULL, 'Once day force to flush all the cache.', '2017-09-07 12:54:08', '2017-09-07 13:54:12', '2017-09-07 13:54:12', '2017-09-08 05:00:00', 1, NULL, 0, 1),
(3, 'Optimize DB', '0 4 1 * *', 'Core::optimize_db', NULL, 'once a month we optimize the DB', '2017-09-07 12:54:08', '2017-09-07 13:54:12', '2017-09-07 13:54:29', '2017-10-01 04:00:00', 1, NULL, 0, 1),
(4, 'Unpaid Orders', '0 7 * * *', 'Cron_Ad::unpaid', NULL, 'Notify unpaid orders 2 days after was created', '2017-09-07 12:54:08', '2017-09-07 13:54:29', '2017-09-07 13:54:29', '2017-09-08 07:00:00', 1, NULL, 0, 1),
(5, 'Expired Featured Ad', '0 8 * * *', 'Cron_Ad::expired_featured', NULL, 'Notify by email of expired featured ad', '2017-09-07 12:54:08', '2017-09-07 13:54:29', '2017-09-07 13:54:29', '2017-09-08 08:00:00', 1, NULL, 0, 1),
(6, 'Expired Ad', '0 9 * * *', 'Cron_Ad::expired', NULL, 'Notify by email of expired ad', '2017-09-07 12:54:08', '2017-09-07 13:54:29', '2017-09-07 13:54:30', '2017-09-08 09:00:00', 1, NULL, 0, 1),
(7, 'About to Expire Ad', '05 9 * * *', 'Cron_Ad::to_expire', NULL, 'Notify by email your ad is about to expire', '2017-09-07 12:54:08', '2017-09-07 13:54:30', '2017-09-07 13:54:30', '2017-09-08 09:05:00', 1, NULL, 0, 1),
(8, 'Renew subscription', '*/5 * * * *', 'Cron_Subscription::renew', NULL, 'Notify by email user subscription will expire.', '2017-09-07 12:54:08', '2017-09-07 13:56:48', '2017-09-07 13:56:48', '2017-09-07 14:00:00', 2, NULL, 0, 1),
(9, 'Notify new updates', '0 9 * * 1', 'Cron_Update::notify', NULL, 'Notify by email of new site updates.', '2017-09-07 12:54:08', '2017-09-07 13:54:30', '2017-09-07 13:54:30', '2017-09-11 09:00:00', 1, NULL, 0, 1),
(10, 'Generate Access Token', '10 9 1 * *', 'Social::GetAccessToken', NULL, 'Generate Facebook long-lived Access Token.', '2017-09-07 12:54:08', '2017-09-07 13:54:31', '2017-09-07 13:54:31', '2017-10-01 09:10:00', 1, NULL, 0, 1),
(11, 'Algolia Search re-index', '0 * * * *', 'Cron_Algolia::reindex', NULL, 'Re-index everything', '2017-09-07 12:54:08', '2017-09-07 13:54:31', '2017-09-07 13:54:31', '2017-09-07 14:00:00', 1, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `yc3_favorites`
--

CREATE TABLE `yc3_favorites` (
  `id_favorite` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_ad` int(10) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_forums`
--

CREATE TABLE `yc3_forums` (
  `id_forum` int(10) UNSIGNED NOT NULL,
  `name` varchar(145) NOT NULL,
  `order` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_forum_parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_deep` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `seoname` varchar(145) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_locations`
--

CREATE TABLE `yc3_locations` (
  `id_location` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `order` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `id_location_parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_deep` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `seoname` varchar(145) NOT NULL,
  `description` text,
  `last_modified` datetime DEFAULT NULL,
  `has_image` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `id_geoname` int(10) UNSIGNED DEFAULT NULL,
  `fcodename_geoname` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_locations`
--

INSERT INTO `yc3_locations` (`id_location`, `name`, `order`, `id_location_parent`, `parent_deep`, `seoname`, `description`, `last_modified`, `has_image`, `latitude`, `longitude`, `id_geoname`, `fcodename_geoname`) VALUES
(1, 'Home location', 0, 0, 0, 'all', 'root location', NULL, 0, NULL, NULL, NULL, NULL),
(2, 'Madrid', 0, 1, 0, 'madrid', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(3, 'London', 0, 1, 0, 'london', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(4, 'Barcelona', 0, 1, 0, 'barcelona', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(5, 'Paris', 0, 1, 0, 'paris', NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `yc3_messages`
--

CREATE TABLE `yc3_messages` (
  `id_message` int(10) UNSIGNED NOT NULL,
  `id_ad` int(10) UNSIGNED DEFAULT NULL,
  `id_message_parent` int(10) UNSIGNED DEFAULT NULL,
  `id_user_from` int(10) UNSIGNED NOT NULL,
  `id_user_to` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `read_date` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_to` tinyint(1) NOT NULL DEFAULT '0',
  `status_from` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_orders`
--

CREATE TABLE `yc3_orders` (
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_ad` int(10) UNSIGNED DEFAULT NULL,
  `id_product` varchar(20) NOT NULL,
  `id_coupon` int(10) UNSIGNED DEFAULT NULL,
  `paymethod` varchar(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pay_date` datetime DEFAULT NULL,
  `currency` char(3) NOT NULL,
  `amount` decimal(14,3) NOT NULL DEFAULT '0.000',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(145) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `featured_days` int(10) UNSIGNED DEFAULT NULL,
  `VAT_country` varchar(20) DEFAULT NULL,
  `VAT_number` varchar(20) DEFAULT NULL,
  `VAT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_plans`
--

CREATE TABLE `yc3_plans` (
  `id_plan` int(10) UNSIGNED NOT NULL,
  `name` varchar(145) NOT NULL,
  `seoname` varchar(145) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `days` int(10) DEFAULT '1',
  `amount_ads` int(10) DEFAULT '1',
  `marketplace_fee` decimal(14,3) NOT NULL DEFAULT '0.000',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_posts`
--

CREATE TABLE `yc3_posts` (
  `id_post` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_post_parent` int(10) UNSIGNED DEFAULT NULL,
  `id_forum` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(245) NOT NULL,
  `seotitle` varchar(245) NOT NULL,
  `description` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_reviews`
--

CREATE TABLE `yc3_reviews` (
  `id_review` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_ad` int(10) UNSIGNED NOT NULL,
  `rate` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(1000) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_roles`
--

CREATE TABLE `yc3_roles` (
  `id_role` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_roles`
--

INSERT INTO `yc3_roles` (`id_role`, `name`, `description`, `date_created`) VALUES
(1, 'user', 'Normal user', '2017-09-07 12:54:08'),
(5, 'translator', 'User + Translations', '2017-09-07 12:54:08'),
(7, 'moderator', 'Moderator', '2017-09-07 12:54:08'),
(10, 'admin', 'Full access', '2017-09-07 12:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `yc3_subscribers`
--

CREATE TABLE `yc3_subscribers` (
  `id_subscribe` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_location` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `min_price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `max_price` decimal(14,3) NOT NULL DEFAULT '0.000',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_subscriptions`
--

CREATE TABLE `yc3_subscriptions` (
  `id_subscription` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_plan` int(10) UNSIGNED NOT NULL,
  `amount_ads` int(10) DEFAULT '1',
  `amount_ads_left` int(10) DEFAULT '0',
  `expire_date` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yc3_users`
--

CREATE TABLE `yc3_users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(145) DEFAULT NULL,
  `seoname` varchar(145) DEFAULT NULL,
  `email` varchar(145) NOT NULL,
  `password` varchar(64) NOT NULL,
  `description` text,
  `status` int(1) NOT NULL DEFAULT '0',
  `id_role` int(10) UNSIGNED DEFAULT '1',
  `id_location` int(10) UNSIGNED DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified` datetime DEFAULT NULL,
  `logins` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_ip` bigint(20) DEFAULT NULL,
  `user_agent` varchar(40) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `token_created` datetime DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `api_token` varchar(40) DEFAULT NULL,
  `hybridauth_provider_name` varchar(40) DEFAULT NULL,
  `hybridauth_provider_uid` varchar(245) DEFAULT NULL,
  `subscriber` tinyint(1) NOT NULL DEFAULT '1',
  `rate` float(4,2) DEFAULT NULL,
  `has_image` tinyint(1) NOT NULL DEFAULT '0',
  `failed_attempts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_failed` datetime DEFAULT NULL,
  `notification_date` datetime DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `stripe_user_id` varchar(140) DEFAULT NULL,
  `stripe_agreement` varchar(40) DEFAULT NULL,
  `google_authenticator` varchar(40) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yc3_users`
--

INSERT INTO `yc3_users` (`id_user`, `name`, `seoname`, `email`, `password`, `description`, `status`, `id_role`, `id_location`, `created`, `last_modified`, `logins`, `last_login`, `last_ip`, `user_agent`, `token`, `token_created`, `token_expires`, `api_token`, `hybridauth_provider_name`, `hybridauth_provider_uid`, `subscriber`, `rate`, `has_image`, `failed_attempts`, `last_failed`, `notification_date`, `device_id`, `stripe_user_id`, `stripe_agreement`, `google_authenticator`, `phone`) VALUES
(1, 'admin', 'admin', 'admin@reoc.lo', 'cb9071c4d01027c651041d28a6759e9a0fb03c73d1191bdf7d1132a1f50649b1', NULL, 1, 10, NULL, '2017-09-07 12:54:08', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Jermaine Doe', 'jermaine-doe', 'user@reoc.lo', '7b50de18da4bdf3f426174ad44379379beb3ba9bc0f11bf37c8960ef41e20783', NULL, 1, 1, NULL, '2017-09-07 12:55:42', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Gary Doe', 'gary-doe', 'gazzasdasd@reoc.lo', '08782e12b371210cde52ee94d4e67f790aad1d5a356a40e87553d0e7bc885dc0', NULL, 1, 1, NULL, '2017-09-07 12:55:54', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'John Smith', 'john-smith', 'john@gmail.com', '9236487a97f39190e8c5aac3f0d8012dbbd0c34913a8f79c5214d4f4b26b0645', NULL, 1, 1, NULL, '2017-09-07 12:56:25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `yc3_visits`
--

CREATE TABLE `yc3_visits` (
  `id_visit` int(10) UNSIGNED NOT NULL,
  `id_ad` int(10) UNSIGNED DEFAULT NULL,
  `hits` int(10) NOT NULL DEFAULT '0',
  `contacts` int(10) NOT NULL DEFAULT '0',
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `yc3_access`
--
ALTER TABLE `yc3_access`
  ADD PRIMARY KEY (`id_access`);

--
-- Indexes for table `yc3_ads`
--
ALTER TABLE `yc3_ads`
  ADD PRIMARY KEY (`id_ad`) USING BTREE,
  ADD UNIQUE KEY `yc3_ads_UK_seotitle` (`seotitle`),
  ADD KEY `yc3_ads_IK_id_user` (`id_user`),
  ADD KEY `yc3_ads_IK_id_category` (`id_category`),
  ADD KEY `yc3_ads_IK_title` (`title`),
  ADD KEY `yc3_ads_IK_status` (`status`);

--
-- Indexes for table `yc3_adsimport`
--
ALTER TABLE `yc3_adsimport`
  ADD PRIMARY KEY (`id_import`);

--
-- Indexes for table `yc3_categories`
--
ALTER TABLE `yc3_categories`
  ADD PRIMARY KEY (`id_category`) USING BTREE,
  ADD UNIQUE KEY `yc3_categories_IK_seo_name` (`seoname`);

--
-- Indexes for table `yc3_config`
--
ALTER TABLE `yc3_config`
  ADD PRIMARY KEY (`config_key`),
  ADD UNIQUE KEY `yc3_config_UK_group_name_AND_config_key` (`group_name`,`config_key`);

--
-- Indexes for table `yc3_content`
--
ALTER TABLE `yc3_content`
  ADD PRIMARY KEY (`id_content`);

--
-- Indexes for table `yc3_coupons`
--
ALTER TABLE `yc3_coupons`
  ADD PRIMARY KEY (`id_coupon`),
  ADD UNIQUE KEY `yc3_coupons_UK_name` (`name`);

--
-- Indexes for table `yc3_crontab`
--
ALTER TABLE `yc3_crontab`
  ADD PRIMARY KEY (`id_crontab`),
  ADD UNIQUE KEY `yc3_crontab_UK_name` (`name`);

--
-- Indexes for table `yc3_favorites`
--
ALTER TABLE `yc3_favorites`
  ADD PRIMARY KEY (`id_favorite`) USING BTREE,
  ADD KEY `yc3_favorites_IK_id_user_AND_id_ad` (`id_user`,`id_ad`);

--
-- Indexes for table `yc3_forums`
--
ALTER TABLE `yc3_forums`
  ADD PRIMARY KEY (`id_forum`) USING BTREE,
  ADD UNIQUE KEY `yc3_forums_IK_seo_name` (`seoname`);

--
-- Indexes for table `yc3_locations`
--
ALTER TABLE `yc3_locations`
  ADD PRIMARY KEY (`id_location`),
  ADD UNIQUE KEY `yc3_loations_UK_seoname` (`seoname`);

--
-- Indexes for table `yc3_messages`
--
ALTER TABLE `yc3_messages`
  ADD PRIMARY KEY (`id_message`) USING BTREE;

--
-- Indexes for table `yc3_orders`
--
ALTER TABLE `yc3_orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `yc3_orders_IK_id_user` (`id_user`),
  ADD KEY `yc3_orders_IK_status` (`status`);

--
-- Indexes for table `yc3_plans`
--
ALTER TABLE `yc3_plans`
  ADD PRIMARY KEY (`id_plan`),
  ADD UNIQUE KEY `yc3_plan_UK_seoname` (`seoname`);

--
-- Indexes for table `yc3_posts`
--
ALTER TABLE `yc3_posts`
  ADD PRIMARY KEY (`id_post`) USING BTREE,
  ADD UNIQUE KEY `yc3_posts_UK_seotitle` (`seotitle`),
  ADD KEY `yc3_posts_IK_id_user` (`id_user`),
  ADD KEY `yc3_posts_IK_id_post_parent` (`id_post_parent`),
  ADD KEY `yc3_posts_IK_id_forum` (`id_forum`);

--
-- Indexes for table `yc3_reviews`
--
ALTER TABLE `yc3_reviews`
  ADD PRIMARY KEY (`id_review`) USING BTREE,
  ADD KEY `yc3_reviews_IK_id_user` (`id_user`),
  ADD KEY `yc3_reviews_IK_id_ad` (`id_ad`);

--
-- Indexes for table `yc3_roles`
--
ALTER TABLE `yc3_roles`
  ADD PRIMARY KEY (`id_role`),
  ADD UNIQUE KEY `yc3_roles_UK_name` (`name`);

--
-- Indexes for table `yc3_subscribers`
--
ALTER TABLE `yc3_subscribers`
  ADD PRIMARY KEY (`id_subscribe`);

--
-- Indexes for table `yc3_subscriptions`
--
ALTER TABLE `yc3_subscriptions`
  ADD PRIMARY KEY (`id_subscription`);

--
-- Indexes for table `yc3_users`
--
ALTER TABLE `yc3_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `yc3_users_UK_email` (`email`),
  ADD UNIQUE KEY `yc3_users_UK_token` (`token`),
  ADD UNIQUE KEY `yc3_users_UK_api_token` (`api_token`),
  ADD UNIQUE KEY `yc3_users_UK_seoname` (`seoname`),
  ADD UNIQUE KEY `yc3_users_UK_provider_AND_uid` (`hybridauth_provider_name`,`hybridauth_provider_uid`);

--
-- Indexes for table `yc3_visits`
--
ALTER TABLE `yc3_visits`
  ADD PRIMARY KEY (`id_visit`),
  ADD UNIQUE KEY `yc3_visits_UK_id_ad_AND_created` (`id_ad`,`created`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `yc3_access`
--
ALTER TABLE `yc3_access`
  MODIFY `id_access` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `yc3_ads`
--
ALTER TABLE `yc3_ads`
  MODIFY `id_ad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `yc3_adsimport`
--
ALTER TABLE `yc3_adsimport`
  MODIFY `id_import` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `yc3_categories`
--
ALTER TABLE `yc3_categories`
  MODIFY `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `yc3_content`
--
ALTER TABLE `yc3_content`
  MODIFY `id_content` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `yc3_coupons`
--
ALTER TABLE `yc3_coupons`
  MODIFY `id_coupon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yc3_crontab`
--
ALTER TABLE `yc3_crontab`
  MODIFY `id_crontab` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `yc3_favorites`
--
ALTER TABLE `yc3_favorites`
  MODIFY `id_favorite` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yc3_forums`
--
ALTER TABLE `yc3_forums`
  MODIFY `id_forum` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yc3_locations`
--
ALTER TABLE `yc3_locations`
  MODIFY `id_location` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `yc3_messages`
--
ALTER TABLE `yc3_messages`
  MODIFY `id_message` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yc3_orders`
--
ALTER TABLE `yc3_orders`
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yc3_plans`
--
ALTER TABLE `yc3_plans`
  MODIFY `id_plan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `yc3_posts`
--
ALTER TABLE `yc3_posts`
  MODIFY `id_post` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yc3_reviews`
--
ALTER TABLE `yc3_reviews`
  MODIFY `id_review` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yc3_roles`
--
ALTER TABLE `yc3_roles`
  MODIFY `id_role` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `yc3_subscribers`
--
ALTER TABLE `yc3_subscribers`
  MODIFY `id_subscribe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yc3_subscriptions`
--
ALTER TABLE `yc3_subscriptions`
  MODIFY `id_subscription` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yc3_users`
--
ALTER TABLE `yc3_users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `yc3_visits`
--
ALTER TABLE `yc3_visits`
  MODIFY `id_visit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
