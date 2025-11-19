-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: afti_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `corsa`
--

DROP TABLE IF EXISTS `corsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corsa` (
  `id_corsa` int NOT NULL AUTO_INCREMENT,
  `id_tratta` int NOT NULL,
  `id_treno` int NOT NULL,
  `data_partenza_effettiva` datetime NOT NULL,
  `data_arrivo_effettiva` datetime NOT NULL,
  `numero_treno` varchar(50) NOT NULL,
  `stato` enum('IN_ORARIO','RITARDO','SOPPRESSA','EFFETTUATA') NOT NULL,
  `minuti_ritardo` int DEFAULT '0',
  PRIMARY KEY (`id_corsa`),
  KEY `fk_corsa_tratta` (`id_tratta`),
  KEY `fk_corsa_treno` (`id_treno`),
  CONSTRAINT `fk_corsa_tratta` FOREIGN KEY (`id_tratta`) REFERENCES `tratta` (`id_tratta`) ON DELETE RESTRICT,
  CONSTRAINT `fk_corsa_treno` FOREIGN KEY (`id_treno`) REFERENCES `treno` (`id_treno`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corsa`
--

LOCK TABLES `corsa` WRITE;
/*!40000 ALTER TABLE `corsa` DISABLE KEYS */;
INSERT INTO `corsa` VALUES (1,1,1,'2025-02-12 07:00:00','2025-02-12 12:00:00','ST9511','IN_ORARIO',0),(2,2,3,'2025-02-12 08:30:00','2025-02-12 11:00:00','RR702','RITARDO',15),(3,3,4,'2025-02-12 12:00:00','2025-02-12 16:45:00','RC341','EFFETTUATA',5),(4,4,2,'2025-02-12 09:15:00','2025-02-12 11:45:00','ST8390','IN_ORARIO',0),(5,5,5,'2025-02-12 10:00:00','2025-02-12 13:15:00','CN701','RITARDO',20),(6,6,5,'2025-02-12 14:00:00','2025-02-12 17:10:00','CN702','IN_ORARIO',0),(7,7,4,'2025-02-12 18:00:00','2025-02-12 19:30:00','RC980','IN_ORARIO',0);
/*!40000 ALTER TABLE `corsa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-19 15:37:48
