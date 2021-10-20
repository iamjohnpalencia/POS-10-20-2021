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
-- Table structure for table `admin_coupon`
--

DROP TABLE IF EXISTS `admin_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_coupon` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Couponname_` text NOT NULL,
  `Desc_` text NOT NULL,
  `Discountvalue_` text NOT NULL,
  `Referencevalue_` text NOT NULL,
  `Type` text NOT NULL,
  `Bundlebase_` text NOT NULL,
  `BBValue_` text NOT NULL,
  `Bundlepromo_` text NOT NULL,
  `BPValue_` text NOT NULL,
  `Effectivedate` text NOT NULL,
  `Expirydate` text NOT NULL,
  `date_created` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_coupon`
--

LOCK TABLES `admin_coupon` WRITE;
/*!40000 ALTER TABLE `admin_coupon` DISABLE KEYS */;
INSERT INTO `admin_coupon` VALUES (1,'Senior Discount 20%','Senior Discount 20% - Standard National Discount','20','N/A','Percentage(w/o vat)','N/A','N/A','N/A','N/A','2020-01-01','2030-01-01','2021-02-03 10:10:35'),(2,'Combo Discount','20 percent discount','20','N/A','Percentage(w/ vat)','N/A','N/A','N/A','N/A','2020-01-01','2030-01-01','2020-01-27 07:06:30'),(3,'100 OFF GC - Chinese New Year','100 OFF Gift Certificate for the celebration of Chinese New Year','100','','Fix-1','','','','','2020-01-01','2030-01-01','2020-01-27 07:06:30'),(4,'50 OFF on your next waffle','50 OFF on your next waffle if you buy with minimum amount of 500','50','500','Fix-2','','','','','2020-01-01','2030-01-01','2020-01-27 07:06:30'),(5,'Free Choco Waffle','Free Choco Waffle if you buy Peanut Butter waffle','','','Bundle-1(Fix)','5','1','3','1','2020-01-01','2030-01-01','2020-01-27 07:06:30'),(6,'10 OFF ON DRINKS','P10 OFF on Drinks if you buy 2 choco waffles\r\n','10','','Bundle-2(Fix)','3','2','36,37,60,61,66,103,112','1','2020-01-01','2030-01-01','2020-01-27 07:06:30'),(7,'10% OFF ON YOUR 3RD WAFFLE','10% OFF for the 3rd Waffle if you buy 2 Perfect Combination Waffle','10','','Bundle-3(%)','2,13,14,15,16,17,18,19,20,21,22,23,24,25,26,67,,68,69,70,71,72,73,74,75,113','2','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,57,58,59,62,63,67,68,69,','1','2020-01-01','2030-01-01','2020-01-27 07:06:30'),(8,'PWD Discount 20% ','PWD Discount 20% - Standard National Discount','20','N/A','Percentage(w/o vat)','N/A','N/A','N/A','N/A','2021-01-01','2030-01-01','2021-02-03 10:48:12');
/*!40000 ALTER TABLE `admin_coupon` ENABLE KEYS */;
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

-- Dump completed on 2021-08-06  9:18:10
