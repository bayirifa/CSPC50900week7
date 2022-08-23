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
-- Table structure for table `addressinfo`
--

DROP TABLE IF EXISTS `addressinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addressinfo` (
  `AddressID` int NOT NULL AUTO_INCREMENT,
  `Addresstype` varchar(20) NOT NULL,
  `StreetName` varchar(200) NOT NULL,
  `City` varchar(40) NOT NULL,
  `County` varchar(50) NOT NULL,
  `State` char(2) NOT NULL,
  `Zipcode` int NOT NULL,
  `Country` varchar(60) NOT NULL,
  `CustomerInfo_CustomerID` int NOT NULL,
  PRIMARY KEY (`AddressID`),
  KEY `AddressInfo_CustomerInfo` (`CustomerInfo_CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addressinfo`
--

LOCK TABLES `addressinfo` WRITE;
/*!40000 ALTER TABLE `addressinfo` DISABLE KEYS */;
INSERT INTO `addressinfo` VALUES (2,'Campus','1213 N 3rd Street','Joliet','Will','IL',10001,'USA',1),(3,'Work','2132 S 3rd Street','Romeoville','Will','IL',10002,'USA',2),(4,'School','4454 W 3rd Street','Naperville','Fairfax','VA',10003,'USA',3),(5,'Church','3242 E 3rd Street','Naperville','Columbus','OH',10004,'USA',4),(6,'Home','12 Stafford street','Romeoville','Will','NM',10005,'USA',1),(7,'Home','4353 Stafford Street','Joliet','Cook','KY',10006,'USA',2),(8,'Work','1232 Lewis Street','Joliet','Will','WA',10007,'USA',5),(9,'Other','3241 W Lewis Street','Naperville','Will','IA',10008,'USA',6),(10,'Home','4930 E lewis Street','Aurora','Kane','MN',10009,'USA',4),(11,'Other','4530 S Lewis Street','Aurora','Kane','MN',10010,'USA',7),(17,'Home','Ghana porst road','Maakro','Kumasi','AR',21000,'Ghana',2);
/*!40000 ALTER TABLE `addressinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23 16:34:38
