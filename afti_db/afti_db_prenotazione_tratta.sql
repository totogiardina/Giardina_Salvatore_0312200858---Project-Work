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
-- Table structure for table `prenotazione_tratta`
--

DROP TABLE IF EXISTS `prenotazione_tratta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenotazione_tratta` (
  `id_prenotazione` int NOT NULL,
  `id_tratta` int NOT NULL,
  `numero_sequenza` int NOT NULL,
  `id_stazione_salita` int NOT NULL,
  `id_stazione_discesa` int NOT NULL,
  PRIMARY KEY (`id_prenotazione`,`numero_sequenza`),
  KEY `fk_pt_tratta` (`id_tratta`),
  KEY `fk_pt_salita` (`id_stazione_salita`),
  KEY `fk_pt_discesa` (`id_stazione_discesa`),
  CONSTRAINT `fk_pt_discesa` FOREIGN KEY (`id_stazione_discesa`) REFERENCES `stazione` (`id_stazione`),
  CONSTRAINT `fk_pt_prenotazione` FOREIGN KEY (`id_prenotazione`) REFERENCES `prenotazione` (`id_prenotazione`) ON DELETE CASCADE,
  CONSTRAINT `fk_pt_salita` FOREIGN KEY (`id_stazione_salita`) REFERENCES `stazione` (`id_stazione`),
  CONSTRAINT `fk_pt_tratta` FOREIGN KEY (`id_tratta`) REFERENCES `tratta` (`id_tratta`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazione_tratta`
--

LOCK TABLES `prenotazione_tratta` WRITE;
/*!40000 ALTER TABLE `prenotazione_tratta` DISABLE KEYS */;
INSERT INTO `prenotazione_tratta` VALUES (1,1,1,1,3),(1,4,2,3,7),(2,3,1,5,6),(3,6,1,8,10);
/*!40000 ALTER TABLE `prenotazione_tratta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-19 15:37:42
