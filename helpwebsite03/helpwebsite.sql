/*
Navicat MySQL Data Transfer

Source Server         : DESKTOP-TPHLSQ
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : helpwebsite

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2022-04-24 21:55:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apass` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL COMMENT '所属学院',
  `grade` varchar(255) DEFAULT NULL COMMENT '管理班级',
  `auth` int(255) DEFAULT NULL COMMENT '管理员权限',
  `uid` int(11) DEFAULT NULL COMMENT '用户外键',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', 'root', '软件学院', '18软工二班', '4', '2');
INSERT INTO `admin` VALUES ('2', '吕浩正', '000000', '软件学院', '18软工二班', '2', null);
INSERT INTO `admin` VALUES ('3', '张嘉麟', '000000', '软件学院', '18软工二班', '2', null);
INSERT INTO `admin` VALUES ('4', '王士凡', '000000', '软件学院', '18软工二班', '2', null);
INSERT INTO `admin` VALUES ('5', '吕真正', '000000', '软件学院', '18软工二班', '3', null);
INSERT INTO `admin` VALUES ('6', '张三', '000000', '软件学院', '18软工二班', '3', null);

-- ----------------------------
-- Table structure for dissent
-- ----------------------------
DROP TABLE IF EXISTS `dissent`;
CREATE TABLE `dissent` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) DEFAULT NULL,
  `dident` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `auditResult` int(1) DEFAULT NULL,
  `assessor` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dissent
-- ----------------------------

-- ----------------------------
-- Table structure for relatives
-- ----------------------------
DROP TABLE IF EXISTS `relatives`;
CREATE TABLE `relatives` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) DEFAULT NULL COMMENT '亲属姓名',
  `rage` int(11) DEFAULT NULL COMMENT '亲属年龄',
  `rident` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '与申请学生关系',
  `ryEarn` int(255) DEFAULT NULL COMMENT '年收入',
  `healthy` int(11) DEFAULT NULL COMMENT '亲属健康情况',
  `sid` int(11) DEFAULT NULL COMMENT '学生外键',
  `relativeIndex` double DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `sid` (`sid`),
  CONSTRAINT `sid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relatives
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `ssex` varchar(255) DEFAULT NULL,
  `haddress` varchar(255) DEFAULT NULL,
  `sid` int(11) NOT NULL,
  `sident` varchar(255) DEFAULT NULL,
  `stel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fNum` int(11) DEFAULT NULL COMMENT '家庭人口',
  `fTel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '家属号码',
  `posCode` int(11) DEFAULT NULL COMMENT '邮政编码',
  `semail` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL COMMENT '恩格尔系数',
  `mid` int(11) DEFAULT NULL COMMENT '材料系数',
  `sauth` int(11) unsigned zerofill NOT NULL COMMENT '用户权限- 学生权限默认为0',
  `povertyIndex` double DEFAULT NULL COMMENT '贫困指数',
  PRIMARY KEY (`sid`),
  KEY `uid` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('软件学院', '软件工程', '18级', '18软工二班', '陈军', '男', '安徽省池州市青阳县丁桥村', '1815252', '342923199915531', '18256625', '4', '15201848', '151592', '1967987470@qq.com', '1', null, null, '00000000000', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ident` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份-学生-管理员',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lvhaozheng', '123456', '学生');
INSERT INTO `user` VALUES ('2', 'root', 'root', '管理员');

-- ----------------------------
-- Table structure for weights
-- ----------------------------
DROP TABLE IF EXISTS `weights`;
CREATE TABLE `weights` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `fage` int(11) DEFAULT NULL,
  `mage` int(11) DEFAULT NULL,
  `totalEarn` int(11) DEFAULT NULL,
  `healthy` int(11) DEFAULT NULL,
  `degree` int(11) DEFAULT NULL,
  `variety` int(11) DEFAULT NULL,
  `ddegree` int(11) DEFAULT NULL,
  `consumptionIndex` int(11) DEFAULT NULL,
  `materialIndex` int(11) DEFAULT NULL,
  `relativeIndex` int(11) DEFAULT NULL,
  `opinionIndex` int(11) DEFAULT NULL,
  `dNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weights
-- ----------------------------
INSERT INTO `weights` VALUES ('1', '2', '20', '20', '20', '30', '30', '50', '50', '100', '25', '25', '25', '25', '2');
INSERT INTO `weights` VALUES ('2', null, null, null, null, null, null, null, null, null, '25', '25', '25', '25', null);
INSERT INTO `weights` VALUES ('3', null, null, '25', '25', '25', '25', null, null, null, null, null, null, null, null);
