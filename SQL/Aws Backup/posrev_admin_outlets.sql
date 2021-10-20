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
-- Table structure for table `admin_outlets`
--

DROP TABLE IF EXISTS `admin_outlets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_outlets` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `user_guid` varchar(255) NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `Barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `tin_no` varchar(255) NOT NULL,
  `tel_no` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `created_at` text NOT NULL,
  `manager_guid` varchar(255) NOT NULL,
  `MIN` varchar(255) NOT NULL,
  `MSN` varchar(255) NOT NULL,
  `PTUN` varchar(255) NOT NULL,
  `synced` varchar(50) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_outlets`
--

LOCK TABLES `admin_outlets` WRITE;
/*!40000 ALTER TABLE `admin_outlets` DISABLE KEYS */;
INSERT INTO `admin_outlets` VALUES (1,'Famous Belgian Waffles','FBW1','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','River Banks','1800','Ground Floor, Riverbanks Mall, A. Bonifacio Avenue','Barangka','934','49','0400-1235-8695-0000','JFW8E-AJMYC-43H2P-ENU4W',2,'2021-01-28 10:27:03','','0000000000','0000000000','0000000000','Unsynced'),(2,'Famous Belgian Waffles','FBW2','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','Sm City North Annex','1105','Epifanio de los Santos Avenue','Epifanio de los Santos Ave','941','49','0000-0000-0000-000','RBC6L-N72B7-2DEHT-BLQHA',2,'2021-01-28 10:41:24','','0000000000','0000000000','0000-0000-0000-000','Unsynced'),(3,'Famous Belgian Waffles','FBW3','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','Eastwood City','1110','Eastwood Avenue Bagumbayan Klosk 2, Citywalk 2 Bldg. B','Bagumbayan','941','49','0000-0000-0000-000','WZ5SM-U2W49-G5LWU-LD4BG',2,'2021-01-28 10:42:40','','0000000000','0000000000','0000-0000-0000-000','Unsynced'),(4,'Famous Belgian Waffles','FBW4','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','SM City Taytay','1920','Ground Floor, Building A, Diversion Road','Dolores','1322','66','0000-0000-0000-000','K9RAB-H7SAZ-BXAVZ-9WPKN',1,'2021-01-28 10:45:17','','0000000000','0000000000','0000-0000-0000-000','Unsynced'),(5,'Famous Belgian Waffles','FBW5','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','DEV 1','DEV 1','DEV 1','DEV 1','941','49','0000-0000-0000-000','D5RVM-KKLMV-8DADY-CBGDF',2,'2021-01-28 10:46:12','','0000000000','0000000000','0000-0000-0000-000','Unsynced'),(6,'Famous Belgian Waffles','FBW6','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','DEV 2','DEV 2','DEV 2','DEV 2','279','17','0123-9823-9873-0000','F6E8X-PV35T-CUT46-KUAMX',2,'2021-01-28 10:47:02','93e687f9-530a-9061-e849-cc332ff77279','0000000000','0000000000','0123-9823-9873-0000','Unsynced'),(7,'Famous Belgian Waffles','FBW7','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','TEST OUTLET','3000','TEST OUTLET','TEST OUTLET','29','2','000000000000','LHYE7-PTZ55-9UAEK-Q2EQ5',1,'2021-03-22 11:22:51','93e687f9-530a-9061-e849-cc332ff77279','0000000000','0000000000','000000000000','Unsynced'),(8,'Famous Belgian Waffles','FBW8','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','TEST OUTLET 2','3000','TEST OUTLET 2','TEST OUTLET 2','0','17','111111111111','7XD93-5F66D-8W9KV-93Q6W',1,'2021-03-22 11:23:42','93e687f9-530a-9061-e849-cc332ff77279','1111111111','1111111111','111111111111','Unsynced');
/*!40000 ALTER TABLE `admin_outlets` ENABLE KEYS */;
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

-- Dump completed on 2021-08-06  9:17:35
