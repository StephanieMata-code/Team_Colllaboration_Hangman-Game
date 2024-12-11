-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `gameprogress`
--

DROP TABLE IF EXISTS `gameprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gameprogress` (
  `progress_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `word` varchar(50) NOT NULL,
  `guessed_letters` varchar(50) DEFAULT NULL,
  `remaining_attempts` int NOT NULL,
  PRIMARY KEY (`progress_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `gameprogress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameprogress`
--

LOCK TABLES `gameprogress` WRITE;
/*!40000 ALTER TABLE `gameprogress` DISABLE KEYS */;
INSERT INTO `gameprogress` VALUES (9,3,'java','j',4),(10,4,'python','py',3);
/*!40000 ALTER TABLE `gameprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testuser','testpassword'),(3,'player1','password123'),(4,'player2','password456'),(5,'admin','admin123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words` (
  `word_id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `hint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'java','Programming Languages','A popular programming language used in enterprise applications'),(2,'python','Programming Languages','A powerful and easy-to-learn programming language named after a snake'),(3,'csharp','Programming Languages','Microsoft’s programming language commonly used in Windows applications'),(4,'javascript','Programming Languages','A language commonly used to build interactive web pages'),(5,'ruby','Programming Languages','A programming language known for simplicity and productivity'),(6,'array','Data Structures','A linear collection of elements stored in contiguous memory locations'),(7,'stack','Data Structures','A data structure based on the Last In, First Out (LIFO) principle'),(8,'queue','Data Structures','A data structure where elements are added at one end and removed from the other'),(9,'tree','Data Structures','A hierarchical data structure with nodes and edges'),(10,'graph','Data Structures','A set of nodes connected by edges, used to represent relationships'),(11,'binarysearch','Algorithms','An algorithm used to find an element in a sorted list'),(12,'quicksort','Algorithms','A fast sorting algorithm based on partitioning the data'),(13,'bubblesort','Algorithms','A simple sorting algorithm that swaps adjacent elements'),(14,'dynamicprogramming','Algorithms','An optimization technique for solving complex problems by breaking them into simpler subproblems'),(15,'recursion','Algorithms','A method where a function calls itself to solve problems'),(16,'processor','Hardware','The central processing unit of a computer'),(17,'memory','Hardware','Hardware responsible for temporarily storing data during execution'),(18,'keyboard','Hardware','An input device used to type characters'),(19,'monitor','Hardware','An output device used to display visuals from the computer'),(20,'motherboard','Hardware','The main circuit board that connects all components of a computer'),(21,'debugging','Software Development','The process of finding and fixing errors in a program'),(22,'compilation','Software Development','The process of converting source code into machine code'),(23,'testing','Software Development','The process of verifying that a program works as intended'),(24,'deployment','Software Development','Delivering and making software operational in a production environment'),(25,'integration','Software Development','Combining different components into a single functional system');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11 13:38:41
