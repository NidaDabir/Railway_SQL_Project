-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: railway_project
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `delay`
--

DROP TABLE IF EXISTS `delay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delay` (
  `delay_id` int NOT NULL AUTO_INCREMENT,
  `train_id` int DEFAULT NULL,
  `station_id` int DEFAULT NULL,
  `delay_minutes` int DEFAULT NULL,
  `delay_reason` varchar(100) DEFAULT NULL,
  `delay_date` date DEFAULT NULL,
  PRIMARY KEY (`delay_id`),
  KEY `train_id` (`train_id`),
  KEY `station_id` (`station_id`),
  CONSTRAINT `delay_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`),
  CONSTRAINT `delay_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `stations` (`station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delay`
--

LOCK TABLES `delay` WRITE;
/*!40000 ALTER TABLE `delay` DISABLE KEYS */;
INSERT INTO `delay` VALUES (1,1,1,10,'Signal Issue','2026-01-01'),(2,1,2,15,'Traffic','2026-01-01'),(3,2,3,5,'Late Start','2026-01-02'),(4,3,4,20,'Rain','2026-01-02'),(5,4,5,12,'Technical','2026-01-03'),(6,5,6,25,'Engine Issue','2026-01-03'),(7,1,3,18,'Traffic','2026-01-04'),(8,2,4,7,'Signal','2026-01-04'),(9,3,5,30,'Rain','2026-01-05'),(10,4,6,9,'Late Arrival','2026-01-05'),(11,1,7,16,'Traffic','2026-01-06'),(12,2,8,11,'Signal','2026-01-06'),(13,3,9,14,'Rain','2026-01-07'),(14,4,10,6,'Late','2026-01-07');
/*!40000 ALTER TABLE `delay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16 18:50:32
