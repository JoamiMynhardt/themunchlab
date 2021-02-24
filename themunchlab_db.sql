-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table themunchlab.activations
DROP TABLE IF EXISTS `activations`;
CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.activations: ~1 rows (approximately)
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'BmFTUQA57zF832HyXbiv30VexUQ1bAG8', 1, NULL, '2019-08-04 20:30:00', NULL);
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;

-- Dumping structure for table themunchlab.app_user
DROP TABLE IF EXISTS `app_user`;
CREATE TABLE IF NOT EXISTS `app_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_pic` varchar(500) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `create_at` varchar(30) DEFAULT NULL,
  `mob_number` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>is_not_deleted,1=>is_deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.app_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` (`id`, `profile_pic`, `name`, `email`, `password`, `create_at`, `mob_number`, `created_at`, `updated_at`, `is_deleted`) VALUES
	(1, NULL, 'joami', 'joami@tml.com', 'c2068f90f7de9cb0b5d9bed54eff4498', '2021-02-13', '0727737049', '2021-02-13 07:49:19', '2021-02-13 07:49:19', '0');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;

-- Dumping structure for table themunchlab.contact
DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.contact: ~0 rows (approximately)
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;

-- Dumping structure for table themunchlab.fooddelivery_food_desc
DROP TABLE IF EXISTS `fooddelivery_food_desc`;
CREATE TABLE IF NOT EXISTS `fooddelivery_food_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ingredients_id` varchar(255) NOT NULL,
  `item_amt` varchar(50) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `ItemTotalPrice` varchar(50) NOT NULL,
  `set_order_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.fooddelivery_food_desc: ~0 rows (approximately)
/*!40000 ALTER TABLE `fooddelivery_food_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `fooddelivery_food_desc` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_category
DROP TABLE IF EXISTS `food_category`;
CREATE TABLE IF NOT EXISTS `food_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_icon` varchar(1000) NOT NULL,
  `cat_name` varchar(5000) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>not_delete,1=>delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_category: ~5 rows (approximately)
/*!40000 ALTER TABLE `food_category` DISABLE KEYS */;
INSERT INTO `food_category` (`id`, `cat_icon`, `cat_name`, `created_at`, `updated_at`, `is_deleted`) VALUES
	(1, 'NKavPflwx01612951980.png', 'Monday', '2021-02-10 10:13:00', '2021-02-10 10:13:00', '0'),
	(2, 'rxGhyjYmCE1613230152.png', 'Tuesday', '2021-02-13 15:29:12', '2021-02-13 15:29:12', '0'),
	(3, 'VXFLPJLvZN1613230169.png', 'Wednesday', '2021-02-13 15:29:29', '2021-02-13 15:29:29', '0'),
	(4, 'f3Onwnbomo1613230183.png', 'Thursday', '2021-02-13 15:29:43', '2021-02-13 15:29:43', '0'),
	(5, '405E9Ed9PM1613230855.png', 'Friday', '2021-02-13 15:40:55', '2021-02-13 15:40:55', '0');
/*!40000 ALTER TABLE `food_category` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_city
DROP TABLE IF EXISTS `food_city`;
CREATE TABLE IF NOT EXISTS `food_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(500) NOT NULL,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>not_delete,1=>delete',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_city: ~0 rows (approximately)
/*!40000 ALTER TABLE `food_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_city` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_delivery_boy
DROP TABLE IF EXISTS `food_delivery_boy`;
CREATE TABLE IF NOT EXISTS `food_delivery_boy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` int(11) NOT NULL,
  `profile` varchar(250) DEFAULT NULL,
  `attendance` varchar(10) DEFAULT 'No',
  `create_at` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `vehicle_no` varchar(30) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL,
  `is_deleted` enum('0','1') NOT NULL COMMENT '0=>not_delete,1=>delete',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_delivery_boy: ~0 rows (approximately)
/*!40000 ALTER TABLE `food_delivery_boy` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_delivery_boy` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_ingredients
DROP TABLE IF EXISTS `food_ingredients`;
CREATE TABLE IF NOT EXISTS `food_ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` varchar(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=>paid,0=>free',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>not_delete,1=>delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_ingredients: ~10 rows (approximately)
/*!40000 ALTER TABLE `food_ingredients` DISABLE KEYS */;
INSERT INTO `food_ingredients` (`id`, `category`, `item_name`, `menu_id`, `price`, `type`, `created_at`, `updated_at`, `is_deleted`) VALUES
	(1, 1, 'Chickpea flour', 1, '0', 0, '2021-02-10 10:20:43', '2021-02-10 10:20:43', '0'),
	(2, 1, 'Chickpeas', 1, '5.00', 1, '2021-02-10 10:21:28', '2021-02-10 10:21:28', '0'),
	(3, 2, 'Spinach', 3, '0', 0, '2021-02-13 15:37:02', '2021-02-13 15:37:02', '0'),
	(4, 2, 'Yogurt', 4, '0', 0, '2021-02-13 15:37:54', '2021-02-13 15:37:54', '0'),
	(5, 3, 'Quinoa', 5, '0', 0, '2021-02-13 15:38:14', '2021-02-13 15:38:14', '0'),
	(6, 3, 'Cinnamon', 6, '0', 0, '2021-02-13 15:38:30', '2021-02-13 15:38:30', '0'),
	(7, 4, 'Veggies', 7, '0', 0, '2021-02-13 15:38:48', '2021-02-13 15:38:48', '0'),
	(8, 4, 'Cocoa', 8, '0', 0, '2021-02-13 15:39:01', '2021-02-13 15:39:01', '0'),
	(9, 5, 'Black beans', 9, '0', 0, '2021-02-13 15:43:24', '2021-02-13 15:43:24', '0'),
	(10, 5, 'Yogurt', 10, '0', 0, '2021-02-13 15:43:51', '2021-02-13 15:43:51', '0');
/*!40000 ALTER TABLE `food_ingredients` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_menu
DROP TABLE IF EXISTS `food_menu`;
CREATE TABLE IF NOT EXISTS `food_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `description` text NOT NULL,
  `menu_image` varchar(70) NOT NULL,
  `menu_name` varchar(70) NOT NULL,
  `price` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>not_delete,1=>delete',
  `facebook_share` varchar(500) DEFAULT NULL,
  `twitter_share` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_menu: ~10 rows (approximately)
/*!40000 ALTER TABLE `food_menu` DISABLE KEYS */;
INSERT INTO `food_menu` (`id`, `category`, `description`, `menu_image`, `menu_name`, `price`, `created_at`, `updated_at`, `is_deleted`, `facebook_share`, `twitter_share`) VALUES
	(1, 1, 'Protein', 'Y4yN9HTTiJ1612952730.jpg', '2 x Mini Tuna Fishcakes/ Chickpea cakes 100!!!!!!!!!!!', '20.00', '2021-02-10 10:16:01', '2021-02-22 17:14:56', '0', NULL, NULL),
	(2, 1, 'Dairy', '2V2AnE8Wm01612952624.jpg', 'Homemade drinking yogurt (Strawberry)', '25.00', '2021-02-10 10:23:44', '2021-02-10 10:23:44', '0', NULL, NULL),
	(3, 2, 'Protein', '5tWWHbahyi1613230247.jpg', '2x Mini Quiches (Spinach, Feta)', '20.00', '2021-02-13 15:30:47', '2021-02-13 15:30:47', '0', NULL, NULL),
	(4, 2, 'Dairy', 'j3oEVT8zIQ1613230315.jpg', 'Yogurt Pot with Homemade Granola crumble', '26.00', '2021-02-13 15:31:55', '2021-02-13 15:31:55', '0', NULL, NULL),
	(5, 3, 'Protein', 'WyjHcsIxDs1613230361.jpg', '1 x Quinoa Nut bar', '32.00', '2021-02-13 15:32:41', '2021-02-13 15:32:41', '0', NULL, NULL),
	(6, 3, 'Dairy', 'sHySpdOPjZ1613230439.jpg', 'Homemade Drinking Yogurt ( Date cinnamon banana)', '16.00', '2021-02-13 15:33:59', '2021-02-13 15:33:59', '0', NULL, NULL),
	(7, 4, 'Protein', 'iqUatvls2z1613230506.jpg', '2 x Chickpea Veggie nuggets', '34.00', '2021-02-13 15:35:06', '2021-02-13 15:35:06', '0', NULL, NULL),
	(8, 4, 'Dairy', 'w68FiG5MCH1613230558.jpg', 'Vanilla Yogurt Pot with With cocoa nibs', '26.00', '2021-02-13 15:35:58', '2021-02-13 15:35:58', '0', NULL, NULL),
	(9, 5, 'Protein', 'IsSlTlPQQ11613230921.jpg', '2 x Chocolate Black bean date balls', '26.00', '2021-02-13 15:42:01', '2021-02-13 15:42:01', '0', NULL, NULL),
	(10, 5, 'Dairy', 'np0D0DsXFH1613230973.jpg', 'Strawberry Compote Yogurt Pot', '25.00', '2021-02-13 15:42:53', '2021-02-13 15:42:53', '0', NULL, NULL);
/*!40000 ALTER TABLE `food_menu` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_notification
DROP TABLE IF EXISTS `food_notification`;
CREATE TABLE IF NOT EXISTS `food_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `android_key` varchar(255) NOT NULL,
  `ios_key` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_notification: ~1 rows (approximately)
/*!40000 ALTER TABLE `food_notification` DISABLE KEYS */;
INSERT INTO `food_notification` (`id`, `android_key`, `ios_key`, `created_at`, `updated_at`) VALUES
	(1, 'AAAAzfOzFf4:APA91bGDYxjaXRFePTRG0AnHW624nG7xaRzgtQWdTf-a_yGw3NZ9X0y8PoInegJUxxxFgTXta_VpbgqWw4yoHaOLsYR_u6xGvptgwYhiBuxqpx4s0XsLVn-AwQKo1wq8CX-Or6bNiIcJ', '1234546', '2019-08-30 16:47:57', '2020-03-11 11:36:58');
/*!40000 ALTER TABLE `food_notification` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_order_response
DROP TABLE IF EXISTS `food_order_response`;
CREATE TABLE IF NOT EXISTS `food_order_response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` text NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_order_response: ~0 rows (approximately)
/*!40000 ALTER TABLE `food_order_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_order_response` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_send_notification
DROP TABLE IF EXISTS `food_send_notification`;
CREATE TABLE IF NOT EXISTS `food_send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(5000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_send_notification: ~0 rows (approximately)
/*!40000 ALTER TABLE `food_send_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_send_notification` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_tokandata
DROP TABLE IF EXISTS `food_tokandata`;
CREATE TABLE IF NOT EXISTS `food_tokandata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `delivery_boyid` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_tokandata: ~0 rows (approximately)
/*!40000 ALTER TABLE `food_tokandata` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_tokandata` ENABLE KEYS */;

-- Dumping structure for table themunchlab.food_user
DROP TABLE IF EXISTS `food_user`;
CREATE TABLE IF NOT EXISTS `food_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(30) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.food_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `food_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_user` ENABLE KEYS */;

-- Dumping structure for table themunchlab.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.migrations: ~1 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table themunchlab.payment_method
DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE IF NOT EXISTS `payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `payment_method` varchar(250) DEFAULT NULL,
  `charges` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.payment_method: ~0 rows (approximately)
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;

-- Dumping structure for table themunchlab.persistences
DROP TABLE IF EXISTS `persistences`;
CREATE TABLE IF NOT EXISTS `persistences` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.persistences: ~6 rows (approximately)
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
	(2, 1, 't72olwM8G5F0xuGT50viTWHtWk5ryuqL', '2021-02-08 10:57:11', '2021-02-08 10:57:11'),
	(3, 1, 'kjPx2JDHzGCAkSB8BgIPH9A9TghP9H7B', '2021-02-10 05:27:16', '2021-02-10 05:27:16'),
	(5, 1, 'qRHZVKefmEWm1eyybMGAckGQIWL0ZDt8', '2021-02-13 13:26:41', '2021-02-13 13:26:41'),
	(6, 1, '4vSmZ3WCKnCOnRxq904z62fkxZY7N50d', '2021-02-15 13:33:30', '2021-02-15 13:33:30'),
	(7, 1, '2x2iGSmfmI19JlWp8GvLcXPgAf6euJMg', '2021-02-22 17:14:00', '2021-02-22 17:14:00'),
	(8, 1, '4nKKRhi3IBqy5Nm51I3uZQLGmx580qlF', '2021-02-23 05:25:40', '2021-02-23 05:25:40');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;

-- Dumping structure for table themunchlab.reminders
DROP TABLE IF EXISTS `reminders`;
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.reminders: ~0 rows (approximately)
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;

-- Dumping structure for table themunchlab.reset_password
DROP TABLE IF EXISTS `reset_password`;
CREATE TABLE IF NOT EXISTS `reset_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.reset_password: ~0 rows (approximately)
/*!40000 ALTER TABLE `reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `reset_password` ENABLE KEYS */;

-- Dumping structure for table themunchlab.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table themunchlab.role_users
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.role_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;

-- Dumping structure for table themunchlab.setting
DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stripe_key` varchar(250) DEFAULT NULL,
  `stripe_secret` varchar(250) DEFAULT NULL,
  `paypal_client_id` varchar(250) DEFAULT NULL,
  `paypal_client_secret` varchar(250) DEFAULT NULL,
  `paypal_mode` enum('1','0') NOT NULL DEFAULT '0' COMMENT '0=>sandbox,1=>live',
  `order_status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>offline,1=>online',
  `app_store_url` varchar(250) DEFAULT NULL,
  `play_store_url` varchar(250) DEFAULT NULL,
  `delivery_charges` varchar(250) DEFAULT NULL,
  `facebook_id` varchar(250) DEFAULT NULL,
  `twitter_id` varchar(250) DEFAULT NULL,
  `linkedin_id` varchar(250) DEFAULT NULL,
  `google_plus_id` varchar(250) DEFAULT NULL,
  `whatsapp` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timezone` varchar(250) DEFAULT NULL,
  `stripe_active` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes',
  `paypal_active` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes',
  `is_web` enum('0','1','2') DEFAULT '1' COMMENT '0=>app,1=>web,2=>web+admin',
  `logo` varchar(100) DEFAULT NULL,
  `main_banner` varchar(100) DEFAULT NULL,
  `second_sec_img` varchar(100) DEFAULT NULL,
  `secong_icon_img` varchar(100) DEFAULT NULL,
  `footer_up_img` varchar(100) DEFAULT NULL,
  `footer_img` varchar(100) DEFAULT NULL,
  `web_color` varchar(250) DEFAULT NULL,
  `have_playstore` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes',
  `have_appstore` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>no,1=>yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.setting: ~1 rows (approximately)
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`id`, `stripe_key`, `stripe_secret`, `paypal_client_id`, `paypal_client_secret`, `paypal_mode`, `order_status`, `app_store_url`, `play_store_url`, `delivery_charges`, `facebook_id`, `twitter_id`, `linkedin_id`, `google_plus_id`, `whatsapp`, `address`, `email`, `phone`, `created_at`, `updated_at`, `timezone`, `stripe_active`, `paypal_active`, `is_web`, `logo`, `main_banner`, `second_sec_img`, `secong_icon_img`, `footer_up_img`, `footer_img`, `web_color`, `have_playstore`, `have_appstore`) VALUES
	(1, 'pk_test_yFUNiYsEESF7QBY0jcZoYK9j00yHumvXho', 'sk_test_H4cvZ6S2eX8vFFDdZCk4oNvt00RMnplVS4', 'AaT793pjARjOWkXpWaOd45lGARUMRN9pr8seE5c-AJpQBSJS1H6Z44rUPSEWYPpO7J7iF1Hu0N-MqnPx', 'ECRNnl-2t-Rli34RbdQiMHOHkyzwomvbo8mdj3kGrTL8N5lvlfPjSq7DfuArz4zksW0T9TxB5ifjY4HC', '0', '1', '#', '#', '10', 'https://www.facebook.com/The-Munch-Lab-103312161804180', '#', '#', '#', '+27 71 761 8818', 'Botha\'s Hill', 'daniellecairns6@gmail.com', '+27 71 761 8818', '2019-09-09 16:10:55', '2021-02-23 05:26:03', '254', '1', '1', '1', 'logo.jpg', 'main_banner.png', 'sec-img.png', 'INl8OkasjX1613224189.svg', 'footer-up.png', 'footer.png', '#75bf43', '1', '1');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- Dumping structure for table themunchlab.set_order_detail
DROP TABLE IF EXISTS `set_order_detail`;
CREATE TABLE IF NOT EXISTS `set_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assign_date_time` varchar(30) DEFAULT NULL,
  `assign_status` varchar(225) DEFAULT NULL,
  `delivered_date_time` varchar(30) DEFAULT NULL,
  `delivered_status` varchar(11) DEFAULT NULL,
  `dispatched_date_time` varchar(30) DEFAULT NULL,
  `dispatched_status` varchar(11) DEFAULT NULL,
  `is_assigned` varchar(11) DEFAULT NULL,
  `order_placed_date` varchar(30) DEFAULT NULL,
  `cancel_date_time` varchar(50) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `preparing_date_time` varchar(30) DEFAULT NULL,
  `preparing_status` varchar(225) DEFAULT NULL,
  `total_price` varchar(225) DEFAULT NULL,
  `latlong` varchar(155) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone_no` varchar(250) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `payment_type` varchar(225) DEFAULT NULL,
  `notes` varchar(225) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `notify` int(11) DEFAULT NULL,
  `shipping_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1=>home delivery,2=>local pickup',
  `subtotal` double DEFAULT NULL,
  `delivery_charges` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `charges_id` varchar(250) DEFAULT NULL,
  `pay_pal_paymentId` varchar(250) DEFAULT NULL,
  `pay_pal_token` varchar(250) DEFAULT NULL,
  `pay_pal_PayerID` varchar(250) DEFAULT NULL,
  `delivery_mode` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>home delivery,1=>pickup',
  `pickup_order_time` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.set_order_detail: ~0 rows (approximately)
/*!40000 ALTER TABLE `set_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_order_detail` ENABLE KEYS */;

-- Dumping structure for table themunchlab.throttle
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.throttle: ~25 rows (approximately)
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'global', NULL, '2021-02-10 05:25:04', '2021-02-10 05:25:04'),
	(2, NULL, 'ip', '127.0.0.1', '2021-02-10 05:25:04', '2021-02-10 05:25:04'),
	(3, NULL, 'global', NULL, '2021-02-10 05:26:14', '2021-02-10 05:26:14'),
	(4, NULL, 'ip', '127.0.0.1', '2021-02-10 05:26:15', '2021-02-10 05:26:15'),
	(5, 1, 'user', NULL, '2021-02-10 05:26:15', '2021-02-10 05:26:15'),
	(6, NULL, 'global', NULL, '2021-02-13 03:35:30', '2021-02-13 03:35:30'),
	(7, NULL, 'ip', '127.0.0.1', '2021-02-13 03:35:31', '2021-02-13 03:35:31'),
	(8, 1, 'user', NULL, '2021-02-13 03:35:31', '2021-02-13 03:35:31'),
	(9, NULL, 'global', NULL, '2021-02-13 03:35:47', '2021-02-13 03:35:47'),
	(10, NULL, 'ip', '127.0.0.1', '2021-02-13 03:35:48', '2021-02-13 03:35:48'),
	(11, 1, 'user', NULL, '2021-02-13 03:35:48', '2021-02-13 03:35:48'),
	(12, NULL, 'global', NULL, '2021-02-13 03:36:04', '2021-02-13 03:36:04'),
	(13, NULL, 'ip', '127.0.0.1', '2021-02-13 03:36:04', '2021-02-13 03:36:04'),
	(14, 1, 'user', NULL, '2021-02-13 03:36:04', '2021-02-13 03:36:04'),
	(15, NULL, 'global', NULL, '2021-02-13 03:36:20', '2021-02-13 03:36:20'),
	(16, NULL, 'ip', '127.0.0.1', '2021-02-13 03:36:20', '2021-02-13 03:36:20'),
	(17, 1, 'user', NULL, '2021-02-13 03:36:20', '2021-02-13 03:36:20'),
	(18, NULL, 'global', NULL, '2021-02-13 03:45:13', '2021-02-13 03:45:13'),
	(19, NULL, 'ip', '127.0.0.1', '2021-02-13 03:45:13', '2021-02-13 03:45:13'),
	(20, NULL, 'global', NULL, '2021-02-13 03:45:51', '2021-02-13 03:45:51'),
	(21, NULL, 'ip', '127.0.0.1', '2021-02-13 03:45:51', '2021-02-13 03:45:51'),
	(22, 1, 'user', NULL, '2021-02-13 03:45:51', '2021-02-13 03:45:51'),
	(23, NULL, 'global', NULL, '2021-02-13 03:46:08', '2021-02-13 03:46:08'),
	(24, NULL, 'ip', '127.0.0.1', '2021-02-13 03:46:08', '2021-02-13 03:46:08'),
	(25, 1, 'user', NULL, '2021-02-13 03:46:08', '2021-02-13 03:46:08');
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;

-- Dumping structure for table themunchlab.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `is_demo` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>demo,1=>live',
  `profile_pic` varchar(250) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `permissions` text,
  `last_login` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `user_type` enum('1','2') NOT NULL DEFAULT '2',
  `currency` varchar(250) DEFAULT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table themunchlab.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `is_demo`, `profile_pic`, `password`, `permissions`, `last_login`, `name`, `created_at`, `updated_at`, `mobile_number`, `user_type`, `currency`, `user_name`) VALUES
	(1, 'daniellecairns6@gmail.com', '1', 'FG03VI4csd1612935894.png', '$2y$12$7IExQmNxfhvY3rrwhuoL2eFOPgDeZtF6M2lPVNOe7xg7cdETpj4VS', NULL, '2021-02-23 05:25:40', 'Admin', NULL, '2021-02-23 05:25:40', '+27 71 761 8818', '1', 'ZAR - R', 'Admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
