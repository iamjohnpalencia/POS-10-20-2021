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
-- Table structure for table `admin_product_formula_org`
--

DROP TABLE IF EXISTS `admin_product_formula_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_product_formula_org` (
  `server_formula_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_ingredients` varchar(255) NOT NULL,
  `primary_unit` varchar(50) NOT NULL,
  `primary_value` varchar(50) NOT NULL,
  `secondary_unit` varchar(50) NOT NULL,
  `secondary_value` varchar(50) NOT NULL,
  `serving_unit` varchar(50) NOT NULL,
  `serving_value` varchar(50) NOT NULL,
  `no_servings` varchar(250) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `date_modified` text NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `origin` varchar(50) NOT NULL,
  PRIMARY KEY (`server_formula_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_product_formula_org`
--

LOCK TABLES `admin_product_formula_org` WRITE;
/*!40000 ALTER TABLE `admin_product_formula_org` DISABLE KEYS */;
INSERT INTO `admin_product_formula_org` VALUES (1,'Famous Mix','case','1','pack(s)','15','pack(s)','1','15',1,'2020-07-06 20:53:11',0.00,'Server'),(2,'Famous Batter','Set/Batch','1','grams','1950','grams','93','20.96774193548387',1,'2020-07-06 20:53:11',8.62,'Server'),(3,'Chocolate','kg','1','grams','1000','grams','25','40',1,'2020-07-06 20:53:11',5.60,'Server'),(4,'Peanut Butter','kg','1','grams','1000','grams','25','40',1,'2020-07-06 20:53:11',5.50,'Server'),(5,'Hazelnut','pack(s)','1','grams','3000','grams','22','136.3636363636364',1,'2020-07-06 20:53:11',9.71,'Server'),(6,'Custard','pack(s)','1','grams','1000','grams','30','33.33333333333333',1,'2020-07-06 20:53:11',6.21,'Server'),(7,'Caramel Syrup','pack(s)','1','grams','1000','grams','20','50',1,'2020-07-06 20:53:11',3.30,'Server'),(8,'Maple Syrup','kg','1','grams','1000','grams','20','50',1,'2020-07-06 20:53:11',2.40,'Server'),(9,'Blueberry','kg','1','grams','1000','grams','25','40',1,'2020-07-06 20:53:11',7.05,'Server'),(10,'Strawberry','can','1','grams','610','grams','25','24.4',1,'2020-07-06 20:53:11',7.42,'Server'),(11,'Mango Peach','can','1','grams','630','grams','30','21',1,'2020-07-06 20:53:11',8.57,'Server'),(12,'Cream Cheese','block','1','grams','2000','grams','22','90.90909090909091',1,'2020-07-06 20:53:11',7.80,'Server'),(13,'Arla Cheddar Cheese','pack(s)','1','piece(s)','84','piece(s)','1','84',1,'2020-12-22 11:12:23',5.54,'Server'),(14,'Regular Ham','pack(s)','1','piece(s)','8','piece(s)','1','8',1,'2020-07-06 20:53:11',6.88,'Server'),(15,'Chicken Ham','pack(s)','1','piece(s)','8','piece(s)','1','8',1,'2020-07-06 20:53:11',6.88,'Server'),(16,'Garlic Dip Mix','sachet(s)','1','grams','25','grams','25','1',1,'2020-07-06 20:53:11',0.00,'Server'),(17,'Vegetable Oil (Health Plus)','kg','1','grams','1000','grams','60','16.66666666666667',1,'2020-07-06 20:53:11',0.00,'Server'),(18,'Famous Blends Coffee','pack(s)','1','sachet(s)','15','sachet(s)','1','15',1,'2020-07-28 15:07:23',21.93,'Server'),(19,'Chekhup Choco Drink Mix','pack(s)','1','sachet(s)','12','sachet(s)','1','12',1,'2020-07-06 20:53:11',0.00,'Server'),(20,'Famous Sugar Syrup (1gallon)','gallon','1','grams','4600','grams','30','153.3333333333333',1,'2020-07-06 20:53:11',0.00,'Server'),(21,'French Butter','pack(s)','1','slice(s)','24','slice(s)','1','24',1,'2020-07-06 20:53:11',0.00,'Server'),(22,'Famous Iced Mix (200g)','pack(s)','1','grams','200','grams','25','8',1,'2020-07-06 20:53:11',12.23,'Server'),(23,'Famous Iced Mix (100g)','pack(s)','1','grams','100','grams','12.5','8',1,'2020-07-06 20:53:11',0.00,'Server'),(24,'Famous Iced Mix (50g)','pack(s)','1','grams','50','grams','6.25','8',1,'2020-07-06 20:53:11',0.00,'Server'),(25,'Famous Iced Tea (200g) ','pack(s)','1','grams','200','grams','25','8',1,'2020-07-06 20:53:11',0.00,'Server'),(26,'Famous Iced Tea (100g) ','pack(s)','1','grams','100','grams','12.5','8',1,'2020-07-06 20:53:11',0.00,'Server'),(27,'Famous Iced Tea (50g) ','pack(s)','1','grams','50','grams','6.25','8',1,'2020-07-06 20:53:11',0.00,'Server'),(28,'Coffee Beans (80g)','pack(s)','1','grams','400','grams','55','7.272727272727273',1,'2020-07-06 20:53:11',0.00,'Server'),(29,'Egg','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',5.00,'Server'),(30,'Banana','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',10.00,'Server'),(31,'Oreo','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',10.00,'Server'),(32,'Century Tuna','can','1','grams','420','grams','420','1',1,'2021-02-01 16:12:51',0.00,'Server'),(33,'Butter','kg','1','grams','1000','grams','112','8.928571428571429',1,'2020-07-13 10:07:24',0.00,'Server'),(34,'Crushed Pineapple','can','1','grams','227','grams','227','1',1,'2021-02-01 16:13:49',0.00,'Server'),(35,'Swift Premium Corned Beef','can','1','grams','210','grams','40','5.25',1,'2020-07-06 20:53:11',3.68,'Server'),(36,'Water','Set/Batch','1','grams','865','grams','865','1',1,'2020-07-06 20:53:11',10.00,'Server'),(37,'Mayo (220g)','kg','1','grams','1000','grams','220','4.545454545454545',1,'2020-07-06 20:53:11',6.21,'Server'),(38,'Mayo (125g)','kg','1','grams','1000','grams','125','6.666666666666667',1,'2021-02-04 01:33:13',11.00,'Server'),(39,'Hawaiian Spread','Set/Batch','1','grams','267','grams','27','9.888888',1,'2021-02-01 16:03:08',0.00,'Server'),(40,'Tuna Garlic Ranch Spread','Set/Batch','1','grams','798','grams','27','29.555555',1,'2021-02-01 16:00:23',0.00,'Server'),(41,'Iced Coffee Cups','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',0.00,'Server'),(42,'Hot Coffee Cups','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',0.00,'Server'),(43,'Mayo (10g)','kg','1','grams','1000','grams','10','100',1,'2020-07-06 20:53:11',0.00,'Server'),(44,'Wrapper','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',0.00,'Server'),(45,'Sugar Packets','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',0.00,'Server'),(46,'Creamer Packets','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',0.00,'Server'),(47,'Hot Coffee Lids','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',0.00,'Server'),(48,'Iced Coffee Lids','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',0.00,'Server'),(49,'Marshmallow ','kg','1','grams','1000','grams','20','50',1,'2020-07-06 20:53:11',0.00,'Server'),(50,'Grahams','pack(s)','1','grams','200','grams','10','20',1,'2020-07-06 20:53:11',0.00,'Server'),(51,'Famous Sugar Syrup (30grams)','sachet(s)','1','grams','30','grams','30','1',1,'2020-07-06 20:53:11',0.00,'Server'),(52,'Bottled Water','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',0.00,'Server'),(53,'Extra Packaging','piece(s)','1','piece(s)','1','piece(s)','1','1',1,'2020-07-06 20:53:11',0.00,'Server'),(54,'Cocoa','kg','1','grams','1000','grams','140','7.142857142857143',1,'2020-07-14 16:07:20',0.00,'Server'),(55,'Brownie Mix','Set/Batch','1','grams','2165','grams','90.20833333333333','24',1,'2020-07-13 10:07:19',0.00,'Server'),(56,'Maple Syrup(50g)','kg','1','grams','1000','grams','50','20',1,'2020-07-23 15:07:04',0.00,'Server'),(57,'Cream Cheese(50g)','block','1','grams','2000','grams','50','40',1,'2020-07-23 15:07:09',0.00,'Server'),(58,'Caramel Syrup(50g)','pack(s)','1','grams','1000','grams','50','20',1,'2020-07-23 15:07:13',0.00,'Server'),(59,'Blue Berry(50g)','kg','1','grams','1000','grams','50','20',1,'2020-07-23 15:07:14',1.00,'Server'),(60,'Hazelnut(50g)','pack(s)','1','grams','3000','grams','50','60',1,'2020-07-23 15:07:15',0.00,'Server'),(61,'Strawberry(50g)','case','1','grams','610','grams','50','12.2',1,'2020-07-23 15:07:17',0.00,'Server'),(62,'Famous Coffee Blends(1 sachet)','sachet(s)','1','sachet(s)','1','sachet(s)','1','1',1,'2020-07-28 15:07:25',0.00,'Server'),(63,'Jelly','pack(s)','1','grams','2460','grams','30','82',1,'2020-07-30 13:07:20',0.00,'Server');
/*!40000 ALTER TABLE `admin_product_formula_org` ENABLE KEYS */;
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

-- Dump completed on 2021-08-06  9:17:48
