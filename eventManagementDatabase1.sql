-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: event
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `bookevent`
--

DROP TABLE IF EXISTS `bookevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookevent` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_img` varchar(200) DEFAULT NULL,
  `event_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `event_cost` int unsigned NOT NULL,
  `uname` varchar(45) NOT NULL,
  `uid` int unsigned NOT NULL,
  `status` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  `eventdate` date DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookevent`
--

LOCK TABLES `bookevent` WRITE;
/*!40000 ALTER TABLE `bookevent` DISABLE KEYS */;
INSERT INTO `bookevent` VALUES (1,'https://media.licdn.com/dms/image/D4D12AQFI09pPbqbuAg/article-cover_image-shrink_600_2000/0/1697714978117?e=2147483647&v=beta&t=0Q1tc_YH73jzhCSfDQadg7DQB1CRKfSjP-3yoi4On0E','Corporate events','nandish@gmail.com','Vijaynagar',100000,'Nandish',1,'cancelled','2024-06-21 22:36:07','2024-06-22'),(2,'https://media.licdn.com/dms/image/D4D12AQFI09pPbqbuAg/article-cover_image-shrink_600_2000/0/1697714978117?e=2147483647&v=beta&t=0Q1tc_YH73jzhCSfDQadg7DQB1CRKfSjP-3yoi4On0E','Corporate events','nandish@gmail.com','Vijaynagar',100000,'Nandish',1,'pending','2024-06-21 22:37:17','2024-06-23'),(3,'https://sakhicreationandevents.com/wp-content/uploads/2023/07/slider2.jpg','Wedding','abhishek@gmail.com','RR Nagar',50000,'Abhishek',2,'booked','2024-06-21 22:38:53','2024-06-24'),(4,'https://sakhicreationandevents.com/wp-content/uploads/2023/07/slider2.jpg','Wedding','ramya@gmail.com','Ibbluru',50000,'Ramya',3,'booked','2024-06-21 22:44:54','2024-06-25'),(5,'https://media.licdn.com/dms/image/D4D12AQFI09pPbqbuAg/article-cover_image-shrink_600_2000/0/1697714978117?e=2147483647&v=beta&t=0Q1tc_YH73jzhCSfDQadg7DQB1CRKfSjP-3yoi4On0E','Corporate events','rachan@gmail.com','Kengeri',100000,'Rachan',4,'cancelled','2024-06-21 23:11:39','2024-06-27'),(6,'https://sakhicreationandevents.com/wp-content/uploads/2023/07/slider2.jpg','Wedding','pavan@gmail.com','JP Nagar',50000,'Pavan',5,'booked','2024-06-21 23:14:03','2024-06-28'),(7,'https://www.hindustantimes.com/ht-img/img/2024/03/19/550x309/RCB_Unbox_1710822773894_1710822782391.jpg','RCB Unbox Event','kumar@gmail.com','M G Road',10000000,'kumar',7,'booked','2024-06-29 11:09:02','2024-07-04'),(8,'https://sakhicreationandevents.com/wp-content/uploads/2023/07/slider2.jpg','Wedding','kumarks@gmail.com','Vijaynagar',50000,'vijay',8,'booked','2024-06-29 11:12:43','2024-07-03'),(9,'https://sakhicreationandevents.com/wp-content/uploads/2023/07/slider2.jpg','Wedding','jeswanth26@gmail.com','vijaynagar',50000,'jeswanth',9,'cancelled','2024-07-26 12:26:13','2024-07-27'),(10,'https://sakhicreationandevents.com/wp-content/uploads/2023/07/slider2.jpg','Wedding','jeswanth26@gmail.com','mysore',50000,'jeswanth',9,'booked','2024-07-26 12:27:29','2024-07-28');
/*!40000 ALTER TABLE `bookevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) NOT NULL,
  `cemail` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cemail_UNIQUE` (`cemail`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Nandish','nandish@gmail.com','123456','2024-06-21 22:35:04'),(2,'Abhishek','abhishek@gmail.com','123456','2024-06-21 22:38:06'),(3,'Ramya','ramya@gmail.com','123456','2024-06-21 22:44:12'),(4,'Rachan','rachan@gmail.com','123456','2024-06-21 23:10:55'),(5,'Pavan','pavan@gmail.com','123456','2024-06-21 23:13:02');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquirylist`
--

DROP TABLE IF EXISTS `enquirylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquirylist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phno` varchar(45) NOT NULL,
  `sub` varchar(45) NOT NULL,
  `msg` varchar(200) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquirylist`
--

LOCK TABLES `enquirylist` WRITE;
/*!40000 ALTER TABLE `enquirylist` DISABLE KEYS */;
INSERT INTO `enquirylist` VALUES (1,'Abhishek','abhishek@gmail.com','7892370215','Wedding Event','I am interested\r\nabout this event','2024-06-21 22:22:01'),(2,'Rachan','rachan@gmail.com','9900303090','Corporate Event','Interested to book event\r\non audio launch of my movie','2024-06-21 22:25:12'),(3,'Ramya','ramya@gmail.com','6364020010','Wedding Event','I want to book event\r\nfor my wedding','2024-06-21 22:26:12'),(4,'Pavan','pavan@gmail.com','9900000001','Wedding Event','Interested in this event','2024-06-21 22:27:07'),(5,'Nandish','nandish@gmail.com','9900123456','Corporate Event','Want to book event\r\nfor our Software company \r\ninauguration','2024-06-21 22:31:33');
/*!40000 ALTER TABLE `enquirylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int unsigned NOT NULL AUTO_INCREMENT,
  `event_img` varchar(200) NOT NULL,
  `event_name` varchar(45) NOT NULL,
  `event_cost` int unsigned NOT NULL,
  `event_details` varchar(150) NOT NULL,
  `event_category` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'https://sakhicreationandevents.com/wp-content/uploads/2023/07/slider2.jpg','Wedding',50000,'wedding event price','Wedding','2024-06-17 21:10:16'),(2,'https://media.licdn.com/dms/image/D4D12AQFI09pPbqbuAg/article-cover_image-shrink_600_2000/0/1697714978117?e=2147483647&v=beta&t=0Q1tc_YH73jzhCSfDQadg7DQB1CRKfSjP-3yoi4On0E','Corporate events',100000,'corporate event price','Corporate','2024-06-17 21:20:41'),(3,'https://www.hindustantimes.com/ht-img/img/2024/03/19/550x309/RCB_Unbox_1710822773894_1710822782391.jpg','RCB Unbox Event',10000000,'big event conducted in M Chinnaswami Stadium of Greate IPL franchise RCB','Unbox','2024-06-24 23:05:42'),(5,'https://cdn.firstcry.com/education/2022/12/29111202/101-Of-Planning-An-Unforgettable-Kids-Birthday-Party.jpg','Birthday',5000,'birthday','Birthday','2024-06-26 00:04:08'),(8,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSczZ9ELmSEwxpcvwYxFIrgeUQxNZZxNT3N_Q&s','audio launch',500000,'audio launch by hombale','audio launch','2024-06-29 11:16:42');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Abhishek','abhishek@gmail.com','5','Absolutely phenomenal wedding planner\r\nfrom start to finish. Highly recommended','2024-06-21'),(2,'Ramya','ramya@gmail.com','5','Thank you for making my day so perfect,\r\nit was the most beautiful I ever seen.','2024-06-21'),(3,'Pavan','pavan@gmail.com','1','I would never suggest through this Samrat events, The Wedding event was most disgusting and worst moment of my life.','2024-06-21'),(4,'vijay','kumarks@gmail.com','5','good service','2024-06-29');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-01 20:59:29
