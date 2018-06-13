/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : skyeye

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-26 23:29:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bg_company
-- ----------------------------
DROP TABLE IF EXISTS `bg_company`;
CREATE TABLE `bg_company` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(30) DEFAULT NULL COMMENT '客户公司名称',
  `address` varchar(50) DEFAULT NULL COMMENT '公司地址',
  `personName` varchar(20) DEFAULT NULL COMMENT '公司联系人',
  `mobile` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `status` int(2) DEFAULT NULL,
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客户信息表：管理运营商基础信息';

-- ----------------------------
-- Records of bg_company
-- ----------------------------

-- ----------------------------
-- Table structure for bg_equipment
-- ----------------------------
DROP TABLE IF EXISTS `bg_equipment`;
CREATE TABLE `bg_equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `simId` bigint(20) DEFAULT NULL COMMENT 'sim卡ID',
  `name` varchar(30) DEFAULT NULL COMMENT '设备名称',
  `equipCode` varchar(50) DEFAULT NULL COMMENT '设备编码',
  `companyId` bigint(20) DEFAULT NULL COMMENT '绑定的公司ID',
  `saleDate` date DEFAULT NULL COMMENT '销售时间（服务开始日期）',
  `serviceDay` int(10) DEFAULT NULL COMMENT '服务周期/天',
  `remainDay` int(10) DEFAULT NULL COMMENT '剩余天数',
  `status` int(2) DEFAULT '0',
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='设备信息表：管理汉邦设备信息';

-- ----------------------------
-- Records of bg_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for bg_log_recharge
-- ----------------------------
DROP TABLE IF EXISTS `bg_log_recharge`;
CREATE TABLE `bg_log_recharge` (
  `id` bigint(20) NOT NULL,
  `equipId` bigint(20) DEFAULT NULL COMMENT '设备ID',
  `companyId` bigint(20) DEFAULT NULL COMMENT '公司ID',
  `dayBefore` int(10) DEFAULT NULL COMMENT '充值前剩余天数',
  `dayAdd` int(10) DEFAULT NULL COMMENT '充值天数',
  `dayAfter` int(10) DEFAULT NULL COMMENT '充值后剩余天数',
  `addTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '充值时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值记录表：记录每次充值的流水信息';

-- ----------------------------
-- Records of bg_log_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for bg_role
-- ----------------------------
DROP TABLE IF EXISTS `bg_role`;
CREATE TABLE `bg_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色信息表：维护角色信息';

-- ----------------------------
-- Records of bg_role
-- ----------------------------
INSERT INTO `bg_role` VALUES ('1', '系统管理员', '2017-11-24 16:18:32');
INSERT INTO `bg_role` VALUES ('2', '运营商管理员', '2017-11-24 16:18:27');
INSERT INTO `bg_role` VALUES ('3', '运营商员工', '2017-11-24 16:18:52');
INSERT INTO `bg_role` VALUES ('4', '运营商客户', '2017-11-24 16:19:02');

-- ----------------------------
-- Table structure for bg_simcard
-- ----------------------------
DROP TABLE IF EXISTS `bg_simcard`;
CREATE TABLE `bg_simcard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cardNumber` varchar(20) DEFAULT NULL COMMENT 'sim卡号码',
  `status` int(2) DEFAULT '0',
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bg_simcard
-- ----------------------------

-- ----------------------------
-- Table structure for bg_user
-- ----------------------------
DROP TABLE IF EXISTS `bg_user`;
CREATE TABLE `bg_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '登陆密码',
  `roleId` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `status` int(2) DEFAULT '0' COMMENT '用户状态',
  `reqTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户管理表，用于平台和APP登陆';

-- ----------------------------
-- Records of bg_user
-- ----------------------------

-- ----------------------------
-- Table structure for lt_gen_detail
-- ----------------------------
DROP TABLE IF EXISTS `lt_gen_detail`;
CREATE TABLE `lt_gen_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deviceid` varchar(30) DEFAULT NULL,
  `realdata` varchar(2000) DEFAULT NULL,
  `timestamp` varchar(30) DEFAULT NULL,
  `reqTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lt_gen_detail
-- ----------------------------

-- ----------------------------
-- Table structure for lt_pubinfo
-- ----------------------------
DROP TABLE IF EXISTS `lt_pubinfo`;
CREATE TABLE `lt_pubinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` varchar(20) DEFAULT NULL,
  `deviceid` varchar(40) DEFAULT NULL,
  `devname` varchar(30) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `cmd` varchar(50) DEFAULT NULL,
  `msgid` varchar(30) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `usr` varchar(30) DEFAULT NULL,
  `pwd` varchar(15) DEFAULT NULL,
  `interfname` varchar(20) DEFAULT NULL,
  `reqTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deviceid_uniq` (`deviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lt_pubinfo
-- ----------------------------
