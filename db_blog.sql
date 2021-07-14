/*
Navicat MySQL Data Transfer

Source Server         : fw姬豪杰
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : db_blog

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2021-06-23 17:01:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_anno
-- ----------------------------
DROP TABLE IF EXISTS `blog_anno`;
CREATE TABLE `blog_anno` (
  `anno_id` int(11) NOT NULL AUTO_INCREMENT,
  `anno_context` varchar(255) DEFAULT NULL,
  `anno_describe` longtext,
  `anno_keyword` longtext,
  `anno_title` varchar(50) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`anno_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_anno
-- ----------------------------
INSERT INTO `blog_anno` VALUES ('1', '通告内容测试', '这事描述，没啥东西', '测试', '通告标题', '2021-06-22 16:42:29');
INSERT INTO `blog_anno` VALUES ('2', '添加新公告测试', '添加新公告测试', '添加新公告测试', '添加新公告测试', null);
INSERT INTO `blog_anno` VALUES ('3', '修改添加公告2', '修改添加公告2', '修改添加公告2', '修改添加公告2', null);

-- ----------------------------
-- Table structure for blog_chapter
-- ----------------------------
DROP TABLE IF EXISTS `blog_chapter`;
CREATE TABLE `blog_chapter` (
  `chapter_id` int(20) NOT NULL AUTO_INCREMENT,
  `chapter_context` varchar(255) DEFAULT NULL,
  `chapter_describe` longtext,
  `chapter_keyword` longtext,
  `chapter_title` varchar(50) DEFAULT NULL,
  `common` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`chapter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_chapter
-- ----------------------------
INSERT INTO `blog_chapter` VALUES ('27', '测试数据内容', null, 'java', '测试数据14', null, null, null, null);
INSERT INTO `blog_chapter` VALUES ('26', '测试数据内容', null, 'java', '测试数据13', null, null, null, null);
INSERT INTO `blog_chapter` VALUES ('25', '测试数据内容', null, 'java', '测试数据12', null, null, null, null);
INSERT INTO `blog_chapter` VALUES ('10', '测试数据内容', null, '测试', '测试数据5', null, '2021-06-23 15:08:38', null, null);
INSERT INTO `blog_chapter` VALUES ('12', '测试数据内容', null, '开发', '测试数据7', null, null, null, null);
INSERT INTO `blog_chapter` VALUES ('13', '测试数据内容', null, 'css', '测试数据8', null, '2021-06-23 15:08:46', null, null);
INSERT INTO `blog_chapter` VALUES ('14', '测试数据内容', null, 'html', '测试数据9', null, '2021-06-23 15:08:49', null, null);
INSERT INTO `blog_chapter` VALUES ('15', '测试数据内容', null, 'js', '测试数据10', null, '2021-06-23 15:08:52', null, null);
INSERT INTO `blog_chapter` VALUES ('16', '测试数据内容', null, 'java', '测试数据12', null, '2021-06-23 15:08:55', null, null);
INSERT INTO `blog_chapter` VALUES ('28', '测试数据内容', null, 'java', '测试数据15', null, null, null, null);
INSERT INTO `blog_chapter` VALUES ('29', '测试数据内容', null, 'java', '测试数据16', null, null, null, null);
INSERT INTO `blog_chapter` VALUES ('30', '测试数据内容', null, 'java', '测试数据17', null, null, null, null);
INSERT INTO `blog_chapter` VALUES ('31', '测试数据内容', null, 'java', '测试数据18', null, null, null, null);
INSERT INTO `blog_chapter` VALUES ('32', '测试数据内容', null, 'java', '测试数据19', null, null, null, null);
INSERT INTO `blog_chapter` VALUES ('33', '测试数据内容', null, 'java', '测试数据20', null, null, null, null);

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `comment_id` int(11) NOT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `publish_context` longtext,
  `publish_man` varchar(50) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for blog_link
-- ----------------------------
DROP TABLE IF EXISTS `blog_link`;
CREATE TABLE `blog_link` (
  `link_id` int(11) NOT NULL,
  `link_describe` varchar(200) DEFAULT NULL,
  `link_name` varchar(50) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_link
-- ----------------------------

-- ----------------------------
-- Table structure for blog_message
-- ----------------------------
DROP TABLE IF EXISTS `blog_message`;
CREATE TABLE `blog_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_context` varchar(255) DEFAULT NULL,
  `publish_man` varchar(50) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_message
-- ----------------------------
INSERT INTO `blog_message` VALUES ('4', '测试留言1', '测试留言1', '2021-06-23 16:34:23');
INSERT INTO `blog_message` VALUES ('3', '测试留言1', '测试留言1', '2021-06-23 16:34:00');
INSERT INTO `blog_message` VALUES ('5', '测试留言1', '测试留言1', '2021-06-23 16:34:26');
INSERT INTO `blog_message` VALUES ('6', '测试留言1', '测试留言1', '2021-06-23 16:34:30');
INSERT INTO `blog_message` VALUES ('7', '测试留言1', '测试留言1', '2021-06-23 16:34:33');
INSERT INTO `blog_message` VALUES ('8', '测试留言1', '测试留言1', '2021-06-23 16:34:36');
INSERT INTO `blog_message` VALUES ('9', '测试留言1', '测试留言1', '2021-06-23 16:34:39');
INSERT INTO `blog_message` VALUES ('10', '测试留言1', '测试留言1', '2021-06-23 16:34:43');
INSERT INTO `blog_message` VALUES ('11', '测试留言1', '测试留言1', '2021-06-23 16:34:47');
INSERT INTO `blog_message` VALUES ('12', ' <p>留言测试</p>', '测试用户', '2021-06-23 08:41:54');
INSERT INTO `blog_message` VALUES ('17', ' <p>测试</p>', '测试用户', '2021-06-23 08:44:26');
INSERT INTO `blog_message` VALUES ('16', ' <p>用户测试保存留言</p>', '测试用户', '2021-06-23 08:43:25');

-- ----------------------------
-- Table structure for blog_type
-- ----------------------------
DROP TABLE IF EXISTS `blog_type`;
CREATE TABLE `blog_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_describe` tinyblob,
  `type_keyword` varchar(100) DEFAULT NULL,
  `type_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_type
-- ----------------------------
INSERT INTO `blog_type` VALUES ('2', 0xACED0005757200135B4C6A6176612E6C616E672E537472696E673BADD256E7E91D7B47020000787000000001740000, 'python', 'python修改测试');
INSERT INTO `blog_type` VALUES ('3', null, null, 'linux');
INSERT INTO `blog_type` VALUES ('8', 0xACED0005757200135B4C6A6176612E6C616E672E537472696E673BADD256E7E91D7B47020000787000000001740006E6B58BE8AF95, '测试', '测试');
INSERT INTO `blog_type` VALUES ('13', 0xACED0005757200135B4C6A6176612E6C616E672E537472696E673BADD256E7E91D7B4702000078700000000174001B5B4C6A6176612E6C616E672E537472696E673B4031326234333336, '测试', '测试测试');

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `creatortime` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `upwd` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES (null, '1', 'root', 'root');
