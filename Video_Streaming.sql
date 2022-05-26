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
-- Table structure for table `Actors`
--

DROP TABLE IF EXISTS `Actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Actors` (
  `aID` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(2000) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `Nationality` varchar(45) DEFAULT NULL,
  `alink` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actors`
--

LOCK TABLES `Actors` WRITE;
/*!40000 ALTER TABLE `Actors` DISABLE KEYS */;
INSERT INTO `Actors` VALUES ('1','Jon Watts',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director`
--

DROP TABLE IF EXISTS `Director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Director` (
  `dID` varchar(45) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `dDescription` varchar(2000) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `Nationality` varchar(45) DEFAULT NULL,
  `dlink` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`dID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director`
--

LOCK TABLES `Director` WRITE;
/*!40000 ALTER TABLE `Director` DISABLE KEYS */;
INSERT INTO `Director` VALUES ('1','Jon Watts','A whiz-kid with special effects, Robert is from the Spielberg camp of film-making (Steven Spielberg produced many of his films). Usually working with writing partner Bob Gale, Roberts earlier films show he has a talent for zany comedy (Romancing the Stone (1984), 1941 (1979)) and special effect vehicles (Who Framed Roger Rabbit (1988) and Back to the Future (1985)). His later films have become more serious, with the hugely successful Tom Hanks vehicle Forrest Gump (1994) and the Jodie Foster film Contact (1997), both critically acclaimed movies. Again, these films incorporate stunning effects. Robert has proved he can work a serious story around great effects.','Male','1-1-2002','amurica','https://www.rd.com/wp-content/uploads/2021/01/GettyImages-1175550351.jpg'),('10','Andrew Stanton','Pedro Pascal is a Chilean actor. He rose to fame in 2014, playing Oberyn Martell on HBOs Game of Thrones. In 2015, Pascal starred as Javier Peña in the Netflix crime series Narcos and Disneys The Mandalorian in 2019. His most famous films include Kingsman: The Golden Circle (2017), Triple Frontier (2019) and Wonder Woman 1984 (2020). In 2020, PEOPLE named Pascal one of the Sexiest Men of the Year.',NULL,NULL,NULL,NULL),('11','Sam Raimi','Rebel Wilson was born in Sydney, Australia, to a family of dog handlers and showers. She trained at the Australian Theatre for Young People and at Second City in the US. After a successful stage and television career in Australia, this writer/actress/producer now focuses on feature film projects in the United States and is perhaps most known for her breakthrough roles in the films Bridesmaids and Pitch Perfect. In 2019, Rebel will be seen in four feature films: Isnt It Romantic and The Hustle (both of which she also produced), Jojo Rabbit directed by Taika Waititi and Tom Hoopers Cats and ABC television series Les Norton.',NULL,NULL,NULL,NULL),('12','Jordan Peele','Although born in Hollywood John and his twin sister, Johanna were raised in Wittier near Los Angeles. His parents were Jewell Mae (Risley), an art teacher, and Paul Eual Lasseter, a parts manager at a Chevrolet dealership. His mothers profession contributed to his interest in animation and particularly the Bugs Bunny and Daffy Duck cartoons which he would watch on television.',NULL,NULL,NULL,NULL),('13','Peter Jackson','Joseph Ranft was an American writer, voice actor, animator, storyboard artist and magician. He worked for Disney and Pixar. He worked on The Lion King, The Brave Little Toaster, Toy Story, A Bugs Life, Cars, Monsters, Inc and Finding Nemo. He voiced in the many films he worked on, notably as Heimlich the Caterpillar from A Bugs Life and the outtakes of Toy Story 2. He passed away in August 2005.',NULL,NULL,NULL,NULL),('14','Paul King','Andrew Stanton has been a major creative force at Pixar Animation Studios since 1990, when he became the second animator and ninth employee to join the companys elite group of computer animation pioneers. As Vice President, Creative he currently oversees all shorts and feature projects at the studio.',NULL,NULL,NULL,NULL),('15','Aneesh Chaganty','Lee Unkrich is an Academy Award-winning director at Pixar Animation Studios. He most recently directed Disney.Pixars critically-acclaimed Coco, which received the Academy Award for Best Animated Feature and Best Song. As the director of Disney. Pixars Toy Story 3, Lee was also awarded an Academy Award for Best Animated Feature.',NULL,NULL,NULL,NULL),('16','Michael Sarnoski','Highly inventive U.S. film director/producer/writer/actor Sam Raimi first came to the attention of film fans with the savage, yet darkly humorous, low-budget horror film, The Evil Dead(1981). From his childhood, Raimi was a fan of the cinema and, before he was ten-years-old, he was out making movies with an 8mm camera.',NULL,NULL,NULL,NULL),('17','Domee Shi','Jordan Haworth Peele attended Sarah Lawrence College as a member of the class of 2001. His mother is white and his father is black. Jordan is married to comedian Chelsea Peretti, with whom he has a son.',NULL,NULL,NULL,NULL),('18','Destin Daniel Cretton','Sir Peter Jackson made history with The Lord of the Rings trilogy, becoming the first person to direct three major feature films simultaneously. The Fellowship of the Ring, The Two Towers and The Return of the King were nominated for and collected a slew of awards from around the globe, with The Return of the King receiving his most impressive collection of awards.',NULL,NULL,NULL,NULL),('19','Mimi Cave','Paul King is a director and writer, known for Paddington (2014), Paddington 2 (2017) and The Mighty Boosh (2003).',NULL,NULL,NULL,NULL),('2','Robert Zemeckis','Aaron Nee is known for The Lost City (2022), The Last Romantic (2006) and Band of Robbers (2015).',NULL,NULL,NULL,NULL),('20','Johnny Capps','Matt Duffer is a producer and writer, known for Stranger Things (2016), Wayward Pines(2015) and We All Fall Down (2005).',NULL,NULL,NULL,NULL),('21','Rober Eggers','Ross Duffer is a producer and writer, known for Stranger Things (2016), Wayward Pines(2015) and We All Fall Down (2005).',NULL,NULL,NULL,NULL),('22','Sam Raimi','Shawn Levy was born on July 23, 1968 in Montreal, Quebec, Canada. He is a producer and director, known for Stranger Things (2016), Real Steel (2011), and the Night at the Museum franchise. He is the founder and principal of 21 Laps Entertainment. He is married to Serena Levy and they have four daughters.',NULL,NULL,NULL,NULL),('23','Bong Joon Ho','Dan Cohen is an American journalist and filmmaker based in Washington, D.C.. He is the host of Behind the Headlines. Formerly of RT America, Cohen has contributed to Al Jazeera English, Alternet, Electronic Intifada, The Grayzone, Middle East Eye,',NULL,NULL,NULL,NULL),('24','Greta Gerwig','Born November 9, 1965 in Indianapolis, Indiana, US as Ryan Patrick Murphy, he is an American writer, director, and producer, responsible for creating such hits as Nip/Tuck(2003), Glee (2009) and American Horror Story (2011). His mother, J. Andy Murphy, was a writer and communications worker and his father was a circulation director in the newspaper industry. He has one brother. He attended a Catholic school till the eighth grade and graduated from Warren Central High School.',NULL,NULL,NULL,NULL),('25','Ari Aster','Sir Peter Jackson made history with The Lord of the Rings trilogy, becoming the first person to direct three major feature films simultaneously. The Fellowship of the Ring, The Two Towers and The Return of the King were nominated for and collected a slew of awards from around the globe, with The Return of the King receiving his most impressive collection of awards.',NULL,NULL,NULL,NULL),('26','Lin-Manuel Miranda','Dante Di Loreto is a producer and production manager, known for P-Valley (2020), The Mosquito Coast (2021) and The Normal Heart (2014).',NULL,NULL,NULL,NULL),('27','Remi Weekes','Shonda Lynn Rhimes is an African-American producer, author and screenwriter. She is known for working on the Britney Spears and Zoe Saldana film Crossroads, Greys Anatomy, Scandal, Private Practice, the Anne Hathaway and Julie Andrews film The Princess Diaries 2: Royal Engagement and the Halle Berry film Introducing Dorothy Dandridge. She has three children.',NULL,NULL,NULL,NULL),('28','Robert Wise','Mark Gordon was born on October 10, 1956 in Newport News, Virginia, USA. He is a producer known for his work on Saving Private Ryan, Speed, The Day After Tomorrow, The Patriot, Steve Jobs, Greys Anatomy, Criminal Minds, and Ray Donovan. In addition he served as president of the Producers Guild of America from 2010 to 2014 where he championed the producers mark.',NULL,NULL,NULL,NULL),('29','Ari Aster','Betsy Beers is a producer and actress, known for Greys Anatomy (2005), Casanova(2005) and Bridgerton (2020).',NULL,NULL,NULL,NULL),('3','Aaron Nee','Adam Nee was born on July 19, 1981 in New Orleans, Louisiana, USA. He is an actor and writer, known for The Lost City (2022), Masters of the Universe (2024) and Band of Robbers (2015). He was previously married to Allison Miller.',NULL,NULL,NULL,NULL),('30','Kenneth Branagh','Krista Vernoff was born on October 24, 1971 in New York City, New York, USA. She is a producer and writer, known for Greys Anatomy (2005), Shameless (2011) and Station 19(2018). She has been married to Alexandre Schmitt since 2018. They have three children.',NULL,NULL,NULL,NULL),('5','Bob Fosse','Ted Tally was born on April 9, 1952. He is known for The Silence of the Lambs (1991), All the Pretty Horses (2000) and Mission to Mars (2000).',NULL,NULL,NULL,NULL),('7','Kahlil Joseph','Richard Brooks was an Academy Award-winning film writer who also earned six Oscar nominations and achieved success as a film director and producer.',NULL,NULL,NULL,NULL),('9','John Lasseter','Dikayl is a film-maker and photographer. As such he has worked for Ralph Lauren, Air Jordan, Adele, Beyonce, Jay - Z, Lenny Kravitz, Vidal Sassoon, Big Bang, El Michels Affair, Blondie, The Raconteurs, Amyl and the Sniffers, Harley Davidson and Lines Ballet.',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ewallet`
--

DROP TABLE IF EXISTS `Ewallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ewallet` (
  `idEwallet` int NOT NULL,
  `Revenue` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEwallet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ewallet`
--

LOCK TABLES `Ewallet` WRITE;
/*!40000 ALTER TABLE `Ewallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ewallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genre` (
  `GenreID` int NOT NULL,
  `GenreName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GenreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InternetBanking`
--

DROP TABLE IF EXISTS `InternetBanking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `InternetBanking` (
  `idEwallet` int NOT NULL,
  `Revenue` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEwallet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InternetBanking`
--

LOCK TABLES `InternetBanking` WRITE;
/*!40000 ALTER TABLE `InternetBanking` DISABLE KEYS */;
/*!40000 ALTER TABLE `InternetBanking` ENABLE KEYS */;
UNLOCK TABLES;

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
  `Actor` varchar(45) DEFAULT NULL,
  `dID` varchar(45) DEFAULT NULL,
  `aID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMovie`),
  KEY `FK_MOVIES_ACTORS_idx` (`aID`),
  KEY `FK_MOVIES_DIRECTOR_idx` (`dID`),
  CONSTRAINT `FK_MOVIES_DIRECTOR` FOREIGN KEY (`dID`) REFERENCES `Director` (`dID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
INSERT INTO `Movies` VALUES (1,'Spider-Man: No Way Home',2021,'Sci-fi','Jon Watts','Peter Parker seeks Doctor Strange\'s help to make people forget about Spiderman\'s identity. However, when the spell he casts gets corrupted, several unwanted guests enter their universe.','https://www.youtube.com/embed/JfVOs4VSpmA','1','1','1'),(2,'Forrest Gump',1994,'Romance, Comedy','Robert Zemeckis','Slow-witted Forrest Gump (Tom Hanks) has never thought of himself as disadvantaged, and thanks to his supportive mother (Sally Field), he leads anything but a restricted life. Whether dominating on the gridiron as a college football star, fighting in Vietnam or captaining a shrimp boat, Forrest inspires people with his childlike optimism. But one person Forrest cares about most may be the most difficult to save -- his childhood love, the sweet but troubled Jenny (Robin Wright)','https://www.youtube.com/embed/bLvqoHBptjg','1','2','2'),(3,'The Lost City',2022,'Action, Adventure','Aaron Nee','A reclusive romance novelist on a book tour with her cover model gets swept up in a kidnapping attempt that lands them both in a cutthroat jungle adventure.','https://www.youtube.com/embed/nfKO9rYDmE8','1','3','3'),(4,'The Silence of the Lambs',1991,'Crime, Thriller','Jon Watts','A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims','https://www.youtube.com/embed/RuX2MQeb8UM','1','1','4'),(5,'Cabaret',1972,'Music','Bob Fosse','A female girlie club entertainer in Weimar Republic era Berlin romances two men while the Nazi Party rises to power around them','https://www.youtube.com/embed/uhbq2WFctBM','1','5','5'),(6,'Cat on a Hot Tin Roof',1958,'Drama','Jon Watts','Brick is an alcoholic ex-football player who drinks his days away and resists the affections of his wife. A reunion with his terminal father jogs a host of memories and revelations for both father and son','https://www.youtube.com/embed/_hTSGmiiFlI','1','1','6'),(7,'Beyoncé: Lemonade',2016,'Music','Kahlil Joseph','A view of a woman\'s journey through life','https://www.youtube.com/embed/BB5zLq1zcdo','1','7','7'),(8,'Animal',2021,'Documentary','Jon Watts','This immersive series follows the world\'s most magnificent creatures, capturing never before seen moments from the heartwarming to the outrageous','https://www.youtube.com/embed/YqcOaxJCZr8','1','1','8'),(9,'Cars',2006,'Animation, Family','John Lasseter','A hot-shot race-car named Lightning McQueen gets waylaid in Radiator Springs, where he finds the true meaning of friendship and family','https://www.youtube.com/embed/pQly7_Cj34U','1','9','9'),(10,'Finding Nemo',2003,'Animation, Adventure, Comedy','Andrew Stanton','After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home','https://www.youtube.com/embed/wZdpNglLbt8','1','10','10'),(11,'Doctor Strange in the Multiverse of Madness',2022,'Action, Fantasy, Sci-Fi','Sam Raimi','Dr. Stephen Strange casts a forbidden spell that opens the doorway to the multiverse, including alternate versions of himself, whose threat to humanity is too great for the combined forces of Strange, Wong, and Wanda Maximoff','https://www.youtube.com/embed/Rf8LAYJSOL8','1','11','11'),(12,'Us',2019,'Horror, Mystery, Thriller’','Jordan Peele','Accompanied by her husband, son and daughter, Adelaide Wilson returns to the beachfront home where she grew up as a child. Haunted by a traumatic experience from the past, Adelaide grows increasingly concerned that something bad is going to happen. Her worst fears soon become a reality when four masked strangers descend upon the house, forcing the Wilsons into a fight for survival. When the masks come off, the family is horrified to learn that each attacker takes the appearance of one of them','https://www.youtube.com/embed/hNCmb-4oXJA','1','12','12'),(13,'King Kong',2005,'Action, Adventure','Peter Jackson','Peter Jackson\'s expansive remake of the 1933 classic follows director Carl Denham (Jack Black) and his crew on a journey from New York City to the ominous Skull Island to film a new movie. Accompanying him are playwright Jack Driscoll (Adrien Brody) and actress Ann Darrow (Naomi Watts), who is whisked away by the monstrous ape, Kong, after they reach the island. The crew encounters dinosaurs and other creatures as they race to rescue Ann, while the actress forms a bond with her simian captor','https://www.youtube.com/embed/1TSidCNA7mQ','1','13','13'),(14,'Paddington',2014,'Adventure, Comedy','Paul King','After a deadly earthquake destroys his home in Peruvian rainforest, a young bear (Ben Whishaw) makes his way to England in search of a new home. The bear, dubbed \"Paddington\" for the london train station, finds shelter with the family of Henry (Hugh Bonneville) and Mary Brown (Sally Hawkins). Although Paddington\'s amazement at urban living soon endears him to the Browns, someone else has her eye on him: Taxidermist Millicent Clyde (Nicole Kidman) has designs on the rare bear and his hide.','https://www.youtube.com/embed/W5tUEw4Nq4E','1','14','14'),(15,'Run',2020,'Mystery, Thriller','Aneesh Chaganty','An isolated teen discovers her mother\'s sinister secret.','https://www.youtube.com/embed/0Dhh7q9Us5c','1','15','15'),(16,'Pig',2021,'Mystery, Thriller, Drama','Michael Sarnoski','Living alone in the Oregon wilderness, a truffle hunter returns to Portland to find the person who stole his beloved pig','https://www.youtube.com/embed/gH6vhlNTLUk','1','16','16'),(17,'Turning Red',2022,'Animation, Fantasy','Domee Shi','In \"Turning Red\", Mei Lee is a confident, dorky thirteen-year-old torn between staying her mother\'s dutiful daughter and the chaos of adolescence. And as if changes to her interests, relationships, and body weren\'t enough, whenever she gets too excited (which for a teenager is practically ALWAYS), she \"poofs\" into a giant red panda!','https://www.youtube.com/embed/XdKzUbAiswE','1','17','17'),(18,'Shang-Chi and the Legend of the Ten Rings',2021,'Sports & fitness, Action','Destin Daniel Cretton','Shang-Chi and The Legend of The Ten Rings\" stars Simu Liu as Shang-Chi, who must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization. The film also stars Tony Leung as Wenwu, Awkwafina as Shang-Chi\'s friend Katy and Michelle Yeoh as Jiang Nan, as well as Fala Chen, Meng\'er Zhang, Florian Munteanu and Ronny Chieng','https://www.youtube.com/embed/8YjFbMbfXaQ','1','18','18'),(19,'Fresh',2022,'Horror, Comedy','Mimi Cave','FRESH follows Noa (Daisy Edgar-Jones), who meets the alluring Steve (Sebastian Stan) at a grocery store and -- given her frustration with dating apps -- takes a chance and gives him her number. After their first date, Noa is smitten and accepts Steve\'s invitation to a romantic weekend getaway. Only to find that her new paramour has been hiding some unusual appetites.','https://www.youtube.com/embed/wKk5VAK1GZQ\"','1','19','19'),(20,'War of the Worlds',2019,'Drama','Johnny Capps','In present-day Europe, astronomers detect a transmission from another galaxy and the world waits for further contact. Within days of the transmission, mankind is all but wiped out by a devastating attack. There are pockets of humanity left in the eerily deserted world and the survivors must avoid and escape the aliens bent on destroying them and everything they hold dear. A loose reimagining of H.G. Wells\' 1898 novel, this third television adaptation stars Gabriel Byrne, Daisy Edgar-Jones and an ensemble supporting cast.','https://www.youtube.com/embed/tXPiQh06tWY','1','20','20'),(21,'The Witch',2015,'Horror, Drama','Rober Eggers','In 1630 New England, panic and despair envelops a farmer, his wife and their children when youngest son Samuel suddenly vanishes. The family blames Thomasin, the oldest daughter who was watching the boy at the time of his disappearance. With suspicion and paranoia mounting, twin siblings Mercy and Jonas suspect Thomasin of witchcraft, testing the clan\'s faith, loyalty and love to one another.’','https://www.youtube.com/embed/iQXmlf3Sefg','1','21','21'),(22,'The Evil Dead',1981,'Horror','Sam Raimi','Ashley \"Ash\" Williams (Bruce Campbell), his girlfriend and three pals hike into the woods to a cabin for a fun night away. There they find an old book, the Necronomicon, whose text reawakens the dead when it\'s read aloud. The friends inadvertently release a flood of evil and must fight for their lives or become one of the evil dead. Ash watches his friends become possessed, and must make a difficult decision before daybreak to save his own life in this, the first of Sam Raimi\'s trilogy.','https://www.youtube.com/embed/UN362NKd83s','1','11','22'),(23,'Parasite',2019,'Drama, Thriller','Bong Joon Ho','Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan','https://www.youtube.com/embed/5xH0HfJHsaY','1','23','23'),(24,'Lady Bird',2017,'Drama, Comedy','Greta Gerwig','A teenager (Saoirse Ronan) navigates a loving but turbulent relationship with her strong-willed mother (Laurie Metcalf) over the course of an eventful and poignant senior year of high school.','https://www.youtube.com/embed/cNi_HC839Wo','1','24','24'),(25,'Hereditary',2018,'Horror, Mystery, Thriller','Ari Aster','When the matriarch of the Graham family passes away, her daughter and grandchildren begin to unravel cryptic and increasingly terrifying secrets about their ancestry, trying to outrun the sinister fate they have inherited.’','https://www.youtube.com/embed/V6wWKNij_1M','1','25','25'),(26,'Tick, Tick... Boom!',2021,'Musical, Drama','Lin-Manuel Miranda','Pulitzer Prize and Tony Award winner Lin-Manuel Miranda makes his feature directorial debut with tick, tick...BOOM!, an adaptation of the autobiographical musical by Jonathan Larson, who revolutionized theater as the creator of Rent. The film follows Jon (Academy Award nominee and Tony Award winner Andrew Garfield), a young theater composer who\'s waiting tables at a New York City diner in 1990 while writing what he hopes will be the next great American musical. Days before he\'s due to showcase his work in a make-or-break performance, Jon is feeling the pressure from everywhere: from his girlfriend Susan, who dreams of an artistic life beyond New York City; from his friend Michael, who has moved on from his dream to a life of financial security; amidst an artistic community being ravaged by the AIDS epidemic. With the clock ticking, Jon is at a crossroads and faces the question everyone must reckon with: What are we meant to do with the time we have? tick, tick...BOOM!','https://www.youtube.com/embed/YJserno8tyU','1','26','26'),(27,'His House',2020,'Horror','Remi Weekes','A refugee couple makes a harrowing escape from war-torn South Sudan, but then they struggle to adjust to their new life in an English town that has an evil lurking beneath the surface.','https://www.youtube.com/embed/DYY0QJhlXjc','1','27','27'),(28,'The sound of music',1965,'Musical','Robert Wise','A tuneful, heartwarming story, it is based on the real life story of the Von Trapp Family singers, one of the world\'s best-known concert groups in the era immediately preceding World War II. Julie Andrews plays the role of Maria, the tomboyish postulant at an Austrian abbey who becomes a governess in the home of a widowed naval captain with seven children, and brings a new love of life and music into the home.','https://www.youtube.com/embed/g7sJD0u7AFE','1','28','28'),(29,'Misomar',2019,'Horror','Ari Aster','A young American couple, their relationship foundering, travel to a fabled Swedish midsummer festival where a seemingly pastoral paradise transforms into a sinister, dread-soaked nightmare as the locals reveal their terrifying agenda.','https://www.youtube.com/embed/1Vnghdsjmd0','1','25','29'),(30,'Cinderella',2015,'Romance, Fantasy','Kenneth Branagh','After her father unexpectedly dies, young Ella (Lily James) finds herself at the mercy of her cruel stepmother (Cate Blanchett) and stepsisters, who reduce her to scullery maid. Despite her circumstances, she refuses to despair. An invitation to a palace ball gives Ella hope that she might reunite with the dashing stranger (Richard Madden) she met in the woods, but her stepmother prevents her from going. Help arrives in the form of a kindly beggar woman who has a magic touch for ordinary things..','https://www.youtube.com/embed/20DF6U1HcGQ','1','30','30');
/*!40000 ALTER TABLE `Movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rating`
--

DROP TABLE IF EXISTS `Rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rating` (
  `rID` int NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `point` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rating`
--

LOCK TABLES `Rating` WRITE;
/*!40000 ALTER TABLE `Rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `idSeries` int NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `Director` varchar(45) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Play` varchar(200) DEFAULT NULL,
  `No_Seasons` int DEFAULT NULL,
  `Actor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSeries`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (31,'Stranger Things','2016 - 2022','Horror, Fiction, Thriller, Supernatural','Matt Duffer, Ross Duffer, Shawn Levy, Dan Coh','Mysteries unravel in a small Midwestern town in the 1980s, involving supernatural forces, secret experiments and one strange girl.','https://www.youtube.com/embed/b9EkMc79ZSU',4,NULL),(32,'American Horror Story','2011- Current','Anthology series, Thriller, Science Fiction, Mystery, Horror','Ryan Murphy, Brad Falchuk, Dante Di Loreto','American Horror Story was created by the co-creators of Glee, but the shows have little in common besides that. The show revolves around the Harmons, a family of three, who move from Boston to Los Angeles in order to reconcile past anguish. What the Harmons dont know is that the house theyve moved into is haunted. But its not haunted by Casperesque friendly ghosts -- its haunted by demonic creatures. The creatures have a history of not only spooking the houses residents but also devouring them. After living in this house, family patriarch and psychiatrist, Ben, may need a shrink of his own.','https://www.youtube.com/embed/reP8VFF3KHU',10,NULL),(33,'Grey Anatomy','2005- Current','Health wellness','Shonda Rhimes, Mark Gordo, Betsy Beers, Krist','The medical drama series focuses on a group of doctors at a hospital in Seattle, including several who began their careers at the facility as interns. One of the doctors and the shows namesake, Meredith Grey, is the daughter of a famous surgeon. She struggles to maintain relationships with her colleagues, particularly the hospitals one-time chief of surgery, Richard Webber, due to a pre-existing relationship between them -- Webber and Merediths mother had a personal relationship when Meredith was young.','https://www.youtube.com/embed/icXooBKhelc',18,NULL),(34,'Chilling Adventures of Sabrina','2018 - 2020','Fiction, Supernatural, Mystery, Drama','Roberto Aguirre-Sacasa, Greg Berlanti, Sarah ','This adaptation of the Sabrina the Teenage Witch tale is a dark coming-of-age story that traffics in horror and the occult. In the reimagined origin story, Sabrina Spellman wrestles to reconcile her dual nature -- half-witch, half-mortal -- while standing against the evil forces that threaten her, her family -- including aunts Hilda and Zelda -- and the daylight world humans inhabit. Kiernan Shipka (Mad Men) leads the cast in the titular role of the show that is based on a comic series of the same name.','https://www.youtube.com/embed/Ab_rXrgk5R4',4,NULL),(35,'Spongebob Squarepants','1999 - 2020','Comedy, Cartoon','Stephen Hilenburg','A square yellow sponge named SpongeBob SquarePants lives in a pineapple with his pet snail, Gary, in the city of Bikini Bottom on the floor of the Pacific Ocean. He works as a fry cook at the Krusty Krab. During his time off, SpongeBob has a knack for attracting trouble with his starfish best friend, Patrick. Arrogant octopus Squidward Tentacles, SpongeBobs neighbor, dislikes SpongeBob because of his childlike behavior.','https://www.youtube.com/embed/fqbEaLOvNds',13,NULL),(36,'Hannah Montana','2006 - 2010','Sitcom, Comedy, Musical, Drama','Michael Poryes, Steve Peterman','Although she appears to be just a typical teenager to most of her classmates and teachers, Miley Stewart lives a double life, transforming herself into famous pop singer Hannah Montana at night. Her secret identity is known only to her family and closest friends.','https://www.youtube.com/embed/nDMIuuO_PQo',4,NULL),(37,'Orange is the new Black','2013 - 2019','Comedy, Drama','Jeni Kohan','Piper Chapman is a public relations executive with a career and a fiance when her past suddenly catches up to her. In her mid-30s she is sentenced to spend time in a minimum-security womens prison in Connecticut for her association with a drug runner 10 years earlier. This Netflix original series is based on the book of the same title. Forced to trade power suits for prison orange, Chapman makes her way through the corrections system and adjusts to life behind bars, making friends with the many eccentric, unusual and unexpected people she meets.','https://www.youtube.com/embed/vY0qzXi5oJg',7,NULL),(38,'Motherland: Fort Salem','2020 - Current','Drama - Supernatural Fiction','Eliot Laurence','Three young witches with basic training in combat magic prepare to defend the country against looming terrorist threats by using supernatural tactics and weapons.','https://www.youtube.com/embed/QASwXRDVBVY',3,NULL),(39,'Empire','2015 - 2020','Musical, Drama','Lee Daniels, Danny Strong','Hip-hop artist and CEO of Empire Entertainment, Lucious Lyon, has always ruled unchallenged, but a medical diagnosis predicts he will be incapacitated in three years, which prompts the sharks to circle. Without further damaging his family, he must decide which of his three sons will take over. His favorite, young Hakeem, is a gifted musician but values fame over hard work. Middle son, Jamal, is talented and shy but gay -- embarrassing to Lyon. The oldest, Andre, is business-minded but lacks charisma. The reappearance of Cookie, his ex-wife, complicates things; she says he owes her for taking the fall for the drug-running that financed his early career','https://www.youtube.com/embed/3IpVV7xDMIo',6,NULL),(40,'Single Inferno','2021 - Current','Reality','Kim Soo-ah','Stranded and ready to mingle, flirty singles search for love on a deserted island they can only escape as couples for date nights in paradise.','https://www.youtube.com/embed/b39SWaVQUoI',1,NULL),(41,'All of Us Are Dead','2022','Korean Drama, Horror Fiction, Zombie Apocalypse','Lee Jae Kyu','Trapped students must escape their high school which has become ground zero for a zombie virus outbreak.','https://www.youtube.com/embed/IN5TD4VRcSM',1,NULL),(42,'Ozark','2017 - Current','Drama, Thriller, Crime Film','Jason Bateman, Chris Mundy, Bill Dubuque, Mar','Created by Bill Dubuque (The Accountant, The Judge), this drama series stars Jason Bateman as Marty Byrde, a financial planner who relocates his family from Chicago to a summer resort community in the Ozarks. With wife Wendy and their two kids in tow, Marty is on the move after a money-laundering scheme goes wrong, forcing him to pay off a substantial debt to a Mexican drug lord in order to keep his family safe. While the Byrdes fate hangs in the balance, the dire circumstances force the fractured family to reconnect.','https://www.youtube.com/embed/5hAXVqrljbs',4,NULL),(43,'Bridgerton','2020 -  Current','Historical Film, Romance, Regency Romance','Chris Van Dusen, Shonda Rhimes, Betsy Beers, ','Bridgerton follows Daphne Bridgerton (Phoebe Dynevor), the eldest daughter of the powerful Bridgerton family as she makes her debut onto Regency London’s competitive marriage market. Hoping to follow in her parent’s footsteps and find a match sparked by true love, Daphne’s prospects initially seem to be unrivaled. But as her older brother begins to rule out her potential suitors, the high society scandal sheet written by the mysterious Lady Whistledown casts aspersions on Daphne. Enter the highly desirable and rebellious Duke of Hastings (Regé-Jean Page), committed bachelor and the catch of the season for the debutantes’ mamas. Despite proclaiming that they want nothing the other has to offer, their attraction is undeniable and sparks fly as they find themselves engaged in an increasing battle of wits while navigating society’s expectations for their future.','https://www.youtube.com/embed/gpv7ayf_tyE',2,NULL),(44,'Heartstopper','2022 - Current','Romance, Drama, Teen drama','Euros Lyn','Teens Charlie and Nick discover their unlikely friendship might be something more as they navigate school and young love.','https://www.youtube.com/embed/FrK4xPy4ahg',1,NULL),(45,'Glee','2009 - 2015','Music, Drama, Comedy, Romantic Comedy','Ryan Murphy, Brad Falchukm Ian Brennan','Optimistic teacher Will Schuester heads up McKinley High School glee club -- New Directions -- a place where ambitious and talented students can find strength, acceptance and their voice. As the students find themselves, they also enjoy a respite from the harsh realities of life. Mr. Schuester hopes to help the kids in every way he can, and also dreams of taking the group to nationals. As Schuester and the glee club pursue their goal, they face opposition from a conniving cheerleading coach, Sue Sylvester, who tries to sabotage the group at every turn.','https://www.youtube.com/embed/sefQqCMusJI',6,NULL),(46,'Keeping Up with the Kardashians','2007 - 2021','Reality Television, Drama','Ryan Seacrest, Gil Goldschein, Jeff Jenkins, ','Even though things are always changing for the Kardashian family in ways they never expected, Kim, Kourtney, Khloe and the rest of the Kardashian Jenner clan are determined to remember that family always comes first. Although the family members frequently are at odds, between siblings and their relationships, they always support one another in the end, regardless of how many controversies, and there are many. As the familys fame grows, they become more dependent on one another for support through all the highs and lows of being in the limelight.','https://www.youtube.com/embed/41C8CbMyFDo',20,NULL),(47,'Twin Peaks','1990 - 1991','Serial, Comedy, Drama, Horror, Supernatural, Thriller, Mystery, Suspense, Psychological Thriller','David Lynch, Lesli Linka Glatter, Caleb Desch','A crime drama mixed with healthy doses of the surreal, this series is about FBI Agent Dale Cooper, who travels to the small logging town of Twin Peaks to solve the murder of seemingly innocent high schooler Laura Palmer. Almost nothing is as it seems, however, and the shows sometimes eerie visuals, oddball characters and wild dream sequences drive the point home.','https://www.youtube.com/embed/Zwn9ou_nf-I',3,NULL),(48,'The Big Bang Theory','2007 - 2018','Sitcom, Television comedy','Chuck Lorre, Bill Prady','Mensa-fied best friends and roommates Leonard and Sheldon, physicists who work at the California Institute of Technology, may be able to tell everybody more than they want to know about quantum physics, but getting through most basic social situations, especially ones involving women, totally baffles them. How lucky, then, that babe-alicious waitress/aspiring actress Penny moves in next door. Frequently seen hanging out with Leonard and Sheldon are friends and fellow Caltech scientists Wolowitz and Koothrappali. Will worlds collide? Does Einstein theorize in the woods?','https://www.youtube.com/embed/rCj-Fb1OmXg',12,NULL),(49,'Revenge','2011 - 2014','Thriller - Drama','Marty Bowen, Wyck Godfrey, Sunil Nayar, Gretc','Wealth, beauty and status define the people who live in the Hamptons. But one woman seeking revenge could destroy it all. Emily Thorne lived in the Hamptons until an incident ruined her family and their reputation, forcing them out of town. Years later, she has returned to her old neighborhood, blending in with the citizens and making friends, not letting on that she has lived there before. In an effort to right some of the past wrongs, she plans vengeance on those who wronged her and her family -- and she doesnt care at what cost.','https://www.youtube.com/embed/0hlo8KjGZc0',4,NULL),(50,'Its Always Sunny In Philadelphia','2005 - Current','Sitcom, Black Comedy, Satire','Rob McElhenney','Depraved underachieving might look easy, but for the egocentric Mac, Charlie, Dennis, Frank and Dee, its an art form. Its Always Sunny in Philadelphia follows The Gang, the owners of the unsuccessful Paddys Pub; a group of degenerates who loves nothing more than to scheme, conspire, and mostly revel in each others misery. Whether gaming the welfare system, exploiting dumpster babies, pretending to be crippled, impersonating officers, or faking funerals, The Gang never stoops too low in the name of making a buck.','https://www.youtube.com/embed/-ZbHprBkhms',15,NULL),(51,'Only Murders in the Building','2021 - Current','Mystery, Television Comedy','Martin Short, Selena Gomez, Jamie Babbitt, Da','Three strangers share an obsession with true crime and suddenly find themselves wrapped up in one. When a grisly death occurs inside their exclusive Upper West Side apartment building, the trio suspects murder and employs their precise knowledge of true crime to investigate the truth. Perhaps even more explosive are the lies they tell one another. Soon, the endangered trio comes to realize a killer might be living among them as they race to decipher the mounting clues before its too late.','https://www.youtube.com/embed/-V1rQdXXXyI',2,NULL),(52,'Pose','2018 - 2021','Drama','Brad Falchuk, Erica Kay, Brad Simpson, Nina J','Pose is a drama spotlighting the legends, icons and ferocious house mothers of New Yorks underground ball culture, a movement that gained notice in the 1980s. After receiving life-altering news and losing her first real home, Blanca starts her own house a self-selected family that provides support to LGBTQ youth rejected by their birth families. Making television history, Pose features the largest cast of transgender actors in series regular roles, as well as the largest recurring cast of LGBTQ actors ever for a scripted series.','https://www.youtube.com/embed/_t4YuPXdLZw',3,NULL);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WatchList`
--

DROP TABLE IF EXISTS `WatchList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WatchList` (
  `wID` int NOT NULL,
  PRIMARY KEY (`wID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WatchList`
--

LOCK TABLES `WatchList` WRITE;
/*!40000 ALTER TABLE `WatchList` DISABLE KEYS */;
/*!40000 ALTER TABLE `WatchList` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26 21:32:05
