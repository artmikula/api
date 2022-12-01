-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.7.3-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table sensor_db.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table sensor_db.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.auth_permission: ~56 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT IGNORE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add command', 7, 'add_command'),
	(26, 'Can change command', 7, 'change_command'),
	(27, 'Can delete command', 7, 'delete_command'),
	(28, 'Can view command', 7, 'view_command'),
	(29, 'Can add cow', 8, 'add_cow'),
	(30, 'Can change cow', 8, 'change_cow'),
	(31, 'Can delete cow', 8, 'delete_cow'),
	(32, 'Can view cow', 8, 'view_cow'),
	(33, 'Can add sensor', 9, 'add_sensor'),
	(34, 'Can change sensor', 9, 'change_sensor'),
	(35, 'Can delete sensor', 9, 'delete_sensor'),
	(36, 'Can view sensor', 9, 'view_sensor'),
	(37, 'Can add user', 10, 'add_user'),
	(38, 'Can change user', 10, 'change_user'),
	(39, 'Can delete user', 10, 'delete_user'),
	(40, 'Can view user', 10, 'view_user'),
	(41, 'Can add sensor_ data', 11, 'add_sensor_data'),
	(42, 'Can change sensor_ data', 11, 'change_sensor_data'),
	(43, 'Can delete sensor_ data', 11, 'delete_sensor_data'),
	(44, 'Can view sensor_ data', 11, 'view_sensor_data'),
	(45, 'Can add log', 12, 'add_log'),
	(46, 'Can change log', 12, 'change_log'),
	(47, 'Can delete log', 12, 'delete_log'),
	(48, 'Can view log', 12, 'view_log'),
	(49, 'Can add farm', 13, 'add_farm'),
	(50, 'Can change farm', 13, 'change_farm'),
	(51, 'Can delete farm', 13, 'delete_farm'),
	(52, 'Can view farm', 13, 'view_farm'),
	(53, 'Can add cow_ sensor', 14, 'add_cow_sensor'),
	(54, 'Can change cow_ sensor', 14, 'change_cow_sensor'),
	(55, 'Can delete cow_ sensor', 14, 'delete_cow_sensor'),
	(56, 'Can view cow_ sensor', 14, 'view_cow_sensor');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table sensor_db.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.auth_user: ~5 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT IGNORE INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$320000$ucSnTIZ3TCxIpp6MUwx1C1$y2D8hFpivO2mRLFDodyYbE4v/+jqbtZyReP+1yFNFcE=', '2022-10-04 02:58:09.156077', 1, 'arthur', '', '', 'a@a.com', 1, 1, '2022-09-19 00:57:23.974235'),
	(2, 'pbkdf2_sha256$320000$9fOEhMgyzLsxru67nb98Ku$xbuwcdhGdfxxHupOfY+IubZ2WclqMu3ajtYdiwg6LZA=', NULL, 0, 'test', '', '', 'user@user.com', 0, 1, '2022-09-20 08:40:25.201101'),
	(3, 'pbkdf2_sha256$320000$UoCSHSlFOKBHSRSbYuBH2F$7VF0P9dPGllzgrwdn+b1zpsqs3Y28S4IcGnN/fEnqEU=', '2022-09-20 08:43:34.926763', 0, 'admin22', '', '', 'samsung@samsung.com', 0, 1, '2022-09-20 08:43:12.434475'),
	(4, 'pbkdf2_sha256$320000$RKS73QzDvWrqSOwQbmODiE$qNYboTSvJ3UOm8zvGhs3drR6vUlvgpeTNU8xu7CTMmI=', '2022-11-30 01:30:40.086808', 0, 'admin11', '', '', 'user@user.com', 0, 1, '2022-09-20 08:59:59.786616'),
	(5, 'pbkdf2_sha256$320000$JqAEyiSftnbOQ8yyNknIYk$cGPCVy+jyY2QTpUnWfKuGImD8IXv96F6HgfiN6TxPAU=', NULL, 0, 'arthur2', '', '', 'a@a.com', 0, 1, '2022-09-30 00:50:52.931328');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table sensor_db.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table sensor_db.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table sensor_db.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.django_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table sensor_db.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.django_content_type: ~14 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT IGNORE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'sensor', 'command'),
	(8, 'sensor', 'cow'),
	(14, 'sensor', 'cow_sensor'),
	(13, 'sensor', 'farm'),
	(12, 'sensor', 'log'),
	(9, 'sensor', 'sensor'),
	(11, 'sensor', 'sensor_data'),
	(10, 'sensor', 'user'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table sensor_db.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.django_migrations: ~21 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT IGNORE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-09-16 02:05:12.075086'),
	(2, 'auth', '0001_initial', '2022-09-16 02:05:12.539304'),
	(3, 'admin', '0001_initial', '2022-09-16 02:05:12.643196'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-16 02:05:12.650196'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-16 02:05:12.657196'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-16 02:05:12.724907'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-16 02:05:12.772616'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-09-16 02:05:12.823874'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-09-16 02:05:12.830882'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-09-16 02:05:12.875190'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-09-16 02:05:12.878190'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-16 02:05:12.887189'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-09-16 02:05:12.913191'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-16 02:05:12.942192'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-09-16 02:05:12.989380'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-09-16 02:05:12.995243'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-16 02:05:13.024339'),
	(18, 'sensor', '0001_initial', '2022-09-16 02:05:13.547308'),
	(19, 'sessions', '0001_initial', '2022-09-16 02:05:13.591175'),
	(20, 'sensor', '0002_alter_sensor_data_table', '2022-09-16 02:05:41.055093'),
	(21, 'sensor', '0003_sensor_port', '2022-09-16 08:05:22.035635'),
	(22, 'sensor', '0004_alter_farm_user_id', '2022-09-22 09:27:40.285588'),
	(23, 'farm', '0001_initial', '2022-09-30 07:27:37.940091');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table sensor_db.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.django_session: ~6 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT IGNORE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('0qs71cpf9qbvddqey7g2lbwsjw9dv1wg', '.eJxVjDsOwyAQRO9CHSE-4pcyfc6AFnYJTiKQjF1ZuXtsyUXSjea9mY1FWJca10FznJBdmWSX3y5BflE7AD6hPTrPvS3zlPih8JMOfu9I79vp_h1UGHVfW2mKV8p5MEEHYXQiROftnsmDDCWoQEkAuSIIZElIRSmyyYHGTJJ9vtMOOHA:1oantK:MmQrGwxxwDNCSuUSkwLzeoV7QISasKXsUVqaNPJccmY', '2022-10-05 00:47:06.803360'),
	('135f73wlospoeolpyg6k83ja07nfo7p3', '.eJxVjDsOwyAQRO9CHSE-4pcyfc6AFnYJTiKQjF1ZuXtsyUXSjea9mY1FWJca10FznJBdmWSX3y5BflE7AD6hPTrPvS3zlPih8JMOfu9I79vp_h1UGHVfW2mKV8p5MEEHYXQiROftnsmDDCWoQEkAuSIIZElIRSmyyYHGTJJ9vtMOOHA:1oe5Af:YqTcASa-vCRk5R4sxgQxXnvlfT-8yEYL8fLPlbKBlzI', '2022-10-14 01:50:33.536409'),
	('4cqark8zxlcsb38k1r4gg00vyjkmkz4v', '.eJxVjDsOwyAQRO9CHSE-4pcyfc6AFnYJTiKQjF1ZuXtsyUXSjea9mY1FWJca10FznJBdmWSX3y5BflE7AD6hPTrPvS3zlPih8JMOfu9I79vp_h1UGHVfW2mKV8p5MEEHYXQiROftnsmDDCWoQEkAuSIIZElIRSmyyYHGTJJ9vtMOOHA:1oa6gZ:7Q3LsB3XSzkVNnkcRcoOcXZ74I_JVu-MzvagIbtHpeI', '2022-10-03 02:39:03.250559'),
	('98tolgdf51pbu56el2z5vkuobb0lf997', '.eJxVjL0OwiAURt-F2RB-b8HR3Wcgl16QqoGktJPx3ZWkgy7f8J2T82IB962Evac1LMTOzLDT7xdxfqQ6AN2x3hqfW93WJfKh8IN2fm2UnpfD_QsU7GVkwZMlYzJM4DNFLUGRmFAoDdKg9EIlq7ww33Ua0GOyiDrr6BxZk9n7A764Nxk:1p0Bvs:SPJb2OJndiXLEHPAS7GuUgD9j-PIHpSvDwQtAv5iOVU', '2022-12-14 01:30:40.092811'),
	('aebbpmlyz8wsymune2shf7nj3drb1qmx', '.eJxVjDsOwyAQRO9CHSE-4pcyfc6AFnYJTiKQjF1ZuXtsyUXSjea9mY1FWJca10FznJBdmWSX3y5BflE7AD6hPTrPvS3zlPih8JMOfu9I79vp_h1UGHVfW2mKV8p5MEEHYXQiROftnsmDDCWoQEkAuSIIZElIRSmyyYHGTJJ9vtMOOHA:1ofWFc:0moiGjZ9PDStmIJt2rmrSCCnoYtHfA1su66nmk4ba2Q', '2022-10-18 00:57:36.808809'),
	('nr421tl15ikc3setjqhuj7fflxvtqb3t', '.eJxVjDsOwyAQRO9CHSE-4pcyfc6AFnYJTiKQjF1ZuXtsyUXSjea9mY1FWJca10FznJBdmWSX3y5BflE7AD6hPTrPvS3zlPih8JMOfu9I79vp_h1UGHVfW2mKV8p5MEEHYXQiROftnsmDDCWoQEkAuSIIZElIRSmyyYHGTJJ9vtMOOHA:1ofY8H:hSVtKEhRfcpoEyH6wPrcVGYXgYeDPxYvmcl6kiHLU90', '2022-10-18 02:58:09.164084');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table sensor_db.farm_farm
CREATE TABLE IF NOT EXISTS `farm_farm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `farm_name` varchar(32) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `farm_farm_user_id_id_455ca4dc_fk_sensor_user_id` (`user_id_id`),
  CONSTRAINT `farm_farm_user_id_id_455ca4dc_fk_sensor_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `sensor_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.farm_farm: ~0 rows (approximately)
/*!40000 ALTER TABLE `farm_farm` DISABLE KEYS */;
/*!40000 ALTER TABLE `farm_farm` ENABLE KEYS */;

-- Dumping structure for table sensor_db.sensor_command
CREATE TABLE IF NOT EXISTS `sensor_command` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `command_type` int(11) NOT NULL,
  `command` int(11) NOT NULL,
  `trigerring_period` int(11) NOT NULL,
  `active_time` int(11) NOT NULL,
  `period_time` int(11) NOT NULL,
  `bit7` tinyint(1) NOT NULL,
  `bit6` tinyint(1) NOT NULL,
  `bit5` tinyint(1) NOT NULL,
  `bit4` tinyint(1) NOT NULL,
  `bit3` tinyint(1) NOT NULL,
  `bit2` tinyint(1) NOT NULL,
  `bit1` tinyint(1) NOT NULL,
  `bit0` tinyint(1) NOT NULL,
  `data_sending_period` int(11) NOT NULL,
  `command_status` int(11) NOT NULL,
  `rcv_code` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `sensor_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_command_sensor_id_id_8d3c77e4_fk_sensor_sensor_id` (`sensor_id_id`),
  CONSTRAINT `sensor_command_sensor_id_id_8d3c77e4_fk_sensor_sensor_id` FOREIGN KEY (`sensor_id_id`) REFERENCES `sensor_sensor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.sensor_command: ~6 rows (approximately)
/*!40000 ALTER TABLE `sensor_command` DISABLE KEYS */;
INSERT IGNORE INTO `sensor_command` (`id`, `command_type`, `command`, `trigerring_period`, `active_time`, `period_time`, `bit7`, `bit6`, `bit5`, `bit4`, `bit3`, `bit2`, `bit1`, `bit0`, `data_sending_period`, `command_status`, `rcv_code`, `is_deleted`, `create_time`, `update_time`, `delete_time`, `sensor_id_id`) VALUES
	(1, 1, 2, 151, 12, 123, 1, 0, 1, 0, 1, 0, 1, 0, 15315, 0, 12, 0, '2022-09-19 14:46:51.000000', '2022-09-19 14:46:59.000000', '2022-09-19 14:46:59.000000', 1),
	(2, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 4564165, 3, 11, 1, '2022-09-20 01:25:03.516586', '2022-09-20 01:25:03.516586', '2022-09-20 01:25:03.516586', 1),
	(3, 45, 156, 11, 221, 312, 1, 0, 0, 1, 0, 0, 1, 0, 1132, 2, 435, 0, '2022-09-21 09:26:21.752813', '2022-09-21 09:26:21.752813', '2022-09-21 09:26:21.752813', 2),
	(4, 50, 121, 31, 1, 131, 0, 1, 0, 0, 1, 0, 0, 0, 12133, 1, 40560465, 0, '2022-09-22 08:41:16.528488', '2022-09-22 08:41:16.528488', '2022-09-22 08:41:16.528488', 2),
	(5, 5000, 465, 456465, 456, 46456, 1, 0, 1, 0, 0, 1, 0, 0, 47454, 2, 4564, 1, '2022-09-26 01:26:21.081951', '2022-09-26 01:26:21.081951', '2022-09-26 01:26:21.081951', 3),
	(6, 44, 454, 64, 654, 654, 1, 0, 1, 0, 1, 0, 0, 0, 4564, 1, 232, 1, '2022-09-27 02:42:43.676704', '2022-09-27 02:42:43.676704', '2022-09-27 02:42:43.676704', 6);
/*!40000 ALTER TABLE `sensor_command` ENABLE KEYS */;

-- Dumping structure for table sensor_db.sensor_cow
CREATE TABLE IF NOT EXISTS `sensor_cow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cow_id` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `farm_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_cow_farm_id_id_9ff2289b_fk_sensor_farm_id` (`farm_id_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.sensor_cow: ~10 rows (approximately)
/*!40000 ALTER TABLE `sensor_cow` DISABLE KEYS */;
INSERT IGNORE INTO `sensor_cow` (`id`, `cow_id`, `is_deleted`, `create_time`, `update_time`, `delete_time`, `farm_id_id`) VALUES
	(1, '12a', 0, '2022-09-22 05:20:44.641125', '2022-09-22 05:20:44.641125', '2022-09-22 05:20:44.641125', 1),
	(2, '51', 0, '2022-09-22 04:39:27.379205', '2022-09-22 04:39:27.379205', '2022-09-22 04:39:27.379205', 1),
	(3, '6', 1, '2022-09-20 01:31:21.413582', '2022-09-20 01:31:21.413582', '2022-09-20 01:31:21.413582', 1),
	(4, '1111', 1, '2022-09-20 01:43:58.530612', '2022-09-20 01:43:58.530612', '2022-09-20 01:43:58.530612', 3),
	(5, '1111', 1, '2022-09-21 07:28:35.176058', '2022-09-21 07:28:35.176058', '2022-09-21 07:28:35.176058', 1),
	(6, '150', 1, '2022-09-22 09:28:17.055410', '2022-09-22 09:28:17.055410', '2022-09-22 09:28:17.055410', 2),
	(7, '11112', 1, '2022-09-21 08:29:28.628471', '2022-09-21 08:29:28.628471', '2022-09-21 08:29:28.628471', 3),
	(8, '622', 0, '2022-09-22 04:39:03.670332', '2022-09-22 04:39:03.670332', '2022-09-22 04:39:03.670332', 4),
	(9, '7501', 1, '2022-09-22 09:28:18.175892', '2022-09-22 09:28:18.175892', '2022-09-22 09:28:18.175892', 2),
	(10, 'dssad', 0, '2022-09-22 08:12:34.774618', '2022-09-22 08:12:34.774618', '2022-09-22 08:12:34.774618', 5),
	(11, '778', 0, '2022-09-22 08:37:35.352169', '2022-09-22 08:37:35.352169', '2022-09-22 08:37:35.352169', 3),
	(12, '11112', 0, '2022-09-29 09:07:20.700207', '2022-09-29 09:07:20.700207', '2022-09-29 09:07:20.700207', 1);
/*!40000 ALTER TABLE `sensor_cow` ENABLE KEYS */;

-- Dumping structure for table sensor_db.sensor_cow_sensor
CREATE TABLE IF NOT EXISTS `sensor_cow_sensor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `cow_id_id` bigint(20) NOT NULL,
  `sensor_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_cow_sensor_cow_id_id_793f988c_fk_sensor_cow_id` (`cow_id_id`),
  KEY `sensor_cow_sensor_sensor_id_id_84923af3_fk_sensor_sensor_id` (`sensor_id_id`),
  CONSTRAINT `sensor_cow_sensor_cow_id_id_793f988c_fk_sensor_cow_id` FOREIGN KEY (`cow_id_id`) REFERENCES `sensor_cow` (`id`),
  CONSTRAINT `sensor_cow_sensor_sensor_id_id_84923af3_fk_sensor_sensor_id` FOREIGN KEY (`sensor_id_id`) REFERENCES `sensor_sensor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.sensor_cow_sensor: ~13 rows (approximately)
/*!40000 ALTER TABLE `sensor_cow_sensor` DISABLE KEYS */;
INSERT IGNORE INTO `sensor_cow_sensor` (`id`, `is_deleted`, `create_time`, `update_time`, `delete_time`, `cow_id_id`, `sensor_id_id`) VALUES
	(1, 0, '2022-09-19 14:50:08.000000', '2022-09-19 14:50:08.000000', '2022-09-19 14:50:09.000000', 1, 1),
	(2, 0, '2022-09-19 08:04:38.218922', '2022-09-19 08:04:38.218922', '2022-09-19 08:04:38.218922', 1, 1),
	(3, 0, '2022-09-19 08:04:42.739917', '2022-09-19 08:04:42.739917', '2022-09-19 08:04:42.739917', 1, 5),
	(4, 1, '2022-09-30 02:03:24.051673', '2022-09-30 02:03:24.051673', '2022-09-30 02:03:24.051673', 1, 2),
	(5, 1, '2022-09-22 08:36:44.655195', '2022-09-22 08:36:44.655195', '2022-09-22 08:36:44.655195', 2, 3),
	(6, 1, '2022-09-20 01:44:06.065818', '2022-09-20 01:44:06.065818', '2022-09-20 01:44:06.065818', 2, 5),
	(7, 1, '2022-09-20 01:44:05.584300', '2022-09-20 01:44:05.584300', '2022-09-20 01:44:05.584300', 2, 5),
	(8, 1, '2022-09-20 01:27:11.186666', '2022-09-20 01:27:11.186666', '2022-09-20 01:27:11.186666', 1, 5),
	(9, 1, '2022-09-20 01:44:04.913451', '2022-09-20 01:44:04.913451', '2022-09-20 01:44:04.913451', 3, 3),
	(10, 1, '2022-09-22 08:36:43.838328', '2022-09-22 08:36:43.838328', '2022-09-22 08:36:43.838328', 3, 3),
	(11, 1, '2022-09-22 08:36:42.648173', '2022-09-22 08:36:42.648173', '2022-09-22 08:36:42.648173', 4, 5),
	(12, 1, '2022-09-22 08:36:04.703169', '2022-09-22 08:36:04.703169', '2022-09-22 08:36:04.703169', 4, 1),
	(13, 1, '2022-09-22 08:36:03.040194', '2022-09-22 08:36:03.040194', '2022-09-22 08:36:03.040194', 2, 6);
/*!40000 ALTER TABLE `sensor_cow_sensor` ENABLE KEYS */;

-- Dumping structure for table sensor_db.sensor_farm
CREATE TABLE IF NOT EXISTS `sensor_farm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `farm_name` varchar(30) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_farm_user_id_id_381370b6_fk_sensor_user_id` (`user_id_id`),
  CONSTRAINT `sensor_farm_user_id_id_381370b6_fk_sensor_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `sensor_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.sensor_farm: ~11 rows (approximately)
/*!40000 ALTER TABLE `sensor_farm` DISABLE KEYS */;
INSERT IGNORE INTO `sensor_farm` (`id`, `farm_name`, `is_deleted`, `create_time`, `update_time`, `delete_time`, `user_id_id`) VALUES
	(1, 'Yeoksam Farm2', 0, '2022-09-22 08:01:42.839508', '2022-09-22 08:01:42.839508', '2022-09-22 08:01:42.839508', 5),
	(2, 'Gangnam Style Farm', 1, '2022-09-20 02:04:05.196418', '2022-09-20 02:04:05.196418', '2022-09-20 02:04:05.196418', 1),
	(3, 'Test', 1, '2022-09-20 01:30:54.528119', '2022-09-20 01:30:54.528119', '2022-09-20 01:30:54.528119', 1),
	(4, 'Test2', 1, '2022-09-20 01:43:49.602555', '2022-09-20 01:43:49.602555', '2022-09-20 01:43:49.602555', 2),
	(5, 'Jamsil Farm', 0, '2022-09-20 02:04:12.683043', '2022-09-20 02:04:12.683043', '2022-09-20 02:04:12.683043', 2),
	(6, 'Gangnam Style Farm 2', 1, '2022-09-22 09:28:08.351398', '2022-09-22 09:28:08.351398', '2022-09-22 09:28:08.351398', 5),
	(7, 'Main Farm test', 0, '2022-09-22 08:05:29.983429', '2022-09-22 08:05:29.983429', '2022-09-22 08:05:29.983429', 3),
	(8, 'dsa', 0, '2022-09-22 08:23:41.208530', '2022-09-22 08:23:41.208530', '2022-09-22 08:23:41.208530', 3),
	(9, 'Farm Zero', 0, '2022-09-23 00:29:43.450865', '2022-09-23 00:29:43.450865', '2022-09-23 00:29:43.450865', 1),
	(10, '3', 1, '2022-09-22 08:13:15.326629', '2022-09-22 08:13:15.326629', '2022-09-22 08:13:15.326629', 4),
	(11, 'Gangnam Style Farm 3.5', 1, '2022-09-22 09:28:06.719910', '2022-09-22 09:28:06.719910', '2022-09-22 09:28:06.719910', 2),
	(12, 'Gangnam Style Farm 2', 1, '2022-09-22 09:28:05.729415', '2022-09-22 09:28:05.729415', '2022-09-22 09:28:05.729415', 6),
	(13, 'dsa', 0, '2022-09-29 09:04:54.133692', '2022-09-29 09:04:54.133692', '2022-09-29 09:04:54.133692', 3);
/*!40000 ALTER TABLE `sensor_farm` ENABLE KEYS */;

-- Dumping structure for table sensor_db.sensor_log
CREATE TABLE IF NOT EXISTS `sensor_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `div` int(11) NOT NULL,
  `logging_type` int(11) NOT NULL,
  `response_code` int(11) NOT NULL,
  `logging_msg` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `command_id_id` bigint(20) NOT NULL,
  `sensor_data_id_id` bigint(20) NOT NULL,
  `sensor_uid_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_log_command_id_id_0e531a27_fk_sensor_command_id` (`command_id_id`),
  KEY `sensor_log_sensor_data_id_id_47928bd2_fk_sensor_data_id` (`sensor_data_id_id`),
  KEY `sensor_log_sensor_uid_id_7b07cfcb_fk_sensor_sensor_id` (`sensor_uid_id`),
  CONSTRAINT `sensor_log_command_id_id_0e531a27_fk_sensor_command_id` FOREIGN KEY (`command_id_id`) REFERENCES `sensor_command` (`id`),
  CONSTRAINT `sensor_log_sensor_data_id_id_47928bd2_fk_sensor_data_id` FOREIGN KEY (`sensor_data_id_id`) REFERENCES `sensor_sensor_data` (`id`),
  CONSTRAINT `sensor_log_sensor_uid_id_7b07cfcb_fk_sensor_sensor_id` FOREIGN KEY (`sensor_uid_id`) REFERENCES `sensor_sensor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.sensor_log: ~2 rows (approximately)
/*!40000 ALTER TABLE `sensor_log` DISABLE KEYS */;
INSERT IGNORE INTO `sensor_log` (`id`, `div`, `logging_type`, `response_code`, `logging_msg`, `is_deleted`, `create_time`, `update_time`, `delete_time`, `command_id_id`, `sensor_data_id_id`, `sensor_uid_id`) VALUES
	(1, 1, 2, 12, 'testing testing', 0, '2022-09-19 14:48:58.000000', '2022-09-19 14:48:59.000000', '2022-09-19 14:49:00.000000', 1, 3, 1),
	(2, 50, 123, 12, 'another test', 0, '2022-09-20 11:07:24.000000', '2022-09-20 11:07:25.000000', '2022-09-20 11:07:25.000000', 1, 2, 3);
/*!40000 ALTER TABLE `sensor_log` ENABLE KEYS */;

-- Dumping structure for table sensor_db.sensor_sensor
CREATE TABLE IF NOT EXISTS `sensor_sensor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `ip_addr` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `port` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_sensor_owner_id_3593b444_fk_sensor_user_id` (`owner_id`),
  CONSTRAINT `sensor_sensor_owner_id_3593b444_fk_sensor_user_id` FOREIGN KEY (`owner_id`) REFERENCES `sensor_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.sensor_sensor: ~6 rows (approximately)
/*!40000 ALTER TABLE `sensor_sensor` DISABLE KEYS */;
INSERT IGNORE INTO `sensor_sensor` (`id`, `uid`, `ip_addr`, `is_deleted`, `create_time`, `update_time`, `delete_time`, `owner_id`, `port`) VALUES
	(1, '001', '192.11.11.11', 0, '2022-09-16 11:34:58.000000', '2022-09-16 11:34:58.000000', '2022-09-16 11:34:59.000000', 1, 3000),
	(2, '1121', '192.16521201.120.10', 0, '2022-09-16 07:18:01.914673', '2022-09-16 07:18:01.914673', '2022-09-16 07:18:01.914673', 1, 4000),
	(3, '121', '12.11.202.0', 0, '2022-09-16 07:18:12.835761', '2022-09-16 07:18:12.835761', '2022-09-16 07:18:12.835761', 1, 3001),
	(5, '1121', '1.1.1.1', 1, '2022-09-20 01:44:08.379572', '2022-09-20 01:44:08.379572', '2022-09-20 01:44:08.379572', 1, 1111),
	(6, '11', '1.0.0.0', 1, '2022-09-20 01:31:49.663395', '2022-09-20 01:31:49.663395', '2022-09-20 01:31:49.663395', 1, 1251),
	(7, '121', '12.11.202.0', 1, '2022-09-21 00:47:23.778386', '2022-09-21 00:47:23.778386', '2022-09-21 00:47:23.778386', 3, 5432),
	(8, '1121', '1.1.1.1', 0, '2022-09-22 08:30:10.123029', '2022-09-22 08:30:10.123029', '2022-09-22 08:30:10.123029', 1, 6000);
/*!40000 ALTER TABLE `sensor_sensor` ENABLE KEYS */;

-- Dumping structure for table sensor_db.sensor_sensor_data
CREATE TABLE IF NOT EXISTS `sensor_sensor_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tick` varchar(255) NOT NULL,
  `Acc_X` int(11) NOT NULL,
  `Acc_Y` int(11) NOT NULL,
  `Acc_Z` int(11) NOT NULL,
  `Gyro_X` int(11) NOT NULL,
  `Gyro_Y` int(11) NOT NULL,
  `Gyro_Z` int(11) NOT NULL,
  `temperature` int(11) NOT NULL,
  `battery` double NOT NULL,
  `rcv_time` datetime(6) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `sensor_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_data_sensor_id_id_3f64d1f5_fk_sensor_sensor_id` (`sensor_id_id`),
  CONSTRAINT `sensor_data_sensor_id_id_3f64d1f5_fk_sensor_sensor_id` FOREIGN KEY (`sensor_id_id`) REFERENCES `sensor_sensor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.sensor_sensor_data: ~10 rows (approximately)
/*!40000 ALTER TABLE `sensor_sensor_data` DISABLE KEYS */;
INSERT IGNORE INTO `sensor_sensor_data` (`id`, `tick`, `Acc_X`, `Acc_Y`, `Acc_Z`, `Gyro_X`, `Gyro_Y`, `Gyro_Z`, `temperature`, `battery`, `rcv_time`, `is_deleted`, `create_time`, `update_time`, `delete_time`, `sensor_id_id`) VALUES
	(1, '156456456', 45, 78, 90, 50, 48, 50, 25, 80.5, '2022-09-16 11:35:27.000000', 0, '2022-09-16 11:35:29.000000', '2022-09-16 11:35:29.000000', '2022-09-16 11:35:30.000000', 1),
	(2, '1546545465', 45, 48, 20, 8, 15, 50, 15, 10.8, '2022-09-16 11:59:38.000000', 0, '2022-09-16 11:59:39.000000', '2022-09-16 11:59:40.000000', '2022-09-16 11:59:41.000000', 1),
	(3, '12', 21, 2, 1, 21, 2, 1, 2, 1, '2022-09-16 04:28:32.768669', 0, '2022-09-16 04:28:32.768669', '2022-09-16 04:28:32.768669', '2022-09-16 04:28:32.768669', 1),
	(4, '534', 543, 543, 543, 543, 5, 4, 34, 32, '2022-09-16 04:28:49.999349', 0, '2022-09-16 04:28:49.999349', '2022-09-16 04:28:49.999349', '2022-09-16 04:28:49.999349', 1),
	(5, '11', 12, 13, 14, 15, 16, 17, 18, 19, '2022-09-16 04:42:36.032927', 0, '2022-09-16 04:42:36.032927', '2022-09-16 04:42:36.032927', '2022-09-16 04:42:36.032927', 1),
	(6, '15', 16, 17, 18, 1920, 20, 20, 10, 205, '2022-09-16 05:52:20.354195', 0, '2022-09-16 05:52:20.354195', '2022-09-16 05:52:20.354195', '2022-09-16 05:52:20.354195', 1),
	(7, '1', 2, 3, 4, 5, 8, 456, 45, 456, '2022-09-16 06:17:35.713956', 0, '2022-09-16 06:17:35.713956', '2022-09-16 06:17:35.713956', '2022-09-16 06:17:35.713956', 1),
	(8, '05', 5, 2, 1, 12, 12, 2, 12120, 12102, '2022-09-19 04:27:37.787050', 0, '2022-09-19 04:27:37.787050', '2022-09-19 04:27:37.787050', '2022-09-19 04:27:37.787050', 1),
	(9, '1', 2, 2, 3, 32, 1, 12, 12, 12, '2022-09-19 08:01:20.034808', 0, '2022-09-19 08:01:20.034808', '2022-09-19 08:01:20.034808', '2022-09-19 08:01:20.034808', 1),
	(10, '1', 2, 2, 2, 12, 121, 21, 1, 12, '2022-09-19 09:08:05.597528', 0, '2022-09-19 09:08:05.597528', '2022-09-19 09:08:05.597528', '2022-09-19 09:08:05.597528', 1);
/*!40000 ALTER TABLE `sensor_sensor_data` ENABLE KEYS */;

-- Dumping structure for table sensor_db.sensor_user
CREATE TABLE IF NOT EXISTS `sensor_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `pw` varchar(255) NOT NULL,
  `permission` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table sensor_db.sensor_user: ~6 rows (approximately)
/*!40000 ALTER TABLE `sensor_user` DISABLE KEYS */;
INSERT IGNORE INTO `sensor_user` (`id`, `user_id`, `pw`, `permission`, `is_deleted`, `create_time`, `update_time`, `delete_time`) VALUES
	(1, 'admin', 'admin', 1, 0, '2022-09-20 01:20:50.187148', '2022-09-20 01:20:50.187148', '2022-09-20 01:20:50.187148'),
	(2, 'user', 'user', 0, 0, '2022-09-20 01:20:49.740210', '2022-09-20 01:20:49.740210', '2022-09-20 01:20:49.740210'),
	(3, 'test', 'test', 1, 1, '2022-09-20 01:20:48.956032', '2022-09-20 01:20:48.956032', '2022-09-20 01:20:48.956032'),
	(4, 'testtest2', 'password', 0, 1, '2022-09-20 07:01:31.179002', '2022-09-20 07:01:31.179002', '2022-09-20 07:01:31.179002'),
	(5, 'dsad', 'dsad', 0, 1, '2022-09-22 08:48:22.270460', '2022-09-22 08:48:22.270460', '2022-09-22 08:48:22.270460'),
	(6, 'dsa', 'dsad', 1, 1, '2022-09-22 08:48:15.614458', '2022-09-22 08:48:15.614458', '2022-09-22 08:48:15.614458'),
	(7, 'alex2', 'test', 0, 0, '2022-09-23 00:30:00.289493', '2022-09-23 00:30:00.289493', '2022-09-23 00:30:00.289493'),
	(8, 'dsa', 'dsad', 0, 0, '2022-09-30 00:51:12.238125', '2022-09-30 00:51:12.238125', '2022-09-30 00:51:12.238125');
/*!40000 ALTER TABLE `sensor_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
