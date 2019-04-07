/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : security

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 07/04/2019 21:29:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dep
-- ----------------------------
DROP TABLE IF EXISTS `dep`;
CREATE TABLE `dep`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(23) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createUser` int(255) NULL DEFAULT NULL COMMENT '创造人',
  `pId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dep
-- ----------------------------
INSERT INTO `dep` VALUES (1, '政治处', 4, 90);
INSERT INTO `dep` VALUES (2, '法制处', 0, 0);
INSERT INTO `dep` VALUES (3, '装备财务处', 0, 0);
INSERT INTO `dep` VALUES (4, '信通处', 0, 0);
INSERT INTO `dep` VALUES (5, '刑警队', 0, 0);
INSERT INTO `dep` VALUES (6, '巡警队', 999, 0);
INSERT INTO `dep` VALUES (7, '治安队', 0, 0);
INSERT INTO `dep` VALUES (8, '交警队', 0, 0);
INSERT INTO `dep` VALUES (9, '治安科', 0, 1);
INSERT INTO `dep` VALUES (10, '档案科', 0, 2);
INSERT INTO `dep` VALUES (11, '网监科', 0, 2);
INSERT INTO `dep` VALUES (12, '指挥中心', 0, 1);
INSERT INTO `dep` VALUES (48, '普通管理员', 44, 7);
INSERT INTO `dep` VALUES (49, '处', 2, 1);
INSERT INTO `dep` VALUES (53, '666', 22, 2232);
INSERT INTO `dep` VALUES (57, '23', 32, 323232);

-- ----------------------------
-- Table structure for hello
-- ----------------------------
DROP TABLE IF EXISTS `hello`;
CREATE TABLE `hello`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hello
-- ----------------------------
INSERT INTO `hello` VALUES (1, '23', '2232');
INSERT INTO `hello` VALUES (2, 'ef', '34');
INSERT INTO `hello` VALUES (3, 'username', '123');
INSERT INTO `hello` VALUES (4, 'username', '123');
INSERT INTO `hello` VALUES (5, 'username', '123');
INSERT INTO `hello` VALUES (6, 'username', '123');
INSERT INTO `hello` VALUES (7, 'username', '123');
INSERT INTO `hello` VALUES (8, 'username', '123');
INSERT INTO `hello` VALUES (9, 'username', '123');
INSERT INTO `hello` VALUES (10, 'username', '123');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(23) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(23) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(23) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '治保人员管理', '/home.html', NULL, 0);
INSERT INTO `menu` VALUES (2, '人员在地图上显示', '/admin.html', NULL, 1);
INSERT INTO `menu` VALUES (3, '人员活动轨迹记录', '/', NULL, 1);
INSERT INTO `menu` VALUES (4, '实时呼叫/对讲', '/', NULL, 0);
INSERT INTO `menu` VALUES (5, '创建群组', '/', NULL, 4);
INSERT INTO `menu` VALUES (6, '群内对讲', '/', NULL, 4);
INSERT INTO `menu` VALUES (7, '指定人员对讲', '/', NULL, 4);
INSERT INTO `menu` VALUES (8, '公告管理', '/', NULL, 0);
INSERT INTO `menu` VALUES (9, '下发任务公告', '/', NULL, 8);
INSERT INTO `menu` VALUES (10, '工作日志', '/', NULL, 0);
INSERT INTO `menu` VALUES (11, '人员工作记录管理', '/', NULL, 10);
INSERT INTO `menu` VALUES (12, '巡逻点签到管理', '/', NULL, 10);
INSERT INTO `menu` VALUES (13, '数据统计', '/', NULL, 0);
INSERT INTO `menu` VALUES (14, '单位人员工作统计', '/', NULL, 13);
INSERT INTO `menu` VALUES (15, '个人工作统计', '/', NULL, 13);
INSERT INTO `menu` VALUES (16, '系统设置', '/', NULL, 0);
INSERT INTO `menu` VALUES (17, '区域管理', '/', NULL, 16);
INSERT INTO `menu` VALUES (18, '组织架构', '/', NULL, 16);
INSERT INTO `menu` VALUES (19, '人员设置', '/', NULL, 16);
INSERT INTO `menu` VALUES (20, '管理员管理', '/', NULL, 16);
INSERT INTO `menu` VALUES (21, '人员位置自动上报', '/', NULL, 1);

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pId` int(11) NULL DEFAULT NULL,
  `url` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES (2, '茂名市', 1, NULL);
INSERT INTO `region` VALUES (22, '高州', 2, NULL);
INSERT INTO `region` VALUES (23, '公馆镇', 2, NULL);
INSERT INTO `region` VALUES (35, '江门市', 1, NULL);
INSERT INTO `region` VALUES (36, '江海区', 35, NULL);
INSERT INTO `region` VALUES (37, '香楠小区', 35, NULL);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (2, '超级管理员');
INSERT INTO `role` VALUES (8, '普通管理员');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NULL DEFAULT NULL,
  `menuId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (218, 2, 13);
INSERT INTO `role_menu` VALUES (219, 2, 14);
INSERT INTO `role_menu` VALUES (220, 2, 15);
INSERT INTO `role_menu` VALUES (221, 8, 1);
INSERT INTO `role_menu` VALUES (222, 8, 2);
INSERT INTO `role_menu` VALUES (223, 8, 3);
INSERT INTO `role_menu` VALUES (224, 8, 21);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(23) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(23) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expired` int(10) NULL DEFAULT NULL,
  `disabled` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2a$10$Ydj6evr5Gy1.yP95mi41peZ7ViD8rUrvZvlNygEf1uaqwcjCc/Xvy', 'admin', NULL, NULL);
INSERT INTO `user` VALUES (2, 'qin', '$2a$10$mo2gVU.s5Bq4jZdEPhY5zOEf8OL3bhXYwhVYSYNokVpXGdS5DotL6', NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'admin2', 'admin', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL,
  `roleId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 2);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父Id',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '表表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, '111', '123', '456', 222, '2018-10-15 16:00:00');
INSERT INTO `userinfo` VALUES (2, '22', '22', '222', 22, '2018-10-18 16:00:00');
INSERT INTO `userinfo` VALUES (3, 'admin', '3223', '2323', 2323, '2018-10-22 16:00:00');
INSERT INTO `userinfo` VALUES (4, '322332', '323232', '2332', 2323, '9998-12-14 16:00:00');

SET FOREIGN_KEY_CHECKS = 1;
