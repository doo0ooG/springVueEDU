-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: big_event
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(30) NOT NULL COMMENT '文章标题',
  `content` varchar(10000) NOT NULL COMMENT '文章内容',
  `cover_img` varchar(128) NOT NULL COMMENT '文章封面',
  `state` varchar(3) DEFAULT '草稿' COMMENT '文章状态: 只能是[已发布] 或者 [草稿]',
  `category_id` int unsigned DEFAULT NULL COMMENT '文章分类ID',
  `create_user` int unsigned NOT NULL COMMENT '创建人ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `fk_article_category` (`category_id`),
  KEY `fk_article_user` (`create_user`),
  CONSTRAINT `fk_article_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_article_user` FOREIGN KEY (`create_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (3,'原神2','一整周都要玩原身','https://123.png','已发布',1,3,'2023-12-10 00:47:50','2023-12-10 01:13:25'),(4,'原神','一整天都要玩原身','https://123.png','已发布',4,3,'2023-12-10 01:02:20','2023-12-10 01:06:27'),(5,'原神123','123123','https://123.png','已发布',1,3,'2023-12-10 01:18:56','2023-12-10 01:18:56'),(6,'原神1234','123123','https://123.png','已发布',1,3,'2023-12-10 01:18:58','2023-12-10 01:18:58'),(7,'原神12345','123123','https://123.png','已发布',1,3,'2023-12-10 01:18:59','2023-12-10 01:18:59'),(8,'原神123456','123123','https://123.png','已发布',1,3,'2023-12-10 01:19:02','2023-12-10 01:19:02'),(9,'原神1234567','123123','https://123.png','已发布',1,3,'2023-12-10 01:19:03','2023-12-10 01:19:03'),(10,'原神12345678','123123','https://123.png','已发布',1,3,'2023-12-10 01:19:05','2023-12-10 01:19:05'),(11,'原神','<p>原神</p>','https://webstatic.mihoyo.com/upload/op-public/2021/10/09/def1f2abcfc2af0bbe2e5900a60a5ee1_5699547505742166353.png','已发布',14,5,'2023-12-11 19:27:28','2023-12-13 22:35:24'),(12,'原神军事','原神军事内容','https://webstatic.mihoyo.com','已发布',13,5,'2023-12-11 19:28:03','2023-12-11 19:28:03'),(14,'原神游戏','原神游戏开发草稿','https://webstatic.mihoyo.com','草稿',14,5,'2023-12-11 19:28:30','2023-12-11 19:28:30'),(15,'原神旅游计划','原神世界旅游草稿','https://webstatic.mihoyo.com','草稿',12,5,'2023-12-11 19:28:59','2023-12-11 19:28:59'),(17,'新游戏体验','新出的游戏玩起来感觉非常新鲜','https://example.com/image5.jpg','已发布',13,5,'2023-12-11 20:10:21','2023-12-11 20:10:21'),(18,'游戏攻略分享','分享一些游戏中的心得和攻略','https://example.com/image4.jpg','已发布',12,5,'2023-12-11 20:10:26','2023-12-11 20:10:26'),(19,'探索新世界','在游戏中发现了很多奇妙的地方','https://example.com/image3.jpg','已发布',13,5,'2023-12-11 20:10:30','2023-12-11 20:10:30'),(20,'游戏体验分享','最近玩了不少游戏，感觉真是太爽了！','https://example.com/image2.jpg','已发布',14,5,'2023-12-11 20:10:34','2023-12-11 20:10:34'),(21,'米哈游是我爹','<p>原神是我爹，谁不服和哲哥打一架。</p><p>我要玩原身，我要配一台intel e5 2666-v3的cpu， X99寨板，16g三星内存ddr3 1600hz内存，500g机械硬盘，散热不要，开放式机箱的电脑来玩原神。</p>','https://big-event010.oss-cn-beijing.aliyuncs.com/7c6412c8-9a02-43a2-8fa8-31c33c170ae9.png','已发布',10,5,'2023-12-12 00:03:18','2023-12-12 00:03:18'),(22,'R星也是我爹','<p>想不到吧，我也玩原神，你要不要也来玩</p>','https://big-event010.oss-cn-beijing.aliyuncs.com/5304f990-5fdf-4e69-921d-68a4190ed034.jpg','已发布',9,5,'2023-12-12 00:07:19','2023-12-12 00:38:06'),(26,'GTA我的小哑巴','<p>小哑巴证件照</p>','https://big-event010.oss-cn-beijing.aliyuncs.com/da03c5ae-6680-4efc-a201-d5afff0edb4d.png','已发布',10,5,'2023-12-22 00:14:45','2023-12-22 00:14:45');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_name` varchar(32) NOT NULL COMMENT '分类名称',
  `category_alias` varchar(32) NOT NULL COMMENT '分类别名',
  `create_user` int unsigned NOT NULL COMMENT '创建人ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `fk_category_user` (`create_user`),
  CONSTRAINT `fk_category_user` FOREIGN KEY (`create_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'美食','ms',3,'2023-12-09 15:32:15','2023-12-09 15:32:15'),(3,'侠盗猎车手','GTA',3,'2023-12-09 21:26:20','2023-12-09 21:26:20'),(4,'测试用的2','csyd2',3,'2023-12-09 21:44:09','2023-12-09 21:44:09'),(5,'哲哥','zs',3,'2023-12-09 22:10:30','2023-12-09 22:23:12'),(7,'袁出','原神',3,'2023-12-10 21:13:26','2023-12-10 21:13:26'),(8,'哆啦A梦','多伦多方脸',3,'2023-12-11 18:22:48','2023-12-11 18:22:48'),(9,'杜蕾斯超薄','蓝精灵！',5,'2023-12-11 18:23:57','2023-12-11 18:58:22'),(10,'荒野大镖客','games',5,'2023-12-11 18:56:11','2023-12-11 18:56:15'),(12,'美食','ms',5,'2023-12-11 19:24:16','2023-12-11 19:24:16'),(13,'军事','js',5,'2023-12-11 19:24:24','2023-12-11 19:24:24'),(14,'娱乐','yl',5,'2023-12-11 19:24:34','2023-12-11 19:24:34');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(10) DEFAULT '' COMMENT '昵称',
  `email` varchar(128) DEFAULT '' COMMENT '邮箱',
  `user_pic` varchar(128) DEFAULT '' COMMENT '头像',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'dooog','e10adc3949ba59abbe56e057f20f883e','','','https://ac.nowcoder.com','2023-12-08 15:09:21','2023-12-09 01:35:41'),(2,'doooog','e10adc3949ba59abbe56e057f20f883e','','','https://ac.nowcoder.com','2023-12-08 15:17:33','2023-12-09 01:35:41'),(3,'dooooog','e10adc3949ba59abbe56e057f20f883e','dog','waccm@qq.com','https://www.bilibili.com/video','2023-12-09 00:54:49','2023-12-10 02:48:51'),(4,'doooooog','e10adc3949ba59abbe56e057f20f883e','','','','2023-12-10 03:43:41','2023-12-10 03:43:41'),(5,'hudiaoche','e10adc3949ba59abbe56e057f20f883e','Doog的测试小号','hh@hh.com','https://big-event010.oss-cn-beijing.aliyuncs.com/ce10db0e-43a2-4ec9-a574-e089e22335f4.jpg','2023-12-11 18:23:29','2023-12-12 03:39:11');
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

-- Dump completed on 2023-12-28 20:02:54
