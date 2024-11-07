/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: goals
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB-4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `completeGoals`
--

DROP TABLE IF EXISTS `completeGoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completeGoals` (
  `goalId` int(11) NOT NULL AUTO_INCREMENT,
  `goalName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`goalId`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completeGoals`
--

LOCK TABLES `completeGoals` WRITE;
/*!40000 ALTER TABLE `completeGoals` DISABLE KEYS */;
INSERT INTO `completeGoals` VALUES
(82,'Learn CSS'),
(83,'Exam');
/*!40000 ALTER TABLE `completeGoals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dateNow`
--

DROP TABLE IF EXISTS `dateNow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dateNow` (
  `dateId` int(11) NOT NULL,
  `whichDate` date DEFAULT NULL,
  PRIMARY KEY (`dateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dateNow`
--

LOCK TABLES `dateNow` WRITE;
/*!40000 ALTER TABLE `dateNow` DISABLE KEYS */;
INSERT INTO `dateNow` VALUES
(1,'2024-11-07');
/*!40000 ALTER TABLE `dateNow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goalsData`
--

DROP TABLE IF EXISTS `goalsData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goalsData` (
  `goalId` int(11) NOT NULL AUTO_INCREMENT,
  `goalName` varchar(30) NOT NULL,
  `goalDesc` varchar(255) DEFAULT NULL,
  `goalCategory` varchar(30) DEFAULT NULL,
  `goalStart` date NOT NULL,
  `goalEnd` date NOT NULL,
  PRIMARY KEY (`goalId`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goalsData`
--

LOCK TABLES `goalsData` WRITE;
/*!40000 ALTER TABLE `goalsData` DISABLE KEYS */;
INSERT INTO `goalsData` VALUES
(73,'Learn For Exam','Exam','cat4','2024-10-21','2024-12-19'),
(74,'Learn HTML','HTML','cat1','2024-10-21','2025-10-25'),
(75,'Learn CSS','CSS','cat3','2024-10-21','2025-08-25'),
(76,'Learn JAVA','kdshkjh','cat2','2024-10-21','2025-09-17'),
(77,'Exam','helo','cat3','2024-11-07','2024-11-14');
/*!40000 ALTER TABLE `goalsData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incompleteGoals`
--

DROP TABLE IF EXISTS `incompleteGoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incompleteGoals` (
  `goalId` int(11) NOT NULL AUTO_INCREMENT,
  `goalName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`goalId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incompleteGoals`
--

LOCK TABLES `incompleteGoals` WRITE;
/*!40000 ALTER TABLE `incompleteGoals` DISABLE KEYS */;
INSERT INTO `incompleteGoals` VALUES
(23,'Learn For Exam'),
(24,'Learn HTML'),
(26,'Learn JAVA');
/*!40000 ALTER TABLE `incompleteGoals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priorityGoal`
--

DROP TABLE IF EXISTS `priorityGoal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priorityGoal` (
  `goalName` varchar(30) DEFAULT NULL,
  `goalEnd` date DEFAULT NULL,
  `goalId` int(11) NOT NULL,
  KEY `goalId` (`goalId`),
  CONSTRAINT `priorityGoal_ibfk_1` FOREIGN KEY (`goalId`) REFERENCES `goalsData` (`goalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priorityGoal`
--

LOCK TABLES `priorityGoal` WRITE;
/*!40000 ALTER TABLE `priorityGoal` DISABLE KEYS */;
INSERT INTO `priorityGoal` VALUES
('Learn For Exam','2024-12-19',73);
/*!40000 ALTER TABLE `priorityGoal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setupData`
--

DROP TABLE IF EXISTS `setupData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setupData` (
  `setupId` int(11) NOT NULL AUTO_INCREMENT,
  `setupFlag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`setupId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setupData`
--

LOCK TABLES `setupData` WRITE;
/*!40000 ALTER TABLE `setupData` DISABLE KEYS */;
INSERT INTO `setupData` VALUES
(5,0);
/*!40000 ALTER TABLE `setupData` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-11-07 15:25:26
