/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot4prsj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot4prsj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot4prsj`;

/*Table structure for table `banjixinxi` */

DROP TABLE IF EXISTS `banjixinxi`;

CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='班级信息';

/*Data for the table `banjixinxi` */

insert  into `banjixinxi`(`id`,`addtime`,`banji`) values (31,'2021-05-09 09:52:32','商务一班');
insert  into `banjixinxi`(`id`,`addtime`,`banji`) values (32,'2021-05-09 09:52:32','班级2');
insert  into `banjixinxi`(`id`,`addtime`,`banji`) values (33,'2021-05-09 09:52:32','班级3');
insert  into `banjixinxi`(`id`,`addtime`,`banji`) values (34,'2021-05-09 09:52:32','班级4');
insert  into `banjixinxi`(`id`,`addtime`,`banji`) values (35,'2021-05-09 09:52:32','班级5');
insert  into `banjixinxi`(`id`,`addtime`,`banji`) values (36,'2021-05-09 09:52:32','班级6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot4prsj/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot4prsj/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot4prsj/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`banji`,`youxiang`,`dianhua`) values (21,'2021-05-09 09:52:32','1','1','何老师','女','http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang1.jpg','商务一班','773890001@qq.com','13823888881');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`banji`,`youxiang`,`dianhua`) values (22,'2021-05-09 09:52:32','教师2','123456','教师姓名2','男','http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang2.jpg','班级2','773890002@qq.com','13823888882');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`banji`,`youxiang`,`dianhua`) values (23,'2021-05-09 09:52:32','教师3','123456','教师姓名3','男','http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang3.jpg','班级3','773890003@qq.com','13823888883');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`banji`,`youxiang`,`dianhua`) values (24,'2021-05-09 09:52:32','教师4','123456','教师姓名4','男','http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang4.jpg','班级4','773890004@qq.com','13823888884');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`banji`,`youxiang`,`dianhua`) values (25,'2021-05-09 09:52:32','教师5','123456','教师姓名5','男','http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang5.jpg','班级5','773890005@qq.com','13823888885');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`banji`,`youxiang`,`dianhua`) values (26,'2021-05-09 09:52:32','教师6','123456','教师姓名6','男','http://localhost:8080/springboot4prsj/upload/jiaoshi_touxiang6.jpg','班级6','773890006@qq.com','13823888886');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','yna7w114ry4a950yixeup2kdi0nioqoq','2021-05-09 09:53:32','2021-05-09 10:58:18');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,21,'1','jiaoshi','教师','l9zy0xteav7o1h4v6eaquezce6t6igp5','2021-05-09 09:54:20','2021-05-09 10:57:40');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1620525249434,'2','xuesheng','学生','kdhelcnjroz0dibw0oufs2adutttonsa','2021-05-09 09:55:49','2021-05-09 10:58:07');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-09 09:52:32');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620525249435 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`yuanxi`,`banji`,`shouji`,`youxiang`) values (11,'2021-05-09 09:52:32','1','1','学生姓名1','男','http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang1.jpg','院系1','班级1','13823888881','773890001@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`yuanxi`,`banji`,`shouji`,`youxiang`) values (12,'2021-05-09 09:52:32','学生2','123456','学生姓名2','男','http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang2.jpg','院系2','班级2','13823888882','773890002@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`yuanxi`,`banji`,`shouji`,`youxiang`) values (13,'2021-05-09 09:52:32','学生3','123456','学生姓名3','男','http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang3.jpg','院系3','班级3','13823888883','773890003@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`yuanxi`,`banji`,`shouji`,`youxiang`) values (14,'2021-05-09 09:52:32','学生4','123456','学生姓名4','男','http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang4.jpg','院系4','班级4','13823888884','773890004@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`yuanxi`,`banji`,`shouji`,`youxiang`) values (15,'2021-05-09 09:52:32','学生5','123456','学生姓名5','男','http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang5.jpg','院系5','班级5','13823888885','773890005@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`yuanxi`,`banji`,`shouji`,`youxiang`) values (16,'2021-05-09 09:52:32','学生6','123456','学生姓名6','男','http://localhost:8080/springboot4prsj/upload/xuesheng_touxiang6.jpg','院系6','班级6','13823888886','773890006@qq.com');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`yuanxi`,`banji`,`shouji`,`youxiang`) values (1620525249434,'2021-05-09 09:54:09','2','1','刘倩','女','http://localhost:8080/springboot4prsj/upload/1620525359107.png','商务系','商务一班','15214121411','12121212@15.com');

/*Table structure for table `zuoyedianping` */

DROP TABLE IF EXISTS `zuoyedianping`;

CREATE TABLE `zuoyedianping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoyebiaoti` varchar(200) DEFAULT NULL COMMENT '作业标题',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `wanchengneirong` varchar(200) DEFAULT NULL COMMENT '完成内容',
  `pingyu` longtext COMMENT '评语',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620525477899 DEFAULT CHARSET=utf8 COMMENT='作业点评';

/*Data for the table `zuoyedianping` */

insert  into `zuoyedianping`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`xuehao`,`xueshengxingming`,`wanchengneirong`,`pingyu`,`riqi`,`gonghao`,`jiaoshixingming`,`banji`) values (61,'2021-05-09 09:52:32','作业编号1','作业标题1','学号1','学生姓名1','完成内容1','评语1','2021-05-09 09:52:32','工号1','教师姓名1','班级1');
insert  into `zuoyedianping`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`xuehao`,`xueshengxingming`,`wanchengneirong`,`pingyu`,`riqi`,`gonghao`,`jiaoshixingming`,`banji`) values (62,'2021-05-09 09:52:32','作业编号2','作业标题2','学号2','学生姓名2','完成内容2','评语2','2021-05-09 09:52:32','工号2','教师姓名2','班级2');
insert  into `zuoyedianping`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`xuehao`,`xueshengxingming`,`wanchengneirong`,`pingyu`,`riqi`,`gonghao`,`jiaoshixingming`,`banji`) values (63,'2021-05-09 09:52:32','作业编号3','作业标题3','学号3','学生姓名3','完成内容3','评语3','2021-05-09 09:52:32','工号3','教师姓名3','班级3');
insert  into `zuoyedianping`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`xuehao`,`xueshengxingming`,`wanchengneirong`,`pingyu`,`riqi`,`gonghao`,`jiaoshixingming`,`banji`) values (64,'2021-05-09 09:52:32','作业编号4','作业标题4','学号4','学生姓名4','完成内容4','评语4','2021-05-09 09:52:32','工号4','教师姓名4','班级4');
insert  into `zuoyedianping`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`xuehao`,`xueshengxingming`,`wanchengneirong`,`pingyu`,`riqi`,`gonghao`,`jiaoshixingming`,`banji`) values (65,'2021-05-09 09:52:32','作业编号5','作业标题5','学号5','学生姓名5','完成内容5','评语5','2021-05-09 09:52:32','工号5','教师姓名5','班级5');
insert  into `zuoyedianping`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`xuehao`,`xueshengxingming`,`wanchengneirong`,`pingyu`,`riqi`,`gonghao`,`jiaoshixingming`,`banji`) values (66,'2021-05-09 09:52:32','作业编号6','作业标题6','学号6','学生姓名6','完成内容6','评语6','2021-05-09 09:52:32','工号6','教师姓名6','班级6');
insert  into `zuoyedianping`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`xuehao`,`xueshengxingming`,`wanchengneirong`,`pingyu`,`riqi`,`gonghao`,`jiaoshixingming`,`banji`) values (1620525477898,'2021-05-09 09:57:57','1','英语作业','2','刘倩','测试','可以下载学生的作业然后进行点评，做的很不错的。。。','2021-05-09 09:57:41','1','何老师','商务一班');

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoyebiaoti` varchar(200) DEFAULT NULL COMMENT '作业标题',
  `zuoyeneirong` varchar(200) DEFAULT NULL COMMENT '作业内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `neirongbiaoti` varchar(200) DEFAULT NULL COMMENT '内容标题',
  `wanchengneirong` varchar(200) DEFAULT NULL COMMENT '完成内容',
  `tijiaozuoye` varchar(200) DEFAULT NULL COMMENT '提交作业',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620525448470 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyeneirong`,`gonghao`,`jiaoshixingming`,`banji`,`neirongbiaoti`,`wanchengneirong`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (51,'2021-05-09 09:52:32','作业编号1','作业标题1','作业内容1','工号1','教师姓名1','班级1','内容标题1','完成内容1','','2021-05-09','学号1','学生姓名1');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyeneirong`,`gonghao`,`jiaoshixingming`,`banji`,`neirongbiaoti`,`wanchengneirong`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (52,'2021-05-09 09:52:32','作业编号2','作业标题2','作业内容2','工号2','教师姓名2','班级2','内容标题2','完成内容2','','2021-05-09','学号2','学生姓名2');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyeneirong`,`gonghao`,`jiaoshixingming`,`banji`,`neirongbiaoti`,`wanchengneirong`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (53,'2021-05-09 09:52:32','作业编号3','作业标题3','作业内容3','工号3','教师姓名3','班级3','内容标题3','完成内容3','','2021-05-09','学号3','学生姓名3');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyeneirong`,`gonghao`,`jiaoshixingming`,`banji`,`neirongbiaoti`,`wanchengneirong`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (54,'2021-05-09 09:52:32','作业编号4','作业标题4','作业内容4','工号4','教师姓名4','班级4','内容标题4','完成内容4','','2021-05-09','学号4','学生姓名4');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyeneirong`,`gonghao`,`jiaoshixingming`,`banji`,`neirongbiaoti`,`wanchengneirong`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (55,'2021-05-09 09:52:32','作业编号5','作业标题5','作业内容5','工号5','教师姓名5','班级5','内容标题5','完成内容5','','2021-05-09','学号5','学生姓名5');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyeneirong`,`gonghao`,`jiaoshixingming`,`banji`,`neirongbiaoti`,`wanchengneirong`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (56,'2021-05-09 09:52:32','作业编号6','作业标题6','作业内容6','工号6','教师姓名6','班级6','内容标题6','完成内容6','','2021-05-09','学号6','学生姓名6');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyeneirong`,`gonghao`,`jiaoshixingming`,`banji`,`neirongbiaoti`,`wanchengneirong`,`tijiaozuoye`,`tijiaoriqi`,`xuehao`,`xueshengxingming`) values (1620525448469,'2021-05-09 09:57:28','1','英语作业','222222','1','何老师','商务一班','测试','测试','http://localhost:8080/springboot4prsj/upload/1620525428815.doc','2021-05-09','2','刘倩');

/*Table structure for table `zuoyexinxi` */

DROP TABLE IF EXISTS `zuoyexinxi`;

CREATE TABLE `zuoyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoyebiaoti` varchar(200) NOT NULL COMMENT '作业标题',
  `zuoyewenjian` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoyeneirong` varchar(200) DEFAULT NULL COMMENT '作业内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuoyebianhao` (`zuoyebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620525340085 DEFAULT CHARSET=utf8 COMMENT='作业信息';

/*Data for the table `zuoyexinxi` */

insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyewenjian`,`zuoyeneirong`,`faburiqi`,`gonghao`,`jiaoshixingming`,`banji`) values (41,'2021-05-09 09:52:32','作业编号1','作业标题1','','作业内容1','2021-05-09','工号1','教师姓名1','班级1');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyewenjian`,`zuoyeneirong`,`faburiqi`,`gonghao`,`jiaoshixingming`,`banji`) values (42,'2021-05-09 09:52:32','作业编号2','作业标题2','','作业内容2','2021-05-09','工号2','教师姓名2','班级2');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyewenjian`,`zuoyeneirong`,`faburiqi`,`gonghao`,`jiaoshixingming`,`banji`) values (43,'2021-05-09 09:52:32','作业编号3','作业标题3','','作业内容3','2021-05-09','工号3','教师姓名3','班级3');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyewenjian`,`zuoyeneirong`,`faburiqi`,`gonghao`,`jiaoshixingming`,`banji`) values (44,'2021-05-09 09:52:32','作业编号4','作业标题4','','作业内容4','2021-05-09','工号4','教师姓名4','班级4');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyewenjian`,`zuoyeneirong`,`faburiqi`,`gonghao`,`jiaoshixingming`,`banji`) values (45,'2021-05-09 09:52:32','作业编号5','作业标题5','','作业内容5','2021-05-09','工号5','教师姓名5','班级5');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyewenjian`,`zuoyeneirong`,`faburiqi`,`gonghao`,`jiaoshixingming`,`banji`) values (46,'2021-05-09 09:52:32','作业编号6','作业标题6','','作业内容6','2021-05-09','工号6','教师姓名6','班级6');
insert  into `zuoyexinxi`(`id`,`addtime`,`zuoyebianhao`,`zuoyebiaoti`,`zuoyewenjian`,`zuoyeneirong`,`faburiqi`,`gonghao`,`jiaoshixingming`,`banji`) values (1620525340084,'2021-05-09 09:55:39','1','英语作业','http://localhost:8080/springboot4prsj/upload/1620525334726.doc','222222','2021-05-09','1','何老师','商务一班');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
