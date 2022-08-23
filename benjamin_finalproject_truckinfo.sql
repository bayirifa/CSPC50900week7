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
-- Table structure for table `truckinfo`
--

DROP TABLE IF EXISTS `truckinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truckinfo` (
  `TruckID` int NOT NULL AUTO_INCREMENT,
  `TruckNumplate` char(7) NOT NULL,
  `TruckType` varchar(100) NOT NULL,
  `Truckyear` int NOT NULL,
  `Truckmodel` enum('VAN','SEDAN','TRAILER','SUV','OTHER') DEFAULT NULL,
  `TruckLastService` date NOT NULL,
  `TruckCondition` varchar(100) NOT NULL,
  PRIMARY KEY (`TruckID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truckinfo`
--

LOCK TABLES `truckinfo` WRITE;
/*!40000 ALTER TABLE `truckinfo` DISABLE KEYS */;
INSERT INTO `truckinfo` VALUES (8,'cm00001','AUTOMATIC',2008,'VAN','2022-06-30','GOOD\r'),(9,'cm00002','AUTOMATIC',2010,'VAN','2022-05-30','GOOD\r'),(10,'cm00003','AUTOMATIC',2010,'SEDAN','2022-06-30','HAS BRAKE PROBLEMS\r'),(11,'cm00004','AUTOMATIC',2015,'SUV','2022-06-30','\"TRANSMISSION PROBLEMS and BAD TIRES\"\r'),(12,'cm00005','AUTOMATIC',2012,'TRAILER','2022-07-30','GOOD\r');
/*!40000 ALTER TABLE `truckinfo` ENABLE KEYS */;
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
