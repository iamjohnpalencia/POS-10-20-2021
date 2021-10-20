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
-- Table structure for table `Triggers_loc_users`
--

DROP TABLE IF EXISTS `Triggers_loc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Triggers_loc_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_user_id` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` time NOT NULL,
  `active` varchar(2) NOT NULL,
  `guid` varchar(50) NOT NULL,
  `store_id` varchar(11) NOT NULL,
  `uniq_id` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Triggers_loc_users`
--

LOCK TABLES `Triggers_loc_users` WRITE;
/*!40000 ALTER TABLE `Triggers_loc_users` DISABLE KEYS */;
INSERT INTO `Triggers_loc_users` VALUES (1,2,'Crew','Judy Anne','judy','296506902c693b458707ad6f7e24a544','09123456789','judyanne@gmail.com','Crew','Female','01/28/2021 11:53:23','00:00:00','1','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','FBW1-5277'),(2,3,'Crew','headcrew','headcrew','296506902c693b458707ad6f7e24a544','09123456780','headcrew@gmail.com','Crew','Male','01/28/2021 12:16:18','00:00:00','1','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','FBW1-7453'),(3,4,'Head Crew','headcrew1','headcrew1','296506902c693b458707ad6f7e24a544','0123456787','headcrew1@gmail.com','Head Crew','Male','01/28/2021 12:58:15','12:00:00','1','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','FBW1-8671'),(4,5,'Crew','arince porcadilla ','arince1101','62fb23552309ed8a695704b6592d8d9e','09951707990','porcadillaarincejean@gmail.com ','Crew','Female','01/30/2021 16:22:41','00:00:00','1','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','FBW1-6433'),(5,6,'Crew','aldrin dela cruz','aldrindc18','69a95b257455c8b8333a4381068b7fe5','09276184388','fbwaldrindelacruzgmail.com','Crew','Male','02/01/2021 17:54:23','00:00:00','1','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','1','FBW1-2104'),(6,2,'Crew','Sophia','Crew','296506902c693b458707ad6f7e24a544','09123456789','gmail.com','Crew','Male','02/12/2021 14:18:47','00:00:00','1','f0ec780f-1350-eb31-46ef-5a98c9afcfd8','2','FBW2-9647'),(7,2,'Crew','Mark Daniel Reyes','mark_reyes','296506902c693b458707ad6f7e24a544','0964854123','markmd@gmail.com','Crew','Male','02/15/2021 16:10:06','00:00:00','1','8b8749e0-24fd-2aa5-9156-4424b77bd6ae','6','FBW6-5846');
/*!40000 ALTER TABLE `Triggers_loc_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`masteradmin`@`%`*/ /*!50003 TRIGGER `CopyTo_Loc_Users` AFTER INSERT ON `Triggers_loc_users` FOR EACH ROW INSERT INTO loc_users(`loc_user_id`, `user_level`, `full_name`, `username`, `password`, `contact_number`, `email`, `position`, `gender`, `created_at`, `updated_at`, `active`, `guid`, `store_id`, `uniq_id`)
SELECT `loc_user_id`, `user_level`, `full_name`, `username`, `password`, `contact_number`, `email`, `position`, `gender`, `created_at`, `updated_at`, `active`, `guid`, `store_id`, `uniq_id`
  FROM Triggers_loc_users
 WHERE NOT EXISTS(SELECT`loc_user_id`, `user_level`, `full_name`, `username`, `password`, `contact_number`, `email`, `position`, `gender`, `created_at`, `updated_at`, `active`, `guid`, `store_id`, `uniq_id`
                    FROM loc_users
                   WHERE loc_users.uniq_id = Triggers_loc_users.uniq_id) */;;
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

-- Dump completed on 2021-08-06  9:17:33
