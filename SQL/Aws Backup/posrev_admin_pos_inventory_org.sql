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
-- Table structure for table `admin_pos_inventory_org`
--

DROP TABLE IF EXISTS `admin_pos_inventory_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_pos_inventory_org` (
  `server_inventory_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_formula_id` int(11) NOT NULL,
  `product_ingredients` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `stock_primary` double NOT NULL,
  `stock_secondary` double NOT NULL,
  `stock_no_of_servings` double NOT NULL,
  `stock_status` int(11) NOT NULL,
  `critical_limit` int(11) NOT NULL,
  `date_modified` text NOT NULL,
  `main_inventory_id` int(11) NOT NULL,
  `origin` text NOT NULL,
  PRIMARY KEY (`server_inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_pos_inventory_org`
--

LOCK TABLES `admin_pos_inventory_org` WRITE;
/*!40000 ALTER TABLE `admin_pos_inventory_org` DISABLE KEYS */;
INSERT INTO `admin_pos_inventory_org` VALUES (1,1,'Famous Mix','FMIX',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(2,2,'Famous Batter','FBATTER',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(3,3,'Chocolate','XO',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(4,4,'Peanut Butter','PB',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(5,5,'Hazelnut','HZ',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(6,6,'Custard','CSTARD',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(7,7,'Caramel Syrup','CARSYRP',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(8,8,'Maple Syrup','MSYRUP',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(9,9,'Blueberry','BB',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(10,10,'Strawberry','SB',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(11,11,'Mango Peach','MP',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(12,12,'Cream Cheese','CC',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(13,13,'Arla Cheddar Cheese','ACC',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(14,14,'Regular Ham','HM',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(15,15,'Chicken Ham','CHICKHM',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(16,16,'Garlic Dip Mix','GARLCPWDER',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(17,17,'Vegetable Oil (Health Plus)','VOIL',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(18,18,'Famous Blends Coffee','FBC1PK',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(19,19,'Chekhup Choco Drink Mix','CHKHPXO',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(20,20,'Famous Sugar Syrup (1gallon)','SSYRUP1GAL',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(21,21,'French Butter','FBUTTER',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(22,22,'Famous Iced Mix (200g)','FIMX200',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(23,23,'Famous Iced Mix (100g)','FIMX100',0,0,0,1,20,'2020-08-17 10:36:01',22,'Server'),(24,24,'Famous Iced Mix (50g)','FIMX50',0,0,0,1,20,'2020-08-17 10:36:01',22,'Server'),(25,25,'Famous Iced Tea (200g) ','FITEA200',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(26,26,'Famous Iced Tea (100g) ','FITEA100',0,0,0,1,20,'2020-08-17 10:36:01',25,'Server'),(27,27,'Famous Iced Tea (50g) ','FITEA50',0,0,0,1,20,'2020-08-17 10:36:01',25,'Server'),(28,28,'Coffee Beans (80g)','CBEANS80',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(29,29,'Egg','EGG',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(30,30,'Banana','BNN',0,0,0,1,30,'2020-08-17 10:36:01',0,'Server'),(31,31,'Oreo','OREO',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(32,32,'Century Tuna','CENTRTUN',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(33,33,'Butter','BUTTER',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(34,34,'Crushed Pineapple','PINEAPPLENW',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(35,35,'Swift Premium Corned Beef','SWIFTCBEEF',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(36,36,'Water','WTR',0,0,0,1,10,'2020-08-17 10:36:01',0,'Server'),(37,37,'Mayo (220g)','MAYO220',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(38,38,'Mayo (150g)','MAYO150',0,0,0,1,20,'2020-08-17 10:36:02',37,'Server'),(39,39,'Hawaiian Spread','HWSPRD',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(40,40,'Tuna Garlic Ranch Spread','TRSPRD',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(41,41,'Iced Coffee Cups','ICUP',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(42,42,'Hot Coffee Cups','HCUP',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(43,43,'Mayo (10g)','MAYO10',0,0,0,1,100,'2020-08-17 10:36:01',37,'Server'),(44,44,'Wrapper','WRAP',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(45,45,'Sugar Packets','SUGAR',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(46,46,'Creamer Packets','CREAMER',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(47,47,'Hot Coffee Lids','HLID',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(48,48,'Iced Coffee Lids','ILID',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(49,49,'Marshmallow ','MARSMLOW',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(50,50,'Grahams','GRHAM',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(51,51,'Famous Sugar Syrup (30grams)','SSYRUP30GRAMS',0,0,0,1,20,'2020-08-17 10:36:01',20,'Server'),(52,52,'Bottled Water','BTLW',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(53,53,'Extra Packaging','EPACK',0,0,0,1,100,'2020-08-17 10:36:01',0,'Server'),(54,54,'Cocoa','COCOA',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(55,55,'Brownie Mix','BN',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(56,56,'Maple Syrup(50g)','MSYRUP50',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(57,57,'Cream Cheese(50g)','CC50',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(58,58,'Caramel Syrup(50g)','CARSYRP50',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(59,59,'Blue Berry(50g)','BB50',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(60,60,'Hazelnut(50g)','HZ50',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(61,61,'Strawberry(50g)','SB50',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(62,62,'Famous Coffee Blends(1 sachet)','FBC1PKSACHET',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server'),(63,63,'Jelly','JELLY',0,0,0,1,20,'2020-08-17 10:36:01',0,'Server');
/*!40000 ALTER TABLE `admin_pos_inventory_org` ENABLE KEYS */;
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

-- Dump completed on 2021-08-06  9:17:42
