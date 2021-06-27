/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : train

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2021-06-27 14:26:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cat_system
-- ----------------------------
DROP TABLE IF EXISTS `cat_system`;
CREATE TABLE `cat_system` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Age` int(4) NOT NULL,
  `Sex` varchar(4) NOT NULL,
  `Jieyu` varchar(4) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cat_system
-- ----------------------------
INSERT INTO `cat_system` VALUES ('4', '狸花', '2', '雌', '是');
INSERT INTO `cat_system` VALUES ('7', '橘猫', '5', '雄', '是');
INSERT INTO `cat_system` VALUES ('8', '橘猫', '4', '雌', '是');
INSERT INTO `cat_system` VALUES ('9', '布偶', '4', '雌', '是');
INSERT INTO `cat_system` VALUES ('10', '橘猫', '1', '雌', '否');
INSERT INTO `cat_system` VALUES ('11', '橘猫', '1', '雌', '否');
INSERT INTO `cat_system` VALUES ('12', '橘猫', '1', '雌', '否');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `stu_no` int(10) NOT NULL,
  `stu_name` varchar(50) NOT NULL,
  `stu_sex` varchar(1) NOT NULL,
  `stu_birth` date NOT NULL,
  `stu_email` varchar(50) NOT NULL,
  `stu_tel` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '2019232127', '张三', '男', '2021-06-16', '1010874691@qq.com', '13715537820');
INSERT INTO `student` VALUES ('2', '2019232127', '张三', '男', '2021-06-16', '1010874691@qq.com', '13715537820');
INSERT INTO `student` VALUES ('3', '2019232127', '张三', '男', '2021-06-16', '1010874691@qq.com', '13715537820');
INSERT INTO `student` VALUES ('4', '2019232127', '张三', '男', '2021-06-16', '1010874691@qq.com', '13715537820');
INSERT INTO `student` VALUES ('5', '2019232127', '张三', '男', '2021-06-16', '1010874691@qq.com', '13715537820');
INSERT INTO `student` VALUES ('6', '2019232127', '小刘', '男', '2019-12-01', '1010874691@qq.com', '13716678963');
INSERT INTO `student` VALUES ('10', '2019232127', '张三', '男', '2021-06-16', '1010874691@qq.com', '13458963210');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123');
INSERT INTO `user` VALUES ('2', '张三', '456');
INSERT INTO `user` VALUES ('3', '小刘', '123');
