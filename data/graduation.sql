/*
Navicat MySQL Data Transfer

Source Server         : 1812
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : graduation

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-06 15:38:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cartlist
-- ----------------------------
DROP TABLE IF EXISTS `cartlist`;
CREATE TABLE `cartlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_id` int(11) DEFAULT NULL,
  `goods` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartlist
-- ----------------------------
INSERT INTO `cartlist` VALUES ('12', '2', '满天星花束同城闺蜜生日毕业礼物鲜花', '1', '25.90', 'https://img.alicdn.com/imgextra/i1/3563068145/TB1nSG0jnTI8KJjSsphXXcFppXa_!!0-item_pic.jpg_760x760Q50s50.jpg_.webp', '13641465583');
INSERT INTO `cartlist` VALUES ('13', '4', '满天星花束同城闺蜜生日毕业礼物鲜花', '2', '99.00', 'https://img.alicdn.com/imgextra/i1/2943021236/O1CN01ywGiOg1L081fVa9bw_!!2943021236.jpg_760x760Q50s50.jpg_.webp', '13641465583');
INSERT INTO `cartlist` VALUES ('14', '7', '满天星花束同城闺蜜生日毕业礼物鲜花', '1', '158.00', 'https://img.alicdn.com/imgextra/i1/2943021236/O1CN01ywGiOg1L081fVa9bw_!!2943021236.jpg_760x760Q50s50.jpg_.webp', '13641465583');
INSERT INTO `cartlist` VALUES ('15', '1', '康乃馨花束毕业鲜花', '5', '239.00', 'https://img.alicdn.com/imgextra/i1/TB1gRB9LVXXXXXaXVXXXXXXXXXX_!!0-item_pic.jpg_2200x2200Q100s50.jpg_.webp', '13641465583');

-- ----------------------------
-- Table structure for goodslist
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `classity` varchar(255) DEFAULT NULL,
  `picture` varchar(10000) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `explain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', '康乃馨花束毕业鲜花', '新西兰', '鲜花类', 'https://img.alicdn.com/imgextra/i1/TB1gRB9LVXXXXXaXVXXXXXXXXXX_!!0-item_pic.jpg_2200x2200Q100s50.jpg_.webp&https:////img.alicdn.com/imgextra/i4/2104939368/TB2BeSQlXXXXXaMXXXXXXXXXXXX_!!2104939368.jpg_760x760Q50s50.jpg&https://img.alicdn.com/imgextra/i4/2104939368/TB29ceslXXXXXaLXpXXXXXXXXXX_!!2104939368.jpg_760x760Q50s50.jpg&', '400g/包', '239.00', '颜色鲜艳');
INSERT INTO `goodslist` VALUES ('2', '满天星花束同城闺蜜生日毕业礼物鲜花', '丹麦', '精选肉类', 'https://img.alicdn.com/imgextra/i1/3563068145/TB1nSG0jnTI8KJjSsphXXcFppXa_!!0-item_pic.jpg_760x760Q50s50.jpg_.webp&https://img.alicdn.com/imgextra/i4/3563068145/TB2DCiUjmYH8KJjSspdXXcRgVXa_!!3563068145.jpg_760x760Q50s50.jpg_.webp&', '700g/包', '25.90', '鲜花基地直发红白荔枝玫瑰花');
INSERT INTO `goodslist` VALUES ('3', '19朵香槟玫瑰毕业花束', '山东烟台', '新鲜蔬菜', 'https://img.alicdn.com/imgextra/i4/3416089013/TB22uakhQ.HL1JjSZFuXXX8dXXa_!!3416089013.jpg_760x760Q50s50.jpg_.webp&https://img.alicdn.com/imgextra/i3/3416089013/TB23EvXeHsTMeJjy1zbXXchlVXa_!!3416089013.jpg_760x760Q50s50.jpg_.webp&', '2.5kg/份', '99.00', '鲜花基地直发红白荔枝玫瑰花');
INSERT INTO `goodslist` VALUES ('4', '满天星花束同城闺蜜生日毕业礼物鲜花', '上海宝山', '新鲜蔬菜', 'https://img.alicdn.com/imgextra/i1/2943021236/O1CN01ywGiOg1L081fVa9bw_!!2943021236.jpg_760x760Q50s50.jpg_.webp&https://img.alicdn.com/imgextra/i2/2943021236/O1CN01jUCjKk1L082DKeUZb_!!2943021236.jpg_760x760Q50s50.jpg_.webp&', '500g/份', '99.00', '鲜花基地直发红白荔枝玫瑰花');
INSERT INTO `goodslist` VALUES ('5', '满天星花束同城闺蜜生日毕业礼物鲜花', '上海宝山', '新鲜蔬菜', 'https://img.alicdn.com/imgextra/i4/3416089013/TB22uakhQ.HL1JjSZFuXXX8dXXa_!!3416089013.jpg_760x760Q50s50.jpg_.webp&https://img.alicdn.com/imgextra/i3/3416089013/TB23EvXeHsTMeJjy1zbXXchlVXa_!!3416089013.jpg_760x760Q50s50.jpg_.webp&', '500g/份', '89.00', '鲜花基地直发红白荔枝玫瑰花');
INSERT INTO `goodslist` VALUES ('6', '满天星花束同城闺蜜生日毕业礼物鲜花', '上海宝山', '新鲜蔬菜', 'https://img.alicdn.com/imgextra/i1/2943021236/O1CN01ywGiOg1L081fVa9bw_!!2943021236.jpg_760x760Q50s50.jpg_.webp&https://img.alicdn.com/imgextra/i2/2943021236/O1CN01jUCjKk1L082DKeUZb_!!2943021236.jpg_760x760Q50s50.jpg_.webp&', '500g/份', '150.00', '鲜花基地直发红白荔枝玫瑰花');
INSERT INTO `goodslist` VALUES ('7', '满天星花束同城闺蜜生日毕业礼物鲜花', '上海宝山', '新鲜蔬菜', 'https://img.alicdn.com/imgextra/i1/2943021236/O1CN01ywGiOg1L081fVa9bw_!!2943021236.jpg_760x760Q50s50.jpg_.webp&https://img.alicdn.com/imgextra/i2/2943021236/O1CN01jUCjKk1L082DKeUZb_!!2943021236.jpg_760x760Q50s50.jpg_.webp&', '500g/份', '158.00', '鲜花基地直发红白荔枝玫瑰花');
INSERT INTO `goodslist` VALUES ('8', '网红草莓毕业花束鲜花', '上海宝山', '新鲜蔬菜', 'https://img.alicdn.com/imgextra/i2/3478433557/O1CN01lELJzg1c99I6lgtEU_!!0-item_pic.jpg_760x760Q50s50.jpg_.webp&https://img.alicdn.com/imgextra/i2/3478433557/O1CN01YN5lHU1c99I2ufSxd_!!3478433557.jpg_760x760Q50s50.jpg_.webp&', '500g/份', '160.00', '鲜花基地直发红白荔枝玫瑰花');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `psw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '13682313460', '123456');
INSERT INTO `users` VALUES ('2', '13641465583', '123456');
INSERT INTO `users` VALUES ('3', '13641465581', '123456');
SET FOREIGN_KEY_CHECKS=1;
