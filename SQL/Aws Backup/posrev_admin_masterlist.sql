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
-- Table structure for table `admin_masterlist`
--

DROP TABLE IF EXISTS `admin_masterlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_masterlist` (
  `masterlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `masterlist_username` varchar(255) NOT NULL,
  `masterlist_password` varchar(255) NOT NULL,
  `client_ipadd` varchar(50) NOT NULL,
  `client_guid` varchar(255) NOT NULL,
  `client_product_key` varchar(255) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `client_store_id` int(11) NOT NULL,
  PRIMARY KEY (`masterlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_masterlist`
--

LOCK TABLES `admin_masterlist` WRITE;
/*!40000 ALTER TABLE `admin_masterlist` DISABLE KEYS */;
INSERT INTO `admin_masterlist` VALUES (1,'retail','password2020','','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','JFW8E-AJMYC-43H2P-ENU4W','4',1,'2021-01-28 02:27:45',1),(2,'napoleon','password2020','','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','F6E8X-PV35T-CUT46-KUAMX','2',1,'2021-01-29 02:03:15',6),(3,'napoleon','password2020','','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','D5RVM-KKLMV-8DADY-CBGDF','2',1,'2021-02-01 07:27:14',5),(4,'retail','password2020','','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','WZ5SM-U2W49-G5LWU-LD4BG','4',1,'2021-02-11 05:59:07',3),(5,'retail','password2020','','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','RBC6L-N72B7-2DEHT-BLQHA','4',1,'2021-02-12 06:09:26',2);
/*!40000 ALTER TABLE `admin_masterlist` ENABLE KEYS */;
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

-- Dump completed on 2021-08-06  9:17:41
