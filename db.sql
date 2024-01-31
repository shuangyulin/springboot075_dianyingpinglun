/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootmts92
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootmts92` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootmts92`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootmts92/upload/1619653863678.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootmts92/upload/1619653872105.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootmts92/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dianyingleixing` */

DROP TABLE IF EXISTS `dianyingleixing`;

CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingleixing` (`dianyingleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1619653799356 DEFAULT CHARSET=utf8 COMMENT='电影类型';

/*Data for the table `dianyingleixing` */

insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (21,'2021-04-29 07:29:35','电影类型1');
insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (22,'2021-04-29 07:29:35','电影类型2');
insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (23,'2021-04-29 07:29:35','电影类型3');
insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (24,'2021-04-29 07:29:35','电影类型4');
insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (25,'2021-04-29 07:29:35','电影类型5');
insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (26,'2021-04-29 07:29:35','电影类型6');
insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (1619653792664,'2021-04-29 07:49:52','喜剧片');
insert  into `dianyingleixing`(`id`,`addtime`,`dianyingleixing`) values (1619653799355,'2021-04-29 07:49:59','动作片');

/*Table structure for table `dianyingxinxi` */

DROP TABLE IF EXISTS `dianyingxinxi`;

CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `zhipiandiqu` varchar(200) DEFAULT NULL COMMENT '制片地区',
  `yuyan` varchar(200) DEFAULT NULL COMMENT '语言',
  `shangyingriqi` date DEFAULT NULL COMMENT '上映日期',
  `pianzhang` varchar(200) DEFAULT NULL COMMENT '片长',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `dianyingjieshao` longtext COMMENT '电影介绍',
  `dianyingbofang` varchar(200) DEFAULT NULL COMMENT '电影播放',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619653849297 DEFAULT CHARSET=utf8 COMMENT='电影信息';

/*Data for the table `dianyingxinxi` */

insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`dianyingleixing`,`haibao`,`daoyan`,`zhuyan`,`zhipiandiqu`,`yuyan`,`shangyingriqi`,`pianzhang`,`pingfen`,`dianyingjieshao`,`dianyingbofang`,`clicktime`,`clicknum`) values (31,'2021-04-29 07:29:35','电影名称1','电影类型1','http://localhost:8080/springbootmts92/upload/1619653693896.jpg','导演1','主演1','制片地区1','语言1','2021-04-29','片长1','评分1','<p>电影介绍1</p>','','2021-04-29 07:46:11',3);
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`dianyingleixing`,`haibao`,`daoyan`,`zhuyan`,`zhipiandiqu`,`yuyan`,`shangyingriqi`,`pianzhang`,`pingfen`,`dianyingjieshao`,`dianyingbofang`,`clicktime`,`clicknum`) values (32,'2021-04-29 07:29:35','电影名称2','电影类型2','http://localhost:8080/springbootmts92/upload/1619652914530.jpg','导演2','主演2','制片地区2','语言2','2021-04-29','片长2','评分2','<p>电影介绍2</p>','','2021-04-29 07:35:08',5);
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`dianyingleixing`,`haibao`,`daoyan`,`zhuyan`,`zhipiandiqu`,`yuyan`,`shangyingriqi`,`pianzhang`,`pingfen`,`dianyingjieshao`,`dianyingbofang`,`clicktime`,`clicknum`) values (33,'2021-04-29 07:29:35','电影名称3','电影类型3','http://localhost:8080/springbootmts92/upload/1619652930616.jpg','导演3','主演3','制片地区3','语言3','2021-04-29','片长3','评分3','<p>电影介绍3</p>','','2021-04-29 07:35:18',4);
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`dianyingleixing`,`haibao`,`daoyan`,`zhuyan`,`zhipiandiqu`,`yuyan`,`shangyingriqi`,`pianzhang`,`pingfen`,`dianyingjieshao`,`dianyingbofang`,`clicktime`,`clicknum`) values (34,'2021-04-29 07:29:35','电影名称4','电影类型4','http://localhost:8080/springbootmts92/upload/1619652952764.jpg','导演4','主演4','制片地区4','语言4','2021-04-29','片长4','评分4','<p>电影介绍4</p>','','2021-04-29 07:52:14',7);
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`dianyingleixing`,`haibao`,`daoyan`,`zhuyan`,`zhipiandiqu`,`yuyan`,`shangyingriqi`,`pianzhang`,`pingfen`,`dianyingjieshao`,`dianyingbofang`,`clicktime`,`clicknum`) values (35,'2021-04-29 07:29:35','电影名称5','电影类型5','http://localhost:8080/springbootmts92/upload/1619652963705.jpg','导演5','主演5','制片地区5','语言5','2021-04-29','片长5','评分5','<p>电影介绍5</p>','','2021-04-29 07:35:58',6);
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`dianyingleixing`,`haibao`,`daoyan`,`zhuyan`,`zhipiandiqu`,`yuyan`,`shangyingriqi`,`pianzhang`,`pingfen`,`dianyingjieshao`,`dianyingbofang`,`clicktime`,`clicknum`) values (36,'2021-04-29 07:29:35','电影名称6','电影类型6','http://localhost:8080/springbootmts92/upload/1619652974168.jpg','导演6','主演6','制片地区6','语言6','2021-04-29','片长6','评分6','<p>电影介绍6</p>','','2021-04-29 07:52:46',12);
insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`dianyingleixing`,`haibao`,`daoyan`,`zhuyan`,`zhipiandiqu`,`yuyan`,`shangyingriqi`,`pianzhang`,`pingfen`,`dianyingjieshao`,`dianyingbofang`,`clicktime`,`clicknum`) values (1619653849296,'2021-04-29 07:50:49','你好，李焕英','喜剧片','http://localhost:8080/springbootmts92/upload/1619653813219.jpg','贾玲','贾玲张小斐','中国大陆','国语','2021-02-12','128分钟','9.1','<p>2001年的某一天，刚刚考上大学的贾晓玲经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......。</p>','http://localhost:8080/springbootmts92/upload/1619653844475.mp4','2021-04-29 07:54:35',3);

/*Table structure for table `discussdianyingxinxi` */

DROP TABLE IF EXISTS `discussdianyingxinxi`;

CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619654073431 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';

/*Data for the table `discussdianyingxinxi` */

insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-04-29 07:29:35',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (82,'2021-04-29 07:29:35',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (83,'2021-04-29 07:29:35',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (84,'2021-04-29 07:29:35',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (85,'2021-04-29 07:29:35',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (86,'2021-04-29 07:29:35',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619654073430,'2021-04-29 07:54:32',1619653849296,1619653928308,'1','看了你好，李焕英，让我想起了小时候经常跟妈妈去工厂车间的场景，感谢贾玲，让我铭记了那句话，一定要让妈妈高兴','可以查看用户的评论，可以回复，也可以删除');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619654150479 DEFAULT CHARSET=utf8 COMMENT='论坛交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (41,'2021-04-29 07:29:35','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (42,'2021-04-29 07:29:35','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (43,'2021-04-29 07:29:35','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (45,'2021-04-29 07:29:35','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (46,'2021-04-29 07:29:35','帖子标题6','帖子内容6',6,6,'用户名6','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1619654140020,'2021-04-29 07:55:39','看你好，李焕英有感','<p>希望世间所有的妈妈都能被时光温柔对待，&ldquo;愿你的亲热永年少，涌在我最美好的祈祷&rdquo;大张伟老师深情地为《你好，李焕英》献上了片尾曲，是什么原因能让贾玲的这部处女作不断走高，让全国观众被它动容呢？是妈妈。《你好，李焕英》是由贾玲的真实经历改编而成，亲情是本部电影的关键词。它是贾玲2016年参加喜剧竞演节目《喜剧总动员》时的作品，讲述了贾玲穿越回母亲的年轻时代，与妈妈成为好姐妹并帮妈妈追求心爱男生的故事。</p>\n<p>&nbsp;</p>\n<p>《你好，李焕英》不单单是一声你好，也是漫长的再见；不仅仅是一部电影，也是一封寄给母亲的情书。&ldquo;从我记忆起，妈妈就是中年妇女的模样。&rdquo;，很多人都会有这样的感受。这类电影笑着笑着就哭了。</p>\n<p>&nbsp;</p>\n<p>春节电影档，由贾玲，沈腾，张小斐，陈赫主演的《你好,李焕英》，口碑备受好评。其中，今天看到关于贾玲的采访。记者问她&ldquo;为什么这部影片，英文名叫hi mom，中文名反而叫：你好李焕英呢？&rdquo;贾玲回答道&ldquo;因为妈妈不仅是妈妈，她首先是她自己。&rdquo;</p>\n<p>&nbsp;</p>\n<p>做母亲是伟大的。尽管这可能，会影响她的职业发展，身体健康状况。好像做母亲，为孩子付出一切，很值得提倡。其实不然，因为母亲，她也是个个体，她也有自己的情绪，她也能有自己的生活，也可以好好的爱自己。孩子不应占据妈妈生活的全部，不应为繁衍而生育，孩子的存在应该是：让原本的生活，锦上添花。</p>',0,1619653928308,'1','开放');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619654207644 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (71,'2021-04-29 07:29:35',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (72,'2021-04-29 07:29:35',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (73,'2021-04-29 07:29:35',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (74,'2021-04-29 07:29:35',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (75,'2021-04-29 07:29:35',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (76,'2021-04-29 07:29:35',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619654207643,'2021-04-29 07:56:46',1619653928308,'1','有什么建议反馈这里可以进行留言','这里可以回复用户的留言');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619653903630 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-04-29 07:29:35','标题1','简介1','http://localhost:8080/springbootmts92/upload/1619652987340.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (62,'2021-04-29 07:29:35','标题2','简介2','http://localhost:8080/springbootmts92/upload/1619653004535.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (63,'2021-04-29 07:29:35','标题3','简介3','http://localhost:8080/springbootmts92/upload/1619653020719.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (64,'2021-04-29 07:29:35','标题4','简介4','http://localhost:8080/springbootmts92/upload/1619653030299.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (65,'2021-04-29 07:29:35','标题5','简介5','http://localhost:8080/springbootmts92/upload/1619653041375.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (66,'2021-04-29 07:29:35','标题6','简介6','http://localhost:8080/springbootmts92/upload/1619653050305.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619653903629,'2021-04-29 07:51:43','公告A','公告','http://localhost:8080/springbootmts92/upload/1619653889324.jpg','<p>公告内容IJGIRKLJGYHTFILYH</p><p><img src=\"http://localhost:8080/springbootmts92/upload/1619653902115.jpg\"></p>');

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
) ENGINE=InnoDB AUTO_INCREMENT=1619654021043 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619654021042,'2021-04-29 07:53:40',1619653928308,1619653849296,'dianyingxinxi','你好，李焕英','http://localhost:8080/springbootmts92/upload/1619653813219.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','lw0r4t732d4co21eckff5i3g3gjlu6fq','2021-04-29 07:34:15','2021-05-04 09:34:50');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619653928308,'1','yonghu','用户','1ffqs3hu5hbpdplbt8xisgxjh474lsvj','2021-04-29 07:52:13','2021-04-29 08:52:14');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-04-29 07:29:35');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619653928309 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`) values (11,'2021-04-29 07:29:35','用户1','123456','姓名1','http://localhost:8080/springbootmts92/upload/yonghu_touxiang1.jpg','男','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`) values (12,'2021-04-29 07:29:35','用户2','123456','姓名2','http://localhost:8080/springbootmts92/upload/yonghu_touxiang2.jpg','男','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`) values (13,'2021-04-29 07:29:35','用户3','123456','姓名3','http://localhost:8080/springbootmts92/upload/yonghu_touxiang3.jpg','男','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`) values (14,'2021-04-29 07:29:35','用户4','123456','姓名4','http://localhost:8080/springbootmts92/upload/yonghu_touxiang4.jpg','男','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`) values (15,'2021-04-29 07:29:35','用户5','123456','姓名5','http://localhost:8080/springbootmts92/upload/yonghu_touxiang5.jpg','男','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`) values (16,'2021-04-29 07:29:35','用户6','123456','姓名6','http://localhost:8080/springbootmts92/upload/yonghu_touxiang6.jpg','男','13823888886');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`) values (1619653928308,'2021-04-29 07:52:08','1','1','陈一','http://localhost:8080/springbootmts92/upload/1619653942804.jpg','女','12345678945');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
