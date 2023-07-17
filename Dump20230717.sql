-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: emsdb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `name` varchar(255) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `message` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL),('sssm','sdfs@gmail.com','   sfnsd;jvba'),(NULL,NULL,NULL),(NULL,NULL,NULL),('MESH','sdfs@gmail.com','        xm vd vd'),(NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL),(NULL,NULL,NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_of_week`
--

DROP TABLE IF EXISTS `day_of_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_of_week` (
  `day_id` int NOT NULL,
  `day_name` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_of_week`
--

LOCK TABLES `day_of_week` WRITE;
/*!40000 ALTER TABLE `day_of_week` DISABLE KEYS */;
INSERT INTO `day_of_week` VALUES (1,'Sunday'),(2,'Monday'),(3,'Tuesday'),(4,'Wednesday'),(5,'Thursday'),(6,'Friday'),(7,'Saturday');
/*!40000 ALTER TABLE `day_of_week` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(55) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'IT'),(2,'CSE'),(3,'ECE'),(4,'EEE'),(5,'AIDS'),(6,'AIML');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority_tab`
--

DROP TABLE IF EXISTS `priority_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priority_tab` (
  `priority` int NOT NULL,
  `designation` varchar(20) NOT NULL,
  PRIMARY KEY (`priority`,`designation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority_tab`
--

LOCK TABLES `priority_tab` WRITE;
/*!40000 ALTER TABLE `priority_tab` DISABLE KEYS */;
INSERT INTO `priority_tab` VALUES (1,'ASSISTANT PROFESSOR'),(2,'PROFESSOR');
/*!40000 ALTER TABLE `priority_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_info`
--

DROP TABLE IF EXISTS `room_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_info` (
  `room_number` int NOT NULL,
  `student_mid` int NOT NULL,
  `student_sem` int NOT NULL,
  `faculty_count` int NOT NULL,
  PRIMARY KEY (`room_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_info`
--

LOCK TABLES `room_info` WRITE;
/*!40000 ALTER TABLE `room_info` DISABLE KEYS */;
INSERT INTO `room_info` VALUES (1201,30,20,1),(1202,30,20,1),(1203,30,20,1),(1204,25,15,1),(1205,30,20,1),(1206,25,15,1),(1207,25,15,1),(1208,25,15,1),(1209,50,45,2);
/*!40000 ALTER TABLE `room_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL,
  `staff_name` varchar(20) NOT NULL,
  `age` int NOT NULL,
  `gender` char(1) NOT NULL,
  `dept_id` int NOT NULL,
  `designation` varchar(55) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'A',45,'M',4,'ASSISTANT PROFESSOR'),(2,'B',39,'F',2,'HEAD OF DEPARTMENT'),(3,'C',60,'M',1,'PRINCIPAL'),(4,'D',56,'F',3,'ASSISTANT PROFESSOR'),(5,'E',45,'F',6,'PROFESSOR'),(6,'F',99,'M',2,'ASSISTANT PROFESSOR'),(7,'G',61,'M',1,'PROFESSOR'),(8,'H',41,'M',3,'ASSISTANT PROFESSOR'),(9,'I',19,'M',5,'ASSISTANT PROFESSOR'),(10,'J',45,'F',4,'PROFESSOR');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_account`
--

DROP TABLE IF EXISTS `staff_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_account` (
  `staff_id` int NOT NULL,
  `staff_pass` varchar(45) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_account`
--

LOCK TABLES `staff_account` WRITE;
/*!40000 ALTER TABLE `staff_account` DISABLE KEYS */;
INSERT INTO `staff_account` VALUES (1,'abc'),(2,'def'),(3,'ghi'),(4,'jkl'),(5,'mno'),(6,'pqr'),(7,'stu'),(8,'vwx');
/*!40000 ALTER TABLE `staff_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_table` (
  `staff_id` int NOT NULL,
  `day_id` int NOT NULL,
  `p1` int DEFAULT NULL,
  `p2` int DEFAULT NULL,
  `p3` int DEFAULT NULL,
  `p4` int DEFAULT NULL,
  `p5` int DEFAULT NULL,
  `p6` int DEFAULT NULL,
  `p7` int DEFAULT NULL,
  PRIMARY KEY (`staff_id`,`day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES (1,2,NULL,NULL,1,1,NULL,NULL,1),(1,3,1,NULL,NULL,1,NULL,1,NULL),(1,4,NULL,1,NULL,NULL,1,NULL,NULL),(1,5,1,1,NULL,NULL,1,NULL,NULL),(1,6,NULL,NULL,1,NULL,NULL,1,1),(1,7,1,NULL,NULL,1,NULL,NULL,NULL),(2,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(2,3,NULL,NULL,NULL,NULL,1,NULL,NULL),(2,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,5,NULL,NULL,1,NULL,NULL,NULL,NULL),(2,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,7,NULL,NULL,NULL,NULL,1,1,NULL),(3,2,NULL,NULL,NULL,1,NULL,NULL,NULL),(3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,4,NULL,1,NULL,NULL,NULL,NULL,NULL),(3,5,NULL,NULL,1,NULL,NULL,NULL,NULL),(3,6,NULL,1,NULL,NULL,NULL,NULL,NULL),(3,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,2,1,1,NULL,NULL,1,NULL,NULL),(4,3,NULL,NULL,1,NULL,NULL,NULL,1),(4,4,1,NULL,NULL,1,NULL,NULL,NULL),(4,5,NULL,1,1,NULL,NULL,1,NULL),(4,6,1,NULL,NULL,1,NULL,NULL,1),(4,7,NULL,NULL,1,1,NULL,NULL,NULL),(5,2,NULL,1,NULL,NULL,NULL,NULL,NULL),(5,3,NULL,NULL,1,1,NULL,NULL,NULL),(5,4,NULL,1,NULL,NULL,NULL,NULL,NULL),(5,5,NULL,NULL,NULL,NULL,1,NULL,NULL),(5,6,NULL,NULL,1,NULL,NULL,NULL,1),(5,7,NULL,1,NULL,1,NULL,NULL,NULL),(6,2,1,NULL,NULL,1,NULL,1,NULL),(6,3,1,NULL,NULL,NULL,1,NULL,1),(6,4,NULL,1,NULL,NULL,NULL,1,NULL),(6,5,1,NULL,NULL,1,NULL,NULL,1),(6,6,NULL,1,NULL,NULL,NULL,1,NULL),(6,7,1,NULL,1,NULL,NULL,NULL,1),(7,2,1,NULL,NULL,1,NULL,NULL,1),(7,3,NULL,1,NULL,NULL,1,NULL,1),(7,4,1,NULL,1,NULL,NULL,1,NULL),(7,5,1,NULL,NULL,1,NULL,NULL,1),(7,6,NULL,NULL,1,NULL,NULL,1,NULL),(7,7,1,NULL,NULL,NULL,1,NULL,NULL),(8,2,1,NULL,1,1,NULL,NULL,1),(8,3,1,NULL,NULL,NULL,NULL,NULL,1),(8,4,NULL,1,NULL,NULL,NULL,1,NULL),(8,5,1,NULL,1,NULL,1,NULL,NULL),(8,6,1,1,NULL,NULL,NULL,1,NULL),(8,7,NULL,NULL,1,NULL,NULL,NULL,1),(9,2,1,NULL,NULL,NULL,1,NULL,NULL),(9,3,NULL,1,NULL,NULL,NULL,NULL,1),(9,4,1,1,NULL,NULL,NULL,NULL,NULL),(9,5,NULL,NULL,NULL,NULL,1,1,NULL),(9,6,1,NULL,NULL,NULL,NULL,NULL,1),(9,7,NULL,NULL,NULL,NULL,NULL,1,1),(10,2,NULL,NULL,NULL,1,1,1,NULL),(10,3,1,1,NULL,NULL,NULL,NULL,NULL),(10,4,NULL,NULL,1,NULL,NULL,NULL,1),(10,5,NULL,NULL,NULL,NULL,1,NULL,1),(10,6,NULL,NULL,1,NULL,NULL,NULL,1),(10,7,1,1,NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'emsdb'
--

--
-- Dumping routines for database 'emsdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `ac_det` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ac_det`()
BEGIN
 select s.staff_id,s.staff_name,st.staff_pass
 from emsdb.staff as s
 join emsdb.staff_account as st on s.staff_id=st.staff_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `final_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `final_list`(x varchar(10))
BEGIN
SELECT s.staff_id,s.staff_name,s.designation,d.dept_name,s.age,t.p1,t.p2,t.p3,t.p4,t.p5,t.p6,t.p7
from emsdb.staff as s 
join department as d on s.dept_id=d.dept_id
join priority_tab as p on s.designation=p.designation
join emsdb.time_table as t on s.staff_id=t.staff_id
join emsdb.day_of_week as da on da.day_id=t.day_id
where da.day_name=x
order by p.priority ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `final_rooms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `final_rooms`(x int)
BEGIN
SELECT * FROM emsdb.room_info AS r WHERE r.room_number=X; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_contact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_contact`(x varchar(20),y varchar(45),z varchar(150))
BEGIN
insert into contacts values(x,y,z);
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `main_tab` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `main_tab`()
BEGIN
select s.staff_id,s.staff_name,s.designation,dept_name,da.day_name,t.p1,t.p2,t.p3,t.p4,t.p5,t.p6,t.p7
from emsdb.staff as s
join emsdb.department as d on s.dept_id=d.dept_id
join emsdb.time_table as t on s.staff_id=t.staff_id
join emsdb.day_of_week as da on da.day_id=t.day_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `staff_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `staff_details`(x integer)
BEGIN
SELECT s.staff_id,s.staff_name,s.designation,d.dept_name,s.age from emsdb.staff as s 
join department as d 
on s.dept_id=d.dept_id
where staff_id=x;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `staff_timetable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `staff_timetable`(x int)
BEGIN
select d.day_name, t.p1, t.p2, t.p3, t.p4, t.p5, t.p6, t.p7
from emsdb.day_of_week as d
join emsdb.time_table as t on t.day_id=d.day_id
where t.staff_id=x;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 18:56:33
