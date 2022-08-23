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
-- Table structure for table `driverinfo`
--

DROP TABLE IF EXISTS `driverinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driverinfo` (
  `DriverID` int NOT NULL AUTO_INCREMENT,
  `LicenseNum` char(12) NOT NULL,
  `LicenseType` enum('Class D','Class M','CDL') NOT NULL,
  `DateIssued` date NOT NULL,
  `DateExpire` date NOT NULL,
  `StateIssued` char(2) NOT NULL,
  `EmployeeInfo_EmployeeID` int NOT NULL,
  PRIMARY KEY (`DriverID`),
  KEY `DriverInfo_EmployeeInfo` (`EmployeeInfo_EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverinfo`
--

LOCK TABLES `driverinfo` WRITE;
/*!40000 ALTER TABLE `driverinfo` DISABLE KEYS */;
INSERT INTO `driverinfo` VALUES (3,'A02300001234','Class D','2022-06-12','2025-06-11','IL',300103),(4,'A02300001234','Class D','2021-06-12','2026-08-11','IL',100103),(5,'A02300001584','CDL','2022-06-12','2025-06-11','IL',100106),(6,'A02300002344','Class D','2021-06-12','2026-08-11','IL',100105);
/*!40000 ALTER TABLE `driverinfo` ENABLE KEYS */;
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
