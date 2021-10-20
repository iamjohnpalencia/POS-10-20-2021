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
-- Table structure for table `Triggers_admin_expense_list`
--

DROP TABLE IF EXISTS `Triggers_admin_expense_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Triggers_admin_expense_list` (
  `expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_expense_id` int(11) NOT NULL,
  `crew_id` varchar(50) NOT NULL,
  `expense_number` varchar(255) NOT NULL,
  `total_amount` decimal(11,2) NOT NULL,
  `paid_amount` decimal(11,2) NOT NULL,
  `unpaid_amount` decimal(11,2) NOT NULL,
  `store_id` varchar(255) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `created_at` text NOT NULL,
  `active` tinyint(2) NOT NULL,
  `zreading` text NOT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Triggers_admin_expense_list`
--

LOCK TABLES `Triggers_admin_expense_list` WRITE;
/*!40000 ALTER TABLE `Triggers_admin_expense_list` DISABLE KEYS */;
INSERT INTO `Triggers_admin_expense_list` VALUES (1,1,'AD-0001','2128-0112-224321',90.00,0.00,0.00,'1','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2021-01-28 12:24:09',1,'2021-01-28'),(2,1,'AD-0001','2102-0208-201021',5.00,0.00,0.00,'6','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','2021-02-02 08:20:24',1,'2021-02-02');
/*!40000 ALTER TABLE `Triggers_admin_expense_list` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`masteradmin`@`%`*/ /*!50003 TRIGGER `CopyTo_Admin_Expense_List` AFTER INSERT ON `Triggers_admin_expense_list` FOR EACH ROW INSERT INTO admin_expense_list( `loc_expense_id`, `crew_id`, `expense_number`, `total_amount`, `paid_amount`, `unpaid_amount`, `store_id`, `guid`, `created_at`, `active`, `zreading`)
SELECT  `loc_expense_id`, `crew_id`, `expense_number`, `total_amount`, `paid_amount`, `unpaid_amount`, `store_id`, `guid`, `created_at`, `active`, `zreading`
  FROM Triggers_admin_expense_list
 WHERE NOT EXISTS(SELECT  `loc_expense_id`, `crew_id`, `expense_number`, `total_amount`, `paid_amount`, `unpaid_amount`, `store_id`, `guid`, `created_at`, `active`, `zreading`
                    FROM admin_expense_list
                   WHERE expense_number = Triggers_admin_expense_list.expense_number AND store_id = Triggers_admin_expense_list.store_id AND guid = Triggers_admin_expense_list.guid ) */;;
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

-- Dump completed on 2021-08-06  9:17:50
