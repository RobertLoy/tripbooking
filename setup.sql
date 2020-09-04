-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: tour
-- Server version	8.0.20

DROP SCHEMA IF EXISTS `tour`;
CREATE SCHEMA `tour`;
USE `tour`;

--
-- Table user for schema `tour`
--

CREATE USER 'DB_JDBC_User' IDENTIFIED BY '7pVk9#5T';

--
-- Table structure for table `boat`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boat` (
  `id_boat` int NOT NULL AUTO_INCREMENT,
  `capacity_boat` int NOT NULL,
  `type_boat` varchar(1) DEFAULT NULL,
  `name_boat` varchar(45) NOT NULL,
  PRIMARY KEY (`id_boat`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `boat` VALUES (1,8,'S','Stingray'),(2,20,'P','Jamaica Runner'),(3,4,'F','Tuna Trawler'),(4,4,'S','Sea Turtle'),(5,6,'A','Odin'),(6,5,'F','Bait and Reel'),(7,6,'F','Reel Good Time'),(8,3,'A','Sea U Later'),(9,35,'P','1 2 Many');

--
-- Table structure for table `customer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id_customer` int NOT NULL AUTO_INCREMENT,
  `name_customer` varchar(45) NOT NULL,
  `email_customer` varchar(45) NOT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `manifest`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manifest` (
  `id_manifest` int NOT NULL,
  `customer_id_manifest` int NOT NULL,
  `trip_id_manifest` int NOT NULL,
  PRIMARY KEY (`id_manifest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trip`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip` (
  `id_trip` int NOT NULL AUTO_INCREMENT,
  `date_trip` date NOT NULL,
  `boat_id_trip` int NOT NULL,
  PRIMARY KEY (`id_trip`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` VALUES (3,'2020-09-03',1),(4,'2020-09-12',5),(5,'2020-09-21',7);

-- Dump completed on 2020-09-04  8:52:48
