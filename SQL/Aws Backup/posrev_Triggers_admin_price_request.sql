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
-- Table structure for table `Triggers_admin_price_request`
--

DROP TABLE IF EXISTS `Triggers_admin_price_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Triggers_admin_price_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_request_id` int(11) NOT NULL,
  `store_name` text COLLATE utf8_unicode_ci NOT NULL,
  `server_product_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `request_price` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `store_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crew_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `guid` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Triggers_admin_price_request`
--

LOCK TABLES `Triggers_admin_price_request` WRITE;
/*!40000 ALTER TABLE `Triggers_admin_price_request` DISABLE KEYS */;
INSERT INTO `Triggers_admin_price_request` VALUES (1,3,'FBW6','38','25','2021-02-01 10:55:05','1','6','AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae'),(2,1,'FBW5','38','30','2021-07-02 16:31:45','1','5','AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae');
/*!40000 ALTER TABLE `Triggers_admin_price_request` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`masteradmin`@`%`*/ /*!50003 TRIGGER `admin_request_triggers` AFTER INSERT ON `Triggers_admin_price_request` FOR EACH ROW INSERT INTO admin_price_request(`loc_request_id`, `store_name`, `server_product_id`, `request_price`, `created_at`, `active`, `store_id`, `crew_id`, `guid`, `synced`)

SELECT `loc_request_id`, `store_name`, `server_product_id`, `request_price`, `created_at`, `active`, `store_id`, `crew_id`, `guid`, 'Unsynced'
  FROM Triggers_admin_price_request
 WHERE NOT EXISTS(SELECT `loc_request_id`, `store_name`, `server_product_id`, `request_price`, `created_at`, `active`, `store_id`, `crew_id`, `guid`, `synced` FROM admin_price_request WHERE loc_request_id = Triggers_admin_price_request.loc_request_id AND store_id =  Triggers_admin_price_request.store_id AND guid = Triggers_admin_price_request.guid) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-06  9:18:14
