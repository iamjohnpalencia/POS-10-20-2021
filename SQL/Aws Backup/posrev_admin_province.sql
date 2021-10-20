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
-- Table structure for table `admin_province`
--

DROP TABLE IF EXISTS `admin_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_province` (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `active` tinyint(2) NOT NULL,
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_province`
--

LOCK TABLES `admin_province` WRITE;
/*!40000 ALTER TABLE `admin_province` DISABLE KEYS */;
INSERT INTO `admin_province` VALUES (1,'Abra',350,1),(2,'Agusan Del Norte',600,1),(3,'Agusan del Sur',600,1),(4,'Aklan',500,1),(5,'Albay',350,1),(6,'Antique',500,1),(7,'Apayao',350,1),(8,'Aurora',350,1),(9,'Basilan',600,1),(10,'Bataan',350,1),(11,'Batanes',400,1),(12,'Batangas',350,1),(13,'Benguet',350,1),(14,'Biliran',500,1),(15,'Bohol',500,1),(16,'Bukidnon',600,1),(17,'Bulacan',100,1),(18,'Cagayan',350,1),(19,'Camarines Norte',350,1),(20,'Camarines Sur',350,1),(21,'Camiguin',600,1),(22,'Capiz',500,1),(23,'Cataduanes',500,1),(24,'Cavite',350,1),(25,'Cebu',500,1),(26,'Compostela Valley',600,1),(27,'Cotabato',600,1),(28,'Davao Del Norte',600,1),(29,'Davao Del Sur',600,1),(30,'Davao Occidental',600,1),(31,'Davao Oriental',600,1),(32,'Dinagat Island',600,1),(33,'Estern Samar',500,1),(34,'Guimaras',500,1),(35,'Ifugao',350,1),(36,'locos Norte',350,1),(37,'Ilocos Sur',350,1),(38,'Iloilo',500,1),(39,'Isabela',350,1),(40,'Kalinga',350,1),(41,'La Union',350,1),(42,'Laguna',350,1),(43,'Lanao Del Norte',600,1),(44,'Lanao Del Sur',600,1),(45,'Leyte',500,1),(46,'Maguindanao',600,1),(47,'Marinduque',350,1),(48,'Masbate',350,1),(49,'Metro Manila',200,1),(50,'Misamis Occidental',600,1),(51,'Misamis Oriental',500,1),(52,'Mountain Provice',350,1),(53,'Negros Occidental',500,1),(54,'Negros Oriental',500,1),(55,'North Cotobato',600,1),(56,'Northern Samar',500,1),(57,'Nueva Ecija',350,1),(58,'Nueva Vizcaya',350,1),(59,'Occidetal Mindoro',350,1),(60,'Oriental Mindoro',350,1),(61,'Palawan',400,1),(62,'Pampanga',350,1),(63,'Pangasinan',350,1),(64,'Quezon',350,1),(65,'Quirino',350,1),(66,'Rizal',350,1),(67,'Romblon',350,1),(68,'Samar',500,1),(69,'Sarangani',600,1),(70,'Siquijor',500,1),(71,'Sorsogon',350,1),(72,'South Cotabato',600,1),(73,'Southern Leyte',500,1),(74,'Sultan Kudarat',600,1),(75,'Sulu',600,1),(76,'Surigao Del Norte',600,1),(77,'Surigao Del Sur',600,1),(78,'Tarlac',350,1),(79,'Tawi-tawi',600,1),(80,'Western Samar',500,1),(81,'Zambales',350,1),(82,'Zambaoanga Del Norte',600,1),(83,'Zamboanga Del Sur',600,1),(84,'Zamboanga Sibugay',600,1);
/*!40000 ALTER TABLE `admin_province` ENABLE KEYS */;
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

-- Dump completed on 2021-08-06  9:18:07
