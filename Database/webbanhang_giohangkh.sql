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
-- Table structure for table `giohangkh`
--

DROP TABLE IF EXISTS `giohangkh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giohangkh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `diachinhan` varchar(255) NOT NULL,
  `dienthoai` varchar(255) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `phuongthucthanhtoan` int NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `id_user` int NOT NULL,
  `trangthai` int DEFAULT NULL,
  `datetimebuy` datetime DEFAULT NULL,
  `trangthaidonhang` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giohangkh`
--

LOCK TABLES `giohangkh` WRITE;
/*!40000 ALTER TABLE `giohangkh` DISABLE KEYS */;
INSERT INTO `giohangkh` VALUES (61,'Thành phố Hà Nội, Quận Ba Đình, Phường Giảng Võ, 15 phố hàng bài','0510555999','Lâm Văn Bền',1,'ngon',64,1,'2022-10-18 13:42:47',3),(63,'Thành phố Hà Nội, Quận Ba Đình, Phường Phúc Xá, 25 Phúc Xá','0987654321','Lâm Văn Bền',1,'',64,1,'2022-10-20 10:56:18',2),(64,'Thành phố Đà Nẵng, Quận Thanh Khê, Phường An Khê, 11 Nguyễn Phước Nguyên','0333594166','Trần Kim Hiếu',1,'Giao giờ hành chính',65,1,'2022-10-20 14:56:44',5),(65,'Thành phố Đà Nẵng, Quận Thanh Khê, Phường Hòa Khê, 242 Bế Văn Đàn','0935607053','Trương Xuân Duy',2,'Nhanh giúp anh',59,1,'2022-10-24 11:42:17',5),(66,'Tỉnh Quảng Nam, Huyện Đại Lộc, Xã Đại Quang, Tam Hòa','0333594166','Trần Kim Hiếu',1,'',65,1,'2022-10-24 13:39:41',5),(67,'Thành phố Hồ Chí Minh, Quận 7, Phường Tân Thuận Tây, Số 2F, đường 4F','0378965433','Lâm Văn Bền',1,'',64,1,'2022-10-26 08:56:11',1),(68,'Tỉnh Bình Định, Thành phố Quy Nhơn, Phường Nguyễn Văn Cừ, 02 Trần Khánh Dư','0510555999','Lê Thị Mỹ Oanh',2,'',66,1,'2022-10-26 08:59:41',5),(69,'Thành phố Đà Nẵng, Quận Thanh Khê, Phường Hòa Khê, 242 Bế Văn Đàn','0935607053','Trương Xuân Duy',3,'',59,1,'2022-10-27 13:12:38',2),(70,'Thành phố Hà Nội, Quận Hoàn Kiếm, Phường Hàng Mã, 12 Hàng Mã','0935607053','Lê Thị Mỹ Oanh',1,'',66,1,'2022-10-27 14:25:39',1),(71,'Tỉnh Hà Giang, Huyện Xín Mần, Xã Pà Vầy Sủ, Sa La Van','0935607053','Lê Thị Mỹ Oanh',2,'',66,1,'2022-10-27 14:40:57',1),(73,'Tỉnh Quảng Nam, Huyện Đại Lộc, Xã Đại Phong, Mỹ Phước','0389283040','Trần Kim Huy',1,'Gần ủy ban xã Đại Phong',68,1,'2022-10-31 20:57:36',1),(98,'Tỉnh Phú Thọ, Huyện Phù Ninh, Xã Trạm Thản, 242 Bế Văn Đàn','0357984612','Lâm Văn Bền',1,'',64,1,'2022-11-08 16:36:28',1),(99,'Thành phố Hồ Chí Minh, Quận 1, Phường Tân Định, 242 Bế Văn Đàn','0510510510','Lê Thị Mỹ Oanh',3,'',66,1,'2022-11-08 16:39:08',1),(100,'Tỉnh Hoà Bình, Huyện Cao Phong, Xã Thu Phong, 25 Thu Phong','0987654321','Trần Kim Hiếu',3,'',65,1,'2022-11-09 08:25:27',4),(104,'Thành phố Hà Nội, Quận Hoàn Kiếm, Phường Hàng Mã, 242 Bế Văn Đàn','0258796412','Lâm Văn Bền',1,'',64,NULL,'2022-11-09 15:35:01',1),(105,'Thành phố Đà Nẵng, Quận Hải Châu, Phường Thạch Thang, 02 Quang Trung','0986325812','Trần Kim Huy',1,'',68,NULL,'2022-11-10 08:48:47',1),(106,'Tỉnh Cao Bằng, Huyện Bảo Lâm, Thị trấn Pác Miầu, 242 Bế Văn Đàn','0935607053','Lâm Văn Bền',2,'',64,NULL,'2022-11-10 09:34:58',1),(107,'Tỉnh Quảng Nam,  Quận / Huyện,  Phường / Xã, Mỹ Phước','0389283040','Trần Kim Hiếu',2,'sdf',65,NULL,'2022-11-10 09:37:24',1),(108,'Tỉnh Hà Giang, Huyện Quản Bạ, Xã Nghĩa Thuận, 242 Bế Văn Đàn','0935607053','Lâm Văn Bền',2,'',64,NULL,'2022-11-10 09:43:22',1),(109,'Tỉnh Bắc Kạn, Huyện Ngân Sơn, Xã Đức Vân, 242 Bế Văn Đàn','0935607053','Lê Thị Mỹ Oanh',1,'',66,NULL,'2022-11-10 10:12:13',1),(110,'Tỉnh Điện Biên, Huyện Mường Nhé, Xã Sen Thượng, Hạng Lường','0510105101','Lâm Văn Bền',2,'',64,NULL,'2022-11-14 08:21:00',1),(111,'Tỉnh Điện Biên, Huyện Tủa Chùa, Xã Tả Sìn Thàng, 242 Bế Văn Đàn','0935607053','Lê Thị Mỹ Oanh',3,'',66,NULL,'2022-11-14 10:38:32',1),(112,'Tỉnh Cao Bằng, Huyện Trùng Khánh, Thị trấn Trùng Khánh, 242 Bế Văn Đàn','0935607053','Lê Thị Mỹ Oanh',1,'',66,NULL,'2022-11-14 10:48:25',1),(113,'Tỉnh Thái Nguyên, Huyện Định Hóa, Xã Quy Kỳ, 242 Bế Văn Đàn','0935607053','Lê Thị Mỹ Oanh',2,'',66,NULL,'2022-11-14 10:54:42',1),(114,'Tỉnh Lào Cai, Huyện Si Ma Cai, Thị trấn Si Ma Cai, 242 Bế Văn Đàn','0935607053','Lê Thị Mỹ Oanh',2,'',66,NULL,'2022-11-14 10:56:02',1),(115,'Thành phố Hà Nội, Quận Hoàn Kiếm, Phường Hàng Buồm, 242 Bế Văn Đàn','0935607053','Trần Kim Hiếu',1,'',65,NULL,'2022-11-17 11:22:12',1),(118,'Tỉnh Quảng Nam,  Quận / Huyện,  Phường / Xã, Mỹ Phước','0389283040','Lâm Văn Bền',1,'',64,NULL,'2022-12-09 14:31:43',1),(119,'Thành phố Hải Phòng,  Quận / Huyện,  Phường / Xã, Mỹ Phước','0389283040','Lâm Văn Bền',1,'cảm ơn',64,NULL,'2022-12-09 14:38:28',1);
/*!40000 ALTER TABLE `giohangkh` ENABLE KEYS */;
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
