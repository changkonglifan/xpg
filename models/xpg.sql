/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : xpg

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-07-20 18:05:21
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
  `content` text COMMENT '活动说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bargain
-- ----------------------------
INSERT INTO `bargain` VALUES ('1', '1', '3', '2015-07-17 10:32:54.00', '2015-07-23 10:32:58.00', '2015-07-17 10:33:02.00', 'asdf阿什顿特');
INSERT INTO `bargain` VALUES ('2', '3', '3', '2015-07-17 10:34:23.00', '2015-07-29 10:34:27.00', '2015-07-17 10:34:31.00', 'adf阿斯蒂芬');
INSERT INTO `bargain` VALUES ('3', '4', '6', '2015-07-17 10:34:43.00', '2015-07-31 10:34:46.00', '2015-07-17 10:34:49.00', '阿斯蒂芬放的');
INSERT INTO `bargain` VALUES ('4', '5', '4', '2015-07-17 10:35:13.00', '2015-07-31 10:35:16.00', '2015-07-17 10:35:20.00', '打');
INSERT INTO `bargain` VALUES ('5', '2', '1', '2015-07-17 10:35:28.00', '2015-07-30 10:35:31.00', '2015-07-17 10:35:35.00', '地方阿凡达地方');

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
  `onSale` int(1) NOT NULL DEFAULT '0',
  `saleCount` int(3) DEFAULT '0',
  PRIMARY KEY (`id`,`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '1', '湘康锅底香锅巴', '', '', '福建旭阳食品公司', '福建福州', '1', '4', '锅底香锅巴', '0', '0');
INSERT INTO `product` VALUES ('2', '2', '多尔好爆香鱿鱼28g', '', '', '福建旭阳食品公司', '福建福州', '1', '4', '多尔好爆香鱿鱼28g', '0', '0');
INSERT INTO `product` VALUES ('3', '3', '恰恰怪味豆130g', '', '', '福建旭阳食品公司', '福建福州', '1', '4', '恰恰怪味豆', '0', '0');
INSERT INTO `product` VALUES ('4', '4', '有友泡椒花生', '', '', '福建旭阳食品公司', '福建福州', '1', '4', '有友泡椒花生', '0', '0');
INSERT INTO `product` VALUES ('5', '5', '平飞卤味鸡爪', '', '', '福建旭阳食品公司', '福建福州', '1', '4', '平飞卤味鸡爪', '0', '0');

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
  `scord` int(10) NOT NULL DEFAULT '0' COMMENT '积分',
  `userName` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL,
  `header` varchar(100) DEFAULT NULL COMMENT '头像地址',
  `email` varchar(50) NOT NULL COMMENT '注册邮箱',
  PRIMARY KEY (`cardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip
-- ----------------------------
INSERT INTO `vip` VALUES ('0001', '2015-07-20 18:02:35.000000', '0', 'admin', 'xuyanglifan', null, '897103652@qq.com');
