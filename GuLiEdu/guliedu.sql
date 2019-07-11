/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : guliedu

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2019-04-01 10:46:47
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 用户信息', '6', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 用户信息', '6', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 用户信息', '6', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 用户信息', '6', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 轮播图信息', '7', 'add_bannerinfo');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 轮播图信息', '7', 'change_bannerinfo');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 轮播图信息', '7', 'delete_bannerinfo');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 轮播图信息', '7', 'view_bannerinfo');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 邮箱验证码信息', '8', 'add_emailverifycode');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 邮箱验证码信息', '8', 'change_emailverifycode');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 邮箱验证码信息', '8', 'delete_emailverifycode');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 邮箱验证码信息', '8', 'view_emailverifycode');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 课程信息', '9', 'add_courseinfo');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 课程信息', '9', 'change_courseinfo');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 课程信息', '9', 'delete_courseinfo');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 课程信息', '9', 'view_courseinfo');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 章节信息', '10', 'add_lessoninfo');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 章节信息', '10', 'change_lessoninfo');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 章节信息', '10', 'delete_lessoninfo');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 章节信息', '10', 'view_lessoninfo');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 资源信息', '11', 'add_sourceinfo');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 资源信息', '11', 'change_sourceinfo');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 资源信息', '11', 'delete_sourceinfo');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 资源信息', '11', 'view_sourceinfo');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 视频信息', '12', 'add_videoinfo');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 视频信息', '12', 'change_videoinfo');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 视频信息', '12', 'delete_videoinfo');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 视频信息', '12', 'view_videoinfo');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 城市信息', '13', 'add_cityinfo');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 城市信息', '13', 'change_cityinfo');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 城市信息', '13', 'delete_cityinfo');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 城市信息', '13', 'view_cityinfo');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 机构信息', '14', 'add_orginfo');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 机构信息', '14', 'change_orginfo');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 机构信息', '14', 'delete_orginfo');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 机构信息', '14', 'view_orginfo');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 讲师信息', '15', 'add_teacherinfo');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 讲师信息', '15', 'change_teacherinfo');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 讲师信息', '15', 'delete_teacherinfo');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 讲师信息', '15', 'view_teacherinfo');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 咨询信息', '16', 'add_userask');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 咨询信息', '16', 'change_userask');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 咨询信息', '16', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 咨询信息', '16', 'view_userask');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 用户评论课程信息', '17', 'add_usercomment');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 用户评论课程信息', '17', 'change_usercomment');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 用户评论课程信息', '17', 'delete_usercomment');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 用户评论课程信息', '17', 'view_usercomment');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 用户课程学习信息', '18', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 用户课程学习信息', '18', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 用户课程学习信息', '18', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 用户课程学习信息', '18', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 收藏信息', '19', 'add_userlove');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 收藏信息', '19', 'change_userlove');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 收藏信息', '19', 'delete_userlove');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 收藏信息', '19', 'view_userlove');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 用户消息信息', '20', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 用户消息信息', '20', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 用户消息信息', '20', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 用户消息信息', '20', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('81', 'Can add Bookmark', '21', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('82', 'Can change Bookmark', '21', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete Bookmark', '21', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('84', 'Can view Bookmark', '21', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('85', 'Can add User Setting', '22', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('86', 'Can change User Setting', '22', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete User Setting', '22', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('88', 'Can view User Setting', '22', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('89', 'Can add User Widget', '23', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('90', 'Can change User Widget', '23', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete User Widget', '23', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('92', 'Can view User Widget', '23', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('93', 'Can add log entry', '24', 'add_log');
INSERT INTO `auth_permission` VALUES ('94', 'Can change log entry', '24', 'change_log');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete log entry', '24', 'delete_log');
INSERT INTO `auth_permission` VALUES ('96', 'Can view log entry', '24', 'view_log');
INSERT INTO `auth_permission` VALUES ('97', 'Can add captcha store', '25', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('98', 'Can change captcha store', '25', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete captcha store', '25', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('100', 'Can view captcha store', '25', 'view_captchastore');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('26', 'UDOW', 'udow', '4b6b69f18412ee763f44de9b08ea5257805b69ea', '2019-03-27 11:07:36.236930');
INSERT INTO `captcha_captchastore` VALUES ('27', 'JNLA', 'jnla', '6837826d028695a3538dfb83ef40657012c43dd0', '2019-03-27 11:20:36.495891');
INSERT INTO `captcha_captchastore` VALUES ('28', 'YCMT', 'ycmt', '0e43dbef9561fde0a5477c4e9d5026330b368074', '2019-03-27 11:20:37.093970');

-- ----------------------------
-- Table structure for courses_courseinfo
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseinfo`;
CREATE TABLE `courses_courseinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `study_time` int(11) NOT NULL,
  `study_num` int(11) NOT NULL,
  `level` varchar(5) NOT NULL,
  `love_num` int(11) NOT NULL,
  `click_num` int(11) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `detail` longtext NOT NULL,
  `category` varchar(5) NOT NULL,
  `course_notice` varchar(200) NOT NULL,
  `course_need` varchar(100) NOT NULL,
  `teacher_tell` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `orginfo_id` int(11) NOT NULL,
  `teacherinfo_id` int(11) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseinfo_orginfo_id_3d3f29c6_fk_orgs_orginfo_id` (`orginfo_id`),
  KEY `courses_courseinfo_teacherinfo_id_fc77d47e_fk_orgs_teac` (`teacherinfo_id`),
  CONSTRAINT `courses_courseinfo_orginfo_id_3d3f29c6_fk_orgs_orginfo_id` FOREIGN KEY (`orginfo_id`) REFERENCES `orgs_orginfo` (`id`),
  CONSTRAINT `courses_courseinfo_teacherinfo_id_fc77d47e_fk_orgs_teac` FOREIGN KEY (`teacherinfo_id`) REFERENCES `orgs_teacherinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseinfo
-- ----------------------------
INSERT INTO `courses_courseinfo` VALUES ('1', 'course/html.jpg', '前端三大宝值html', '0', '0', 'cj', '1', '14', '前端必备技能之一，最为基础', '前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。前端必备技能之一，最为基础。', 'qd', '前端必备技能之一，最为基础。', '自备电脑', '前端必备技能之一，最为基础。', '2019-03-20 18:27:00.000000', '1', '1', '0');
INSERT INTO `courses_courseinfo` VALUES ('2', 'course/jQuery.jpg', 'jQuery基础', '50', '61', 'zj', '1', '4', 'jQuery基础jQuery基础', 'jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础jQuery基础', 'qd', '准备软件', '准备软件', '好好学习', '2019-03-25 19:12:00.000000', '5', '1', '0');
INSERT INTO `courses_courseinfo` VALUES ('3', 'course/css.jpg', 'css基础', '20', '10', 'cj', '1', '2', 'css基础css基础', 'css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础css基础', 'qd', '学习css基础', '学习css基础', '好好学习', '2019-03-25 19:14:00.000000', '5', '1', '0');
INSERT INTO `courses_courseinfo` VALUES ('4', 'course/js高级.jpg', 'js高级node', '100', '201', 'gj', '1', '3', 'js高级nodejs高级node', 'js高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级nodejs高级node', 'qd', '验证码识别', '验证码识别', '好好学习', '2019-03-25 19:15:00.000000', '1', '1', '0');
INSERT INTO `courses_courseinfo` VALUES ('5', 'course/linux.jpg', 'linux基础', '0', '0', 'zj', '0', '0', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌', '谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训谷粉与老学员为你推荐的Java培训', 'hd', '好好学习', '好好学习', '好好学习', '2019-03-29 21:30:00.000000', '1', '3', '0');
INSERT INTO `courses_courseinfo` VALUES ('6', 'course/js基础.jpg', 'js基础', '0', '0', 'cj', '0', '0', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌', '好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习', 'qd', '好好学习', '好好学习', '好好学习', '2019-03-29 21:31:00.000000', '1', '4', '0');
INSERT INTO `courses_courseinfo` VALUES ('7', 'course/mysql_eQ1GkyR.jpg', 'mysql高级', '0', '0', 'gj', '0', '0', '好好学习好好学习好好学习', '好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习', 'hd', '好好学习', '好好学习', '好好学习', '2019-03-29 21:31:00.000000', '1', '1', '1');
INSERT INTO `courses_courseinfo` VALUES ('8', 'course/mongoDB_nkjygvc.jpg', 'mongodb', '0', '0', 'cj', '0', '0', '好好学习好好学习', '好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习v', 'hd', '好好学习', '好好学习', '好好学习', '2019-03-29 21:32:00.000000', '1', '2', '1');
INSERT INTO `courses_courseinfo` VALUES ('9', 'course/oracle_yEjE8pC.jpg', 'oracle', '0', '0', 'cj', '0', '0', '好好学习好好学习', '好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习好好学习', 'hd', '好好学习', '好好学习', '好好学习', '2019-03-29 21:32:00.000000', '1', '3', '1');

-- ----------------------------
-- Table structure for courses_lessoninfo
-- ----------------------------
DROP TABLE IF EXISTS `courses_lessoninfo`;
CREATE TABLE `courses_lessoninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `courseinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lessoninfo_courseinfo_id_25919b0f_fk_courses_c` (`courseinfo_id`),
  CONSTRAINT `courses_lessoninfo_courseinfo_id_25919b0f_fk_courses_c` FOREIGN KEY (`courseinfo_id`) REFERENCES `courses_courseinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lessoninfo
-- ----------------------------
INSERT INTO `courses_lessoninfo` VALUES ('1', '第一章：html简介', '2019-03-20 18:30:00.000000', '1');
INSERT INTO `courses_lessoninfo` VALUES ('2', '第二章：认识标签', '2019-03-20 18:31:00.000000', '1');
INSERT INTO `courses_lessoninfo` VALUES ('3', '第三章：css选择器', '2019-03-20 18:31:00.000000', '1');

-- ----------------------------
-- Table structure for courses_sourceinfo
-- ----------------------------
DROP TABLE IF EXISTS `courses_sourceinfo`;
CREATE TABLE `courses_sourceinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `down_load` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `courseinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_sourceinfo_courseinfo_id_9d1b6a06_fk_courses_c` (`courseinfo_id`),
  CONSTRAINT `courses_sourceinfo_courseinfo_id_9d1b6a06_fk_courses_c` FOREIGN KEY (`courseinfo_id`) REFERENCES `courses_courseinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_sourceinfo
-- ----------------------------
INSERT INTO `courses_sourceinfo` VALUES ('1', '开发流程', 'source/分析.txt', '2019-03-20 18:32:00.000000', '1');

-- ----------------------------
-- Table structure for courses_videoinfo
-- ----------------------------
DROP TABLE IF EXISTS `courses_videoinfo`;
CREATE TABLE `courses_videoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `study_time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lessoninfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_videoinfo_lessoninfo_id_02a97f3a_fk_courses_l` (`lessoninfo_id`),
  CONSTRAINT `courses_videoinfo_lessoninfo_id_02a97f3a_fk_courses_l` FOREIGN KEY (`lessoninfo_id`) REFERENCES `courses_lessoninfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_videoinfo
-- ----------------------------
INSERT INTO `courses_videoinfo` VALUES ('1', '01、hello html', '10', 'http://www.atguigu.com', '2019-03-20 18:31:00.000000', '1');
INSERT INTO `courses_videoinfo` VALUES ('2', '02、html实现第一个页面', '30', 'http://www.atguigu.com', '2019-03-20 18:31:00.000000', '1');

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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('25', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'courses', 'courseinfo');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'lessoninfo');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'sourceinfo');
INSERT INTO `django_content_type` VALUES ('12', 'courses', 'videoinfo');
INSERT INTO `django_content_type` VALUES ('16', 'operations', 'userask');
INSERT INTO `django_content_type` VALUES ('17', 'operations', 'usercomment');
INSERT INTO `django_content_type` VALUES ('18', 'operations', 'usercourse');
INSERT INTO `django_content_type` VALUES ('19', 'operations', 'userlove');
INSERT INTO `django_content_type` VALUES ('20', 'operations', 'usermessage');
INSERT INTO `django_content_type` VALUES ('13', 'orgs', 'cityinfo');
INSERT INTO `django_content_type` VALUES ('14', 'orgs', 'orginfo');
INSERT INTO `django_content_type` VALUES ('15', 'orgs', 'teacherinfo');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'bannerinfo');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'emailverifycode');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'userwidget');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-03-20 12:55:00.096273');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-03-20 12:55:00.239417');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2019-03-20 12:55:00.749054');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2019-03-20 12:55:00.841805');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2019-03-20 12:55:00.849781');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2019-03-20 12:55:00.859784');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2019-03-20 12:55:00.867733');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2019-03-20 12:55:00.872747');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2019-03-20 12:55:00.880699');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2019-03-20 12:55:00.895661');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2019-03-20 12:55:00.906639');
INSERT INTO `django_migrations` VALUES ('12', 'users', '0001_initial', '2019-03-20 12:55:01.667126');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0001_initial', '2019-03-20 12:55:01.986275');
INSERT INTO `django_migrations` VALUES ('14', 'admin', '0002_logentry_remove_auto_add', '2019-03-20 12:55:01.999237');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0003_logentry_add_action_flag_choices', '2019-03-20 12:55:02.013200');
INSERT INTO `django_migrations` VALUES ('16', 'orgs', '0001_initial', '2019-03-20 12:55:02.370247');
INSERT INTO `django_migrations` VALUES ('17', 'courses', '0001_initial', '2019-03-20 12:55:03.137679');
INSERT INTO `django_migrations` VALUES ('18', 'operations', '0001_initial', '2019-03-20 12:55:03.449640');
INSERT INTO `django_migrations` VALUES ('19', 'operations', '0002_auto_20190320_1254', '2019-03-20 12:55:04.318139');
INSERT INTO `django_migrations` VALUES ('20', 'sessions', '0001_initial', '2019-03-20 12:55:04.414519');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0001_initial', '2019-03-20 13:30:06.872932');
INSERT INTO `django_migrations` VALUES ('22', 'xadmin', '0002_log', '2019-03-20 13:30:07.122266');
INSERT INTO `django_migrations` VALUES ('23', 'xadmin', '0003_auto_20160715_0100', '2019-03-20 13:30:07.222000');
INSERT INTO `django_migrations` VALUES ('24', 'captcha', '0001_initial', '2019-03-20 22:03:07.585342');
INSERT INTO `django_migrations` VALUES ('25', 'users', '0002_userprofile_is_start', '2019-03-21 13:46:12.989009');
INSERT INTO `django_migrations` VALUES ('26', 'users', '0003_auto_20190327_1614', '2019-03-27 16:15:08.831214');
INSERT INTO `django_migrations` VALUES ('27', 'courses', '0002_courseinfo_is_banner', '2019-03-29 21:28:34.052406');
INSERT INTO `django_migrations` VALUES ('28', 'orgs', '0002_auto_20190331_1027', '2019-03-31 10:27:40.392680');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('jpivs44wwqc1veqgqizebs06w6t7dw1y', 'MTAyY2I5Y2NiN2JmMWEyYThmNzFlNzIxODhmMzMzYzUzN2VjZWI1Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODNlMDhiNjk1MzkzMWFlMzA3MTFmODVjYTE4OWE1ZjA3MzE1MjllIiwiTElTVF9RVUVSWSI6W1sib3JncyIsIm9yZ2luZm8iXSwiIl19', '2019-04-14 10:40:29.989049');

-- ----------------------------
-- Table structure for operations_userask
-- ----------------------------
DROP TABLE IF EXISTS `operations_userask`;
CREATE TABLE `operations_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `course` varchar(20) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_userask
-- ----------------------------
INSERT INTO `operations_userask` VALUES ('1', '阿瑟东', '123123', '阿瑟东啊', '2019-03-25 09:51:58.078361');
INSERT INTO `operations_userask` VALUES ('2', '请问', '123333', '匿名', '2019-03-25 09:55:37.481307');
INSERT INTO `operations_userask` VALUES ('3', '您巨大', '1231231', '阿斯顿', '2019-03-25 09:57:01.087154');
INSERT INTO `operations_userask` VALUES ('4', '周星驰', '1111111', '线程', '2019-03-25 09:57:57.930981');
INSERT INTO `operations_userask` VALUES ('5', '携程', '56756', '扣扣就', '2019-03-25 10:04:19.262376');
INSERT INTO `operations_userask` VALUES ('6', '李敏镐', '124121', '萨芬', '2019-03-25 10:05:50.497799');
INSERT INTO `operations_userask` VALUES ('7', '阿萨德', '123123', '啊是大的', '2019-03-25 10:15:23.587098');
INSERT INTO `operations_userask` VALUES ('8', '周星驰', '123123', '在现场', '2019-03-25 10:16:31.000446');
INSERT INTO `operations_userask` VALUES ('9', '周星驰', '2354235', '解开了', '2019-03-25 10:17:12.384296');
INSERT INTO `operations_userask` VALUES ('10', '周星驰', '2342', '首次公开上市', '2019-03-25 10:18:07.631780');
INSERT INTO `operations_userask` VALUES ('11', '黎明', '15876576904', '阿斯达', '2019-03-25 10:46:25.254372');

-- ----------------------------
-- Table structure for operations_usercomment
-- ----------------------------
DROP TABLE IF EXISTS `operations_usercomment`;
CREATE TABLE `operations_usercomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` varchar(300) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `comment_course_id` int(11) NOT NULL,
  `comment_man_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_usercomme_comment_course_id_39dc5cdf_fk_courses_c` (`comment_course_id`),
  KEY `operations_usercomme_comment_man_id_c4c79f25_fk_users_use` (`comment_man_id`),
  CONSTRAINT `operations_usercomme_comment_course_id_39dc5cdf_fk_courses_c` FOREIGN KEY (`comment_course_id`) REFERENCES `courses_courseinfo` (`id`),
  CONSTRAINT `operations_usercomme_comment_man_id_c4c79f25_fk_users_use` FOREIGN KEY (`comment_man_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_usercomment
-- ----------------------------
INSERT INTO `operations_usercomment` VALUES ('1', '我是酒托', '2019-03-26 17:05:58.855002', '1', '11');

-- ----------------------------
-- Table structure for operations_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operations_usercourse`;
CREATE TABLE `operations_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `study_course_id` int(11) NOT NULL,
  `study_man_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `operations_usercourse_study_man_id_study_course_id_ca233d28_uniq` (`study_man_id`,`study_course_id`),
  KEY `operations_usercours_study_course_id_ad6771e9_fk_courses_c` (`study_course_id`),
  CONSTRAINT `operations_usercours_study_course_id_ad6771e9_fk_courses_c` FOREIGN KEY (`study_course_id`) REFERENCES `courses_courseinfo` (`id`),
  CONSTRAINT `operations_usercours_study_man_id_a1251afb_fk_users_use` FOREIGN KEY (`study_man_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_usercourse
-- ----------------------------
INSERT INTO `operations_usercourse` VALUES ('1', '2019-03-26 13:46:36.755334', '1', '1');
INSERT INTO `operations_usercourse` VALUES ('2', '2019-03-26 13:47:05.640222', '3', '1');
INSERT INTO `operations_usercourse` VALUES ('3', '2019-03-26 15:00:30.756399', '1', '11');
INSERT INTO `operations_usercourse` VALUES ('4', '2019-03-26 15:03:35.906458', '2', '11');
INSERT INTO `operations_usercourse` VALUES ('5', '2019-03-27 20:14:06.379869', '2', '1');
INSERT INTO `operations_usercourse` VALUES ('6', '2019-03-27 20:27:15.164203', '4', '11');

-- ----------------------------
-- Table structure for operations_userlove
-- ----------------------------
DROP TABLE IF EXISTS `operations_userlove`;
CREATE TABLE `operations_userlove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `love_id` int(11) NOT NULL,
  `love_type` int(11) NOT NULL,
  `love_status` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `love_man_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_userlove_love_man_id_7fb97ad4_fk_users_userprofile_id` (`love_man_id`),
  CONSTRAINT `operations_userlove_love_man_id_7fb97ad4_fk_users_userprofile_id` FOREIGN KEY (`love_man_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_userlove
-- ----------------------------
INSERT INTO `operations_userlove` VALUES ('5', '1', '1', '1', '2019-03-27 12:13:29.970431', '11');
INSERT INTO `operations_userlove` VALUES ('6', '4', '2', '0', '2019-03-27 20:27:20.293498', '11');
INSERT INTO `operations_userlove` VALUES ('7', '2', '1', '0', '2019-03-27 20:27:32.334289', '11');
INSERT INTO `operations_userlove` VALUES ('8', '7', '1', '1', '2019-03-29 11:44:09.523815', '11');
INSERT INTO `operations_userlove` VALUES ('9', '8', '1', '0', '2019-03-29 11:44:15.850444', '11');
INSERT INTO `operations_userlove` VALUES ('10', '2', '2', '0', '2019-03-29 15:47:20.270557', '11');
INSERT INTO `operations_userlove` VALUES ('11', '1', '2', '0', '2019-03-29 15:47:24.308760', '11');
INSERT INTO `operations_userlove` VALUES ('12', '3', '2', '1', '2019-03-29 15:47:27.845304', '11');
INSERT INTO `operations_userlove` VALUES ('13', '1', '3', '0', '2019-03-29 16:01:31.240269', '11');
INSERT INTO `operations_userlove` VALUES ('14', '2', '3', '0', '2019-03-29 16:01:37.036741', '11');
INSERT INTO `operations_userlove` VALUES ('15', '3', '3', '1', '2019-03-29 16:01:43.556335', '11');
INSERT INTO `operations_userlove` VALUES ('16', '4', '3', '1', '2019-03-29 16:34:05.745731', '11');

-- ----------------------------
-- Table structure for operations_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operations_usermessage`;
CREATE TABLE `operations_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_man` int(11) NOT NULL,
  `message_content` varchar(200) NOT NULL,
  `message_status` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operations_usermessage
-- ----------------------------
INSERT INTO `operations_usermessage` VALUES ('1', '11', '欢迎登录', '1', '2019-03-29 20:14:58.341171');
INSERT INTO `operations_usermessage` VALUES ('2', '11', '欢迎登录', '1', '2019-03-29 20:38:41.009832');
INSERT INTO `operations_usermessage` VALUES ('3', '11', '欢迎登录', '1', '2019-03-29 20:54:35.699724');
INSERT INTO `operations_usermessage` VALUES ('4', '11', '欢迎登录', '0', '2019-03-30 13:50:49.563176');
INSERT INTO `operations_usermessage` VALUES ('5', '11', '欢迎登录', '0', '2019-03-30 14:00:45.716338');
INSERT INTO `operations_usermessage` VALUES ('6', '11', '欢迎登录', '0', '2019-03-30 14:17:13.193676');
INSERT INTO `operations_usermessage` VALUES ('7', '11', '欢迎登录', '0', '2019-03-30 14:17:39.476405');
INSERT INTO `operations_usermessage` VALUES ('8', '11', '欢迎登录', '0', '2019-03-30 14:20:07.044847');
INSERT INTO `operations_usermessage` VALUES ('9', '11', '欢迎登录', '0', '2019-03-30 14:20:27.680687');
INSERT INTO `operations_usermessage` VALUES ('10', '11', '欢迎登录', '0', '2019-03-30 14:20:49.529240');
INSERT INTO `operations_usermessage` VALUES ('11', '11', '欢迎登录', '0', '2019-03-30 14:21:08.509489');

-- ----------------------------
-- Table structure for orgs_cityinfo
-- ----------------------------
DROP TABLE IF EXISTS `orgs_cityinfo`;
CREATE TABLE `orgs_cityinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orgs_cityinfo
-- ----------------------------
INSERT INTO `orgs_cityinfo` VALUES ('1', '北京', '2019-03-20 13:53:00.000000');
INSERT INTO `orgs_cityinfo` VALUES ('2', '上海', '2019-03-20 13:53:00.000000');
INSERT INTO `orgs_cityinfo` VALUES ('3', '深圳', '2019-03-20 13:53:00.000000');
INSERT INTO `orgs_cityinfo` VALUES ('4', '杭州', '2019-03-20 13:53:00.000000');

-- ----------------------------
-- Table structure for orgs_orginfo
-- ----------------------------
DROP TABLE IF EXISTS `orgs_orginfo`;
CREATE TABLE `orgs_orginfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `course_num` int(11) NOT NULL,
  `study_num` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `detail` longtext NOT NULL,
  `love_num` int(11) NOT NULL,
  `click_num` int(11) NOT NULL,
  `category` varchar(10) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `cityinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orgs_orginfo_cityinfo_id_b30bafbf_fk_orgs_cityinfo_id` (`cityinfo_id`),
  CONSTRAINT `orgs_orginfo_cityinfo_id_b30bafbf_fk_orgs_cityinfo_id` FOREIGN KEY (`cityinfo_id`) REFERENCES `orgs_cityinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orgs_orginfo
-- ----------------------------
INSERT INTO `orgs_orginfo` VALUES ('1', 'org/org.png', '尚硅谷', '3', '50', '北京市硅谷园10号3楼', '尚硅谷Java视频教程,中国最好的免费Java视频教程,JavaEE', '谷粒学院是国内领先的IT在线学习平台、职业教育平台。截止目前,谷粒学院谷粒学院是国内领先的IT在线学习平台、职业教育平台。截止目前,谷粒学院谷粒学院是国内领先的IT在线学习平台、职业教育平台。截止目前,谷粒学院谷粒学院是国内领先的IT在线学习平台、职业教育平台。截止目前,谷粒学院谷粒学院是国内领先的IT在线学习平台、职业教育平台。截止目前,谷粒学院谷粒学院是国内领先的IT在线学习平台、职业教育平台。截止目前,谷粒学院', '2', '20', 'pxjg', '2019-03-20 13:55:00.000000', '1');
INSERT INTO `orgs_orginfo` VALUES ('2', 'org/org_fqfr6GQ.png', '尚硅谷2', '5', '60', '北京市硅谷园10号3楼', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。', '1', '1', 'pxjg', '2019-03-21 21:23:00.000000', '1');
INSERT INTO `orgs_orginfo` VALUES ('3', 'org/org_JmIw3kL.png', '尚硅谷', '2', '30', '北京市硅谷园10号3楼', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。', '0', '0', 'pxjg', '2019-03-21 21:25:00.000000', '2');
INSERT INTO `orgs_orginfo` VALUES ('4', 'org/org_6vykmyy.png', '尚硅谷4', '6', '70', '深圳市硅谷园10号3楼', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌.ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。', '0', '0', 'pxjg', '2019-03-21 21:26:00.000000', '3');
INSERT INTO `orgs_orginfo` VALUES ('5', 'org/org_DoCU3a3.png', '尚硅谷', '1', '100', '北京市硅谷园10号3楼', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。', '0', '0', 'pxjg', '2019-03-21 21:26:00.000000', '1');
INSERT INTO `orgs_orginfo` VALUES ('6', 'org/org_X3QBhBc.png', '传智播客', '3', '20', '杭州市硅谷园10号3楼', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌', 'ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。ava培训,谷粉与老学员为你推荐的Java培训、Web前端培训、前端培训、大数据培训、Python培训领导品牌。', '0', '0', 'pxjg', '2019-03-21 21:27:00.000000', '4');
INSERT INTO `orgs_orginfo` VALUES ('7', 'org/org_VeyN4Bq.png', '清华大学', '50', '100', '北京市硅谷园10号3楼', '清华大学清华大学清华大学清华大学', '清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学', '1', '1', 'gx', '2019-03-22 12:20:00.000000', '1');
INSERT INTO `orgs_orginfo` VALUES ('8', 'org/org_WJynKOO.png', '北京大学', '100', '60', '北京市硅谷园10号4楼', '北京大学北京大学北京大学北京大学', '北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学', '1', '1', 'gx', '2019-03-22 12:21:00.000000', '1');
INSERT INTO `orgs_orginfo` VALUES ('9', 'org/org_C325uAK.png', '南京大学', '0', '0', '北京市硅谷园10号3楼', '北京市硅谷园10号3楼', '北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼', '0', '0', 'gx', '2019-03-30 10:16:00.000000', '1');
INSERT INTO `orgs_orginfo` VALUES ('10', 'org/org_aN0r6dr.png', '浙江大学', '0', '0', '北京市硅谷园10号3楼', '北京市硅谷园10号3楼北京市硅谷园10号3楼', '北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼', '0', '0', 'gx', '2019-03-30 10:17:00.000000', '1');
INSERT INTO `orgs_orginfo` VALUES ('11', 'org/org_PuNzk6Z.png', '腾讯', '0', '0', '北京市硅谷园10号3楼', '北京市硅谷园10号3楼北京市硅谷园10号3楼', '<p><img src=\"/static/media/ueditor/images/touxiang_20190331103244_701.jpg\" title=\"\" alt=\"touxiang.jpg\"/>\r\n &nbsp; &nbsp; 北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼北京市硅谷园10号3楼</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/></p><p><iframe class=\"ueditor_baidumap\" src=\"http://127.0.0.1:8000/static/ueditor/dialogs/map/show.html#center=116.404688,39.923568&zoom=15&width=530&height=340&markers=116.404688,39.923568&markerStyles=l,A\" frameborder=\"0\" width=\"534\" height=\"344\"></iframe></p>', '0', '1', 'pxjg', '2019-03-30 10:17:00.000000', '1');

-- ----------------------------
-- Table structure for orgs_teacherinfo
-- ----------------------------
DROP TABLE IF EXISTS `orgs_teacherinfo`;
CREATE TABLE `orgs_teacherinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `work_year` int(11) NOT NULL,
  `work_position` varchar(20) NOT NULL,
  `work_style` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `love_num` int(11) NOT NULL,
  `click_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `work_company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orgs_teacherinfo_work_company_id_b897a136_fk_orgs_orginfo_id` (`work_company_id`),
  CONSTRAINT `orgs_teacherinfo_work_company_id_b897a136_fk_orgs_orginfo_id` FOREIGN KEY (`work_company_id`) REFERENCES `orgs_orginfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orgs_teacherinfo
-- ----------------------------
INSERT INTO `orgs_teacherinfo` VALUES ('1', 'teacher/touxiang.jpg', '孙俪', '3', 'java', '幽默', '18', 'girl', '201', '15', '2019-03-20 14:00:00.000000', '1');
INSERT INTO `orgs_teacherinfo` VALUES ('2', 'teacher/timg.jpg', '周星驰', '3', 'python', '好玩', '30', 'boy', '801', '33', '2019-03-26 18:33:00.000000', '1');
INSERT INTO `orgs_teacherinfo` VALUES ('3', 'teacher/anPic6.jpg', '周杰伦', '5', 'golang', '风趣', '25', 'boy', '1001', '122', '2019-03-26 18:35:00.000000', '1');
INSERT INTO `orgs_teacherinfo` VALUES ('4', 'teacher/p08.jpg', '夜神月', '3', 'c++', '牛批', '35', 'girl', '501', '61', '2019-03-26 18:36:00.000000', '1');

-- ----------------------------
-- Table structure for users_bannerinfo
-- ----------------------------
DROP TABLE IF EXISTS `users_bannerinfo`;
CREATE TABLE `users_bannerinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_bannerinfo
-- ----------------------------
INSERT INTO `users_bannerinfo` VALUES ('1', 'banner/banner1.jpg', 'http://www.atguigu.com', '2019-03-29 21:19:00.000000');
INSERT INTO `users_bannerinfo` VALUES ('2', 'banner/banner2.jpg', 'http://www.atguigu.com', '2019-03-29 21:20:00.000000');
INSERT INTO `users_bannerinfo` VALUES ('3', 'banner/banner3.jpg', 'http://www.atguigu.com', '2019-03-29 21:20:00.000000');
INSERT INTO `users_bannerinfo` VALUES ('4', 'banner/banner4.jpg', 'http://www.atguigu.com', '2019-03-29 21:20:00.000000');
INSERT INTO `users_bannerinfo` VALUES ('5', 'banner/banner5.jpg', 'http://www.atguigu.com', '2019-03-29 21:20:00.000000');

-- ----------------------------
-- Table structure for users_emailverifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifycode`;
CREATE TABLE `users_emailverifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `send_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifycode
-- ----------------------------
INSERT INTO `users_emailverifycode` VALUES ('18', 'CNUgV0XI', '694625585@qq.com', '3', '2019-03-27 19:19:49.723842');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `nick_name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `is_start` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$120000$rKeB3h7B9N25$gXYQtDbxh1wWWq+1w+ZwYjmnqmJIU7467q6wy4HVExA=', '2019-03-31 10:28:12.708880', '1', 'fatal', '', '', '', '1', '1', '2019-03-20 13:32:00.000000', 'user/2.jpg', '酒托', null, 'girl', null, null, '2019-03-20 13:32:00.000000', '1');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$120000$lJlUziAbmUs2$/dzG8uUQVZ2fxixbo5E+Ht/x4olVq/5v6q22ekeUSPY=', '2019-03-21 13:49:28.757489', '0', '111@111.com', '', '', '111@111.com', '0', '1', '2019-03-20 21:04:11.366411', '', null, null, 'girl', null, null, '2019-03-20 21:04:11.366411', '0');
INSERT INTO `users_userprofile` VALUES ('11', 'pbkdf2_sha256$120000$LZnfXOgYPLce$sOrAEqV8HHZwEufLJOv2+uuMcjaeSOiFKkIL/cKSTzA=', '2019-03-30 14:21:08.506496', '0', '694625585@qq.com', '', '', '694625585@qq.com', '0', '1', '2019-03-21 15:34:00.000000', 'user/anPic4.jpg', '八年', '2019-03-07', 'boy', '北京', '15876576903', '2019-03-21 15:34:00.000000', '1');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
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
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

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
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2019-03-20 13:53:19.687501', '127.0.0.1', '1', '北京', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2019-03-20 13:53:22.965691', '127.0.0.1', '2', '上海', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2019-03-20 13:53:25.909812', '127.0.0.1', '3', '深圳', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2019-03-20 13:53:29.261871', '127.0.0.1', '4', '杭州', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2019-03-20 13:58:44.313833', '127.0.0.1', '1', '尚硅谷', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2019-03-20 14:01:16.614670', '127.0.0.1', '1', '孙俪', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2019-03-20 18:29:31.239986', '127.0.0.1', '1', '前端三大宝值html', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2019-03-20 18:30:45.079543', '127.0.0.1', '1', '第一章：html简介', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2019-03-20 18:31:11.683355', '127.0.0.1', '2', '第二章：认识标签', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2019-03-20 18:31:23.591555', '127.0.0.1', '3', '第三章：css选择器', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2019-03-20 18:31:57.367428', '127.0.0.1', '1', '01、hello html', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2019-03-20 18:32:28.316697', '127.0.0.1', '2', '02、html实现第一个页面', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2019-03-20 18:33:15.364088', '127.0.0.1', '1', '开发流程', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2019-03-21 21:25:42.808306', '127.0.0.1', '2', '尚硅谷2', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2019-03-21 21:26:15.354256', '127.0.0.1', '3', '尚硅谷', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2019-03-21 21:26:53.570077', '127.0.0.1', '4', '尚硅谷4', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2019-03-21 21:27:18.223158', '127.0.0.1', '5', '黑马程序员', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2019-03-21 21:27:55.799685', '127.0.0.1', '6', '传智播客', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2019-03-22 12:21:27.837518', '127.0.0.1', '7', '清华大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2019-03-22 12:22:09.487368', '127.0.0.1', '8', '北京大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2019-03-25 19:14:03.200350', '127.0.0.1', '2', 'jQuery基础', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2019-03-25 19:15:08.005075', '127.0.0.1', '3', 'css基础', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2019-03-25 19:16:24.549411', '127.0.0.1', '4', 'js高级node', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2019-03-25 19:17:58.280814', '127.0.0.1', '5', '尚硅谷', 'change', '修改 image 和 name', '14', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2019-03-26 14:20:46.444864', '127.0.0.1', '1', 'fatal', 'change', '修改 last_login，image 和 nick_name', '6', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2019-03-26 14:21:38.487890', '127.0.0.1', '11', '1564649449@qq.com', 'change', '修改 last_login，image 和 nick_name', '6', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2019-03-26 18:35:33.042822', '127.0.0.1', '2', '周星驰', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2019-03-26 18:36:02.718475', '127.0.0.1', '3', '周杰伦', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2019-03-26 18:36:46.336848', '127.0.0.1', '4', '夜神月', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2019-03-29 21:20:25.230388', '127.0.0.1', '1', 'banner/banner1.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2019-03-29 21:20:30.530210', '127.0.0.1', '2', 'banner/banner2.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2019-03-29 21:20:35.038157', '127.0.0.1', '3', 'banner/banner3.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2019-03-29 21:20:39.221003', '127.0.0.1', '4', 'banner/banner4.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2019-03-29 21:20:46.383825', '127.0.0.1', '5', 'banner/banner5.jpg', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2019-03-29 21:31:11.137339', '127.0.0.1', '5', 'linux基础', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2019-03-29 21:31:47.272696', '127.0.0.1', '6', 'js基础', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2019-03-29 21:32:21.342600', '127.0.0.1', '7', 'mysql高级', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2019-03-29 21:32:52.437462', '127.0.0.1', '8', 'mongodb', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2019-03-29 21:33:23.276003', '127.0.0.1', '9', 'oracle', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2019-03-29 21:34:32.404808', '127.0.0.1', '9', 'oracle', 'change', '修改 image 和 is_banner', '9', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2019-03-29 21:34:46.451309', '127.0.0.1', '8', 'mongodb', 'change', '修改 image 和 is_banner', '9', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2019-03-29 21:35:05.993031', '127.0.0.1', '7', 'mysql高级', 'change', '修改 image 和 is_banner', '9', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2019-03-30 10:17:18.300160', '127.0.0.1', '9', '南京大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2019-03-30 10:17:46.265386', '127.0.0.1', '10', '浙江大学', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2019-03-30 10:18:10.383898', '127.0.0.1', '11', '腾讯', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2019-03-31 10:35:30.469261', '127.0.0.1', '11', '腾讯', 'change', '修改 image 和 detail', '14', '1');

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
