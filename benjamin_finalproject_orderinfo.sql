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
-- Table structure for table `orderinfo`
--

DROP TABLE IF EXISTS `orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderinfo` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` timestamp NOT NULL,
  `ProductInfo_productID` int NOT NULL,
  `ProQuantity` int NOT NULL,
  `Discount` decimal(5,3) DEFAULT NULL,
  `HaulInfo_HaulID` int NOT NULL,
  `CustomerInfo_CustomerID` int NOT NULL,
  `EmployeeInfo_EmployeeID` int NOT NULL,
  `PaymentInfo_PaymentID` int NOT NULL,
  `AddressInfo_AddressID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `OrderInfo_EmployeeInfo` (`EmployeeInfo_EmployeeID`),
  KEY `OrderInfo_HaulInfo` (`HaulInfo_HaulID`),
  KEY `OrderInfo_ProductInfo` (`ProductInfo_productID`),
  KEY `OrderInfo_CustomerInfo` (`CustomerInfo_CustomerID`),
  KEY `OrderInfo_AddressInfo` (`AddressInfo_AddressID`),
  KEY `OrderInfo_PaymentInfo` (`PaymentInfo_PaymentID`),
  CONSTRAINT `OrderInfo_AddressInfo` FOREIGN KEY (`AddressInfo_AddressID`) REFERENCES `addressinfo` (`AddressID`),
  CONSTRAINT `OrderInfo_CustomerInfo` FOREIGN KEY (`CustomerInfo_CustomerID`) REFERENCES `customerinfo` (`CustomerID`),
  CONSTRAINT `OrderInfo_EmployeeInfo` FOREIGN KEY (`EmployeeInfo_EmployeeID`) REFERENCES `employeeinfo` (`EmployeeID`),
  CONSTRAINT `OrderInfo_HaulInfo` FOREIGN KEY (`HaulInfo_HaulID`) REFERENCES `haulinfo` (`HaulID`),
  CONSTRAINT `OrderInfo_PaymentInfo` FOREIGN KEY (`PaymentInfo_PaymentID`) REFERENCES `paymentinfo` (`PaymentID`),
  CONSTRAINT `OrderInfo_ProductInfo` FOREIGN KEY (`ProductInfo_productID`) REFERENCES `productinfo` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinfo`
--

LOCK TABLES `orderinfo` WRITE;
/*!40000 ALTER TABLE `orderinfo` DISABLE KEYS */;
INSERT INTO `orderinfo` VALUES (1,'2022-06-09 14:25:55',101,20,0.000,2,2,100201,2,2),(2,'2022-06-10 07:33:55',102,30,1.000,3,4,100202,2,2),(3,'2022-06-10 07:33:55',101,30,0.000,2,3,100202,3,4),(4,'2022-06-10 07:33:55',101,30,0.000,3,3,100203,3,4);
/*!40000 ALTER TABLE `orderinfo` ENABLE KEYS */;
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
