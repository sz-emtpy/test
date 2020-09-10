/*
 Navicat Premium Data Transfer

 Source Server         : 47.241.26.97
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 47.241.26.97:3306
 Source Schema         : sirius

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 25/08/2020 22:47:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `fired_time` bigint NOT NULL,
  `sched_time` bigint NOT NULL,
  `priority` int NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `last_checkin_time` bigint NOT NULL,
  `checkin_interval` bigint NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `repeat_count` bigint NOT NULL,
  `repeat_interval` bigint NOT NULL,
  `times_triggered` bigint NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `int_prop_1` int DEFAULT NULL,
  `int_prop_2` int DEFAULT NULL,
  `long_prop_1` bigint DEFAULT NULL,
  `long_prop_2` bigint DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `next_fire_time` bigint DEFAULT NULL,
  `prev_fire_time` bigint DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `start_time` bigint NOT NULL,
  `end_time` bigint DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `misfire_instr` smallint DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` VALUES (10, 't_appversion', 'APP版本管理', 'Appversion', 'crud', 'com.ruoyi.sirius', 'sirius', 'appversion', 'APP版本管理', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-23 01:34:09', '', '2020-08-23 02:18:06', '');
INSERT INTO `gen_table` VALUES (11, 't_area', '区域表', 'Area', 'crud', 'com.ruoyi.sirius', 'sirius', 'area', '区域', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-23 01:34:09', '', '2020-08-23 02:30:10', '');
INSERT INTO `gen_table` VALUES (12, 't_equipment', '设备表', 'Equipment', 'crud', 'com.ruoyi.sirius', 'sirius', 'equipment', '设备', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-23 01:34:09', '', '2020-08-23 02:31:21', '');
INSERT INTO `gen_table` VALUES (13, 't_firmware', '固件版本', 'Firmware', 'crud', 'com.ruoyi.sirius', 'sirius', 'firmware', '固件版本', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-23 01:34:09', '', '2020-08-23 02:32:00', '');
INSERT INTO `gen_table` VALUES (14, 't_forewarning_management', '预警管理', 'TForewarningManagement', 'crud', 'com.ruoyi.system', 'system', 'management', '预警管理', 'ruoyi', NULL, 'admin', '2020-08-23 01:34:09', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (15, 't_issue', '常见问题表', 'Issue', 'crud', 'com.ruoyi.sirius', 'sirius', 'issue', '常见问题', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-23 01:34:10', '', '2020-08-23 02:58:44', '');
INSERT INTO `gen_table` VALUES (16, 't_model_type', '设备型号', 'ModelType', 'crud', 'com.ruoyi.sirius', 'sirius', 'type', '设备型号', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-23 01:34:10', '', '2020-08-23 02:15:56', '');
INSERT INTO `gen_table` VALUES (19, 't_user', '用户表', 'User', 'crud', 'com.ruoyi.sirius', 'sirius', 'user', '用户', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-08-24 14:09:11', '', '2020-08-24 14:11:56', '');
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` VALUES (61, '10', 'id', 'null', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:18:06');
INSERT INTO `gen_table_column` VALUES (62, '10', 'name', '名称', 'varchar(200)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:18:06');
INSERT INTO `gen_table_column` VALUES (63, '10', 'version', '版本号', 'varchar(200)', 'String', 'version', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:18:06');
INSERT INTO `gen_table_column` VALUES (64, '10', 'serial_no', '编号', 'varchar(200)', 'String', 'serialNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:18:06');
INSERT INTO `gen_table_column` VALUES (65, '10', 'file_url', '文件地址', 'longtext', 'String', 'fileUrl', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:18:06');
INSERT INTO `gen_table_column` VALUES (66, '10', 'update_remarks', '更新说明', 'longtext', 'String', 'updateRemarks', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:18:06');
INSERT INTO `gen_table_column` VALUES (67, '10', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:18:06');
INSERT INTO `gen_table_column` VALUES (68, '11', 'id', 'null', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:30:10');
INSERT INTO `gen_table_column` VALUES (69, '11', 'area_name', '区域名', 'varchar(60)', 'String', 'areaName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:30:10');
INSERT INTO `gen_table_column` VALUES (70, '11', 'area_no', '区域编号', 'varchar(20)', 'String', 'areaNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:30:10');
INSERT INTO `gen_table_column` VALUES (71, '11', 'order_weight', '排序权重', 'tinyint', 'Long', 'orderWeight', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:30:10');
INSERT INTO `gen_table_column` VALUES (72, '11', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:30:10');
INSERT INTO `gen_table_column` VALUES (73, '12', 'equipment_id', 'null', 'bigint', 'Long', 'equipmentId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:31:21');
INSERT INTO `gen_table_column` VALUES (74, '12', 'name', '名称', 'varchar(200)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:31:21');
INSERT INTO `gen_table_column` VALUES (75, '12', 'type', '型号', 'varchar(200)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:31:21');
INSERT INTO `gen_table_column` VALUES (76, '12', 'equipment_no', '设备ID', 'varchar(200)', 'String', 'equipmentNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:31:21');
INSERT INTO `gen_table_column` VALUES (77, '12', 'admin_id', '管理员ID', 'bigint', 'Long', 'adminId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:31:21');
INSERT INTO `gen_table_column` VALUES (78, '12', 'password', '登陆密码', 'varchar(200)', 'String', 'password', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:31:21');
INSERT INTO `gen_table_column` VALUES (79, '12', 'version', '当前图件版本', 'varchar(200)', 'String', 'version', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:31:21');
INSERT INTO `gen_table_column` VALUES (80, '12', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:31:21');
INSERT INTO `gen_table_column` VALUES (81, '13', 'id', 'null', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:32:00');
INSERT INTO `gen_table_column` VALUES (82, '13', 'model_name', '型号名称', 'varchar(100)', 'String', 'modelName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:32:00');
INSERT INTO `gen_table_column` VALUES (83, '13', 'model_no', '型号编码', 'varchar(100)', 'String', 'modelNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:32:00');
INSERT INTO `gen_table_column` VALUES (84, '13', 'version', '固件版本', 'varchar(100)', 'String', 'version', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:32:00');
INSERT INTO `gen_table_column` VALUES (85, '13', 'firmware_no', '固件编号', 'varchar(100)', 'String', 'firmwareNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:32:00');
INSERT INTO `gen_table_column` VALUES (86, '13', 'price', '固件问价', 'decimal(10,2)', 'Double', 'price', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:32:00');
INSERT INTO `gen_table_column` VALUES (87, '13', 'update_remark', '更新说明', 'longtext', 'String', 'updateRemark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:32:00');
INSERT INTO `gen_table_column` VALUES (88, '13', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-08-23 01:34:09', NULL, '2020-08-23 02:32:00');
INSERT INTO `gen_table_column` VALUES (89, '14', 'id', NULL, 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-23 01:34:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (90, '14', 'device_id', '设备ID', 'varchar(200)', 'String', 'deviceId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-23 01:34:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (91, '14', 'content', '消息内容', 'longtext', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-23 01:34:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (92, '14', 'status', '消息状态(1 已读  0 未读）', 'tinyint(1)', 'Integer', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2020-08-23 01:34:09', '', NULL);
INSERT INTO `gen_table_column` VALUES (93, '14', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2020-08-23 01:34:10', '', NULL);
INSERT INTO `gen_table_column` VALUES (94, '15', 'id', 'id', 'bigint', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:58:44');
INSERT INTO `gen_table_column` VALUES (95, '15', 'issue', '常见问题', 'longtext', 'String', 'issue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:58:44');
INSERT INTO `gen_table_column` VALUES (96, '15', 'content', '内容', 'longtext', 'String', 'content', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 3, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:58:44');
INSERT INTO `gen_table_column` VALUES (97, '15', 'url', 'URL地址', 'longtext', 'String', 'url', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:58:44');
INSERT INTO `gen_table_column` VALUES (98, '15', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:58:44');
INSERT INTO `gen_table_column` VALUES (99, '16', 'id', 'null', 'bigint', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:15:56');
INSERT INTO `gen_table_column` VALUES (100, '16', 'name', '型号名称', 'varchar(200)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:15:56');
INSERT INTO `gen_table_column` VALUES (101, '16', 'type_no', '型号编码', 'varchar(200)', 'String', 'typeNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:15:56');
INSERT INTO `gen_table_column` VALUES (102, '16', 'version', '最新固件版本', 'varchar(200)', 'String', 'version', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:15:56');
INSERT INTO `gen_table_column` VALUES (103, '16', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2020-08-23 01:34:10', NULL, '2020-08-23 02:15:56');
INSERT INTO `gen_table_column` VALUES (124, '19', 'user_id', 'null', 'bigint', 'Long', 'userId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-24 14:09:11', NULL, '2020-08-24 14:11:56');
INSERT INTO `gen_table_column` VALUES (125, '19', 'user_name', '用户账号', 'varchar(200)', 'String', 'userName', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-24 14:09:11', NULL, '2020-08-24 14:11:56');
INSERT INTO `gen_table_column` VALUES (126, '19', 'user_email', '邮箱', 'varchar(200)', 'String', 'userEmail', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-24 14:09:11', NULL, '2020-08-24 14:11:56');
INSERT INTO `gen_table_column` VALUES (127, '19', 'user_password', '密码', 'varchar(200)', 'String', 'userPassword', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2020-08-24 14:09:12', NULL, '2020-08-24 14:11:56');
INSERT INTO `gen_table_column` VALUES (128, '19', 'user_tel', '手机号码', 'varchar(50)', 'String', 'userTel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-08-24 14:09:12', NULL, '2020-08-24 14:11:56');
INSERT INTO `gen_table_column` VALUES (129, '19', 'user_photo', '头像', 'varchar(200)', 'String', 'userPhoto', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2020-08-24 14:09:12', NULL, '2020-08-24 14:11:57');
INSERT INTO `gen_table_column` VALUES (130, '19', 'user_nickname', '昵称', 'varchar(50)', 'String', 'userNickname', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 7, 'admin', '2020-08-24 14:09:12', NULL, '2020-08-24 14:11:57');
INSERT INTO `gen_table_column` VALUES (131, '19', 'tel_verify', '手机验证', 'tinyint', 'Long', 'telVerify', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'user_tel', 8, 'admin', '2020-08-24 14:09:12', NULL, '2020-08-24 14:11:57');
INSERT INTO `gen_table_column` VALUES (132, '19', 'email_verify', '邮箱验证', 'tinyint', 'Long', 'emailVerify', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'user_email', 9, 'admin', '2020-08-24 14:09:12', NULL, '2020-08-24 14:11:57');
INSERT INTO `gen_table_column` VALUES (133, '19', 'user_create_time', '创建时间', 'datetime', 'Date', 'userCreateTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-08-24 14:09:12', NULL, '2020-08-24 14:11:57');
INSERT INTO `gen_table_column` VALUES (134, '19', 'language', '推送中英文模板使用', 'varchar(255)', 'String', 'language', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-08-24 14:09:12', NULL, '2020-08-24 14:11:57');
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '是否开启注册用户功能');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (30, 1, '未验证', '0', 'user_email', NULL, 'default', 'Y', '0', 'admin', '2020-08-23 02:34:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (31, 2, '已验证', '1', 'user_email', NULL, 'default', 'Y', '0', 'admin', '2020-08-23 02:34:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (32, 1, '未验证', '0', 'user_tel', NULL, 'default', 'Y', '0', 'admin', '2020-08-23 02:36:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (33, 2, '已验证', '1', 'user_tel', NULL, 'default', 'Y', '0', 'admin', '2020-08-23 02:36:14', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '区域', 'sys_area', '0', 'admin', '2020-08-23 02:28:28', '', NULL, '区域管理');
INSERT INTO `sys_dict_type` VALUES (12, '手机验证', 'user_tel', '0', 'admin', '2020-08-23 02:33:02', 'admin', '2020-08-23 02:35:39', '用户手机验证');
INSERT INTO `sys_dict_type` VALUES (13, '邮箱验证', 'user_email', '0', 'admin', '2020-08-23 02:33:19', 'admin', '2020-08-23 02:35:30', '用于用户验证');
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='定时任务调度日志表';

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-08-21 12:26:23');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-08-23 01:25:25');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-08-23 02:12:50');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-08-23 07:23:51');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-08-23 10:37:30');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Mac OS X', '0', '登录成功', '2020-08-24 13:44:08');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2020 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', 'menuBlank', 'C', '0', '', 'fa fa-location-arrow', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2012, '天狼眼', 0, 1, '#', 'menuItem', 'C', '0', NULL, '#', 'admin', '2020-08-21 13:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, 'app版本管理', 2012, 1, '/sirius/appversion', 'menuItem', 'C', '0', '', '#', 'admin', '2020-08-21 13:13:47', 'admin', '2020-08-23 02:46:16', '');
INSERT INTO `sys_menu` VALUES (2014, '区域管理', 2012, 2, '/sirius/area', 'menuItem', 'C', '0', '', '#', 'admin', '2020-08-23 02:44:24', 'admin', '2020-08-23 02:46:24', '');
INSERT INTO `sys_menu` VALUES (2015, '设备管理', 2012, 3, '/sirius/equipment', 'menuItem', 'C', '0', '', '#', 'admin', '2020-08-23 02:45:23', 'admin', '2020-08-23 02:46:59', '');
INSERT INTO `sys_menu` VALUES (2016, '固件版本', 2012, 4, '/sirius/firmware', 'menuItem', 'C', '0', NULL, '#', 'admin', '2020-08-23 02:47:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '常见问题', 2012, 5, '/sirius/issue', 'menuItem', 'C', '0', NULL, '#', 'admin', '2020-08-23 02:48:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '设备型号管理', 2012, 6, '/sirius/type', 'menuItem', 'C', '0', NULL, '#', 'admin', '2020-08-23 02:48:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '用户管理', 2012, 1, '/sirius/user', 'menuItem', 'C', '0', NULL, '#', 'admin', '2020-08-23 02:49:06', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='通知公告表';

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_oper_log` VALUES (8, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\n  \"roleId\" : [ \"2\" ],\n  \"roleName\" : [ \"普通角色\" ],\n  \"roleKey\" : [ \"common\" ],\n  \"roleSort\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"普通角色\" ],\n  \"menuIds\" : [ \"3,113,114,1057,1058,1059,1060,1061,115,4\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:29:52');
INSERT INTO `sys_oper_log` VALUES (9, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:30:04');
INSERT INTO `sys_oper_log` VALUES (10, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2006', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"存在子菜单,不允许删除\",\n  \"code\" : 301\n}', 0, NULL, '2020-08-21 12:30:11');
INSERT INTO `sys_oper_log` VALUES (11, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2011', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:30:17');
INSERT INTO `sys_oper_log` VALUES (12, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2010', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:30:25');
INSERT INTO `sys_oper_log` VALUES (13, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2009', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:30:30');
INSERT INTO `sys_oper_log` VALUES (14, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2008', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:30:36');
INSERT INTO `sys_oper_log` VALUES (15, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2006', '127.0.0.1', '内网IP', '{ }', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:30:41');
INSERT INTO `sys_oper_log` VALUES (16, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"t_issue,t_model_type,t_user,t_user_equipment,t_appversion,t_area,t_equipment,t_firmware,t_forewarning_management\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:32:27');
INSERT INTO `sys_oper_log` VALUES (17, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"1\" ],\n  \"tableName\" : [ \"t_appversion\" ],\n  \"tableComment\" : [ \"APP版本管理\" ],\n  \"className\" : [ \"Appversion\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"1\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"2\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"name\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"3\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"版本号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"version\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"4\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"编号\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"serialNo\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"5\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"文件地址\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ \"fileU', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:38:40');
INSERT INTO `sys_oper_log` VALUES (18, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"2\" ],\n  \"tableName\" : [ \"t_area\" ],\n  \"tableComment\" : [ \"区域表\" ],\n  \"className\" : [ \"Area\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"9\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"10\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"区域名\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"areaName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"11\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"区域编号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"areaNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"12\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"排序权重\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"orderWeight\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"13\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Date\" ],\n  \"columns[4].javaField\" : [ \"createTime\"', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:38:51');
INSERT INTO `sys_oper_log` VALUES (19, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"3\" ],\n  \"tableName\" : [ \"t_equipment\" ],\n  \"tableComment\" : [ \"设备表\" ],\n  \"className\" : [ \"Equipment\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"14\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"equipmentId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"15\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"name\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"16\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"型号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"type\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"select\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"17\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"设备ID\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"equipmentNo\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"18\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"管理员ID\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" :', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:38:59');
INSERT INTO `sys_oper_log` VALUES (20, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"4\" ],\n  \"tableName\" : [ \"t_firmware\" ],\n  \"tableComment\" : [ \"固件版本\" ],\n  \"className\" : [ \"Firmware\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"23\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"id\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"24\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"型号名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"modelName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"25\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"型号编码\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"modelNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"26\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"固件版本\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"version\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"27\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"固件编号\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ \"', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:39:09');
INSERT INTO `sys_oper_log` VALUES (21, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"6\" ],\n  \"tableName\" : [ \"t_issue\" ],\n  \"tableComment\" : [ \"常见问题表\" ],\n  \"className\" : [ \"Issue\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"37\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"id\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"38\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"常见问题\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"issue\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"EQ\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"39\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"内容\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"content\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"40\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"URL地址\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"url\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"41\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建人\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" : [ \"createUser\" ],\n  \"c', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:39:21');
INSERT INTO `sys_oper_log` VALUES (22, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"8\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"User\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"49\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"50\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"51\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"52\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"手机号码\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"userTel\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"53\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"地区\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" : [ \"userArea\" ', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:39:38');
INSERT INTO `sys_oper_log` VALUES (23, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  \"ids\" : [ \"9\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:39:45');
INSERT INTO `sys_oper_log` VALUES (24, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"5\" ],\n  \"tableName\" : [ \"t_forewarning_management\" ],\n  \"tableComment\" : [ \"预警管理\" ],\n  \"className\" : [ \"ForewarningManagement\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"32\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"33\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"设备ID\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"deviceId\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"EQ\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"34\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"消息内容\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"content\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"35\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"消息状态(1 已读  0 未读）\" ],\n  \"columns[3].javaType\" : [ \"Integer\" ],\n  \"columns[3].javaField\" : [ \"status\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"radio\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"36\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Dat', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:39:55');
INSERT INTO `sys_oper_log` VALUES (25, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"2\" ],\n  \"tableName\" : [ \"t_area\" ],\n  \"tableComment\" : [ \"区域表\" ],\n  \"className\" : [ \"Area\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"9\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"10\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"区域名\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"areaName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"11\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"区域编号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"areaNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"12\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"排序权重\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"orderWeight\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"13\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Date\" ],\n  \"columns[4].javaField\" : [ \"createTime\"', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:41:26');
INSERT INTO `sys_oper_log` VALUES (26, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"7\" ],\n  \"tableName\" : [ \"t_model_type\" ],\n  \"tableComment\" : [ \"设备型号\" ],\n  \"className\" : [ \"ModelType\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"43\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"44\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"型号名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"name\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"45\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"型号编码\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"typeNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"46\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"最新固件版本\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"version\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"47\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Date\" ],\n  \"columns[4].javaField\" : [ \"c', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 12:42:46');
INSERT INTO `sys_oper_log` VALUES (27, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"t_appversion,t_equipment,t_area,t_firmware,t_forewarning_management,t_issue,t_model_type,t_user\" ]\n}', 'null', 0, NULL, '2020-08-21 12:56:03');
INSERT INTO `sys_oper_log` VALUES (28, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  \"parentId\" : [ \"0\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"天狼眼\" ],\n  \"url\" : [ \"\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:12:27');
INSERT INTO `sys_oper_log` VALUES (29, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"app版本管理\" ],\n  \"url\" : [ \"/system/appversion\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:area:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:13:47');
INSERT INTO `sys_oper_log` VALUES (30, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"1\" ],\n  \"tableName\" : [ \"t_appversion\" ],\n  \"tableComment\" : [ \"APP版本管理\" ],\n  \"className\" : [ \"Appversion\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"1\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"2\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"name\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"3\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"版本号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"version\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"4\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"编号\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"serialNo\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"5\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"文件地址\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ \"fileU', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:15:35');
INSERT INTO `sys_oper_log` VALUES (31, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"2\" ],\n  \"tableName\" : [ \"t_area\" ],\n  \"tableComment\" : [ \"区域表\" ],\n  \"className\" : [ \"Area\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"9\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"10\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"区域名\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"areaName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"11\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"区域编号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"areaNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"12\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"排序权重\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"orderWeight\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"13\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Date\" ],\n  \"columns[4].javaField\" : [ \"createTime\"', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:15:44');
INSERT INTO `sys_oper_log` VALUES (32, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"3\" ],\n  \"tableName\" : [ \"t_equipment\" ],\n  \"tableComment\" : [ \"设备表\" ],\n  \"className\" : [ \"Equipment\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"14\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"equipmentId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"15\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"name\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"16\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"型号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"type\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"select\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"17\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"设备ID\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"equipmentNo\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"18\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"管理员ID\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" :', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:15:57');
INSERT INTO `sys_oper_log` VALUES (33, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"4\" ],\n  \"tableName\" : [ \"t_firmware\" ],\n  \"tableComment\" : [ \"固件版本\" ],\n  \"className\" : [ \"Firmware\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"23\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"id\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"24\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"型号名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"modelName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"25\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"型号编码\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"modelNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"26\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"固件版本\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"version\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"27\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"固件编号\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ \"', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:16:08');
INSERT INTO `sys_oper_log` VALUES (34, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"5\" ],\n  \"tableName\" : [ \"t_forewarning_management\" ],\n  \"tableComment\" : [ \"预警管理\" ],\n  \"className\" : [ \"ForewarningManagement\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"32\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"33\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"设备ID\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"deviceId\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"EQ\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"34\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"消息内容\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"content\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"35\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"消息状态(1 已读  0 未读）\" ],\n  \"columns[3].javaType\" : [ \"Integer\" ],\n  \"columns[3].javaField\" : [ \"status\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"radio\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"36\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Dat', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:16:17');
INSERT INTO `sys_oper_log` VALUES (35, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"6\" ],\n  \"tableName\" : [ \"t_issue\" ],\n  \"tableComment\" : [ \"常见问题表\" ],\n  \"className\" : [ \"Issue\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"37\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"id\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"38\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"常见问题\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"issue\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"EQ\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"39\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"内容\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"content\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"40\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"URL地址\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"url\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"41\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建人\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" : [ \"createUser\" ],\n  \"c', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:16:28');
INSERT INTO `sys_oper_log` VALUES (36, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"7\" ],\n  \"tableName\" : [ \"t_model_type\" ],\n  \"tableComment\" : [ \"设备型号\" ],\n  \"className\" : [ \"ModelType\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"43\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"44\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"型号名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"name\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"45\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"型号编码\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"typeNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"46\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"最新固件版本\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"version\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"47\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Date\" ],\n  \"columns[4].javaField\" : [ \"c', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:16:37');
INSERT INTO `sys_oper_log` VALUES (37, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"8\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"User\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"49\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"50\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"51\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"52\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"手机号码\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"userTel\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"53\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"地区\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" : [ \"userArea\" ', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:16:48');
INSERT INTO `sys_oper_log` VALUES (38, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"t_appversion,t_area,t_equipment,t_firmware,t_forewarning_management,t_issue,t_model_type,t_user\" ]\n}', 'null', 0, NULL, '2020-08-21 13:19:59');
INSERT INTO `sys_oper_log` VALUES (39, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  \"menuId\" : [ \"2013\" ],\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"app版本管理\" ],\n  \"url\" : [ \"/sirius/appversion\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"system:area:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 13:22:44');
INSERT INTO `sys_oper_log` VALUES (40, 'APP版本管理', 1, 'com.ruoyi.sirius.controller.AppversionController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/appversion/add', '127.0.0.1', '内网IP', '{\n  \"name\" : [ \"111\" ],\n  \"version\" : [ \"111\" ],\n  \"serialNo\" : [ \"1111\" ],\n  \"fileUrl\" : [ \"1111\" ],\n  \"updateRemarks\" : [ \"1111\" ],\n  \"createId\" : [ \"1111\" ]\n}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n### The error may involve com.ruoyi.sirius.mapper.AppversionMapper.insertAppversion-Inline\n### The error occurred while setting parameters\n### SQL: insert into t_appversion          ( name,             version,             serial_no,             file_url,             update_remarks,             create_time,             create_id )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-08-21 13:23:10');
INSERT INTO `sys_oper_log` VALUES (41, 'APP版本管理', 1, 'com.ruoyi.sirius.controller.AppversionController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/appversion/add', '127.0.0.1', '内网IP', '{\n  \"name\" : [ \"1\" ],\n  \"version\" : [ \"1\" ],\n  \"serialNo\" : [ \"1\" ],\n  \"fileUrl\" : [ \"1\" ],\n  \"updateRemarks\" : [ \"1\" ],\n  \"createId\" : [ \"1\" ]\n}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n### The error may involve com.ruoyi.sirius.mapper.AppversionMapper.insertAppversion-Inline\n### The error occurred while setting parameters\n### SQL: insert into t_appversion          ( name,             version,             serial_no,             file_url,             update_remarks,             create_time,             create_id )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ? )\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-08-21 13:56:12');
INSERT INTO `sys_oper_log` VALUES (42, 'APP版本管理', 1, 'com.ruoyi.sirius.controller.AppversionController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/appversion/add', '127.0.0.1', '内网IP', '{\n  \"name\" : [ \"1\" ],\n  \"version\" : [ \"1\" ],\n  \"serialNo\" : [ \"1\" ],\n  \"fileUrl\" : [ \"1\" ],\n  \"updateRemarks\" : [ \"1\" ],\n  \"createId\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-21 14:03:24');
INSERT INTO `sys_oper_log` VALUES (43, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  \"ids\" : [ \"1,2,3,4,5,6,7,8\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 01:30:22');
INSERT INTO `sys_oper_log` VALUES (44, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"t_user,t_model_type,t_issue,t_forewarning_management,t_firmware,t_appversion,t_area,t_equipment\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 01:34:10');
INSERT INTO `sys_oper_log` VALUES (45, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"15\" ],\n  \"tableName\" : [ \"t_issue\" ],\n  \"tableComment\" : [ \"常见问题表\" ],\n  \"className\" : [ \"Issue\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"94\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"id\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"95\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"常见问题\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"issue\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"EQ\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"96\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"内容\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"content\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"97\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"URL地址\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"url\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"98\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Date\" ],\n  \"columns[4].javaField\" : [ \"createTime\" ],\n  \"columns[4].queryType\" : [ \"EQ\" ],\n  \"columns[4].htmlType\" : [ \"date', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:15:21');
INSERT INTO `sys_oper_log` VALUES (46, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"16\" ],\n  \"tableName\" : [ \"t_model_type\" ],\n  \"tableComment\" : [ \"设备型号\" ],\n  \"className\" : [ \"ModelType\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"99\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"100\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"型号名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"name\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"101\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"型号编码\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"typeNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"102\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"最新固件版本\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"version\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"103\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Date\" ],\n  \"columns[4].javaField\" :', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:15:57');
INSERT INTO `sys_oper_log` VALUES (47, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"17\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"User\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"104\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"105\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"106\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"107\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"手机号码\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"userTel\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"108\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"地区\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" : [ \"user', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:17:20');
INSERT INTO `sys_oper_log` VALUES (48, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"10\" ],\n  \"tableName\" : [ \"t_appversion\" ],\n  \"tableComment\" : [ \"APP版本管理\" ],\n  \"className\" : [ \"Appversion\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"61\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"62\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"name\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"63\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"版本号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"version\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"64\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"编号\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"serialNo\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"65\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"文件地址\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ ', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:18:06');
INSERT INTO `sys_oper_log` VALUES (49, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"17\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"TUser\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"104\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"105\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"106\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"107\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"手机号码\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"userTel\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"108\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"地区\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" : [ \"use', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:18:18');
INSERT INTO `sys_oper_log` VALUES (50, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"区域\" ],\n  \"dictType\" : [ \"sys_area\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"区域管理\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:28:28');
INSERT INTO `sys_oper_log` VALUES (51, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"11\" ],\n  \"tableName\" : [ \"t_area\" ],\n  \"tableComment\" : [ \"区域表\" ],\n  \"className\" : [ \"Area\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"68\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"69\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"区域名\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"areaName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"70\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"区域编号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"areaNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"71\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"排序权重\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"orderWeight\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"72\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Date\" ],\n  \"columns[4].javaField\" : [ \"createTime\" ],\n  \"columns[4].queryType\" : [', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:30:11');
INSERT INTO `sys_oper_log` VALUES (52, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"12\" ],\n  \"tableName\" : [ \"t_equipment\" ],\n  \"tableComment\" : [ \"设备表\" ],\n  \"className\" : [ \"Equipment\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"73\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"equipmentId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"74\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"name\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"75\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"型号\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"type\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"select\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"76\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"设备ID\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"equipmentNo\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"77\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"管理员ID\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" ', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:31:21');
INSERT INTO `sys_oper_log` VALUES (53, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"13\" ],\n  \"tableName\" : [ \"t_firmware\" ],\n  \"tableComment\" : [ \"固件版本\" ],\n  \"className\" : [ \"Firmware\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"81\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"82\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"型号名称\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"modelName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"83\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"型号编码\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"modelNo\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"84\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"固件版本\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"version\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"85\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"固件编号\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : ', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:32:00');
INSERT INTO `sys_oper_log` VALUES (54, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"手机验证\" ],\n  \"dictType\" : [ \"user_tel\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:33:02');
INSERT INTO `sys_oper_log` VALUES (55, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\n  \"dictName\" : [ \"邮箱验证\" ],\n  \"dictType\" : [ \"user_email\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:33:20');
INSERT INTO `sys_oper_log` VALUES (56, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"未验证\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"user_email\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:34:38');
INSERT INTO `sys_oper_log` VALUES (57, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"已验证\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"user_email\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:34:57');
INSERT INTO `sys_oper_log` VALUES (58, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"13\" ],\n  \"dictName\" : [ \"邮箱验证\" ],\n  \"dictType\" : [ \"user_email\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"用于用户验证\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:35:30');
INSERT INTO `sys_oper_log` VALUES (59, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\n  \"dictId\" : [ \"12\" ],\n  \"dictName\" : [ \"手机验证\" ],\n  \"dictType\" : [ \"user_tel\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"用户手机验证\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:35:39');
INSERT INTO `sys_oper_log` VALUES (60, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"未验证\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"user_tel\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:36:01');
INSERT INTO `sys_oper_log` VALUES (61, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\n  \"dictLabel\" : [ \"已验证\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"user_tel\" ],\n  \"cssClass\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:36:14');
INSERT INTO `sys_oper_log` VALUES (62, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"17\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"User\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"104\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"105\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"106\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"107\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"手机号码\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"userTel\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"108\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"地区\" ],\n  \"columns[4].javaType\" : [ \"Long\" ],\n  \"columns[4].javaField\" : [ \"user', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:38:30');
INSERT INTO `sys_oper_log` VALUES (63, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"t_issue,t_model_type,t_user,t_appversion,t_area,t_equipment,t_firmware\" ]\n}', 'null', 0, NULL, '2020-08-23 02:38:42');
INSERT INTO `sys_oper_log` VALUES (64, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"区域管理\" ],\n  \"url\" : [ \"/sirius/area\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:44:24');
INSERT INTO `sys_oper_log` VALUES (65, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"设备管理\" ],\n  \"url\" : [ \"/sirius/firmware\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"sirius:firmware:view\" ],\n  \"orderNum\" : [ \"3\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:45:23');
INSERT INTO `sys_oper_log` VALUES (66, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  \"menuId\" : [ \"2014\" ],\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"区域管理\" ],\n  \"url\" : [ \"/sirius/area\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"sirius:area:view\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:45:46');
INSERT INTO `sys_oper_log` VALUES (67, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  \"menuId\" : [ \"2013\" ],\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"app版本管理\" ],\n  \"url\" : [ \"/sirius/appversion\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:46:17');
INSERT INTO `sys_oper_log` VALUES (68, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  \"menuId\" : [ \"2014\" ],\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"区域管理\" ],\n  \"url\" : [ \"/sirius/area\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:46:24');
INSERT INTO `sys_oper_log` VALUES (69, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  \"menuId\" : [ \"2015\" ],\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"设备管理\" ],\n  \"url\" : [ \"/sirius/firmware\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"3\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:46:34');
INSERT INTO `sys_oper_log` VALUES (70, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\n  \"menuId\" : [ \"2015\" ],\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"设备管理\" ],\n  \"url\" : [ \"/sirius/equipment\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"3\" ],\n  \"icon\" : [ \"#\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:46:59');
INSERT INTO `sys_oper_log` VALUES (71, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"固件版本\" ],\n  \"url\" : [ \"/sirius/firmware\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"4\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:47:37');
INSERT INTO `sys_oper_log` VALUES (72, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"常见问题\" ],\n  \"url\" : [ \"/sirius/issue\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"5\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:48:07');
INSERT INTO `sys_oper_log` VALUES (73, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"设备型号管理\" ],\n  \"url\" : [ \"/sirius/type\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"6\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:48:41');
INSERT INTO `sys_oper_log` VALUES (74, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\n  \"parentId\" : [ \"2012\" ],\n  \"menuType\" : [ \"C\" ],\n  \"menuName\" : [ \"用户管理\" ],\n  \"url\" : [ \"/sirius/user\" ],\n  \"target\" : [ \"menuItem\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"\" ],\n  \"visible\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:49:06');
INSERT INTO `sys_oper_log` VALUES (75, 'APP版本管理', 1, 'com.ruoyi.sirius.controller.AppversionController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/appversion/add', '127.0.0.1', '内网IP', '{\n  \"name\" : [ \"测试app\" ],\n  \"version\" : [ \"1.0.1\" ],\n  \"serialNo\" : [ \"87951\" ],\n  \"fileUrl\" : [ \"http://localhost:8083/index/1.app\" ],\n  \"updateRemarks\" : [ \"测试中\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:50:57');
INSERT INTO `sys_oper_log` VALUES (76, '区域', 1, 'com.ruoyi.sirius.controller.AreaController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/area/add', '127.0.0.1', '内网IP', '{\n  \"areaName\" : [ \"中国区\" ],\n  \"areaNo\" : [ \"zn_1001\" ],\n  \"orderWeight\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:51:18');
INSERT INTO `sys_oper_log` VALUES (77, '设备', 1, 'com.ruoyi.sirius.controller.EquipmentController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/equipment/add', '127.0.0.1', '内网IP', '{\n  \"name\" : [ \"Mac pro\" ],\n  \"type\" : [ \"\" ],\n  \"equipmentNo\" : [ \"mc001\" ],\n  \"adminId\" : [ \"\" ],\n  \"password\" : [ \"123456\" ],\n  \"version\" : [ \"1.2.1\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:52:04');
INSERT INTO `sys_oper_log` VALUES (78, '固件版本', 1, 'com.ruoyi.sirius.controller.FirmwareController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/firmware/add', '127.0.0.1', '内网IP', '{\n  \"modelName\" : [ \"测试版本1\" ],\n  \"modelNo\" : [ \"test_001\" ],\n  \"version\" : [ \"1.0.1\" ],\n  \"firmwareNo\" : [ \"test_1001\" ],\n  \"price\" : [ \"29.13\" ],\n  \"updateRemark\" : [ \"更新了bug\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:52:50');
INSERT INTO `sys_oper_log` VALUES (79, '常见问题', 1, 'com.ruoyi.sirius.controller.IssueController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/issue/add', '127.0.0.1', '内网IP', '{\n  \"issue\" : [ \"死机了怎么办？\" ],\n  \"content\" : [ \"死机了找客服\" ],\n  \"url\" : [ \"http://localhost:8083/index\" ]\n}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n### The error may involve com.ruoyi.sirius.mapper.IssueMapper.insertIssue-Inline\n### The error occurred while setting parameters\n### SQL: insert into t_issue          ( issue,             content,             url,             create_time )           values ( ?,             ?,             ?,             ? )\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-08-23 02:53:19');
INSERT INTO `sys_oper_log` VALUES (80, '常见问题', 1, 'com.ruoyi.sirius.controller.IssueController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/issue/add', '127.0.0.1', '内网IP', '{\n  \"issue\" : [ \"死机了怎么办？\" ],\n  \"content\" : [ \"死机了找客服\" ],\n  \"url\" : [ \"http://localhost:8083/index\" ]\n}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n### The error may involve com.ruoyi.sirius.mapper.IssueMapper.insertIssue-Inline\n### The error occurred while setting parameters\n### SQL: insert into t_issue          ( issue,             content,             url,             create_time )           values ( ?,             ?,             ?,             ? )\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-08-23 02:53:33');
INSERT INTO `sys_oper_log` VALUES (81, '常见问题', 1, 'com.ruoyi.sirius.controller.IssueController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/issue/add', '127.0.0.1', '内网IP', '{\n  \"issue\" : [ \"死机了怎么办？\" ],\n  \"content\" : [ \"死机了找客服\" ],\n  \"url\" : [ \"http://localhost:8083/index\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:54:51');
INSERT INTO `sys_oper_log` VALUES (82, '设备型号', 1, 'com.ruoyi.sirius.controller.ModelTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/type/add', '127.0.0.1', '内网IP', '{\n  \"name\" : [ \"sz_8795\" ],\n  \"typeNo\" : [ \"zn_001\" ],\n  \"version\" : [ \"1.2.321\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:55:28');
INSERT INTO `sys_oper_log` VALUES (83, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"15\" ],\n  \"tableName\" : [ \"t_issue\" ],\n  \"tableComment\" : [ \"常见问题表\" ],\n  \"className\" : [ \"Issue\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"94\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"id\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"id\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"95\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"常见问题\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"issue\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"EQ\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"96\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"内容\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"content\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"textarea\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"97\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"URL地址\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"url\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"98\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\n  \"columns[4].javaType\" : [ \"Date\" ],\n  \"columns[4].javaField\" : [ \"createTime\" ],\n  \"columns[4].queryType\" : [ \"EQ\" ],\n  \"columns[4].htmlType\" : [ \"d', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-23 02:58:44');
INSERT INTO `sys_oper_log` VALUES (84, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  \"ids\" : [ \"17\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 13:45:50');
INSERT INTO `sys_oper_log` VALUES (85, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"t_user\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 13:45:57');
INSERT INTO `sys_oper_log` VALUES (86, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"18\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"User\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"114\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"115\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"116\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"117\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"手机号码\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"userTel\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"118\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"头像\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ \"us', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 13:48:25');
INSERT INTO `sys_oper_log` VALUES (87, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-24 13:48:30');
INSERT INTO `sys_oper_log` VALUES (88, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"18\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"User\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"114\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"115\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"116\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"117\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"手机号码\" ],\n  \"columns[3].javaType\" : [ \"Long\" ],\n  \"columns[3].javaField\" : [ \"userTel\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].isQuery\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"118\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"头像\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ \"us', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 13:51:46');
INSERT INTO `sys_oper_log` VALUES (89, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-24 13:51:54');
INSERT INTO `sys_oper_log` VALUES (90, '用户', 1, 'com.ruoyi.sirius.controller.UserController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/user/add', '127.0.0.1', '内网IP', '{\n  \"userName\" : [ \"test\" ],\n  \"userEmail\" : [ \"szyanb@gmail.com\" ],\n  \"userTel\" : [ \"17777777777\" ],\n  \"userNickname\" : [ \"测试\" ],\n  \"telVerify\" : [ \"0\" ],\n  \"emailVerify\" : [ \"0\" ],\n  \"language\" : [ \"+86\" ]\n}', 'null', 1, '\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'user_tel\' at row 1\n### The error may involve com.ruoyi.sirius.mapper.UserMapper.insertUser-Inline\n### The error occurred while setting parameters\n### SQL: insert into t_user          ( user_name,             user_email,             user_tel,                          user_nickname,             tel_verify,             email_verify,                          language )           values ( ?,             ?,             ?,                          ?,             ?,             ?,                          ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'user_tel\' at row 1\n; Data truncation: Out of range value for column \'user_tel\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'user_tel\' at row 1', '2020-08-24 13:54:17');
INSERT INTO `sys_oper_log` VALUES (91, '用户', 1, 'com.ruoyi.sirius.controller.UserController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/user/add', '127.0.0.1', '内网IP', '{\n  \"userName\" : [ \"test\" ],\n  \"userEmail\" : [ \"szyanb@gmail.com\" ],\n  \"userTel\" : [ \"17777777777\" ],\n  \"userNickname\" : [ \"测试\" ],\n  \"telVerify\" : [ \"0\" ],\n  \"emailVerify\" : [ \"0\" ],\n  \"language\" : [ \"+86\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 13:56:21');
INSERT INTO `sys_oper_log` VALUES (92, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\n  \"ids\" : [ \"18\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 14:09:08');
INSERT INTO `sys_oper_log` VALUES (93, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\n  \"tables\" : [ \"t_user\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 14:09:13');
INSERT INTO `sys_oper_log` VALUES (94, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"19\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"User\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"124\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"125\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"LIKE\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"126\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"127\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"密码\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"userPassword\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"128\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"手机号码\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ \"userTel\" ],\n  \"columns[4].isI', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 14:10:54');
INSERT INTO `sys_oper_log` VALUES (95, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"19\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"User\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"124\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"125\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"EQ\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"126\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"127\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"密码\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"userPassword\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].isList\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"128\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"手机号码\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ \"userTel\" ],\n  \"columns[4].isIns', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 14:11:16');
INSERT INTO `sys_oper_log` VALUES (96, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\n  \"tableId\" : [ \"19\" ],\n  \"tableName\" : [ \"t_user\" ],\n  \"tableComment\" : [ \"用户表\" ],\n  \"className\" : [ \"User\" ],\n  \"functionAuthor\" : [ \"ruoyi\" ],\n  \"remark\" : [ \"\" ],\n  \"columns[0].columnId\" : [ \"124\" ],\n  \"columns[0].sort\" : [ \"1\" ],\n  \"columns[0].columnComment\" : [ \"null\" ],\n  \"columns[0].javaType\" : [ \"Long\" ],\n  \"columns[0].javaField\" : [ \"userId\" ],\n  \"columns[0].isInsert\" : [ \"1\" ],\n  \"columns[0].queryType\" : [ \"EQ\" ],\n  \"columns[0].htmlType\" : [ \"input\" ],\n  \"columns[0].dictType\" : [ \"\" ],\n  \"columns[1].columnId\" : [ \"125\" ],\n  \"columns[1].sort\" : [ \"2\" ],\n  \"columns[1].columnComment\" : [ \"用户账号\" ],\n  \"columns[1].javaType\" : [ \"String\" ],\n  \"columns[1].javaField\" : [ \"userName\" ],\n  \"columns[1].isInsert\" : [ \"1\" ],\n  \"columns[1].isEdit\" : [ \"1\" ],\n  \"columns[1].isList\" : [ \"1\" ],\n  \"columns[1].isQuery\" : [ \"1\" ],\n  \"columns[1].queryType\" : [ \"EQ\" ],\n  \"columns[1].htmlType\" : [ \"input\" ],\n  \"columns[1].dictType\" : [ \"\" ],\n  \"columns[2].columnId\" : [ \"126\" ],\n  \"columns[2].sort\" : [ \"3\" ],\n  \"columns[2].columnComment\" : [ \"邮箱\" ],\n  \"columns[2].javaType\" : [ \"String\" ],\n  \"columns[2].javaField\" : [ \"userEmail\" ],\n  \"columns[2].isInsert\" : [ \"1\" ],\n  \"columns[2].isEdit\" : [ \"1\" ],\n  \"columns[2].isList\" : [ \"1\" ],\n  \"columns[2].isQuery\" : [ \"1\" ],\n  \"columns[2].queryType\" : [ \"EQ\" ],\n  \"columns[2].htmlType\" : [ \"input\" ],\n  \"columns[2].dictType\" : [ \"\" ],\n  \"columns[3].columnId\" : [ \"127\" ],\n  \"columns[3].sort\" : [ \"4\" ],\n  \"columns[3].columnComment\" : [ \"密码\" ],\n  \"columns[3].javaType\" : [ \"String\" ],\n  \"columns[3].javaField\" : [ \"userPassword\" ],\n  \"columns[3].isInsert\" : [ \"1\" ],\n  \"columns[3].isEdit\" : [ \"1\" ],\n  \"columns[3].queryType\" : [ \"EQ\" ],\n  \"columns[3].htmlType\" : [ \"input\" ],\n  \"columns[3].dictType\" : [ \"\" ],\n  \"columns[4].columnId\" : [ \"128\" ],\n  \"columns[4].sort\" : [ \"5\" ],\n  \"columns[4].columnComment\" : [ \"手机号码\" ],\n  \"columns[4].javaType\" : [ \"String\" ],\n  \"columns[4].javaField\" : [ \"userTel\" ],\n  \"columns[4].isInsert\" : [ \"1\" ],\n  \"columns[4].isE', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 14:11:57');
INSERT INTO `sys_oper_log` VALUES (97, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/t_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-24 14:12:01');
INSERT INTO `sys_oper_log` VALUES (98, '用户', 1, 'com.ruoyi.sirius.controller.UserController.addSave()', 'POST', 1, 'admin', '研发部门', '/sirius/user/add', '127.0.0.1', '内网IP', '{\n  \"userName\" : [ \"test\" ],\n  \"userEmail\" : [ \"szyanb@gmail.com\" ],\n  \"userPassword\" : [ \"1111\" ],\n  \"userTel\" : [ \"17777777777\" ],\n  \"userNickname\" : [ \"测试\" ],\n  \"telVerify\" : [ \"0\" ],\n  \"emailVerify\" : [ \"0\" ],\n  \"language\" : [ \"86\" ]\n}', '{\n  \"msg\" : \"操作成功\",\n  \"code\" : 0\n}', 0, NULL, '2020-08-24 14:20:34');
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-08-21 12:29:52', '普通角色');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-08-24 21:44:08', 'admin', '2018-03-16 11:33:00', 'ry', '2020-08-24 13:44:07', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '2', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');
INSERT INTO `sys_user` VALUES (100, 103, 'zhang', '张良', '00', '', '', '0', '', '2bc5c4f3d58428988ce79be619c0085f', '017c58', '0', '2', '', NULL, 'admin', '2020-06-14 08:44:17', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (101, NULL, 'zhangliang', '张良', '00', '', '', '0', '', '6caf8257ec9ee9537c033a8d05717c34', 'cb9a94', '0', '2', '', NULL, 'admin', '2020-06-14 08:49:48', '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='在线用户记录';

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 1);
INSERT INTO `sys_user_role` VALUES (101, 1);
COMMIT;

-- ----------------------------
-- Table structure for t_appversion
-- ----------------------------
DROP TABLE IF EXISTS `t_appversion`;
CREATE TABLE `t_appversion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '名称',
  `version` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '版本号',
  `serial_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '编号',
  `file_url` longtext CHARACTER SET utf8 COLLATE utf8_croatian_ci COMMENT '文件地址',
  `update_remarks` longtext CHARACTER SET utf8 COLLATE utf8_croatian_ci COMMENT '更新说明',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='APP版本管理';

-- ----------------------------
-- Records of t_appversion
-- ----------------------------
BEGIN;
INSERT INTO `t_appversion` VALUES (1, '测试app', '1.0.1', '87951', 'http://localhost:8083/index/1.app', '测试中', '2020-08-23 10:50:57');
COMMIT;

-- ----------------------------
-- Table structure for t_area
-- ----------------------------
DROP TABLE IF EXISTS `t_area`;
CREATE TABLE `t_area` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `area_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '区域名',
  `area_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '区域编号',
  `order_weight` tinyint DEFAULT NULL COMMENT '排序权重',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '语言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='区域表';
-- ----------------------------
-- Records of t_area
-- ----------------------------
BEGIN;
INSERT INTO `t_area` VALUES (1, '中国区', 'zn_1001', 1, '2020-08-23 10:51:18');
COMMIT;

-- ----------------------------
-- Table structure for t_equipment
-- ----------------------------
DROP TABLE IF EXISTS `t_equipment`;
CREATE TABLE `t_equipment` (
  `equipment_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '名称',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '型号',
  `equipment_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '设备ID',
  `admin_id` bigint DEFAULT NULL COMMENT '管理员ID',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '登陆密码',
  `version` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '当前图件版本',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='设备表';

-- ----------------------------
-- Records of t_equipment
-- ----------------------------
BEGIN;
INSERT INTO `t_equipment` VALUES (1, 'Mac pro', '', 'mc001', NULL, '123456', '1.2.1', '2020-08-23 10:52:05');
COMMIT;

-- ----------------------------
-- Table structure for t_firmware
-- ----------------------------
DROP TABLE IF EXISTS `t_firmware`;
CREATE TABLE `t_firmware` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `model_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '型号名称',
  `model_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '型号编码',
  `version` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '固件版本',
  `firmware_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '固件编号',
  `price` decimal(10,2) DEFAULT NULL COMMENT '固件问价',
  `update_remark` longtext CHARACTER SET utf8 COLLATE utf8_croatian_ci COMMENT '更新说明',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `file_url` varchar(2000) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='固件版本';
-- ----------------------------
-- Records of t_firmware
-- ----------------------------
BEGIN;
INSERT INTO `t_firmware` VALUES (1, '测试版本1', 'test_001', '1.0.1', 'test_1001', 29.13, '更新了bug', '2020-08-23 10:52:51');
COMMIT;

-- ----------------------------
-- Table structure for t_forewarning_management
-- ----------------------------
DROP TABLE IF EXISTS `t_forewarning_management`;
CREATE TABLE `t_forewarning_management` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `device_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '设备ID',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_croatian_ci COMMENT '消息内容',
  `status` tinyint DEFAULT NULL COMMENT '消息状态(1 已发  0 未发）',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `type` tinyint DEFAULT NULL COMMENT '预警类型  1.移动侦测报警  2.声音报警',
  `group_type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='预警管理';
-- ----------------------------
-- Table structure for t_issue
-- ----------------------------
DROP TABLE IF EXISTS `t_issue`;
CREATE TABLE `t_issue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `issue` longtext CHARACTER SET utf8 COLLATE utf8_croatian_ci COMMENT '常见问题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_croatian_ci COMMENT '内容',
  `url` longtext CHARACTER SET utf8 COLLATE utf8_croatian_ci COMMENT 'URL地址',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='常见问题表';

-- ----------------------------
-- Records of t_issue
-- ----------------------------
BEGIN;
INSERT INTO `t_issue` VALUES (1, '死机了怎么办？', '死机了找客服', 'http://localhost:8083/index', '2020-08-23 10:54:52');
COMMIT;

-- ----------------------------
-- Table structure for t_model_type
-- ----------------------------
DROP TABLE IF EXISTS `t_model_type`;
CREATE TABLE `t_model_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '型号名称',
  `type_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '型号编码',
  `version` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '最新固件版本',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='设备型号';

-- ----------------------------
-- Records of t_model_type
-- ----------------------------
BEGIN;
INSERT INTO `t_model_type` VALUES (1, 'sz_8795', 'zn_001', '1.2.321', '2020-08-23 10:55:29');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '用户账号',
  `user_email` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '邮箱',
  `user_password` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '密码',
  `user_tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '手机号码',
  `user_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '头像',
  `user_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '昵称',
  `tel_verify` tinyint DEFAULT NULL COMMENT '手机验证',
  `email_verify` tinyint DEFAULT NULL COMMENT '邮箱验证',
  `user_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL COMMENT ' 推送中英文模板使用 zn  en',
  `area` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '区域 如+86',
  `device_id` varchar(500) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '阿里云推送使用',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='用户表';
-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'test', 'szyanb@gmail.com', '1111', '17777777777', NULL, '测试', 0, 0, '2020-08-24 14:20:34', '86');
COMMIT;

-- ----------------------------
-- Table structure for t_user_equipment
-- ----------------------------
DROP TABLE IF EXISTS `t_user_equipment`;
CREATE TABLE `t_user_equipment` (
  `user_id` bigint DEFAULT NULL COMMENT '用户ID',
  `equipment_id` bigint DEFAULT NULL COMMENT '设备ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='设备用户关联表';

SET FOREIGN_KEY_CHECKS = 1;

DROP TABLE IF EXISTS `t_warnging`;
CREATE TABLE `t_warnging` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `device_no` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '设备编号',
  `device_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '设备名称',
  `type` tinyint DEFAULT NULL COMMENT '预警类型  1.移动侦测报警  2.声音报警',
  `user_id` bigint DEFAULT NULL COMMENT '用户ID',
  `status` tinyint DEFAULT NULL COMMENT '查看状态 0未查看 1已查看',
  `user_device_id` varchar(500) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '发送的设备ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(500) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '消息标题',
  `content` varchar(2000) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '消息内容',
  `group_type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci COMMENT='预警推送表';

alter table `t_user` auto_increment=10000;
alter table `t_equipment` auto_increment=10000;
alter table `t_equipment` auto_increment=10000;


drop table if exists t_push;
create table t_push
(
   id                   bigint  NOT NULL  AUTO_INCREMENT,
   title                varchar(100) comment '推送标题',
   content              text comment '推送内容',
   type                 tinyint comment '推送类型 0 区域 1 批定人推送',
   push_user           varchar(500) comment '推送值',
   create_time          datetime  DEFAULT CURRENT_TIMESTAMP  comment '创建时间',
   primary key (id)
);
alter table t_push comment '推送表';
