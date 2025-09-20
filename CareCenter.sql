/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80400 (8.4.0)
 Source Host           : localhost:3306
 Source Schema         : carecenter

 Target Server Type    : MySQL
 Target Server Version : 80400 (8.4.0)
 File Encoding         : 65001

 Date: 18/09/2025 19:56:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bedroom
-- ----------------------------
DROP TABLE IF EXISTS `bedroom`;
CREATE TABLE `bedroom`  (
  `id` int NULL DEFAULT NULL,
  `bedid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `peoplename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `peopleid` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bedroom
-- ----------------------------
INSERT INTO `bedroom` VALUES (3, 'A3', 'bbb', '占用', 149);
INSERT INTO `bedroom` VALUES (113, 'A13', 'ddd', '占用', 151);
INSERT INTO `bedroom` VALUES (116, 'A16', 'bao', '占用', 153);
INSERT INTO `bedroom` VALUES (118, 'B3', 'ccc', '占用', 150);
INSERT INTO `bedroom` VALUES (127, 'A1', '', '空闲', NULL);
INSERT INTO `bedroom` VALUES (128, 'A7', NULL, '空闲', NULL);
INSERT INTO `bedroom` VALUES (129, 'A19', '', '空闲', NULL);

-- ----------------------------
-- Table structure for busroute
-- ----------------------------
DROP TABLE IF EXISTS `busroute`;
CREATE TABLE `busroute`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bustime` time NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of busroute
-- ----------------------------
INSERT INTO `busroute` VALUES (1, 'a1', '08:00:00', 'a-b-c');

-- ----------------------------
-- Table structure for check_in
-- ----------------------------
DROP TABLE IF EXISTS `check_in`;
CREATE TABLE `check_in`  (
  `id` int NULL DEFAULT NULL,
  `customername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `customerage` int NULL DEFAULT NULL,
  `customersex` int NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `roomid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `buildingid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `recordid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `eldertype` int NULL DEFAULT NULL,
  `checkindate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `expirationdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contacttel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `delflag` int NULL DEFAULT NULL,
  `checkoutdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checkouttype` int NULL DEFAULT NULL,
  `checkoutreason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `asktime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `auditopinion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `auditperson` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `audittime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checkoutremarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checkoutdelflag` int NULL DEFAULT NULL,
  `gooutreason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goouttime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `wantbacktime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `truebacktime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `companions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `relationship` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `companionstel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gooutstatus` int NULL DEFAULT NULL,
  `gooutauditperson` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gooutaudittime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gooutremarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nursing_level` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of check_in
-- ----------------------------
INSERT INTO `check_in` VALUES (1, 'aaa', 123, 1, '156135432103', '123', '123123', '123', 1, '19-8-2024', '20-8-2024', '15026041124', 'ccc', 1, '31/7/2024', 2, 'bbbb', 1, NULL, '无', '无', '29/8/2024', 'adawd', 1, '2222', NULL, NULL, '8/8/2024', '444', '333', '444', 1, '蜘蛛侠', NULL, 'qeqe', 0);
INSERT INTO `check_in` VALUES (149, 'bbb', 22, 1, '53431', 'afa', 'ffff', '111', 2, '29-8-2024', '30-8-2024', '18630044551', '111', 0, '30/8/2024', 0, '222', 2, NULL, NULL, NULL, NULL, '', 1, '大大', NULL, NULL, NULL, '啊啊啊', '啊啊', '啊啊', 3, '大大', NULL, '巴巴爸爸巴巴爸爸', 1);
INSERT INTO `check_in` VALUES (150, 'ccc', 22, 1, '53431', 'afa', 'ffff', '222', 2, '29-8-2024', '30-8-2024', '18630044551', 'dd', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, '无', NULL, NULL, NULL, '无', '无', '15621', 3, '启明', NULL, 'ccccc', 2);
INSERT INTO `check_in` VALUES (151, 'ddd', 22, 1, '53431', 'afa', 'ffff', '333', 0, '29-8-2024', '30-8-2024', '18630044551', 'dd', 1, '30/8/2024', 0, 'ddd', 3, NULL, NULL, NULL, NULL, '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 3);
INSERT INTO `check_in` VALUES (152, 'bao', 22, 1, '53431', 'afa', 'ffff', 'asad', 2, '29-8-2024', '30-8-2024', '18630044551', 'dd', 0, '30/7/2024', NULL, '啊啊啊', 3, NULL, NULL, NULL, NULL, 'null', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '启明', NULL, NULL, 3);
INSERT INTO `check_in` VALUES (153, 'bao', 22, 1, '53431', 'afa', 'ffff', '12ass', 0, '29-8-2024', '30-8-2024', '18630044551', '222', 1, '5/8/2024', 2, '打啊打', 2, NULL, NULL, NULL, NULL, 'null', 1, 'dddd', NULL, NULL, NULL, '我', '无', '18630044551', 3, '阿萨德', NULL, '粑粑', 2);
INSERT INTO `check_in` VALUES (154, '余力西', 18, 1, '130566200401270028', '123', '123', '1231', 0, '29-8-2024', '30-8-2024', '13545678977', '1111', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `check_in` VALUES (155, '123', 14, 1, '136520443402571123', '12345', '12', '345', 0, '29-8-2024', '30-8-2024', '15931754248', '0000000', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 4);
INSERT INTO `check_in` VALUES (156, '一离析', 11, 0, '135524704040445674', '1234567', '1111111', '111111', 0, '29-8-2024', '30-8-2024', '16764343434', '1111111111', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 3);
INSERT INTO `check_in` VALUES (157, '123', 123, 1, '130444000000000000', '111', '111', '1111', 0, '29-8-2024', '30-8-2024', '15204043427', '123', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 4);
INSERT INTO `check_in` VALUES (158, '100', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for customcontent
-- ----------------------------
DROP TABLE IF EXISTS `customcontent`;
CREATE TABLE `customcontent`  (
  `cuid` int NULL DEFAULT NULL,
  `cid` int NULL DEFAULT NULL,
  `executecycle` int NULL DEFAULT NULL,
  `executenub` int NULL DEFAULT NULL,
  `lastn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `buy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `leftn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customcontent
-- ----------------------------
INSERT INTO `customcontent` VALUES (1, 1, 2, 1, '00000000010', '00000000010', '00000000020', '00000000003', '31/8/2024', 'ccc');
INSERT INTO `customcontent` VALUES (156, 1, 2, 1, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (156, 8, 2, 1, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (157, 1, 2, 3, '00000000000', '00000000003', '00000000003', '00000000003', '2/9/2024', 'cc');
INSERT INTO `customcontent` VALUES (157, 2, 1, 4, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (157, 3, 2, 5, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (157, 4, 3, 11, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (157, 16, 1, 1, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1004, 1, 2, 3, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1004, 2, 1, 4, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1004, 3, 2, 5, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1004, 4, 3, 10, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1005, 1, 2, 3, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1005, 2, 1, 4, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1005, 3, 2, 5, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1005, 4, 3, 11, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1006, 1, 2, 3, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1006, 2, 1, 4, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1006, 3, 2, 5, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1006, 4, 3, 11, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1007, 1, 1, 1, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1008, 1, 1, 1, NULL, NULL, '00000000000', NULL, NULL, NULL);
INSERT INTO `customcontent` VALUES (1008, 8, 1, 1, NULL, NULL, '00000000000', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dietarycalendar
-- ----------------------------
DROP TABLE IF EXISTS `dietarycalendar`;
CREATE TABLE `dietarycalendar`  (
  `id` int NULL DEFAULT NULL,
  `mealtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mealname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` int NULL DEFAULT NULL,
  `qingzhen` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `days` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dietarycalendar
-- ----------------------------
INSERT INTO `dietarycalendar` VALUES (1, '午餐', '红烧肉', '主食', 10, 0, 1, 'Tuesday', '/images/j4gBbt8eNGjL_eD0wE_iA.png');
INSERT INTO `dietarycalendar` VALUES (2, '早餐', '四喜丸子', '大荤', 17, 0, 1, 'Tuesday', '/images/3fwd_mxY1as_sB3O4UfNh.png');
INSERT INTO `dietarycalendar` VALUES (3, '午餐', '宫保鸡丁', '小荤', 20, 1, 1, 'Wednesday', '/images/x9UYXZewvR7hFQllfWehV.png');
INSERT INTO `dietarycalendar` VALUES (4, '午餐', '宫保鸡丁', '小荤', 2, 1, 1, 'Thursday', '/images/x9UYXZewvR7hFQllfWehV.png');
INSERT INTO `dietarycalendar` VALUES (5, '早餐', '麻婆豆腐', '小荤', 33, 0, 1, 'Friday', '/images/FycQqJshB6kR9m8o6QGpd.png');
INSERT INTO `dietarycalendar` VALUES (6, '晚餐', '132', '甜点', 213, 0, 1, 'Saturday', '/images/0lY5kXVaPNGF9saQ_Spdo.png');
INSERT INTO `dietarycalendar` VALUES (7, '早餐', '面包', '套餐', 500000, 1, 1, 'Sunday', '/images/KqRnNckKNkGOA6ic1i4_-.png');
INSERT INTO `dietarycalendar` VALUES (8, '午餐', '面包', '主食', 1, 1, 1, 'Monday', '/images/KqRnNckKNkGOA6ic1i4_-.png');
INSERT INTO `dietarycalendar` VALUES (9, '晚餐', '牛肉面', '主食', 12, 1, 1, 'Monday', '/images/PABi7IU4wmB9oSNEtpFY9.png');
INSERT INTO `dietarycalendar` VALUES (10, '早餐', '面包', '主食', 15, 1, 1, 'Tuesday', '/images/KqRnNckKNkGOA6ic1i4_-.png');
INSERT INTO `dietarycalendar` VALUES (11, '晚餐', '酸辣土豆丝', '素菜', 5, 1, 1, 'Tuesday', '/images/WFSpYzVKb4LDJr41la4tN.png');
INSERT INTO `dietarycalendar` VALUES (12, '早餐', '白灼虾', '大荤', 20, 1, 1, 'Wednesday', '/images/_50N10VICQhjbNg9RPOnP.png');
INSERT INTO `dietarycalendar` VALUES (13, '晚餐', '面包', '主食', 15, 1, 1, 'Wednesday', '/images/KqRnNckKNkGOA6ic1i4_-.png');
INSERT INTO `dietarycalendar` VALUES (14, '晚餐', '水果捞', '甜点', 5, 1, 1, 'Wednesday', '/images/0lY5kXVaPNGF9saQ_Spdo.png');
INSERT INTO `dietarycalendar` VALUES (15, '早餐', '挂面', '主食', 6, 1, 1, 'Thursday', '/images/xNblapVTMCe_DKtIZ9V3G.png');
INSERT INTO `dietarycalendar` VALUES (16, '晚餐', '沙糖桔', '水果', 3, 1, 1, 'Thursday', '/images/6MZS1dmBLPZlcT2I3CT2I.png');
INSERT INTO `dietarycalendar` VALUES (17, '早餐', '一清二白', '素菜', 3, 1, 1, 'Thursday', '/images/R8qi_xyOFlo87UZ7DxbKM.png');
INSERT INTO `dietarycalendar` VALUES (18, '晚餐', '刀削面', '套餐', 15, 1, 1, 'Friday', '/images/hTos3rgkkja5bIHpRBWo0.png');
INSERT INTO `dietarycalendar` VALUES (19, '午餐', '宫保鸡丁', '小荤', 15, 1, 1, 'Friday', '/images/x9UYXZewvR7hFQllfWehV.png');
INSERT INTO `dietarycalendar` VALUES (20, '早餐', '白灼虾', '大荤', 15, 1, 1, 'Saturday', '/images/_50N10VICQhjbNg9RPOnP.png');
INSERT INTO `dietarycalendar` VALUES (21, '午餐', '鱼香肉丝', '小荤', 13, 1, 1, 'Saturday', '/images/1Ue9YFpPqzgo6PXS842LX.png');
INSERT INTO `dietarycalendar` VALUES (22, '午餐', '麻婆豆腐', '素菜', 10, 1, 1, 'Sunday', '/images/FycQqJshB6kR9m8o6QGpd.png');
INSERT INTO `dietarycalendar` VALUES (23, '晚餐', '刀削面', '主食', 12, 1, 1, 'Sunday', '/images/hTos3rgkkja5bIHpRBWo0.png');
INSERT INTO `dietarycalendar` VALUES (24, '早餐', '牛肉面', '主食', 12, 1, 1, 'Monday', '/images/PABi7IU4wmB9oSNEtpFY9.png');
INSERT INTO `dietarycalendar` VALUES (25, '早餐', '白灼虾', '主食', 15, 1, 1, 'Monday', '/images/_50N10VICQhjbNg9RPOnP.png');
INSERT INTO `dietarycalendar` VALUES (26, '午餐', '红烧肉', '大荤', 15, 0, 1, 'Tuesday', '/images/j4gBbt8eNGjL_eD0wE_iA.png');
INSERT INTO `dietarycalendar` VALUES (27, '午餐', '牛肉面', '主食', 12, 1, 1, 'Monday', '/images/PABi7IU4wmB9oSNEtpFY9.png');
INSERT INTO `dietarycalendar` VALUES (28, '晚餐', '沙糖桔', '水果', 3, 1, 1, 'Monday', '/images/6MZS1dmBLPZlcT2I3CT2I.png');
INSERT INTO `dietarycalendar` VALUES (29, '早餐', '红烧肉', '大荤', 22, 1, 1, 'Wednesday', '/images/j4gBbt8eNGjL_eD0wE_iA.png');
INSERT INTO `dietarycalendar` VALUES (30, '早餐', '面包', '甜点', 3, 1, 1, 'Wednesday', '/images/KqRnNckKNkGOA6ic1i4_-.png');
INSERT INTO `dietarycalendar` VALUES (31, '午餐', '挂面', '主食', 8, 1, 1, 'Wednesday', '/images/xNblapVTMCe_DKtIZ9V3G.png');
INSERT INTO `dietarycalendar` VALUES (32, '午餐', '一清二白', '素菜', 5, 1, 1, 'Wednesday', '/images/R8qi_xyOFlo87UZ7DxbKM.png');
INSERT INTO `dietarycalendar` VALUES (33, '早餐', '沙糖桔', '水果', 6, 1, 0, 'Wednesday', '/images/6MZS1dmBLPZlcT2I3CT2I.png');
INSERT INTO `dietarycalendar` VALUES (34, '早餐', '水果捞', '甜点', 6, 1, 1, 'Wednesday', '/images/0lY5kXVaPNGF9saQ_Spdo.png');
INSERT INTO `dietarycalendar` VALUES (35, '早餐', '宫保鸡丁', '小荤', 20, 1, 0, 'Wednesday', '/images/x9UYXZewvR7hFQllfWehV.png');
INSERT INTO `dietarycalendar` VALUES (36, '午餐', '面包', '甜点', 1, 1, 1, 'Thursday', '/images/KqRnNckKNkGOA6ic1i4_-.png');
INSERT INTO `dietarycalendar` VALUES (37, '早餐', '面包', '主食', 12, 1, 1, 'Thursday', '/images/KqRnNckKNkGOA6ic1i4_-.png');

-- ----------------------------
-- Table structure for dietarymanagement
-- ----------------------------
DROP TABLE IF EXISTS `dietarymanagement`;
CREATE TABLE `dietarymanagement`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `hobby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `breakfast` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lunch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dinner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dietarymanagement
-- ----------------------------
INSERT INTO `dietarymanagement` VALUES (1, '张三', 1, 55, '爱吃甜食', '糖尿病', '少糖', 1, '', '', '', '');
INSERT INTO `dietarymanagement` VALUES (2, '李四', 0, 35, '散步', '糖尿病', '少糖', 1, '', '', '', '');
INSERT INTO `dietarymanagement` VALUES (3, '王五', 1, 95, '跳广场舞', '老年痴呆', '容易走丢', 1, '', NULL, NULL, NULL);
INSERT INTO `dietarymanagement` VALUES (4, '赵六', 0, 65, '散步', '高血糖，高血压', '少糖', 1, '', NULL, NULL, NULL);
INSERT INTO `dietarymanagement` VALUES (5, '朱七', 0, 65, '散步', '糖尿病', '少糖', 1, '', NULL, NULL, NULL);
INSERT INTO `dietarymanagement` VALUES (NULL, 'aaabbb', 0, 66, '999', '233', '114514', NULL, '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dietarystatistics
-- ----------------------------
DROP TABLE IF EXISTS `dietarystatistics`;
CREATE TABLE `dietarystatistics`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `days` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `breakfast` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lunch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dinner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dietarystatistics
-- ----------------------------
INSERT INTO `dietarystatistics` VALUES (1, '张三', '周四', '', '', '');
INSERT INTO `dietarystatistics` VALUES (2, '李四', '周一', '', '', '');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` int NULL DEFAULT NULL,
  `name` int NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ntime` date NULL DEFAULT NULL,
  `memo` int NULL DEFAULT NULL,
  `people` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` int NULL DEFAULT NULL,
  `thing` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (4, 11, '女', '已处理', '2024-09-02', 1, '蔡澜', 1, 1);
INSERT INTO `feedback` VALUES (5, 111, '女', '未处理', '2024-08-27', 1, NULL, NULL, 1);

-- ----------------------------
-- Table structure for lccontrast
-- ----------------------------
DROP TABLE IF EXISTS `lccontrast`;
CREATE TABLE `lccontrast`  (
  `lid` int NULL DEFAULT NULL,
  `cid` int NULL DEFAULT NULL,
  `executecycle` int NULL DEFAULT NULL,
  `executenub` int NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lccontrast
-- ----------------------------
INSERT INTO `lccontrast` VALUES (1, 4, 1, 1, 1, '1');
INSERT INTO `lccontrast` VALUES (1, 8, 1, 1, 1, '1');
INSERT INTO `lccontrast` VALUES (1, 10, 1, 1, 1, '1');
INSERT INTO `lccontrast` VALUES (2, 14, 1, 1, 1, '1');
INSERT INTO `lccontrast` VALUES (3, 1, 1, 1, 1, '1');
INSERT INTO `lccontrast` VALUES (3, 8, 1, 1, 1, '1');
INSERT INTO `lccontrast` VALUES (4, 1, 2, 3, 1, 'ifif');
INSERT INTO `lccontrast` VALUES (4, 2, 1, 4, 2, 'ygig');
INSERT INTO `lccontrast` VALUES (4, 3, 2, 5, 3, 'utf');
INSERT INTO `lccontrast` VALUES (4, 4, 3, 11, 4, 'bzz');
INSERT INTO `lccontrast` VALUES (4, 6, 1, 1, 17, 'ss');
INSERT INTO `lccontrast` VALUES (4, 16, 1, 1, 5, '1');

-- ----------------------------
-- Table structure for lifereminder
-- ----------------------------
DROP TABLE IF EXISTS `lifereminder`;
CREATE TABLE `lifereminder`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rememberthing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `thingtime` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remerbertime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lifereminder
-- ----------------------------
INSERT INTO `lifereminder` VALUES (1, '余力西', '15641042043', '吃药', '2024-09-02 15:43:33', '已提醒', '25/9/2024 15:45:39');
INSERT INTO `lifereminder` VALUES (3, 'ff', '15366786554', '1', '2024-08-21 00:00:00', '未提醒', NULL);

-- ----------------------------
-- Table structure for mealtype
-- ----------------------------
DROP TABLE IF EXISTS `mealtype`;
CREATE TABLE `mealtype`  (
  `id` int NULL DEFAULT NULL,
  `mealtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mealtype
-- ----------------------------
INSERT INTO `mealtype` VALUES (1, '主食');
INSERT INTO `mealtype` VALUES (2, '辅食');
INSERT INTO `mealtype` VALUES (3, '大荤');
INSERT INTO `mealtype` VALUES (4, '小荤');
INSERT INTO `mealtype` VALUES (5, '素菜');
INSERT INTO `mealtype` VALUES (6, '水果');
INSERT INTO `mealtype` VALUES (7, '甜点');
INSERT INTO `mealtype` VALUES (8, '套餐');

-- ----------------------------
-- Table structure for nursecontent
-- ----------------------------
DROP TABLE IF EXISTS `nursecontent`;
CREATE TABLE `nursecontent`  (
  `id` int NULL DEFAULT NULL,
  `nursecontent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cdescribe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` int NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nursecontent
-- ----------------------------
INSERT INTO `nursecontent` VALUES (1, '	吸氧', '	吸氧', 999, '	吸氧', 1);
INSERT INTO `nursecontent` VALUES (2, '	协助服药', '	协助服药', 0, '	协助服药', 1);
INSERT INTO `nursecontent` VALUES (3, '	测量血压', '	测量血压', 0, '	测量血压', 1);
INSERT INTO `nursecontent` VALUES (4, '	协助穿衣', '	协助穿衣', 17, '	协助穿衣', 1);
INSERT INTO `nursecontent` VALUES (5, '	床上洗头', '	床上洗头', 20, '	床上洗头', 1);
INSERT INTO `nursecontent` VALUES (6, '	健身', '	健身', 34, '	健身', 1);
INSERT INTO `nursecontent` VALUES (7, 'yAwy3khA0O', 'Mi3cELQdxk', 558, 'svJaGhK4PC', 0);
INSERT INTO `nursecontent` VALUES (8, 'F0SaACbVNy', 'mZ4WLWjFVQ', 40, 'IjPwqyPL9K', 1);
INSERT INTO `nursecontent` VALUES (9, 'X0cGvaT0an', '6LbBChP8Y5', 516, 'iAprHQlepm', 1);
INSERT INTO `nursecontent` VALUES (10, 'ppppp', 'pp', 15, 'mmmmmp', 1);
INSERT INTO `nursecontent` VALUES (11, 'YKiI0A1rHo', 'Sq5u656pcO', 817, 'b9PAjcvsJA', 0);
INSERT INTO `nursecontent` VALUES (12, 'G0eLuQoPuX', 'uE27sYOR90', 892, 'tiqn64j3Lg', 0);
INSERT INTO `nursecontent` VALUES (13, 'JmplIIuDml', 'mtGBtPyazo', 269, '8qHj4Y6ZwE', 0);
INSERT INTO `nursecontent` VALUES (14, 'j0czXu36R5', 'd0h6DBfePo', 770, '48aKmwekV3', 1);
INSERT INTO `nursecontent` VALUES (15, '7ji0AucWWD', 'Z8co6tmQHK', 243, 'z3xSJ0HLvP', 0);
INSERT INTO `nursecontent` VALUES (16, 'LTLAfyX63d', 'rhYKlIuhJQ', 84, 'WkvBLstzcc', 1);
INSERT INTO `nursecontent` VALUES (17, 'fdodx2jW66', '55zfriFxA0', 515, 'p3KVmMDtiW', 0);
INSERT INTO `nursecontent` VALUES (18, 'F7FJkiFNVc', '9lDeekMJ0H', 490, 'k427D2TEkj', 0);
INSERT INTO `nursecontent` VALUES (19, 'rQyrPYUuDa', '4rBMF53t0V', 575, 'cmbd7CMqMy', 0);
INSERT INTO `nursecontent` VALUES (20, 'DdzmBq7xPW', '8cka53qgDk', 791, 'onkwdi4NRr', 1);
INSERT INTO `nursecontent` VALUES (21, 'jkl', 'hh', 3, 'iffffffh', 0);
INSERT INTO `nursecontent` VALUES (22, 'p', 'pp', 123, '123', 0);
INSERT INTO `nursecontent` VALUES (23, '对话治疗', '对话超度治疗', 114514, '1919810', 1);

-- ----------------------------
-- Table structure for nurselevel
-- ----------------------------
DROP TABLE IF EXISTS `nurselevel`;
CREATE TABLE `nurselevel`  (
  `id` int NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `memo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nurselevel
-- ----------------------------
INSERT INTO `nurselevel` VALUES (1, '一级', 1, '');
INSERT INTO `nurselevel` VALUES (2, '二级', 1, '啊法国发');
INSERT INTO `nurselevel` VALUES (3, '三级', 1, '大碗大碗蛙');
INSERT INTO `nurselevel` VALUES (4, '四级', 1, '水水水水水水水');
INSERT INTO `nurselevel` VALUES (5, '11', 0, '11');

-- ----------------------------
-- Table structure for nursingrecords
-- ----------------------------
DROP TABLE IF EXISTS `nursingrecords`;
CREATE TABLE `nursingrecords`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `nursing_level` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nursingrecords
-- ----------------------------
INSERT INTO `nursingrecords` VALUES (1, 'mx', 1, '2024-08-15', 3);
INSERT INTO `nursingrecords` VALUES (2, 'Randy Kelly', 0, '2002-01-24', 0);
INSERT INTO `nursingrecords` VALUES (3, 'Robin Gordon', 0, '2015-07-09', 1);
INSERT INTO `nursingrecords` VALUES (4, 'Ronald Gardner', 0, '2018-09-21', 1);
INSERT INTO `nursingrecords` VALUES (5, 'Loui Lai Yan', 1, '2020-10-22', 1);
INSERT INTO `nursingrecords` VALUES (6, 'Xie Xiuying', 1, '2007-01-03', 1);
INSERT INTO `nursingrecords` VALUES (7, 'Miyazaki Seiko', 1, '2017-07-30', 2);
INSERT INTO `nursingrecords` VALUES (8, 'Ono Tsubasa', 0, '2008-03-21', 1);
INSERT INTO `nursingrecords` VALUES (9, 'Christina Reed', 0, '2005-11-16', 2);
INSERT INTO `nursingrecords` VALUES (10, 'Chow Ka Keung', 0, '2009-08-15', 0);
INSERT INTO `nursingrecords` VALUES (11, 'Yang Yunxi', 0, '2002-08-28', 1);
INSERT INTO `nursingrecords` VALUES (12, 'Nicholas Jenkins', 1, '2004-07-24', 2);
INSERT INTO `nursingrecords` VALUES (13, 'Yokoyama Airi', 1, '2017-08-08', 2);
INSERT INTO `nursingrecords` VALUES (14, 'Ueno Tsubasa', 1, '2016-02-07', 2);
INSERT INTO `nursingrecords` VALUES (15, 'Sun Xiaoming', 0, '2014-03-17', 2);
INSERT INTO `nursingrecords` VALUES (16, 'Ma Xiuying', 0, '2020-01-06', 2);
INSERT INTO `nursingrecords` VALUES (17, 'Liang Zhennan', 0, '2004-01-28', 1);
INSERT INTO `nursingrecords` VALUES (18, 'Watanabe Yuito', 1, '2004-04-18', 2);
INSERT INTO `nursingrecords` VALUES (19, 'Nomura Itsuki', 0, '2016-09-28', 3);
INSERT INTO `nursingrecords` VALUES (20, 'Zhou Anqi', 0, '2004-01-20', 2);
INSERT INTO `nursingrecords` VALUES (21, 'Irene Henderson', 1, '2006-09-03', 2);
INSERT INTO `nursingrecords` VALUES (22, 'Anne Harris', 1, '2001-03-25', 2);
INSERT INTO `nursingrecords` VALUES (23, 'Wu Lan', 0, '2020-03-13', 2);
INSERT INTO `nursingrecords` VALUES (24, 'Mike Bell', 1, '2012-09-24', 2);
INSERT INTO `nursingrecords` VALUES (25, 'Tsui Chi Yuen', 0, '2020-01-03', 0);
INSERT INTO `nursingrecords` VALUES (26, 'Ti Tin Wing', 0, '2000-06-04', 2);
INSERT INTO `nursingrecords` VALUES (27, 'Yokoyama Airi', 0, '2019-09-09', 3);
INSERT INTO `nursingrecords` VALUES (28, 'Hara Itsuki', 1, '2004-05-28', 0);
INSERT INTO `nursingrecords` VALUES (29, 'Charlotte Cruz', 1, '2005-03-11', 1);
INSERT INTO `nursingrecords` VALUES (30, 'Meng Ka Ling', 1, '2011-10-08', 1);
INSERT INTO `nursingrecords` VALUES (1001, 'Tse Ling Ling', 1, '2001-06-27', 2);
INSERT INTO `nursingrecords` VALUES (1002, 'mxy', 1, '2000-01-01', 2);
INSERT INTO `nursingrecords` VALUES (1003, 'mxy', 1, '2000-01-01', 2);
INSERT INTO `nursingrecords` VALUES (1004, 'xx', 0, '2000-01-01', 4);
INSERT INTO `nursingrecords` VALUES (1005, 'tt', 0, '2000-01-01', 4);
INSERT INTO `nursingrecords` VALUES (1006, 'tt', 0, '2000-01-01', 4);
INSERT INTO `nursingrecords` VALUES (1007, 'tt', 0, '2000-01-01', 3);
INSERT INTO `nursingrecords` VALUES (1008, '张三', 1, '2000-01-01', 3);

-- ----------------------------
-- Table structure for outin
-- ----------------------------
DROP TABLE IF EXISTS `outin`;
CREATE TABLE `outin`  (
  `outtime` datetime NULL DEFAULT NULL,
  `intime` datetime NULL DEFAULT NULL,
  `outinname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bednum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `thing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of outin
-- ----------------------------
INSERT INTO `outin` VALUES ('2024-08-08 11:27:36', '2024-08-25 11:27:39', '李四', 'A2', '散步', 2);
INSERT INTO `outin` VALUES ('2024-08-29 00:00:00', '2024-08-30 00:00:00', '张三', 'W7', '打针', 23);
INSERT INTO `outin` VALUES ('2024-08-23 00:00:00', '2024-08-27 08:41:46', '王五', 'E7', '量血压', 24);
INSERT INTO `outin` VALUES ('2024-08-27 08:42:22', '2024-08-28 00:00:00', '张怀义', 'Q7', '打羽毛球', 25);
INSERT INTO `outin` VALUES ('2024-08-06 00:00:00', '2024-08-26 00:00:00', '赵六', 'H2', '散步', 26);
INSERT INTO `outin` VALUES ('2024-08-07 00:00:00', '2024-08-26 00:00:00', '朱七', 'R4', '散步', 27);
INSERT INTO `outin` VALUES ('2024-08-28 10:38:45', '2024-08-20 00:00:00', '孙八', 'A5', '逛街', 28);
INSERT INTO `outin` VALUES ('2024-08-30 00:00:00', '2024-08-31 00:00:00', 'bao', 'A5', 'fj', 31);
INSERT INTO `outin` VALUES ('2024-08-29 00:00:00', '2024-08-31 00:00:00', 'bbb', 'A3', 'hj', 32);
INSERT INTO `outin` VALUES ('2024-08-30 00:00:00', '2024-08-31 00:00:00', '一离析', 'A2', '捡瓶子', 33);
INSERT INTO `outin` VALUES ('2024-08-29 00:00:00', '2024-08-30 00:00:00', '一离析', 'A2', 'gj', 34);
INSERT INTO `outin` VALUES ('2024-08-29 00:00:00', '2024-08-30 00:00:00', 'bao', 'A5', 'kl', 35);
INSERT INTO `outin` VALUES ('2024-08-29 00:00:00', '2024-08-30 00:00:00', '余力西', 'A5', '11', 36);
INSERT INTO `outin` VALUES ('2024-08-30 00:00:00', '2024-08-31 00:00:00', 'ccc', 'B3', 'yp', 37);
INSERT INTO `outin` VALUES ('2024-08-29 00:00:00', '2024-08-30 00:00:00', 'ccc', 'B3', '11', 38);
INSERT INTO `outin` VALUES ('2024-09-11 00:00:00', '2024-09-12 00:00:00', '123', 'A5', 'lixi', 39);
INSERT INTO `outin` VALUES ('2024-09-12 00:00:00', '2024-09-20 00:00:00', '123', 'A5', 'l', 40);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `cuid` int NULL DEFAULT NULL,
  `cid` int NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nursepeople` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nurseid` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, 1, '2024-08-21 09:00:05', 'mx', 'test', '蔡澜', 3);
INSERT INTO `record` VALUES (1, 1, '2024-08-21 10:43:12', 'mx', 'test', '蔡澜', 3);
INSERT INTO `record` VALUES (1, 1, '2024-08-21 10:43:27', 'mx', 'test', '蔡澜', 3);
INSERT INTO `record` VALUES (1, 1, '2024-08-27 15:05:02', 'aaa', 'test', '乱作一团', 5);
INSERT INTO `record` VALUES (1, 1, '2024-08-31 17:35:08', 'aaa', 'test', '王楚', 1);
INSERT INTO `record` VALUES (1, 1, '2024-08-31 17:35:55', 'aaa', 'test', '乱作一团', 5);
INSERT INTO `record` VALUES (1, 1, '2024-08-31 17:36:57', 'aaa', 'test', '蔡澜', 3);
INSERT INTO `record` VALUES (1, 1, '2024-09-04 12:10:49', 'aaa', '	吸氧', '乱作一团', 5);
INSERT INTO `record` VALUES (1004, 2, '2024-08-21 10:31:00', 'xx', 'igtPDqmfLb', '蔡澜', 3);
INSERT INTO `record` VALUES (1004, 3, '2024-08-21 10:35:24', 'xx', 'FLBm9uN66V', '蔡澜', 3);
INSERT INTO `record` VALUES (1007, 1, '2024-08-24 15:28:37', 'tt', 'test', '蔡澜', 3);
INSERT INTO `record` VALUES (1008, 1, '2024-08-27 10:18:43', '张三', 'test', '乱作一团', 5);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '董事长', '老大', 1);
INSERT INTO `role` VALUES (2, '护工', 'q', 1);
INSERT INTO `role` VALUES (3, '医生', 'doctor', 1);
INSERT INTO `role` VALUES (4, '厨师', '后勤', 1);
INSERT INTO `role` VALUES (5, '前台', '服务', 1);
INSERT INTO `role` VALUES (6, '管家', '牛马', 1);

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource`  (
  `id` int NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL,
  `resource_id` int NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES (1692, 4, 4, 1);
INSERT INTO `role_resource` VALUES (1693, 4, 10, 1);
INSERT INTO `role_resource` VALUES (1694, 4, 28, 1);
INSERT INTO `role_resource` VALUES (1695, 4, 30, 0);
INSERT INTO `role_resource` VALUES (1696, 4, 31, 0);
INSERT INTO `role_resource` VALUES (1697, 4, 32, 0);
INSERT INTO `role_resource` VALUES (1698, 4, 33, 0);
INSERT INTO `role_resource` VALUES (1699, 4, 34, 0);
INSERT INTO `role_resource` VALUES (1700, 4, 35, 0);
INSERT INTO `role_resource` VALUES (1701, 4, 36, 0);
INSERT INTO `role_resource` VALUES (1702, 5, 39, 1);
INSERT INTO `role_resource` VALUES (1703, 5, 40, 1);
INSERT INTO `role_resource` VALUES (1704, 5, 42, 1);
INSERT INTO `role_resource` VALUES (1705, 5, 44, 1);
INSERT INTO `role_resource` VALUES (1706, 5, 55, 1);
INSERT INTO `role_resource` VALUES (1707, 5, 56, 1);
INSERT INTO `role_resource` VALUES (1708, 5, 58, 1);
INSERT INTO `role_resource` VALUES (1709, 5, 41, 0);
INSERT INTO `role_resource` VALUES (1710, 5, 43, 0);
INSERT INTO `role_resource` VALUES (1711, 5, 45, 0);
INSERT INTO `role_resource` VALUES (1712, 5, 57, 0);
INSERT INTO `role_resource` VALUES (1713, 5, 59, 0);
INSERT INTO `role_resource` VALUES (2254, 2, 3, 1);
INSERT INTO `role_resource` VALUES (2255, 2, 5, 1);
INSERT INTO `role_resource` VALUES (2256, 2, 4, 1);
INSERT INTO `role_resource` VALUES (2257, 2, 10, 1);
INSERT INTO `role_resource` VALUES (2258, 2, 28, 1);
INSERT INTO `role_resource` VALUES (2259, 2, 85, 1);
INSERT INTO `role_resource` VALUES (2260, 2, 14, 0);
INSERT INTO `role_resource` VALUES (2261, 2, 20, 0);
INSERT INTO `role_resource` VALUES (2262, 2, 21, 0);
INSERT INTO `role_resource` VALUES (2263, 2, 30, 0);
INSERT INTO `role_resource` VALUES (2264, 2, 31, 0);
INSERT INTO `role_resource` VALUES (2265, 2, 32, 0);
INSERT INTO `role_resource` VALUES (2266, 2, 33, 0);
INSERT INTO `role_resource` VALUES (2267, 2, 34, 0);
INSERT INTO `role_resource` VALUES (2268, 2, 35, 0);
INSERT INTO `role_resource` VALUES (2269, 2, 36, 0);
INSERT INTO `role_resource` VALUES (2270, 2, 86, 0);
INSERT INTO `role_resource` VALUES (2271, 3, 3, 1);
INSERT INTO `role_resource` VALUES (2272, 3, 5, 1);
INSERT INTO `role_resource` VALUES (2273, 3, 6, 1);
INSERT INTO `role_resource` VALUES (2274, 3, 9, 1);
INSERT INTO `role_resource` VALUES (2275, 3, 55, 1);
INSERT INTO `role_resource` VALUES (2276, 3, 56, 1);
INSERT INTO `role_resource` VALUES (2277, 3, 58, 1);
INSERT INTO `role_resource` VALUES (2278, 3, 7, 0);
INSERT INTO `role_resource` VALUES (2279, 3, 14, 0);
INSERT INTO `role_resource` VALUES (2280, 3, 20, 0);
INSERT INTO `role_resource` VALUES (2281, 3, 21, 0);
INSERT INTO `role_resource` VALUES (2282, 3, 8, 0);
INSERT INTO `role_resource` VALUES (2283, 3, 15, 0);
INSERT INTO `role_resource` VALUES (2284, 3, 22, 0);
INSERT INTO `role_resource` VALUES (2285, 3, 23, 0);
INSERT INTO `role_resource` VALUES (2286, 3, 24, 0);
INSERT INTO `role_resource` VALUES (2287, 3, 25, 0);
INSERT INTO `role_resource` VALUES (2288, 3, 12, 0);
INSERT INTO `role_resource` VALUES (2289, 3, 13, 0);
INSERT INTO `role_resource` VALUES (2290, 3, 16, 0);
INSERT INTO `role_resource` VALUES (2291, 3, 26, 0);
INSERT INTO `role_resource` VALUES (2292, 3, 27, 0);
INSERT INTO `role_resource` VALUES (2293, 3, 57, 0);
INSERT INTO `role_resource` VALUES (2294, 3, 79, 0);
INSERT INTO `role_resource` VALUES (2295, 3, 80, 0);
INSERT INTO `role_resource` VALUES (2296, 3, 81, 0);
INSERT INTO `role_resource` VALUES (2297, 3, 59, 0);
INSERT INTO `role_resource` VALUES (2298, 3, 82, 0);
INSERT INTO `role_resource` VALUES (2299, 3, 83, 0);
INSERT INTO `role_resource` VALUES (2300, 3, 84, 0);
INSERT INTO `role_resource` VALUES (2696, 1, 3, 1);
INSERT INTO `role_resource` VALUES (2697, 1, 5, 1);
INSERT INTO `role_resource` VALUES (2698, 1, 6, 1);
INSERT INTO `role_resource` VALUES (2699, 1, 9, 1);
INSERT INTO `role_resource` VALUES (2700, 1, 4, 1);
INSERT INTO `role_resource` VALUES (2701, 1, 10, 1);
INSERT INTO `role_resource` VALUES (2702, 1, 28, 1);
INSERT INTO `role_resource` VALUES (2703, 1, 39, 1);
INSERT INTO `role_resource` VALUES (2704, 1, 40, 1);
INSERT INTO `role_resource` VALUES (2705, 1, 42, 1);
INSERT INTO `role_resource` VALUES (2706, 1, 44, 1);
INSERT INTO `role_resource` VALUES (2707, 1, 46, 1);
INSERT INTO `role_resource` VALUES (2708, 1, 49, 1);
INSERT INTO `role_resource` VALUES (2709, 1, 51, 1);
INSERT INTO `role_resource` VALUES (2710, 1, 53, 1);
INSERT INTO `role_resource` VALUES (2711, 1, 55, 1);
INSERT INTO `role_resource` VALUES (2712, 1, 56, 1);
INSERT INTO `role_resource` VALUES (2713, 1, 58, 1);
INSERT INTO `role_resource` VALUES (2714, 1, 94, 1);
INSERT INTO `role_resource` VALUES (2715, 1, 88, 1);
INSERT INTO `role_resource` VALUES (2716, 1, 89, 1);
INSERT INTO `role_resource` VALUES (2717, 1, 90, 1);
INSERT INTO `role_resource` VALUES (2718, 1, 96, 1);
INSERT INTO `role_resource` VALUES (2719, 1, 98, 1);
INSERT INTO `role_resource` VALUES (2720, 1, 100, 1);
INSERT INTO `role_resource` VALUES (2721, 1, 101, 1);
INSERT INTO `role_resource` VALUES (2722, 1, 103, 1);
INSERT INTO `role_resource` VALUES (2723, 1, 7, 0);
INSERT INTO `role_resource` VALUES (2724, 1, 14, 0);
INSERT INTO `role_resource` VALUES (2725, 1, 20, 0);
INSERT INTO `role_resource` VALUES (2726, 1, 21, 0);
INSERT INTO `role_resource` VALUES (2727, 1, 8, 0);
INSERT INTO `role_resource` VALUES (2728, 1, 15, 0);
INSERT INTO `role_resource` VALUES (2729, 1, 22, 0);
INSERT INTO `role_resource` VALUES (2730, 1, 23, 0);
INSERT INTO `role_resource` VALUES (2731, 1, 24, 0);
INSERT INTO `role_resource` VALUES (2732, 1, 25, 0);
INSERT INTO `role_resource` VALUES (2733, 1, 12, 0);
INSERT INTO `role_resource` VALUES (2734, 1, 13, 0);
INSERT INTO `role_resource` VALUES (2735, 1, 16, 0);
INSERT INTO `role_resource` VALUES (2736, 1, 26, 0);
INSERT INTO `role_resource` VALUES (2737, 1, 27, 0);
INSERT INTO `role_resource` VALUES (2738, 1, 30, 0);
INSERT INTO `role_resource` VALUES (2739, 1, 31, 0);
INSERT INTO `role_resource` VALUES (2740, 1, 32, 0);
INSERT INTO `role_resource` VALUES (2741, 1, 93, 0);
INSERT INTO `role_resource` VALUES (2742, 1, 33, 0);
INSERT INTO `role_resource` VALUES (2743, 1, 34, 0);
INSERT INTO `role_resource` VALUES (2744, 1, 35, 0);
INSERT INTO `role_resource` VALUES (2745, 1, 36, 0);
INSERT INTO `role_resource` VALUES (2746, 1, 41, 0);
INSERT INTO `role_resource` VALUES (2747, 1, 66, 0);
INSERT INTO `role_resource` VALUES (2748, 1, 67, 0);
INSERT INTO `role_resource` VALUES (2749, 1, 71, 0);
INSERT INTO `role_resource` VALUES (2750, 1, 43, 0);
INSERT INTO `role_resource` VALUES (2751, 1, 68, 0);
INSERT INTO `role_resource` VALUES (2752, 1, 69, 0);
INSERT INTO `role_resource` VALUES (2753, 1, 70, 0);
INSERT INTO `role_resource` VALUES (2754, 1, 45, 0);
INSERT INTO `role_resource` VALUES (2755, 1, 72, 0);
INSERT INTO `role_resource` VALUES (2756, 1, 50, 0);
INSERT INTO `role_resource` VALUES (2757, 1, 52, 0);
INSERT INTO `role_resource` VALUES (2758, 1, 74, 0);
INSERT INTO `role_resource` VALUES (2759, 1, 75, 0);
INSERT INTO `role_resource` VALUES (2760, 1, 76, 0);
INSERT INTO `role_resource` VALUES (2761, 1, 54, 0);
INSERT INTO `role_resource` VALUES (2762, 1, 77, 0);
INSERT INTO `role_resource` VALUES (2763, 1, 78, 0);
INSERT INTO `role_resource` VALUES (2764, 1, 57, 0);
INSERT INTO `role_resource` VALUES (2765, 1, 79, 0);
INSERT INTO `role_resource` VALUES (2766, 1, 80, 0);
INSERT INTO `role_resource` VALUES (2767, 1, 59, 0);
INSERT INTO `role_resource` VALUES (2768, 1, 82, 0);
INSERT INTO `role_resource` VALUES (2769, 1, 83, 0);
INSERT INTO `role_resource` VALUES (2770, 1, 84, 0);
INSERT INTO `role_resource` VALUES (2771, 1, 95, 0);
INSERT INTO `role_resource` VALUES (2772, 1, 91, 0);
INSERT INTO `role_resource` VALUES (2773, 1, 92, 0);
INSERT INTO `role_resource` VALUES (2774, 1, 97, 0);
INSERT INTO `role_resource` VALUES (2775, 1, 99, 0);
INSERT INTO `role_resource` VALUES (2776, 1, 102, 0);
INSERT INTO `role_resource` VALUES (2777, 1, 104, 0);

-- ----------------------------
-- Table structure for servicetargets
-- ----------------------------
DROP TABLE IF EXISTS `servicetargets`;
CREATE TABLE `servicetargets`  (
  `id` int NULL DEFAULT NULL,
  `Sid` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `floor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `notes` int NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `toname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of servicetargets
-- ----------------------------
INSERT INTO `servicetargets` VALUES (1, 47, '青蛙1号', '15131645578', NULL, NULL, NULL, NULL, 0);
INSERT INTO `servicetargets` VALUES (2, 20, '蒜头王八', '19932', '三层', 1, '2024-08-31 09:41:28', 'ccc', 1);
INSERT INTO `servicetargets` VALUES (7, 48, '青蛙2号', '15334674186', '二层', 0, '2024-09-02 11:13:12', '一离析', 1);

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `front_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `back_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (3, '系统管理', '系统管理', 0, '/sys', '', 1, 1);
INSERT INTO `sys_resource` VALUES (4, '床位管理', '膳食管理', 0, '/meal', '', 1, 1);
INSERT INTO `sys_resource` VALUES (5, '用户列表', '', 3, '/user', '/user/list', 2, 1);
INSERT INTO `sys_resource` VALUES (6, '角色列表', '', 3, '/role', '/role/list', 2, 1);
INSERT INTO `sys_resource` VALUES (7, '添加用户', '', 5, '', '/user/add', 3, 0);
INSERT INTO `sys_resource` VALUES (8, '添加角色', '', 6, '', '/role/add,/role/check', 3, 0);
INSERT INTO `sys_resource` VALUES (9, '权限列表', '', 3, '/resource', '/sysResource/list', 2, 1);
INSERT INTO `sys_resource` VALUES (10, '床位列表', '膳食日历周表', 4, '/bed', '/bed/list', 2, 1);
INSERT INTO `sys_resource` VALUES (12, '修改权限', '', 9, '', '/sysResource/update,/sysResource/getById,/sysResource/check', 3, 0);
INSERT INTO `sys_resource` VALUES (13, '删除权限', '', 9, '', '/sysResource/del', 3, 0);
INSERT INTO `sys_resource` VALUES (14, '查询管理员', '', 5, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (15, '查询角色', '', 6, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (16, '查询权限', '', 9, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (20, '修改用户', '', 5, '', ' /user/update,/user/getById,/user/check', 3, 0);
INSERT INTO `sys_resource` VALUES (21, '删除用户', '', 5, '', '/user/del', 3, 0);
INSERT INTO `sys_resource` VALUES (22, '修改角色', '', 6, '', ' /role/update,/role/getById,/role/check', 3, 0);
INSERT INTO `sys_resource` VALUES (23, '删除角色', '', 6, '', '/role/del', 3, 0);
INSERT INTO `sys_resource` VALUES (24, '用户', '', 6, '', '/userRole/getUser,/userRole/save', 3, 0);
INSERT INTO `sys_resource` VALUES (25, '分配权限', '', 6, '', '/roleResource/getResource,/roleResource/save', 3, 0);
INSERT INTO `sys_resource` VALUES (26, '添加权限', '', 9, '', '/sysResource/add,/sysResource/check', 3, 0);
INSERT INTO `sys_resource` VALUES (27, '添加下级', '', 9, '', '/sysResource/add,/sysResource/check', 3, 0);
INSERT INTO `sys_resource` VALUES (28, '离床登记', '膳食管理', 4, '/outin', '/outin/list', 2, 1);
INSERT INTO `sys_resource` VALUES (30, '添加', '添加菜肴', 10, '', '/bed/add', 3, 0);
INSERT INTO `sys_resource` VALUES (31, '修改', '修改菜品信息', 10, '', '/bed/update,/bed/getById,/bed/check', 3, 0);
INSERT INTO `sys_resource` VALUES (32, '删除', '删除菜肴', 10, '', '/bed/del', 3, 0);
INSERT INTO `sys_resource` VALUES (33, '添加', '添加需要特别关注的客户信息', 28, '', '/outin/add', 3, 0);
INSERT INTO `sys_resource` VALUES (34, '修改', '修改客户信息', 28, '', '/outin/update,/outin/getById,/outin/check', 3, 0);
INSERT INTO `sys_resource` VALUES (35, '删除', '删除客户信息', 28, '', '/outin/del', 3, 0);
INSERT INTO `sys_resource` VALUES (36, '查询', '查询指定客户信息', 28, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (39, '客户管理', '管理客户登记', 0, '/registration', '', 1, 1);
INSERT INTO `sys_resource` VALUES (40, '入住登记', '客户入住登记', 39, '/checkIn', '/checkIn/list', 2, 1);
INSERT INTO `sys_resource` VALUES (41, '登记', '添加客户入住信息', 40, '', '/checkIn/add', 3, 0);
INSERT INTO `sys_resource` VALUES (42, '退住登记', '客户退住登记', 39, '/checkOut', '/checkOut/list', 2, 1);
INSERT INTO `sys_resource` VALUES (43, '添加', '添加退住人员', 42, '', '/checkOut/add', 3, 0);
INSERT INTO `sys_resource` VALUES (44, '外出登记', '客户外出登记', 39, '/goOut', '/goOut/list', 2, 1);
INSERT INTO `sys_resource` VALUES (45, '登记', '添加外出客户', 44, '', '/goOut/add', 3, 0);
INSERT INTO `sys_resource` VALUES (46, '护理模块', '护理模块', 0, '/nurse', '', 1, 1);
INSERT INTO `sys_resource` VALUES (49, '护理记录', '护理记录', 46, '/records', '/records/list', 2, 1);
INSERT INTO `sys_resource` VALUES (50, '搜索', '添加护理记录', 49, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (51, '护理级别', '护理级别', 46, '/level', '/level/list', 2, 1);
INSERT INTO `sys_resource` VALUES (52, '添加', '添加护理级别', 51, '', '/level/add', 3, 0);
INSERT INTO `sys_resource` VALUES (53, '护理内容', '护理内容', 46, '/content', '/content/list', 2, 1);
INSERT INTO `sys_resource` VALUES (54, '添加', '添加护理内容', 53, '', '/content/add', 3, 0);
INSERT INTO `sys_resource` VALUES (55, '膳食管理', '床位管理', 0, '/bedroom', '', 1, 1);
INSERT INTO `sys_resource` VALUES (56, '膳食日历', '床位列表', 55, '/dietarycalendar', '/dietarycalendar/list', 2, 1);
INSERT INTO `sys_resource` VALUES (57, '添加', '添加床位', 56, '', '/dietarycalendar/add', 3, 0);
INSERT INTO `sys_resource` VALUES (58, '膳食管理', '离床登记', 55, '/dietarymanagement', '/dietarymanagement/list', 2, 1);
INSERT INTO `sys_resource` VALUES (59, '添加', '添加', 58, '', '/dietarymanagement/add', 3, 0);
INSERT INTO `sys_resource` VALUES (66, '修改', '修改信息', 40, '', '/checkIn/update,/checkIn/getById,/checkIn/check', 3, 0);
INSERT INTO `sys_resource` VALUES (67, '删除', '删除信息', 40, '', '/checkIn', 3, 0);
INSERT INTO `sys_resource` VALUES (68, '修改', '', 42, '', '/checkOut/update,/checkOut/getById,/checkOut/check', 3, 0);
INSERT INTO `sys_resource` VALUES (69, '删除', '', 42, '', '/checkOut/del', 3, 0);
INSERT INTO `sys_resource` VALUES (70, '查询', '', 42, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (71, '查询', '', 40, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (72, '修改', '', 44, '', '/goOut/update,/goOut/getById,/goOut/check', 3, 0);
INSERT INTO `sys_resource` VALUES (74, '修改', '', 51, '', '/level/update,/level/getById,/level/check', 3, 0);
INSERT INTO `sys_resource` VALUES (75, '禁用', '', 51, '', '/level/del', 3, 0);
INSERT INTO `sys_resource` VALUES (76, '搜索', '', 51, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (77, '修改', '', 53, '', '/content/update,/content/getById,/content/check', 3, 0);
INSERT INTO `sys_resource` VALUES (78, '删除', '', 53, '', '/content/del', 3, 0);
INSERT INTO `sys_resource` VALUES (79, '修改', '', 56, '', '/dietarycalendar/update,/dietarycalendar/getById,/dietarycalendar/check', 3, 0);
INSERT INTO `sys_resource` VALUES (80, '删除', '', 56, '', '/dietarycalendar/del', 3, 0);
INSERT INTO `sys_resource` VALUES (82, '修改', '', 58, '', '/dietarymanagement/update,/dietarymanagement/getById,/dietarymanagement/check', 3, 0);
INSERT INTO `sys_resource` VALUES (83, '删除', '', 58, '', '/dietarymanagement/del', 3, 0);
INSERT INTO `sys_resource` VALUES (84, '搜索', '', 58, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (88, '健康管理', '健康管理', 0, '/health', '', 1, 1);
INSERT INTO `sys_resource` VALUES (89, '设置服务对象', '', 88, '/service', '/service/list', 2, 1);
INSERT INTO `sys_resource` VALUES (90, '服务关注', '', 88, '/focus', '/focus/list', 2, 1);
INSERT INTO `sys_resource` VALUES (91, '添加', '', 89, '', '/service/add', 3, 0);
INSERT INTO `sys_resource` VALUES (92, '添加', '', 90, '', '/focus/add', 3, 0);
INSERT INTO `sys_resource` VALUES (93, '搜索', '', 10, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (94, '膳食统计', '', 55, '/dietarystatistics', '', 2, 1);
INSERT INTO `sys_resource` VALUES (95, '搜索', '', 94, '', '', 3, 0);
INSERT INTO `sys_resource` VALUES (96, '生活提醒', '', 88, '/lifereminder', '/lifereminder/list', 2, 1);
INSERT INTO `sys_resource` VALUES (97, '添加', '', 96, '', '/lifereminder/add', 3, 0);
INSERT INTO `sys_resource` VALUES (98, '投诉反馈', '', 88, '/feedback', '/feedback/list', 2, 1);
INSERT INTO `sys_resource` VALUES (99, '添加', '', 98, '', '/feedback/add', 3, 0);
INSERT INTO `sys_resource` VALUES (100, '生活管理', '', 0, '/lifemanagement', '', 1, 1);
INSERT INTO `sys_resource` VALUES (101, '班车路线', '', 100, '/busroute', '/busrouts/list', 2, 1);
INSERT INTO `sys_resource` VALUES (102, '添加', '', 101, '', '/busroute/add', 3, 0);
INSERT INTO `sys_resource` VALUES (103, '天气情况', '', 100, '/weather', '/weather/list', 2, 1);
INSERT INTO `sys_resource` VALUES (104, '添加', '', 103, '', '/weather/add', 3, 0);

-- ----------------------------
-- Table structure for upload_mealflie
-- ----------------------------
DROP TABLE IF EXISTS `upload_mealflie`;
CREATE TABLE `upload_mealflie`  (
  `id` int NULL DEFAULT NULL,
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `size` int NULL DEFAULT NULL,
  `content_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of upload_mealflie
-- ----------------------------
INSERT INTO `upload_mealflie` VALUES (1, '695cd699c20f534768319837120e344e', 75146, 'image/jpeg', '/images/-VwxWWi17sEeCiZgepWFA.jpg');
INSERT INTO `upload_mealflie` VALUES (2, 'd246a1ddc81172cd032700ce947ee9bd', 70347, 'image/jpeg', '/images/3mhM3i_FXpmOdxujVwRi2.jpg');
INSERT INTO `upload_mealflie` VALUES (3, 'b7c4874f50c04b698a1c46d10fb2badc', 76152, 'image/jpeg', '/images/W7gMSKVbuwh3Bg0JWqaEr.jpg');
INSERT INTO `upload_mealflie` VALUES (4, '96802e29429d0ba2809fd42a18575b64', 84919, 'image/png', '/images/3fwd_mxY1as_sB3O4UfNh.png');
INSERT INTO `upload_mealflie` VALUES (5, '8e54157a3b9fe3468772ed13801c0175', 94968, 'image/png', '/images/KqRnNckKNkGOA6ic1i4_-.png');
INSERT INTO `upload_mealflie` VALUES (6, '082d439613a8237cfacb6498c3863d43', 118881, 'image/png', '/images/WFSpYzVKb4LDJr41la4tN.png');
INSERT INTO `upload_mealflie` VALUES (7, 'e62256b6f047151fdcfb212db8892c62', 81157, 'image/png', '/images/j4gBbt8eNGjL_eD0wE_iA.png');
INSERT INTO `upload_mealflie` VALUES (8, 'a72ad1e03ad0bb2d285202442afb4b24', 111556, 'image/png', '/images/PABi7IU4wmB9oSNEtpFY9.png');
INSERT INTO `upload_mealflie` VALUES (9, 'd206083bd4479ab4f5ab0a782ebc5bbe', 120646, 'image/png', '/images/x9UYXZewvR7hFQllfWehV.png');
INSERT INTO `upload_mealflie` VALUES (10, '46f6eafcfe6d1e39a1b1499e01e788a3', 136185, 'image/png', '/images/_50N10VICQhjbNg9RPOnP.png');
INSERT INTO `upload_mealflie` VALUES (11, '8a37dc67cb67d81b006a760571d0021c', 138934, 'image/png', '/images/FycQqJshB6kR9m8o6QGpd.png');
INSERT INTO `upload_mealflie` VALUES (12, '72bf645b1bddb822a0247d74428a6a21', 133093, 'image/png', '/images/1Ue9YFpPqzgo6PXS842LX.png');
INSERT INTO `upload_mealflie` VALUES (13, 'c32d61000119754990c11e7d70971772', 74152, 'image/png', '/images/0lY5kXVaPNGF9saQ_Spdo.png');
INSERT INTO `upload_mealflie` VALUES (14, '84632336e9e9fcd390c0f6f4f02d1039', 66539, 'image/png', '/images/6MZS1dmBLPZlcT2I3CT2I.png');
INSERT INTO `upload_mealflie` VALUES (15, 'ab592447b805bcdd52c0d3b982b4da87', 45595, 'image/png', '/images/xNblapVTMCe_DKtIZ9V3G.png');
INSERT INTO `upload_mealflie` VALUES (16, '3c4ede3e756d94590480b38f7563640d', 128681, 'image/png', '/images/R8qi_xyOFlo87UZ7DxbKM.png');
INSERT INTO `upload_mealflie` VALUES (17, 'e14d3e61e0cd4bb64b1480333b200aac', 104445, 'image/png', '/images/hTos3rgkkja5bIHpRBWo0.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `worktime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id` DESC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (54, 'mova', 1, '2020-01-01', NULL, NULL, 1, NULL, '15312345678', 'mail@123.com', '$2a$10$jXB54wcCzL5H3AuJD4tIVu5rpRUzCUg0klTQHjQ5lqmr79YkoEj9q');
INSERT INTO `user` VALUES (53, 'mova', 1, '2025-06-05', NULL, NULL, 1, NULL, '19912345678', 'm1750696366@163.com', '$2a$10$b/uSUKd904WlK/V8/4w9H.wPvkFilqmk1EKl1b1PnYD4WsSvGRHbu');
INSERT INTO `user` VALUES (52, '青蛙三号', 1, '2000-01-01', '管家', '1/1/2000', 1, 'ss', '15631111111', '111111@qq.com', '123456');
INSERT INTO `user` VALUES (48, '青蛙2号', 1, '2000-01-01', '管家', '1/1/2000', 1, 'zds', '15334674186', '114514@qq.com', '$2a$10$SJ/RdV7r1UR.rQ/aHy6OD.Kq8A9YQC.DUvkhx8Tg61lUB6VK1MLaq');
INSERT INTO `user` VALUES (47, '青蛙1号', 0, '2024-08-12', '管家', '21/8/2024', 1, '1', '15131645578', '2625493@qq.com', '$2a$10$o/7TD4CMET.GlCah..4QqOvTWT41HKBSlFQIcWbtzay20jyTwPCUy');
INSERT INTO `user` VALUES (21, '朱子安', 1, '2024-08-19', '董事长', '22/8/2024', 1, ' ', '19932839570', '1316482334@qq.com', '$2a$10$/NII697uwvBU6FIxPmBpy.Ch.nU9eo1R4REkj8qW4dDCWkyszgi/i');
INSERT INTO `user` VALUES (20, '蒜头王八', 0, '2024-08-30', '管家', '22/8/2024', 1, '妙蛙种子，巴拉巴拉', '19932', '1316484@qq.com', '123456');
INSERT INTO `user` VALUES (19, '双面龟', 0, '2024-08-06', '游客', '22/8/2024', 1, '', '13946457877', '1396546@163.com', '$2a$10$iJqcYpHRHvTRpAu1ZhJFI.58UKvSs6b792jGLYl2yXa/YQ2Cm792a');
INSERT INTO `user` VALUES (18, '买衣服', 0, '2024-08-20', '游客', '22/8/2024', 1, '', '1512', '1512809@163.com', '$2a$10$YTlKO3DQ0gCTkQkoYzxdjO1DKb16zkM8Cc3UdJT6dIQPVPskjbyyS');
INSERT INTO `user` VALUES (17, '买衣服', 0, '2024-08-20', '游客', '22/8/2024', 1, '', '15', '15@qq.com', '$2a$10$zK9iz4iZA5mOAdSl0r4ZYOLHltSLcOKqTxLdW1d2BkEFfUgmqEdM6');
INSERT INTO `user` VALUES (11, '小美', 0, '2024-08-13', '游客', '22/8/2024', 1, '', '15128091234', '2625493240@163.com', '$2a$10$sIUeEWcVQPrDInqk62WMjeI/PqZfr1tT6NjInObv3vq5zcj51Rnkq');
INSERT INTO `user` VALUES (10, '吃饭', 1, '2024-08-01', '游客', '22/8/2024', 1, '', '13456579091', '15128092@163.com', '$2a$10$ME.yj78bj94TqXM.8KEhquVkOrIgFryQRZy..A8xN4q11vpPfQaae');
INSERT INTO `user` VALUES (9, '吃饭', 1, '2024-08-01', '游客', '22/8/2024', 1, '', '13456579090', '153@163.com', '$2a$10$ZiamMeaFaRjnR8wAwDQZGuS36DZadr2SasuhCE1wbg2rwdn2yOBe6');
INSERT INTO `user` VALUES (8, '吃饭', 1, '2024-08-01', '护工', '22/8/2024', 1, '1', '13456578080', '15128@163.com', '$2a$10$w80xfW74R22Is52wQkQ5P.IvWLi2IkyNWXL88h1NzOZH0UZuGSwAa');
INSERT INTO `user` VALUES (7, '吃饭', 1, '2020-02-03', '护工', '6/8/2024', 1, '1234', '13456578989', '123@163.com', '$2a$10$aj95p6cN2uXkCfzPH7UOzuh0IFPeshoNsN.EN5E6TTfpaOHixZsuC');
INSERT INTO `user` VALUES (6, '安尼', 1, '2000-09-11', '前台', '1/8/2024', 1, '老登', '13987875645', '1512345@163.com', '$2a$10$W2y.RnMxP6SrGI9DpjtbXenK7m7ubAMIlJ5W7r6stuD234/sLEKDK');
INSERT INTO `user` VALUES (5, '乱作一团', 0, '2024-07-30', '护工', '22/8/2024', 1, '1', '15156497181', '1521233@163.com', '$2a$10$101KKmd8GrlYKYvfwm6hRuZLQCW5B28YHTatCajv.vrlTPJyReznW');
INSERT INTO `user` VALUES (4, '魔团团', 0, '2010-08-02', '医生', '14/8/2024', 1, '玩儿推', '15179897081', '1512233@163.com', '$2a$10$oVAvv.9fTok/T.GMh/NxwuOdqllyJkclSV9TrdSWvqdDuhFQ09QNW');
INSERT INTO `user` VALUES (3, '蔡澜', 0, '2020-03-04', '护工', '4/5/2010', 1, '好人', '15179896060', '15123@163.com', '$2a$10$e2hCcPyjN8AbEIYzdi68SujreugJ3gtfJ/9/pklMUwXTpEr77DRna');
INSERT INTO `user` VALUES (2, '双面龟', 0, '1991-02-07', '董事长', '30/7/2024', 1, '好人', '13946567080', '8092233@163.com', '$2a$10$fPwFw4QQjm6sLPcuULlcou9W0LvX5yPtLnGA7u4WHjGH3ROEd1mce');
INSERT INTO `user` VALUES (1, '王八', 1, '2000-05-11', '护工', '5/12/2015', 1, '好人', '13956564747', '151280@163.com', '123456');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (32, 1, 2);
INSERT INTO `user_role` VALUES (33, 3, 2);
INSERT INTO `user_role` VALUES (34, 5, 2);
INSERT INTO `user_role` VALUES (35, 7, 2);
INSERT INTO `user_role` VALUES (36, 1, 3);
INSERT INTO `user_role` VALUES (37, 4, 3);
INSERT INTO `user_role` VALUES (38, 5, 3);
INSERT INTO `user_role` VALUES (40, 2, 1);
INSERT INTO `user_role` VALUES (41, 21, 1);
INSERT INTO `user_role` VALUES (42, 47, 6);
INSERT INTO `user_role` VALUES (43, 48, 6);
INSERT INTO `user_role` VALUES (44, 52, 6);

SET FOREIGN_KEY_CHECKS = 1;
