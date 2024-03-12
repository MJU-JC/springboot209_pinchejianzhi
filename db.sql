-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootsb00r
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootsb00r`
--

/*!40000 DROP DATABASE IF EXISTS `springbootsb00r`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootsb00r` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootsb00r`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwujiedan`
--

DROP TABLE IF EXISTS `fuwujiedan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwujiedan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `choujin` int(11) DEFAULT NULL COMMENT '酬金',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `jiedanzhanghao` varchar(200) DEFAULT NULL COMMENT '接单账号',
  `jiedanhaoma` varchar(200) DEFAULT NULL COMMENT '接单号码',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740453956 DEFAULT CHARSET=utf8 COMMENT='服务接单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwujiedan`
--

LOCK TABLES `fuwujiedan` WRITE;
/*!40000 ALTER TABLE `fuwujiedan` DISABLE KEYS */;
INSERT INTO `fuwujiedan` VALUES (51,'2022-03-31 09:19:51','订单编号1','服务类型1',1,'用户账号1','用户姓名1','13823888881','2022-03-31 17:19:51','接单账号1','13823888881','未支付'),(52,'2022-03-31 09:19:51','订单编号2','服务类型2',2,'用户账号2','用户姓名2','13823888882','2022-03-31 17:19:51','接单账号2','13823888882','未支付'),(53,'2022-03-31 09:19:51','订单编号3','服务类型3',3,'用户账号3','用户姓名3','13823888883','2022-03-31 17:19:51','接单账号3','13823888883','未支付'),(54,'2022-03-31 09:19:51','订单编号4','服务类型4',4,'用户账号4','用户姓名4','13823888884','2022-03-31 17:19:51','接单账号4','13823888884','未支付'),(55,'2022-03-31 09:19:51','订单编号5','服务类型5',5,'用户账号5','用户姓名5','13823888885','2022-03-31 17:19:51','接单账号5','13823888885','未支付'),(56,'2022-03-31 09:19:51','订单编号6','服务类型6',6,'用户账号6','用户姓名6','13823888886','2022-03-31 17:19:51','接单账号6','13823888886','未支付'),(1648740453955,'2022-03-31 15:27:33','1648740240405','外卖上门',5,'001','王强','13823899996','2022-03-31 23:26:53','002','13823877744','已支付');
/*!40000 ALTER TABLE `fuwujiedan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuleixing`
--

DROP TABLE IF EXISTS `fuwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740252789 DEFAULT CHARSET=utf8 COMMENT='服务类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuleixing`
--

LOCK TABLES `fuwuleixing` WRITE;
/*!40000 ALTER TABLE `fuwuleixing` DISABLE KEYS */;
INSERT INTO `fuwuleixing` VALUES (81,'2022-03-31 09:19:51','外卖上门'),(82,'2022-03-31 09:19:51','快递代拿'),(1648740252788,'2022-03-31 15:24:12','互助互帮');
/*!40000 ALTER TABLE `fuwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuxinxi`
--

DROP TABLE IF EXISTS `fuwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `choujin` int(11) DEFAULT NULL COMMENT '酬金',
  `fuwuxiangqing` longtext COMMENT '服务详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740307688 DEFAULT CHARSET=utf8 COMMENT='服务信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuxinxi`
--

LOCK TABLES `fuwuxinxi` WRITE;
/*!40000 ALTER TABLE `fuwuxinxi` DISABLE KEYS */;
INSERT INTO `fuwuxinxi` VALUES (41,'2022-03-31 09:19:51','1111111111','upload/fuwuxinxi_fengmian1.jpg','服务类型1',1,'<p>服务详情1</p>','2022-03-31 17:19:51','已接单','用户账号1','用户姓名1','13823888881'),(42,'2022-03-31 09:19:51','2222222222','upload/fuwuxinxi_fengmian2.jpg','服务类型2',2,'服务详情2','2022-03-31 17:19:51','已接单','用户账号2','用户姓名2','13823888882'),(43,'2022-03-31 09:19:51','3333333333','upload/fuwuxinxi_fengmian3.jpg','服务类型3',3,'服务详情3','2022-03-31 17:19:51','已接单','用户账号3','用户姓名3','13823888883'),(44,'2022-03-31 09:19:51','4444444444','upload/fuwuxinxi_fengmian4.jpg','服务类型4',4,'服务详情4','2022-03-31 17:19:51','已接单','用户账号4','用户姓名4','13823888884'),(45,'2022-03-31 09:19:51','5555555555','upload/fuwuxinxi_fengmian5.jpg','服务类型5',5,'服务详情5','2022-03-31 17:19:51','已接单','用户账号5','用户姓名5','13823888885'),(46,'2022-03-31 09:19:51','6666666666','upload/fuwuxinxi_fengmian6.jpg','服务类型6',6,'服务详情6','2022-03-31 17:19:51','已接单','用户账号6','用户姓名6','13823888886'),(1648740307687,'2022-03-31 15:25:07','1648740240405','upload/1648740285312.jpg','外卖上门',5,'<p>用户输入外卖上门的详情信息</p>','2022-03-31 23:24:00','已接单','001','王强','13823899996');
/*!40000 ALTER TABLE `fuwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianzhixinxi`
--

DROP TABLE IF EXISTS `jianzhixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xinzidaiyu` varchar(200) NOT NULL COMMENT '薪资待遇',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `gangweiyaoqiu` longtext COMMENT '岗位要求',
  `jianzhixiangqing` longtext COMMENT '兼职详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740164349 DEFAULT CHARSET=utf8 COMMENT='兼职信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianzhixinxi`
--

LOCK TABLES `jianzhixinxi` WRITE;
/*!40000 ALTER TABLE `jianzhixinxi` DISABLE KEYS */;
INSERT INTO `jianzhixinxi` VALUES (101,'2022-03-31 09:19:51','岗位名称1','upload/jianzhixinxi_tupian1.jpg','薪资待遇1','招聘人数1','工作地点1','工作时间1','岗位要求1','兼职详情1','商家账号1','商家名称1','联系人1','联系电话1'),(102,'2022-03-31 09:19:51','岗位名称2','upload/jianzhixinxi_tupian2.jpg','薪资待遇2','招聘人数2','工作地点2','工作时间2','岗位要求2','兼职详情2','商家账号2','商家名称2','联系人2','联系电话2'),(103,'2022-03-31 09:19:51','岗位名称3','upload/jianzhixinxi_tupian3.jpg','薪资待遇3','招聘人数3','工作地点3','工作时间3','岗位要求3','兼职详情3','商家账号3','商家名称3','联系人3','联系电话3'),(104,'2022-03-31 09:19:51','岗位名称4','upload/jianzhixinxi_tupian4.jpg','薪资待遇4','招聘人数4','工作地点4','工作时间4','岗位要求4','兼职详情4','商家账号4','商家名称4','联系人4','联系电话4'),(105,'2022-03-31 09:19:51','岗位名称5','upload/jianzhixinxi_tupian5.jpg','薪资待遇5','招聘人数5','工作地点5','工作时间5','岗位要求5','兼职详情5','商家账号5','商家名称5','联系人5','联系电话5'),(106,'2022-03-31 09:19:51','岗位名称6','upload/jianzhixinxi_tupian6.jpg','薪资待遇6','招聘人数6','工作地点6','工作时间6','岗位要求6','兼职详情6','商家账号6','商家名称6','联系人6','联系电话6'),(1648740164348,'2022-03-31 15:22:44','销售员','upload/1648740125798.webp','200/天','2人','北京路','8:00-18:00','输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情','<p>输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情</p>','004','新作商家','陈先生','13823866662');
/*!40000 ALTER TABLE `jianzhixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianzhiyingpin`
--

DROP TABLE IF EXISTS `jianzhiyingpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianzhiyingpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `jianli` varchar(200) DEFAULT NULL COMMENT '简历',
  `qiuzhishijian` datetime DEFAULT NULL COMMENT '求职时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740597550 DEFAULT CHARSET=utf8 COMMENT='兼职应聘';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianzhiyingpin`
--

LOCK TABLES `jianzhiyingpin` WRITE;
/*!40000 ALTER TABLE `jianzhiyingpin` DISABLE KEYS */;
INSERT INTO `jianzhiyingpin` VALUES (111,'2022-03-31 09:19:51','岗位名称1','薪资待遇1','工作地点1','工作时间1','商家账号1','商家名称1','','2022-03-31 17:19:51','备注1','用户账号1','用户姓名1','手机号码1',1,1,'是',''),(112,'2022-03-31 09:19:51','岗位名称2','薪资待遇2','工作地点2','工作时间2','商家账号2','商家名称2','','2022-03-31 17:19:51','备注2','用户账号2','用户姓名2','手机号码2',2,2,'是',''),(113,'2022-03-31 09:19:51','岗位名称3','薪资待遇3','工作地点3','工作时间3','商家账号3','商家名称3','','2022-03-31 17:19:51','备注3','用户账号3','用户姓名3','手机号码3',3,3,'是',''),(114,'2022-03-31 09:19:51','岗位名称4','薪资待遇4','工作地点4','工作时间4','商家账号4','商家名称4','','2022-03-31 17:19:51','备注4','用户账号4','用户姓名4','手机号码4',4,4,'是',''),(115,'2022-03-31 09:19:51','岗位名称5','薪资待遇5','工作地点5','工作时间5','商家账号5','商家名称5','','2022-03-31 17:19:51','备注5','用户账号5','用户姓名5','手机号码5',5,5,'是',''),(116,'2022-03-31 09:19:51','岗位名称6','薪资待遇6','工作地点6','工作时间6','商家账号6','商家名称6','','2022-03-31 17:19:51','备注6','用户账号6','用户姓名6','手机号码6',6,6,'是',''),(1648740597549,'2022-03-31 15:29:57','销售员','200/天','北京路','8:00-18:00','004','新作商家','upload/1648740594850.xls','2022-03-31 23:29:08','','002','张三','13823877744',1648739921896,1648740164348,'是','请于4月2号上午来面试');
/*!40000 ALTER TABLE `jianzhiyingpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinchexinxi`
--

DROP TABLE IF EXISTS `pinchexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinchexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chufadidian` varchar(200) DEFAULT NULL COMMENT '出发地点',
  `daodadidian` varchar(200) DEFAULT NULL COMMENT '到达地点',
  `chufashijian` varchar(200) DEFAULT NULL COMMENT '出发时间',
  `danrenfeiyong` int(11) DEFAULT NULL COMMENT '单人费用',
  `zuoweishu` int(11) DEFAULT NULL COMMENT '座位数',
  `pinchejine` int(11) DEFAULT NULL COMMENT '拼车金额',
  `pincheshijian` datetime DEFAULT NULL COMMENT '拼车时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740504652 DEFAULT CHARSET=utf8 COMMENT='拼车信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinchexinxi`
--

LOCK TABLES `pinchexinxi` WRITE;
/*!40000 ALTER TABLE `pinchexinxi` DISABLE KEYS */;
INSERT INTO `pinchexinxi` VALUES (71,'2022-03-31 09:19:51','司机账号1','司机姓名1','性别1','联系电话1','车牌号1','出发地点1','到达地点1','出发时间1',1,1,1,'2022-03-31 17:19:51','备注1','用户账号1','用户姓名1','手机号码1','未支付'),(72,'2022-03-31 09:19:51','司机账号2','司机姓名2','性别2','联系电话2','车牌号2','出发地点2','到达地点2','出发时间2',2,2,2,'2022-03-31 17:19:51','备注2','用户账号2','用户姓名2','手机号码2','未支付'),(73,'2022-03-31 09:19:51','司机账号3','司机姓名3','性别3','联系电话3','车牌号3','出发地点3','到达地点3','出发时间3',3,3,3,'2022-03-31 17:19:51','备注3','用户账号3','用户姓名3','手机号码3','未支付'),(74,'2022-03-31 09:19:51','司机账号4','司机姓名4','性别4','联系电话4','车牌号4','出发地点4','到达地点4','出发时间4',4,4,4,'2022-03-31 17:19:51','备注4','用户账号4','用户姓名4','手机号码4','未支付'),(75,'2022-03-31 09:19:51','司机账号5','司机姓名5','性别5','联系电话5','车牌号5','出发地点5','到达地点5','出发时间5',5,5,5,'2022-03-31 17:19:51','备注5','用户账号5','用户姓名5','手机号码5','未支付'),(76,'2022-03-31 09:19:51','司机账号6','司机姓名6','性别6','联系电话6','车牌号6','出发地点6','到达地点6','出发时间6',6,6,6,'2022-03-31 17:19:51','备注6','用户账号6','用户姓名6','手机号码6','未支付'),(1648718485241,'2022-03-31 09:21:24','司机账号1','司机姓名1','性别1','联系电话1','车牌号1','出发地点1','到达地点1','2022-03-31 17:19:51',1,1,1,'2022-03-31 17:21:16','','用户账号1','用户姓名1','13823888881','未支付'),(1648740504651,'2022-03-31 15:28:24','003','李四','男','13823833336','粤A55556','广州','深圳','2022-04-02 08:00:00',120,1,120,'2022-03-31 23:27:41','','002','张三','13823877744','已支付');
/*!40000 ALTER TABLE `pinchexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740006828 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (31,'2022-03-31 09:19:51','商家账号1','123456','商家名称1','upload/shangjia_tupian1.jpg','联系人1','13823888881','商家地址1'),(32,'2022-03-31 09:19:51','商家账号2','123456','商家名称2','upload/shangjia_tupian2.jpg','联系人2','13823888882','商家地址2'),(33,'2022-03-31 09:19:51','商家账号3','123456','商家名称3','upload/shangjia_tupian3.jpg','联系人3','13823888883','商家地址3'),(34,'2022-03-31 09:19:51','商家账号4','123456','商家名称4','upload/shangjia_tupian4.jpg','联系人4','13823888884','商家地址4'),(35,'2022-03-31 09:19:51','商家账号5','123456','商家名称5','upload/shangjia_tupian5.jpg','联系人5','13823888885','商家地址5'),(36,'2022-03-31 09:19:51','商家账号6','123456','商家名称6','upload/shangjia_tupian6.jpg','联系人6','13823888886','商家地址6'),(1648740006827,'2022-03-31 15:20:06','004','123456','新作商家','upload/1648740111535.webp','陈先生','13823866662','人民北路5号');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siji`
--

DROP TABLE IF EXISTS `siji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) NOT NULL COMMENT '司机账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `sijixingming` varchar(200) NOT NULL COMMENT '司机姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sijizhanghao` (`sijizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648739977381 DEFAULT CHARSET=utf8 COMMENT='司机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siji`
--

LOCK TABLES `siji` WRITE;
/*!40000 ALTER TABLE `siji` DISABLE KEYS */;
INSERT INTO `siji` VALUES (21,'2022-03-31 09:19:51','司机账号1','123456','司机姓名1','upload/siji_touxiang1.jpg','男','13823888881','车牌号1'),(22,'2022-03-31 09:19:51','司机账号2','123456','司机姓名2','upload/siji_touxiang2.jpg','男','13823888882','车牌号2'),(23,'2022-03-31 09:19:51','司机账号3','123456','司机姓名3','upload/siji_touxiang3.jpg','男','13823888883','车牌号3'),(24,'2022-03-31 09:19:51','司机账号4','123456','司机姓名4','upload/siji_touxiang4.jpg','男','13823888884','车牌号4'),(25,'2022-03-31 09:19:51','司机账号5','123456','司机姓名5','upload/siji_touxiang5.jpg','男','13823888885','车牌号5'),(26,'2022-03-31 09:19:51','司机账号6','123456','司机姓名6','upload/siji_touxiang6.jpg','男','13823888886','车牌号6'),(1648739977380,'2022-03-31 15:19:37','003','123456','李四','upload/1648740022645.webp','男','13823833336','粤A55556');
/*!40000 ALTER TABLE `siji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户账号1','yonghu','用户','xgl6u5h5h5ehayguhbx24ob666n13ral','2022-03-31 09:21:07','2022-03-31 16:10:34'),(2,12,'用户账号2','yonghu','用户','5j5yf92c5qhofbx0rfg4w6gbw4p2wara','2022-03-31 15:10:00','2022-03-31 16:10:01'),(3,1,'abo','users','管理员','qe9u9gj47rgzrwpu8hef73rixxvwrtrr','2022-03-31 15:10:48','2022-03-31 16:23:08'),(4,1648739906472,'001','yonghu','用户','t39k1tfnd569wkilz61kyqdt1xh5tm9b','2022-03-31 15:18:48','2022-03-31 16:30:54'),(5,1648739977380,'003','siji','司机','it3k4wjzqvoknn9ctsiwaptsjkxo239y','2022-03-31 15:20:15','2022-03-31 16:32:06'),(6,1648740006827,'004','shangjia','商家','u1i1azlcg732eex2m88u9cyxkzqvwbgy','2022-03-31 15:21:39','2022-03-31 16:32:21'),(7,1648739921896,'002','yonghu','用户','6v3gmtccmnrl6y347c56kabb0y44a6o6','2022-03-31 15:26:36','2022-03-31 16:32:53');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-31 09:19:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xianzhijiaoyi`
--

DROP TABLE IF EXISTS `xianzhijiaoyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xianzhijiaoyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `wupinzhuangtai` varchar(200) DEFAULT NULL COMMENT '物品状态',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740373034 DEFAULT CHARSET=utf8 COMMENT='闲置交易';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xianzhijiaoyi`
--

LOCK TABLES `xianzhijiaoyi` WRITE;
/*!40000 ALTER TABLE `xianzhijiaoyi` DISABLE KEYS */;
INSERT INTO `xianzhijiaoyi` VALUES (91,'2022-03-31 09:19:51','物品名称1','upload/xianzhijiaoyi_wupintupian1.jpg','新旧程度1',1,1,'物品详情1','未交易','2022-03-31 17:19:51','用户账号1','用户姓名1','手机号码1'),(92,'2022-03-31 09:19:51','物品名称2','upload/xianzhijiaoyi_wupintupian2.jpg','新旧程度2',2,2,'物品详情2','未交易','2022-03-31 17:19:51','用户账号2','用户姓名2','手机号码2'),(93,'2022-03-31 09:19:51','物品名称3','upload/xianzhijiaoyi_wupintupian3.jpg','新旧程度3',3,3,'物品详情3','未交易','2022-03-31 17:19:51','用户账号3','用户姓名3','手机号码3'),(94,'2022-03-31 09:19:51','物品名称4','upload/xianzhijiaoyi_wupintupian4.jpg','新旧程度4',4,4,'物品详情4','未交易','2022-03-31 17:19:51','用户账号4','用户姓名4','手机号码4'),(95,'2022-03-31 09:19:51','物品名称5','upload/xianzhijiaoyi_wupintupian5.jpg','新旧程度5',5,5,'物品详情5','未交易','2022-03-31 17:19:51','用户账号5','用户姓名5','手机号码5'),(96,'2022-03-31 09:19:51','物品名称6','upload/xianzhijiaoyi_wupintupian6.jpg','新旧程度6',6,6,'物品详情6','未交易','2022-03-31 17:19:51','用户账号6','用户姓名6','手机号码6'),(1648740373033,'2022-03-31 15:26:12','二手电脑','upload/1648740342565.webp','八成新',1800,1,'<p>输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情输入岗位要求详情<img src=\"http://localhost:8080/springbootsb00r/upload/1648740370665.webp\"></p>','已交易','2022-03-31 23:24:56','001','王强','13823899996');
/*!40000 ALTER TABLE `xianzhijiaoyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648739921897 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-31 09:19:51','用户账号1','123456','用户姓名1','upload/yonghu_touxiang1.jpg','男','13823888881'),(12,'2022-03-31 09:19:51','用户账号2','123456','用户姓名2','upload/yonghu_touxiang2.jpg','男','13823888882'),(13,'2022-03-31 09:19:51','用户账号3','123456','用户姓名3','upload/yonghu_touxiang3.jpg','男','13823888883'),(14,'2022-03-31 09:19:51','用户账号4','123456','用户姓名4','upload/yonghu_touxiang4.jpg','男','13823888884'),(15,'2022-03-31 09:19:51','用户账号5','123456','用户姓名5','upload/yonghu_touxiang5.jpg','男','13823888885'),(16,'2022-03-31 09:19:51','用户账号6','123456','用户姓名6','upload/yonghu_touxiang6.jpg','男','13823888886'),(1648739906472,'2022-03-31 15:18:26','001','123456','王强','upload/1648739940320.jpg','男','13823899996'),(1648739921896,'2022-03-31 15:18:41','002','123456','张三','upload/1648740409424.jpg','男','13823877744');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuduipinche`
--

DROP TABLE IF EXISTS `zuduipinche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuduipinche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chufadidian` varchar(200) DEFAULT NULL COMMENT '出发地点',
  `daodadidian` varchar(200) DEFAULT NULL COMMENT '到达地点',
  `danrenfeiyong` int(11) DEFAULT NULL COMMENT '单人费用',
  `zuoweishu` int(11) DEFAULT NULL COMMENT '座位数',
  `chufashijian` datetime DEFAULT NULL COMMENT '出发时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648740070468 DEFAULT CHARSET=utf8 COMMENT='组队拼车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuduipinche`
--

LOCK TABLES `zuduipinche` WRITE;
/*!40000 ALTER TABLE `zuduipinche` DISABLE KEYS */;
INSERT INTO `zuduipinche` VALUES (61,'2022-03-31 09:19:51','司机账号1','司机姓名1','性别1','联系电话1','车牌号1','upload/zuduipinche_tupian1.jpg','出发地点1','到达地点1',1,0,'2022-03-31 17:19:51'),(62,'2022-03-31 09:19:51','司机账号2','司机姓名2','性别2','联系电话2','车牌号2','upload/zuduipinche_tupian2.jpg','出发地点2','到达地点2',2,2,'2022-03-31 17:19:51'),(63,'2022-03-31 09:19:51','司机账号3','司机姓名3','性别3','联系电话3','车牌号3','upload/zuduipinche_tupian3.jpg','出发地点3','到达地点3',3,3,'2022-03-31 17:19:51'),(64,'2022-03-31 09:19:51','司机账号4','司机姓名4','性别4','联系电话4','车牌号4','upload/zuduipinche_tupian4.jpg','出发地点4','到达地点4',4,4,'2022-03-31 17:19:51'),(65,'2022-03-31 09:19:51','司机账号5','司机姓名5','性别5','联系电话5','车牌号5','upload/zuduipinche_tupian5.jpg','出发地点5','到达地点5',5,5,'2022-03-31 17:19:51'),(66,'2022-03-31 09:19:51','司机账号6','司机姓名6','性别6','联系电话6','车牌号6','upload/zuduipinche_tupian6.jpg','出发地点6','到达地点6',6,6,'2022-03-31 17:19:51'),(1648740070467,'2022-03-31 15:21:10','003','李四','男','13823833336','粤A55556','upload/1648740045327.jpg','广州','深圳',120,2,'2022-04-02 08:00:00');
/*!40000 ALTER TABLE `zuduipinche` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-07 13:53:48
