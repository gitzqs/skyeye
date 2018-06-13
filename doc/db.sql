CREATE DATABASE IF NOT EXISTS sedev DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8;



-----------------------------20180123 新增sql by xiepenglin------------------------------------------


CREATE TABLE `bg_patrol` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`taskname`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '巡检任务名称' ,
`userid`  int(10) NULL DEFAULT NULL COMMENT '巡检人员' ,
`status`  int(8) NULL DEFAULT NULL COMMENT '巡检状态，0：待处理，1：进行中，2：已完成' ,
`posttime`  datetime NOT NULL ,
`begintime`  datetime NULL DEFAULT NULL ,
`endtime`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=Compact
;

CREATE TABLE `bg_patrol_pos` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`taskid`  bigint(20) NOT NULL COMMENT '巡检任务id' ,
`type`  int(8) NULL DEFAULT NULL COMMENT '类型：0：开始巡检，1：中间，2：结束巡检' ,
`posttime`  timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '定位时间' ,
`position`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=Compact
;


ALTER TABLE `bg_user` ADD COLUMN `realname`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `reqTime`;

ALTER TABLE `bg_user` ADD COLUMN `auth`  int(11) NULL DEFAULT NULL COMMENT '权限，0为全部客户，1为部分客户' AFTER `realname`;


CREATE TABLE `bg_user_cust` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`userid`  bigint(20) NOT NULL COMMENT '用户id' ,
`custid`  bigint(20) NOT NULL COMMENT '客户id' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
ROW_FORMAT=Compact
;
---------------------------------------------------------------------------------