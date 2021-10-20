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
-- Table structure for table `Triggers_admin_expense_details`
--

DROP TABLE IF EXISTS `Triggers_admin_expense_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Triggers_admin_expense_details` (
  `details_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_details_id` int(11) NOT NULL,
  `expense_number` varchar(255) NOT NULL,
  `expense_type` varchar(50) NOT NULL,
  `item_info` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `attachment` text NOT NULL,
  `created_at` text NOT NULL,
  `crew_id` varchar(50) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `store_id` int(20) NOT NULL,
  `active` tinyint(2) NOT NULL,
  `zreading` text NOT NULL,
  PRIMARY KEY (`details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Triggers_admin_expense_details`
--

LOCK TABLES `Triggers_admin_expense_details` WRITE;
/*!40000 ALTER TABLE `Triggers_admin_expense_details` DISABLE KEYS */;
INSERT INTO `Triggers_admin_expense_details` VALUES (1,1,'2102-0208-201021','MISC','Egg',1,5.00,5.00,'iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAYAAABccqhmAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAGuElEQVR42u3dP2wU2R3A8d8ua8ZejFkiefnj5VBcIFFAcU0kCoii9NFJRCQuUiSioIsslIhL7kikU3JKBJcGUCJaChOqtImUg4ZUaVxYprgEsGXt+ogxctb7x55Jg9HpkkicYL3e8efT2a7evDdfvxmv/CIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAN1HI46Dq9fpIlmXfKxQK70XEuxFRjYgh0917+/fv/1W5XP6ZKzEYSnkbUKPR+EGWZb8pFAqHTG8fFlSp9P76+no6MjLygashANv5W39PlmV/yLLsh6a1v/bs2fPzVqsVw8PDIiAA2+b3hULBzb9DFItFERCAbd32/+iL30vTNNI0jSzLzHIfI9ButyNJEhHYoQb+JeDS0tJwsVj8Z0Qc2rrxNzc3zWyfVKvV//pelmUfiYAdQK98f+vm39zcjDRNzepO+y1TKNgJCEDPtpnvuflFgN27A3h363kfEWD3BaDqmV8E2KUBSNPUJ/xEgF0cALMoAuzWAPg7vwiwu98BIAIIACKAACACCAAigAAgAggAIoAAIAIIACKAACACAuASIAICACIgACACAgAiIAAgAgIAIiAAIAICACIgACACAgAiIAAgAgIAIiAAIAICACIgACACAgAiIAAgAgIAIiAAIAICACIgACACAgAiIAAgAgIAIiAAIAICACIgACACAgAiIADsHGmaRrFYFAEBYDfqdDoxPDycl51AmiTJVQGA1/TixYtcBOBlBD58uRO4KgDwGhqNRlSr1Ty9E8h1BASAt2p5eTlarVZudgF5j4AA8FYVi8V49OhRnD59OlfjymsEBIC3qlwuR6PRiKdPn8axY8dyF4GXu5urAgD/w4EDB2J1dTXm5+cjInIXgWKx+GGz2UzL5fIvBQC+ZGxsLIaGhqLb7cb8/HysrKzEiRMncvVOoFQq/WJtbS1GR0cHPgKFQR/AwsJC5rbbWZ4/fx5Pnjz54tY5Dh06FOPj4zE2NhZJkgz8h4UiIlqt1kdjY2MfCIAA8CWLi4vx7Nmz3I2rWq3G4cOHX31dq9UG+h7yCEBPHD16NCIidxFoNBqvdjTeAcD/21oWCjExMRH79u2LpaWl6Ha7uRlbvV6PiMhFBASAnqpUKq/+MrC6uhrr6+vR7XYjy7JcREAA4DV2A5VKJSqVioshAIAAAAIACAAgAIAAAAIACAAgAIAAAAIACAAgAIAAAAIACAAgAIAAAAIACAAgACAAgAAAAsAbuX79uovQQ9PT0y6CAAACAAgAIACAAAACAAgAIACAAAACAAgA7HaFQR/AwsJCZhrpl1qtNtD3kB0AeAQABAAQAEAAAAEABAAQAEAAAAEABAAQAJwL0GvOBRAAQAAAAQAEABAAQAAAAQAEABAAQAAAAQCcCwBvwrkAgAAAAgAIACAAgAAAAgAIACAAgAAAAgAIwOBzLkBvORdAAAABAAQAEABAAAABAAQAEABAAAABAAQAcC4AvAnnAgACAAgAIACAAAACAAgAIACAAAACAAgAIACDb7efC+D/9gsAIACAAAACAAgAIACAAAACAAgAIACAAAA951wAeAPOBQAEABAAQAAAAQAEABAAQAAAAQAEABAAQAAAAQAEABAAQAAAAQAEYEuapt1isThkKunD2usIQJ91u93PkyQ5Yjmy3TqdzucC0GeLi4tzk5OTAkBf1p4A9NnMzMxfr1y58i3Lke129+7dTwd9DAP/X4Gr1eo3Hj58+KckSaqWJNul3W43zpw58516vf43O4A+ajQa/75x48Yn09PTv7Ys2S43b978Xb1eX7MD6L/JiDh4586dn547d+67lia99uDBg3tTU1MfR8RKRHwmAH108uTJr83NzX29XC4Xb9++/ZOzZ8+et0Tplfv37//x4sWLv202m+mpU6f+MTs7+y+PAH105MiRlbm5uYlms7l3amrq48uXL//90qVLP/ZOgLep1Wo1bt269cm1a9f+/PJbnVqttjI7O+sRoN9qtdrBhYWFya2vq9Xq0Pnz57994cKFb05MTJzcu3fvuA8L8VWkadrtdDrLi4uLczMzM5/eu3fvL41Go7v18+PHj3/2+PHjFe8AdohyufxOs9kct3TptdHR0eW1tbUneRhLIU8TkyTJO+12WwTomeHh4eVWq/UkL+Mp5G2CkiQ52G63axGx13LlLeqMjIwsrK+vr+RpUIU8zlSpVCpsbGwcjIhKRJQjYigiitYwX+U1QER0I6IZEc9LpdLKxsaGo+gBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIDX9h9tdHLrdAH1egAAAABJRU5ErkJggg==','2021-02-02 08:20:24','AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae',6,1,'2021-02-02'),(2,1,'2102-0208-201021','MISC','Egg',1,5.00,5.00,'iVBORw0KGgoAAAANSUhEUgAAAQAAAAEACAYAAABccqhmAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAGuElEQVR42u3dP2wU2R3A8d8ua8ZejFkiefnj5VBcIFFAcU0kCoii9NFJRCQuUiSioIsslIhL7kikU3JKBJcGUCJaChOqtImUg4ZUaVxYprgEsGXt+ogxctb7x55Jg9HpkkicYL3e8efT2a7evDdfvxmv/CIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAN1HI46Dq9fpIlmXfKxQK70XEuxFRjYgh0917+/fv/1W5XP6ZKzEYSnkbUKPR+EGWZb8pFAqHTG8fFlSp9P76+no6MjLygashANv5W39PlmV/yLLsh6a1v/bs2fPzVqsVw8PDIiAA2+b3hULBzb9DFItFERCAbd32/+iL30vTNNI0jSzLzHIfI9ButyNJEhHYoQb+JeDS0tJwsVj8Z0Qc2rrxNzc3zWyfVKvV//pelmUfiYAdQK98f+vm39zcjDRNzepO+y1TKNgJCEDPtpnvuflFgN27A3h363kfEWD3BaDqmV8E2KUBSNPUJ/xEgF0cALMoAuzWAPg7vwiwu98BIAIIACKAACACCAAigAAgAggAIoAAIAIIACKAACACAuASIAICACIgACACAgAiIAAgAgIAIiAAIAICACIgACACAgAiIAAgAgIAIiAAIAICACIgACACAgAiIAAgAgIAIiAAIAICACIgACACAgAiIAAgAgIAIiAAIAICACIgACACAgAiIADsHGmaRrFYFAEBYDfqdDoxPDycl51AmiTJVQGA1/TixYtcBOBlBD58uRO4KgDwGhqNRlSr1Ty9E8h1BASAt2p5eTlarVZudgF5j4AA8FYVi8V49OhRnD59OlfjymsEBIC3qlwuR6PRiKdPn8axY8dyF4GXu5urAgD/w4EDB2J1dTXm5+cjInIXgWKx+GGz2UzL5fIvBQC+ZGxsLIaGhqLb7cb8/HysrKzEiRMncvVOoFQq/WJtbS1GR0cHPgKFQR/AwsJC5rbbWZ4/fx5Pnjz54tY5Dh06FOPj4zE2NhZJkgz8h4UiIlqt1kdjY2MfCIAA8CWLi4vx7Nmz3I2rWq3G4cOHX31dq9UG+h7yCEBPHD16NCIidxFoNBqvdjTeAcD/21oWCjExMRH79u2LpaWl6Ha7uRlbvV6PiMhFBASAnqpUKq/+MrC6uhrr6+vR7XYjy7JcREAA4DV2A5VKJSqVioshAIAAAAIACAAgAIAAAAIACAAgAIAAAAIACAAgAIAAAAIACAAgAIAAAAIACAAgACAAgAAAAsAbuX79uovQQ9PT0y6CAAACAAgAIACAAAACAAgAIACAAAACAAgA7HaFQR/AwsJCZhrpl1qtNtD3kB0AeAQABAAQAEAAAAEABAAQAEAAAAEABAAQAJwL0GvOBRAAQAAAAQAEABAAQAAAAQAEABAAQAAAAQCcCwBvwrkAgAAAAgAIACAAgAAAAgAIACAAgAAAAgAIwOBzLkBvORdAAAABAAQAEABAAAABAAQAEABAAAABAAQAcC4AvAnnAgACAAgAIACAAAACAAgAIACAAAACAAgAIACDb7efC+D/9gsAIACAAAACAAgAIACAAAACAAgAIACAAAA951wAeAPOBQAEABAAQAAAAQAEABAAQAAAAQAEABAAQAAAAQAEABAAQAAAAQAEYEuapt1isThkKunD2usIQJ91u93PkyQ5Yjmy3TqdzucC0GeLi4tzk5OTAkBf1p4A9NnMzMxfr1y58i3Lke129+7dTwd9DAP/X4Gr1eo3Hj58+KckSaqWJNul3W43zpw58516vf43O4A+ajQa/75x48Yn09PTv7Ys2S43b978Xb1eX7MD6L/JiDh4586dn547d+67lia99uDBg3tTU1MfR8RKRHwmAH108uTJr83NzX29XC4Xb9++/ZOzZ8+et0Tplfv37//x4sWLv202m+mpU6f+MTs7+y+PAH105MiRlbm5uYlms7l3amrq48uXL//90qVLP/ZOgLep1Wo1bt269cm1a9f+/PJbnVqttjI7O+sRoN9qtdrBhYWFya2vq9Xq0Pnz57994cKFb05MTJzcu3fvuA8L8VWkadrtdDrLi4uLczMzM5/eu3fvL41Go7v18+PHj3/2+PHjFe8AdohyufxOs9kct3TptdHR0eW1tbUneRhLIU8TkyTJO+12WwTomeHh4eVWq/UkL+Mp5G2CkiQ52G63axGx13LlLeqMjIwsrK+vr+RpUIU8zlSpVCpsbGwcjIhKRJQjYigiitYwX+U1QER0I6IZEc9LpdLKxsaGo+gBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIDX9h9tdHLrdAH1egAAAABJRU5ErkJggg==','2021-02-02 08:20:24','AD-0001','8b8749e0-24fd-2aa5-9156-4424b77bd6ae',6,1,'2021-02-02');
/*!40000 ALTER TABLE `Triggers_admin_expense_details` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`masteradmin`@`%`*/ /*!50003 TRIGGER `CopyTo_Admin_Expense_Details` AFTER INSERT ON `Triggers_admin_expense_details` FOR EACH ROW INSERT INTO admin_expense_details(`loc_details_id`, `expense_number`, `expense_type`, `item_info`, `quantity`, `price`, `amount`, `attachment`, `created_at`, `crew_id`, `guid`, `store_id`, `active`, `zreading`)
SELECT `loc_details_id`, `expense_number`, `expense_type`, `item_info`, `quantity`, `price`, `amount`, `attachment`, `created_at`, `crew_id`, `guid`, `store_id`, `active`, `zreading`
  FROM Triggers_admin_expense_details
 WHERE NOT EXISTS(SELECT `loc_details_id`, `expense_number`, `expense_type`, `item_info`, `quantity`, `price`, `amount`, `attachment`, `created_at`, `crew_id`, `guid`, `store_id`, `active`, `zreading`
                    FROM admin_expense_details
                   WHERE expense_number = Triggers_admin_expense_details.expense_number AND loc_details_id = Triggers_admin_expense_details.loc_details_id AND store_id = Triggers_admin_expense_details.store_id AND guid = Triggers_admin_expense_details.guid ) */;;
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

-- Dump completed on 2021-08-06  9:17:37
