-- MySQL dump 10.13  Distrib 9.6.0, for macos15 (arm64)
--
-- Host: localhost    Database: MINI_BMS
-- ------------------------------------------------------
-- Server version	9.6.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '79f8b894-0750-11f1-9cf8-11ed7170dd05:1-906';

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `A_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `ammount` decimal(10,2) DEFAULT NULL,
  `account_type` enum('SAVING','CURRENT') DEFAULT NULL,
  PRIMARY KEY (`A_id`),
  KEY `fk_customer` (`customer_id`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `SIGN_UP` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,1,6500.00,'SAVING'),(2,2,1500.00,'SAVING'),(3,3,5000.00,'SAVING'),(4,4,18500.00,'SAVING'),(5,5,7000.00,'CURRENT'),(6,6,18200.00,'SAVING'),(7,7,48500.00,'CURRENT'),(8,8,2700.00,'SAVING'),(9,9,-15200.00,'SAVING'),(10,10,100000.00,'CURRENT'),(11,11,-3500.00,'SAVING'),(12,12,39000.00,'SAVING'),(13,13,6500.00,'CURRENT'),(14,14,18200.00,'SAVING'),(15,15,-9900.00,'SAVING'),(16,16,55000.00,'CURRENT'),(17,17,8000.00,'SAVING'),(18,18,8600.00,'SAVING'),(19,19,-22000.00,'CURRENT'),(20,20,50900.00,'SAVING'),(21,21,9000.00,'SAVING'),(22,22,14300.00,'SAVING');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENT`
--

DROP TABLE IF EXISTS `PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAYMENT` (
  `P_ID` int NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` int DEFAULT NULL,
  `PAY_DATE` datetime DEFAULT NULL,
  `SEND_AMOUNT` int DEFAULT NULL,
  `SENDER_REFERENCE` int DEFAULT NULL,
  `RECEIVE_REFERENCE` int DEFAULT NULL,
  `METHOD_CARD` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`P_ID`),
  KEY `fk_payment_customer` (`CUSTOMER_ID`),
  CONSTRAINT `fk_payment_customer` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `SIGN_UP` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENT`
--

LOCK TABLES `PAYMENT` WRITE;
/*!40000 ALTER TABLE `PAYMENT` DISABLE KEYS */;
INSERT INTO `PAYMENT` VALUES (1,1,'2026-04-28 10:49:51',1000,1,2,'CARD'),(2,2,'2026-04-28 11:00:07',2500,1,2,'CARD'),(3,2,'2026-04-28 11:00:59',2500,1,2,'CARD'),(4,2,'2026-04-28 11:01:43',2500,2,1,'CARD'),(5,3,'2026-04-01 10:00:00',5000,3,4,'CARD'),(6,5,'2026-04-05 11:30:00',15000,5,6,'CARD'),(7,7,'2026-04-10 09:15:00',500,7,8,'CARD'),(8,9,'2026-04-12 14:00:00',25000,9,10,'CARD'),(9,11,'2026-04-15 16:45:00',8000,11,12,'CARD'),(10,13,'2026-04-18 08:00:00',200,13,14,'CARD'),(11,15,'2026-04-20 13:00:00',12000,15,16,'CARD'),(12,17,'2026-04-22 10:30:00',3000,17,18,'CARD'),(13,19,'2026-04-25 15:00:00',50000,19,20,'CARD'),(14,21,'2026-04-28 09:00:00',7000,21,22,'CARD'),(15,3,'2026-04-28 21:04:07',5000,3,4,'CARD'),(16,7,'2026-04-28 21:05:16',1000,7,8,'CARD');
/*!40000 ALTER TABLE `PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_payment` BEFORE INSERT ON `payment` FOR EACH ROW BEGIN
    DECLARE sender_balance DECIMAL(10,2);
    
    -- Sender ka current balance check karo
    SELECT ammount INTO sender_balance
    FROM ACCOUNT
    WHERE customer_id = NEW.CUSTOMER_ID;
    
    -- Agar balance kam hai ya zero hai
    IF sender_balance <= 0 OR sender_balance < NEW.SEND_AMOUNT THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Transaction Failed: Insufficient Balance!';
    ELSE
        -- Balance sahi hai toh update karo
        UPDATE ACCOUNT SET ammount = ammount - NEW.SEND_AMOUNT
        WHERE customer_id = NEW.CUSTOMER_ID;
        
        UPDATE ACCOUNT SET ammount = ammount + NEW.SEND_AMOUNT
        WHERE customer_id = NEW.RECEIVE_REFERENCE;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `SIGN_UP`
--

DROP TABLE IF EXISTS `SIGN_UP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SIGN_UP` (
  `USER_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(15) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `Role` enum('Customer','Admin') DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SIGN_UP`
--

LOCK TABLES `SIGN_UP` WRITE;
/*!40000 ALTER TABLE `SIGN_UP` DISABLE KEYS */;
INSERT INTO `SIGN_UP` VALUES (1,'Kritik','9876543210','kritik@gmail.com','Customer','pass123'),(2,'Rahul','9123456789','rahul@gmail.com','Customer','pass456'),(3,'Amit','9111111111','amit@gmail.com','Customer','pass123'),(4,'Priya','9222222222','priya@gmail.com','Customer','pass123'),(5,'Rohit','9333333333','rohit@gmail.com','Customer','pass123'),(6,'Sneha','9444444444','sneha@gmail.com','Customer','pass123'),(7,'Vikas','9555555555','vikas@gmail.com','Customer','pass123'),(8,'Pooja','9666666666','pooja@gmail.com','Customer','pass123'),(9,'Arjun','9777777777','arjun@gmail.com','Customer','pass123'),(10,'Neha','9888888888','neha@gmail.com','Customer','pass123'),(11,'Raj','9999999999','raj@gmail.com','Customer','pass123'),(12,'Divya','9000000001','divya@gmail.com','Customer','pass123'),(13,'Karan','9000000002','karan@gmail.com','Customer','pass123'),(14,'Meera','9000000003','meera@gmail.com','Customer','pass123'),(15,'Suresh','9000000004','suresh@gmail.com','Customer','pass123'),(16,'Anita','9000000005','anita@gmail.com','Customer','pass123'),(17,'Ravi','9000000006','ravi@gmail.com','Customer','pass123'),(18,'Kavya','9000000007','kavya@gmail.com','Customer','pass123'),(19,'Deepak','9000000008','deepak@gmail.com','Customer','pass123'),(20,'Shreya','9000000009','shreya@gmail.com','Customer','pass123'),(21,'Mohit','9000000010','mohit@gmail.com','Customer','pass123'),(22,'Laxmi','9000000011','laxmi@gmail.com','Customer','pass123');
/*!40000 ALTER TABLE `SIGN_UP` ENABLE KEYS */;
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

-- Dump completed on 2026-04-29 21:52:00
