/*
Navicat MySQL Data Transfer

Source Server         : 1812
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-12 13:52:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cartlist
-- ----------------------------
DROP TABLE IF EXISTS `cartlist`;
CREATE TABLE `cartlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_id` int(11) NOT NULL,
  `goods` varchar(255) NOT NULL,
  `num` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartlist
-- ----------------------------
INSERT INTO `cartlist` VALUES ('33', '2', '满天星花束同城闺蜜生日毕业礼物鲜花', '1', '25.90', 'ban3.jpg', '13682313460');
INSERT INTO `cartlist` VALUES ('34', '4', '满天星花束同城闺蜜生日毕业礼物鲜花', '1', '99.00', 'ban3.jpg', '13682313460');
INSERT INTO `cartlist` VALUES ('35', '5', '满天星花束同城闺蜜生日毕业礼物鲜花', '3', '89.00', 'ban3.jpg', '13682313460');
INSERT INTO `cartlist` VALUES ('16', '1', '康乃馨花束毕业鲜花', '1', '239.00', 'ban4.jpg', '13641465583');
INSERT INTO `cartlist` VALUES ('17', '2', '满天星花束同城闺蜜生日毕业礼物鲜花', '2', '25.90', 'ban1.jpg', '13641465583');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `addTime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '毕业鲜花', '10');
INSERT INTO `category` VALUES ('2', '毕业气球', '10');
INSERT INTO `category` VALUES ('3', '毕业服装', '10');

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `addTime` varchar(255) NOT NULL,
  `classity` varchar(255) NOT NULL,
  `picture` varchar(10000) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `explain` varchar(255) NOT NULL,
  `oldprice` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', '康乃馨花束毕业鲜花', '1554281501736', '毕业鲜花', 'ban1.jpg&ban2.jpg&ban3.jpg', '400g/包', '239.00', '颜色鲜艳', null, null);
INSERT INTO `goodslist` VALUES ('2', '满天星花束同城闺蜜生日毕业礼物鲜花', '1554281501736', '毕业鲜花', 'ban3.jpg&ban3.jpg&ban3.jpg', '700g/包', '25.90', '鲜花基地直发红白荔枝玫瑰花', null, null);
INSERT INTO `goodslist` VALUES ('3', '19朵香槟玫瑰毕业花束', '1554281501736', '毕业鲜花', 'ban3.jpg&ban3.jpg&ban3.jpg', '2.5kg/份', '99.00', '鲜花基地直发红白荔枝玫瑰花', null, null);
INSERT INTO `goodslist` VALUES ('4', '满天星花束同城闺蜜生日毕业礼物鲜花', '1554281501736', '毕业鲜花', 'ban3.jpg&ban3.jpg&ban3.jpg', '500g/份', '99.00', '鲜花基地直发红白荔枝玫瑰花', null, null);
INSERT INTO `goodslist` VALUES ('5', '满天星花束同城闺蜜生日毕业礼物鲜花', '1554281501736', '毕业鲜花', 'ban3.jpg&ban3.jpg&ban3.jpg', '500g/份', '89.00', '鲜花基地直发红白荔枝玫瑰花', null, null);
INSERT INTO `goodslist` VALUES ('6', '满天星花束同城闺蜜生日毕业礼物鲜花', '1554281501736', '毕业气球', 'ban3.jpg&ban3.jpg&ban3.jpg', '500g/份', '150.00', '鲜花基地直发红白荔枝玫瑰花', null, null);
INSERT INTO `goodslist` VALUES ('7', '满天星花束同城闺蜜生日毕业礼物鲜花', '1554281501736', '毕业服装', 'ban3.jpg&ban3.jpg&ban3.jpg', '500g/份', '158.00', '鲜花基地直发红白荔枝玫瑰花', null, null);
INSERT INTO `goodslist` VALUES ('8', '网红草莓毕业花束鲜花', '1554281501736', '毕业服装', 'ban3.jpg&ban3.jpg&ban3.jpg', '500g/份', '160.00', '鲜花基地直发红白荔枝玫瑰花', null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '13682313460', '123456');
INSERT INTO `users` VALUES ('2', '13641465583', '123456');
INSERT INTO `users` VALUES ('3', '13641465581', '123456');
SET FOREIGN_KEY_CHECKS=1;
