-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 121.36.229.15    Database: gulimall_oms
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
-- Table structure for table `oms_order_item`
--

DROP TABLE IF EXISTS `oms_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oms_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` bigint(20) DEFAULT NULL COMMENT 'order_id',
  `order_sn` char(255) DEFAULT NULL COMMENT 'order_sn',
  `spu_id` bigint(20) DEFAULT NULL COMMENT 'spu_id',
  `spu_name` varchar(255) DEFAULT NULL COMMENT 'spu_name',
  `spu_pic` varchar(500) DEFAULT NULL COMMENT 'spu_pic',
  `spu_brand` varchar(200) DEFAULT NULL COMMENT '品牌',
  `category_id` bigint(20) DEFAULT NULL COMMENT '商品分类id',
  `sku_id` bigint(20) DEFAULT NULL COMMENT '商品sku编号',
  `sku_name` varchar(255) DEFAULT NULL COMMENT '商品sku名字',
  `sku_pic` varchar(500) DEFAULT NULL COMMENT '商品sku图片',
  `sku_price` decimal(18,4) DEFAULT NULL COMMENT '商品sku价格',
  `sku_quantity` int(11) DEFAULT NULL COMMENT '商品购买的数量',
  `sku_attrs_vals` varchar(500) DEFAULT NULL COMMENT '商品销售属性组合（JSON）',
  `promotion_amount` decimal(18,4) DEFAULT NULL COMMENT '商品促销分解金额',
  `coupon_amount` decimal(18,4) DEFAULT NULL COMMENT '优惠券优惠分解金额',
  `integration_amount` decimal(18,4) DEFAULT NULL COMMENT '积分优惠分解金额',
  `real_amount` decimal(18,4) DEFAULT NULL COMMENT '该商品经过优惠后的分解金额',
  `gift_integration` int(11) DEFAULT NULL COMMENT '赠送积分',
  `gift_growth` int(11) DEFAULT NULL COMMENT '赠送成长值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COMMENT='订单项信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_item`
--

LOCK TABLES `oms_order_item` WRITE;
/*!40000 ALTER TABLE `oms_order_item` DISABLE KEYS */;
INSERT INTO `oms_order_item` VALUES (22,NULL,'202204011446419541509784298920644610',8,'小米12 Pro',NULL,'3',225,16,'小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+128GB 蓝色 5G手机','https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/64b36598-a4c3-4f04-80fd-6b52c03599cb_34b488b2287de1aa.jpg',4699.0000,1,'选择颜色: 蓝色;选择版本: 8GB+128GB ',0.0000,0.0000,0.0000,4699.0000,4699,4699),(23,NULL,'202204011541283931509798083244888065',8,'小米12 Pro',NULL,'3',225,16,'小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+128GB 蓝色 5G手机','https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/64b36598-a4c3-4f04-80fd-6b52c03599cb_34b488b2287de1aa.jpg',4699.0000,1,'选择颜色: 蓝色;选择版本: 8GB+128GB ',0.0000,0.0000,0.0000,4699.0000,4699,4699),(27,NULL,'202204011814325551509836604408135682',8,'小米12 Pro',NULL,'3',225,17,'小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+256GB 蓝色 5G手机','https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/64b36598-a4c3-4f04-80fd-6b52c03599cb_34b488b2287de1aa.jpg',4999.0000,4,'选择颜色: 蓝色;选择版本: 8GB+256GB',0.0000,0.0000,0.0000,19996.0000,19996,19996),(28,NULL,'202204012110428461509880939426131969',8,'小米12 Pro',NULL,'3',225,17,'小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+256GB 蓝色 5G手机','https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/64b36598-a4c3-4f04-80fd-6b52c03599cb_34b488b2287de1aa.jpg',4999.0000,1,'选择颜色: 蓝色;选择版本: 8GB+256GB',0.0000,0.0000,0.0000,4999.0000,4999,4999),(29,NULL,'202204012138479141509888007113613314',8,'小米12 Pro',NULL,'3',225,14,'小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+128GB 蓝色 5G手机','https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/1254f846-cca8-4105-854e-205168991718_37b24618eccdae2d.jpg',4699.0000,1,'选择颜色: 黑色;选择版本: 8GB+128GB ',0.0000,0.0000,0.0000,4699.0000,4699,4699),(30,NULL,'202204012201134571509893650729955329',8,'小米12 Pro',NULL,'3',225,14,'小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+128GB 蓝色 5G手机','https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/1254f846-cca8-4105-854e-205168991718_37b24618eccdae2d.jpg',4699.0000,1,'选择颜色: 黑色;选择版本: 8GB+128GB ',0.0000,0.0000,0.0000,4699.0000,4699,4699),(31,NULL,'202204012213181261509896690212089857',8,'小米12 Pro',NULL,'3',225,16,'小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+128GB 蓝色 5G手机','https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/64b36598-a4c3-4f04-80fd-6b52c03599cb_34b488b2287de1aa.jpg',4699.0000,2,'选择颜色: 蓝色;选择版本: 8GB+128GB ',0.0000,0.0000,0.0000,9398.0000,9398,9398),(32,NULL,'202204012221033681509898641578434561',8,'小米12 Pro',NULL,'3',225,14,'小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+128GB 蓝色 5G手机','https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/1254f846-cca8-4105-854e-205168991718_37b24618eccdae2d.jpg',4699.0000,1,'选择颜色: 黑色;选择版本: 8GB+128GB ',0.0000,0.0000,0.0000,4699.0000,4699,4699),(33,NULL,'202204062326268041511727036989829121',NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,4999.0000,NULL,NULL),(34,NULL,'202204062330209511511728019073458178',NULL,NULL,NULL,NULL,NULL,19,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,4999.0000,NULL,NULL),(37,NULL,'202204101819597491513099467549642753',8,'小米12 Pro',NULL,'3',225,14,'小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+128GB 蓝色 5G手机','https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/1254f846-cca8-4105-854e-205168991718_37b24618eccdae2d.jpg',4699.0000,1,'选择颜色: 黑色;选择版本: 8GB+128GB ',0.0000,0.0000,0.0000,4699.0000,4699,4699);
/*!40000 ALTER TABLE `oms_order_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-11  1:05:42
