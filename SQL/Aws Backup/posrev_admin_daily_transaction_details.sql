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
-- Table structure for table `admin_daily_transaction_details`
--

DROP TABLE IF EXISTS `admin_daily_transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_daily_transaction_details` (
  `details_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_details_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_sku` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `crew_id` varchar(50) NOT NULL,
  `transaction_number` varchar(255) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `created_at` text NOT NULL,
  `guid` varchar(255) NOT NULL,
  `store_id` varchar(50) NOT NULL,
  `total_cost_of_goods` decimal(11,2) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `zreading` text NOT NULL,
  `transaction_type` text NOT NULL,
  PRIMARY KEY (`details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_daily_transaction_details`
--

LOCK TABLES `admin_daily_transaction_details` WRITE;
/*!40000 ALTER TABLE `admin_daily_transaction_details` DISABLE KEYS */;
INSERT INTO `admin_daily_transaction_details` VALUES (1,1,67,'SBCC','Strawberry CreamC',1,65.00,65.00,'AD-0001','21280114203821',1,'2021-01-28 14:34:46','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1',0.00,'Perfect Combination','2021-01-28','Walk-In'),(2,2,18,'XOCUS','Chocolate Custard',1,60.00,60.00,'AD-0001','21280114203821',1,'2021-01-28 14:34:46','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1',0.00,'Perfect Combination','2021-01-28','Walk-In'),(3,3,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21280114583021',1,'2021-01-28 15:07:07','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1',0.00,'Simply Perfect','2021-01-28','Walk-In'),(4,1,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21290110044521',1,'2021-01-29 10:05:09','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-01-29','Walk-In'),(5,2,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21010209231321',1,'2021-02-01 09:25:11','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-01','Walk-In'),(6,1,10,'MP','Mango Peach',2,50.00,100.00,'FBW1-6433','21300116231921',1,'2021-01-30 16:48:12','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1',34.38,'Simply Perfect','2021-01-30','Walk-In'),(7,2,37,'FBXO','Famous Blend Chocolate',1,55.00,55.00,'FBW1-6433','21300116481621',1,'2021-01-30 16:48:52','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1',0.00,'Famous Blends','2021-01-30','Walk-In'),(8,3,60,'IFBXO','Iced Famous Blend Choco',1,65.00,65.00,'FBW1-6433','21300116481621',1,'2021-01-30 16:48:52','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1',0.00,'Famous Blends','2021-01-30','Walk-In'),(9,3,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21010216385621',1,'2021-02-01 16:39:23','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-01','Walk-In'),(10,4,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21010216433421',1,'2021-02-01 16:44:09','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-01','Walk-In'),(11,5,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21010216441221',1,'2021-02-01 16:44:35','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-01','Walk-In'),(12,6,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21050207530621',1,'2021-02-05 07:53:36','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-05','Walk-In'),(13,7,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21050207594221',1,'2021-02-05 07:59:48','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-05','Walk-In'),(14,8,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21050208515121',3,'2021-02-05 08:58:39','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-05','Representation Expenses'),(15,1,1,'P','Plain Waffle',1,35.00,35.00,'FBW2-9647','21120214193221',1,'2021-02-12 14:21:07','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-12','Walk-In'),(16,2,1,'P','Plain Waffle',1,35.00,35.00,'FBW2-9647','21120214211021',1,'2021-02-12 14:23:16','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-12','GCash'),(17,3,3,'XO','Chocolate',1,45.00,45.00,'FBW2-9647','21120214211021',1,'2021-02-12 14:23:16','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-12','GCash'),(18,4,9,'CUS','Custard',1,50.00,50.00,'FBW2-9647','21120214211021',1,'2021-02-12 14:23:16','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-12','GCash'),(19,5,10,'MP','Mango Peach',1,50.00,50.00,'FBW2-9647','21120214211021',1,'2021-02-12 14:23:16','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-12','GCash'),(20,6,10,'MP','Mango Peach',1,50.00,60.00,'FBW2-9647','21120214231821',1,'2021-02-12 14:31:02','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-12','Walk-In'),(21,7,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21130221045021',1,'2021-02-13 21:06:05','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-13','Walk-In'),(22,8,11,'HZ','Hazel nut',1,55.00,55.00,'AD-0001','21130221045021',1,'2021-02-13 21:06:05','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-13','Walk-In'),(23,9,9,'CUS','Custard',1,50.00,50.00,'AD-0001','21130221060821',1,'2021-02-13 21:06:21','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-13','Walk-In'),(24,10,9,'CUS','Custard',1,50.00,50.00,'AD-0001','21130221062321',1,'2021-02-13 21:06:56','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2',0.00,'Simply Perfect','2021-02-13','Walk-In'),(25,1,9,'CUS','Custard',1,50.00,50.00,'AD-0001','21240209505521',1,'2021-02-24 09:51:41','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-24','Walk-In'),(26,2,10,'MP','Mango Peach',1,50.00,50.00,'AD-0001','21240209505521',1,'2021-02-24 09:51:41','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-24','Walk-In'),(27,3,11,'HZ','Hazel nut',1,55.00,55.00,'AD-0001','21240209505521',1,'2021-02-24 09:51:41','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-02-24','Walk-In'),(28,4,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21020312103621',1,'2021-03-02 12:10:46','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-03-02','Walk-In'),(29,5,3,'XO','Chocolate',1,45.00,45.00,'AD-0001','21020312104921',1,'2021-03-02 12:10:55','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6',0.00,'Simply Perfect','2021-03-02','Registered'),(30,1,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21110311325421',1,'2021-03-11 11:37:19','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-03-11','Walk-In'),(31,2,5,'PB','Peanut Butter',1,45.00,45.00,'AD-0001','21110311385521',1,'2021-03-11 11:41:21','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-03-11','Walk-In'),(32,3,9,'CUS','Custard',2,50.00,100.00,'AD-0001','21110311414321',1,'2021-03-11 11:44:07','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',29.66,'Simply Perfect','2021-03-11','Walk-In'),(33,4,10,'MP','Mango Peach',3,50.00,150.00,'AD-0001','21110311414321',1,'2021-03-11 11:44:07','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',51.57,'Simply Perfect','2021-03-11','Walk-In'),(34,5,8,'BB','Blueberry',2,50.00,100.00,'AD-0001','21110311414321',1,'2021-03-11 11:44:07','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',31.34,'Simply Perfect','2021-03-11','Walk-In'),(35,6,7,'SB','Strawberry',1,50.00,50.00,'AD-0001','21110311414321',1,'2021-03-11 11:44:07','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-03-11','Walk-In'),(36,7,13,'FB/MPL','French Butter and Mapple Syrup',2,50.00,100.00,'AD-0001','21110311414321',1,'2021-03-11 11:44:07','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',22.04,'Perfect Combination','2021-03-11','Walk-In'),(37,8,12,'CC','Cream Cheese',1,55.00,55.00,'AD-0001','21110311414321',1,'2021-03-11 11:44:07','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-03-11','Walk-In'),(38,9,5,'PB','Peanut Butter',1,45.00,45.00,'AD-0001','21190308203321',1,'2021-03-19 08:21:22','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-03-19','Walk-In'),(39,1,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21190309065821',1,'2021-03-19 09:07:33','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-03-19','Walk-In'),(40,2,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21190309081021',1,'2021-03-19 09:08:16','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-03-19','Walk-In'),(41,3,3,'XO','Chocolate',1,45.00,45.00,'AD-0001','21190309083621',1,'2021-03-19 09:09:01','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-03-19','Walk-In'),(42,4,1,'P','Plain Waffle',1,35.00,35.00,'AD-0001','21020716275021',1,'2021-07-02 16:32:39','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-07-02','Walk-In'),(43,5,4,'C','Cheddar Cheese',1,45.00,55.00,'AD-0001','21020716275021',1,'2021-07-02 16:32:39','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','5',0.00,'Simply Perfect','2021-07-02','Walk-In');
/*!40000 ALTER TABLE `admin_daily_transaction_details` ENABLE KEYS */;
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

-- Dump completed on 2021-08-06  9:18:25
