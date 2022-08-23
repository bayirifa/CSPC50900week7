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
-- Table structure for table `productinfo`
--

DROP TABLE IF EXISTS `productinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productinfo` (
  `ProductID` int NOT NULL,
  `PGeneralNM` varchar(40) DEFAULT NULL,
  `ProductSize` varchar(25) DEFAULT NULL,
  `UnitCost` double NOT NULL,
  `SellingPrice` double NOT NULL,
  `ProductBrandName` varchar(50) DEFAULT NULL,
  `DateProduced` date NOT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `DepartmentInfo_deptID` int NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `ProductInfo_DepartmentInfo` (`DepartmentInfo_deptID`),
  CONSTRAINT `ProductInfo_DepartmentInfo` FOREIGN KEY (`DepartmentInfo_deptID`) REFERENCES `departmentinfo` (`DeptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinfo`
--

LOCK TABLES `productinfo` WRITE;
/*!40000 ALTER TABLE `productinfo` DISABLE KEYS */;
INSERT INTO `productinfo` VALUES (100,'Book','',1.09,1.59,'sage','2022-01-15','2032-01-15',2),(101,'Pen','',2.03,3.05,'sage','2022-01-15','2032-01-15',1),(102,'Pen','',4.01,6.24,'Smart','2022-03-02','2032-04-15',1),(103,'Book','',1.01,2.99,'smart','2022-03-02','2032-04-15',2),(104,'Laptop','',365.25,499.99,'Acer corei-5','2021-12-25','2032-01-15',3),(105,'plaintain','',0.36,0.99,'mexican','2022-06-21','2022-08-30',1),(106,'banana','',0.47,0.99,'organic','2022-07-25','2022-08-30',2),(107,'chips','',0.99,1.69,'cheetos','2022-07-25','2023-07-25',2),(108,'pizza','',1.59,2.99,'dominos','2022-08-01','2023-08-01',3),(109,'Male white Shirt','xm',5.99,9.99,'polo','2022-01-31','2032-01-15',4);
/*!40000 ALTER TABLE `productinfo` ENABLE KEYS */;
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
