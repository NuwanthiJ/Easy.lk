-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: eshopping
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'ITEM-ORD-00378','Sasindu','sasindu@gmail.com','No 5/25,Colombo,Malabe,Dias Road,50500','0765551122','Bluetooth Speakers','10500.0','Cash On Delivery'),(2,'ITEM-ORD-00778','Maheesha','mahee@gmail.com','No 124,Colombo,Malabe,Main Road,60200','0771112233','Silicone Cover Air Pods','400.0','Cash On Delivery'),(3,'ITEM-ORD-00100','Nuwanthi','nuvee@gmail.com','No 2/15,Matara,Akuressa,Lake Road,81400','0782224455','Artificial Plants','1500.0','Cash On Delivery'),(4,'ITEM-ORD-00483','Kaveesha','kavee@gmail.com','No 4/20,Colombo,Malabe,Main Road,50400','0746667788','Non-stick Pan','1200.0','Cash On Delivery'),(5,'ITEM-ORD-00606','Sithumi Perera','sithu@gmail.com','No 75,Matara,Palatuwa,Daham Road,60200','0714443322','Wall Rack','9500.0','Cash On Delivery'),(6,'ITEM-ORD-00330','Nuwanthi','nuvee@gmail.com','No 2/15,Matara,Akuressa,Lake Road,81400','0782224455','Carrot Rabbit Plush Doll','918.0','Cash On Delivery'),(7,'ITEM-ORD-00990','Kaveesha','kavee@gmail.com','No 4/20,Colombo,Malabe,Main Road,50400','0746667788','Apple watch','1542.0','Cash On Delivery'),(8,'ITEM-ORD-00465','Maheesha','mahee@gmail.com','matara,matara,matara,12/3,81700','0771112233','Silicone Cover Air Pods','400.0','Cash On Delivery');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 15:47:43
