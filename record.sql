/*
Navicat MySQL Data Transfer

Source Server         : liuyc
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : record

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-02-26 23:35:20
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

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
INSERT INTO `auth_permission` VALUES ('19', 'Can add 笔记', '7', 'add_notes');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 笔记', '7', 'change_notes');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 笔记', '7', 'delete_notes');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 用户的笔记', '8', 'add_usernotes');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 用户的笔记', '8', 'change_usernotes');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 用户的笔记', '8', 'delete_usernotes');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 用户信息', '9', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 用户信息', '9', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 用户信息', '9', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 轮播图', '10', 'add_banner');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 轮播图', '10', 'change_banner');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 轮播图', '10', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 邮箱验证码', '11', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 邮箱验证码', '11', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 邮箱验证码', '11', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('34', 'Can add captcha store', '12', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('35', 'Can change captcha store', '12', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete captcha store', '12', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('37', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('38', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('39', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('40', 'Can view captcha store', '12', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('41', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('42', 'Can view 笔记', '7', 'view_notes');
INSERT INTO `auth_permission` VALUES ('43', 'Can view usernotes', '8', 'view_usernotes');
INSERT INTO `auth_permission` VALUES ('44', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('45', 'Can view 轮播图', '10', 'view_banner');
INSERT INTO `auth_permission` VALUES ('46', 'Can view 邮箱验证码', '11', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('47', 'Can view 用户信息', '9', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('48', 'Can add Bookmark', '13', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('49', 'Can change Bookmark', '13', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('50', 'Can delete Bookmark', '13', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('51', 'Can add User Setting', '14', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('52', 'Can change User Setting', '14', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('53', 'Can delete User Setting', '14', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('54', 'Can add User Widget', '15', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('55', 'Can change User Widget', '15', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('56', 'Can delete User Widget', '15', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('57', 'Can add log entry', '16', 'add_log');
INSERT INTO `auth_permission` VALUES ('58', 'Can change log entry', '16', 'change_log');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete log entry', '16', 'delete_log');
INSERT INTO `auth_permission` VALUES ('60', 'Can view Bookmark', '13', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('61', 'Can view log entry', '16', 'view_log');
INSERT INTO `auth_permission` VALUES ('62', 'Can view User Setting', '14', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('63', 'Can view User Widget', '15', 'view_userwidget');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('12', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'notes', 'notes');
INSERT INTO `django_content_type` VALUES ('8', 'operation', 'usernotes');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('10', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('11', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('9', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('13', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('16', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('14', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('15', 'xadmin', 'userwidget');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-02-26 15:14:50.145000');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-02-26 15:14:57.454000');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-02-26 15:14:59.052000');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-02-26 15:14:59.154000');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-02-26 15:15:00.050000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-02-26 15:15:00.702000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-02-26 15:15:01.302000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-02-26 15:15:01.353000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-02-26 15:15:01.863000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-02-26 15:15:01.902000');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-02-26 15:15:01.951000');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2017-02-26 15:15:02.504000');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2017-02-26 23:18:43.384000');
INSERT INTO `django_migrations` VALUES ('14', 'captcha', '0001_initial', '2017-02-26 23:21:01.886000');
INSERT INTO `django_migrations` VALUES ('15', 'notes', '0001_initial', '2017-02-26 23:21:02.703000');
INSERT INTO `django_migrations` VALUES ('16', 'xadmin', '0001_initial', '2017-02-26 23:21:07.603000');

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
INSERT INTO `django_session` VALUES ('4hxdb2g0q1jlud6q13frrcsqa3iefq4x', 'Njc0ZGY0Yzc3ODczZjA0NWFhMTJmOTE4YjEzMjU2MGE2NDA0NGE2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sibm90ZXMiLCJub3RlcyJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiZjJmNjYzY2UxN2RjNDQzNjMyNTE1MDJlOGUwN2M0NzJjOTNhMjI5MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-03-12 23:30:44.280000');

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
  `is_public` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_notes_author_id_956b8ae9_fk_users_userprofile_id` (`author_id`),
  CONSTRAINT `notes_notes_author_id_956b8ae9_fk_users_userprofile_id` FOREIGN KEY (`author_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes_notes
-- ----------------------------
INSERT INTO `notes_notes` VALUES ('1', '雷·阿伦', '雷·阿伦', '<h3 class=\"title-text\" style=\"margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;\">童年经历</h3><p><a class=\"image-link\" nslog-type=\"9317\" href=\"http://baike.baidu.com/pic/%E9%9B%B7%C2%B7%E9%98%BF%E4%BC%A6/394332/0/0e2442a7d933c895e29a1915d21373f0830200f3?fr=lemma&ct=single\" target=\"_blank\" title=\"雷·阿伦\" style=\"color: rgb(19, 110, 194); text-decoration: none; display: block; width: 151px; height: 220px;\"><img class=\"\" src=\"https://imgsa.baidu.com/baike/s%3D220/sign=a6136596a486c9170c03553bf93c70c6/0e2442a7d933c895e29a1915d21373f0830200f3.jpg\" alt=\"雷·阿伦\" style=\"border: 0px; display: block; margin: 0px auto; width: 151px; height: 220px;\"/> </a><span class=\"description\" style=\"display: block; color: rgb(85, 85, 85); font-size: 12px; text-indent: 0px; font-family: 宋体; word-wrap: break-word; word-break: break-all; line-height: 15px; padding: 8px 7px; min-height: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(224, 224, 224);\">雷·阿伦</span></p><p>1975年7月20日，雷·阿伦出生在<a target=\"_blank\" href=\"http://baike.baidu.com/view/189982.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">加利福尼亚州</a>美熹德（Merced）<span style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[2]</span><a style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\" name=\"ref_[2]_20326\"></a>&nbsp;&nbsp;的<a target=\"_blank\" href=\"http://baike.baidu.com/subview/3377870/15886993.htm\" data-lemmaid=\"10309727\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">空军基地</a>。阿伦的父亲<a target=\"_blank\" href=\"http://baike.baidu.com/view/451066.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">沃尔特</a>是个机场电焊工人，他的母亲叫弗罗拉。他们一共生有5个孩子，雷·阿伦是第3个。<span style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[4]</span><a style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\" name=\"ref_[4]_20326\"></a>&nbsp;</p><p>雷·阿伦最早接触的运动项目是足球，因为足球是英国最为流行的运动。尽管瘦弱的阿伦在身材上根本不占优势，但他的运动才华却已展露无遗。除了踢球外，他还经常打棒球，站上打击区的小阿伦甚至能一棒将球挥至数百米远。当他年满八岁后便加入了少儿棒球联盟并成为队中唯一一位能打出全垒打的球员，有不少孩子的家长都鼓励他参加水平更高的少儿联赛。<span style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[5]</span><a style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\" name=\"ref_[5]_20326\"></a>&nbsp;</p><p>1978年，阿伦就被父母带到了德国，三年后回到美国俄克拉荷马州，然后又去了英国，几年之后再回到加利弗尼亚州。</p><p>1985年，10岁的雷·阿伦与全家一起搬到了<a target=\"_blank\" href=\"http://baike.baidu.com/view/269543.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">加利福尼亚</a>Ed-wards空军基地。基地组织了篮球比赛，很少摸篮球的雷·阿伦竟然投篮神准，场边的父母以及父母的同事们有些惊讶。<span style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[6]</span><a style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\" name=\"ref_[6]_20326\"></a>&nbsp;&nbsp;不久沃尔特又带着妻子弗洛拉和儿子雷·阿伦搬家了，这一次他们去了位于加利福尼亚南部城市Sumter的Shaw空军基地。那时候的雷·阿伦在基地篮球教练菲尔·普利森特的调教下，已经成为了当地小有名气的“未来之星”。最后阿伦父母在达泽尔安家落户。</p><p><a style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\" name=\"1_2\"></a><a style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\" name=\"sub20326_1_2\"></a><a style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\" name=\"高中经历\"></a></p><h3 class=\"title-text\" style=\"margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;\">高中经历</h3><p><a class=\"image-link\" nslog-type=\"9317\" href=\"http://baike.baidu.com/pic/%E9%9B%B7%C2%B7%E9%98%BF%E4%BC%A6/394332/0/d31b0ef41bd5ad6eb243328a85cb39dbb6fd3c13?fr=lemma&ct=single\" target=\"_blank\" title=\"\" style=\"color: rgb(19, 110, 194); text-decoration: none; display: block; width: 220px; height: 158px;\"><img class=\"\" src=\"https://imgsa.baidu.com/baike/s%3D220/sign=fddfb259b7de9c82a265fe8d5c8080d2/d31b0ef41bd5ad6eb243328a85cb39dbb6fd3c13.jpg\" alt=\"\" style=\"border: 0px; display: block; margin: 0px auto; width: 220px; height: 158px;\"/> </a></p><p>1990年，阿伦的身高已超过6尺并进入了南加州山顶高中校队（Hillcrest High School），场均18分的表现让主教练詹姆斯·史密斯对这个孩子赞不绝口，在他的眼里，阿伦不仅充满智慧和自信，在每次处理球时也考虑得非常周全，他的领袖气质像是与生俱来的。</p><p>1993年的春天，雷·阿伦的女朋友罗萨里德·拉姆茜怀上了他的孩子。为了让未婚妻和即将降临人世的孩子能过上安稳的生活，阿伦需要尽快接受大学教育并在此之后找一份像样的工作，而最佳的途径便是争取篮球奖学金，因此他在那一年的夏天又进一步对自己的篮球技术进行打磨。随后阿伦帮助高中球队拿下了州冠军头衔，他随后便选择了康涅狄格大学。<span style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[5]</span><a style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\" name=\"ref_[5]_20326\"></a>&nbsp;</p><p><a style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\" name=\"1_3\"></a><a style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\" name=\"sub20326_1_3\"></a><a style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\" name=\"大学经历\"></a></p><h3 class=\"title-text\" style=\"margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;\">大学经历</h3><p><br/></p><p><br/> </p>', '0', 'notes/2017/02/2e1c79babe2a193b90338211d9176a3c_Z4p0w8R.jpg', '1', '篮球', '篮球', '1', '2017-02-26 23:28:00.000000', '1');

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
INSERT INTO `users_banner` VALUES ('1', '24', 'banner/2017/02/28431672f0f4711386881cfe614d8e1e_hqQPH04.jpg', 'http://baike.baidu.com/link?url=D2Al3Ah0i-cwHiMUkdCzjUR_DxnoTa9zB2MxvpNG0fSCczzZGwC6c9OuoGEyRllkDC_y597XbQvC4V-vRbE2k9RSMP0laXNYuLLhOofpjoZTKDiIkTcq06reddplq4FN5ihICN8wUietn7CVsKLBYZD7po0HWbuKZpasso4J', '100', '2017-02-26 23:25:00.000000');
INSERT INTO `users_banner` VALUES ('2', '杜兰特', 'banner/2017/02/4c22ebf1fbed4e3ab157f96abf199e01_th_CNvJB1n.jpeg', 'http://baike.baidu.com/link?url=6TixFJcWMg0CtETnvu6cn5z5dAvCBJrDwYfdHqYZghyN7FAyaw92O0OlShZIMxXdslSTkydKM8LjIvXc_1N2Uewhuchr7CFZKtveDfS77GX9HO0HI5wVSrqw5Jb4KlXTTCoUCgZ2TeGglg1HG3E11vAfuo6WCX0wGu0Z_8us', '1', '2017-02-26 23:26:00.000000');
INSERT INTO `users_banner` VALUES ('3', '艾佛森', 'banner/2017/02/ad9955e15b95189e865e6d4d03c0a9a5_ICAxXkk.jpg', 'http://baike.baidu.com/link?url=v1LwBTcY_AfR7LCglY9SI-QJ9LFduazibANxv-SiNhabg8IJ92JrbyUyatzFQQyf7MynyLjC42gZc7O_zkNXN0VLC1HIUh73tSEkRWA7k8jfIFv__i5GtjD3pyicrqaVGx3XhPpDl_ukBLv3qT1O65vIyVr6I0Nn0Dmbf0A_', '2', '2017-02-26 23:27:00.000000');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$24000$GebAdaoLIyLj$9XRc1F2Foi/Bk4tvze4anQwixpouwtnMv8gcqhs2U0A=', '2017-02-26 23:22:00.000000', '1', 'liuyc', '永超', '刘', '2@qq.com', '1', '1', '2017-02-26 23:19:00.000000', '小刘', '2017-02-26', 'male', '关山镇', '13584870658', 'images/2017/02/4c22ebf1fbed4e3ab157f96abf199e01_th.jpeg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

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
INSERT INTO `users_userprofile_user_permissions` VALUES ('41', '1', '44');
INSERT INTO `users_userprofile_user_permissions` VALUES ('42', '1', '45');
INSERT INTO `users_userprofile_user_permissions` VALUES ('43', '1', '46');
INSERT INTO `users_userprofile_user_permissions` VALUES ('44', '1', '47');
INSERT INTO `users_userprofile_user_permissions` VALUES ('45', '1', '48');
INSERT INTO `users_userprofile_user_permissions` VALUES ('46', '1', '49');
INSERT INTO `users_userprofile_user_permissions` VALUES ('47', '1', '50');
INSERT INTO `users_userprofile_user_permissions` VALUES ('48', '1', '51');
INSERT INTO `users_userprofile_user_permissions` VALUES ('49', '1', '52');
INSERT INTO `users_userprofile_user_permissions` VALUES ('50', '1', '53');
INSERT INTO `users_userprofile_user_permissions` VALUES ('51', '1', '54');
INSERT INTO `users_userprofile_user_permissions` VALUES ('52', '1', '55');
INSERT INTO `users_userprofile_user_permissions` VALUES ('53', '1', '56');
INSERT INTO `users_userprofile_user_permissions` VALUES ('54', '1', '57');
INSERT INTO `users_userprofile_user_permissions` VALUES ('55', '1', '58');
INSERT INTO `users_userprofile_user_permissions` VALUES ('56', '1', '59');
INSERT INTO `users_userprofile_user_permissions` VALUES ('57', '1', '60');
INSERT INTO `users_userprofile_user_permissions` VALUES ('58', '1', '61');
INSERT INTO `users_userprofile_user_permissions` VALUES ('59', '1', '62');
INSERT INTO `users_userprofile_user_permissions` VALUES ('60', '1', '63');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2017-02-26 23:24:32.205000', '127.0.0.1', '1', 'liuyc', 'change', '已修改 last_login，user_permissions，first_name，last_name，nick_name，birday，gender，address，mobile 和 image 。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2017-02-26 23:26:21.270000', '127.0.0.1', '1', '24', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2017-02-26 23:27:01.859000', '127.0.0.1', '2', '杜兰特', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2017-02-26 23:27:41.590000', '127.0.0.1', '3', '艾佛森', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2017-02-26 23:28:06.781000', '127.0.0.1', '1', '24', 'change', '已修改 image 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2017-02-26 23:28:16.564000', '127.0.0.1', '3', '艾佛森', 'change', '已修改 image 。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2017-02-26 23:30:23.289000', '127.0.0.1', '1', '雷·阿伦', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2017-02-26 23:30:44.116000', '127.0.0.1', '1', '雷·阿伦', 'change', '已修改 content 。', '7', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

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
