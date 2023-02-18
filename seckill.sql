/*
 Navicat MySQL Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : seckill

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 19/02/2023 01:37:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales` int(11) NOT NULL DEFAULT '0',
  `img_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of item
-- ----------------------------
BEGIN;
INSERT INTO `item` VALUES (1, 'iphone', 12.00, 'iphone14', 7, 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-14-pro-model-unselect-gallery-2-202209?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1660753617559');
INSERT INTO `item` VALUES (7, '三星S23', 12.87, '三星S23', 1, 'https://shop-image.samsung.com.cn/goods/2023/02/01/63d9434ce4b08db2edda2201.png?x-oss-process=image/resize,w_450,m_lfit');
INSERT INTO `item` VALUES (8, 'huawei mate', 10888.00, 'huawei', 1, 'https://p0.itc.cn/q_70/images03/20220828/d42b1775eac54c6d8d8df449de67b1d4.png');
COMMIT;

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
BEGIN;
INSERT INTO `item_stock` VALUES (1, 115, 1);
INSERT INTO `item_stock` VALUES (7, 72, 7);
INSERT INTO `item_stock` VALUES (8, 99, 8);
COMMIT;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_price` double NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `order_price` double NOT NULL DEFAULT '0',
  `promo_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order_info
-- ----------------------------
BEGIN;
INSERT INTO `order_info` VALUES ('2023021600000300', 18, 1, 12, 1, 12, 0);
INSERT INTO `order_info` VALUES ('2023021600000400', 18, 1, 12, 1, 12, 0);
INSERT INTO `order_info` VALUES ('2023021600000500', 18, 1, 12, 1, 12, 0);
INSERT INTO `order_info` VALUES ('2023021600000600', 18, 1, 12, 1, 12, 0);
INSERT INTO `order_info` VALUES ('2023021600000700', 18, 7, 12.87, 1, 12.87, 0);
INSERT INTO `order_info` VALUES ('2023021600000800', 18, 8, 10888, 1, 10888, 0);
INSERT INTO `order_info` VALUES ('2023021800001200', 18, 1, 5, 1, 5, 1);
INSERT INTO `order_info` VALUES ('2023021800001300', 18, 1, 5, 1, 5, 1);
INSERT INTO `order_info` VALUES ('2023021800001400', 18, 1, 5, 1, 5, 1);
COMMIT;

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `promo_item_price` double NOT NULL DEFAULT '0',
  `end_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of promo
-- ----------------------------
BEGIN;
INSERT INTO `promo` VALUES (1, 'iphone抢购活动', '2023-02-18 23:55:50', 1, 5, '2023-02-19 23:00:00');
COMMIT;

-- ----------------------------
-- Table structure for sequence_info
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_value` int(11) NOT NULL DEFAULT '0',
  `step` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sequence_info
-- ----------------------------
BEGIN;
INSERT INTO `sequence_info` VALUES ('order_info', 15, 1);
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1代表男性，2代表女性',
  `age` int(11) NOT NULL DEFAULT '0',
  `telphone` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `register_mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'byphone,bywechat,byalipay',
  `third_party_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `telphone_unique_index` (`telphone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (18, 'abc', 1, 12, '123456', 'byphone', '');
COMMIT;

-- ----------------------------
-- Table structure for user_password
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_password
-- ----------------------------
BEGIN;
INSERT INTO `user_password` VALUES (6, 'ICy5YqxZB1uWSwcVLSNLcA==', 18);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
