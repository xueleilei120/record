/*
Navicat MySQL Data Transfer

Source Server         : liuyc
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : record

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-02-18 11:19:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '第一组');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 用户信息', '7', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 用户信息', '7', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 用户信息', '7', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('23', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('24', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('25', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('26', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('27', 'Can view 用户信息', '7', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('28', 'Can add Bookmark', '8', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('29', 'Can change Bookmark', '8', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete Bookmark', '8', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('31', 'Can add User Setting', '9', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('32', 'Can change User Setting', '9', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete User Setting', '9', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('34', 'Can add User Widget', '10', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('35', 'Can change User Widget', '10', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete User Widget', '10', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('37', 'Can add log entry', '11', 'add_log');
INSERT INTO `auth_permission` VALUES ('38', 'Can change log entry', '11', 'change_log');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete log entry', '11', 'delete_log');
INSERT INTO `auth_permission` VALUES ('40', 'Can view Bookmark', '8', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('41', 'Can view log entry', '11', 'view_log');
INSERT INTO `auth_permission` VALUES ('42', 'Can view User Setting', '9', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('43', 'Can view User Widget', '10', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 笔记', '13', 'add_notes');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 笔记', '13', 'change_notes');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 笔记', '13', 'delete_notes');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 笔记', '13', 'view_notes');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户笔记', '14', 'add_usernotes');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户笔记', '14', 'change_usernotes');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户笔记', '14', 'delete_usernotes');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 用户笔记', '14', 'view_usernotes');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 轮播图', '15', 'add_banner');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 轮播图', '15', 'change_banner');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 轮播图', '15', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 轮播图', '15', 'view_banner');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$RO7KfsmMZHnf$W9v/BXAVuNLA2IZpV2Wnn3EyJ+kK7zCZLHBfME4DDBc=', '2017-02-12 02:03:47.081000', '1', 'liuyc', '', '', '2@qq.com', '1', '1', '2017-02-12 02:03:36.830000');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$24000$CBtmn5E2t5yh$nFkPQZwAq47frX9iVt7igVwLyodS2t+qVYoF/6tg2eI=', null, '0', 'xueleilei', '', '', '', '0', '1', '2017-02-12 02:04:03.779000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2017-02-12 02:04:03.802000', '2', 'xueleilei', '1', 'Added.', null, '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('13', 'notes', 'notes');
INSERT INTO `django_content_type` VALUES ('14', 'operation', 'usernotes');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('15', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('11', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('10', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-02-12 02:01:01.412000');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-02-12 02:01:08.740000');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-02-12 02:01:10.356000');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-02-12 02:01:10.440000');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-02-12 02:01:11.507000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-02-12 02:01:12.289000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-02-12 02:01:13.175000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-02-12 02:01:13.232000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-02-12 02:01:13.800000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-02-12 02:01:13.855000');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-02-12 02:01:13.913000');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2017-02-12 02:01:14.423000');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2017-02-12 02:09:32.454000');
INSERT INTO `django_migrations` VALUES ('14', 'xadmin', '0001_initial', '2017-02-12 10:36:56.537000');
INSERT INTO `django_migrations` VALUES ('15', 'notes', '0001_initial', '2017-02-12 10:49:18.859000');
INSERT INTO `django_migrations` VALUES ('16', 'operation', '0001_initial', '2017-02-12 10:49:20.462000');
INSERT INTO `django_migrations` VALUES ('17', 'operation', '0002_auto_20170212_1335', '2017-02-12 13:35:16.607000');
INSERT INTO `django_migrations` VALUES ('18', 'users', '0002_banner', '2017-02-18 10:45:36.636000');
INSERT INTO `django_migrations` VALUES ('19', 'users', '0003_auto_20170218_1100', '2017-02-18 11:00:55.064000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('bq2jpm19fhuxl7lv298vywxmm8qhe1xw', 'YzU4NTc1NjZmOGQzMzgwNTc4YWYxYTg4ZTRmMzg3YWViYzMxNjI5ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJiYW5uZXIiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjlmYjI1YzZiOWE5MzMwZDg5MDU4M2YyMzUxNmUxZTMzYmJmYjcxMGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIndpemFyZF94YWRtaW51c2Vyd2lkZ2V0X2FkbWluX3dpemFyZF9mb3JtX3BsdWdpbiI6eyJzdGVwX2ZpbGVzIjp7fSwic3RlcCI6IldpZGdldFx1N2M3Ylx1NTc4YiIsImV4dHJhX2RhdGEiOnt9LCJzdGVwX2RhdGEiOnt9fX0=', '2017-03-04 11:09:59.324000');

-- ----------------------------
-- Table structure for notes_notes
-- ----------------------------
DROP TABLE IF EXISTS `notes_notes`;
CREATE TABLE `notes_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(21) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes_notes
-- ----------------------------
INSERT INTO `notes_notes` VALUES ('1', '标题1 科比·布莱恩特', '笔记描述 科比·布莱恩特', '科比是NBA最好的得分手之一，生涯赢得无数奖项[1]  ，突破、投篮、罚球、三分球他都驾轻就熟，几乎没有进攻盲区，单场比赛81分的个人纪录就有力地证明了这一点。除了疯狂的得分外，科比的组织能力也很出众，经常担任球队进攻的第一发起人。另外科比还是联盟中最好的防守人之一，贴身防守非常具有压迫性。', '0', 'notes/2017/02/28431672f0f4711386881cfe614d8e1e.jpg', '0', '笔记类别 nba', '笔记标签 nba', '2017-02-12 10:49:00.000000');
INSERT INTO `notes_notes` VALUES ('2', '阿伦·艾弗森', '阿伦·艾弗森', '阿伦·艾弗森（Allen Iverson），1975年6月7日出生于美国弗吉尼亚州汉普顿，前美国职业篮球运动员，司职后卫（双能卫），[1]  绰号“答案”（The Answer）[1]  /AI[1]  ，曾任美国男篮梦之队队长[1]  。\r\n阿伦·艾弗森在1996年NBA选秀中于第1轮第1位被费城76人队选中[1]  ，成为NBA状元秀。[1]  在14年的职业生涯中，阿伦·艾弗森[1]  曾效力于76人、掘金、灰熊以及活塞四支NBA球队，[1]  新秀赛季荣获最佳新秀以及新秀挑战赛MVP，[1]  4次荣膺NBA得分王，3次荣膺NBA抢断王[1]  ，2000至2010年[1]  11次入选NBA全明星阵容并夺得2次NBA全明星MVP，[1]  3次入选NBA最佳阵容一阵，[1]  3次入选NBA最佳阵容二阵[1]  ，2006年入选NBA最佳阵容三阵。[1]  2000-2001赛季，艾弗森打出了生涯最好表现，夺得常规赛MVP奖杯，并帮助76队打入NBA总决赛[1]  ，但并未夺冠。[1] \r\n2013年10月30日，阿伦·艾弗森正式宣布退役[1]  。他的NBA生涯均出战41.1分钟，获得26.7分、6.2次助攻和2.2次抢断。[1]  2014年3月1日，艾弗森3号球衣在76人主场对奇才的中场休息时退役。[1] \r\n2016年4月4日，阿伦·艾弗森正式入选2016年奈·史密斯篮球名人纪念堂。[2]', '0', 'notes/2017/02/ad9955e15b95189e865e6d4d03c0a9a5.jpg', '0', '笑话', '22', '2017-02-12 10:52:00.000000');

-- ----------------------------
-- Table structure for operation_usernotes
-- ----------------------------
DROP TABLE IF EXISTS `operation_usernotes`;
CREATE TABLE `operation_usernotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `note_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usernotes_user_id_19ee814f_fk_users_userprofile_id` (`user_id`),
  KEY `operation_usernotes_note_id_7a4fdcf0_fk_notes_notes_id` (`note_id`),
  CONSTRAINT `operation_usernotes_note_id_7a4fdcf0_fk_notes_notes_id` FOREIGN KEY (`note_id`) REFERENCES `notes_notes` (`id`),
  CONSTRAINT `operation_usernotes_user_id_19ee814f_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usernotes
-- ----------------------------
INSERT INTO `operation_usernotes` VALUES ('1', '2017-02-12 13:35:00.000000', '1', '1');
INSERT INTO `operation_usernotes` VALUES ('2', '2017-02-12 13:36:00.000000', '2', '1');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '1', 'banner/2017/02/28431672f0f4711386881cfe614d8e1e.jpg', 'http://baike.baidu.com/link?url=K1JPbZHdZNqV5f0V1xgVVd9I2TBPggZkDJEx0DjJbBtnC4-z2ZRpG2OgLLzQJIB34mDf3t0pT31apG0WS1t18GpWqh4iAC6eligWKQsEYByCsNc8siFYdlR2yhU1KKuw3SLKTK1jokukbq1kiZgujXn0XP8iyYa3FZG2fp75', '1', '2017-02-18 10:54:00.000000');
INSERT INTO `users_banner` VALUES ('2', '2', 'banner/2017/02/473528c5781fad9800e77e64939e9ac1.jpg', 'https://image.baidu.com/search/index?tn=baiduimage&ct=201326592&lm=-1&cl=2&ie=gbk&word=%CD%FE%C9%D9&fr=ala&ori_query=%E5%A8%81%E5%B0%91&ala=0&alatpl=sp&pos=0&hs=2&xthttps=111111', '2', '2017-02-18 10:56:00.000000');
INSERT INTO `users_banner` VALUES ('3', '3', 'banner/2017/02/ad9955e15b95189e865e6d4d03c0a9a5.jpg', 'http://baike.baidu.com/link?url=K2tQ2jOzOWCAEpLrNDRO64NuniO2IIuFAxK5LRJ9_HC0GMup1y4izNvnn4v4gfAZwJ0QlxuUBj3DOA-MUHJ4sLtsvgRJxbcVeNa9HtIUeK58nvsyeQ6hvUzgC_d_y6GMDaUyk1Nqx2K-8k9Th4Ky9gilRyiU1dMgg1N0oF4L', '3', '2017-02-18 11:03:00.000000');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$SijdQyTVlex9$zg2ds/BLFGPHlo9EDjNrrFhV4hlnWe1dujr+r+3pJjo=', '2017-02-18 10:07:25.320000', '1', 'liuyc', '永超', '刘', '290484002@qq.com', '1', '1', '2017-02-12 02:11:00.000000', '小刘', '2017-02-01', 'male', '仅以一村', '13584870659', 'images/2017/02/34deb8368f6290036f3d97a972f204bc_DchbX3F.jpg');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$24000$JMiMYykLKGbu$jCRgKnrOFgIghXknvMRFvKdRtdW5/PpALWIJMtoj64A=', '2017-02-13 23:24:09.310000', '0', 'xueleilei', '蕾蕾', '薛', '2@qq.com', '1', '1', '2017-02-12 19:57:00.000000', '小雪', '2017-02-12', 'female', '学家村', '13584870659', 'images/2017/02/73d2d9c3c1fc56daf97f9218e0c04523.jpg');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------
INSERT INTO `users_userprofile_groups` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------
INSERT INTO `users_userprofile_user_permissions` VALUES ('1', '1', '1');
INSERT INTO `users_userprofile_user_permissions` VALUES ('2', '1', '2');
INSERT INTO `users_userprofile_user_permissions` VALUES ('3', '1', '3');
INSERT INTO `users_userprofile_user_permissions` VALUES ('4', '1', '4');
INSERT INTO `users_userprofile_user_permissions` VALUES ('5', '1', '5');
INSERT INTO `users_userprofile_user_permissions` VALUES ('6', '1', '6');
INSERT INTO `users_userprofile_user_permissions` VALUES ('7', '1', '7');
INSERT INTO `users_userprofile_user_permissions` VALUES ('8', '1', '8');
INSERT INTO `users_userprofile_user_permissions` VALUES ('9', '1', '9');
INSERT INTO `users_userprofile_user_permissions` VALUES ('10', '1', '13');
INSERT INTO `users_userprofile_user_permissions` VALUES ('11', '1', '14');
INSERT INTO `users_userprofile_user_permissions` VALUES ('12', '1', '15');
INSERT INTO `users_userprofile_user_permissions` VALUES ('13', '1', '16');
INSERT INTO `users_userprofile_user_permissions` VALUES ('14', '1', '17');
INSERT INTO `users_userprofile_user_permissions` VALUES ('15', '1', '18');
INSERT INTO `users_userprofile_user_permissions` VALUES ('16', '1', '19');
INSERT INTO `users_userprofile_user_permissions` VALUES ('17', '1', '20');
INSERT INTO `users_userprofile_user_permissions` VALUES ('18', '1', '21');
INSERT INTO `users_userprofile_user_permissions` VALUES ('19', '1', '22');
INSERT INTO `users_userprofile_user_permissions` VALUES ('20', '1', '23');
INSERT INTO `users_userprofile_user_permissions` VALUES ('21', '1', '24');
INSERT INTO `users_userprofile_user_permissions` VALUES ('22', '1', '25');
INSERT INTO `users_userprofile_user_permissions` VALUES ('23', '1', '26');
INSERT INTO `users_userprofile_user_permissions` VALUES ('24', '1', '27');
INSERT INTO `users_userprofile_user_permissions` VALUES ('25', '1', '28');
INSERT INTO `users_userprofile_user_permissions` VALUES ('26', '1', '29');
INSERT INTO `users_userprofile_user_permissions` VALUES ('27', '1', '30');
INSERT INTO `users_userprofile_user_permissions` VALUES ('28', '1', '31');
INSERT INTO `users_userprofile_user_permissions` VALUES ('29', '1', '32');
INSERT INTO `users_userprofile_user_permissions` VALUES ('30', '1', '33');
INSERT INTO `users_userprofile_user_permissions` VALUES ('31', '1', '34');
INSERT INTO `users_userprofile_user_permissions` VALUES ('32', '1', '35');
INSERT INTO `users_userprofile_user_permissions` VALUES ('33', '1', '36');
INSERT INTO `users_userprofile_user_permissions` VALUES ('34', '1', '37');
INSERT INTO `users_userprofile_user_permissions` VALUES ('35', '1', '38');
INSERT INTO `users_userprofile_user_permissions` VALUES ('36', '1', '39');
INSERT INTO `users_userprofile_user_permissions` VALUES ('37', '1', '40');
INSERT INTO `users_userprofile_user_permissions` VALUES ('38', '1', '41');
INSERT INTO `users_userprofile_user_permissions` VALUES ('39', '1', '42');
INSERT INTO `users_userprofile_user_permissions` VALUES ('40', '1', '43');
INSERT INTO `users_userprofile_user_permissions` VALUES ('41', '1', '45');
INSERT INTO `users_userprofile_user_permissions` VALUES ('42', '1', '46');
INSERT INTO `users_userprofile_user_permissions` VALUES ('43', '1', '47');
INSERT INTO `users_userprofile_user_permissions` VALUES ('44', '1', '48');
INSERT INTO `users_userprofile_user_permissions` VALUES ('45', '1', '49');
INSERT INTO `users_userprofile_user_permissions` VALUES ('46', '1', '50');
INSERT INTO `users_userprofile_user_permissions` VALUES ('47', '1', '51');
INSERT INTO `users_userprofile_user_permissions` VALUES ('48', '1', '52');
INSERT INTO `users_userprofile_user_permissions` VALUES ('49', '2', '1');
INSERT INTO `users_userprofile_user_permissions` VALUES ('50', '2', '2');
INSERT INTO `users_userprofile_user_permissions` VALUES ('51', '2', '3');
INSERT INTO `users_userprofile_user_permissions` VALUES ('52', '2', '4');
INSERT INTO `users_userprofile_user_permissions` VALUES ('53', '2', '5');
INSERT INTO `users_userprofile_user_permissions` VALUES ('54', '2', '6');
INSERT INTO `users_userprofile_user_permissions` VALUES ('55', '2', '7');
INSERT INTO `users_userprofile_user_permissions` VALUES ('56', '2', '8');
INSERT INTO `users_userprofile_user_permissions` VALUES ('57', '2', '9');
INSERT INTO `users_userprofile_user_permissions` VALUES ('58', '2', '13');
INSERT INTO `users_userprofile_user_permissions` VALUES ('59', '2', '14');
INSERT INTO `users_userprofile_user_permissions` VALUES ('60', '2', '15');
INSERT INTO `users_userprofile_user_permissions` VALUES ('61', '2', '16');
INSERT INTO `users_userprofile_user_permissions` VALUES ('62', '2', '17');
INSERT INTO `users_userprofile_user_permissions` VALUES ('63', '2', '18');
INSERT INTO `users_userprofile_user_permissions` VALUES ('64', '2', '19');
INSERT INTO `users_userprofile_user_permissions` VALUES ('65', '2', '20');
INSERT INTO `users_userprofile_user_permissions` VALUES ('66', '2', '21');
INSERT INTO `users_userprofile_user_permissions` VALUES ('67', '2', '22');
INSERT INTO `users_userprofile_user_permissions` VALUES ('68', '2', '23');
INSERT INTO `users_userprofile_user_permissions` VALUES ('69', '2', '24');
INSERT INTO `users_userprofile_user_permissions` VALUES ('70', '2', '25');
INSERT INTO `users_userprofile_user_permissions` VALUES ('71', '2', '26');
INSERT INTO `users_userprofile_user_permissions` VALUES ('72', '2', '27');
INSERT INTO `users_userprofile_user_permissions` VALUES ('73', '2', '28');
INSERT INTO `users_userprofile_user_permissions` VALUES ('74', '2', '29');
INSERT INTO `users_userprofile_user_permissions` VALUES ('75', '2', '30');
INSERT INTO `users_userprofile_user_permissions` VALUES ('76', '2', '31');
INSERT INTO `users_userprofile_user_permissions` VALUES ('77', '2', '32');
INSERT INTO `users_userprofile_user_permissions` VALUES ('78', '2', '33');
INSERT INTO `users_userprofile_user_permissions` VALUES ('79', '2', '34');
INSERT INTO `users_userprofile_user_permissions` VALUES ('80', '2', '35');
INSERT INTO `users_userprofile_user_permissions` VALUES ('81', '2', '36');
INSERT INTO `users_userprofile_user_permissions` VALUES ('82', '2', '37');
INSERT INTO `users_userprofile_user_permissions` VALUES ('83', '2', '38');
INSERT INTO `users_userprofile_user_permissions` VALUES ('84', '2', '39');
INSERT INTO `users_userprofile_user_permissions` VALUES ('85', '2', '40');
INSERT INTO `users_userprofile_user_permissions` VALUES ('86', '2', '41');
INSERT INTO `users_userprofile_user_permissions` VALUES ('87', '2', '42');
INSERT INTO `users_userprofile_user_permissions` VALUES ('88', '2', '43');
INSERT INTO `users_userprofile_user_permissions` VALUES ('89', '2', '45');
INSERT INTO `users_userprofile_user_permissions` VALUES ('90', '2', '46');
INSERT INTO `users_userprofile_user_permissions` VALUES ('91', '2', '47');
INSERT INTO `users_userprofile_user_permissions` VALUES ('92', '2', '48');
INSERT INTO `users_userprofile_user_permissions` VALUES ('93', '2', '49');
INSERT INTO `users_userprofile_user_permissions` VALUES ('94', '2', '50');
INSERT INTO `users_userprofile_user_permissions` VALUES ('95', '2', '51');
INSERT INTO `users_userprofile_user_permissions` VALUES ('96', '2', '52');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2017-02-12 10:52:33.537000', '127.0.0.1', '1', 'Notes object', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2017-02-12 10:54:32.156000', '127.0.0.1', '2', 'Notes object', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2017-02-12 13:17:09.598000', '127.0.0.1', '1', '第一组', 'create', '已添加。', '3', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2017-02-12 13:17:55.594000', '127.0.0.1', '1', 'liuyc', 'change', '已修改 last_login，groups，user_permissions，first_name，last_name，email，nick_name，birday，gender，address，mobile 和 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2017-02-12 13:36:00.786000', '127.0.0.1', '1', 'UserNotes object', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2017-02-12 13:37:19.362000', '127.0.0.1', '2', 'UserNotes object', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2017-02-12 13:45:10.480000', '127.0.0.1', '1', 'liuyc', 'change', '已修改 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2017-02-12 13:45:12.251000', '127.0.0.1', '1', 'liuyc', 'change', '已修改 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2017-02-12 19:57:47.778000', '127.0.0.1', '2', 'xueleilei', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2017-02-12 20:00:24.556000', '127.0.0.1', '2', 'xueleilei', 'change', '已修改 last_login，user_permissions，first_name，last_name，email，nick_name，birday，address，mobile 和 image 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2017-02-13 23:23:48.579000', '127.0.0.1', '2', 'xueleilei', 'change', '已修改 is_staff 。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2017-02-18 10:55:36.289000', '127.0.0.1', '1', '1', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2017-02-18 10:57:13.041000', '127.0.0.1', '2', '2', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2017-02-18 11:01:14.415000', '127.0.0.1', '2', '2', 'change', '已修改 url 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2017-02-18 11:01:48.870000', '127.0.0.1', '1', '1', 'change', '已修改 image 和 url 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2017-02-18 11:02:40.562000', '127.0.0.1', '2', '2', 'change', '已修改 url 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2017-02-18 11:03:09.391000', '127.0.0.1', '2', '2', 'change', '已修改 url 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2017-02-18 11:04:11.914000', '127.0.0.1', '3', '3', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2017-02-18 11:05:04.559000', '127.0.0.1', '2', '2', 'change', '已修改 url 和 index 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2017-02-18 11:05:09.962000', '127.0.0.1', '3', '3', 'change', '已修改 index 。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2017-02-18 11:05:13.345000', '127.0.0.1', '1', '1', 'change', '没有字段被修改。', '15', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'dashboard:home:pos', '', '2');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
