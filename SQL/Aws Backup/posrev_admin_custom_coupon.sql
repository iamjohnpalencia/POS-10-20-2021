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
-- Table structure for table `admin_custom_coupon`
--

DROP TABLE IF EXISTS `admin_custom_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_custom_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `ID` int(11) NOT NULL,
  `Couponname_` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Desc_` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Discountvalue_` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Referencevalue_` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Bundlebase_` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BBValue_` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Bundlepromo_` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BPValue_` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Effectivedate` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Expirydate` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `store_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crew_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `guid` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `synced` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_custom_coupon`
--

LOCK TABLES `admin_custom_coupon` WRITE;
/*!40000 ALTER TABLE `admin_custom_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_custom_coupon` ENABLE KEYS */;
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

-- Dump completed on 2021-08-06  9:17:15
