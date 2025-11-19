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
-- Table structure for table `tratta`
--

DROP TABLE IF EXISTS `tratta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratta` (
  `id_tratta` int NOT NULL AUTO_INCREMENT,
  `id_stazione_partenza` int NOT NULL,
  `id_stazione_arrivo` int NOT NULL,
  `distanza_km` int NOT NULL,
  `tipo_tratta` enum('REGIONALE','ALTA_VELOCITA') NOT NULL,
  `coefficiente_prezzo` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_tratta`),
  KEY `fk_tratta_partenza` (`id_stazione_partenza`),
  KEY `fk_tratta_arrivo` (`id_stazione_arrivo`),
  CONSTRAINT `fk_tratta_arrivo` FOREIGN KEY (`id_stazione_arrivo`) REFERENCES `stazione` (`id_stazione`) ON DELETE RESTRICT,
  CONSTRAINT `fk_tratta_partenza` FOREIGN KEY (`id_stazione_partenza`) REFERENCES `stazione` (`id_stazione`) ON DELETE RESTRICT,
  CONSTRAINT `chk_tratta_stazioni` CHECK ((`id_stazione_partenza` <> `id_stazione_arrivo`))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratta`
--

LOCK TABLES `tratta` WRITE;
/*!40000 ALTER TABLE `tratta` DISABLE KEYS */;
INSERT INTO `tratta` VALUES (1,1,4,780,'ALTA_VELOCITA',0.20),(2,1,5,260,'REGIONALE',0.12),(3,5,6,120,'REGIONALE',0.12),(4,3,7,260,'ALTA_VELOCITA',0.18),(5,8,9,250,'REGIONALE',0.10),(6,8,10,230,'REGIONALE',0.10),(7,9,10,100,'REGIONALE',0.10);
/*!40000 ALTER TABLE `tratta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-19 15:37:41
