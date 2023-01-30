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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_khachhang` int NOT NULL AUTO_INCREMENT,
  `tenkhachhang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dienthoai` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `diachinhan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_khachhang`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (59,'Trương Xuân Duy','truongxuanduy112000@gmail.com','$2a$10$qp46xMtWq8LWWZvyrJmL2OgrkEw6GVq9KTG27xKrdEnzwI26kK9Z.','0935607053','242 Bế Văn Đàn, quận Thanh Khê, tp Đà Nẵng',NULL),(60,'Trương Quang Nhật','nhat160@gmail.com','$2a$10$qp46xMtWq8LWWZvyrJmL2OgrkEw6GVq9KTG27xKrdEnzwI26kK9Z.','0905766603','Quảng Nam',NULL),(64,'Lâm Văn Bền','ben@gmail.com','$2a$10$ce.leVtfYlFyS.9IyUiGkeZIl2t/XfeVFLPuqDeU35KZR/VpDQ9BK','0352 852 52','123 Quang Trung',''),(65,'Trần Kim Hiếu','trankimhieu@gmail.com','$2a$10$AuZOOL/DrzTbJCdL8JM03e/8qHnxHEGBFNrOE3VpGvBhEodHJgbmy','0333594166','Quảng Nam',''),(66,'Lê Thị Mỹ Oanh','oanh@gmail.com','$2a$10$ce.leVtfYlFyS.9IyUiGkeZIl2t/XfeVFLPuqDeU35KZR/VpDQ9BK','0357962678','21 Hàm Nghi, Đà Nẵng',''),(68,'Trần Kim Huy','kimhuy@gmail.com','$2a$10$kc/h3hglKQ/F4fCCrEMCZ.IHx8oF4jnVM5K3sZEtjG9xzcAOGy0Ey','0389 2830 40','Mỹ Phước, Đại Phong, Đại Lộc, QN','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
