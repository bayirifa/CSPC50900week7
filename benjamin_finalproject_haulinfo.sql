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
-- Table structure for table `haulinfo`
--

DROP TABLE IF EXISTS `haulinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `haulinfo` (
  `HaulID` int NOT NULL AUTO_INCREMENT,
  `DateOntruck` timestamp NOT NULL,
  `DeliveryNotes` varchar(200) DEFAULT NULL,
  `DeliveryInfo_DeliveryInfo` int NOT NULL,
  `TruckInfo_truckID` int NOT NULL,
  `DriverInfo_driverID` int NOT NULL,
  PRIMARY KEY (`HaulID`),
  KEY `HaulInfo_DeliveryInfo` (`DeliveryInfo_DeliveryInfo`),
  KEY `HaulInfo_DriverInfo` (`DriverInfo_driverID`),
  KEY `HaulInfo_TruckInfo` (`TruckInfo_truckID`),
  CONSTRAINT `HaulInfo_DeliveryInfo` FOREIGN KEY (`DeliveryInfo_DeliveryInfo`) REFERENCES `deliveryinfo` (`DeliveryID`),
  CONSTRAINT `HaulInfo_DriverInfo` FOREIGN KEY (`DriverInfo_driverID`) REFERENCES `driverinfo` (`DriverID`),
  CONSTRAINT `HaulInfo_TruckInfo` FOREIGN KEY (`TruckInfo_truckID`) REFERENCES `truckinfo` (`TruckID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haulinfo`
--

LOCK TABLES `haulinfo` WRITE;
/*!40000 ALTER TABLE `haulinfo` DISABLE KEYS */;
INSERT INTO `haulinfo` VALUES (2,'2022-06-11 15:20:01','Needs to be refrigerated',2,8,3),(3,'2022-06-11 15:20:01','Highly fragile',3,8,3),(4,'2022-06-11 15:20:01','Highly fragile',3,8,4),(7,'2022-06-11 15:20:01','Highly fragile',3,9,4);
/*!40000 ALTER TABLE `haulinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23 16:34:37
