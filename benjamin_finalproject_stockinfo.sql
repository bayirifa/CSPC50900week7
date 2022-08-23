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
-- Table structure for table `stockinfo`
--

DROP TABLE IF EXISTS `stockinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockinfo` (
  `StockID` int NOT NULL AUTO_INCREMENT,
  `StockDate` date NOT NULL,
  `ProductInfo_ProductID` int NOT NULL,
  `QuantityP` int NOT NULL,
  `SupplyInfo_SupplyID` int NOT NULL,
  `EmployeeInfo_EmployeeID` int NOT NULL,
  PRIMARY KEY (`StockID`),
  KEY `StockInfo_EmployeeInfo` (`EmployeeInfo_EmployeeID`),
  KEY `StockInfo_SupplyInfo` (`SupplyInfo_SupplyID`),
  KEY `StockInfo_ProductInfo` (`ProductInfo_ProductID`),
  CONSTRAINT `StockInfo_EmployeeInfo` FOREIGN KEY (`EmployeeInfo_EmployeeID`) REFERENCES `employeeinfo` (`EmployeeID`),
  CONSTRAINT `StockInfo_ProductInfo` FOREIGN KEY (`ProductInfo_ProductID`) REFERENCES `productinfo` (`ProductID`),
  CONSTRAINT `StockInfo_SupplyInfo` FOREIGN KEY (`SupplyInfo_SupplyID`) REFERENCES `supplyinfo` (`SupplyID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockinfo`
--

LOCK TABLES `stockinfo` WRITE;
/*!40000 ALTER TABLE `stockinfo` DISABLE KEYS */;
INSERT INTO `stockinfo` VALUES (1,'2022-04-25',100,200,1,100201),(2,'2022-06-03',102,400,3,100201),(3,'2021-11-23',103,400,3,100202),(4,'2022-11-23',103,400,2,100203),(5,'2021-11-23',103,400,5,100202);
/*!40000 ALTER TABLE `stockinfo` ENABLE KEYS */;
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
