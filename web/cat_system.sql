/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : cat_system

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2021-06-24 20:14:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cat_system
-- ----------------------------
DROP TABLE IF EXISTS `cat_system`;
CREATE TABLE `cat_system` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Age` int(3) NOT NULL,
  `Sex` varchar(2) NOT NULL,
  `Jieyu` varchar(2) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cat_system
-- ----------------------------
INSERT INTO `cat_system` VALUES ('4', '玳瑁', '2', '雄', '否');
