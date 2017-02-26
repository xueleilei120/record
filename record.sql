/*
Navicat MySQL Data Transfer

Source Server         : liuyc
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : record

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-02-26 12:39:07
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

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
INSERT INTO `auth_permission` VALUES ('57', 'Can add 邮箱验证码', '16', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 邮箱验证码', '16', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 邮箱验证码', '16', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 邮箱验证码', '16', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('61', 'Can add captcha store', '17', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('62', 'Can change captcha store', '17', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete captcha store', '17', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('64', 'Can view captcha store', '17', 'view_captchastore');

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
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$RO7KfsmMZHnf$W9v/BXAVuNLA2IZpV2Wnn3EyJ+kK7zCZLHBfME4DDBc=', '2017-02-12 02:03:47.081000', '1', 'liuyc', '', '', '2@qq.com', '1', '0', '2017-02-12 02:03:36.830000');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$24000$CBtmn5E2t5yh$nFkPQZwAq47frX9iVt7igVwLyodS2t+qVYoF/6tg2eI=', null, '0', 'xueleilei', '', '', '', '0', '0', '2017-02-12 02:04:03.779000');

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
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('17', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('13', 'notes', 'notes');
INSERT INTO `django_content_type` VALUES ('14', 'operation', 'usernotes');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('15', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('16', 'users', 'emailverifyrecord');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

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
INSERT INTO `django_migrations` VALUES ('20', 'notes', '0002_auto_20170219_1656', '2017-02-19 16:56:20.685000');
INSERT INTO `django_migrations` VALUES ('21', 'notes', '0003_notes_is_private', '2017-02-25 09:29:18.010000');
INSERT INTO `django_migrations` VALUES ('22', 'notes', '0004_auto_20170225_0934', '2017-02-25 09:34:29.645000');
INSERT INTO `django_migrations` VALUES ('23', 'captcha', '0001_initial', '2017-02-25 19:33:25.405000');
INSERT INTO `django_migrations` VALUES ('24', 'users', '0004_emailverifyrecord', '2017-02-25 19:33:25.811000');

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
INSERT INTO `django_session` VALUES ('ilhh3h4pot2f0pkfu0nscc5cl4tr0e5a', 'ZTdjZGE5MmQwZmI1Y2EzMzNjOWM5MjdhNzY3Y2YwOWIwZWNjNmJiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjlmYjI1YzZiOWE5MzMwZDg5MDU4M2YyMzUxNmUxZTMzYmJmYjcxMGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-12 12:33:19.206000');

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
  `author` varchar(20) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes_notes
-- ----------------------------
INSERT INTO `notes_notes` VALUES ('1', '标题1 科比·布莱恩特', '笔记描述 科比·布莱恩特', '<p>&nbsp; &nbsp; 科比是NBA最好的得分手之一，生涯赢得无数奖项[1] &nbsp;，突破、投篮、罚球、三分球他都驾轻就熟，几乎没有进攻盲区，单场比赛81分的个人纪录就有力地证明了这一点。除了疯狂的得分外，科比的组织能力也很出众，经常担任球队进攻的第一发起人。另外科比还是联盟中最好的防守人之一，贴身防守非常具有压迫性。</p>', '0', 'notes/2017/02/28431672f0f4711386881cfe614d8e1e.jpg', '3', '笔记类别 nba', '笔记标签 nba', '2017-02-12 10:49:00.000000', 'liuyc', '1');
INSERT INTO `notes_notes` VALUES ('2', '阿伦·艾弗森 2', 'asdf', '<p>&nbsp; &nbsp; 阿伦·艾弗森（Allen Iverson），1975年6月7日出生于美国弗吉尼亚州汉普顿，前美国职业篮球运动员，司职后卫（双能卫），[1] &nbsp;绰号“答案”（The Answer）[1] &nbsp;/AI[1] &nbsp;，曾任美国男篮梦之队队长[1] &nbsp;。\r\n阿伦·艾弗森在1996年NBA选秀中于第1轮第1位被费城76人队选中[1] &nbsp;，成为NBA状元秀。[1] &nbsp;在14年的职业生涯中，阿伦·艾弗森[1] &nbsp;曾效力于76人、掘金、灰熊以及活塞四支NBA球队，[1] &nbsp;新秀赛季荣获最佳新秀以及新秀挑战赛MVP，[1] &nbsp;4次荣膺NBA得分王，3次荣膺NBA抢断王[1] &nbsp;，2000至2010年[1] &nbsp;11次入选NBA全明星阵容并夺得2次NBA全明星MVP，[1] &nbsp;3次入选NBA最佳阵容一阵，[1] &nbsp;3次入选NBA最佳阵容二阵[1] &nbsp;，2006年入选NBA最佳阵容三阵。[1] &nbsp;2000-2001赛季，艾弗森打出了生涯最好表现，夺得常规赛MVP奖杯，并帮助76队打入NBA总决赛[1] &nbsp;，但并未夺冠。[1] \r\n2013年10月30日，阿伦·艾弗森正式宣布退役[1] &nbsp;。他的NBA生涯均出战41.1分钟，获得26.7分、6.2次助攻和2.2次抢断。[1] &nbsp;2014年3月1日，艾弗森3号球衣在76人主场对奇才的中场休息时退役。[1] \r\n2016年4月4日，阿伦·艾弗森正式入选2016年奈·史密斯篮球名人纪念堂。[2]</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0020.gif\"/> </p><p><br/> </p>', '0', 'notes/2017/02/ad9955e15b95189e865e6d4d03c0a9a5.jpg', '0', '笑话 2', '22 2', '2017-02-12 10:52:00.000000', '阿伦作者', '1');
INSERT INTO `notes_notes` VALUES ('3', '4 添加富文本', '成功', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0020.gif\"/>sha &nbsp;guapi 666</p><p><img class=\"exp-pdp-benefits-image\" src=\"http://images.nike.com/is/image/DotCom/PDP_COPY/705300_024/air-jordan-1-retro-high-bg-E5A48DE588BBE5A4A7E7ABA5E8BF90E58AA8E7ABA5E99E8B.jpg\" data-large-image=\"http://images.nike.com/is/image/DotCom/PDP_COPY/705300_024/air-jordan-1-retro-high-bg-E5A48DE588BBE5A4A7E7ABA5E8BF90E58AA8E7ABA5E99E8B.jpg\" data-small-image=\"http://images.nike.com/is/image/DotCom/PDP_COPY_S/705300_024/air-jordan-1-retro-high-bg-E5A48DE588BBE5A4A7E7ABA5E8BF90E58AA8E7ABA5E99E8B.jpg\" style=\"border: 0px;\"/> </p><p><span style=\"font-family: OneNikeCurrency, Helvetica, Arial, &#39;Heiti SC&#39;, &#39;ST Heiti&#39;, 华文黑体, &#39;Microsoft YaHei&#39;, 雅黑体, SimHei, 黑体, sans-serif; font-size: 0px; line-height: 18px; text-align: center; background-color: rgb(255, 255, 255);\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><strong class=\"nsg-font-family--platform\" style=\"font-family: OneNikeCurrency, &#39;TradeGothicW01-BoldCn20 675334&#39;, Helvetica, Arial, &#39;Heiti SC&#39;, &#39;ST Heiti&#39;, 华文黑体, &#39;Microsoft YaHei&#39;, 雅黑体, SimHei, 黑体, sans-serif; font-size: 34px; text-transform: uppercase; letter-spacing: -1px; color: rgb(51, 51, 51); padding-top: 0px; padding-bottom: 12px; display: inline-block; line-height: 34px; margin-bottom: 4px;\">革新演绎经典篮球造型</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">Air Jordan 1 Retro High BG 复刻大童运动童鞋采用经典外观设计，同时承袭令元年款声名鹊起的轻盈舒适质感。组合鞋面搭配缓震耐磨结构，塑就出色运动风范与舒适脚感。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><span class=\"nsg-font-family--platform\" style=\"font-family: OneNikeCurrency, &#39;TradeGothicW01-BoldCn20 675334&#39;, Helvetica, Arial, &#39;Heiti SC&#39;, &#39;ST Heiti&#39;, 华文黑体, &#39;Microsoft YaHei&#39;, 雅黑体, SimHei, 黑体, sans-serif; font-size: 20px; text-transform: uppercase; letter-spacing: -1px; color: rgb(51, 51, 51); padding-top: 22px; padding-bottom: 12px; display: inline-block;\">其他细节</span></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>全粒面皮革与合成革组合鞋面，具备出色运动风范与耐磨性</p></li><li><p>硬质橡胶包边外底搭载后跟内嵌式 Air-Sole 气垫，实现出众的缓震效果</p></li><li><p>硬质橡胶外底融入弯曲凹槽和圆形底纹设计，缔造出色灵活性和抓地力，经久耐磨</p></li></ul><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px;\">产品信息描述以705300-024产品为参照，实物的具体信息若与参照物和网站产品图片有出入，请以实物为准。如有其它疑问，请联系我们</p><p><br/> </p>', '0', 'notes/2017/02/581506c065425e786e8ae37eb646ac6d.jpg', '2', '2', '篮球', '2017-02-19 13:32:00.000000', '张作者', '1');
INSERT INTO `notes_notes` VALUES ('4', 't', 't', '<p>t</p>', '0', 'notes/2017/02/0721dac025cb13b5eb332f084725cac5_0675gqp.jpeg', '4', '笑话', 't', '2017-02-24 23:48:47.858000', 'liuyc', '0');
INSERT INTO `notes_notes` VALUES ('5', '35号球衣的来由，杜兰特恩师的故事', '35号球衣的来由，杜兰特恩师的故事', '<p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　当查尔斯-克雷格教练相中杜兰特，并且愿意训练他的时候，妈妈完达-杜兰特并没有觉得她的孩子已经选好了人生道路，天哪，这只不顾是一个无名教练的偶然相遇，拍着杜兰特的脑袋说这孩子骨骼清奇而已。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　梦想毕竟是梦想，当时的杜兰特除了长得高一点以外的资本为0，完达-杜兰特觉得，篮球毕竟可以帮助杜兰特找到一些生活的乐趣，锻炼身体保持健康，和本分的孩子们在一起完成团队的运动，最主要的是——这起码可以帮助他远离那些可怕的暴力街区。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　在那位不知名的路人阿姨观看他比赛，并且把他和伟大的迈克尔相提并论之后，杜兰特欢呼雀跃，带着这个传说和自己的比赛数据单回到家中，在母亲、祖母和派尔阿姨面前手舞足蹈，把数据单挥舞得像风车一样，炫耀自己人生的第一场真正胜利，并骄傲地告诉大家“有人说我打球像迈克尔！”</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<img src=\"http://img.mp.itc.cn/upload/20170224/d19ac027522b4e43879a79d1e5f7e3b0_th.jpeg\" img_width=\"943\" img_height=\"563\" style=\"border: 0px; margin: 0px; padding: 0px; font-size: 0px; color: transparent;\"/></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　完达这时候才发现——或许，篮球真的是他的未来。11岁的儿子对她说：“妈妈，我将来要打NBA.”</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　她把凯文的一切都托付给克雷格教练了，查尔斯-克雷格当时不过是休闲中心的一个青年业余教练，他主要的工作就是教孩子们玩耍之余练练篮球。当他慧眼如炬发现了杜兰特之后，生活的重心便向这个高高瘦瘦的男孩子身上倾斜了，他在教别的孩子玩耍之余，总会抽时间给杜兰特开开小灶，教他一些篮球的基本功和基本规则。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　克雷格对杜兰特最大的意义不在于篮球的技战术上，而在于这位好心的教练总是鼓励他，告诉他终有一天小凯文会成为NBA的一位巨星。克雷格还是一位充满爱心的人，他对所有孩子一视同仁，广泛地种下梦想的种子。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　“我总是在他那里度过一整天，”杜兰特说到，他们一起玩篮球游戏一起看电影。当杜兰特需要零花钱或者是吃饭的时候，都是在克雷格那里。杜兰特现在是千万身价，但是他经常会开着车去那个郊区寻找童年的美好回忆。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　还记得有一次，杜兰特跟着青年联盟队到北卡罗来纳州打完比赛后，由于母亲忙于工作无暇顾及，杜兰特就睡在了克雷格教练家中。克雷格教练经常拿出自己的钱来给那些孩子买球衣，正如一位家长说的：“他让每个孩子都觉得自己是明星，他是一位与众不同的教练，即使你输了，他也让你感觉到不算什么。”克雷格教练和杜兰特之间，早已超越了一般教练和学生之间的感情。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<img src=\"http://img.mp.itc.cn/upload/20170224/379801b29d4b42d4b340250bdba9fe1d_th.jpeg\" img_width=\"1920\" img_height=\"1080\" style=\"border: 0px; margin: 0px; padding: 0px; font-size: 0px; color: transparent;\"/></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　有一个场景令杜兰特最难以忘怀，那是一个温馨的小房间，杜兰特和克雷格教练、以及第二位教练塔拉斯-布朗坐在一起看电视，电视里直播的是万众瞩目的NBA选秀，看着满屏幕的星光熠熠、状元郎的神采飞扬，杜兰特的梦想前所未有的炽热，他激动地和两位教练定下约定：“有一天，我参加NBA选秀了，你们要到现场去，坐在小绿屋里陪伴我。”两位恩师慨然允诺。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　当年这只是一句孩子话，谁也没有想到杜兰特会说到做到梦想成真。然而，2007年，杜兰特作为榜眼秀被超音速选中时，陪伴在身边的只有塔拉斯-布朗教练，而他最先的伯乐，篮球的启蒙者和领路人——查尔斯-克雷格永远地失约了。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2005年 4月30日，高二的杜兰特带领橡树山高中打比赛的时候，噩耗传来，查尔斯-克雷格在马里兰被枪杀了，当时他只是走出户外试图调解朋友和别人的争执，但那个该死的混蛋，冲他的后背连开数枪……</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　直到现在杜兰特仍然不知道当时到底发生了什么，他听说，克雷格的朋友在公寓外和别人发生了争执，这位好人试图排解纷争，当争吵平息后几个小时后，突然响起了枪声，克雷格倒在血泊中，当被送入医院后被宣布当场死亡。据警方的记录，克雷格上半身被击中数枪，这位青年教练才刚满35岁。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　这是一个晴天霹雳，当时杜兰特正准备带领着橡树山高中备战弗吉尼亚州高中的比赛，听到这消息后，杜兰特几乎休克过去。“我不知道该如何去想象，”杜兰特说。“我以为只是一个玩笑，一个活生生的人，就这样没了，他没有理由死的。”</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　5年后，来到德克萨斯大学打球后，他选择了35号球衣来纪念克雷格教练。“我只是想让大家知道我为什么穿35号的原因，以及这个背号后面所包含的意义。”杜兰特说。“只要我穿着35号，他就还活着。”</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<img src=\"http://img.mp.itc.cn/upload/20170224/4c22ebf1fbed4e3ab157f96abf199e01_th.jpeg\" img_width=\"750\" img_height=\"1094\" style=\"border: 0px; margin: 0px; padding: 0px; font-size: 0px; color: transparent;\"/></p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　人的一生如此短暂，得到什么失去什么只有自己知道，总有一天，你所珍爱的一切都会离你而去，比如克雷格教练，比如派尔阿姨（杜兰特曾眼睁睁看着他亲爱的派尔阿姨癌症发作，呕着血离他而去）。</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　今天的杜兰特提到此事依旧泪眼婆娑，“这对于我来说是一个敏感的问题，但我只是想为他做点什么。” 2007杜兰特在参选前被问及为什么会穿35号，他坚定的回答：“因为纪念我的第一位教练”；2008年当杜兰特拿到最佳新秀的那一天，他略带伤感的说道：“今天是克雷格教练去世三周年的祭日。我想把这个荣誉献给他，我想让他知道我一直在努力着。”</p><p style=\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　当他戴上榜眼的帽子，举起最佳新秀的奖杯，捧起得分王的奖杯，直到拿着MVP的黄铜小人泪如雨下的时候，克雷格教练终究是见不到了，留下的只有球场上飞舞的35号球衣。</p><p><br/></p>', '0', 'notes/2017/02/4c22ebf1fbed4e3ab157f96abf199e01_th.jpeg', '15', '篮球', '篮球', '2017-02-25 00:06:53.524000', 'liuyc', '1');
INSERT INTO `notes_notes` VALUES ('6', '0', '0', '<p>0</p>', '0', 'notes/2017/02/9de3fb2bd2aad2d8ff4c8604241ce355.jpg', '5', '笑话', '0', '2017-02-25 12:38:12.915000', 'AnonymousUser', '1');
INSERT INTO `notes_notes` VALUES ('7', '5', '5', '<p>5</p>', '0', 'notes/2017/02/u2010096343999898114fm21gp0.jpg', '0', '笑话', '5', '2017-02-25 17:35:06.762000', 'liuyc', '1');
INSERT INTO `notes_notes` VALUES ('8', '6', '6', '<p>6<br/></p>', '0', 'notes/2017/02/d0a7a9410aee402376528def1bf0bb09.jpg', '1', '笑话', '6', '2017-02-25 17:35:26.739000', 'liuyc', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usernotes
-- ----------------------------
INSERT INTO `operation_usernotes` VALUES ('1', '2017-02-12 13:35:00.000000', '1', '1');
INSERT INTO `operation_usernotes` VALUES ('2', '2017-02-12 13:36:00.000000', '2', '1');
INSERT INTO `operation_usernotes` VALUES ('3', '2017-02-19 13:41:00.000000', '3', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '1', 'banner/2017/02/28431672f0f4711386881cfe614d8e1e.jpg', 'http://baike.baidu.com/link?url=K1JPbZHdZNqV5f0V1xgVVd9I2TBPggZkDJEx0DjJbBtnC4-z2ZRpG2OgLLzQJIB34mDf3t0pT31apG0WS1t18GpWqh4iAC6eligWKQsEYByCsNc8siFYdlR2yhU1KKuw3SLKTK1jokukbq1kiZgujXn0XP8iyYa3FZG2fp75', '1', '2017-02-18 10:54:00.000000');
INSERT INTO `users_banner` VALUES ('2', '2', 'banner/2017/02/473528c5781fad9800e77e64939e9ac1.jpg', 'https://image.baidu.com/search/index?tn=baiduimage&ct=201326592&lm=-1&cl=2&ie=gbk&word=%CD%FE%C9%D9&fr=ala&ori_query=%E5%A8%81%E5%B0%91&ala=0&alatpl=sp&pos=0&hs=2&xthttps=111111', '2', '2017-02-18 10:56:00.000000');
INSERT INTO `users_banner` VALUES ('3', '3', 'banner/2017/02/ad9955e15b95189e865e6d4d03c0a9a5.jpg', 'http://baike.baidu.com/link?url=K2tQ2jOzOWCAEpLrNDRO64NuniO2IIuFAxK5LRJ9_HC0GMup1y4izNvnn4v4gfAZwJ0QlxuUBj3DOA-MUHJ4sLtsvgRJxbcVeNa9HtIUeK58nvsyeQ6hvUzgC_d_y6GMDaUyk1Nqx2K-8k9Th4Ky9gilRyiU1dMgg1N0oF4L', '3', '2017-02-18 11:03:00.000000');
INSERT INTO `users_banner` VALUES ('4', '35号球衣的来由，杜兰特恩师的故事', 'banner/2017/02/4c22ebf1fbed4e3ab157f96abf199e01_th.jpeg', 'http://sports.sohu.com/20170224/n481670085.shtml', '0', '2017-02-25 00:08:00.000000');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(10) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('1', 'ERDG596mno0UEIwU', '3@qq.com', 'register', '2017-02-25 19:34:25.006000');
INSERT INTO `users_emailverifyrecord` VALUES ('2', 'cUvd9eDHm4qQ9jRg', '4@qq.com', 'register', '2017-02-25 19:59:31.050000');
INSERT INTO `users_emailverifyrecord` VALUES ('3', 'c7AW4iVy8Uj5WHeG', '5@qq.com', 'register', '2017-02-26 12:19:11.518000');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$SijdQyTVlex9$zg2ds/BLFGPHlo9EDjNrrFhV4hlnWe1dujr+r+3pJjo=', '2017-02-26 12:33:19.156000', '1', 'liuyc', '永超', '刘', '290484002@qq.com', '1', '1', '2017-02-12 02:11:00.000000', '小刘', '2016-02-01', 'male', '仅以一村4', '1358487000', 'images/2017/02/2e1c79babe2a193b90338211d9176a3c_0g68gpy.jpg');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$24000$JMiMYykLKGbu$jCRgKnrOFgIghXknvMRFvKdRtdW5/PpALWIJMtoj64A=', '2017-02-26 12:18:41.572000', '0', 'xueleilei', '蕾蕾', '薛', '2@qq.com', '0', '0', '2017-02-12 19:57:00.000000', '小雪', '2017-02-12', 'female', '学家村', '13584870659', 'images/2017/02/73d2d9c3c1fc56daf97f9218e0c04523.jpg');
INSERT INTO `users_userprofile` VALUES ('3', 'pbkdf2_sha256$24000$mfMskRJDdYIr$uW6FeRg7DNuOcAkDAGDXONpbHNP+uxxXF3DJnuGvpNY=', null, '0', '3@qq.com', '', '', '3@qq.com', '0', '0', '2017-02-25 19:34:24.854000', '', null, 'female', '', null, 'images/default.png');
INSERT INTO `users_userprofile` VALUES ('4', 'pbkdf2_sha256$24000$Ql584F6nCwcF$OQP1ECbOq7Asm4Vb4Xo5gSOCUWSDSrn+pmjumNlVWyw=', '2017-02-25 20:05:45.765000', '0', '4@qq.com', '', '', '4@qq.com', '0', '0', '2017-02-25 19:59:30.963000', '', null, 'female', '', null, 'images/default.png');
INSERT INTO `users_userprofile` VALUES ('5', 'pbkdf2_sha256$24000$Cu5oqGZWhiLd$C9X03cDPtdhb/irkDaYtKuJ9K7xD63KL+xw9PrPbOZ0=', '2017-02-26 12:19:24.651000', '0', '5@qq.com', '', '', '5@qq.com', '0', '0', '2017-02-26 12:19:11.456000', '55555', '2017-02-01', 'female', '5555', '1358487065', 'images/2017/02/c64f300b8efd92810747eecb99f0ddcc.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

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
INSERT INTO `xadmin_log` VALUES ('22', '2017-02-19 13:40:03.623000', '127.0.0.1', '3', 'Notes object', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2017-02-19 13:41:18.498000', '127.0.0.1', '3', 'UserNotes object', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2017-02-19 17:00:24.848000', '127.0.0.1', '3', '4 添加富文本', 'change', '已修改 author 和 content 。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2017-02-19 17:00:37.512000', '127.0.0.1', '2', '阿伦·艾弗森', 'change', '已修改 author 和 content 。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2017-02-19 17:00:45.689000', '127.0.0.1', '1', '标题1 科比·布莱恩特', 'change', '已修改 author 和 content 。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2017-02-20 22:53:16.089000', '127.0.0.1', '3', '4 添加富文本', 'change', '已修改 image 。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2017-02-22 22:50:08.569000', '127.0.0.1', '2', 'xueleilei', 'change', '已修改 last_login 和 is_staff 。', '7', '2');
INSERT INTO `xadmin_log` VALUES ('29', '2017-02-25 00:08:56.368000', '127.0.0.1', '4', '35号球衣的来由，杜兰特恩师的故事', 'create', '已添加。', '15', '1');

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
