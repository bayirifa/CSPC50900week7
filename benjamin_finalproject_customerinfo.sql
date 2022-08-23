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
-- Table structure for table `customerinfo`
--

DROP TABLE IF EXISTS `customerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerinfo` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `CustomerLN` varchar(50) NOT NULL,
  `CustomerFN` varchar(50) NOT NULL,
  `CustomerMN` varchar(50) DEFAULT NULL,
  `DateAccountOpen` date NOT NULL,
  `PhoneInfo_phoneID` int NOT NULL,
  `PhoneNumber` char(10) NOT NULL,
  `AdressInfo_AddressID` int NOT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `CustomerInfo_PhoneInfo` (`PhoneInfo_phoneID`),
  KEY `CustomerInfo_AdressInfo` (`AdressInfo_AddressID`),
  CONSTRAINT `CustomerInfo_PhoneInfo` FOREIGN KEY (`PhoneInfo_phoneID`) REFERENCES `phoneinfo` (`PhoneID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerinfo`
--

LOCK TABLES `customerinfo` WRITE;
/*!40000 ALTER TABLE `customerinfo` DISABLE KEYS */;
INSERT INTO `customerinfo` VALUES (2,'Ben','Manuel','','0000-00-00',1,'3225334656',1),(3,'Matt','White','','0000-00-00',1,'3221454587',2),(4,'John','Black','','0000-00-00',2,'3224514568',3),(5,'Paul','Green','Jesse','0000-00-00',3,'3223323439',2),(6,'Esther','Cindy','','0000-00-00',2,'6362823223',3),(7,'Peter','Jose','','0000-00-00',1,'4353323267',4),(8,'Mathew','gate','Kanu','0000-00-00',2,'4367686010',5),(9,'Sean','peace','','0000-00-00',1,'4340014000',6),(10,'Kane','love','','0000-00-00',2,'6604525450',6);
/*!40000 ALTER TABLE `customerinfo` ENABLE KEYS */;
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
