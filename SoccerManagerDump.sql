-- MySQL dump 10.13  Distrib 9.0.1, for macos13.7 (arm64)
--
-- Host: 127.0.0.1    Database: SoccerManager
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AcquiredTeamTactics`
--

DROP TABLE IF EXISTS `AcquiredTeamTactics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AcquiredTeamTactics` (
  `AcquiredTacticID` int NOT NULL AUTO_INCREMENT,
  `TeamID` int DEFAULT NULL,
  `TacticID` int DEFAULT NULL,
  PRIMARY KEY (`AcquiredTacticID`),
  KEY `TeamID` (`TeamID`),
  KEY `TacticID` (`TacticID`),
  CONSTRAINT `acquiredteamtactics_ibfk_1` FOREIGN KEY (`TeamID`) REFERENCES `Teams` (`TeamID`),
  CONSTRAINT `acquiredteamtactics_ibfk_2` FOREIGN KEY (`TacticID`) REFERENCES `TeamTactics` (`TacticID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcquiredTeamTactics`
--

LOCK TABLES `AcquiredTeamTactics` WRITE;
/*!40000 ALTER TABLE `AcquiredTeamTactics` DISABLE KEYS */;
INSERT INTO `AcquiredTeamTactics` VALUES (1,1,1),(2,1,5),(3,1,8),(4,2,2),(5,2,7),(6,3,3),(7,3,9),(8,4,4),(9,5,8),(10,5,10),(11,6,3),(12,6,7),(13,7,1),(14,7,4),(15,7,10),(16,8,5),(17,8,6),(18,9,2),(19,9,9),(20,10,8),(21,10,7),(22,11,4),(23,11,1),(24,12,6),(25,12,9),(26,12,10);
/*!40000 ALTER TABLE `AcquiredTeamTactics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AcquiredTraits`
--

DROP TABLE IF EXISTS `AcquiredTraits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AcquiredTraits` (
  `AcquiredTraitID` int NOT NULL AUTO_INCREMENT,
  `PlayerID` int DEFAULT NULL,
  `TraitID` int DEFAULT NULL,
  PRIMARY KEY (`AcquiredTraitID`),
  KEY `PlayerID` (`PlayerID`),
  KEY `TraitID` (`TraitID`),
  CONSTRAINT `acquiredtraits_ibfk_1` FOREIGN KEY (`PlayerID`) REFERENCES `Players` (`PlayerID`),
  CONSTRAINT `acquiredtraits_ibfk_2` FOREIGN KEY (`TraitID`) REFERENCES `PlayerTraits` (`TraitID`)
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcquiredTraits`
--

LOCK TABLES `AcquiredTraits` WRITE;
/*!40000 ALTER TABLE `AcquiredTraits` DISABLE KEYS */;
INSERT INTO `AcquiredTraits` VALUES (1,1,1),(2,2,9),(3,4,19),(4,4,16),(5,5,16),(6,6,11),(7,6,24),(8,7,17),(9,7,16),(10,7,18),(11,8,7),(12,9,18),(13,10,14),(14,10,13),(15,11,8),(16,12,10),(17,12,7),(18,12,22),(19,13,9),(20,14,9),(21,14,20),(22,16,13),(23,16,5),(24,17,23),(25,18,5),(26,18,15),(27,18,13),(28,19,10),(29,21,1),(30,21,9),(31,22,16),(32,24,19),(33,25,17),(34,26,8),(35,26,7),(36,27,6),(37,28,4),(38,28,13),(39,29,10),(43,31,9),(44,31,20),(45,32,7),(46,34,16),(47,35,17),(48,35,5),(49,36,9),(50,37,1),(51,37,23),(52,38,4),(53,38,11),(54,38,20),(56,40,16),(57,40,19),(58,42,7),(59,42,8),(60,42,18),(61,43,6),(62,44,14),(63,44,10),(64,45,18),(65,46,9),(66,46,5),(67,47,8),(68,48,7),(69,48,18),(70,49,10),(71,49,11),(72,49,4),(73,50,9),(74,51,8),(75,51,13),(76,53,9),(77,53,7),(78,54,1),(79,54,23),(80,54,18),(81,55,23),(82,56,4),(83,56,6),(84,57,16),(85,58,19),(86,58,17),(87,59,13),(88,60,11),(89,60,7),(90,61,24),(91,62,6),(92,63,8),(93,63,18),(94,64,14),(95,64,10),(96,64,5),(97,65,8),(98,65,15),(99,66,9),(100,67,9),(101,67,1),(102,67,7),(103,68,9),(104,68,20),(105,69,9),(106,69,10),(107,70,11),(108,71,11),(109,71,17),(110,72,16),(111,73,23),(112,73,1),(113,74,4),(114,74,6),(115,75,19),(116,76,13),(117,76,20),(118,77,16),(119,78,11),(120,78,17),(121,79,8),(122,80,7),(123,80,18),(124,80,10),(125,81,14),(126,82,18),(127,82,5),(128,83,8),(129,84,10),(130,84,9),(131,84,7),(132,85,9),(133,85,1),(134,86,9),(135,87,9),(136,87,13),(137,88,11),(138,89,6),(139,90,16),(140,90,17),(141,91,23),(142,92,4),(143,93,5),(144,93,6),(145,94,19),(146,95,16),(147,96,11),(148,96,13),(149,97,7),(152,99,6),(153,99,18),(154,99,13),(155,100,14),(156,100,10),(157,101,9),(158,101,5),(159,102,8),(160,103,10),(161,103,6),(162,103,20),(163,104,9),(164,105,9),(165,105,13),(166,106,7),(167,107,6),(168,107,8),(169,108,17),(170,109,23),(171,110,4),(172,110,6),(173,111,19),(174,112,16),(175,112,17),(176,113,13),(177,114,11),(178,114,17),(179,115,11),(180,116,6),(181,116,7),(182,117,7),(183,117,18),(184,117,10),(185,118,14),(186,119,14),(187,119,10),(188,120,8),(189,121,7),(190,121,9),(191,121,13),(192,122,9),(193,122,1),(194,123,9),(195,124,9),(196,124,5),(197,125,9),(198,125,7),(199,125,10),(200,126,6),(201,127,23),(202,127,1),(203,128,4),(204,129,7),(205,129,8),(206,129,13),(207,130,16),(208,130,17),(209,131,19),(210,132,11),(211,132,17),(212,133,7),(213,134,6),(214,134,9),(215,135,13),(216,136,14),(217,136,10),(218,137,10),(219,138,8),(220,138,9),(221,139,7),(222,139,10),(223,139,14),(224,140,9),(225,140,1),(226,141,9),(227,142,9),(228,142,13),(229,142,5),(230,143,9),(231,144,6),(232,144,17),(233,145,23),(234,145,1),(235,146,4),(236,147,16),(237,147,9),(238,148,19),(239,148,16),(240,148,13),(241,149,19),(242,150,11),(243,150,5),(244,151,8),(245,152,7),(246,152,13),(247,153,6),(248,154,14),(249,154,10),(250,155,7),(251,156,8),(252,156,9),(253,157,10),(254,158,9),(255,158,13),(256,158,1),(257,159,9),(258,159,20),(259,160,9),(260,161,9),(261,161,7),(262,162,18),(263,163,23),(264,163,1),(265,164,4),(266,165,19),(267,165,6),(268,165,16),(269,166,16),(270,166,13),(271,167,19),(272,168,11),(273,169,7),(274,169,18),(275,170,6),(276,171,14),(277,171,10),(278,172,7),(279,173,8),(280,173,9),(281,174,10),(282,175,9),(283,175,13),(284,175,1),(285,176,9),(286,176,20),(287,177,9),(288,177,7),(289,178,9),(290,179,6),(291,179,17),(292,180,18),(293,181,23),(294,182,4),(295,182,6),(296,183,16),(297,183,13),(298,184,19),(299,185,16),(300,185,17),(301,186,11),(302,186,17),(303,187,11),(304,188,7),(305,188,6),(306,188,10),(307,189,18),(308,190,6),(309,190,13),(310,191,14),(311,191,5),(312,192,7),(313,193,8),(314,193,9),(315,193,10),(316,194,9),(317,195,9),(318,195,13),(319,196,9),(320,196,7),(321,197,9),(322,197,1),(323,197,8),(324,198,6),(325,199,23),(326,199,1),(327,200,4),(328,201,16),(329,201,18),(330,202,19),(331,202,16),(332,202,13),(333,203,19),(334,204,11),(335,205,11),(336,205,17),(337,206,7),(338,206,8),(339,206,18),(340,207,6),(341,207,13),(342,208,6),(343,209,14),(344,209,10),(345,210,14),(346,211,8),(347,211,9),(348,212,10),(349,212,9),(350,213,9),(351,214,9),(352,214,7),(353,215,9),(354,215,13),(355,216,6);
/*!40000 ALTER TABLE `AcquiredTraits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Games`
--

DROP TABLE IF EXISTS `Games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Games` (
  `GameID` int NOT NULL AUTO_INCREMENT,
  `HomeTeamID` int DEFAULT NULL,
  `AwayTeamID` int DEFAULT NULL,
  `Time` datetime DEFAULT NULL,
  `HomeGoals` int DEFAULT NULL,
  `AwayGoals` int DEFAULT NULL,
  PRIMARY KEY (`GameID`),
  KEY `HomeTeamID` (`HomeTeamID`),
  KEY `AwayTeamID` (`AwayTeamID`),
  CONSTRAINT `games_ibfk_1` FOREIGN KEY (`HomeTeamID`) REFERENCES `Teams` (`TeamID`),
  CONSTRAINT `games_ibfk_2` FOREIGN KEY (`AwayTeamID`) REFERENCES `Teams` (`TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Games`
--

LOCK TABLES `Games` WRITE;
/*!40000 ALTER TABLE `Games` DISABLE KEYS */;
INSERT INTO `Games` VALUES (1,1,2,'2024-12-12 15:00:00',3,1),(2,3,5,'2025-01-03 16:56:00',0,0),(3,1,6,'2024-12-28 17:05:00',2,2),(4,1,6,'2024-12-28 17:05:00',2,4),(5,2,3,'2024-12-12 17:10:00',10,4),(6,1,2,'2024-12-12 17:14:00',10,2),(7,1,2,'2024-12-12 17:15:00',10,4),(8,1,4,'2025-01-10 17:17:00',3,3),(9,1,1,'2024-12-21 17:19:00',2,2),(10,6,7,'2024-12-13 18:45:00',10,5),(11,12,11,'2024-12-13 19:15:00',100,99),(12,9,11,'2024-12-12 20:12:00',1001,8),(13,8,7,'2024-12-12 22:49:00',10000,12),(14,9,11,'2024-12-27 23:10:00',3,4),(15,11,5,'2025-01-25 23:11:00',2,1),(16,11,4,'2024-12-23 23:11:00',4,0),(17,3,11,'2024-12-13 23:12:00',3,6),(18,11,8,'2024-12-18 23:12:00',1,0),(19,1,3,'2024-12-05 18:05:00',9999,999999);
/*!40000 ALTER TABLE `Games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Players`
--

DROP TABLE IF EXISTS `Players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Players` (
  `PlayerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Age` int DEFAULT NULL,
  `Height` int DEFAULT NULL,
  `PositionID` int DEFAULT NULL,
  `OffensiveCapabilities` int DEFAULT NULL,
  `DefensiveCapabilities` int DEFAULT NULL,
  `SpecialNotes` varchar(255) DEFAULT NULL,
  `TeamID` int DEFAULT NULL,
  PRIMARY KEY (`PlayerID`),
  KEY `PositionID` (`PositionID`),
  KEY `TeamID` (`TeamID`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`PositionID`) REFERENCES `Positions` (`PositionID`),
  CONSTRAINT `players_ibfk_2` FOREIGN KEY (`TeamID`) REFERENCES `Teams` (`TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Players`
--

LOCK TABLES `Players` WRITE;
/*!40000 ALTER TABLE `Players` DISABLE KEYS */;
INSERT INTO `Players` VALUES (1,'Lucas Black',28,195,1,60,85,'',1),(2,'Evan White',24,175,2,65,80,'',1),(3,'Mason Grey',22,178,3,63,78,'',1),(4,'Owen Scott',30,185,4,50,90,'',1),(5,'Liam Foster',25,188,4,48,88,'',1),(6,'Ryan Harris',27,182,5,55,83,'',1),(7,'Isaiah Cooper',26,180,6,52,85,'',1),(8,'Matthew King',23,176,8,70,70,'',1),(9,'Sebastian Clark',29,177,8,75,68,'',1),(10,'Nathaniel Cruz',24,175,10,85,50,'',1),(11,'Aiden Brooks',21,174,7,88,45,'',1),(12,'Tyler Davis',22,172,11,87,46,'',1),(13,'James Ward',26,183,9,90,40,'',1),(14,'Jacob Mitchell',28,181,9,88,42,'',1),(15,'John Parker',23,176,2,70,69,'',1),(16,'Henry Walker',22,177,7,82,50,'',1),(17,'Elliott Bennett',31,187,4,48,85,'',1),(18,'Samuel Carter',26,176,6,55,75,'',1),(19,'Daniel Grey',23,192,1,62,83,'',2),(20,'David Richards',26,174,2,67,79,'',2),(21,'Matthew Carter',24,177,3,64,77,'',2),(22,'Joshua Adams',28,184,4,52,89,'',2),(23,'Tyler Evans',30,186,4,50,88,'',2),(24,'Kyle King',25,181,5,56,84,'',2),(25,'Oliver Moore',27,179,6,53,83,'',2),(26,'Elijah Scott',23,175,8,72,69,'',2),(27,'Ryan Ross',25,174,8,74,70,'',2),(28,'Jake Foster',21,173,10,86,49,'',2),(29,'Landon Walker',22,172,7,87,46,'',2),(31,'Dylan Mitchell',26,182,9,90,39,'',2),(32,'Luke Rivera',28,181,9,91,40,'',2),(33,'Logan Carter',23,176,2,69,70,'',2),(34,'Jack Taylor',22,177,7,81,50,'',2),(35,'Maximillian Hayes',30,187,4,49,86,'',2),(36,'William Wilson',26,178,6,55,76,'',2),(37,'Liam Nelson',24,193,1,63,84,'',3),(38,'Oliver Clarke',26,174,2,68,80,'',3),(40,'Zachary Hughes',29,185,4,51,89,'',3),(41,'Samuel Cooper',28,188,4,50,88,'',3),(42,'Ryan Kelly',26,182,5,56,83,'',3),(43,'Daniel Reed',27,179,6,54,82,'',3),(44,'Jacob Garcia',23,175,8,72,69,'',3),(45,'Maxwell Diaz',25,176,8,73,70,'',3),(46,'Evan Bennett',21,173,10,85,48,'',3),(47,'Jackson Ross',22,174,7,87,45,'',3),(48,'Alexander Ward',24,171,11,88,44,'',3),(49,'Thomas Scott',26,182,9,90,39,'',3),(50,'Jackson Carter',28,181,9,91,40,'',3),(51,'David Ward',23,176,2,70,69,'',3),(52,'Ryan Barnes',22,177,7,81,50,'',3),(53,'Chris Johnson',30,187,4,49,86,'',3),(54,'Michael Moore',26,178,6,55,75,'',3),(55,'Ethan Carter',26,193,1,61,84,'',4),(56,'Jack Adams',22,175,2,67,79,'',4),(57,'Nathan Collins',25,177,3,65,78,'',4),(58,'Liam Turner',30,188,4,50,88,'',4),(59,'Oliver Reed',28,186,4,52,87,'',4),(60,'Ryan Evans',24,181,5,56,83,'',4),(61,'Connor Hughes',27,179,6,54,85,'',4),(62,'Lucas Shaw',23,176,8,72,69,'',4),(63,'Mason Kelly',25,175,8,73,71,'',4),(64,'Noah Price',21,173,10,86,48,'',4),(65,'Aiden Morris',22,174,7,88,46,'',4),(66,'Dylan Howard',24,172,11,87,45,'',4),(67,'Caleb Foster',26,182,9,90,40,'',4),(68,'Jacob Murphy',28,181,9,89,41,'',4),(69,'Logan Bennett',23,176,2,70,69,'',4),(70,'Carter Bell',21,178,7,81,50,'',4),(71,'Owen Walsh',29,187,4,49,85,'',4),(72,'Hunter Perry',26,178,6,55,74,'',4),(73,'James Morgan',24,194,1,60,86,'',5),(74,'Benjamin Carter',22,174,2,66,81,'',5),(75,'Elijah Bailey',25,176,3,64,80,'',5),(76,'Henry Scott',30,189,4,50,88,'',5),(77,'Samuel Hayes',27,187,4,51,89,'',5),(78,'Alexander Diaz',26,183,5,57,82,'',5),(79,'Matthew Lee',28,180,6,53,84,'',5),(80,'Luke Rivera',23,176,8,72,68,'',5),(81,'Michael King',25,175,8,74,70,'',5),(82,'Daniel Brooks',22,173,10,85,49,'',5),(83,'Sebastian Foster',21,172,7,87,45,'',5),(84,'Julian Russell',24,171,11,86,46,'',5),(85,'Nathaniel Coleman',26,183,9,89,41,'',5),(86,'Dominic Carter',28,182,9,91,40,'',5),(87,'Andrew Ward',23,177,2,68,70,'',5),(88,'Christopher Ross',21,176,7,82,49,'',5),(89,'Isaac Clark',30,186,4,48,87,'',5),(90,'Adrian Ortiz',27,179,6,55,75,'',5),(91,'Evan Mitchell',23,192,1,62,85,'',6),(92,'Logan Rogers',24,175,2,65,80,'',6),(93,'Brandon Reed',25,178,3,66,78,'',6),(94,'Hunter Sanders',29,185,4,51,89,'',6),(95,'Caleb Butler',28,188,4,50,88,'',6),(96,'Jordan Fisher',27,182,5,56,84,'',6),(97,'Cole Harris',24,180,6,54,83,'',6),(99,'Ian Turner',26,174,8,74,71,'',6),(100,'Gavin Ward',21,173,10,86,47,'',6),(101,'Owen Cooper',22,174,7,87,46,'',6),(102,'Aiden Peterson',24,172,11,88,44,'',6),(103,'Elliot Morris',25,182,9,90,39,'',6),(104,'Tristan Bennett',27,181,9,91,40,'',6),(105,'Austin Brooks',23,176,2,69,70,'',6),(106,'Jonah Barnes',22,177,7,80,50,'',6),(107,'Parker Reed',30,187,4,49,86,'',6),(108,'Calvin White',26,179,6,55,76,'',6),(109,'Landon Brooks',25,194,1,61,86,'',7),(110,'Bryce Hill',23,176,2,67,79,'',7),(111,'Zachary Torres',24,177,3,66,78,'',7),(112,'Tyler Evans',29,185,4,51,88,'',7),(113,'Isaiah Ward',28,188,4,50,89,'',7),(114,'Brady Foster',26,182,5,55,84,'',7),(115,'Micah Cooper',27,180,6,54,83,'',7),(116,'Miles Bennett',22,175,8,72,70,'',7),(117,'Weston Clark',25,174,8,74,69,'',7),(118,'Cole Murphy',21,173,10,85,47,'',7),(119,'Jayden Adams',22,174,7,87,46,'',7),(120,'Elias Morgan',24,172,11,88,45,'',7),(121,'Silas Diaz',26,182,9,90,40,'',7),(122,'Declan Hayes',28,181,9,89,41,'',7),(123,'Ryder Hughes',23,176,2,69,70,'',7),(124,'Xavier Turner',22,177,7,81,50,'',7),(125,'Grayson Bell',30,187,4,49,86,'',7),(126,'Kai Parker',27,179,6,55,76,'',7),(127,'Ezra Peterson',23,193,1,62,85,'',8),(128,'Asher Walsh',24,175,2,65,81,'',8),(129,'Malachi Barnes',25,176,3,64,79,'',8),(130,'Beckett Rivera',28,185,4,51,88,'',8),(131,'Jace Perry',27,187,4,50,89,'',8),(132,'Knox Fisher',26,182,5,55,84,'',8),(133,'Cohen Howard',27,179,6,54,83,'',8),(134,'Easton Ward',22,174,8,72,69,'',8),(135,'Harrison Ortiz',25,175,8,74,70,'',8),(136,'Matteo Rogers',21,173,10,85,48,'',8),(137,'Jaxon Hill',22,172,7,87,45,'',8),(138,'Finn Mitchell',24,171,11,88,44,'',8),(139,'Axel Morgan',26,183,9,91,39,'',8),(140,'Maxwell Diaz',28,182,9,90,40,'',8),(141,'Kaden Hayes',23,176,2,68,70,'',8),(142,'Jett Adams',22,177,7,80,49,'',8),(143,'Bodhi Russell',30,186,4,49,87,'',8),(144,'Jude Bennett',27,178,6,55,75,'',8),(145,'Ronan Ward',24,192,1,60,85,'',9),(146,'Walker Walsh',22,175,2,66,79,'',9),(147,'Sullivan Clark',25,177,3,65,78,'',9),(148,'Paxton Carter',28,186,4,50,89,'',9),(149,'Kane Murphy',27,188,4,51,88,'',9),(150,'Anderson Perry',26,182,5,57,83,'',9),(151,'Milo Hayes',27,180,6,54,84,'',9),(152,'Hayes Brooks',23,175,8,72,69,'',9),(153,'Holden Ortiz',24,176,8,74,71,'',9),(154,'Remy Hughes',21,174,10,85,49,'',9),(155,'Sage Diaz',22,173,7,88,46,'',9),(156,'Zion Bennett',24,172,11,87,45,'',9),(157,'Luca Mitchell',26,183,9,90,40,'',9),(158,'Ford Rivera',28,181,9,89,41,'',9),(159,'Wells Adams',23,176,2,69,70,'',9),(160,'Boston Cooper',21,177,7,81,50,'',9),(161,'Arlo Howard',30,187,4,49,86,'',9),(162,'Ellis King',26,179,6,55,76,'',9),(163,'Nolan Wright',23,194,1,61,85,'',10),(164,'Beau Carter',24,176,2,67,79,'',10),(165,'Tanner Morris',22,177,3,64,78,'',10),(166,'Graham Hill',28,185,4,50,88,'',10),(167,'Porter Evans',30,186,4,51,87,'',10),(168,'Reed Ward',26,181,5,56,84,'',10),(169,'Jasper Ross',27,180,6,53,83,'',10),(170,'Spencer King',23,174,8,72,69,'',10),(171,'Hendrix Parker',25,175,8,73,70,'',10),(172,'Emerson Perry',21,173,10,85,49,'',10),(173,'Camden Murphy',22,174,7,87,45,'',10),(174,'Rowan Clark',24,172,11,88,44,'',10),(175,'Atlas Howard',26,183,9,90,40,'',10),(176,'Knox Morgan',28,181,9,89,41,'',10),(177,'Weston Bell',23,176,2,68,70,'',10),(178,'Chase Adams',22,177,7,81,50,'',10),(179,'Kash Rivera',30,187,4,49,86,'',10),(180,'Gunner Barnes',26,179,6,55,75,'',10),(181,'Hudson Cooper',24,193,1,62,85,'',11),(182,'Rhett Ward',22,175,2,65,80,'',11),(183,'Zane Perry',25,178,3,66,78,'',11),(184,'Kade Howard',28,185,4,51,89,'',11),(185,'Jaxson King',30,187,4,50,88,'',11),(186,'Ryker Ross',26,183,5,56,84,'',11),(187,'Hugo Carter',27,181,6,54,83,'',11),(188,'Sawyer Bell',23,175,8,72,69,'',11),(189,'Bryson Wright',25,176,8,74,70,'',11),(190,'Dallas Parker',21,173,10,86,47,'',11),(191,'Jayce Rivera',22,174,7,87,46,'',11),(192,'Kieran Barnes',24,171,11,88,44,'',11),(193,'Travis Clark',26,182,9,90,39,'',11),(194,'Colton Walsh',28,181,9,91,40,'',11),(195,'Caden Diaz',23,176,2,69,70,'',11),(196,'Rylan Hayes',21,177,7,80,50,'',11),(197,'Ridge Evans',30,187,4,49,86,'',11),(198,'Shane Mitchell',26,178,6,55,76,'',11),(199,'Bentley Ross',23,192,1,61,85,'',12),(200,'Maverick King',24,175,2,67,79,'',12),(201,'Crew Carter',25,177,3,65,78,'',12),(202,'Cash Ward',29,186,4,50,88,'',12),(203,'Ezekiel Howard',30,188,4,51,87,'',12),(204,'Bowen Perry',26,182,5,55,83,'',12),(205,'Ronan Diaz',27,180,6,54,84,'',12),(206,'Kyler Hayes',23,175,8,72,69,'',12),(207,'Pierce Adams',25,174,8,73,70,'',12),(208,'Cruz Bennett',21,173,10,85,49,'',12),(209,'Tate Hill',22,172,7,87,45,'',12),(210,'Colt Morgan',24,171,11,88,44,'',12),(211,'Flynn Walsh',26,183,9,90,40,'',12),(212,'Brock Barnes',28,181,9,89,41,'',12),(213,'Walker Rivera',23,176,2,68,70,'',12),(214,'Wilder Clark',21,177,7,81,50,'',12),(215,'Quentin Evans',30,187,4,49,86,'',12),(216,'Zeke Parker',26,178,6,55,76,'',12),(218,'Naomi Shannon',19,158,6,99,99,'Dangerous on the ball, keep away from the fans she riles them up!',11),(224,'Will Lamb',21,178,9,90,60,'kind caring and sexy',11),(225,'Zack Klopukh',20,176,10,84,40,'fancy with it',6);
/*!40000 ALTER TABLE `Players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PlayerTraits`
--

DROP TABLE IF EXISTS `PlayerTraits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PlayerTraits` (
  `TraitID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TraitID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlayerTraits`
--

LOCK TABLES `PlayerTraits` WRITE;
/*!40000 ALTER TABLE `PlayerTraits` DISABLE KEYS */;
INSERT INTO `PlayerTraits` VALUES (1,'Clinical Finisher','The player excels at converting chances into goals with precise finishes.'),(2,'Power Header','The player has a strong ability to win aerial duels and score from headers.'),(3,'Long Shot Taker','The player is dangerous from distance, with a powerful shot from outside the box.'),(4,'Quick Feet','The player has exceptional agility and can quickly change direction while dribbling.'),(5,'Free Kick Specialist','The player is skilled at taking free kicks, especially in dangerous areas.'),(6,'Playmaker','The player is the team\'s primary creator, capable of setting up scoring opportunities.'),(7,'Technical Dribbler','The player has excellent close ball control and is difficult to dispossess in tight spaces.'),(8,'Speedster','The player’s incredible pace allows them to outrun opponents, particularly on the counterattack.'),(9,'Composed Finisher','The player remains calm under pressure and scores consistently in one-on-one situations.'),(10,'Creative Passer','The player has the vision and flair to execute unpredictable and effective passes.'),(11,'Anchor Man','The player provides defensive stability and shields the backline with excellent positional play.'),(12,'Early Crosser','The player has a strong ability to deliver dangerous crosses early in the attack.'),(13,'Box-to-Box','The player covers a lot of ground, contributing both offensively and defensively.'),(14,'Physical Presence','The player uses their size and strength to dominate in duels and retain possession under pressure.'),(15,'Flair','The player adds creativity and style to their play with unpredictable moves and tricks.'),(16,'Penalty Taker','The player is especially effective in converting penalty kicks with high accuracy.'),(17,'Ball Winner','The player excels at breaking up opposition attacks with timely tackles and interceptions.'),(18,'Counter-Attacker','The player thrives on the counter, using pace and positioning to exploit gaps in the opposition’s defense.'),(19,'Visionary','The player has exceptional vision and can create chances with imaginative passes and movement.'),(20,'Solid Tackler','The player has a strong ability to win the ball cleanly from opponents in defensive situations.'),(21,'Set Piece Expert','The player is proficient in taking corners, free kicks, and indirect set pieces with pinpoint accuracy.'),(22,'Team Captain','The player provides leadership on and off the field, motivating teammates and organizing the defense.'),(23,'Last Man','The player is excellent in one-on-one defensive situations and has the composure to handle pressure.'),(24,'One-on-One Specialist','The player excels at going past defenders in one-on-one situations, either with dribbles or skill moves.'),(25,'Long Passer','The player is particularly adept at making long passes, switching play, and finding teammates over distance.'),(26,'Pressing Machine','The player excels at applying high pressure on opponents and forcing mistakes.'),(27,'Dribble King','The player has superior dribbling skills, often beating multiple defenders with ease.'),(28,'Visionary Passer','The player has an exceptional ability to spot and execute long, incisive passes.'),(29,'Stealthy Runner','The player can make clever, unnoticed runs behind the defense to receive through balls.'),(30,'Team Player','The player prioritizes the team\'s needs over individual glory, often making selfless passes and movements.'),(31,'One-Touch Passer','The player is quick with first-time passes, reducing time on the ball and increasing team tempo.'),(32,'Game Changer','The player has a knack for scoring or assisting in critical moments, particularly in the final third.'),(33,'Quick Reflexes','The player has exceptional reflexes, often making crucial saves or intercepting balls in tight spaces.'),(34,'Positional Sense','The player has an intuitive understanding of positioning, always being in the right place at the right time.'),(35,'Technical Master','The player can perform complex skills and tricks under pressure, maintaining control in tight spaces.');
/*!40000 ALTER TABLE `PlayerTraits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Positions`
--

DROP TABLE IF EXISTS `Positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Positions` (
  `PositionID` int NOT NULL,
  `PositionName` varchar(50) NOT NULL,
  PRIMARY KEY (`PositionID`),
  UNIQUE KEY `PositionName` (`PositionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Positions`
--

LOCK TABLES `Positions` WRITE;
/*!40000 ALTER TABLE `Positions` DISABLE KEYS */;
INSERT INTO `Positions` VALUES (10,'Attacking Midfielder'),(4,'Center-Back'),(8,'Central Midfielder'),(6,'Defensive Midfielder'),(9,'Foward'),(1,'Goalkeeper'),(5,'Half-Back'),(3,'Left Back'),(11,'Left Winger'),(2,'Right Back'),(7,'Right Winger');
/*!40000 ALTER TABLE `Positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teams` (
  `TeamID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Coach` varchar(255) DEFAULT NULL,
  `HomeColor` varchar(50) DEFAULT NULL,
  `AwayColor` varchar(50) DEFAULT NULL,
  `Stadium` varchar(255) DEFAULT NULL,
  `Wins` int DEFAULT NULL,
  `Losses` int DEFAULT NULL,
  `Ties` int DEFAULT NULL,
  PRIMARY KEY (`TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
INSERT INTO `Teams` VALUES (1,'Firestorm FC','Alex Flame','Red','Black','Blaze Arena',2,1,3),(2,'Ice Titans','Elsa Frost','Light Blue','White','Glacier Coliseum',0,2,0),(3,'Thunderbolts','Jack Sparks','Yellow','Dark Gray','Stormbreaker Park',1,2,0),(4,'Desert Scorpions','Sandra Sands','Tan','Orange','Mirage Stadium',0,1,1),(5,'Oceanic Wave','Marina Tide','Blue','Light Gray','Neptune Field',0,1,0),(6,'Iron Warriors','Victor Steele','Silver','Red','The Forge',1,1,0),(7,'Emerald Eagles','Emerald Green','Green','White','Skyview Dome',0,2,0),(8,'Crimson Wolves','Rex Howl','Dark Red','Gray','Wolf\'s Den',1,1,0),(9,'Shadow Panthers','Nina Nightshade','Black','Purple','Moonlit Arena',1,1,0),(10,'Golden Gladiators','Julius Goldsmith','Gold','White','Arena Maximus',0,0,0),(11,'Sapphire Sharks','Captain Finn','Aqua','Dark Blue','Deepwater Stadium',5,2,0),(12,'Phoenix Rising','Fiona Ash','Orange','Yellow','Ashes Arena',1,0,0);
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamTactics`
--

DROP TABLE IF EXISTS `TeamTactics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TeamTactics` (
  `TacticID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TacticID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamTactics`
--

LOCK TABLES `TeamTactics` WRITE;
/*!40000 ALTER TABLE `TeamTactics` DISABLE KEYS */;
INSERT INTO `TeamTactics` VALUES (1,'High Press','An aggressive tactic focusing on pressuring opponents high up the pitch to regain possession quickly.'),(2,'Counter-Attack','A tactic where the team sits back defensively and looks to exploit spaces on the break after winning the ball.'),(3,'Tiki-Taka','A possession-based tactic focused on short, quick passes and constant movement to create chances.'),(4,'Park the Bus','A defensive strategy where the team stays compact and deep to deny the opposition space.'),(5,'Direct Passing','A tactic centered on playing long, direct balls to quickly transition into attack.'),(6,'Wing Play','A tactic that emphasizes creating chances through wide areas and delivering crosses into the box.'),(7,'Possession Play','A patient, control-based tactic that prioritizes keeping the ball and waiting for the right opportunity to attack.'),(8,'Overload the Box','An attacking tactic that involves flooding the opponent’s penalty area with players to create scoring opportunities.'),(9,'High Defensive Line','A defensive tactic that keeps the backline high up the field to compress space and catch attackers offside.'),(10,'Target Man','A tactic that relies on a tall, strong forward to hold up the ball and link play with teammates.'),(11,'False Nine','An unconventional attacking tactic where the central forward drops deep to create space for wingers or midfielders.'),(12,'Compact Defense','A strategy that ensures the defensive structure remains narrow and difficult to break through.'),(13,'Fast Build-Up','A quick-passing tactic aimed at moving the ball rapidly from defense to attack.'),(14,'Gegenpress','A highly aggressive pressing system where players immediately press to regain possession after losing the ball.'),(15,'Low Block','A defensive tactic where the team defends deep in their half, absorbing pressure and looking to counter.');
/*!40000 ALTER TABLE `TeamTactics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13 19:00:36
