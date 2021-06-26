/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : train

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2021-06-26 19:44:36
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
INSERT INTO `student` VALUES ('11', '2019232127', '张三', '女', '2021-06-03', '1010874691@qq.com', '13716678960');
