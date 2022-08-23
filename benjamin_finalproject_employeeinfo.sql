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
-- Table structure for table `employeeinfo`
--

DROP TABLE IF EXISTS `employeeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeinfo` (
  `EmployeeID` int NOT NULL,
  `EmployeeLN` varchar(50) NOT NULL,
  `EmployeeFN` varchar(50) NOT NULL,
  `EmployeeMN` varchar(50) DEFAULT NULL,
  `Date_Birth` date NOT NULL,
  `HomeAdress` varchar(300) NOT NULL,
  `PrimaryContact` int NOT NULL,
  `EmergencyContact` char(10) DEFAULT NULL,
  `DateHired` date NOT NULL,
  `DateResigned` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeinfo`
--

LOCK TABLES `employeeinfo` WRITE;
/*!40000 ALTER TABLE `employeeinfo` DISABLE KEYS */;
INSERT INTO `employeeinfo` VALUES (100201,'Jack','Faith','','2000-06-04','\"3rd First Street Joliet il\"',1002003000,'3001005000','2021-06-30','\r'),(100202,'smith','Hope','Forbes','2000-02-28','\"4th W First Street Romeovile Il\"',1002013000,'3001005001','2020-09-30','\r'),(100203,'King','Love','','1990-09-02','\"1919 W Gate Street Napervile IL\"',1000202300,'3001005002','2020-06-30','\r'),(100204,'Shawn','Kindy','','1991-11-21','\"300 Chase street Joliet IL\"',1002063000,'3001005005','2020-04-20',' \r'),(100205,'Lily','Chase','Cynthia','1992-07-20','\"564 Lincoln Ave Joliet KY\"',1002073000,'3001005006','2022-06-30','\r'),(100206,'Ellen','Love','','1993-12-25','\"301 W glitch street colombus OH\"',1002083000,'3001005007','2020-06-30','2022-08-08\r'),(100209,'Matt','White','Joyce','1994-12-25','\"631 E glitch Ave Hammond IN\"',1002093000,'3001005008','2022-10-14','\r'),(200201,'Tyler','Peace','Magan','2001-08-10','\"201 S VAN Hill  Aurora IL\"',1002043000,'3001005003','2020-12-30','\r'),(200203,'Adams','Strong','','1998-06-14','\"201 E VAN Hill Glenn IL\"',1002053000,'3001005004','2020-08-30','\r'),(300103,'Joan','Black','','1995-05-30','\"6355 Nichol street New Lenox IL\"',1003003000,'3001005009','2020-07-30','');
/*!40000 ALTER TABLE `employeeinfo` ENABLE KEYS */;
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
