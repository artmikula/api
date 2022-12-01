-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sensor_db
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add command',7,'add_command'),
(26,'Can change command',7,'change_command'),
(27,'Can delete command',7,'delete_command'),
(28,'Can view command',7,'view_command'),
(29,'Can add cow',8,'add_cow'),
(30,'Can change cow',8,'change_cow'),
(31,'Can delete cow',8,'delete_cow'),
(32,'Can view cow',8,'view_cow'),
(33,'Can add sensor',9,'add_sensor'),
(34,'Can change sensor',9,'change_sensor'),
(35,'Can delete sensor',9,'delete_sensor'),
(36,'Can view sensor',9,'view_sensor'),
(37,'Can add user',10,'add_user'),
(38,'Can change user',10,'change_user'),
(39,'Can delete user',10,'delete_user'),
(40,'Can view user',10,'view_user'),
(41,'Can add sensor_ data',11,'add_sensor_data'),
(42,'Can change sensor_ data',11,'change_sensor_data'),
(43,'Can delete sensor_ data',11,'delete_sensor_data'),
(44,'Can view sensor_ data',11,'view_sensor_data'),
(45,'Can add log',12,'add_log'),
(46,'Can change log',12,'change_log'),
(47,'Can delete log',12,'delete_log'),
(48,'Can view log',12,'view_log'),
(49,'Can add farm',13,'add_farm'),
(50,'Can change farm',13,'change_farm'),
(51,'Can delete farm',13,'delete_farm'),
(52,'Can view farm',13,'view_farm'),
(53,'Can add cow_ sensor',14,'add_cow_sensor'),
(54,'Can change cow_ sensor',14,'change_cow_sensor'),
(55,'Can delete cow_ sensor',14,'delete_cow_sensor'),
(56,'Can view cow_ sensor',14,'view_cow_sensor');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(7,'sensor','command'),
(8,'sensor','cow'),
(14,'sensor','cow_sensor'),
(13,'sensor','farm'),
(12,'sensor','log'),
(9,'sensor','sensor'),
(11,'sensor','sensor_data'),
(10,'sensor','user'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2022-09-15 06:38:59.268418'),
(2,'auth','0001_initial','2022-09-15 06:38:59.728896'),
(3,'admin','0001_initial','2022-09-15 06:38:59.829407'),
(4,'admin','0002_logentry_remove_auto_add','2022-09-15 06:38:59.836407'),
(5,'admin','0003_logentry_add_action_flag_choices','2022-09-15 06:38:59.843580'),
(6,'contenttypes','0002_remove_content_type_name','2022-09-15 06:38:59.911463'),
(7,'auth','0002_alter_permission_name_max_length','2022-09-15 06:38:59.955839'),
(8,'auth','0003_alter_user_email_max_length','2022-09-15 06:38:59.999818'),
(9,'auth','0004_alter_user_username_opts','2022-09-15 06:39:00.007814'),
(10,'auth','0005_alter_user_last_login_null','2022-09-15 06:39:00.051094'),
(11,'auth','0006_require_contenttypes_0002','2022-09-15 06:39:00.055159'),
(12,'auth','0007_alter_validators_add_error_messages','2022-09-15 06:39:00.062170'),
(13,'auth','0008_alter_user_username_max_length','2022-09-15 06:39:00.086917'),
(14,'auth','0009_alter_user_last_name_max_length','2022-09-15 06:39:00.113675'),
(15,'auth','0010_alter_group_name_max_length','2022-09-15 06:39:00.158061'),
(16,'auth','0011_update_proxy_permissions','2022-09-15 06:39:00.164061'),
(17,'auth','0012_alter_user_first_name_max_length','2022-09-15 06:39:00.190092'),
(18,'sensor','0001_initial','2022-09-15 06:39:00.767797'),
(19,'sessions','0001_initial','2022-09-15 06:39:00.812345');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_command`
--

DROP TABLE IF EXISTS `sensor_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_command` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_command`
--

LOCK TABLES `sensor_command` WRITE;
/*!40000 ALTER TABLE `sensor_command` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_cow`
--

DROP TABLE IF EXISTS `sensor_cow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_cow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cow_id` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `farm_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_cow_farm_id_id_9ff2289b_fk_sensor_farm_id` (`farm_id_id`),
  CONSTRAINT `sensor_cow_farm_id_id_9ff2289b_fk_sensor_farm_id` FOREIGN KEY (`farm_id_id`) REFERENCES `sensor_farm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_cow`
--

LOCK TABLES `sensor_cow` WRITE;
/*!40000 ALTER TABLE `sensor_cow` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_cow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_cow_sensor`
--

DROP TABLE IF EXISTS `sensor_cow_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_cow_sensor` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_cow_sensor`
--

LOCK TABLES `sensor_cow_sensor` WRITE;
/*!40000 ALTER TABLE `sensor_cow_sensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_cow_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_farm`
--

DROP TABLE IF EXISTS `sensor_farm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_farm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `farm_name` varchar(30) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_farm_user_id_id_381370b6_fk_sensor_user_id` (`user_id_id`),
  CONSTRAINT `sensor_farm_user_id_id_381370b6_fk_sensor_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `sensor_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_farm`
--

LOCK TABLES `sensor_farm` WRITE;
/*!40000 ALTER TABLE `sensor_farm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_farm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_log`
--

DROP TABLE IF EXISTS `sensor_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_log` (
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
  KEY `sensor_log_sensor_data_id_id_47928bd2_fk_sensor_sensor_data_id` (`sensor_data_id_id`),
  KEY `sensor_log_sensor_uid_id_7b07cfcb_fk_sensor_sensor_id` (`sensor_uid_id`),
  CONSTRAINT `sensor_log_command_id_id_0e531a27_fk_sensor_command_id` FOREIGN KEY (`command_id_id`) REFERENCES `sensor_command` (`id`),
  CONSTRAINT `sensor_log_sensor_data_id_id_47928bd2_fk_sensor_sensor_data_id` FOREIGN KEY (`sensor_data_id_id`) REFERENCES `sensor_sensor_data` (`id`),
  CONSTRAINT `sensor_log_sensor_uid_id_7b07cfcb_fk_sensor_sensor_id` FOREIGN KEY (`sensor_uid_id`) REFERENCES `sensor_sensor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_log`
--

LOCK TABLES `sensor_log` WRITE;
/*!40000 ALTER TABLE `sensor_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_sensor`
--

DROP TABLE IF EXISTS `sensor_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_sensor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `ip_addr` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_sensor_owner_id_3593b444_fk_sensor_user_id` (`owner_id`),
  CONSTRAINT `sensor_sensor_owner_id_3593b444_fk_sensor_user_id` FOREIGN KEY (`owner_id`) REFERENCES `sensor_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_sensor`
--

LOCK TABLES `sensor_sensor` WRITE;
/*!40000 ALTER TABLE `sensor_sensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_sensor_data`
--

DROP TABLE IF EXISTS `sensor_sensor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_sensor_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tick` varchar(255) NOT NULL,
  `Acc_X` int(11) NOT NULL,
  `Acc_Y` int(11) NOT NULL,
  `Acc_Z` int(11) NOT NULL,
  `Gyro_X` int(11) NOT NULL,
  `Gyro_Y` int(11) NOT NULL,
  `Gyro_Z` int(11) NOT NULL,
  `temperature` int(11) NOT NULL,
  `rcv_time` datetime(6) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  `sensor_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_sensor_data_sensor_id_id_8e186d9b_fk_sensor_sensor_id` (`sensor_id_id`),
  CONSTRAINT `sensor_sensor_data_sensor_id_id_8e186d9b_fk_sensor_sensor_id` FOREIGN KEY (`sensor_id_id`) REFERENCES `sensor_sensor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_sensor_data`
--

LOCK TABLES `sensor_sensor_data` WRITE;
/*!40000 ALTER TABLE `sensor_sensor_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_sensor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_user`
--

DROP TABLE IF EXISTS `sensor_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) NOT NULL,
  `pw` varchar(255) NOT NULL,
  `permission` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `delete_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_user`
--

LOCK TABLES `sensor_user` WRITE;
/*!40000 ALTER TABLE `sensor_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-15 15:40:56
