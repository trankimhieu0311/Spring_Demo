-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: webbanhang
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `idsanpham` int DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `rate` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKarm3b8ooy2bglcfymjma8su3h` (`idsanpham`),
  KEY `FK3eywnx4qvhl55ks2noad2w31c` (`iduser`),
  CONSTRAINT `FK3eywnx4qvhl55ks2noad2w31c` FOREIGN KEY (`iduser`) REFERENCES `user` (`id_khachhang`),
  CONSTRAINT `FKarm3b8ooy2bglcfymjma8su3h` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`idsanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (64,'đẹp quá ','2022-10-12 14:00:13',226,65,3),(68,'xin chào \r\n','2022-10-14 11:09:01',299,65,4),(69,'rất đẹp \r\n','2022-10-14 11:12:14',338,65,5),(70,'pin trâu, dùng làm việc thoải mái\r\n','2022-10-18 13:39:26',338,66,4),(71,'Phù hợp cho công việc \r\n','2022-10-19 14:06:07',238,66,4),(72,'hello\r\n','2022-10-24 11:46:24',225,64,3),(73,'rất phù hợp túi tiền','2022-10-27 11:09:06',377,65,5),(74,'tiện lợi','2022-10-27 11:09:20',377,65,2),(75,'sản phẩm dễ dùng','2022-10-27 11:14:00',378,65,4),(76,'tuyệt vời','2022-10-27 13:15:23',376,66,3),(77,'đẹp quá','2022-10-27 16:28:11',341,66,4),(83,'','2022-11-17 11:00:20',377,65,4),(84,'','2022-11-17 11:03:49',378,65,3),(85,'','2022-11-17 11:07:14',377,65,5),(88,'','2022-11-18 09:55:19',236,66,5),(89,'Sản phẩm dễ dùng ','2022-12-09 09:07:37',225,66,4),(90,'sản phẩm chất lươnn','2022-12-09 14:30:58',225,64,5);
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

-- Dump completed on 2023-01-30 10:50:39
