-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sunshine_orchards
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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `MiddleName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=1126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (101,'10001','2','276','11/9/2023','0'),(102,'10014','2','99','10/4/2023','2'),(103,'10005','1','180','9/23/2023','0'),(104,'10011','3','220','8/26/2023','0'),(105,'10002','2','198','10/23/2023','1'),(106,'10012','1','81','8/28/2023','2'),(107,'10006','3','167','7/18/2023','1'),(108,'10007','3','98','7/15/2023','2'),(109,'10003','1','139','6/28/2023','1'),(110,'10004','1','192','9/7/2023','0'),(111,'10009','3','197','8/3/2023','0'),(113,'10010','3','172','7/28/2023','1'),(1110,'Scarlett','Emily','Porter','707 Pine St','555-876-5432'),(1111,'Elijah','Matthew','Cooper','123 Willow St','555-345-6789'),(1112,'Sophia','Grace','Ward','456 Oakwood Ave','555-789-0123'),(1113,'Ethan','Alexander','Hughes','789 Cedar Rd','555-234-5678'),(1114,'Ava','Rose','Griffin','101 Pine St','555-876-5432'),(1115,'Jackson','Michael','Clark','202 Birch Ave','555-123-4567'),(1116,'Avery','Olivia','Morris','303 Elmwood Rd','555-567-8901'),(1117,'Logan','Daniel','Fisher','404 Oak St','555-678-9012'),(1118,'Aria','Lily','Ramirez','505 Cedar Ave','555-987-6543'),(1119,'Caleb','Joseph','Mendoza','606 Maple Rd','555-456-7890'),(1120,'Scarlett','Emily','Porter','707 Pine St','555-876-5432'),(1121,'Lucas','Christopher','Watkins','808 Birch Ave','555-345-6789'),(1122,'Aria','Jane','Barnes','909 Elm Rd','555-789-0123'),(1123,'Grayson','William','Russell','111 Willow St','555-234-5678'),(1124,'Amelia','Sofia','Dixon','222 Oakwood Ave','555-567-8901'),(1125,'Lincoln','James','Burke','333 Cedar Rd','555-876-5432');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipmentfacility`
--

DROP TABLE IF EXISTS `equipmentfacility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipmentfacility` (
  `FacilityID` int NOT NULL AUTO_INCREMENT,
  `UsageStatus` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Storage_Capacity` varchar(255) DEFAULT NULL,
  `PickUp_efficiency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FacilityID`)
) ENGINE=InnoDB AUTO_INCREMENT=1151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmentfacility`
--

LOCK TABLES `equipmentfacility` WRITE;
/*!40000 ALTER TABLE `equipmentfacility` DISABLE KEYS */;
INSERT INTO `equipmentfacility` VALUES (1010,'Active','Storage','5000','NA'),(1020,'Inactive','Storage','8000','NA'),(1030,'Active','Pickup','NA','200'),(1040,'Active','Pickup','NA','150'),(1050,'Inactive','Storage','6000','NA'),(1060,'Active','Storage','4500','NA'),(1070,'Inactive','Pickup','NA','180'),(1080,'Active','Storage','7000','NA'),(1090,'Inactive','Pickup','NA','220'),(1100,'Active','Pickup','NA','170'),(1110,'Inactive','Storage','5500','NA'),(1120,'Active','Pickup','NA','190'),(1130,'Active','Storage','6500','NA'),(1140,'Inactive','Storage','7500','NA'),(1150,'Active','Storage','4800','NA');
/*!40000 ALTER TABLE `equipmentfacility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmworker`
--

DROP TABLE IF EXISTS `farmworker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmworker` (
  `WorkerID` int NOT NULL,
  `FirstName` text,
  `MiddleName` text,
  `LastName` text,
  `Position` int DEFAULT NULL,
  `WorkingLocation` int DEFAULT NULL,
  `StartDate` text,
  PRIMARY KEY (`WorkerID`),
  CONSTRAINT `worderid` FOREIGN KEY (`WorkerID`) REFERENCES `harvestrecord` (`HarvesterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmworker`
--

LOCK TABLES `farmworker` WRITE;
/*!40000 ALTER TABLE `farmworker` DISABLE KEYS */;
INSERT INTO `farmworker` VALUES (1001,'Alice','Marie','Johnson',1,2,'5/30/2023'),(1101,'Katherine','Louise','Robinson',2,4,'5/2/2023'),(1201,'Liam','Christopher','Lee',2,3,'6/30/2023'),(1301,'Mia','Nicole','Martinez',2,1,'4/24/2023'),(1401,'Nathan','Andrew','Turner',2,4,'5/29/2023'),(1501,'Olivia','Grace','Carter',2,4,'9/1/2023'),(1601,'James','Patrick','White',2,2,'7/3/2023'),(2001,'Benjamin','Michael','Davis',1,3,'8/2/2023'),(3001,'Catherine','Elizabeth','Anderson',1,2,'4/1/2023'),(4001,'David','Alexander','Smith',1,1,'4/5/2023'),(5001,'Eva','Grace','Thompson',1,4,'6/3/2023'),(6001,'Frank','William','Wilson',1,2,'3/23/2023'),(7001,'Gabrielle','Rose','Brown',1,3,'5/8/2023'),(8001,'Henry','Thomas','Miller',1,1,'5/28/2023'),(9001,'Isabella','Anne','Garcia',2,3,'8/7/2023');
/*!40000 ALTER TABLE `farmworker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruit`
--

DROP TABLE IF EXISTS `fruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fruit` (
  `FruitID` int NOT NULL,
  `TreeID` int DEFAULT NULL,
  `Type` int DEFAULT NULL,
  `Weight` int DEFAULT NULL,
  `HarvestDate` varchar(50) DEFAULT NULL,
  `HasDefect` int DEFAULT NULL,
  PRIMARY KEY (`FruitID`),
  KEY `harvestdate_idx` (`HarvestDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruit`
--

LOCK TABLES `fruit` WRITE;
/*!40000 ALTER TABLE `fruit` DISABLE KEYS */;
INSERT INTO `fruit` VALUES (10001,101,2,276,'2023/10/14',0),(10002,105,2,198,'2023/10/8',1),(10003,109,1,139,'2023/10/13',1),(10004,110,1,192,'2023/10/7',0),(10005,103,1,180,'2023/10/5',0),(10006,107,3,167,'2023/10/11',1),(10007,108,3,98,'2023/10/2',2),(10008,101,2,294,'2023/10/6',0),(10009,111,3,197,'2023/10/12',0),(10010,113,3,172,'2023/10/15',1),(10011,104,3,220,'2023/10/9',0),(10012,106,1,81,'2023/10/3',2),(10013,109,1,130,'2023/10/1',1),(10014,102,2,99,'2023/10/10',2),(10015,104,3,208,'2023/10/4',0);
/*!40000 ALTER TABLE `fruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruit tree`
--

DROP TABLE IF EXISTS `fruit tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fruit tree` (
  `TreeID` int NOT NULL,
  `Type` int DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Location` int DEFAULT NULL,
  `Period` int DEFAULT NULL,
  `LastPruningDate` text,
  PRIMARY KEY (`TreeID`),
  KEY `location_idx` (`Location`),
  KEY `location_idx_2` (`Location`),
  KEY `period` (`Period`),
  KEY `treeid_idx` (`TreeID`),
  CONSTRAINT `location` FOREIGN KEY (`Location`) REFERENCES `grownlocation` (`LocationID`),
  CONSTRAINT `period` FOREIGN KEY (`Period`) REFERENCES `weatherconditions` (`Period`),
  CONSTRAINT `treeid` FOREIGN KEY (`TreeID`) REFERENCES `fruit tree` (`TreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruit tree`
--

LOCK TABLES `fruit tree` WRITE;
/*!40000 ALTER TABLE `fruit tree` DISABLE KEYS */;
INSERT INTO `fruit tree` VALUES (101,2,6,3,4,'10/10/2023'),(102,2,7,2,2,'9/29/2023'),(103,1,3,1,1,'11/2/2023'),(104,3,10,4,3,'11/23/2023'),(105,2,11,1,4,'10/31/2023'),(106,1,3,4,2,'9/29/2023'),(107,3,12,3,1,'11/2/2023'),(108,3,14,1,3,'12/1/2023'),(109,1,4,3,4,'11/23/2023'),(110,1,5,1,2,'10/31/2023'),(111,3,12,4,1,'10/11/2023'),(112,2,15,4,3,'10/10/2023'),(113,3,15,2,4,'10/17/2023'),(114,2,9,3,2,'11/4/2023'),(115,2,10,1,1,'11/19/2023');
/*!40000 ALTER TABLE `fruit tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grownlocation`
--

DROP TABLE IF EXISTS `grownlocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grownlocation` (
  `LocationID` int DEFAULT NULL,
  `Name` text,
  `Address` text,
  `Area` text,
  `Altitude` text,
  KEY `location_id_idx` (`LocationID`),
  KEY `location_id_idx_2` (`LocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grownlocation`
--

LOCK TABLES `grownlocation` WRITE;
/*!40000 ALTER TABLE `grownlocation` DISABLE KEYS */;
INSERT INTO `grownlocation` VALUES (2,'Ochs Orchard','4 Ochs Ln, Warwick, NY 10990','150 Acres','41\'14\'04.5\"N'),(4,'Prospect Hill Orchards','340 Milton Turnpike, Milton, NY 12547','15 Acres','41\'40\'01.5\"N'),(3,'Villa Del Sol Sweet Cherry Farms','6989 Elizabeth Lake Rd, Leona Valley, CA 93551','25 Acres','34\'36\'26.1\"N'),(1,'Tanaka Farm','5380 3/4 University Dr, Irvine, CA 92612','30 Acres','33\'65\'59.6\'\'N');
/*!40000 ALTER TABLE `grownlocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `harvestrecord`
--

DROP TABLE IF EXISTS `harvestrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `harvestrecord` (
  `RecordID` int DEFAULT NULL,
  `HarvestDate` varchar(50) DEFAULT NULL,
  `HarvestAmount/unit` int DEFAULT NULL,
  `HarvesterID` int DEFAULT NULL,
  `IsQualityApproved` int DEFAULT NULL,
  `PickupID` int DEFAULT NULL,
  `StorageID` int DEFAULT NULL,
  `OrderID` int DEFAULT NULL,
  KEY `harvesterid_idx` (`HarvesterID`),
  KEY `orderid_idx` (`OrderID`),
  KEY `pickupid_idx` (`PickupID`),
  KEY `harvestdate_idx` (`HarvestDate`),
  CONSTRAINT `harvestdate` FOREIGN KEY (`HarvestDate`) REFERENCES `fruit` (`HarvestDate`),
  CONSTRAINT `orderid` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harvestrecord`
--

LOCK TABLES `harvestrecord` WRITE;
/*!40000 ALTER TABLE `harvestrecord` DISABLE KEYS */;
INSERT INTO `harvestrecord` VALUES (201,'2023/10/14',100,4001,1,1040,1110,8),(202,'2023/10/8',75,1201,1,1090,1080,2),(203,'2023/10/13',120,6001,1,1100,1050,12),(204,'2023/10/7',90,8001,1,1070,1140,5),(205,'2023/10/5',110,1101,2,1120,1020,15),(206,'2023/10/11',80,3001,1,1030,1060,1),(207,'2023/10/2',95,9001,1,1120,1150,6),(208,'2023/10/6',130,1501,2,1040,1130,10),(209,'2023/10/12',70,2001,2,1070,1110,11),(210,'2023/10/15',105,7001,1,1090,1080,4),(211,'2023/10/9',85,1401,1,1030,1050,13),(212,'2023/10/3',115,5001,2,1100,1060,9),(213,'2023/10/1',88,1001,1,1070,1140,7),(214,'2023/10/10',105,1601,2,1120,1150,3),(215,'2023/10/4',92,1301,1,1040,1130,14);
/*!40000 ALTER TABLE `harvestrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `CustomerID` int NOT NULL,
  `OrderID` int NOT NULL,
  `Date` text,
  `TotalAmount` int DEFAULT NULL,
  `OrderStatus` int DEFAULT NULL,
  `Shipment` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `customerID_idx` (`CustomerID`),
  CONSTRAINT `customerID` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1116,1,'11/21/2023',23,1,2),(1112,2,'11/17/2023',56,2,1),(1118,3,'11/27/2023',14,3,3),(1113,4,'11/28/2023',32,1,2),(1119,5,'11/30/2023',72,2,2),(1114,6,'11/19/2023',5,3,3),(1111,7,'11/15/2023',41,1,1),(1117,8,'11/18/2023',60,3,3),(1112,9,'11/23/2023',8,2,1),(1114,10,'11/29/2023',19,1,3),(1115,11,'11/25/2023',68,2,1),(1118,12,'11/26/2023',37,1,3),(1113,13,'11/24/2023',49,3,1),(1111,14,'11/16/2023',11,2,3),(1110,15,'11/22/2023',75,3,3);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `SupplierID` int DEFAULT NULL,
  `Name` text,
  `ContactInfo` text,
  `TreeID` int DEFAULT NULL,
  `StartDate` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (201,'Emma Johnson',' emma.johnson@gmail.com',114,'5/9/2023'),(202,'Daniel Miller',' daniel.miller@email.com',113,'5/5/2023'),(203,'Sophia Brown',' sophia.brown@hotmail.com',111,'5/13/2023'),(204,'Jackson Davis',' jackson.davis@email.com',110,'5/1/2023'),(205,'Olivia Wilson',' olivia.wilson@email.com',105,'5/15/2023'),(206,'Liam Smith',' liam.smith@gmail.com',112,'5/8/2023'),(207,'Ava Robinson',' ava.robinson@email.com',104,'5/3/2023'),(208,'Noah Turner',' noah.turner@gmail.com',115,'5/14/2023'),(209,'Mia Martinez',' mia.martinez@email.com',107,'5/6/2023'),(210,'Ethan White',' ethan.white@outlook.com',101,'5/10/2023'),(211,'Amelia Garcia',' amelia.garcia@email.com',106,'5/11/2023'),(212,'Logan Lee',' logan.lee@gmail.com',109,'5/2/2023'),(213,'Isabella Thompson',' isabella.thompson@email.com',108,'5/7/2023'),(214,'James Carter',' james.carter@gmail.com',103,'5/12/2023'),(215,'Aria Morris',' aria.morris@email.com',102,'5/4/2023');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weatherconditions`
--

DROP TABLE IF EXISTS `weatherconditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weatherconditions` (
  `WeatherStatus` int NOT NULL,
  `Humidity` int DEFAULT NULL,
  `Temperature` int DEFAULT NULL,
  `Date` text,
  `Condition` text,
  `Period` int DEFAULT NULL,
  PRIMARY KEY (`WeatherStatus`),
  KEY `period_idx` (`Period`),
  KEY `period_idx_2` (`Period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weatherconditions`
--

LOCK TABLES `weatherconditions` WRITE;
/*!40000 ALTER TABLE `weatherconditions` DISABLE KEYS */;
INSERT INTO `weatherconditions` VALUES (1,50,80,'7/18/2023','Clear',3),(2,55,80,'5/8/2023','Partly Cloudy',2),(3,70,65,'1/20/2023','Sunny',1),(4,85,55,'12/23/2023','Overcast',4);
/*!40000 ALTER TABLE `weatherconditions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 13:33:49
