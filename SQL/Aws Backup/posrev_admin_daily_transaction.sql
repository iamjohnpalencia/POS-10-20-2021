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
-- Table structure for table `admin_daily_transaction`
--

DROP TABLE IF EXISTS `admin_daily_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_daily_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_transaction_id` int(11) NOT NULL,
  `transaction_number` varchar(255) NOT NULL,
  `grosssales` decimal(11,2) NOT NULL,
  `totaldiscount` decimal(11,2) NOT NULL,
  `amounttendered` decimal(11,2) NOT NULL,
  `change` decimal(11,2) NOT NULL,
  `amountdue` decimal(11,2) NOT NULL,
  `vatablesales` decimal(11,2) NOT NULL,
  `vatexemptsales` decimal(11,2) NOT NULL,
  `zeroratedsales` decimal(11,2) NOT NULL,
  `vatpercentage` decimal(11,2) NOT NULL,
  `lessvat` decimal(11,2) NOT NULL,
  `transaction_type` varchar(50) NOT NULL,
  `discount_type` text NOT NULL,
  `totaldiscountedamount` decimal(11,2) NOT NULL,
  `si_number` int(15) NOT NULL,
  `crew_id` varchar(50) NOT NULL,
  `guid` varchar(50) NOT NULL,
  `active` varchar(2) NOT NULL,
  `store_id` varchar(11) NOT NULL,
  `created_at` text NOT NULL,
  `shift` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `zreading` text NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_daily_transaction`
--

LOCK TABLES `admin_daily_transaction` WRITE;
/*!40000 ALTER TABLE `admin_daily_transaction` DISABLE KEYS */;
INSERT INTO `admin_daily_transaction` VALUES (1,1,'21280114203821',125.00,0.00,500.00,375.00,125.00,111.61,0.00,0.00,13.39,0.00,'Walk-In','N/A',0.00,1,'AD-0001','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','1','2021-01-28 14:34:45','First Shift',2021,'2021-01-28'),(2,2,'21280114583021',35.00,0.00,50.00,15.00,35.00,31.25,0.00,0.00,3.75,0.00,'Walk-In','N/A',0.00,2,'AD-0001','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','1','2021-01-28 15:07:07','First Shift',2021,'2021-01-28'),(3,1,'21290110044521',35.00,0.00,50.00,15.00,35.00,31.25,0.00,0.00,3.75,0.00,'Walk-In','N/A',0.00,1,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-01-29 10:05:09','First Shift',2021,'2021-01-29'),(4,2,'21010209231321',35.00,0.00,40.00,5.00,35.00,31.25,0.00,0.00,3.75,0.00,'Walk-In','N/A',0.00,2,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-02-01 09:25:11','First Shift',2021,'2021-02-01'),(5,1,'21300116231921',100.00,0.00,100.00,0.00,100.00,89.29,0.00,0.00,10.71,0.00,'Walk-In','N/A',0.00,1,'FBW1-6433','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','1','2021-01-30 16:48:12','First Shift',2021,'2021-01-30'),(6,2,'21300116481621',120.00,0.00,500.00,380.00,120.00,107.14,0.00,0.00,12.86,0.00,'Walk-In','N/A',0.00,2,'FBW1-6433','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','1','2021-01-30 16:48:52','First Shift',2021,'2021-01-30'),(7,3,'21010216385621',35.00,0.00,40.00,5.00,35.00,31.25,0.00,0.00,3.75,0.00,'Walk-In','N/A',0.00,3,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-02-01 16:39:23','First Shift',2021,'2021-02-01'),(8,4,'21010216433421',35.00,0.00,40.00,5.00,35.00,31.25,0.00,0.00,3.75,0.00,'Walk-In','N/A',0.00,4,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-02-01 16:44:09','First Shift',2021,'2021-02-01'),(9,5,'21010216441221',35.00,0.00,35.00,0.00,35.00,31.25,0.00,0.00,3.75,0.00,'Walk-In','N/A',0.00,5,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-02-01 16:44:35','First Shift',2021,'2021-02-01'),(10,6,'21050207530621',35.00,0.00,40.00,5.00,35.00,31.25,0.00,0.00,3.75,0.00,'Walk-In','N/A',0.00,6,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-02-05 07:53:36','First Shift',2021,'2021-02-05'),(11,7,'21050207594221',35.00,0.00,40.00,5.00,35.00,31.25,0.00,0.00,3.75,0.00,'Walk-In','N/A',0.00,7,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-02-05 07:59:48','First Shift',2021,'2021-02-05'),(12,8,'21050208515121',35.00,0.00,40.00,5.00,35.00,31.25,0.00,0.00,3.75,0.00,'Representation Expenses','N/A',0.00,8,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','3','6','2021-02-05 08:58:38','First Shift',2021,'2021-02-05'),(13,1,'21120214193221',35.00,0.00,50.00,15.00,35.00,31.25,0.00,0.00,3.75,0.00,'Walk-In','N/A',0.00,1,'FBW2-9647','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','2','2021-02-12 14:21:07','First Shift',2021,'2021-02-12'),(14,2,'21120214211021',180.00,0.00,190.00,10.00,180.00,160.71,0.00,0.00,19.29,0.00,'GCash','N/A',0.00,2,'FBW2-9647','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','2','2021-02-12 14:23:15','First Shift',2021,'2021-02-12'),(15,3,'21120214231821',60.00,0.00,100.00,40.00,60.00,53.57,0.00,0.00,6.43,0.00,'Walk-In','N/A',0.00,3,'FBW2-9647','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','2','2021-02-12 14:31:02','First Shift',2021,'2021-02-12'),(16,4,'21130221045021',90.00,0.00,100.00,10.00,90.00,80.36,0.00,0.00,9.64,0.00,'Walk-In','N/A',0.00,4,'AD-0001','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','2','2021-02-13 21:06:05','First Shift',2021,'2021-02-13'),(17,5,'21130221060821',50.00,0.00,100.00,50.00,50.00,44.64,0.00,0.00,5.36,0.00,'Walk-In','N/A',0.00,5,'AD-0001','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','2','2021-02-13 21:06:21','First Shift',2021,'2021-02-13'),(18,6,'21130221062321',35.71,8.93,50.00,14.29,35.71,31.88,0.00,0.00,3.83,5.36,'Walk-In','Percentage(w/o vat)',50.00,6,'AD-0001','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','2','2021-02-13 21:06:56','First Shift',2021,'2021-02-13'),(19,1,'21240209505521',155.00,100.00,55.00,0.00,55.00,138.39,0.00,0.00,16.61,0.00,'Walk-In','Fix-1',155.00,1,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-02-24 09:51:41','First Shift',2021,'2021-02-24'),(20,2,'21020312103621',0.00,0.00,40.00,5.00,35.00,31.25,0.00,0.00,0.00,3.75,'Walk-In','N/A',0.00,2,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-03-02 12:10:46','First Shift',2021,'2021-03-02'),(21,3,'21020312104921',0.00,0.00,45.00,0.00,45.00,40.18,0.00,0.00,0.00,4.82,'Registered','N/A',0.00,3,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','6','2021-03-02 12:10:55','First Shift',2021,'2021-03-02'),(22,1,'21110311325421',0.00,0.00,50.00,15.00,35.00,31.25,0.00,0.00,0.00,3.75,'Walk-In','N/A',0.00,1,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','5','2021-03-11 11:37:19','First Shift',2021,'2021-03-11'),(23,2,'21110311385521',45.00,45.00,0.00,0.00,0.00,40.18,0.00,0.00,4.82,0.00,'Walk-In','Fix-1',45.00,2,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','5','2021-03-11 11:41:21','First Shift',2021,'2021-03-11'),(24,3,'21110311414321',555.00,50.00,550.00,45.00,505.00,495.54,0.00,0.00,59.46,0.00,'Walk-In','Fix-2',555.00,3,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','5','2021-03-11 11:44:06','First Shift',2021,'2021-03-11'),(25,4,'21190308203321',45.00,0.00,50.00,5.00,45.00,40.18,0.00,0.00,0.00,4.82,'Walk-In','N/A',0.00,4,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','5','2021-03-19 08:21:22','First Shift',2021,'2021-03-19'),(26,1,'21190309065821',35.00,0.00,35.00,0.00,35.00,31.25,0.00,0.00,0.00,3.75,'Walk-In','N/A',0.00,1,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','5','2021-03-19 09:07:33','First Shift',2021,'2021-03-19'),(27,2,'21190309081021',35.00,0.00,35.00,0.00,35.00,31.25,0.00,0.00,0.00,3.75,'Walk-In','N/A',0.00,2,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','5','2021-03-19 09:08:16','First Shift',2021,'2021-03-19'),(28,3,'21190309083621',32.14,8.04,35.00,2.86,32.14,0.00,40.18,0.00,0.00,4.82,'Walk-In','Percentage(w/o vat)',45.00,3,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','5','2021-03-19 09:09:01','First Shift',2021,'2021-03-19'),(29,4,'21020716275021',90.00,0.00,100.00,10.00,90.00,80.36,0.00,0.00,0.00,9.64,'Walk-In','N/A',0.00,4,'AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','1','5','2021-07-02 16:32:39','First Shift',2021,'2021-07-02');
/*!40000 ALTER TABLE `admin_daily_transaction` ENABLE KEYS */;
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

-- Dump completed on 2021-08-06  9:17:54
