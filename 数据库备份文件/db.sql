/*
SQLyog Community Edition- MySQL GUI v6.54
MySQL - 5.5.25a : Database - keyan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`keyan` /*!40100 DEFAULT CHARACTER SET gb2312 */;

USE `keyan`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `addtime` varchar(50) DEFAULT NULL,
  `sf` varchar(50) DEFAULT '员工',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`realname`,`sex`,`age`,`address`,`tel`,`addtime`,`sf`) values (1,'admin','111','陈道明','男','25','成都市金牛区','13900000000','2017-02-12','系统管理员'),(2,'kygl','111','阿诺','高级教师','硕士研究生','副主任','13800008888','2017-02-17','科研管理人员'),(4,'xxxms','111','张小三','讲师','硕士研究生','信息系','18666667123','2017-02-17','科研秘书'),(5,'xxxry','111','刘泽','讲师','硕士研究生','信息系','13800008888','2017-02-17','科研人员');

/*Table structure for table `cg` */

DROP TABLE IF EXISTS `cg`;

CREATE TABLE `cg` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bh` varchar(500) DEFAULT NULL,
  `mc` varchar(500) DEFAULT NULL,
  `fzr` varchar(500) DEFAULT NULL,
  `lb` varchar(500) DEFAULT NULL,
  `xk` varchar(500) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `yh` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  `sj` date DEFAULT NULL,
  `sh` varchar(500) DEFAULT '暂无',
  `yj` varchar(500) DEFAULT '暂无',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `cg` */

insert  into `cg`(`id`,`bh`,`mc`,`fzr`,`lb`,`xk`,`bz`,`url`,`yh`,`dw`,`sj`,`sh`,`yj`) values (3,'1487335131243','测试成果名称','刘泽','国家级','理工类','说明说明','upfile/1.doc','xxxry','信息系','2017-02-17','暂无','暂无');

/*Table structure for table `dw` */

DROP TABLE IF EXISTS `dw`;

CREATE TABLE `dw` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mc` varchar(500) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `dw` */

insert  into `dw`(`id`,`mc`,`bz`) values (1,'信息系','test'),(2,'冶金系','测试\r\n'),(3,'数学系','测试');

/*Table structure for table `fk` */

DROP TABLE IF EXISTS `fk`;

CREATE TABLE `fk` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mc` varchar(500) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  `sj` varchar(500) DEFAULT NULL,
  `yh` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

/*Data for the table `fk` */

insert  into `fk`(`id`,`mc`,`bz`,`sj`,`yh`,`dw`) values (2,'测试反馈标题','测试反馈内容','2017-02-17','xxxry','信息系');

/*Table structure for table `hd` */

DROP TABLE IF EXISTS `hd`;

CREATE TABLE `hd` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mc` varchar(500) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  `sj` varchar(500) DEFAULT NULL,
  `yh` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  `sh` varchar(500) DEFAULT '暂无',
  `yj` varchar(500) DEFAULT '暂无',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

/*Data for the table `hd` */

insert  into `hd`(`id`,`mc`,`bz`,`sj`,`yh`,`dw`,`sh`,`yj`) values (2,'关于举办百家讲坛的申请','测试','2017-02-17','xxxry','信息系','通过','热烈支持');

/*Table structure for table `rz` */

DROP TABLE IF EXISTS `rz`;

CREATE TABLE `rz` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `yh` varchar(500) DEFAULT NULL,
  `sf` varchar(500) DEFAULT NULL,
  `sj` varchar(500) DEFAULT NULL,
  `ip` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

/*Data for the table `rz` */

insert  into `rz`(`id`,`yh`,`sf`,`sj`,`ip`) values (2,'admin','系统管理员','2017-02-18 00:19:32','127.0.0.1'),(3,'xxxry','科研人员','2017-02-18 00:20:39','127.0.0.1'),(4,'xxxms','科研秘书','2017-02-18 00:21:35','127.0.0.1'),(5,'kygl','科研管理人员','2017-02-18 00:22:33','127.0.0.1');

/*Table structure for table `tz` */

DROP TABLE IF EXISTS `tz`;

CREATE TABLE `tz` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mc` varchar(500) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  `sj` varchar(50) DEFAULT NULL,
  `yh` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

/*Data for the table `tz` */

insert  into `tz`(`id`,`mc`,`bz`,`sj`,`yh`,`dw`) values (2,'测试通知标题','测试通知内容','2017-02-18 00:21:59','xxxms','信息系');

/*Table structure for table `wj` */

DROP TABLE IF EXISTS `wj`;

CREATE TABLE `wj` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mc` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `bz` varchar(500) DEFAULT NULL,
  `sj` varchar(50) DEFAULT NULL,
  `yh` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

/*Data for the table `wj` */

insert  into `wj`(`id`,`mc`,`url`,`bz`,`sj`,`yh`,`dw`) values (2,'测试文件名称','upfile/1.doc','测试文件说明','2017-02-17','xxxms','信息系');

/*Table structure for table `xm` */

DROP TABLE IF EXISTS `xm`;

CREATE TABLE `xm` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bh` varchar(500) DEFAULT NULL,
  `mc` varchar(500) DEFAULT NULL,
  `fzr` varchar(500) DEFAULT NULL,
  `lb` varchar(500) DEFAULT NULL,
  `xk` varchar(500) DEFAULT NULL,
  `jf` varchar(500) DEFAULT NULL,
  `ksj` varchar(500) DEFAULT NULL,
  `esj` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `yh` varchar(500) DEFAULT NULL,
  `dw` varchar(500) DEFAULT NULL,
  `sj` date DEFAULT NULL,
  `sh` varchar(500) DEFAULT '暂无',
  `yj` varchar(500) DEFAULT '暂无',
  `zj` varchar(500) DEFAULT '暂无',
  `zhj` varchar(500) DEFAULT '暂无',
  `pf` varchar(50) DEFAULT '暂无',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

/*Data for the table `xm` */

insert  into `xm`(`id`,`bh`,`mc`,`fzr`,`lb`,`xk`,`jf`,`ksj`,`esj`,`url`,`yh`,`dw`,`sj`,`sh`,`yj`,`zj`,`zhj`,`pf`) values (2,'1487335131243','测试项目名称','刘泽','国家级','理工类','100','2017-02-28','2017-12-17','upfile/1.doc','xxxry','信息系','2017-02-18','通过','很好很好','暂无','是','6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
