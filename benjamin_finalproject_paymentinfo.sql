CREATE DATABASE  IF NOT EXISTS `benjamin_finalproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `benjamin_finalproject`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: benjamin_finalproject
-- ------------------------------------------------------
-- Server version	8.0.30

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

--
-- Table structure for table `paymentinfo`
--

DROP TABLE IF EXISTS `paymentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentinfo` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `PaymentMethod` enum('VISA','MASTERCARD','USDEBIT','CREDIT') NOT NULL,
  `PaymentCard` int NOT NULL,
  `CardMonth` int NOT NULL,
  `CardYear` int NOT NULL,
  `CardZipCode` int NOT NULL,
  `CustomerInfo_CustomerID` int NOT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `PaymentInfo_CustomerInfo` (`CustomerInfo_CustomerID`),
  CONSTRAINT `PaymentInfo_CustomerInfo` FOREIGN KEY (`CustomerInfo_CustomerID`) REFERENCES `customerinfo` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentinfo`
--

LOCK TABLES `paymentinfo` WRITE;
/*!40000 ALTER TABLE `paymentinfo` DISABLE KEYS */;
INSERT INTO `paymentinfo` VALUES (2,'VISA',462,6,2024,60000,2),(3,'VISA',422042,6,2024,60000,3),(4,'MASTERCARD',52042,11,2027,40000,3),(5,'MASTERCARD',53442,11,2027,40000,5);
/*!40000 ALTER TABLE `paymentinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23 16:34:36
