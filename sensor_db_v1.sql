-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_example
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
-- Current Database: `db_example`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_example` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;

USE `db_example`;

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `sensor_id` int(50) DEFAULT NULL,
  `command_type` int(50) DEFAULT NULL,
  `command` int(50) DEFAULT NULL,
  `triggering_period` int(255) DEFAULT NULL,
  `active_time` int(255) DEFAULT NULL,
  `active_period` int(255) DEFAULT NULL,
  `bit7_switch` tinyint(1) DEFAULT NULL,
  `bit6_switch` tinyint(1) DEFAULT NULL,
  `bit5_switch` tinyint(1) DEFAULT NULL,
  `bit4_switch` tinyint(1) DEFAULT NULL,
  `bit3_switch` tinyint(1) DEFAULT NULL,
  `bit2_switch` tinyint(1) DEFAULT NULL,
  `bit1_switch` tinyint(1) DEFAULT NULL,
  `bit0_switch` tinyint(1) DEFAULT NULL,
  `data_sending_period` int(255) DEFAULT NULL,
  `command_status` tinyint(4) DEFAULT NULL,
  `rcv_code` int(50) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_id` (`sensor_id`),
  CONSTRAINT `command_ibfk_1` FOREIGN KEY (`sensor_id`) REFERENCES `sensor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cow`
--

DROP TABLE IF EXISTS `cow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cow` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `cow_id` varchar(255) DEFAULT NULL,
  `farm_id` int(50) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`farm_id`) REFERENCES farm (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cow`
--

LOCK TABLES `cow` WRITE;
/*!40000 ALTER TABLE `cow` DISABLE KEYS */;
/*!40000 ALTER TABLE `cow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cow_sensor`
--

DROP TABLE IF EXISTS `cow_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cow_sensor` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `cow_id` int(50) DEFAULT NULL,
  `sensor_id` int(50) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cow_id` (`cow_id`),
  CONSTRAINT `cow_sensor_ibfk_1` FOREIGN KEY (`cow_id`) REFERENCES `cow` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cow_sensor`
--

LOCK TABLES `cow_sensor` WRITE;
/*!40000 ALTER TABLE `cow_sensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `cow_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `farm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `farm` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `farm_name` varchar(255) DEFAULT NULL,
  `is_deleted` boolean DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farm`
--

LOCK TABLES `farm` WRITE;
/*!40000 ALTER TABLE `farm` DISABLE KEYS */;
/*!40000 ALTER TABLE `farm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `div` tinyint(1) DEFAULT NULL,
  `command_id` int(50) DEFAULT NULL,
  `sensor_uid` int(50) DEFAULT NULL,
  `sensor_data_id` int(255) DEFAULT NULL,
  `logging_type` int(50) DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `logging_msg` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_data_id` (`sensor_data_id`),
  CONSTRAINT `log_ibfk_1` FOREIGN KEY (`sensor_data_id`) REFERENCES `sensor_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor`
--

DROP TABLE IF EXISTS `sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(255) DEFAULT NULL,
  `port` int(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`owner`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor`
--

LOCK TABLES `sensor` WRITE;
/*!40000 ALTER TABLE `sensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_data`
--

DROP TABLE IF EXISTS `sensor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_data` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `sensor_id` int(50) DEFAULT NULL,
  `tick` int(255) DEFAULT NULL,
  `Acc_X` int(255) DEFAULT NULL,
  `Acc_Y` int(255) DEFAULT NULL,
  `Acc_Z` int(255) DEFAULT NULL,
  `Gyro_X` int(255) DEFAULT NULL,
  `Gyro_Y` int(255) DEFAULT NULL,
  `Gyro_Z` int(255) DEFAULT NULL,
  `temperature` int(255) DEFAULT NULL,
  `rcv_time` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sensor_id` (`sensor_id`),
  CONSTRAINT `sensor_data_ibfk_1` FOREIGN KEY (`sensor_id`) REFERENCES `sensor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_data`
--

LOCK TABLES `sensor_data` WRITE;
/*!40000 ALTER TABLE `sensor_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `permission` boolean DEFAULT NULL,
  `is_deleted` boolean DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-14 17:15:45
