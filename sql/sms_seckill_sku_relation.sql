-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 121.36.229.15    Database: gulimall_sms
-- ------------------------------------------------------
-- Server version	5.7.37

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
-- Table structure for table `sms_seckill_sku_relation`
--

DROP TABLE IF EXISTS `sms_seckill_sku_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_seckill_sku_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `promotion_id` bigint(20) DEFAULT NULL COMMENT '活动id',
  `promotion_session_id` bigint(20) DEFAULT NULL COMMENT '活动场次id',
  `sku_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `seckill_price` decimal(10,0) DEFAULT NULL COMMENT '秒杀价格',
  `seckill_count` decimal(10,0) DEFAULT NULL COMMENT '秒杀总量',
  `seckill_limit` decimal(10,0) DEFAULT NULL COMMENT '每人限购数量',
  `seckill_sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='秒杀活动商品关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_seckill_sku_relation`
--

LOCK TABLES `sms_seckill_sku_relation` WRITE;
/*!40000 ALTER TABLE `sms_seckill_sku_relation` DISABLE KEYS */;
INSERT INTO `sms_seckill_sku_relation` VALUES (1,1,1,14,3999,50,2,NULL),(2,2,2,15,3999,50,2,NULL),(3,NULL,1,17,3999,50,1,1),(4,NULL,3,18,3999,100,1,NULL),(5,NULL,4,19,4999,10,1,NULL),(6,NULL,4,15,3999,30,1,NULL),(7,NULL,4,17,4999,50,1,NULL);
/*!40000 ALTER TABLE `sms_seckill_sku_relation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-11  0:57:44
