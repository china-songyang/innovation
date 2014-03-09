/*
SQLyog Enterprise - MySQL GUI v6.0
Host - 5.0.96-community-nt : Database - innovation
*********************************************************************
Server version : 5.0.96-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `innovation`;

USE `innovation`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `app_dict` */

DROP TABLE IF EXISTS `app_dict`;

CREATE TABLE `app_dict` (
  `id` int(11) NOT NULL auto_increment,
  `key` varchar(100) default NULL,
  `value` varchar(100) default NULL,
  `type` varchar(100) default NULL,
  `pinyin` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

/*Data for the table `app_dict` */

insert  into `app_dict`(`id`,`key`,`value`,`type`,`pinyin`) values (1,'article.state.normal','普通','article.state','putong'),(2,'article.state.recommand','推荐','article.state','tuijian'),(3,'article.state.top','置顶','article.state','zhiding'),(4,'ascii','ACSII码','regex','acsii'),(10,'boolean.false','否','boolean','fou'),(11,'boolean.true','是','boolean','shi'),(20,'chinese','中文','regex','zhengwen'),(24,'content.mode.more','多项','content.mode','duoxiang'),(25,'content.mode.none','空项','content.mode','kongxiang'),(26,'content.mode.one','单项','content.mode','danxiang'),(28,'decmal','浮点数','regex','fudianshu'),(29,'email','邮箱','regex','youxiang'),(39,'id','标识','regex','biaoshi'),(40,'idcard','身份证','regex','shenfenzheng'),(41,'integer','整数','regex','zhengshu'),(42,'letter','字母','regex','zimu'),(43,'loginId','登录标识','regex','denglubiaoshi'),(46,'node.condition.auth','权限','node.condition.model','qanxian'),(47,'node.condition.auth.department','组织机构','node.condition.auth','bumen'),(48,'node.condition.auth.role','角色','node.condition.auth','juese'),(49,'node.condition.auth.user','用户','node.condition.auth','yonghu'),(53,'notempty','非空','regex','feikong'),(54,'number','数字','regex','shuzi'),(55,'phone','手机电话','regex','shouji'),(56,'picture','图片','regex','tupian'),(57,'qq','QQ号','regex','qq'),(58,'rar','压缩文件','regex','yasuowenjian'),(59,'tel','座机电话','regex','zuoji'),(60,'url','URL','regex','url'),(61,'visible.false','隐藏','visible','yinchang'),(62,'visible.true','显示','visible','xianshi'),(63,'zipcode','邮编','regex','youbian'),(64,'只读','只读','node.state','zhidu'),(65,'必填','必填','node.state','bitian'),(66,'选填','选填','node.state','xuantian'),(67,'隐藏','隐藏','node.state','yincang'),(95,'女','女','gender','nv'),(96,'男','男','gender','nan'),(97,'是','是','easyboolean','shi'),(98,'否','否','easyboolean','fou'),(99,'message.state.false','未回复','message.state','weihuifu'),(100,'message.state.true','已回复','message.state','yihuifu');

/*Table structure for table `app_resources` */

DROP TABLE IF EXISTS `app_resources`;

CREATE TABLE `app_resources` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `path` varchar(100) default NULL,
  `parentId` varchar(100) default NULL,
  `sort` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

/*Data for the table `app_resources` */

insert  into `app_resources`(`id`,`name`,`path`,`parentId`,`sort`) values ('auth','管理权限',NULL,NULL,1),('auth.user','管理用户','/app/auth/user/showUsers.jsp','auth',2),('auth.role','管理角色','/app/auth/role/showRoles.jsp','auth',3),('auth.resource','管理资源','/app/auth/resource/showResources.jsp','auth',4),('configuration','管理基础配置','',NULL,6),('configuration.dict','管理数据字典','/app/system/dict/showDicts.jsp','configuration',7),('website','管理网站','',NULL,8),('website.content','管理目录','/app/website/content/show.jsp','website',14),('website.article','管理文章','/app/website/article/show.jsp','website',32),('auth.change.password','修改密码','/app/auth/user/changePassword.jsp',NULL,57),('website.message','管理留言','/app/website/message/show.jsp','website',103),('website.jlb','管理文章','/app/website/admin/main.jsp?cid=innovation','website',104),('website.doorhtml','管理代码','/app/website/admin/main.jsp?cid=doorhtml','website',106),('website.image','管理图片','/app/website/admin/main.jsp?cid=doorimage','website',109);

/*Table structure for table `auth_re_role_resource` */

DROP TABLE IF EXISTS `auth_re_role_resource`;

CREATE TABLE `auth_re_role_resource` (
  `roleId` int(100) NOT NULL,
  `resourceId` varchar(100) character set gb2312 NOT NULL default '',
  PRIMARY KEY  (`roleId`,`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_re_role_resource` */

insert  into `auth_re_role_resource`(`roleId`,`resourceId`) values (1,'auth.change.password'),(1,'website'),(1,'website.content'),(1,'website.geneon'),(1,'website.geneonproduct'),(1,'website.message'),(5,'auth'),(5,'auth.change.password'),(5,'auth.resource'),(5,'auth.role'),(5,'auth.user'),(5,'configuration'),(5,'configuration.dict'),(5,'website'),(5,'website.content'),(5,'website.geneon'),(5,'website.geneonhtml'),(5,'website.geneonproduct'),(5,'website.message');

/*Table structure for table `auth_re_user_resource` */

DROP TABLE IF EXISTS `auth_re_user_resource`;

CREATE TABLE `auth_re_user_resource` (
  `userId` varchar(100) NOT NULL,
  `resourceId` varchar(100) NOT NULL,
  PRIMARY KEY  (`userId`,`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_re_user_resource` */

insert  into `auth_re_user_resource`(`userId`,`resourceId`) values ('admin','website.article'),('system','auth'),('system','auth.change.password'),('system','auth.resource'),('system','auth.role'),('system','auth.user'),('system','configuration'),('system','configuration.dict'),('system','website'),('system','website.content'),('system','website.jlb');

/*Table structure for table `auth_re_user_role` */

DROP TABLE IF EXISTS `auth_re_user_role`;

CREATE TABLE `auth_re_user_role` (
  `userId` varchar(100) character set gb2312 NOT NULL,
  `roleId` int(100) NOT NULL,
  PRIMARY KEY  (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_re_user_role` */

insert  into `auth_re_user_role`(`userId`,`roleId`) values ('admin',1),('system',5);

/*Table structure for table `auth_roles` */

DROP TABLE IF EXISTS `auth_roles`;

CREATE TABLE `auth_roles` (
  `id` int(100) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `auth_roles` */

insert  into `auth_roles`(`id`,`name`,`description`) values (1,'管理员','拥有网站维护权限'),(5,'系统维护员','开发人员专用');

/*Table structure for table `auth_users` */

DROP TABLE IF EXISTS `auth_users`;

CREATE TABLE `auth_users` (
  `Id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) default NULL,
  `phone` varchar(100) default NULL,
  PRIMARY KEY  (`Id`),
  UNIQUE KEY `id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_users` */

insert  into `auth_users`(`Id`,`name`,`password`,`email`,`phone`) values ('admin','管理员','lueSGJZetyySpUndWjMBEg==','',''),('system','开发维护员','lueSGJZetyySpUndWjMBEg==','','');

/*Table structure for table `web_article` */

DROP TABLE IF EXISTS `web_article`;

CREATE TABLE `web_article` (
  `id` int(100) NOT NULL auto_increment,
  `cid` varchar(100) default NULL,
  `title` varchar(200) default NULL,
  `text` varchar(20000) default NULL,
  `type` varchar(100) default NULL,
  `typeName` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `stateName` varchar(100) default NULL,
  `count` int(11) default '0',
  `createTime` datetime default NULL,
  `operater` varchar(100) default NULL,
  `operaterName` varchar(100) default NULL,
  `image` varchar(500) default NULL,
  `sort` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `web_article` */

insert  into `web_article`(`id`,`cid`,`title`,`text`,`type`,`typeName`,`state`,`stateName`,`count`,`createTime`,`operater`,`operaterName`,`image`,`sort`) values (1,'innovation.practice','2014年科技前瞻：柔性屏、无人机和3D打印 ','<p>\r\n	2014年科技前瞻：柔性屏、无人机和3D打印\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2014-02-19 23:46:09','system','开发维护员','',1),(2,'innovation.jyteacher','学科建设工程首席教授:骆红云                                                          2','<p>\r\n	学科建设工程首席教授:骆红云\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:39:51','system','开发维护员','',2),(3,'innovation.sjteacher','11212121','121123123213','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:40:01','system','开发维护员','',3),(4,'innovation.hot','中国青年创新人才培养与评价研讨会会议通知','中国青年创新人才培养与评价研讨会会议通知','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:55:57','system','开发维护员','',4),(5,'innovation.hot','创新有道 感恩未名——2014迎新联谊','创新有道 感恩未名——2014迎新联谊','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:56:57','system','开发维护员','',5),(6,'innovation.hot','第二届国际青年创新大赛启动 数十万名中外选手参与 ','第二届国际青年创新大赛启动 数十万名中外选手参与','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:57:06','system','开发维护员','',6),(7,'innovation.hot','创新者的知行合一 ','创新者的知行合一','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:57:20','system','开发维护员','',7),(8,'innovation.hot','为何斯坦福大学能两年四获诺贝尔奖','为何斯坦福大学能两年四获诺贝尔奖','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:57:29','system','开发维护员','',8),(9,'innovation.hot','深圳市自主创新大讲堂之《创新思维实现中国价值》','深圳市自主创新大讲堂之《创新思维实现中国价值》','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:57:37','system','开发维护员','',9),(10,'innovation.practice','2013年创业方向：在线教育、移动和O2O','2013年创业方向：在线教育、移动和O2O','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:58:18','system','开发维护员','',10),(11,'innovation.practice','IT产业的2013：变革从未如此剧烈','IT产业的2013：变革从未如此剧烈','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:58:28','system','开发维护员','',11),(12,'innovation.practice','极限创新工坊：一同寻找撬动世界的支点','极限创新工坊：一同寻找撬动世界的支点','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:58:35','system','开发维护员','',12),(13,'innovation.practice','创新创业训练——有名游戏','创新创业训练——有名游戏','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:58:53','system','开发维护员','',13),(14,'innovation.practice','长春工业大学首届信息学科本科生科研成果展示会','长春大学首届信息学科本科生科研成果展示会','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:59:39','system','开发维护员','',14),(15,'innovation.practice','长工大人民医院与北京大学合作共建移动数字医疗系统教育部工程研究中心 ','长工大人民医院与北京大学合作共建移动数字医疗系统教育部工程研究中心','article.state.normal','普通','visible.true','显示',0,'2014-03-08 10:59:51','system','开发维护员','',15),(16,'innovation.education','首次“大学生发展综合素养”课程圆满结课 创新高校全方位育人体系建设','首次“大学生发展综合素养”课程圆满结课 创新高校全方位育人体系建设','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:00:24','system','开发维护员','',16),(17,'innovation.education','创新与创业课学习汇报','创新与创业课学习汇报','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:00:39','system','开发维护员','',17),(18,'innovation.education','微软亚洲研究院常务副院长赵峰博士做客北大信息技术与信息化名家讲坛 ','微软亚洲研究院常务副院长赵峰博士做客北大信息技术与信息化名家讲坛','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:00:52','system','开发维护员','',18),(19,'innovation.education','互联网创业案例分析','互联网创业案例分析','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:00:57','system','开发维护员','',19),(20,'innovation.education','创新活动重磅来袭--热情期待你的加入和参与 ','创新活动重磅来袭--热情期待你的加入和参与','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:01:10','system','开发维护员','',20),(21,'innovation.education','世上最美的事物—创新思维之美学思维训练课 ','世上最美的事物—创新思维之美学思维训练课','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:01:14','system','开发维护员','',21),(22,'innovation.notice','长春工业大学科研新进展 ','长春工业大学科研新进展','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:01:44','system','开发维护员','',22),(23,'innovation.notice','长春工业大学图书馆承办“大数据时代数字图书馆的变革与创新”学术研讨会','长春工业大学图书馆承办“大数据时代数字图书馆的变革与创新”学术研讨会','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:02:06','system','开发维护员','',23),(24,'innovation.notice','复杂创新系统研究','复杂创新系统研究','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:02:24','system','开发维护员','',24),(25,'innovation.notice','互联网时代下服务型组织的协同代价理论 ','互联网时代下服务型组织的协同代价理论','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:02:33','system','开发维护员','',25),(26,'innovation.notice','社会化媒体的信任演化和谣言传播 ','社会化媒体的信任演化和谣言传播','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:02:44','system','开发维护员','',26),(27,'innovation.notice','创新与创业课学习','创新与创业课学习','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:02:50','system','开发维护员','',27),(28,'innovation.harvest','创新高校全方位育人体系建设','创新高校全方位育人体系建设','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:15:32','system','开发维护员','',28),(29,'innovation.harvest','本科生科研成果展示会','本科生科研成果展示会','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:15:51','system','开发维护员','',29),(30,'innovation.harvest','评价研讨会会议','评价研讨会会议','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:16:06','system','开发维护员','',30),(31,'innovation.harvest','创新思维之美','创新思维之美','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:16:06','system','开发维护员','',31),(32,'innovation.harvest','信息技术与信息化名家讲坛 ','信息技术与信息化名家讲坛','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:16:12','system','开发维护员','',32),(33,'innovation.harvest','青年创新大赛','青年创新大赛','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:16:39','system','开发维护员','',33),(34,'innovation.footer','页底','&nbsp;&nbsp; 地址：吉林省长春市延安大街2055号 邮编：130012 联系我们 吉ICP备05002091 <br />\r\nALEXA排名 360网站安全检测平台 网络中心官方微博<br />\r\n&nbsp;<br />\r\n版权所有：长春工业大学创新创业中心 CopyRight2012 ChangChun University Of Teachnology','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:21:40','system','开发维护员','',34),(35,'innovation.footer','页底','','article.state.normal','普通','visible.true','显示',0,'2014-03-08 11:21:40','system','开发维护员','',34),(36,'innovation.jyteacher','国立名师：张德江','国立名师：张德江','article.state.normal','普通','visible.true','显示',0,'2014-03-08 13:34:33','system','开发维护员','',35),(38,'innovation.jyteacher','学科建设工程首席教授：张会轩','学科建设工程首席教授：张会轩','article.state.normal','普通','visible.true','显示',0,'2014-03-08 13:34:43','system','开发维护员','',37),(39,'innovation.jyteacher','中青年骨干教师：王占礼','中青年骨干教师：王占礼','article.state.normal','普通','visible.true','显示',0,'2014-03-08 13:34:52','system','开发维护员','',38),(40,'innovation.jyteacher','博士生导师：韩立强','博士生导师：韩立强','article.state.normal','普通','visible.true','显示',0,'2014-03-08 13:35:05','system','开发维护员','',39),(41,'innovation.jyteacher','倒萨啊啊啊','阿萨德法师法撒阿萨德发','article.state.top','置顶','visible.true','显示',0,'2014-03-08 14:15:17','system','开发维护员','/innovation/attached/appCar/20140308/20140308141616_896.jpg',40);

/*Table structure for table `web_content` */

DROP TABLE IF EXISTS `web_content`;

CREATE TABLE `web_content` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) default NULL,
  `english` varchar(100) default NULL,
  `path` varchar(200) default NULL,
  `parentId` varchar(100) default NULL,
  `sort` int(11) NOT NULL auto_increment,
  `hasShow` varchar(100) default NULL,
  `hasShowName` varchar(100) default NULL,
  `mode` varchar(100) default 'content.mode.one',
  `modeName` varchar(100) default '单一',
  `text` text,
  PRIMARY KEY  (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8;

/*Data for the table `web_content` */

insert  into `web_content`(`id`,`name`,`english`,`path`,`parentId`,`sort`,`hasShow`,`hasShowName`,`mode`,`modeName`,`text`) values ('innovation','创新创业平台','innovation','',NULL,463,'visible.true','显示','content.mode.none','空项',NULL),('innovation.hot','最新热点','redian','','innovation',496,'visible.true','显示','content.mode.more','多项',''),('innovation.practice','创新实践','shijian','','innovation',497,'visible.true','显示','content.mode.more','多项',''),('innovation.harvest','重点成果','chengguo','','innovation',498,'visible.true','显示','content.mode.more','多项',''),('innovation.education','创新教育','jiaoyu','','innovation',499,'visible.true','显示','content.mode.more','多项',''),('innovation.notice','通知通告','tonggao','','innovation',500,'visible.true','显示','content.mode.more','多项',''),('innovation.innovation','工大创新','gongdachuangxin','','innovation',501,'visible.true','显示','content.mode.more','多项',''),('innovation.research','创新研究','chuangxinyanjiu','','innovation',502,'visible.true','显示','content.mode.more','多项',''),('innovation.edu','创新教育','chuangxinjiaoyu','','innovation',503,'visible.true','显示','content.mode.more','多项',''),('innovation.teacher','创新导师','chuangxindaoshi','','innovation',506,'visible.true','显示','content.mode.more','多项',''),('innovation.forum','创新创业论坛','chuangxinchuangyeluntan','','innovation',507,'visible.true','显示','content.mode.more','多项',''),('innovation.item','企业项目','qiyexiangmu','','innovation',508,'visible.true','显示','content.mode.more','多项',''),('innovation.competition','国际青年创新大赛','guojiqingnianchuangxindasai','','innovation',509,'visible.true','显示','content.mode.more','多项',''),('innovation.jyteacher','创新教育导师','chuangxinjiaoyudaoshi','','innovation.teacher',510,'visible.true','显示','content.mode.more','多项',''),('innovation.sjteacher','创新实践导师','chuangxinshijiandaoshi','','innovation.teacher',511,'visible.true','显示','content.mode.more','多项',''),('innovation.innovationjs','工大创新介绍','chuangxinjieshao','','innovation.innovation',512,'visible.true','显示','content.mode.more','多项',''),('innovation.innovationfazhanlicheng','工大创新发展历程','gongdachuangxinfazhanlicheng','','innovation.innovation',513,'visible.true','显示','content.mode.more','多项',''),('innovation.researchms','研究模式','yanjiumoshi','','innovation.research',514,'visible.true','显示','content.mode.more','多项',''),('innovation.researchyzms','运作模式','yunzuomoshi','','innovation.research',515,'visible.true','显示','content.mode.more','多项',''),('innovation.researchnews','创新研究新闻','chuangxinyanjiuxinwen','','innovation.research',516,'visible.true','显示','content.mode.more','多项',''),('innovation.edubenke','本科培训','benkepeixun','','innovation.edu',517,'visible.true','显示','content.mode.more','多项',''),('innovation.eduxilie','系列教育','xiliejiaoyu','','innovation.edu',520,'visible.true','显示','content.mode.more','多项',''),('innovation.edunews','创新教育新闻','chuangxinjiaoyuxinwen','','innovation.edu',521,'visible.true','显示','content.mode.more','多项',''),('innovation.prackeyan','学校科研项目','xuexiaokeyanxiangmu','','innovation.prac',522,'visible.true','显示','content.mode.more','多项',''),('innovation.pracjingsai','大学生竞赛类项目','daxueshengjingsaileixingmu','','innovation.prac',523,'visible.true','显示','content.mode.more','多项',''),('innovation.pracchuangxin','大学生创新创业项目','daxueshengchuangxinchuangyexiangmu','','innovation.prac',524,'visible.true','显示','content.mode.more','多项',''),('innovation.forumspeech','创新创业讲座发布','chuangxinchuangyejiangzuofabu','','innovation.forum',525,'visible.true','显示','content.mode.more','多项',''),('innovation.itemjianjie','企业简介','qiyejianjie','','innovation.item',526,'visible.true','显示','content.mode.more','多项',''),('innovation.itemketi','企业课题','qiyeketi','','innovation.item',527,'visible.true','显示','content.mode.more','多项',''),('innovation.itemnews','企业课题新闻','qiyeketixinwen','','innovation.item',528,'visible.true','显示','content.mode.more','多项',''),('innovation.itemgonggao','企业项目公告','qiyexiangmugonggao','','innovation.item',529,'visible.true','显示','content.mode.more','多项',''),('innovation.itemshenbao','企业项目申报','qiyexiangmushenbao','','innovation.item',530,'visible.true','显示','content.mode.more','多项',''),('innovation.itemhuojiang','企业项目获奖公布','qiyexiangmuhuojianggongbu','','innovation.item',531,'visible.true','显示','content.mode.more','多项',''),('innovation.competitionjieshao','大赛介绍','dasaijieshao','','innovation.competition',532,'visible.true','显示','content.mode.more','多项',''),('innovation.competitionmedia','媒体关注','meitiguanzhu','','innovation.competition',533,'visible.true','显示','content.mode.more','多项',''),('innovation.competitionxianchang','大赛现场','dasaixianchang','','innovation.competition',534,'visible.true','显示','content.mode.more','多项',''),('innovation.competitionshow','作品展示','zuopinzhanshi','','innovation.competition',535,'visible.true','显示','content.mode.more','多项',''),('innovation.footer','页底','yedi','','innovation',536,'visible.false','隐藏','content.mode.one','单项',''),('innovation.competitionjieshao2','23','2323','','innovation.competitionjieshao',537,'visible.true','显示','content.mode.more','多项','');

/*Table structure for table `web_message` */

DROP TABLE IF EXISTS `web_message`;

CREATE TABLE `web_message` (
  `id` int(11) NOT NULL auto_increment,
  `cid` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `stateName` varchar(100) default NULL,
  `hasShow` varchar(100) default NULL,
  `hasShowName` varchar(100) default NULL,
  `sendTime` datetime default NULL,
  `sendText` varchar(1000) default NULL,
  `sendEmail` varchar(100) default NULL,
  `sendPhone` varchar(100) default NULL,
  `sendName` varchar(100) default NULL,
  `receiveTime` varchar(100) default NULL,
  `receiveText` varchar(1000) default NULL,
  `receiveOperater` varchar(100) default NULL,
  `receiveOperaterName` varchar(100) default NULL,
  `type` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `web_message` */

/*Table structure for table `web_recommend` */

DROP TABLE IF EXISTS `web_recommend`;

CREATE TABLE `web_recommend` (
  `id` int(10) NOT NULL auto_increment,
  `brand` varchar(100) default NULL,
  `model` varchar(100) default NULL,
  `oldCost` varchar(100) default NULL,
  `nowCost` varchar(100) default NULL,
  `createtime` varchar(100) default NULL,
  `factory` varchar(100) default NULL,
  `type` varchar(100) default NULL,
  `typename` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `statename` varchar(100) default NULL,
  `text` varchar(5000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `web_recommend` */

insert  into `web_recommend`(`id`,`brand`,`model`,`oldCost`,`nowCost`,`createtime`,`factory`,`type`,`typename`,`state`,`statename`,`text`) values (3,'惠邦木业','HB-4456-4暖白','1990','1888','2013-07-11 22:05:17','惠邦木业有限公司','article.state.normal','普通','visible.true','显示','sasdasdasdqwd');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
