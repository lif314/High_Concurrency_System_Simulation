-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 121.36.229.15    Database: gulimall_pms
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
-- Table structure for table `pms_sku_info`
--

DROP TABLE IF EXISTS `pms_sku_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_sku_info` (
  `sku_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'skuId',
  `spu_id` bigint(20) DEFAULT NULL COMMENT 'spuId',
  `sku_name` varchar(255) DEFAULT NULL COMMENT 'sku名称',
  `sku_desc` varchar(2000) DEFAULT NULL COMMENT 'sku介绍描述',
  `catalog_id` bigint(20) DEFAULT NULL COMMENT '所属分类id',
  `brand_id` bigint(20) DEFAULT NULL COMMENT '品牌id',
  `sku_default_img` varchar(255) DEFAULT NULL COMMENT '默认图片',
  `sku_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `sku_subtitle` varchar(2000) DEFAULT NULL COMMENT '副标题',
  `price` decimal(18,4) DEFAULT NULL COMMENT '价格',
  `sale_count` bigint(20) DEFAULT NULL COMMENT '销量',
  PRIMARY KEY (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COMMENT='sku信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_sku_info`
--

LOCK TABLES `pms_sku_info` WRITE;
/*!40000 ALTER TABLE `pms_sku_info` DISABLE KEYS */;
INSERT INTO `pms_sku_info` VALUES (14,8,'小米12 Pro 黑色 8GB+128GB ',NULL,225,3,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/1254f846-cca8-4105-854e-205168991718_37b24618eccdae2d.jpg','小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+128GB 蓝色 5G手机','全新一代骁龙8移动平台,120W小米澎湃快充,4600mAh大电量,5000万高清主摄万物追焦',4699.0000,0),(15,8,'小米12 Pro 黑色 8GB+256GB',NULL,225,3,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/1254f846-cca8-4105-854e-205168991718_37b24618eccdae2d.jpg','小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+256GB 黑色 5G手机','全新一代骁龙8移动平台,120W小米澎湃快充,4600mAh大电量,5000万高清主摄万物追焦',4999.0000,0),(16,8,'小米12 Pro 蓝色 8GB+128GB ',NULL,225,3,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/64b36598-a4c3-4f04-80fd-6b52c03599cb_34b488b2287de1aa.jpg','小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+128GB 蓝色 5G手机','全新一代骁龙8移动平台,120W小米澎湃快充,4600mAh大电量,5000万高清主摄万物追焦',4699.0000,0),(17,8,'小米12 Pro 蓝色 8GB+256GB',NULL,225,3,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-02-28/64b36598-a4c3-4f04-80fd-6b52c03599cb_34b488b2287de1aa.jpg','小米12 Pro 骁龙8 Gen1 2K AMOLED 120Hz高刷 5000万疾速影像 120W小米澎湃秒充 8GB+256GB 蓝色 5G手机','全新一代骁龙8移动平台,120W小米澎湃快充,4600mAh大电量,5000万高清主摄万物追焦',4999.0000,0),(18,9,'Apple iPhone 13 (A2634) 星光色 128G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/2a81db9f-7dbb-4530-861b-f3f34b7f6b10_c86d359347ae7008.jpg','Apple iPhone 13 (A2634) 星光色 128G 公开版 支持移动联通电信5G 双卡双待手机','Apple iPhone 13 移动联通电信5G 双卡双待手机',5699.0000,0),(19,9,'Apple iPhone 13 (A2634) 星光色 128G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/2a81db9f-7dbb-4530-861b-f3f34b7f6b10_c86d359347ae7008.jpg','Apple iPhone 13 (A2634) 星光色 128G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',5799.0000,0),(20,9,'Apple iPhone 13 (A2634) 星光色 256G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/2a81db9f-7dbb-4530-861b-f3f34b7f6b10_c86d359347ae7008.jpg','Apple iPhone 13 (A2634) 星光色 256G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',6699.0000,0),(21,9,'Apple iPhone 13 (A2634) 星光色 256G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/2a81db9f-7dbb-4530-861b-f3f34b7f6b10_c86d359347ae7008.jpg','Apple iPhone 13 (A2634) 星光色 256G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',6799.0000,0),(22,9,'Apple iPhone 13 (A2634) 星光色 512G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/2a81db9f-7dbb-4530-861b-f3f34b7f6b10_c86d359347ae7008.jpg','Apple iPhone 13 (A2634) 星光色 512G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',7699.0000,0),(23,9,'Apple iPhone 13 (A2634) 星光色 512G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/2a81db9f-7dbb-4530-861b-f3f34b7f6b10_c86d359347ae7008.jpg','Apple iPhone 13 (A2634) 星光色 512G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',7799.0000,0),(24,9,'Apple iPhone 13 (A2634) 午夜色 128G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/9d5580b4-cec2-47bd-8aa3-e4f796082f7a_6699eda01a9871e3.jpg','Apple iPhone 13 (A2634) 午夜色 128G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',5699.0000,0),(25,9,'Apple iPhone 13 (A2634) 午夜色 128G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/9d5580b4-cec2-47bd-8aa3-e4f796082f7a_6699eda01a9871e3.jpg','Apple iPhone 13 (A2634) 午夜色 128G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',5799.0000,0),(26,9,'Apple iPhone 13 (A2634) 午夜色 256G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/9d5580b4-cec2-47bd-8aa3-e4f796082f7a_6699eda01a9871e3.jpg','Apple iPhone 13 (A2634) 午夜色 256G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',6699.0000,0),(27,9,'Apple iPhone 13 (A2634) 午夜色 256G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/9d5580b4-cec2-47bd-8aa3-e4f796082f7a_6699eda01a9871e3.jpg','Apple iPhone 13 (A2634) 午夜色 256G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',6799.0000,0),(28,9,'Apple iPhone 13 (A2634) 午夜色 512G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/9d5580b4-cec2-47bd-8aa3-e4f796082f7a_6699eda01a9871e3.jpg','Apple iPhone 13 (A2634) 午夜色 512G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',7699.0000,0),(29,9,'Apple iPhone 13 (A2634) 午夜色 512G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/9d5580b4-cec2-47bd-8aa3-e4f796082f7a_6699eda01a9871e3.jpg','Apple iPhone 13 (A2634) 午夜色 512G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',7799.0000,0),(30,9,'Apple iPhone 13 (A2634) 粉色 128G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/40ddfe03-33f7-40ae-8018-c3dc8e566e49_3aff6266e8732bdc.jpg','Apple iPhone 13 (A2634) 粉色 128G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',5699.0000,0),(31,9,'Apple iPhone 13 (A2634) 粉色 128G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/40ddfe03-33f7-40ae-8018-c3dc8e566e49_3aff6266e8732bdc.jpg','Apple iPhone 13 (A2634) 粉色 128G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',5799.0000,0),(32,9,'Apple iPhone 13 (A2634) 粉色 256G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/40ddfe03-33f7-40ae-8018-c3dc8e566e49_3aff6266e8732bdc.jpg','Apple iPhone 13 (A2634) 粉色 256G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',6699.0000,0),(33,9,'Apple iPhone 13 (A2634) 粉色 256G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/40ddfe03-33f7-40ae-8018-c3dc8e566e49_3aff6266e8732bdc.jpg','Apple iPhone 13 (A2634) 粉色 256G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',6799.0000,0),(34,9,'Apple iPhone 13 (A2634) 粉色 512G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/40ddfe03-33f7-40ae-8018-c3dc8e566e49_3aff6266e8732bdc.jpg','Apple iPhone 13 (A2634) 粉色 512G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',7699.0000,0),(35,9,'Apple iPhone 13 (A2634) 粉色 512G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/40ddfe03-33f7-40ae-8018-c3dc8e566e49_3aff6266e8732bdc.jpg','Apple iPhone 13 (A2634) 粉色 512G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',7799.0000,0),(36,9,'Apple iPhone 13 (A2634) 红色 128G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/40ddfe03-33f7-40ae-8018-c3dc8e566e49_3aff6266e8732bdc.jpg','Apple iPhone 13 (A2634) 红色 128G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',5699.0000,0),(37,9,'Apple iPhone 13 (A2634) 红色 128G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/579c6e57-2a6c-4e99-8727-967a16573d75_8f344f12ed2f4b0b.jpg','Apple iPhone 13 (A2634) 红色 128G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',5799.0000,0),(38,9,'Apple iPhone 13 (A2634) 红色 256G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/579c6e57-2a6c-4e99-8727-967a16573d75_8f344f12ed2f4b0b.jpg','Apple iPhone 13 (A2634) 红色 256G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',6699.0000,0),(39,9,'Apple iPhone 13 (A2634) 红色 256G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/579c6e57-2a6c-4e99-8727-967a16573d75_8f344f12ed2f4b0b.jpg','Apple iPhone 13 (A2634) 红色 256G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',6799.0000,0),(40,9,'Apple iPhone 13 (A2634) 红色 512G 公开版',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/579c6e57-2a6c-4e99-8727-967a16573d75_8f344f12ed2f4b0b.jpg','Apple iPhone 13 (A2634) 红色 512G 公开版','Apple iPhone 13 移动联通电信5G 双卡双待手机',7699.0000,0),(41,9,'Apple iPhone 13 (A2634) 红色 512G 快充套装',NULL,225,4,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-03-07/579c6e57-2a6c-4e99-8727-967a16573d75_8f344f12ed2f4b0b.jpg','Apple iPhone 13 (A2634) 红色 512G 快充套装','Apple iPhone 13 移动联通电信5G 双卡双待手机',7799.0000,0),(42,10,'OPPO Reno7 红丝绒 8GB+128GB  标准版 8+128GB 红丝绒 新年版 前置索尼IMX709 超感光猫眼镜头 高通骁龙778G 60W超级闪充 5G手机',NULL,225,5,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-04-10/a126a914-2416-43a0-882e-2d59ed163e5e_3dfb1a5ed3b3ead1.jpg','8+128GB 红丝绒 新年版 前置索尼IMX709 超感光猫眼镜头 高通骁龙778G 60W超级闪充 5G手机','8+128GB 红丝绒 新年版 前置索尼IMX709 超感光猫眼镜头 高通骁龙778G 60W超级闪充 5G手机',4999.0000,0),(43,10,'OPPO Reno7 蓝色 8GB+128GB  标准版 8+128GB 红丝绒 新年版 前置索尼IMX709 超感光猫眼镜头 高通骁龙778G 60W超级闪充 5G手机',NULL,225,5,'https://gulimall-lif314.oss-cn-shanghai.aliyuncs.com/2022-04-10/f13182ec-0798-4d3e-8416-db4d49a79035_b8b129fd685119a3.jpg','8+128GB 红丝绒 新年版 前置索尼IMX709 超感光猫眼镜头 高通骁龙778G 60W超级闪充 5G手机','8+128GB 红丝绒 新年版 前置索尼IMX709 超感光猫眼镜头 高通骁龙778G 60W超级闪充 5G手机',5299.0000,0);
/*!40000 ALTER TABLE `pms_sku_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-11  0:59:38
