/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmd758h
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmd758h` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmd758h`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmd758h/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmd758h/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmd758h/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussjingdianjieshao` */

DROP TABLE IF EXISTS `discussjingdianjieshao`;

CREATE TABLE `discussjingdianjieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='景点介绍评论表';

/*Data for the table `discussjingdianjieshao` */

insert  into `discussjingdianjieshao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (51,'2021-03-27 17:02:08',1,1,'用户名1','评论内容1','回复内容1'),(52,'2021-03-27 17:02:08',2,2,'用户名2','评论内容2','回复内容2'),(53,'2021-03-27 17:02:08',3,3,'用户名3','评论内容3','回复内容3'),(54,'2021-03-27 17:02:08',4,4,'用户名4','评论内容4','回复内容4'),(55,'2021-03-27 17:02:08',5,5,'用户名5','评论内容5','回复内容5'),(56,'2021-03-27 17:02:08',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusstesefengsu` */

DROP TABLE IF EXISTS `discusstesefengsu`;

CREATE TABLE `discusstesefengsu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='特色风俗评论表';

/*Data for the table `discusstesefengsu` */

insert  into `discusstesefengsu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (61,'2021-03-27 17:02:08',1,1,'用户名1','评论内容1','回复内容1'),(62,'2021-03-27 17:02:08',2,2,'用户名2','评论内容2','回复内容2'),(63,'2021-03-27 17:02:08',3,3,'用户名3','评论内容3','回复内容3'),(64,'2021-03-27 17:02:08',4,4,'用户名4','评论内容4','回复内容4'),(65,'2021-03-27 17:02:08',5,5,'用户名5','评论内容5','回复内容5'),(66,'2021-03-27 17:02:08',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jingdianjieshao` */

DROP TABLE IF EXISTS `jingdianjieshao`;

CREATE TABLE `jingdianjieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdiandizhi` varchar(200) NOT NULL COMMENT '景点地址',
  `menpiao` varchar(200) NOT NULL COMMENT '门票',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jingdiantese` longtext COMMENT '景点特色',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='景点介绍';

/*Data for the table `jingdianjieshao` */

insert  into `jingdianjieshao`(`id`,`addtime`,`jingdianmingcheng`,`jingdiandizhi`,`menpiao`,`zhaopian`,`jingdiantese`,`jingdianjieshao`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-03-27 17:02:08','景点名称1','景点地址1','是','http://localhost:8080/ssmd758h/upload/jingdianjieshao_zhaopian1.jpg','景点特色1','景点介绍1',1,1,'2021-03-27 17:02:08',1),(22,'2021-03-27 17:02:08','景点名称2','景点地址2','是','http://localhost:8080/ssmd758h/upload/jingdianjieshao_zhaopian2.jpg','景点特色2','景点介绍2',2,2,'2021-03-27 17:02:08',2),(23,'2021-03-27 17:02:08','景点名称3','景点地址3','是','http://localhost:8080/ssmd758h/upload/jingdianjieshao_zhaopian3.jpg','景点特色3','景点介绍3',3,3,'2021-03-27 17:02:08',3),(24,'2021-03-27 17:02:08','景点名称4','景点地址4','是','http://localhost:8080/ssmd758h/upload/jingdianjieshao_zhaopian4.jpg','景点特色4','景点介绍4',4,4,'2021-03-27 17:02:08',4),(25,'2021-03-27 17:02:08','景点名称5','景点地址5','是','http://localhost:8080/ssmd758h/upload/jingdianjieshao_zhaopian5.jpg','景点特色5','景点介绍5',5,5,'2021-03-27 17:02:08',5),(26,'2021-03-27 17:02:08','景点名称6','景点地址6','是','http://localhost:8080/ssmd758h/upload/jingdianjieshao_zhaopian6.jpg','景点特色6','景点介绍6',6,6,'2021-03-27 17:02:08',6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `tesefengsu` */

DROP TABLE IF EXISTS `tesefengsu`;

CREATE TABLE `tesefengsu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fengsumingcheng` varchar(200) DEFAULT NULL COMMENT '风俗名称',
  `fengsujieshao` longtext COMMENT '风俗介绍',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fengsuxiangqing` longtext COMMENT '风俗详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='特色风俗';

/*Data for the table `tesefengsu` */

insert  into `tesefengsu`(`id`,`addtime`,`fengsumingcheng`,`fengsujieshao`,`tupian`,`fengsuxiangqing`,`thumbsupnum`,`crazilynum`,`clicknum`) values (31,'2021-03-27 17:02:08','风俗名称1','风俗介绍1','http://localhost:8080/ssmd758h/upload/tesefengsu_tupian1.jpg','风俗详情1',1,1,1),(32,'2021-03-27 17:02:08','风俗名称2','风俗介绍2','http://localhost:8080/ssmd758h/upload/tesefengsu_tupian2.jpg','风俗详情2',2,2,2),(33,'2021-03-27 17:02:08','风俗名称3','风俗介绍3','http://localhost:8080/ssmd758h/upload/tesefengsu_tupian3.jpg','风俗详情3',3,3,3),(34,'2021-03-27 17:02:08','风俗名称4','风俗介绍4','http://localhost:8080/ssmd758h/upload/tesefengsu_tupian4.jpg','风俗详情4',4,4,4),(35,'2021-03-27 17:02:08','风俗名称5','风俗介绍5','http://localhost:8080/ssmd758h/upload/tesefengsu_tupian5.jpg','风俗详情5',5,5,5),(36,'2021-03-27 17:02:08','风俗名称6','风俗介绍6','http://localhost:8080/ssmd758h/upload/tesefengsu_tupian6.jpg','风俗详情6',6,6,6);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-27 17:02:08');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-03-27 17:02:08','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmd758h/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-27 17:02:08','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmd758h/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-27 17:02:08','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmd758h/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-27 17:02:08','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmd758h/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-27 17:02:08','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmd758h/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-27 17:02:08','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmd758h/upload/yonghu_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
