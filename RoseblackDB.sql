-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: roseblack
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Address` varchar(255) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'Tp.HCM','2001-06-16','thaonttth01@gmail.com','Nguyễn Thị Thu Thảo',NULL,'thuthao','0868286422','user','thuthao'),(15,NULL,NULL,NULL,'456',NULL,'2','34456','user','wertyy'),(14,NULL,NULL,NULL,'r',NULL,'2','345','user','34'),(13,NULL,NULL,NULL,'w',NULL,'123','34','user','34563'),(12,NULL,NULL,NULL,'t',NULL,'1','4','user','3');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Address` varchar(255) DEFAULT NULL,
  `BillCode` varchar(255) DEFAULT NULL,
  `CartCode` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `OrderNotes` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `AllBill` double NOT NULL,
  `Quantity` int NOT NULL,
  `Status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (24,'','BMon Dec 05 23:03:59 ICT 2022','CTue Dec 06 23:03:52 ICT 2022','Vietname','','Nguyá»n Thá» Thu Tháº£o','','0868286422','05/12/2022','thuthao',34980000,1,'Checking'),(23,'r','BMon Dec 05 23:02:59 ICT 2022','CTue Dec 06 22:55:44 ICT 2022','Vietname','','Nguyá»n Thá» Thu Tháº£o','','0868286422','05/12/2022','thuthao',1232620000,9,'Checking'),(22,'r','BMon Dec 05 22:54:18 ICT 2022','CTue Dec 06 22:52:49 ICT 2022','Vietname','','Nguyá»n Thá» Thu Tháº£o','b','0868286422','05/12/2022','thuthao',323991000,3,'Checking');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BrandCode` varchar(255) DEFAULT NULL,
  `BrandName` varchar(255) DEFAULT NULL,
  `CategoryCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'AS','Asus','CLT'),(2,'MSI','MSI','CLT'),(3,'AC','Acer','CLT'),(4,'D','Dell','CLT'),(5,'LNV','Lenovo','CLT'),(6,'HP','HP','CLT'),(7,'GGB','Gigabyte','CLT'),(8,'AP','Apple','CSP'),(9,'OP','OPPO','CSP'),(10,'VV','Vivo','CSP'),(11,'XOR','XOR','CSP'),(12,'SS','Samsung','CSP'),(13,'NA','Nokia','CSP'),(14,'XAM','Xiaomi','CSP'),(15,'LT','Logitech','CKB'),(16,'AK','AKKO','CKB'),(17,'AS','ASUS','CKB'),(18,'KC','Keychron','CKB'),(19,'RP','Rappo','CKB'),(20,'DK','Ducky','CKB'),(21,'RZ','Razer','CKB'),(22,'LT','Logitech','CM'),(23,'RZ','Razer','CM'),(24,'MSI','MSI','CM'),(25,'AS','ASUS','CM'),(26,'HPX','HyperX','CM'),(27,'RP','Rappo','CM'),(28,'CS','CORSAIR','CM'),(29,'LT','Logitech','CHP'),(30,'RZ','Razer','CHP'),(31,'AS','ASUS','CHP'),(32,'HP','Hyper','CHP'),(33,'CS','CORSAIR','CHP'),(34,'TE','True Wireless','CHP'),(35,'RP','Rappo','CHP');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CartID` varchar(255) DEFAULT NULL,
  `LineItemID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (69,'CTue Dec 06 23:03:52 ICT 2022','LTue Dec 06 23:03:52 ICT 2022'),(68,'CTue Dec 06 22:55:44 ICT 2022','LTue Dec 06 23:02:33 ICT 2022'),(67,'CTue Dec 06 22:55:44 ICT 2022','LTue Dec 06 23:02:04 ICT 2022'),(66,'CTue Dec 06 22:55:44 ICT 2022','LTue Dec 06 23:02:01 ICT 2022'),(65,'CTue Dec 06 22:55:44 ICT 2022','LTue Dec 06 23:01:43 ICT 2022'),(64,'CTue Dec 06 22:55:44 ICT 2022','LTue Dec 06 23:01:38 ICT 2022'),(63,'CTue Dec 06 22:55:44 ICT 2022','LTue Dec 06 22:56:59 ICT 2022'),(62,'CTue Dec 06 22:55:44 ICT 2022','LTue Dec 06 22:56:54 ICT 2022'),(61,'CTue Dec 06 22:55:44 ICT 2022','LTue Dec 06 22:55:48 ICT 2022'),(60,'CTue Dec 06 22:55:44 ICT 2022','LTue Dec 06 22:55:44 ICT 2022'),(59,'CTue Dec 06 22:52:49 ICT 2022','LTue Dec 06 22:54:01 ICT 2022'),(58,'CTue Dec 06 22:52:49 ICT 2022','LTue Dec 06 22:52:58 ICT 2022'),(57,'CTue Dec 06 22:52:49 ICT 2022','LTue Dec 06 22:52:49 ICT 2022');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) DEFAULT NULL,
  `InStock` bigint NOT NULL,
  `Qty` bigint NOT NULL,
  `Sold` bigint NOT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `CategoryCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Laptop',96,100,4,'https://purepng.com/public/uploads/large/purepng.com-laptopelectronicslaptopcomputer-9415246764507pgyc.png','CLT'),(2,'Smartphone',990,1000,10,'https://th.bing.com/th/id/OIP.S_5lhfIpEobmWPToZS3gIwHaFP?pid=ImgDet&rs=1','CSP'),(3,'Keyboard',100,100,0,'https://th.bing.com/th/id/OIP.rZrrzqT4AMUN_5gJKrmTlQHaHa?pid=ImgDet&rs=1','CKB'),(4,'Mouse',1000,1000,0,'https://th.bing.com/th/id/R.dcd908783a2e4cfe59520cd6c79724df?rik=ath8wWdvzZKYKw&pid=ImgRaw&r=0','CM'),(5,'Headphone',50,100,50,'https://th.bing.com/th/id/R.6b7ec1282f12a1f983a4f351bd99693e?rik=1emkr3rBjtj7Og&pid=ImgRaw&r=0','CHP');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_item`
--

DROP TABLE IF EXISTS `line_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item` (
  `ID` varchar(100) NOT NULL,
  `ProductCode` varchar(100) DEFAULT NULL,
  `ProductName` varchar(500) DEFAULT NULL,
  `ProductImg` varchar(1000) DEFAULT NULL,
  `Price` varchar(1000) DEFAULT NULL,
  `TotalPrice` varchar(1000) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `CategoryCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_item`
--

LOCK TABLES `line_item` WRITE;
/*!40000 ALTER TABLE `line_item` DISABLE KEYS */;
INSERT INTO `line_item` VALUES ('LTue Dec 06 22:52:49 ICT 2022','3','Laptop gaming MSI Pulse GL76 11UEK 437VN','https://th.bing.com/th/id/R.0d1110cb441567e2b6efa2659e4dd906?rik=DAkLRa4GpJm0mQ&pid=ImgRaw&r=0','35999000','107997000',3,'CLT'),('LTue Dec 06 22:52:58 ICT 2022','3','Laptop gaming MSI Pulse GL76 11UEK 437VN','https://th.bing.com/th/id/R.0d1110cb441567e2b6efa2659e4dd906?rik=DAkLRa4GpJm0mQ&pid=ImgRaw&r=0','35999000','107997000',3,'CLT'),('LTue Dec 06 22:54:01 ICT 2022','3','Laptop gaming MSI Pulse GL76 11UEK 437VN','https://th.bing.com/th/id/R.0d1110cb441567e2b6efa2659e4dd906?rik=DAkLRa4GpJm0mQ&pid=ImgRaw&r=0','35999000','107997000',3,'CLT'),('LTue Dec 06 22:55:44 ICT 2022','4','Laptop gaming MSI Raider GE66 12UGS 463VN','https://th.bing.com/th/id/R.456aea8b79d9064ef0bc304f37d0b5ce?rik=myeIa9kx85j6xA&pid=ImgRaw&r=0','73990000','147980000',2,'CLT'),('LTue Dec 06 22:55:48 ICT 2022','4','Laptop gaming MSI Raider GE66 12UGS 463VN','https://th.bing.com/th/id/R.456aea8b79d9064ef0bc304f37d0b5ce?rik=myeIa9kx85j6xA&pid=ImgRaw&r=0','73990000','147980000',2,'CLT'),('LTue Dec 06 22:56:54 ICT 2022','4','Laptop gaming MSI Raider GE66 12UGS 463VN','https://th.bing.com/th/id/R.456aea8b79d9064ef0bc304f37d0b5ce?rik=myeIa9kx85j6xA&pid=ImgRaw&r=0','73990000','147980000',2,'CLT'),('LTue Dec 06 22:56:59 ICT 2022','4','Laptop gaming MSI Raider GE66 12UGS 463VN','https://th.bing.com/th/id/R.456aea8b79d9064ef0bc304f37d0b5ce?rik=myeIa9kx85j6xA&pid=ImgRaw&r=0','73990000','147980000',2,'CLT'),('LTue Dec 06 23:01:38 ICT 2022','4','Laptop gaming MSI Raider GE66 12UGS 463VN','https://th.bing.com/th/id/R.456aea8b79d9064ef0bc304f37d0b5ce?rik=myeIa9kx85j6xA&pid=ImgRaw&r=0','73990000','147980000',2,'CLT'),('LTue Dec 06 23:01:43 ICT 2022','4','Laptop gaming MSI Raider GE66 12UGS 463VN','https://th.bing.com/th/id/R.456aea8b79d9064ef0bc304f37d0b5ce?rik=myeIa9kx85j6xA&pid=ImgRaw&r=0','73990000','147980000',2,'CLT'),('LTue Dec 06 23:02:01 ICT 2022','4','Laptop gaming MSI Raider GE66 12UGS 463VN','https://th.bing.com/th/id/R.456aea8b79d9064ef0bc304f37d0b5ce?rik=myeIa9kx85j6xA&pid=ImgRaw&r=0','73990000','147980000',2,'CLT'),('LTue Dec 06 23:02:04 ICT 2022','4','Laptop gaming MSI Raider GE66 12UGS 463VN','https://th.bing.com/th/id/R.456aea8b79d9064ef0bc304f37d0b5ce?rik=myeIa9kx85j6xA&pid=ImgRaw&r=0','73990000','147980000',2,'CLT'),('LTue Dec 06 23:02:33 ICT 2022','10','Samsung Galaxy S22 Ultra - 8GB/128GB','https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-6_637800452287772364.png','24390000','48780000',2,'CSP'),('LTue Dec 06 23:03:52 ICT 2022','1','Laptop Gaming MSI Bravo 15 B5DD 276VN','https://bizweb.dktcdn.net/100/386/607/products/msi-bravo-15-158c12f2-ff99-40c0-a520-2c726599c7e4.png?v=1659589822733','17490000','34980000',2,'CLT');
/*!40000 ALTER TABLE `line_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BrandCode` varchar(255) DEFAULT NULL,
  `CategoryCode` varchar(255) DEFAULT NULL,
  `InStock` bigint NOT NULL,
  `PriceCurrent` varchar(255) DEFAULT NULL,
  `PriceRoot` varchar(255) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `Qty` bigint NOT NULL,
  `Sold` bigint NOT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `ID_Category` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'MSI','CLT',10,'17490000','22490000','Laptop Gaming MSI Bravo 15 B5DD 276VN',15,5,'https://bizweb.dktcdn.net/100/386/607/products/msi-bravo-15-158c12f2-ff99-40c0-a520-2c726599c7e4.png?v=1659589822733',0),(2,'MSI','CLT',10,'23000000','23000000','Laptop Gaming MSI Katana GF66 11UC 676VN',15,5,'https://th.bing.com/th/id/R.f8b89e3b82f614b1600426d939fb3067?rik=BISncCG3D6CQXQ&pid=ImgRaw&r=0',0),(3,'MSI','CLT',5,'35999000','38999000','Laptop gaming MSI Pulse GL76 11UEK 437VN',10,5,'https://th.bing.com/th/id/R.0d1110cb441567e2b6efa2659e4dd906?rik=DAkLRa4GpJm0mQ&pid=ImgRaw&r=0',0),(4,'MSI','CLT',5,'73990000','77990000','Laptop gaming MSI Raider GE66 12UGS 463VN',10,5,'https://th.bing.com/th/id/R.456aea8b79d9064ef0bc304f37d0b5ce?rik=myeIa9kx85j6xA&pid=ImgRaw&r=0',0),(5,'MSI','CLT',5,'118990000','119990000','Laptop gaming MSI Stealth GS77 12UHS 250VN',10,5,'https://th.bing.com/th/id/R.d6c639c794c7254fa8cc9a18109160d6?rik=L3VmINFoYWa1%2bw&pid=ImgRaw&r=0',0),(6,'LNV','CLT',10,'18990000','22990000','Laptop Lenovo IdeaPad Gaming 3 15IHU6 82K101B5VN',10,0,'https://th.bing.com/th/id/R.e86b43b9239de780f51d6dea6e4ffd93?rik=B1GJZOcUL%2bTX0A&pid=ImgRaw&r=0',0),(7,'LNV','CLT',10,'76990000','78990000','Laptop gaming Lenovo Legion 7 16IAX7 82TD008FVN',10,0,'https://th.bing.com/th/id/R.8b1be5a1753fef0e611765cd8eb1f81f?rik=p%2fOst8RbyWpVvQ&pid=ImgRaw&r=0',0),(8,'SS','CSP',5,'8990000','15490000','Samsung Galaxy S20 FE 256GB',6,1,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/04/30/image-removebg-preview-11.png',0),(9,'SS','CSP',5,'20890000','25990000','Samsung Galaxy S22 Plus',6,1,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview_637800437459949020.png',0),(10,'SS','CSP',5,'24390000','30990000','Samsung Galaxy S22 Ultra - 8GB/128GB',6,1,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-6_637800452287772364.png',0),(11,'SS','CSP',5,'37790000','44490000','Galaxy Z Fold4 - 512GB',6,1,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/08/16/image-removebg-preview-49.png',0),(12,'SS','CSP',5,'21390000','25990000','Samsung Galaxy Z Flip4 - 256GB',6,1,'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/08/11/image-removebg-preview-16.png',0),(13,'AP','CSP',5,'31490000','31490000','Apple iPhone 14 Pro Max',6,1,'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/09/08/44444.png',0),(14,'AP','CSP',5,'23490000','30490000','Apple iPhone 13 Pro',6,1,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/09/15/image-removebg-preview-15.png',0),(15,'LT','CKB',10,'1390000','1599000','Bàn phím Logitech Mechanical Gaming G413 TKL SE',10,0,'https://product.hstatic.net/1000026716/product/thumbphim_c89f6d836d1844afadb2b4cb6ec33bf8.png',0),(16,'LT','CKB',10,'2090000','2990000','Bàn phím Logitech G512 GX RGB (Clicky)',10,0,'https://product.hstatic.net/1000026716/product/thumbphim_f3885b3f5138471a957514abaece8391.png',0),(17,'LT','CKB',10,'2690000','3790000','Bàn phím Logitech G Pro X',10,0,'https://product.hstatic.net/1000026716/product/thumbphim_9fb12e4f19d94b31aeb8cc81546d86df.png',0),(18,'LT','CKB',10,'4390000','4690000','Bàn phím Logitech G715 TKL Off White',10,0,'https://product.hstatic.net/1000026716/product/g715-gallery-1_3fc1767b4f5e4e14b60365d8b5884a5d.png',0),(19,'LT','CKB',10,'2490000','2990000','Bàn phím Logitech G Pro League Of Legends',10,0,'https://product.hstatic.net/1000026716/product/thumbphim_bb230a127d4b4f9a96749383e2a90e34.png',0),(20,'LT','CKB',10,'990000','1099000','Bàn phím Logitech G213',10,0,'https://product.hstatic.net/1000026716/product/thumbphim_debdc124120a402cb74899dfda6c1bc1.png',0),(21,'LT','CKB',10,'690000','690000','Bàn Phím Bluetooth Logitech K380 Blue',10,0,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-bluetooth-logitech-k380-blue-1_332dc1223afa4390a0480c44b0ac1560.jpg',0),(22,'RZ','CM',10,'490000','1290000','Chuột Razer Deathadder Essential',9,1,'https://product.hstatic.net/1000026716/product/tttttt_a3febd70c7f74160abf2441546d1a8c0.png',0),(23,'RZ','CM',10,'1290000','1290000','Chuột Razer Deathadder Essential White',9,1,'https://product.hstatic.net/1000026716/product/untitled-1_72f284baa15e4ba6824a83ae5ac00608.png',0),(24,'RZ','CM',10,'1190000','1990000','Chuột Razer Basilisk V3',9,1,'https://product.hstatic.net/1000026716/product/gearvn-chuot-razer-basilisk-v3-1_b47a39920b774761bc240b1613eac945.jpg',0),(25,'RZ','CM',10,'3590000','3890000','Chuột Razer Viper V2 Pro',9,1,'https://product.hstatic.net/1000026716/product/4_10f15e4768e6498ab9f11f5394ff376c.png',0),(26,'RZ','CM',10,'2290000','4090000','Chuột Razer Viper Ultimate Wireless',9,1,'https://product.hstatic.net/1000026716/product/718rcib-3sl._sl1500__3a1401c490184db78902a27e1e5d94e1.jpg',0),(27,'LT','CM',10,'1750000','1890000','Chuột Logitech G502 X White',9,1,'https://product.hstatic.net/1000026716/product/g502x-corded-gallery-1-white_d7fc0437d0fc436ba97c48ed06840680.png',0),(28,'LT','CM',10,'3590000','3890000','Chuột Logitech G502 X Plus LightSpeed Black',9,1,'https://product.hstatic.net/1000026716/product/g502x-plus-gallery-2-black_1db5bbb43d2f443ea2eaf758a6f97e77.png',0),(29,'LT','CHP',10,'1690000','2900000','Tai nghe Gaming Logitech G Pro Gen 2',5,5,'https://product.hstatic.net/1000026716/product/tai-nghe-gaming-logitech-g-pro-gen-2-1_d20d0ae9b42e4c13803cb2c9936b2096.png',0),(30,'LT','CHP',10,'2890000','3990000','Tai nghe Logitech G733 LIGHTSPEED Wireless White',5,5,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g733-lightspeed-wireless-white-66666_142abc4187744aa7b7fe009d7486696c.png',0),(31,'LT','CHP',10,'2700000','3690000','Tai nghe Logitech G Pro X League Of Legends',5,5,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g-pro-x-league-of-legends-1_08089aaa82c24a4e8c129455be552215.jpg',0),(32,'RZ','CHP',10,'2690000','3290000','Tai nghe Razer Kraken BT Kitty Edition - Quartz',5,5,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-razer-kraken-bt-kitty-edition-quartz-666_db790cca44f042a5a47afd4913c65868.jpg',0),(33,'RZ','CHP',10,'1590000','2590000','Tai nghe Razer Barracuda X Mercury',5,5,'https://product.hstatic.net/1000026716/product/barracuda-x-mercury_a9c7d0d7aee64369bd179f7539f58354.png',0),(34,'RZ','CHP',10,'2450000','2890000','Tai nghe Razer Kraken V3',5,5,'https://product.hstatic.net/1000026716/product/kraken_a19ced5c8cb34a869ee129df46ceca84.jpg',0),(35,'HPX','CHP',10,'2390000','2790000','Tai nghe True Wireless Skullcandy Dime Blue Green',5,5,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-hyperx-cloud-ii-pink-1_64eacb00caa5481088b173c6063fb526.png',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_detail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Batery` varchar(255) DEFAULT NULL,
  `Bluetooth` varchar(255) DEFAULT NULL,
  `CPU` varchar(255) DEFAULT NULL,
  `CardGraphic` varchar(255) DEFAULT NULL,
  `Color` varchar(255) DEFAULT NULL,
  `EvaluateDetail` varchar(255) DEFAULT NULL,
  `Hardware` varchar(255) DEFAULT NULL,
  `Keyboard` varchar(255) DEFAULT NULL,
  `LANStandard` varchar(255) DEFAULT NULL,
  `OS` varchar(255) DEFAULT NULL,
  `PortCommunicate` varchar(255) DEFAULT NULL,
  `ProductCode` int NOT NULL,
  `RAM` varchar(255) DEFAULT NULL,
  `Screen` varchar(255) DEFAULT NULL,
  `Size` varchar(255) DEFAULT NULL,
  `WIFIStandard` varchar(255) DEFAULT NULL,
  `Webcam` varchar(255) DEFAULT NULL,
  `Weight` varchar(255) DEFAULT NULL,
  `MobileNetwork` varchar(255) DEFAULT NULL,
  `NumberOfSim` varchar(255) DEFAULT NULL,
  `ROM` varchar(255) DEFAULT NULL,
  `ResolutionCamera` varchar(255) DEFAULT NULL,
  `ResolutionScreen` varchar(255) DEFAULT NULL,
  `ScreenTechnology` varchar(255) DEFAULT NULL,
  `Accessory` varchar(255) DEFAULT NULL,
  `Compability` varchar(255) DEFAULT NULL,
  `Connect` varchar(255) DEFAULT NULL,
  `Keycaps` varchar(255) DEFAULT NULL,
  `LED` varchar(255) DEFAULT NULL,
  `Style` varchar(255) DEFAULT NULL,
  `Switch` varchar(255) DEFAULT NULL,
  `Acceleration` varchar(255) DEFAULT NULL,
  `HoldingStyle` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Node` varchar(255) DEFAULT NULL,
  `ResponseTime` varchar(255) DEFAULT NULL,
  `Sensors` varchar(255) DEFAULT NULL,
  `Frequency` varchar(255) DEFAULT NULL,
  `HeadphoneMaterial` varchar(255) DEFAULT NULL,
  `Impedance` varchar(255) DEFAULT NULL,
  `Microphone` varchar(255) DEFAULT NULL,
  `Soundproofing` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detail`
--

LOCK TABLES `product_detail` WRITE;
/*!40000 ALTER TABLE `product_detail` DISABLE KEYS */;
INSERT INTO `product_detail` VALUES (1,'3 Cell 53.5WHr','Bluetooth v5.1','AMD Ryzen 5-5600H 3.30GHz upto 4.20GHz, 6 cores 12 threads','Radeon RX5500M 4GB','Đen','','512GB NVMe PCIe Gen3x4 SSD','Backlight Keyboard ( Red )','Gb LAN','Windows 11 Home','1x (4K @ 30Hz) HDMI, 1x RJ45, 1x Mic-in/Headphone-out Combo Jack, 1x Type-C USB3.2 Gen1, 2x Type-A USB3.2 Gen1, 1x Type-A USB2.0',1,'DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, Up to 64GB','15.6 inch FHD (1920*1080), 60Hz 45%NTSC IPS-Level','359 x 259 x 24.95 mm','Wi-Fi 6E ','HD type (30fps@720p)','2.35 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'3 cell, 53.5Whr','Bluetooth v5.2','Intel Core i5-11400H','NVIDIA GeForce RTX 3050 4GB GDDR6 + Intel UHD Graphics','Đen',NULL,'512GB NVMe PCIe Gen3x4 SSD (1 slot)','Single Led (Red)','Killer Gb LAN','Windows 10 Home','1x Type-C USB3.2 Gen1, 2x Type-A USB3.2 Gen1, 1x Type-A USB2.0, 1x (4K @ 60Hz) HDMI, 1x Mic-in/Headphone-out Combo Jack',2,'8GB (8GB x 1) DDR4 3200MHz (2 khe, tối đa 64GB)','15.6 inch FHD (1920*1080), 144Hz 45% NTSC','359 x 259 x 24.9 (mm)','Intel Wi-Fi 6 AX201(2*2 ax)','HD 720p@30fps','2.1 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'3 cell, 53.5Whr','v5.1','Intel Core i7-11800H 2.3GHz up to 4.6GHz 24MB','NVIDIA GeForce RTX 3060 6GB GDDR6 Up to 1485MHz Boost Clock, 85W Maximum Graphics Power with Dynamic Boost.','Titanium Gray',NULL,'512GB SSD M.2 PCIE (2 slots)','RGB Backlight Keyboard','Gb LAN','Windows 10 Home','1x Type-C USB3.2 Gen1, 2x Type-A USB3.2 Gen1, 1x Type-A USB2.0, 1x (4K @ 30Hz) HDMI, 1x RJ45, 1x Mic-in/Headphone-out Combo Jack',3,'16GB (8GBx2) DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)','17.3\" FHD (1920 x 1080) IPS with Anti-Glare, 144Hz, Thin Bezel, 72% NTSC, 100% sRGB','398 x 273 x 24.2 mm','Intel Wi-Fi 6 AX201(2*2)','HD type (30fps@720p)','2.6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'4 Cell 99.9WHrs','v5.2','Intel Core i9-12900HK 3.8GHz up to 5.0GHz 24MB','NVIDIA® GeForce RTX™ 3070Ti 8GB GDDR6 Up to 1535MHz Boost Clock, 150W Maximum Graphics Power with Dynamic Boost. Max. 195W CPU-GPU Power with MSI OverBoost Technology','Titanium Blue',NULL,'1TB SSD PCIE G4X4 (2 slots)','Per key RGB steelseries KB','Killer 2.5Gb','Windows 11 Home','1x Type-C (USB3.2 Gen2 / DP), 1x Type-C USB3.2 Gen2, 2x Type-A USB3.2 Gen1, 1x Type-A USB3.2 Gen2, 1x RJ45, 1x (8K @ 60Hz / 4K @ 120Hz) HDMI',4,'32GB (16GB x2) DDR5 4800MHz (2x SO-DIMM socket, up to 64GB SDRAM)','15.6\" QHD (2560x1440) IPS, 240Hz, 100% sRGB, DCI-P3 100% typical, NanoEdge','358 x 267 x 23.4 mm','Intel® Killer™ Wi-Fi 6E AX1675(i)','FHD type (30fps@1080p)','2.38 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'4 Cell 99.9WHrs','Bluetooth v5.2','Intel Core i9-12900H 3.8GHz up to 5.0GHz 24MB','NVIDIA® GeForce RTX™ 3080 Ti 16GB GDDR6, Up to 1175MHz Boost Clock, 105W Maximum Graphics Power with Dynamic Boost','Core Black',NULL,'2TB SSD PCIE G4X4 (2 slots)','Per-Key RGB Backlight Keyboard','Killer Gb LAN (Up to 2.5G)','Windows 11 Home','1x Type-C (USB / DP / Thunderbolt™ 4) with PD charging, 1x Type-C (USB3.2 Gen2 / DP), 2x Type-A USB3.2 Gen2, 1x (8K @ 60Hz / 4K @ 120Hz) HDMI, 1x Mic-in/Headphone-out Combo Jack, 1x RJ45',5,'64GB (32GBx2) DDR5 4800MHz (2x SO-DIMM socket, up to 64GB SDRAM)','17.3\" UHD (3840x2160), 120Hz, IPS-Level, DCI-P3 100% typical','358.3 x 248 x 18.3-19.8 (mm)','Intel Wi-Fi 6E AX210(2x2)','FHD type (30fps@1080p)','2.45 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'3 Cell 45WH','BT v5.0','Intel Core i5-11320H 3.2GHz up to 4.5GHz 8MB','NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1500 / 1740MHz, TGP 90W','Shadow Black',NULL,'512GB SSD M.2 2280 PCIe 3.0x4 NVMe','Led RGB 4-Zone','100/1000M','Windows 11 Home','1x USB-C 3.2 Gen 1 (support data transfer only), 2x USB 3.2 Gen 1, 1x HDMI 2.0, 1x RJ-45, 1x headphone / microphone combo jack (3.5mm), 1x power connector',6,'8GB (8x1) DDR4 3200MHz (2x SO-DIMM socket, up to 16GB SDRAM)','15.6\" FHD (1920x1080) IPS 250nits Anti-glare, 120Hz, 45% NTSC, DC dimmer','359.6 x 251.9 x 24.2 (mm)','802.11AX (2x2)','HD 720p','2.25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'4Cell, 99.99Wh','v5.2','Intel Core i7-12700H, 14C (6P + 8E) / 20T, P-core 2.3 / 4.7GHz, E-core 1.7 / 3.5GHz, 24MB','NVIDIA GeForce RTX 3070 Ti 8GB GDDR6, Boost Clock 1485MHz, TGP 150W','Storm Grey',NULL,'1TB SSD M.2 2280 PCIe 4.0x4 NVMe (2 slots)','LED RGB 4-Zone','None','Windows 11 Home','2x Thunderbolt 4 / USB4 40Gbps, 1x USB 3.2 Gen 1, 1x USB 3.2 Gen 1, 1x USB-C 3.2 Gen 1, 1x USB-C 3.2 Gen 2, 1x HDMI, up to 8K/60Hz, 1x Ethernet (RJ-45), 1x Headphone/microphone combo jack (3.5mm), 1x Power connector',7,'32GB (2x16GB) DDR5 4800MHz (2x SO-DIMM socket, up to 32GB SDRAM)','16\" WQXGA (2560x1600) IPS 500nits Anti-glare, 165Hz, 100% sRGB, Dolby Vision, HDR 400, G-Sync, DC dimmer, Low Blue Light, High Gaming Performance','358.1 x 263.5 x 19.4 mm','Intel Killer Wi-Fi 6E AX1675i 11ax, 2x2','FHD 1080p with E-camera Shutter','2.25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,'v5.0, A2DP, LE','Apple A15 Bionic 6 nhân','Apple GPU 5 nhân',NULL,NULL,NULL,NULL,NULL,'iOS 15',NULL,14,'6 GB','','Dài 146.7 mm - Ngang 71.5 mm - Dày 7.65 mm','Dual-band (2.4 GHz/5 GHz), Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi MIMO, Wi-Fi hotspot',NULL,'204 g','Hỗ trợ 5G','1 Nano SIM & 1 eSIM','128 GB','3 camera 12 MP, 12 MP','1170 x 2532 Pixels','OLED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,'Bluetooth 5.3','A16 Bionic',NULL,NULL,NULL,NULL,NULL,NULL,'iOS 16',NULL,13,'6 GB',NULL,'Dài 160.7 mm x Rộng 77.6 mm x Dày 7.85 mm','Wi‑Fi 6 (802.11ax) with 2x2 MIMO',NULL,'240 grams','5G (sub ‑ 6 GHz và mmWave) với 4x4 MIMO, Gigabit LTE với 4x4 MIMO và LAA','1 eSIM, 1 SIM vật lý','128GB','48MP x 12MP x 12MP, 12MP','2796 x 1290 pixel','Super Retina XDR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'4500 mAh','A2DP, LE, v5.0','Snapdragon 865 8 nhân','Adreno 650',NULL,NULL,'221 GB',NULL,NULL,'Android 11',NULL,8,'8 GB',NULL,'','Dual-band (2.4 GHz/5 GHz), Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi Direct',NULL,NULL,'Hỗ trợ 4G','2 Nano SIM (SIM 2 chung khe thẻ nhớ)','256 GB','Chính 12 MP & Phụ 12 MP, 8 MP, 32 MP','Full HD+ (1080 x 2400 Pixels)','Super AMOLED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'4500 mAh','5.2','Snapdragon® 8 Gen 1 (4nm)',NULL,NULL,NULL,'For 256 GB: 218.5GB',NULL,NULL,'Android 12',NULL,9,'8GB','6.6\"','Dài 157.4 mm - Ngang 75.8 mm - Dày 7.6 mm','802.11 a/b/g/n/ac/ax 2.4G+5GHz+6GHz, HE160, MIMO, 1024-QAM',NULL,'195g','5G','1 nano SIM + 1 e-SIM','256GB','12MP (UW) + 50MP (W) + 10MP (Tele), 10MP','2340 x 1080','Dynamic AMOLED 2X, 10 - 120 Hz, Infinity O',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'5000 mAh','5,2','Snapdragon® 8 Gen 1 (4nm)',NULL,NULL,NULL,'218.5GB',NULL,NULL,'Android 12',NULL,10,'12GB','6.8\"','Dài 163.3 mm - Ngang 77.9 mm - Dày 8.9 mm','802.11 a/b/g/n/ac/ax 2.4G+5GHz+6GHz, HE160, MIMO, 1024-QAM',NULL,NULL,'5G','1 nano SIM + 1 e-SIM','256GB','12MP (UW) + 108MP (W) + 12MP (Tele3x) + 12MP (Tele10x), 40MP','3088 x 1440','Dynamic AMOLED 2X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'5000 mAh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Android 12',NULL,11,'12 GB','Chính 7.6\" & Phụ 6.2\"','Dài 155.1 mm - Ngang 130.1 mm - Dày 6.3 mm',NULL,NULL,'263g','Hỗ trợ 5G','1 Nano SIM & 1 eSIM','256 GB','Chính 50 MP & Phụ 12 MP, 10 MP, 10 MP & 4 MP','Chính: QXGA+ (2176 x 1812 Pixels) & Phụ: HD+ (2316 x 904 Pixels)','Dynamic AMOLED 2X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'3700 mAh','v5.2','Snapdragon 8+ Gen 1 8 nhân','Adreno 670',NULL,NULL,'256GB',NULL,NULL,'Android 12',NULL,12,'8 GB','Chính 6.7\" & Phụ 1.9\"','Dài 165.2 mm - Ngang 71.9 mm - Dày 6.9 mm','6 GHz, Dual-band (2.4 GHz/5 GHz), Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi MIMO',NULL,'187 g','Hỗ trợ 5G','1 Nano SIM & 1 eSIM','256GB','2 camera 12 MP, 10 MP','Chính: FHD+ (2640 x 1080 Pixels) x Phụ: (260 x 512 Pixels)','Chính: Dynamic AMOLED 2X, Phụ: Super AMOLED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,NULL,NULL,'355 x 127 x 36.3 (mm)',NULL,NULL,'650g',NULL,NULL,NULL,NULL,NULL,NULL,'Sách HDSD','Windows® 10 trở lên, macOS X 10.14 trở lên','Có dây (USB 2.0)','PBT','Có nền trắng trên mỗi phím','TKL','Tactile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,NULL,NULL,'Đen',NULL,NULL,NULL,NULL,NULL,NULL,16,NULL,NULL,'132 x 445 x 35,5 mm',NULL,NULL,'1130 g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'USB 2.0','Logitech G Pro X','RGB','	G512 GX','GX Switch Blue (Clicky)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL,'Đen',NULL,NULL,NULL,NULL,NULL,NULL,17,NULL,NULL,'361 x 153 x 34 (mm)',NULL,NULL,'1 kg',NULL,NULL,NULL,NULL,NULL,NULL,'Key Puller, Cáp USB rời, Hướng dẫn sử dụng','','Có dây','ABS xuyên LED','RGB hỗ trợ điều chỉnh qua phần mềm Logitech G Hub','Logitech G Pro X','GX Clicky',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,'Trắng',NULL,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,'370,6 mm x 157 mm x 37,2 mm',NULL,NULL,'976 g',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'Công nghệ LIGHTSPEED không dây','PBT đúc 2 lớp','','TKL 87 phím','Linear / Tactile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL,'Đen - Xanh',NULL,NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,'Chiều cao: 34 mm, Chiều rộng: 361 mm, Chiều dày: 153 mm',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Windows 7 trở lên, macOS 10.11 trở lên','Cổng USB',NULL,'RGB',NULL,'GX Switch Tactile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,'Cao 218 x rộng 452 x dày 33 mm',NULL,NULL,'1kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'USB 2.0',NULL,'RGB (5 khu vực)','Giả cơ','MECH DOME key ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'2 x AAA','	',NULL,NULL,'Xanh Blue',NULL,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,'124 x 279 x 16 mm',NULL,NULL,'423 g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Windows 10 trở lên','Không dây - Bluetooth (3.0)',NULL,'LED pin, 3 LED kênh Bluetooth','TKL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL,'Đen',NULL,NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,'127.0 x 61.7  x 42.7 mm',NULL,NULL,'96g',NULL,NULL,NULL,NULL,'6400DPI',NULL,NULL,NULL,'USB 2.0',NULL,'Led Green đơn sắc','Có dây, dây nhựa',NULL,'220 IPS / 30G','Ergonomic / Công thái học','Deathadder Essential','5 nút có thể lập trình','1ms','Cảm biến quang học (Optical)',NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,NULL,NULL,'127.0 (dài) x 70 (rộng)  x 44 mm (cao)',NULL,NULL,'105G',NULL,NULL,NULL,NULL,'6400DPI',NULL,'50g',NULL,'USB 2.0',NULL,'Led Trắng đơn sắc','Có dây, dây nhựa',NULL,'50g','Ergonomic / Công thái học','Deathadder Essential White','5 nút có thể lập trình','1ms','Cảm biến quang học (Optical)',NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,'Chiều dài: 130 mm / 5,11 inch, Chiều rộng: 60 mm / 2,36 inch, Chiều cao: 42,5 mm / 1,67 inch',NULL,NULL,'101 g / 3,56 oz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Không có','Có dây (Cáp Razer Speedflex)',NULL,NULL,'Thuận tay phải',NULL,NULL,NULL,NULL,'11',NULL,'Quang học',NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL,'Đen',NULL,NULL,NULL,NULL,NULL,NULL,25,NULL,NULL,'126.7 mm x 57.6 mm x 37.8 mm',NULL,NULL,'58g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Razer™ HyperSpeed Wireless',NULL,'	Không','	Đối xứng','Razer ™ thế hệ thứ 3 (lên đến 90 triệu lần nhấp)','70',NULL,'	Viper V2 Pro','5',NULL,'Quang học Focus Pro 30K',NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,NULL,NULL,'117 mm / 4.6 in (Length) x 71 mm / 2.79 in (Width) x 38 mm / 1.49 in (Height)',NULL,NULL,'74 g / 2.61 oz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Xbox One',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,27,NULL,NULL,'131,4 mm x 41,1 mm x 79,2 mm',NULL,NULL,'89g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Windows® 10 trở lên, macOS 10.14 trở lên','Có dây',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13',NULL,'Hero 25K',NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,'131,4 mm x 41,1 mm x 79,2 mm',NULL,NULL,'106 g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Windows® 10 trở lên, macOS 10.14 trở lên','Công nghệ không dây LIGHTSPEED',NULL,'Chiếu sáng RGB 8 vùng',NULL,NULL,NULL,NULL,NULL,'13',NULL,'HERO 25K',NULL,NULL,NULL,NULL,NULL),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tai nghe, miếng đệm tai nghe giả da, Mic có thể tháo ra với màng lọc âm đầy đủ, Dây cáp, Bộ tách máy tính để tách các giắc cắm mic và tai nghe, Tài liệu hướng dẫn sử dụng.','PC, PS4™, Nintendo Switch™, Xbox One™, VR','USB',NULL,'None','Over-ear',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20Hz - 20kHz','Giả da','32 Ohm','Có thể tháo rời','Tách tiếng ồn lên tới 16dB'),(43,NULL,NULL,NULL,NULL,'Đen',NULL,NULL,NULL,NULL,NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hướng dẫn sử dụng, USB Reciever, Cáp sạc USB type A to USB type C','Windows 7 trở lên / MacOS X 10.12 trở lên / PlayStation 4','Reciever USB type A',NULL,'Có LED RGB ',NULL,'Over-ear',NULL,NULL,'G733 LightSpeed Wireless Black',NULL,NULL,NULL,'20Hz - 20KHz','Vải thoáng','1kHz 32Ohm','Có thể tháo rời','Có'),(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,31,NULL,NULL,'138 x 94 x 195 mm',NULL,NULL,'Không tính dây 320g',NULL,NULL,NULL,NULL,NULL,NULL,'Tai nghe chơi game PRO, Miếng đệm giả da bằng cao su non, Card âm thanh USB ngoài, Mic có thể tháo rời, Dây 2m với các nút âm lượng và tắt tiếng trên dây, Bộ tách chữ Y để chia các cổng cắm mic và tai nghe, Tài liệu hướng dẫn sử dụng','PC có cổng USB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20 Hz-20 KHz','Da','35 ohm',NULL,NULL),(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,'0,66 lbs / 298 g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tai nghe Bluetooth 5.0',NULL,'RGB ','Over-Ear (Circumaural)',NULL,NULL,NULL,'Kraken BT Kitty Edition - Quartz',NULL,NULL,NULL,'100 Hz - 10 kHz','Giả da','32 Ω','ECM','Có'),(46,NULL,NULL,NULL,NULL,'Trắng',NULL,NULL,NULL,NULL,NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PC (không dây, có dây), PlayStation (không dây, có dây), Nintendo Switch (không dây, có dây), Thiết bị Android (không dây, có dây), Xbox (có dây)','Không dây - có dây',NULL,'Không','Over-ear',NULL,NULL,NULL,'Razer Barracuda X Mercury',NULL,NULL,NULL,'Tai nghe: 20 Hz – 20000 Hz',NULL,'32 ohm (1 kHz)','Có thể tháo rời','Có'),(47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,34,NULL,NULL,NULL,NULL,NULL,'325 g / 0,71 lbs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PC, PlayStation, Nintendo Switch (docked mode)','USB-A',NULL,'Razer Chroma RGB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20 Hz – 20 kHz','Vải truyền nhiệt / Giả da / Bọt hoạt tính','32 Ω (1 kHz)','Cardioid HyperClear có thể tháo rời','Khử tiếng ồn thụ động'),(48,NULL,NULL,NULL,NULL,'Hồng',NULL,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Microphone, đệm tai, souncard USB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HyperX Cloud II Pink',NULL,NULL,NULL,'15Hz - 25kHz',NULL,'60 Ohm',NULL,NULL);
/*!40000 ALTER TABLE `product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image_detail`
--

DROP TABLE IF EXISTS `product_image_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image_detail` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ProductCodeID` int NOT NULL,
  `ProductIMG` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image_detail`
--

LOCK TABLES `product_image_detail` WRITE;
/*!40000 ALTER TABLE `product_image_detail` DISABLE KEYS */;
INSERT INTO `product_image_detail` VALUES (1,1,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-bravo-15-b5dd-276vn-2_ef189cf553a144bbb580dddd72da3813.jpg'),(2,1,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-bravo-15-b5dd-276vn-4_8b4749cfb07747cc890896c23b8f9872.jpg'),(3,1,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-bravo-15-b5dd-276vn-5_bc5418ca2d9f499895ddd4f20a563fa6.jpg'),(4,1,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-bravo-15-b5dd-276vn-6_34df6da66ff94b9f84f94506bf38a6cb.jpg'),(5,1,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-bravo-15-b5dd-276vn-7_80030d99a0d74c298d893114ddadf24a.jpg'),(6,1,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-bravo-15-b5dd-276vn-3_575bda1f45b048ee98cf1ee979253425.jpg'),(7,1,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-bravo-15-b5dd-276vn-1_fc4da8f8da5e4c199870fe71648795d9.jpg'),(8,2,'https://product.hstatic.net/1000026716/product/product_1619086146fdfbc8b34331ebecbf18cb444480b7d1_ac2062f64fe84910a66f33a40a7f03b2.png'),(9,2,'https://product.hstatic.net/1000026716/product/product_16190861469007aa60a55cdc297bde58a6699d7e08_2344e27569ad4e1aa52cd9c043771fd0.png'),(10,2,'https://product.hstatic.net/1000026716/product/product_1642732042c897f32506d2e431e70668e2c03f8033_c701c10cd4514ebdb5c2db02888ef9df.png'),(11,2,'https://product.hstatic.net/1000026716/product/product_16190861484daa60abbbc63e2761389411ce5f9f7e_811f990fd11641a3a8f9a99dd0c78cec.png'),(12,2,'https://product.hstatic.net/1000026716/product/product_161908614353c472d329dc327c1a0b4492f2adaf75_d91c7e5a664a4ba3bd2044ce14313b61.png'),(13,3,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-pulse-gl76-11uek-437vn-2_8c6f70f5868140b08946b83f99e8fd16.png'),(14,3,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-pulse-gl76-11uek-437vn-3_bd289c73e29147b9b5562aa6753082f8.png'),(15,3,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-pulse-gl76-11uek-437vn-4_a0a7b2c6989d4f87ba9c8bd2dc014c09.png'),(16,3,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-pulse-gl76-11uek-437vn-5_09d221768af04303a2acc23e23da0f6c.png'),(17,3,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-pulse-gl76-11uek-437vn-6_58060f1bd21147c1aa4ebba9cf7e9f5c.png'),(18,3,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-pulse-gl76-11uek-437vn-7_46e1515e4f974747bded4d9fa82f7e9a.png'),(19,4,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge66-12ugs-463vn-2_1453d29f45c940cf92f94b8bea0bdd5d.png'),(20,4,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge66-12ugs-463vn-3_cac492a5c9114d2396ae3e92f3a2c6ba.png'),(21,4,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge66-12ugs-463vn-4_96fdf92ce1474e1884cd55f5589ad9d3.png'),(22,4,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge66-12ugs-463vn-5_ff36ea42e3eb4d9791c373be1c69ba5b.png'),(23,4,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge66-12ugs-463vn-6_cf8f518ab6e7434eb1e77537275c4175.png'),(24,4,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge66-12ugs-463vn-7_8f109b20f5604b41b4d22db87378fd47.png'),(25,4,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge66-12ugs-463vn-8_f0b818323c0447f1a7cd7d2ee135d91b.png'),(26,4,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge66-12ugs-463vn-9_4a4a970d6cf94e1ba23c9018363354d7.png'),(27,4,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge66-12ugs-463vn-10_b123a79d721346b48c811d7377a03b55.png'),(28,5,'https://product.hstatic.net/1000026716/product/laptop-gaming-msi-stealth-gs77-12uhs-250vn-1_f5e13244bc084e2b846ee3d6c41c0908.jpg'),(29,5,'https://product.hstatic.net/1000026716/product/laptop-gaming-msi-stealth-gs77-12uhs-250vn-2_9b16f1472ec942e7b3ca7053c6948de8.jpg'),(30,5,'https://product.hstatic.net/1000026716/product/laptop-gaming-msi-stealth-gs77-12uhs-250vn-3_ecedc316b73341039b1422f90dc94813.jpg'),(31,5,'https://product.hstatic.net/1000026716/product/laptop-gaming-msi-stealth-gs77-12uhs-250vn-4_ccd038e774454f939d6695c6fb6ef6e2.jpg'),(32,5,'https://product.hstatic.net/1000026716/product/laptop-gaming-msi-stealth-gs77-12uhs-250vn-5_b7dbbefb1927467d927220e989e29482.jpg'),(33,6,'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-2_9d1e826c726f41dfa69a3f4abd242b50.png'),(34,6,'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-3_e552331857e349639fbd1791639d35a1.png'),(35,6,'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-4_4459cbdb57994a4f8e2a63a72b879e30.png'),(36,6,'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-5_0344488331ad426b8e6ec119341931e5.png'),(37,6,'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-6_8a9b884c6c36428da012a5bcce19c15b.png'),(38,6,'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-7_b0aca297f65c4dc1b85d7411ae0b2474.png'),(39,6,'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-8_6fc7082449604ad19e8d4b069a73177f.png'),(40,6,'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-9_0d4b810fc122492ca862b6cf9f1f566d.png'),(41,7,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-7-16iax7-82td008fvn-2_18122619ab264332975163d84c30cfec.png'),(42,7,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-7-16iax7-82td008fvn-3_2cb43f328bf94f61b18b87c9109b4072.png'),(43,7,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-7-16iax7-82td008fvn-4_96e84d97b5564176a8f887f20ac3b758.png'),(44,7,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-7-16iax7-82td008fvn-5_d0a3ee9b2650411bbd49cb4637943cd2.png'),(45,7,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-7-16iax7-82td008fvn-6_aa28a7a083584bdcb100f72c7d76df2d.png'),(46,7,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-7-16iax7-82td008fvn-7_941c282d84c142379c0ac9b15c984105.png'),(47,7,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-7-16iax7-82td008fvn-8_f3883229ecd2490fb1a48bb2ed9d269e.png'),(48,7,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-7-16iax7-82td008fvn-9_5b4e8c8f00b94fb1b97ea942256d33ae.png'),(49,8,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2020/10/10/S20%20FE%20-%20Mint%20%20(1).png'),(50,8,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2020/10/10/S20%20FE%20-%20Mint%20%20(2).png'),(51,8,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/04/30/image-removebg-preview-11.png'),(52,9,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview_637800437459949020.png'),(53,9,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-6.png'),(54,9,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-2_637800437459793078.png'),(55,9,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-1_637800437459636500.png'),(56,9,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-3_637800437459636500.png'),(57,9,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-4.png'),(58,9,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-5.png'),(59,10,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-6_637800452287772364.png'),(60,10,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-7_637800452287772364.png'),(61,10,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-10.png'),(62,10,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-9.png'),(63,10,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/09/image-removebg-preview-19.png'),(64,11,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/08/11/screenshot-2022-08-11-091933-removebg-preview.png'),(65,11,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/08/11/screenshot-2022-08-11-091958-removebg-preview.png'),(66,11,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/08/16/image-removebg-preview-49.png'),(67,12,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/08/11/screenshot-2022-08-11-090429-removebg-preview.png'),(68,12,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/08/11/screenshot-2022-08-11-090402-removebg-preview.png'),(69,12,'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/08/11/screenshot-2022-08-11-090237-removebg-preview.png'),(70,12,'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/08/11/image-removebg-preview-16.png'),(71,13,'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/09/08/222222.png'),(72,13,'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/09/08/44444.png'),(73,13,'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/09/08/1111.png'),(74,13,'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/09/08/33333.png'),(75,14,'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/09/15/image-removebg-preview-17.png'),(76,14,'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/09/15/image-removebg-preview-18.png'),(77,14,'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/09/15/image-removebg-preview-16.png'),(78,14,'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/09/15/image-removebg-preview-15.png'),(79,14,'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/03/09/image-removebg-preview-3.png'),(80,15,'https://product.hstatic.net/1000026716/product/thumbphim_c89f6d836d1844afadb2b4cb6ec33bf8.png'),(81,15,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-logitech-mechanical-gaming-g413-tkl-se-1_0269776db50c4f80ad5f18a4cae26389.jpg'),(82,15,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-logitech-mechanical-gaming-g413-tkl-se-2_16deeeba50374ad28070721366f8f688.jpg'),(83,15,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-logitech-mechanical-gaming-g413-tkl-se-3_4b3579cb52e647ec94ea24f9c88ad55b.jpg'),(84,15,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-logitech-mechanical-gaming-g413-tkl-se-4_5abae2659010413f9070db040b94a587.jpg'),(85,16,'https://product.hstatic.net/1000026716/product/thumbphim_f3885b3f5138471a957514abaece8391.png'),(86,16,'https://product.hstatic.net/1000026716/product/g512_dc52fc5b20ff4e2e84549c7e3f975282.jpg'),(87,16,'https://product.hstatic.net/1000026716/product/blue-clicky-switch-full-size-3_0bedd37553254d1bbc36f390ec562a16_grande_8998b9ec108746d895d17059f2a3b57c.jpg'),(88,16,'https://product.hstatic.net/1000026716/product/blue-clicky-switch-full-size-2_bd94ff3a617f4c958e65e67d04852d5e_grande_99ecdbda8b7444759bea09c41e0d85eb.jpg'),(89,17,'https://product.hstatic.net/1000026716/product/thumbphim_9fb12e4f19d94b31aeb8cc81546d86df.png'),(90,17,'https://product.hstatic.net/1000026716/product/gearvn-logitech-g-pro-01_grande_694ea6b132e748cd9124d27ddc2ff82e.jpg'),(91,17,'https://product.hstatic.net/1000026716/product/gearvn-logitech-g-pro-2_grande_f778c33e4fe243b68ec57873d7be2c07.jpg'),(92,17,'https://product.hstatic.net/1000026716/product/gearvn-logitech-g-pro-4_grande_4431b989bcf94f918e4d98f812e5c8a3.jpg'),(93,17,'https://product.hstatic.net/1000026716/product/gearvn-logitech-g-pro-5_grande_825798d106274f5abef51edf13d573d2.jpg'),(94,17,'https://product.hstatic.net/1000026716/product/gearvn-logitech-g-pro-3_grande_5acae0dae8264660ad9c768df0310327.jpg'),(95,18,'https://product.hstatic.net/1000026716/product/g715-gallery-2_7af4effd78704121b18c73e248e8c837.png'),(96,18,'https://product.hstatic.net/1000026716/product/g715-gallery-1_3fc1767b4f5e4e14b60365d8b5884a5d.png'),(97,19,'https://product.hstatic.net/1000026716/product/thumbphim_bb230a127d4b4f9a96749383e2a90e34.png'),(98,19,'https://product.hstatic.net/1000026716/product/phim1_609109fb36a7494a8ee828509bc8968c.png'),(99,19,'https://product.hstatic.net/1000026716/product/phim5_72b73b3008b74156b5e211c0ad1c18d5.png'),(100,19,'https://product.hstatic.net/1000026716/product/image-removebg-preview__2__208e62f9612d49db8415bebd76dcda0e.png'),(101,19,'https://product.hstatic.net/1000026716/product/phim4_26c45ac2c4c7409f931a81145fd13234.png'),(102,19,'https://product.hstatic.net/1000026716/product/phim2_5d3b475ff4984b2db23439fb4a5604f5.png'),(103,20,'https://product.hstatic.net/1000026716/product/thumbphim_debdc124120a402cb74899dfda6c1bc1.png'),(104,20,'https://product.hstatic.net/1000026716/product/gearvn_logitechg213_5_c33273e553d3448bbec26c521965d89b.png'),(105,20,'https://product.hstatic.net/1000026716/product/gearvn_logitechg213_1_1ff6eea0b1264c499a1f4dc169619ed5.jpg'),(106,20,'https://product.hstatic.net/1000026716/product/gearvn_logitechg213_2_f82681574ed94578aaf4b79502f94048.jpg'),(107,20,'https://product.hstatic.net/1000026716/product/gearvn_logitechg213_6_c33b40e010e14d89bd38c35b7836b4d0.png'),(108,21,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-bluetooth-logitech-k380-blue-1_332dc1223afa4390a0480c44b0ac1560.jpg'),(109,21,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-bluetooth-logitech-k380-blue-2_ade9b9f40e7a46dcaf011eb66797f3dd.jpg'),(110,21,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-bluetooth-logitech-k380-blue-3_ae54a7f8b70744d6961d512e3c684b57.jpg'),(111,21,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-bluetooth-logitech-k380-blue-4_cfaa9225f18d41e7a6b908f11df95bd8.png'),(112,21,'https://product.hstatic.net/1000026716/product/gearvn-ban-phim-bluetooth-logitech-k380-blue-5_664e361e675d471393aba9ff1bc15c00.png'),(113,22,'https://product.hstatic.net/1000026716/product/rggfdgfgf_4d09a2d44ff148879607045b179faa88.png'),(114,22,'https://product.hstatic.net/1000026716/product/tttttt_a3febd70c7f74160abf2441546d1a8c0.png'),(115,22,'https://product.hstatic.net/1000026716/product/yuyuyuyuyu_ca4f8c3b29194d0b9c883690ba108d50.png'),(116,23,'https://product.hstatic.net/1000026716/product/565656_22914bb589c146e599cb381f2c75b557.png'),(117,23,'https://product.hstatic.net/1000026716/product/fghfghjgfhfg_d0640724df5040709cba326097f94789.png'),(118,23,'https://product.hstatic.net/1000026716/product/untitled-1_72f284baa15e4ba6824a83ae5ac00608.png'),(119,24,'https://product.hstatic.net/1000026716/product/gearvn-chuot-razer-basilisk-v3-1_b47a39920b774761bc240b1613eac945.jpg'),(120,24,'https://product.hstatic.net/1000026716/product/gearvn-chuot-razer-basilisk-v3-2_4496e5e64a3d4625b653c0704753b015.jpg'),(121,24,'https://product.hstatic.net/1000026716/product/gearvn-chuot-razer-basilisk-v3-3_df81f3cc7da44791a60f4ef865a9b736.jpg'),(122,24,'https://product.hstatic.net/1000026716/product/gearvn-chuot-razer-basilisk-v3-4_a2497df5e5fa471f8954d8bce7c11b37.jpg'),(123,24,'https://product.hstatic.net/1000026716/product/gearvn-chuot-razer-basilisk-v3-5_23924c8a9cb24a8eabd8ac3cb2df79db.jpg'),(124,25,'https://product.hstatic.net/1000026716/product/1_572f2bc7338449078637140d487f2ed8.png'),(125,25,'https://product.hstatic.net/1000026716/product/3_8feacad6db9b436cb1679d17674df4b1.png'),(126,25,'https://product.hstatic.net/1000026716/product/thumbchuot_c6fb33174cc548f9ba3ff638444de644.png'),(127,25,'https://product.hstatic.net/1000026716/product/2_92b2abc3a7cf45e0b2a065142ea3fc5e.png'),(128,25,'https://product.hstatic.net/1000026716/product/4_10f15e4768e6498ab9f11f5394ff376c.png'),(129,26,'https://product.hstatic.net/1000026716/product/718rcib-3sl._sl1500__3a1401c490184db78902a27e1e5d94e1.jpg'),(130,26,'https://product.hstatic.net/1000026716/product/71gjgplhtkl._sl1500__9932a35b59504e7bb235fcc51e172179.jpg'),(131,26,'https://product.hstatic.net/1000026716/product/71hpjuuw7ll._sl1500__a7dbdd7bf1694ea0b5aaf6087db7f7d0.jpg'),(132,26,'https://product.hstatic.net/1000026716/product/71sx-98jqbl._sl1500__68faad0868674269bf971a9dad3498fa.jpg'),(133,26,'https://product.hstatic.net/1000026716/product/71uckxuebil._sl1500__4596f45e2aff45039ec44663a1aef4e2.jpg'),(134,26,'https://product.hstatic.net/1000026716/product/71ux9o4xktl._sl1500__a3595ca03adf423ab1bdb76cc04ed69f.jpg'),(135,27,'https://product.hstatic.net/1000026716/product/g502x-corded-gallery-1-white_d7fc0437d0fc436ba97c48ed06840680.png'),(136,27,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-white-1_ac902c7f65844d7b99933e35561cf680.jpg'),(137,27,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-white-2_25914b7ad23148438187224409796ee3.jpg'),(138,27,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-white-3_c9fbd49c66bc4d79908283d6367389fa.jpg'),(139,27,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-white-4_98a36f10be134ae79ed4afc6e72bac52.jpg'),(140,27,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-white-5_68a0e05d4a4744819e55bd026d55c174.jpg'),(141,27,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-white-6_a2d4ee2d8c244d93beac3d68a00d3d89.jpg'),(142,27,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-white-7_9b3cd90de4614e5687d220d6a152bc28.jpg'),(143,28,'https://product.hstatic.net/1000026716/product/g502x-plus-gallery-2-black_1db5bbb43d2f443ea2eaf758a6f97e77.png'),(144,28,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-plus-lightspeed-black-1_26668b3e1dd648deaa4e2b1cc34d563c.jpg'),(145,28,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-plus-lightspeed-black-2_d55fc115aec14c00a48cc59ae28b5e35.jpg'),(146,28,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-plus-lightspeed-black-3_d52ac757c55041ef9598a2587dde31dd.jpg'),(147,28,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-plus-lightspeed-black-4_26bb95de9dbc42338e47b573860589a3.jpg'),(148,28,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-plus-lightspeed-black-5_a569339dbfbe40a69727bcd7ba07c7e2.jpg'),(149,28,'https://product.hstatic.net/1000026716/product/gearvn-chuot-logitech-g502-x-plus-lightspeed-black-6_adefc2b078fd40a4a3ad1bea8ceb45b9.jpg'),(150,29,'https://product.hstatic.net/1000026716/product/tai-nghe-gaming-logitech-g-pro-gen-2-1_d20d0ae9b42e4c13803cb2c9936b2096.png'),(151,30,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g733-lightspeed-wireless-white-66666_142abc4187744aa7b7fe009d7486696c.png'),(152,30,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g733-lightspeed-wireless-white-11_b76d45f28f904783b17c794a8bbdcdca.jpg'),(153,30,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g733-lightspeed-wireless-white-22_84e4867eb34b4dda8aee0283eeea541a.jpg'),(154,31,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g-pro-x-league-of-legends-1_08089aaa82c24a4e8c129455be552215.jpg'),(155,31,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g-pro-x-league-of-legends-2_63091fb0cbe843b2b7747f1aa2da74a2.jpg'),(156,31,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g-pro-x-league-of-legends-3_d2e45db58db84c0fb41f25c7a3aa53b9.jpg'),(157,31,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g-pro-x-league-of-legends-4_03d2b5f77976423ca4b363e71e2d6329.jpg'),(158,31,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-logitech-g-pro-x-league-of-legends-5_05ce197c877f4006aaec2f20cdda7cec.jpg'),(159,32,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-razer-kraken-bt-kitty-edition-quartz-12_fd28b1e9d49f4d98a86cc4eb81cfaf75.png'),(160,32,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-razer-kraken-bt-kitty-edition-quartz-11_0b4ba0e78514487d9ab21cd9d230aa87.png'),(161,32,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-razer-kraken-bt-kitty-edition-quartz-12_fd28b1e9d49f4d98a86cc4eb81cfaf75.png'),(162,32,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-razer-kraken-bt-kitty-edition-quartz-13_e1183e3557f74a7684840a2382aee478.png'),(163,33,'https://product.hstatic.net/1000026716/product/barracuda-x-mercury_a9c7d0d7aee64369bd179f7539f58354.png'),(164,33,'https://product.hstatic.net/1000026716/product/tai-nghe-khong-day-razer-barracuda-x-mercury-3_476c1ffca3634f05a5910dfb97c0e10d.jpg'),(165,33,'https://product.hstatic.net/1000026716/product/tai-nghe-khong-day-razer-barracuda-x-mercury-2_4d10ce45892e4dc79811e9e451bcbc3b.jpg'),(166,33,'https://product.hstatic.net/1000026716/product/tai-nghe-khong-day-razer-barracuda-x-mercury-1_f91d4d14d0a64d3bbce2750d05f8510e.jpg'),(167,34,'https://product.hstatic.net/1000026716/product/kraken_a19ced5c8cb34a869ee129df46ceca84.jpg'),(168,34,'https://product.hstatic.net/1000026716/product/ix-images-container_h0a_h5b_9248879411230_211021-kraken-v3-1500x1000-1_332b61d7078241c696c6de281a26d271.jpg'),(169,34,'https://product.hstatic.net/1000026716/product/ix-images-container_h5f_h5e_9248879509534_211021-kraken-v3-1500x1000-2_cdcfe7151853464cbf6facef2bec736b.jpg'),(170,34,'https://product.hstatic.net/1000026716/product/ix-images-container_ha2_h57_9248879312926_211021-kraken-v3-1500x1000-3_2e7a19371628420b9f13b04c05f60b13.jpg'),(171,34,'https://product.hstatic.net/1000026716/product/ix-images-container_hf9_h57_9248879345694_211021-kraken-v3-1500x1000-4_d18101d0ba6d4b5bbb71952ee0ea093e.jpg'),(172,35,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-hyperx-cloud-ii-pink-1_64eacb00caa5481088b173c6063fb526.png'),(173,35,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-hyperx-cloud-ii-pink-2_11ff33d89e034a7d941cf0bdc719cb3c.png'),(174,35,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-hyperx-cloud-ii-pink-3_c59273d184154e2fb297a6c9465199f6.png'),(175,35,'https://product.hstatic.net/1000026716/product/gearvn-tai-nghe-hyperx-cloud-ii-pink-4_d0563304812142ef894e90b2fa240d28.png');
/*!40000 ALTER TABLE `product_image_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 18:36:54
