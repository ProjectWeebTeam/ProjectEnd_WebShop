CREATE DATABASE  IF NOT EXISTS `webshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `webshop`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: webshop
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` int NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Goo','admin@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',0,2147483647),(2,'Mod đz','mod@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',1,2147483647);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` tinyint NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (2,'Phụ kiện','',2,'2022-04-22 05:35:48'),(11,'Áo sơ mi','',2,'2022-04-22 09:08:36'),(12,'Quần dài','',3,'2022-04-22 09:09:01'),(14,'Quần Short','',5,'2022-04-22 09:09:31'),(17,'Áo Khoác','',3,'2022-04-22 09:23:39'),(18,'Áo thun',NULL,1,'2022-04-22 09:23:39');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,3,12,1,360000.00,0),(3,4,7,1,350000.00,0),(12,9,4,1,200000.00,0),(13,10,17,1,450000.00,0),(6,5,23,1,370000.00,0),(7,6,28,1,169000.00,0),(8,6,25,1,300000.00,0),(11,8,10,1,69000.00,0),(10,7,11,1,70000.00,0),(14,11,25,1,300000.00,0),(15,12,28,1,169000.00,0);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catalog_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount` int DEFAULT '0',
  `image_link` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `view` int NOT NULL DEFAULT '0',
  `buyed` int NOT NULL,
  `rate_total` int NOT NULL DEFAULT '4',
  `rate_count` int NOT NULL DEFAULT '1',
  `created` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,16,'Áo Thun Cổ Tròn Tối Giản M2','Áo Thun Cổ Tròn Tối Giản M2\nChất liệu: TICI 4C\nThành phần: 61% Polyester 33% Cotton 6% Spandex\n- Thân thiện\n- Thấm hút thoát ẩm\n- Mềm mại\n- Kiểm soát mùi\n- Điều hòa nhiệt\n+ Họa tiết thêu đắp giống, thêu xù\n- HDSD:\n+ Nên giặt chung với sản phẩm cùng màu\n+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh\n+ Nên phơi trong bóng râm để giữ sp bền màu',179000.00,20000,'thun1.jpg',24,1,14,3,1493983674),(2,16,'Nón Y Nguyên Bản 18+ Ver1','PKTT Nón Y Nguyên Bản 18+ Ver1\nChất liệu: Nhung\nThành phần: 100% poly\n- Họa tiết thêu',255000.00,51000,'mu1.jpg',2,1,4,1,1493983674),(3,16,'Vớ Nguyên Bản V02','Thành phần: 90% Cotton 10% Spandex\n- Mềm mại, bó sát cổ chân\n- Thoáng khí\n- Co giãn, đàn hồi cao\n- Khử mùi',300000.00,150000,'vo1.jpg',42,4,11,3,1493983674),(4,18,'Nón Linh Vật Bbuff Ver1','PKTT Nón Linh Vật Bbuff Ver1\nChất liệu: KaKi\nThành phần: 100% cotton\n- Họa tiết thêu',280000.00,80000,'mu2.jpg',16,7,18,4,1493983674),(12,17,'Áo Thun Cổ Trụ Đơn Giản 12VAHDT Văn Hiến Chi Bang Ver11','Áo Thun Cổ Trụ Đơn Giản 12VAHDT Văn Hiến Chi Bang Ver11\nChất liệu: Cotton Compact\nThành phần: 100% Cotton\n- Thân thiện\n- Thấm hút thoát ẩm\n- Mềm mại\n- Kiểm soát mùi\n- Điều hòa nhiệt\n+ Họa tiết thêu đắp giống, thêu xù\n- HDSD:\n+ Nên giặt chung với sản phẩm cùng màu\n+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh\n+ Nên phơi trong bóng râm để giữ sp bền màu',720000.00,360000,'thun2.jpg',27,3,9,2,0),(13,17,'Vớ Nguyên Bản V12','Thành phần: 90% Cotton 10% Spandex\n- Mềm mại, bó sát cổ chân\n- Thoáng khí\n- Co giãn, đàn hồi cao\n- Khử mùi',200000.00,0,'vo2.jpg',5,1,4,1,1493983674),(6,18,'Giày Casual Nguyên Bản M7','Giày Casual Đơn Giản M7\nChất liệu: Vật tư chính Microfiber\n- Lót Vòng cổ Pu\n- Lót thân + Mesh êm chân\n- Trang trí thân PU\n- Thêu trang trí ô dê xỏ dây giày\n- Talon mesh + mousse 3.5mm\n- Dây giày cotton dệt 6mm trắng\n- Ô dê thông hơi\n- Đế cao su',300000.00,100000,'giay1.jpg',2,1,4,1,1493983674),(7,17,'Áo Thun Cổ Tròn Đơn Giản Thần Cổ Đại Valknut Ver3','Áo Thun Cổ Tròn Đơn Giản Thần Cổ Đại Valknut Ver3\nChất liệu: Cotton Compact\nThành phần: 100% Cotton\n- Thân thiện\n- Thấm hút thoát ẩm\n- Mềm mại\n- Kiểm soát mùi\n- Điều hòa nhiệt\n+ Họa tiết thêu đắp giống, thêu xù\n- HDSD:\n+ Nên giặt chung với sản phẩm cùng màu\n+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh\n+ Nên phơi trong bóng râm để giữ sp bền màu',450000.00,100000,'thun3.jpg',20,6,13,3,1493983674),(9,15,'Nón Linh Vật Bbuff Ver2','PKTT Nón Linh Vật Bbuff Ver2\nChất liệu: KaKi\nThành phần: 100% cotton\n- Họa tiết thêu',180000.00,100000,'mu3.jpg',2,1,4,1,1493983674),(11,15,'Vớ Nguyên Bản V9','PKTT Vớ Đơn Giản V9\nThành phần: 75% nylon 20% spandex 5% elastane\n- Mềm mại\n- Thoáng khí\n- An toàn -Thân thiện\n- Khử mùi\n- Kích thước:\n+ Chiều dài bàn chân: 22cm,\n+ Chiều cao ống chân: 9cm\n+ Chiều ngang cổ thun: 8.5cm',80000.00,10000,'vo3.jpg',35,3,5,1,1493983674),(10,15,'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver16','Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver16\nChất liệu: Cotton Spandex\nThành phần : 92% cotton 8% spandex\n- Thân thiện\n- Thấm hút thoát ẩm\n- Mềm mại, ít nhăn\n- Co giãn tối ưu\n- Kiểm soát mùi\n- Điều hòa nhiệt\n+ Họa tiết thêu\n- HDSD:\n+ Nên giặt chung với sản phẩm cùng màu\n+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh\n+ Nên phơi trong bóng râm để giữ sp bền màu',129000.00,60000,'thun4.jpg',8,2,4,1,1493983674),(14,17,'Nón Linh Vật Cửu Long Ver1','Chất liệu : Kaki\nThành phần: 100% cotton\n- Thêu chỉ kim tuyến Cửu Long\n- Phản quang bản đồ Đồng bằng sông Cửu Long',200000.00,50000,'mu5.jpg',3,2,4,1,1493983674),(15,17,'Vớ Nguyên Bản V20','PKTT Vớ Đơn Giản v20\nThành phần: 75% nylon 20% spandex 5% elastane\n- Mềm mại\n- Thoáng khí\n- An toàn -Thân thiện\n- Khử mùi\n- Kích thước:\n+ Chiều dài bàn chân: 22cm,\n+ Chiều cao ống chân: 9cm\n+ Chiều ngang cổ thun: 8.5cm',350000.00,180000,'vo4.jpg',4,1,4,1,1493983674),(16,19,'Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14','Áo Thun Cổ Tròn Đơn Giản Ngân Hà Space Ver14\nChất liệu: Cotton Compact\nThành phần: 100% Cotton\n- Thân thiện\n- Thấm hút thoát ẩm\n- Mềm mại\n- Kiểm soát mùi\n- Điều hòa nhiệt\n+ Họa tiết thêu\n- HDSD:\n+ Nên giặt chung với sản phẩm cùng màu\n+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh\n+ Nên phơi trong bóng râm để giữ sp bền màu',580000.00,0,'thun.jpg',4,3,13,3,1493983674),(17,19,'Giày Casual 12VAHDT Văn Hiến Chi Bang Ver3','- Chất liệu: Microfiber\n- Lót Vòng cổ Pu\n- Talon Pu foam + simili mũi 3mm, gót 10mm\n- 2 lỗ nhỏ giúp hơi nóng và ẩm sẽ được thoát nhanh chóng đem lại cảm giác dễ chịu, thoải mái cho đôi chân sử dụng.\n- Phản quang dây giày tròn đen\n- Trang trí hậu thêu logo kim tuyến\n- Đế cao su',500000.00,50000,'giay2.jpg',36,1,14,4,1493983674),(18,20,'Nón Linh Vật Bbuff Ver2','PKTT Nón Linh Vật Bbuff Ver2\nChất liệu: KaKi\nThành phần: 100% cotton\n- Họa tiết thêu',900000.00,0,'mu4.jpg',1,1,5,1,0),(19,21,'Vớ Nguyên Bản V13','PKTT Vớ Đơn Giản V13\nThành phần: 85% cotton 10%spandex 5%rubber\n- Mềm mại\n- Thoáng khí\n- Co giãn, đàn hồi cao\n- Khử mùi\n- Linh động với đa số size chân người dùng',390000.00,50000,'vo5.jpg',2,1,4,1,1493983674),(20,21,'Giày Đặc Biệt M4','Chất liệu: Microfiber\n- Lót Mousse 3mm +Mesh\n- Ô dê 10mm màu đen\n- Dây giày poly tròn 4mm trắng\n- Đế cao su',380000.00,90000,'giay3.jpg',32,1,4,1,1493983674),(21,21,'Quần Short Đơn Giản M4','- Chất liệu:\nMINI ZURRY\n- Thành Phần:\n+ 94% COTTON\n- Thân thiện\n-Thấm hút thoát ẩm\n- Mềm mại\n- Ít nhăn\n+ 6% SPANDEX\nCo giản tối ưu\n- Họ tiết thêu + in dẻo',180000.00,35000,'short5.jpg',0,1,4,1,1493983674),(22,21,'Giày Casual 12VAHDT Văn Hiến Chi Bang Ver1','Chất liệu:\n-Vật tư chính: Microfiber\n- Lót Mousse 3mm +Mesh\n- Dây đai cotton in chữ\n- Đế cao su\n- Logo VHCB thêu kim tuyến và đen\n- Dây giày cotton tròn 4mm trắng',400000.00,100000,'giay4.jpg',0,1,4,1,1493983674),(23,21,'Quần Short Đơn Giản M1','Chất liệu: DOUBLE-FACE\nThành phần:92% poly 8% spandex\n- Thoáng khí\n- Thấm hút\n- Độ bền cao\n- Co giãn tốt\n- Ít nhăn\nChuyên thể thao\n- Họa tiết in bóng\n- Hai túi trước có dây kéo',450000.00,80000,'short4.jpg',19,7,22,5,1493983674),(24,11,'Giày Tây Lười 12VAHDT Vạn Xuân Kiến Quốc Ver2','Chất liệu: Da suede - Lót Da bò\nĐế Cao su\nMũ giày + hậu khâu tay\nMũ giày khắc laser logo Vạn Xuân Kiến Quốc',230000.00,0,'giay5.jpg',36,1,9,2,1493983674),(25,11,'Quần Short Tối Giản Ver5','Chất liệu: Vải Kaki\nThành phần: 100% Cotton\n- Độ bền\n- Thấm hút\n- Giữ form dáng\n- Thoáng khí\n- Thân thiệt môi trường\n- Kỹ thuậy wash hoạt tính',450000.00,150000,'short3.jpg',2,1,9,2,1493983674),(26,14,'Quần Short Đơn Giản Y Nguyên Bản Ver15','Quần Short Đơn Giản Y Nguyên Bản Ver15\nChất liệu: Vải Jean\nThành phần : 55% cotton 21% recycle poly 14% tencel lyocell 9% rayon 1% spandex\n- Độ đàn hồi cao\n- Thoáng khí\n- Trọng lượng nhẹ\n- Hạn chế co rút\n- Thân thiện với môi trường\n- Siêu co giãn, mềm nước\n+ Kẹp Đồng #Y2010 kẹp giữa miệng túi phải sau',165000.00,0,'short2.jpg',5,1,9,2,1493983674),(27,14,'Quần Short Đơn Giản 12VAHDT Vạn Xuân Kiến Quốc M2','- Chất liệu:\nMINI ZURRY\n- Thành Phần:\n+ 94% COTTON\n- Thân thiện\n- Thấm hút thoát ẩm\n- Mềm mại\n- Ít nhăn\n+ 6% SPANDEX\nCo giản tối ưu\n- Logo VXKQ thêu\n- Họa tiết sọc in dẻo',200000.00,40000,'short1.jpg',2,1,4,1,1493983674),(32,16,'Áo Khoác Classic Tối Giản Ver6','Áo Khoác Classic Đơn Giản Y Nguyên Bản Ver6\nChất liệu: Vải Dù\nThành phần: 100% poly\n- Chống tia UV\n- Cản gió\n- Nhanh khô\n- Bền màu tốt\n-Trượt nước\n+ Túi trong tiện dụng\n+ Reverse Coil Zipper\n(Những chiếc khoá túi này có bề mặt ngoài dẹp, phẳng trong khi răng khoá thì ở trong)\n- Tặng kèm túi đựng áo khoác',385000.00,350000,'aokhoac3.JPG',23,5,17,3,1493983674),(30,16,'Áo Khoác Classic Đơn Giản Y Nguyên Bản ver16','Áo Khoác Classic Đơn Giản Y Nguyên Bản Ver16\n- Chất liệu: MINI ZURRY\n- Thành Phần:\n+ 96% COTTON\n- Thân thiện\n-Thấm hút thoát ẩm\n- Mềm mại\n- Ít nhăn\n+ 4% SPANDEX\nCo giản tối ưu\n- Họa tiết in dẻo',385000.00,350000,'aokhoac1.JPG',24,1,14,3,1493983674),(31,16,'Áo Khoác Hoodie Đơn Giản Y Nguyên Bản Ver21','Áo Khoác Hoodie Đơn Giản Y Nguyên Bản Ver21\nChất liệu: Cotton Compact\nThành phần: 100% Cotton\n- Thân thiện\n- Thấm hút thoát ẩm\n- Mềm mại\n- Kiểm soát mùi\n- Điều hòa nhiệt\n+ Họa tiết thêu 3D\n- HDSD:\n+ Nên giặt chung với sản phẩm cùng màu\n+ Không dùng thuốc tẩy hoặc xà phòng có tính tẩy mạnh\n+ Nên phơi trong bóng râm để giữ sp bền màu',299000.00,250000,'aokhoac2.JPG',22,3,12,3,1493983674),(33,16,'Áo Khoác Hoodie Tối Giản Ver4','Áo Khoác Hoodie Đơn Giản Y Nguyên Bản Ver4\nChất liệu: FRENCH TERRY\nThành phần: 100% cotton\n- Thấm hút thoát ẩm\n- Mềm mại, ít nhăn\n- Co giãn tối ưu\n- Thân thiện môi trường\n- Kỹ thuật Thêu 3D + may đắp - May đắp logo',385000.00,350000,'aokhoac4.JPG',20,4,14,6,1493983674),(34,16,'Sơ Mi Tay Dài Đơn Giản M28','Sơ Mi Tay Dài Đơn Giản M28\nChất liệu: vải cà phê\nThành phần: 50% coffee 50% poly\n+ Odor Control - Kiểm soát mùi\n+ Fast Drying - Nhanh khô\n+ Ice Cool Touch - Làm mát cơ thể\n+ UV Protechtion - Chống nắng\n- Họa tiết in dẻo + thêu 3D',355000.00,320000,'somi1.JPG',33,7,18,4,1493983674),(35,16,'Sơ Mi Tay Ngắn Tối Giản M4','Sơ Mi Tay Ngắn Tối giản M4\nChất liệu: Vải cà phê (Công nghệ sợi làm từ bã cafe) Ver2\nThành phần : 50% coffee 50% poly\n+ Odor Control - Kiểm soát mùi\n+ Fast Drying - Nhanh khô\n+ Ice Cool Touch - Làm mát cơ thể\n+ UV Protechtion - Chống nắng',345000.00,310000,'somi2.JPG',24,12,12,5,1493983674),(36,16,'Sơ Mi Tay Ngắn Đơn Giản M27','Sơ Mi Tay Ngắn Đơn Giản M27\nChất liệu : vải Kate\nThành phần : 65% cotton 35% poly\n- Độ bền cao\n- Mềm mại\n- Nhanh khô\n- Thoáng mát\n+ Họa tiết in dẻo, thêu x2D',335000.00,300000,'somi3.JPG',24,10,11,5,1493983674),(37,16,'Sơ Mi Tay Dài Tối Giản M11','Sơ Mi Tay Dài Tối Giản M11\nChất liệu: Kate\nThành phần: 12% modal và 88% superfine\n- Ít nhăn và dễ ủi\n- Nhanh khô và thoáng mát\nHDSD:\n- Áo sơ mi màu phơi trong bóng râm để tránh bạc màu phần vai áo\n- Áo sơ mi trắng có thể phơi ngoài nắng để áo trắng sáng hơn ( không phơi quá lâu )',335000.00,300000,'somi4.JPG',20,14,21,5,1493983674),(38,16,'Quần Dài Tây Tối Giản M1','Quần Dài Tây Đơn Giản M1\nChất liệu: Vải Quần Tây\nThành phần: 70% poly 28% cotton 2% spandex\n- Thêu logo Y túi trước',385000.00,350000,'quandai1.JPG',14,15,11,3,1493983674),(39,16,'Quần Dài Jogger Đơn Giản G01','Quần Dài Jogger Đơn Giản G01\n- Chất liệu: MINI ZURRY\n- Thành Phần:\n+ 95% COTTON\nThân thiện với môi trường\nThoáng mát\n+ 5% SPANDEX\nCo giãn tối ưu',335000.00,300000,'quandai2.JPG',20,14,21,5,1493983674),(40,16,'Quần Dài Jogger Đơn Giản M10','Quần Dài Jogger Đơn Giản M10\n- Chất liệu: MINI ZURRY\n- Thành Phần:\n+ 94% COTTON\n- Thân thiện\n-Thấm hút thoát ẩm\n- Mềm mại\n- Ít nhăn\n+ 6% SPANDEX\nCo giản tối ưu\n- Họa tiết thêu xù + thêu 2D\n+ Dây rút giấu cạp trong',349000.00,300000,'quandai3.JPG',17,18,15,3,1493983674),(41,16,'Quần Dài Jean Slimfit Đơn Giản B35','Chất liệu: Jean Cotton\nThành phần: 98% cotton 2% spandex\n- Độ bền cao\n- Mặc mát, rất thoải mái.',345000.00,300000,'quandai4.JPG',18,13,12,5,1493983674);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'1','slide1.png','http://localhost/webshop/phoi-ren-p4',1,'2017-04-25 15:24:43'),(4,'2','slide2.jpg','http://localhost/webshop/ao-gia-dinh-ag0560-p16',4,'2017-04-25 15:36:41'),(5,'3','slide3.jpg','http://localhost/webshop/phong-cach-phoi-mau-p24',3,'2017-04-25 15:37:00');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `style`
--

DROP TABLE IF EXISTS `style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `style` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` tinyint NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style`
--

LOCK TABLES `style` WRITE;
/*!40000 ALTER TABLE `style` DISABLE KEYS */;
INSERT INTO `style` VALUES (10,'GU UNISEX GENZ','',1,'2022-04-22 05:35:48'),(11,'GU THỂ THAO','',2,'2022-04-22 05:35:48'),(12,'GU ĐƠN GIẢN','',3,'2022-04-22 05:35:48');
/*!40000 ALTER TABLE `style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (4,1,0,'An Nhiên','annhien@gmail.com','0166666666','Hoàng Mai - Hà Nội','Vui lòng trao hàng đến địa chỉ trên...',350000.00,'',1493983674),(3,1,5,'GoO','GoO@gmail.com','01215345336','Hải Phòng','GUi hang den dia chi tren',360000.00,'',1493983674),(5,1,0,'Bình Nguyễn','binh@gmail.com','0987654321','Hà Nội ','Gửi đến địa chỉ trên',370000.00,'',1494083674),(6,0,0,'Tô Nam','tonam@yahoo.com.vn','098989876','Thủy Nguyên - Hải Phòng','Ship đến địa chỉ vào sáng ngày 23/5',469000.00,'',1494283674),(7,1,5,'GoO','GoO@gmail.com','01215345336','Hải Phòng','Ship vào sáng mai.',70000.00,'',1494183674),(8,0,0,'Linh','ling@yahoo.com','098798787','hai Phong','ship',69000.00,'',1494342674),(9,1,0,'Nhi','nhi@test.com','0987654321','Long Biên - Hà Nội','Gửi hàng đến địa chỉ trên vào ngày mai',200000.00,'',1493983674),(10,0,0,'VIP User','test@gmail.com','1234567890','Hải Phòng','Ship free',450000.00,'',1493983674),(11,0,0,'test','test@gmail.com','1234567890','Hải Phòng','TESE',300000.00,'',1494383674),(12,0,6,'Nguyen An','khachhang1@gmail.com','01201212222','Thủy Nguyên - Hải Phòng','SHIP TO',169000.00,'',1494407353);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'Nguyen An','khachhang1@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','01201212222','Thủy Nguyên - Hải Phòng',2147483647),(5,'User','user@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','01215345336','Hải Phòng',2147483647),(7,'TEST@gmail.com','TEST@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','01215345336','Hải Phòng',2017);
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

-- Dump completed on 2022-04-04 23:34:47
