/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : xpg

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-07-16 18:07:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activy`
-- ----------------------------
DROP TABLE IF EXISTS `activy`;
CREATE TABLE `activy` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `productId` int(6) NOT NULL COMMENT '活动产品编号',
  `activyTitle` varchar(12) NOT NULL COMMENT '活动标题',
  `activyContent` text COMMENT '活动说明',
  `createTime` datetime(6) NOT NULL,
  `startTime` datetime(6) DEFAULT NULL,
  `endTime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activy
-- ----------------------------

-- ----------------------------
-- Table structure for `bargain`
-- ----------------------------
DROP TABLE IF EXISTS `bargain`;
CREATE TABLE `bargain` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `productId` int(2) NOT NULL,
  `bargainPrice` decimal(2,0) DEFAULT NULL COMMENT '活动特价',
  `startTime` datetime(2) DEFAULT NULL,
  `endTime` datetime(2) DEFAULT NULL,
  `createTime` datetime(2) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bargain
-- ----------------------------

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `createTime` datetime(6) DEFAULT NULL,
  `flag` int(1) DEFAULT '0' COMMENT '是否停用 停用 1 默认0 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '上线通知', '2015年7月15日正式上线', '2015-07-15 13:49:33.000000', '0');
INSERT INTO `notice` VALUES ('2', '新年快乐', '祝所有客户新年快乐', '2015-07-15 13:49:33.000000', '0');
INSERT INTO `notice` VALUES ('3', '客户注册', '客户可以通过小苹果网站注册会员账户', '2015-07-15 13:49:33.000000', '0');
INSERT INTO `notice` VALUES ('4', '注册送红包', '注册用户后可领取红包', '2015-07-15 13:49:33.000000', '0');
INSERT INTO `notice` VALUES ('5', '消费领红包', '在小苹果消费后，可领取消费红包。', '2015-07-15 13:49:33.000000', '0');
INSERT INTO `notice` VALUES ('6', '分享得红包', '分享链接，得红包', '2015-07-15 13:49:33.000000', '0');
INSERT INTO `notice` VALUES ('7', '不拉不拉不拉', '不拉不拉不拉不拉不拉不拉不拉不拉不拉', '2015-07-15 13:49:33.000000', '0');
INSERT INTO `notice` VALUES ('8', '啊啊啊我哦我', '2015年7月15啊啊啊我哦我啊啊啊我哦我日正式上线', '2015-07-15 13:49:33.000000', '0');
INSERT INTO `notice` VALUES ('9', '通知', '2015年啊打发阿帆7月15日正式上线', '2015-07-15 13:49:33.000000', '0');
INSERT INTO `notice` VALUES ('10', '其他通知', '就是个通知而已', '2015-07-15 13:57:56.000000', '1');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `productId` int(12) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `barCode` varchar(20) DEFAULT NULL,
  `src` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL COMMENT '生产厂家',
  `address` varchar(500) DEFAULT NULL COMMENT '生产地址',
  `priceIn` decimal(2,0) DEFAULT NULL COMMENT '进货价',
  `priceOut` decimal(2,0) DEFAULT NULL COMMENT '售价',
  `mark` varchar(500) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`,`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(20) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `cardId` int(12) NOT NULL COMMENT '会员卡id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `vip`
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `cardID` varchar(12) NOT NULL,
  `regTime` datetime(6) NOT NULL COMMENT '注册时间',
  `count` int(10) NOT NULL DEFAULT '0' COMMENT '积分',
  `userName` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL,
  `header` varchar(100) DEFAULT NULL COMMENT '头像地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip
-- ----------------------------
