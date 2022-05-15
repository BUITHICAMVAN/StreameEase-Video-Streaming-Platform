-- MySQL dump 10.13  Distrib 8.0.28, for macos12.2 (arm64)
--
-- Host: localhost    Database: Video_Streaming
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `Movies`
--

DROP TABLE IF EXISTS `Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movies` (
  `idMovie` int NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Year` int DEFAULT NULL,
  `Genre` varchar(45) DEFAULT NULL,
  `Director` varchar(45) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Play` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idMovie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
INSERT INTO `Movies` VALUES (1,'Spider-Man: No Way Home',2021,'Sci-fi','Jon Watts','Peter Parker seeks Doctor Strange\'s help to make people forget about Spiderman\'s identity. However, when the spell he casts gets corrupted, several unwanted guests enter their universe.','https://www.youtube.com/embed/JfVOs4VSpmA'),(2,'Forrest Gump',1994,'Romance, Comedy','Robert Zemeckis','Slow-witted Forrest Gump (Tom Hanks) has never thought of himself as disadvantaged, and thanks to his supportive mother (Sally Field), he leads anything but a restricted life. Whether dominating on the gridiron as a college football star, fighting in Vietnam or captaining a shrimp boat, Forrest inspires people with his childlike optimism. But one person Forrest cares about most may be the most difficult to save -- his childhood love, the sweet but troubled Jenny (Robin Wright) ','https://youtube.com/embed/bLvqoHBptjg'),(3,'The Lost City',2022,'Action, Adventure','Aaron Nee, Adam Nee','A reclusive romance novelist on a book tour with her cover model gets swept up in a kidnapping attempt that lands them both in a cutthroat jungle adventure.','https://youtube.com/embed/nfKO9rYDmE8'),(4,'The Silence of the Lambs',1991,'Crime, Thriller','Thomas Harris, Ted Tally','A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.','https://youtube.com/embed/W6Mm8Sbe__o'),(5,'Cabaret',1972,'Music','Bob Fosse','A female girlie club entertainer in Weimar Republic era Berlin romances two men while the Nazi Party rises to power around them.','https://youtube.com/embed/5QS1l1mSDSo'),(6,'Cat on a Hot Tin Roof',1958,'Drama','Richard Brooks','Brick is an alcoholic ex-football player who drinks his days away and resists the affections of his wife. A reunion with his terminal father jogs a host of memories and revelations for both father and son.','https://youtube.com/embed/AzogcorjLOI'),(7,'Beyoncé: Lemonade',2016,'Music','Kahlil Joseph, Dikayl Rimmasch','A view of a woman\'s journey through life.','https://youtube.com/embed/BB5zLq1zcdo'),(8,'Animal',2021,'Documentary','Pedro Pascal, Rebel Wilson','This immersive series follows the world\'s most magnificent creatures, capturing never before seen moments from the heartwarming to the outrageous.','https://youtube.com/embed/YqcOaxJCZr8'),(9,'Cars',2006,'Animation, Family','John Lasseter, Joe Ranft','A hot-shot race-car named Lightning McQueen gets waylaid in Radiator Springs, where he finds the true meaning of friendship and family.','https://youtube.com/embed/SbXIj2T-_uk'),(10,'Finding Nemo',2003,'Animation, Adventure, Comedy','Andrew Stanton, Lee Unkrich','After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.','https://youtube.com/embed/2zLkasScy7A'),(11,'Doctor Strange in the Multiverse of Madness',2022,'Action, Fantasy, Sci-Fi','Sam Raimi','Dr. Stephen Strange casts a forbidden spell that opens the doorway to the multiverse, including alternate versions of himself, whose threat to humanity is too great for the combined forces of Strange, Wong, and Wanda Maximoff.','https://youtube.com/embed/aWzlQ2N6qqg');
/*!40000 ALTER TABLE `Movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `Username` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `Password` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11 22:49:30
