-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: pos-cloud-rev.cnk01mqwsyxf.ap-southeast-1.rds.amazonaws.com    Database: posrev
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `admin_pos_zread_inventory`
--

DROP TABLE IF EXISTS `admin_pos_zread_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_pos_zread_inventory` (
  `zreadinv_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_zreadinv_id` int(20) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `store_id` varchar(11) NOT NULL,
  `formula_id` int(11) NOT NULL,
  `product_ingredients` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `stock_primary` double NOT NULL,
  `stock_secondary` double NOT NULL,
  `stock_no_of_servings` double NOT NULL,
  `stock_status` int(11) NOT NULL,
  `critical_limit` int(11) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `created_at` text NOT NULL,
  `crew_id` varchar(50) NOT NULL,
  `server_date_modified` text NOT NULL,
  `server_inventory_id` int(11) NOT NULL,
  `zreading` text NOT NULL,
  PRIMARY KEY (`zreadinv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_pos_zread_inventory`
--

LOCK TABLES `admin_pos_zread_inventory` WRITE;
/*!40000 ALTER TABLE `admin_pos_zread_inventory` DISABLE KEYS */;
INSERT INTO `admin_pos_zread_inventory` VALUES (1,1,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-01 09:24:58','0','N/A',1,'2021-01-30'),(2,64,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-01 09:25:01','0','N/A',1,'2021-01-31'),(3,127,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-01 09:25:04','0','N/A',1,'2021-02-01'),(4,1,1,'1',0,'Famous Mix','FMIX',11.333333,169.999995,169.999995,1,20,'f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2021-01-30 16:42:40','0','N/A',1,'2021-01-29'),(5,64,1,'1',0,'Famous Mix','FMIX',11.333333,169.999995,169.999995,1,20,'f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2021-01-30 16:46:39','0','N/A',1,'2021-01-30'),(6,190,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-02 08:20:08','0','N/A',1,'2021-02-02'),(7,253,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-05 07:53:20','0','N/A',1,'2021-02-03'),(8,316,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-05 07:53:23','0','N/A',1,'2021-02-04'),(9,379,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-05 07:53:26','0','N/A',1,'2021-02-05'),(10,1,1,'2',0,'Famous Mix','FMIX',0,0,0,1,20,'f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2021-02-13 21:05:47','0','N/A',1,'2021-02-13'),(11,1,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 15:49:53','0','N/A',1,'2021-02-02'),(12,64,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 15:50:02','0','N/A',1,'2021-02-03'),(13,127,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 15:50:28','0','N/A',1,'2021-02-04'),(14,190,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 15:50:32','0','N/A',1,'2021-02-05'),(15,253,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 15:50:36','0','N/A',1,'2021-02-06'),(16,316,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 15:50:39','0','N/A',1,'2021-02-07'),(17,379,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 15:50:43','0','N/A',1,'2021-02-08'),(18,442,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-15 17:28:08','0','N/A',1,'2021-02-15'),(19,442,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 10:18:56','0','N/A',1,'2021-02-06'),(20,505,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 10:18:59','0','N/A',1,'2021-02-07'),(21,568,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-08 10:19:03','0','N/A',1,'2021-02-08'),(22,631,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-11 09:28:23','0','N/A',1,'2021-02-09'),(23,694,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-11 09:28:26','0','N/A',1,'2021-02-10'),(24,757,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-11 09:28:29','0','N/A',1,'2021-02-11'),(25,820,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-13 14:43:30','0','N/A',1,'2021-02-12'),(26,883,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-13 14:43:32','0','N/A',1,'2021-02-13'),(27,946,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-15 10:50:15','0','N/A',1,'2021-02-14'),(28,1009,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-15 10:50:18','0','N/A',1,'2021-02-15'),(29,1072,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-16 10:41:58','0','N/A',1,'2021-02-16'),(30,1135,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-17 12:23:03','0','N/A',1,'2021-02-17'),(31,1198,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-18 15:11:57','0','N/A',1,'2021-02-18'),(32,1261,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-19 09:29:54','0','N/A',1,'2021-02-19'),(33,1324,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-23 09:23:44','0','N/A',1,'2021-02-23'),(34,1387,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-24 09:45:30','0','N/A',1,'2021-02-24'),(35,1450,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-26 11:24:04','0','N/A',1,'2021-02-25'),(36,1513,1,'6',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-03-02 09:33:20','0','N/A',1,'2021-03-02'),(37,505,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-03-11 11:32:08','0','N/A',1,'2021-03-11'),(38,568,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-03-19 08:21:14','0','N/A',1,'2021-03-19'),(39,631,1,'5',0,'Famous Mix','FMIX',0,0,0,1,20,'8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-07-02 16:29:15','0','N/A',1,'2021-07-02');
/*!40000 ALTER TABLE `admin_pos_zread_inventory` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-06  9:18:28
