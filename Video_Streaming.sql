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
  PRIMARY KEY (`idSeries`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (32,'American Horror Story','2011- Current','Anthology series, Thriller, Science Fiction, Mystery, Horror','Ryan Murphy, Brad Falchuk, Dante Di Loreto','American Horror Story was created by the co-creators of Glee, but the shows have little in common besides that. The show revolves around the Harmons, a family of three, who move from Boston to Los Angeles in order to reconcile past anguish. What the Harmons dont know is that the house theyve moved into is haunted. But its not haunted by Casperesque friendly ghosts -- its haunted by demonic creatures. The creatures have a history of not only spooking the houses residents but also devouring them. After living in this house, family patriarch and psychiatrist, Ben, may need a shrink of his own.','https://www.youtube.com/embed/reP8VFF3KHU',10),(33,'Grey Anatomy','2005- Current','Health wellness','Shonda Rhimes, Mark Gordo, Betsy Beers, Krist','The medical drama series focuses on a group of doctors at a hospital in Seattle, including several who began their careers at the facility as interns. One of the doctors and the shows namesake, Meredith Grey, is the daughter of a famous surgeon. She struggles to maintain relationships with her colleagues, particularly the hospitals one-time chief of surgery, Richard Webber, due to a pre-existing relationship between them -- Webber and Merediths mother had a personal relationship when Meredith was young.','https://www.youtube.com/embed/icXooBKhelc',18),(34,'Chilling Adventures of Sabrina','2018 - 2020','Fiction, Supernatural, Mystery, Drama','Roberto Aguirre-Sacasa, Greg Berlanti, Sarah ','This adaptation of the Sabrina the Teenage Witch tale is a dark coming-of-age story that traffics in horror and the occult. In the reimagined origin story, Sabrina Spellman wrestles to reconcile her dual nature -- half-witch, half-mortal -- while standing against the evil forces that threaten her, her family -- including aunts Hilda and Zelda -- and the daylight world humans inhabit. Kiernan Shipka (Mad Men) leads the cast in the titular role of the show that is based on a comic series of the same name.','https://www.youtube.com/embed/Ab_rXrgk5R4',4),(35,'Spongebob Squarepants','1999 - 2020','Comedy, Cartoon','Stephen Hilenburg','A square yellow sponge named SpongeBob SquarePants lives in a pineapple with his pet snail, Gary, in the city of Bikini Bottom on the floor of the Pacific Ocean. He works as a fry cook at the Krusty Krab. During his time off, SpongeBob has a knack for attracting trouble with his starfish best friend, Patrick. Arrogant octopus Squidward Tentacles, SpongeBobs neighbor, dislikes SpongeBob because of his childlike behavior.','https://www.youtube.com/embed/fqbEaLOvNds',13),(36,'Hannah Montana','2006 - 2010','Sitcom, Comedy, Musical, Drama','Michael Poryes, Steve Peterman','Although she appears to be just a typical teenager to most of her classmates and teachers, Miley Stewart lives a double life, transforming herself into famous pop singer Hannah Montana at night. Her secret identity is known only to her family and closest friends.','https://www.youtube.com/embed/nDMIuuO_PQo',4),(37,'Orange is the new Black','2013 - 2019','Comedy, Drama','Jeni Kohan','Piper Chapman is a public relations executive with a career and a fiance when her past suddenly catches up to her. In her mid-30s she is sentenced to spend time in a minimum-security womens prison in Connecticut for her association with a drug runner 10 years earlier. This Netflix original series is based on the book of the same title. Forced to trade power suits for prison orange, Chapman makes her way through the corrections system and adjusts to life behind bars, making friends with the many eccentric, unusual and unexpected people she meets.','https://www.youtube.com/embed/vY0qzXi5oJg',7),(38,'Motherland: Fort Salem','2020 - Current','Drama - Supernatural Fiction','Eliot Laurence','Three young witches with basic training in combat magic prepare to defend the country against looming terrorist threats by using supernatural tactics and weapons.','https://www.youtube.com/embed/QASwXRDVBVY',3),(39,'Empire','2015 - 2020','Musical, Drama','Lee Daniels, Danny Strong','Hip-hop artist and CEO of Empire Entertainment, Lucious Lyon, has always ruled unchallenged, but a medical diagnosis predicts he will be incapacitated in three years, which prompts the sharks to circle. Without further damaging his family, he must decide which of his three sons will take over. His favorite, young Hakeem, is a gifted musician but values fame over hard work. Middle son, Jamal, is talented and shy but gay -- embarrassing to Lyon. The oldest, Andre, is business-minded but lacks charisma. The reappearance of Cookie, his ex-wife, complicates things; she says he owes her for taking the fall for the drug-running that financed his early career','https://www.youtube.com/embed/3IpVV7xDMIo',6),(40,'Single Inferno','2021 - Current','Reality','Kim Soo-ah','Stranded and ready to mingle, flirty singles search for love on a deserted island they can only escape as couples for date nights in paradise.','https://www.youtube.com/embed/b39SWaVQUoI',1),(41,'All of Us Are Dead','2022','Korean Drama, Horror Fiction, Zombie Apocalypse','Lee Jae Kyu','Trapped students must escape their high school which has become ground zero for a zombie virus outbreak.','https://www.youtube.com/embed/IN5TD4VRcSM',1),(42,'Ozark','2017 - Current','Drama, Thriller, Crime Film','Jason Bateman, Chris Mundy, Bill Dubuque, Mar','Created by Bill Dubuque (The Accountant, The Judge), this drama series stars Jason Bateman as Marty Byrde, a financial planner who relocates his family from Chicago to a summer resort community in the Ozarks. With wife Wendy and their two kids in tow, Marty is on the move after a money-laundering scheme goes wrong, forcing him to pay off a substantial debt to a Mexican drug lord in order to keep his family safe. While the Byrdes fate hangs in the balance, the dire circumstances force the fractured family to reconnect.','https://www.youtube.com/embed/5hAXVqrljbs',4),(43,'Bridgerton','2020 -  Current','Historical Film, Romance, Regency Romance','Chris Van Dusen, Shonda Rhimes, Betsy Beers, ','Bridgerton follows Daphne Bridgerton (Phoebe Dynevor), the eldest daughter of the powerful Bridgerton family as she makes her debut onto Regency London‚Äôs competitive marriage market. Hoping to follow in her parent‚Äôs footsteps and find a match sparked by true love, Daphne‚Äôs prospects initially seem to be unrivaled. But as her older brother begins to rule out her potential suitors, the high society scandal sheet written by the mysterious Lady Whistledown casts aspersions on Daphne. Enter the highly desirable and rebellious Duke of Hastings (Reg√©-Jean Page), committed bachelor and the catch of the season for the debutantes‚Äô mamas. Despite proclaiming that they want nothing the other has to offer, their attraction is undeniable and sparks fly as they find themselves engaged in an increasing battle of wits while navigating society‚Äôs expectations for their future.','https://www.youtube.com/embed/gpv7ayf_tyE',2),(44,'Heartstopper','2022 - Current','Romance, Drama, Teen drama','Euros Lyn','Teens Charlie and Nick discover their unlikely friendship might be something more as they navigate school and young love.','https://www.youtube.com/embed/FrK4xPy4ahg',1),(45,'Glee','2009 - 2015','Music, Drama, Comedy, Romantic Comedy','Ryan Murphy, Brad Falchukm Ian Brennan','Optimistic teacher Will Schuester heads up McKinley High School glee club -- New Directions -- a place where ambitious and talented students can find strength, acceptance and their voice. As the students find themselves, they also enjoy a respite from the harsh realities of life. Mr. Schuester hopes to help the kids in every way he can, and also dreams of taking the group to nationals. As Schuester and the glee club pursue their goal, they face opposition from a conniving cheerleading coach, Sue Sylvester, who tries to sabotage the group at every turn.','https://www.youtube.com/embed/sefQqCMusJI',6),(46,'Keeping Up with the Kardashians','2007 - 2021','Reality Television, Drama','Ryan Seacrest, Gil Goldschein, Jeff Jenkins, ','Even though things are always changing for the Kardashian family in ways they never expected, Kim, Kourtney, Khloe and the rest of the Kardashian Jenner clan are determined to remember that family always comes first. Although the family members frequently are at odds, between siblings and their relationships, they always support one another in the end, regardless of how many controversies, and there are many. As the familys fame grows, they become more dependent on one another for support through all the highs and lows of being in the limelight.','https://www.youtube.com/embed/41C8CbMyFDo',20),(47,'Twin Peaks','1990 - 1991','Serial, Comedy, Drama, Horror, Supernatural, Thriller, Mystery, Suspense, Psychological Thriller','David Lynch, Lesli Linka Glatter, Caleb Desch','A crime drama mixed with healthy doses of the surreal, this series is about FBI Agent Dale Cooper, who travels to the small logging town of Twin Peaks to solve the murder of seemingly innocent high schooler Laura Palmer. Almost nothing is as it seems, however, and the shows sometimes eerie visuals, oddball characters and wild dream sequences drive the point home.','https://www.youtube.com/embed/Zwn9ou_nf-I',3),(48,'The Big Bang Theory','2007 - 2018','Sitcom, Television comedy','Chuck Lorre, Bill Prady','Mensa-fied best friends and roommates Leonard and Sheldon, physicists who work at the California Institute of Technology, may be able to tell everybody more than they want to know about quantum physics, but getting through most basic social situations, especially ones involving women, totally baffles them. How lucky, then, that babe-alicious waitress/aspiring actress Penny moves in next door. Frequently seen hanging out with Leonard and Sheldon are friends and fellow Caltech scientists Wolowitz and Koothrappali. Will worlds collide? Does Einstein theorize in the woods?','https://www.youtube.com/embed/rCj-Fb1OmXg',12),(49,'Revenge','2011 - 2014','Thriller - Drama','Marty Bowen, Wyck Godfrey, Sunil Nayar, Gretc','Wealth, beauty and status define the people who live in the Hamptons. But one woman seeking revenge could destroy it all. Emily Thorne lived in the Hamptons until an incident ruined her family and their reputation, forcing them out of town. Years later, she has returned to her old neighborhood, blending in with the citizens and making friends, not letting on that she has lived there before. In an effort to right some of the past wrongs, she plans vengeance on those who wronged her and her family -- and she doesnt care at what cost.','https://www.youtube.com/embed/0hlo8KjGZc0',4),(50,'Its Always Sunny In Philadelphia','2005 - Current','Sitcom, Black Comedy, Satire','Rob McElhenney','Depraved underachieving might look easy, but for the egocentric Mac, Charlie, Dennis, Frank and Dee, its an art form. Its Always Sunny in Philadelphia follows The Gang, the owners of the unsuccessful Paddys Pub; a group of degenerates who loves nothing more than to scheme, conspire, and mostly revel in each others misery. Whether gaming the welfare system, exploiting dumpster babies, pretending to be crippled, impersonating officers, or faking funerals, The Gang never stoops too low in the name of making a buck.','https://www.youtube.com/embed/-ZbHprBkhms',15),(51,'Only Murders in the Building','2021 - Current','Mystery, Television Comedy','Martin Short, Selena Gomez, Jamie Babbitt, Da','Three strangers share an obsession with true crime and suddenly find themselves wrapped up in one. When a grisly death occurs inside their exclusive Upper West Side apartment building, the trio suspects murder and employs their precise knowledge of true crime to investigate the truth. Perhaps even more explosive are the lies they tell one another. Soon, the endangered trio comes to realize a killer might be living among them as they race to decipher the mounting clues before its too late.','https://www.youtube.com/embed/-V1rQdXXXyI',2),(52,'Pose','2018 - 2021','Drama','Brad Falchuk, Erica Kay, Brad Simpson, Nina J','Pose is a drama spotlighting the legends, icons and ferocious house mothers of New Yorks underground ball culture, a movement that gained notice in the 1980s. After receiving life-altering news and losing her first real home, Blanca starts her own house a self-selected family that provides support to LGBTQ youth rejected by their birth families. Making television history, Pose features the largest cast of transgender actors in series regular roles, as well as the largest recurring cast of LGBTQ actors ever for a scripted series.','https://www.youtube.com/embed/_t4YuPXdLZw',3);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 15:50:49
