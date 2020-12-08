-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: AfricaMusic
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `ALBUMS`
--

DROP TABLE IF EXISTS `ALBUMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALBUMS` (
  `album` int NOT NULL AUTO_INCREMENT,
  `Title_Album` varchar(20) NOT NULL,
  `Release_date` date DEFAULT NULL,
  `Cover_Album` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`album`),
  UNIQUE KEY `Title_Album` (`Title_Album`),
  KEY `date_croissante` (`Release_date`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALBUMS`
--

LOCK TABLES `ALBUMS` WRITE;
/*!40000 ALTER TABLE `ALBUMS` DISABLE KEYS */;
INSERT INTO `ALBUMS` VALUES (1,'Tcha Tcho','1994-09-08','/cover/tcha-tcho.jpg'),(2,'Koweit Rive Gauche','1994-10-08','/cover/k-r-gauche.jpg'),(3,'Baddest','2015-10-08','/cover/Baddest.jpg'),(4,'Son Of Mercy','2015-10-08','/cover/s-of-m.jpg');
/*!40000 ALTER TABLE `ALBUMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ARTISTS`
--

DROP TABLE IF EXISTS `ARTISTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ARTISTS` (
  `artist` int NOT NULL AUTO_INCREMENT,
  `Name_Artist` varchar(30) NOT NULL,
  `Image_Artist` varchar(20) DEFAULT NULL,
  `country` int DEFAULT NULL,
  PRIMARY KEY (`artist`),
  UNIQUE KEY `Name_Artist` (`Name_Artist`),
  KEY `country` (`country`),
  CONSTRAINT `ARTISTS_ibfk_1` FOREIGN KEY (`country`) REFERENCES `COUNTRIES` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ARTISTS`
--

LOCK TABLES `ARTISTS` WRITE;
/*!40000 ALTER TABLE `ARTISTS` DISABLE KEYS */;
INSERT INTO `ARTISTS` VALUES (1,'Tenor baflan','/img/tenor.img',2),(2,'Locko','/img/locko.img',2),(3,'davido','/img/davido.img',6),(4,'burna boy','/img/davido.img',6),(5,'kif no beat','/img/kif-no-beat.img',4),(6,'koffi olimide','/img/koffi.img',1),(7,'fally ipupa','/img/fally-ipupa.img',1);
/*!40000 ALTER TABLE `ARTISTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AlbumMusic`
--

DROP TABLE IF EXISTS `AlbumMusic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AlbumMusic` (
  `song` int NOT NULL,
  `album` int NOT NULL,
  PRIMARY KEY (`song`,`album`),
  KEY `album` (`album`),
  CONSTRAINT `AlbumMusic_ibfk_1` FOREIGN KEY (`song`) REFERENCES `SONGS` (`song`),
  CONSTRAINT `AlbumMusic_ibfk_2` FOREIGN KEY (`album`) REFERENCES `ALBUMS` (`album`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AlbumMusic`
--

LOCK TABLES `AlbumMusic` WRITE;
/*!40000 ALTER TABLE `AlbumMusic` DISABLE KEYS */;
INSERT INTO `AlbumMusic` VALUES (1,3),(2,3);
/*!40000 ALTER TABLE `AlbumMusic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ArtistAlbum`
--

DROP TABLE IF EXISTS `ArtistAlbum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ArtistAlbum` (
  `artist` int NOT NULL,
  `album` int NOT NULL,
  PRIMARY KEY (`artist`,`album`),
  KEY `album` (`album`),
  CONSTRAINT `ArtistAlbum_ibfk_1` FOREIGN KEY (`artist`) REFERENCES `ARTISTS` (`artist`),
  CONSTRAINT `ArtistAlbum_ibfk_2` FOREIGN KEY (`album`) REFERENCES `ALBUMS` (`album`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArtistAlbum`
--

LOCK TABLES `ArtistAlbum` WRITE;
/*!40000 ALTER TABLE `ArtistAlbum` DISABLE KEYS */;
INSERT INTO `ArtistAlbum` VALUES (6,1),(6,2),(3,4);
/*!40000 ALTER TABLE `ArtistAlbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COUNTRIES`
--

DROP TABLE IF EXISTS `COUNTRIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COUNTRIES` (
  `country` int NOT NULL AUTO_INCREMENT,
  `Name_Country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COUNTRIES`
--

LOCK TABLES `COUNTRIES` WRITE;
/*!40000 ALTER TABLE `COUNTRIES` DISABLE KEYS */;
INSERT INTO `COUNTRIES` VALUES (1,'congo'),(2,'cameroun'),(3,'cote ivoire'),(4,'senegal'),(5,'togo'),(6,'nigeria');
/*!40000 ALTER TABLE `COUNTRIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GENRES`
--

DROP TABLE IF EXISTS `GENRES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GENRES` (
  `genre` int NOT NULL AUTO_INCREMENT,
  `Title_Genre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`genre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GENRES`
--

LOCK TABLES `GENRES` WRITE;
/*!40000 ALTER TABLE `GENRES` DISABLE KEYS */;
INSERT INTO `GENRES` VALUES (1,'POP'),(2,'Rap'),(3,'Dance'),(4,'Romance'),(5,'RNB'),(6,'Classique'),(7,'Mix');
/*!40000 ALTER TABLE `GENRES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYS`
--

DROP TABLE IF EXISTS `PAYS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAYS` (
  `pays` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`pays`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYS`
--

LOCK TABLES `PAYS` WRITE;
/*!40000 ALTER TABLE `PAYS` DISABLE KEYS */;
INSERT INTO `PAYS` VALUES (1,'Canada'),(3,'Morocco');
/*!40000 ALTER TABLE `PAYS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SONGS`
--

DROP TABLE IF EXISTS `SONGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SONGS` (
  `song` int NOT NULL AUTO_INCREMENT,
  `Name_Music` varchar(20) NOT NULL,
  `Source_Music` varchar(20) NOT NULL,
  `genre` int DEFAULT NULL,
  PRIMARY KEY (`song`),
  KEY `genre` (`genre`),
  CONSTRAINT `SONGS_ibfk_1` FOREIGN KEY (`genre`) REFERENCES `GENRES` (`genre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SONGS`
--

LOCK TABLES `SONGS` WRITE;
/*!40000 ALTER TABLE `SONGS` DISABLE KEYS */;
INSERT INTO `SONGS` VALUES (1,'FALL','src/fall.mp3',7),(2,'GOBE','src/gobe.mp3',7),(3,'One Love','src/one-love.mp3',7),(4,'Ecole','src/Ecole.mp3',7),(5,'Allo Telephone','src/Ecole.mp3',3),(6,'Mama Amy','src/mama-amy.mp3',7),(7,'Requiem','src/requiem.mp3',7);
/*!40000 ALTER TABLE `SONGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VILLES`
--

DROP TABLE IF EXISTS `VILLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VILLES` (
  `ville` int DEFAULT NULL,
  `pays` int DEFAULT NULL,
  `nom` varchar(60) NOT NULL,
  KEY `pay_ind` (`pays`),
  CONSTRAINT `ville_ibfk_1` FOREIGN KEY (`pays`) REFERENCES `PAYS` (`pays`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VILLES`
--

LOCK TABLES `VILLES` WRITE;
/*!40000 ALTER TABLE `VILLES` DISABLE KEYS */;
INSERT INTO `VILLES` VALUES (1,1,'Toronto'),(2,1,'Montreal'),(3,3,'Casablanca'),(3,3,'Rabat');
/*!40000 ALTER TABLE `VILLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t1` (
  `c1` int DEFAULT NULL,
  CONSTRAINT `c1_nonzero` CHECK ((`c1` <> 0)),
  CONSTRAINT `t1_chk_1` CHECK ((`c1` > 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` VALUES (11);
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 22:12:31
