CREATE DATABASE  IF NOT EXISTS `db_study2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_study2`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_study2
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `course_mst`
--

DROP TABLE IF EXISTS `course_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL DEFAULT '0',
  `status_id` int NOT NULL DEFAULT '0',
  `subject_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_mst`
--

LOCK TABLES `course_mst` WRITE;
/*!40000 ALTER TABLE `course_mst` DISABLE KEYS */;
INSERT INTO `course_mst` VALUES (1,1,1,1),(2,1,2,2),(3,1,2,3),(4,2,2,1),(5,2,1,3),(6,3,1,1),(7,4,2,1);
/*!40000 ALTER TABLE `course_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `course_view`
--

DROP TABLE IF EXISTS `course_view`;
/*!50001 DROP VIEW IF EXISTS `course_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `course_view` AS SELECT 
 1 AS `course_id`,
 1 AS `subject_id`,
 1 AS `subject_name`,
 1 AS `student_id`,
 1 AS `student_name`,
 1 AS `status_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `emp_mst`
--

DROP TABLE IF EXISTS `emp_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_mst`
--

LOCK TABLES `emp_mst` WRITE;
/*!40000 ALTER TABLE `emp_mst` DISABLE KEYS */;
INSERT INTO `emp_mst` VALUES (1,'문성현'),(2,'윤대휘'),(3,'문자영'),(4,'정규민');
/*!40000 ALTER TABLE `emp_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score_mst`
--

DROP TABLE IF EXISTS `score_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL DEFAULT '0',
  `score` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score_mst`
--

LOCK TABLES `score_mst` WRITE;
/*!40000 ALTER TABLE `score_mst` DISABLE KEYS */;
INSERT INTO `score_mst` VALUES (1,1,80),(2,3,90),(3,3,70),(4,2,80),(5,2,90);
/*!40000 ALTER TABLE `score_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_mst`
--

DROP TABLE IF EXISTS `status_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_mst`
--

LOCK TABLES `status_mst` WRITE;
/*!40000 ALTER TABLE `status_mst` DISABLE KEYS */;
INSERT INTO `status_mst` VALUES (1,'수강'),(2,'수료');
/*!40000 ALTER TABLE `status_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_dtl`
--

DROP TABLE IF EXISTS `student_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_dtl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_dtl`
--

LOCK TABLES `student_dtl` WRITE;
/*!40000 ALTER TABLE `student_dtl` DISABLE KEYS */;
INSERT INTO `student_dtl` VALUES (1,1),(2,2),(3,3),(4,4),(5,3);
/*!40000 ALTER TABLE `student_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mst`
--

DROP TABLE IF EXISTS `student_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mst`
--

LOCK TABLES `student_mst` WRITE;
/*!40000 ALTER TABLE `student_mst` DISABLE KEYS */;
INSERT INTO `student_mst` VALUES (1,'신경수'),(2,'고희주'),(3,'장건녕'),(4,'문승주'),(5,'이승아');
/*!40000 ALTER TABLE `student_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_mst`
--

DROP TABLE IF EXISTS `subject_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_mst` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_mst`
--

LOCK TABLES `subject_mst` WRITE;
/*!40000 ALTER TABLE `subject_mst` DISABLE KEYS */;
INSERT INTO `subject_mst` VALUES (3,'c'),(1,'java'),(2,'python'),(4,'web');
/*!40000 ALTER TABLE `subject_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_study2'
--

--
-- Final view structure for view `course_view`
--

/*!50001 DROP VIEW IF EXISTS `course_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `course_view` AS select `cm`.`id` AS `course_id`,`cm`.`subject_id` AS `subject_id`,`sjm`.`name` AS `subject_name`,`cm`.`student_id` AS `student_id`,`stm`.`name` AS `student_name`,`cm`.`status_id` AS `status_id` from ((`course_mst` `cm` left join `subject_mst` `sjm` on((`sjm`.`id` = `cm`.`subject_id`))) left join `student_mst` `stm` on((`stm`.`id` = `cm`.`student_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-16 13:04:48
