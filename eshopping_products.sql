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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `itemID` int NOT NULL AUTO_INCREMENT,
  `itemName` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `itemCategory` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Mini Bluetooth Speaker','630','Electronics','Active','e1.png','admin','Mini Bluetooth Speaker BIG SOUND LED Ultra Loud Stereo Speaker Support USB TF AUX MIC Rechargeable further a GTS 1345, GTS 1346, KTS Speaker, CL93, CL91 SPEAKER'),(2,'Bluetooth Speakers','10500','Electronics','Active','e2.jpg','admin','T7 Portable Bluetooth Speakers with 30W 360Â° Surround Sound, Bluetooth 5.3, Enhanced Bass, Wireless Stereo Pairing, Custom EQ via APP, IPX7 Waterproof Speaker for Party, Home, Outdoor  '),(5,'Artificial Plants','1500','Home & Lifestyles','Active','hl.jpg','admin','Artificial Plants Potted Bonsai Green Small Tree Plants Fake Flowers Potted Ornaments for Home Garden Decor Party Hotel DÃ©cor'),(6,'Apple watch','1542','Electronics','Active','e3.jpg','admin','Milanese loop band for apple watch ultra 8 7 6 5 4 se 49mm 45mm 44mm 42mm metal magnetic lightweight strap for iwatch'),(7,'USB Led Light','100','Electronics','Active','e5_.jpg','admin','USB Led Light USB Portable LED Light Mini USB Flexible Light LED Stick Light 360 Degree Adjustable Angle Bendable Super Bright Portable Flexible Light for Lap, Computer, Outdoor, Energy Saving, Gift, Reading, Lampa'),(8,'Silicone Cover Air Pods','400','Electronics','Active','e4.jpg','admin','Silicone cover air pods Pro case pouch Soft high quality pouch earpods'),(9,'Wireless Mouse','4370','Electronics','Active','e6.jpg','admin','IMICE W-718 Rechargeable 6 Buttons 1600 DPI 2.4GHz Silent Wireless Mouse for Computer PC Laptop'),(10,'Wireless Game Controller','7788','Electronics','Active','e7.jpg','admin','Wireless Game Controller Compatible for Ps4 Game Console Bluetooth-compatible Gamepad Joystick With RGB Light'),(12,'Butterfly Wall Sticker','400','Home & Lifestyles','Active','hl7.jpg','admin','New style 12Pcs Double layer 3D Butterfly Wall Sticker on the wall Home Decor Butterflies for decoration Magnet Fridge stickers'),(13,'Soap Holder','500','Home & Lifestyles','Active','hl3.jpg','admin','Bathroom Leaf Shape Plastic Soap Box Drain Shelf Stand Storage Plate Tray Soap Holder Dish'),(14,'Non-stick Pan','1200','Home & Lifestyles','Active','hl2.jpg','admin','Non-stick Saucepan Non-stick Fry pan Saucepan Tawa Pan Non-Stick Frying Pan - 25cm.'),(15,'Wall Light Lamp','7124','Home & Lifestyles','Active','hl9.jpg','admin','Bright Led Crystal Wall Light Lamp for Bedroom Living Room Decoration B111 White'),(16,'Wall Rack','9500','Home & Lifestyles','Active','hl10.jpg','admin','Modern Floating Wall Shelf look that pairs well with modern ensembles waterproof Shelfs in the living room, bedroom, or kitchen.'),(17,'Carrot Rabbit Plush Doll','918','Gift','Active','gf1.jpg','admin','Soft Stuffed Bunny Reversible Strawberry Zipper Bag Cute Kids Birthday Present Strawberry Rabbit Muppet Sleeping Toy Pillow Easter Carrot Rabbit Plush Doll'),(18,'Women Purse','1220','Gift','Active','gf2.jpg','admin','Female New Korean Version Crocodile Pattern Long Wallet Ladies Color Matching Multi-Card Pocket Thin Leather Fashion Women Purse'),(19,'Soft Unicorn Doll','2500','Gift','Active','gf4.jpg','admin','Plush Toy Soft Unicorn Doll Appease Sleeping Pillow Kids Room Decor Toys for Children Christmas Present'),(20,'Men Leather Wallet','1399','Gift','Active','gf3.jpg','admin','Men Leather Wallet Male Purses Money Clip Card Holders Money Bag Wallet for Men'),(21,'Jewelry Set','4373','Gift','Active','gf5.jpg','admin','4Pcs Jewelry Set Rings Necklace Earrings Bracelet High Performance Golden Jewelry for Women'),(22,'Birthday Decoration Full Set','1950','Gift','Active','gf6.jpg','admin','Happy Birthday decoration full set very easy for decorate different items enjoy your birthday functions.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 15:47:44
