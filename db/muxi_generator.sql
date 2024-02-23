/*
 Navicat Premium Data Transfer

 Source Server         : 本地8.0版本
 Source Server Type    : MySQL
 Source Server Version : 80019 (8.0.19)
 Source Host           : localhost:3306
 Source Schema         : muxi_generator

 Target Server Type    : MySQL
 Target Server Version : 80019 (8.0.19)
 File Encoding         : 65001

 Date: 23/02/2024 13:33:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_base_class
-- ----------------------------
DROP TABLE IF EXISTS `gen_base_class`;
CREATE TABLE `gen_base_class` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `package_name` varchar(200) DEFAULT NULL COMMENT '基类包名',
  `code` varchar(200) DEFAULT NULL COMMENT '基类编码',
  `fields` varchar(500) DEFAULT NULL COMMENT '基类字段，多个用英文逗号分隔',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基类管理';

-- ----------------------------
-- Records of gen_base_class
-- ----------------------------
BEGIN;
INSERT INTO `gen_base_class` (`id`, `package_name`, `code`, `fields`, `remark`, `create_time`) VALUES (1, 'com.melon.entity', 'BaseEntity', 'id,creator,create_time,updater,update_time,version,deleted', '使用该基类，则需要表里有这些字段', '2024-02-23 11:18:07');
COMMIT;

-- ----------------------------
-- Table structure for gen_datasource
-- ----------------------------
DROP TABLE IF EXISTS `gen_datasource`;
CREATE TABLE `gen_datasource` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `db_type` varchar(200) DEFAULT NULL COMMENT '数据库类型',
  `conn_name` varchar(200) NOT NULL COMMENT '连接名',
  `conn_url` varchar(500) DEFAULT NULL COMMENT 'URL',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='数据源管理';

-- ----------------------------
-- Records of gen_datasource
-- ----------------------------
BEGIN;
INSERT INTO `gen_datasource` (`id`, `db_type`, `conn_name`, `conn_url`, `username`, `password`, `create_time`) VALUES (1, 'MySQL', '腾讯云mysql', 'jdbc:mysql://43.143.108.194:3306/achievementTransformation?useUnicode=true&characterEncoding=UTF-8&serverTimezone=Asia/Shanghai&nullCatalogMeansCurrent=true', 'root', 'Melon.zmd@123', '2024-02-23 11:43:01');
COMMIT;

-- ----------------------------
-- Table structure for gen_field_type
-- ----------------------------
DROP TABLE IF EXISTS `gen_field_type`;
CREATE TABLE `gen_field_type` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `column_type` varchar(200) DEFAULT NULL COMMENT '字段类型',
  `attr_type` varchar(200) DEFAULT NULL COMMENT '属性类型',
  `package_name` varchar(200) DEFAULT NULL COMMENT '属性包名',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `column_type` (`column_type`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字段类型管理';

-- ----------------------------
-- Records of gen_field_type
-- ----------------------------
BEGIN;
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (1, 'datetime', 'Date', 'java.util.Date', '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (2, 'date', 'Date', 'java.util.Date', '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (3, 'tinyint', 'Integer', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (4, 'smallint', 'Integer', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (5, 'mediumint', 'Integer', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (6, 'int', 'Integer', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (7, 'integer', 'Integer', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (8, 'bigint', 'Long', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (9, 'float', 'Float', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (10, 'double', 'Double', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (11, 'decimal', 'BigDecimal', 'java.math.BigDecimal', '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (12, 'bit', 'Boolean', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (13, 'char', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (14, 'varchar', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (15, 'tinytext', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (16, 'text', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (17, 'mediumtext', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (18, 'longtext', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (19, 'timestamp', 'Date', 'java.util.Date', '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (20, 'NUMBER', 'Integer', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (21, 'BINARY_INTEGER', 'Integer', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (22, 'BINARY_FLOAT', 'Float', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (23, 'BINARY_DOUBLE', 'Double', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (24, 'VARCHAR2', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (25, 'NVARCHAR', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (26, 'NVARCHAR2', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (27, 'CLOB', 'String', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (28, 'int8', 'Long', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (29, 'int4', 'Integer', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (30, 'int2', 'Integer', NULL, '2024-02-23 11:18:07');
INSERT INTO `gen_field_type` (`id`, `column_type`, `attr_type`, `package_name`, `create_time`) VALUES (31, 'numeric', 'BigDecimal', 'java.math.BigDecimal', '2024-02-23 11:18:07');
COMMIT;

-- ----------------------------
-- Table structure for gen_project_modify
-- ----------------------------
DROP TABLE IF EXISTS `gen_project_modify`;
CREATE TABLE `gen_project_modify` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `project_name` varchar(100) DEFAULT NULL COMMENT '项目名',
  `project_code` varchar(100) DEFAULT NULL COMMENT '项目标识',
  `project_package` varchar(100) DEFAULT NULL COMMENT '项目包名',
  `project_path` varchar(200) DEFAULT NULL COMMENT '项目路径',
  `modify_project_name` varchar(100) DEFAULT NULL COMMENT '变更项目名',
  `modify_project_code` varchar(100) DEFAULT NULL COMMENT '变更标识',
  `modify_project_package` varchar(100) DEFAULT NULL COMMENT '变更包名',
  `exclusions` varchar(200) DEFAULT NULL COMMENT '排除文件',
  `modify_suffix` varchar(200) DEFAULT NULL COMMENT '变更文件',
  `modify_tmp_path` varchar(100) DEFAULT NULL COMMENT '变更临时路径',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目名变更';

-- ----------------------------
-- Records of gen_project_modify
-- ----------------------------
BEGIN;
INSERT INTO `gen_project_modify` (`id`, `project_name`, `project_code`, `project_package`, `project_path`, `modify_project_name`, `modify_project_code`, `modify_project_package`, `exclusions`, `modify_suffix`, `modify_tmp_path`, `create_time`) VALUES (2, 'muxi-generator', 'muxi', 'com.melon', '/muxi', 'baba-cloud', 'baba', 'com.baba', '.git,.idea,target,logs', 'java,xml,yml,txt', NULL, '2024-02-23 11:18:07');
COMMIT;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `table_name` varchar(200) DEFAULT NULL COMMENT '表名',
  `class_name` varchar(200) DEFAULT NULL COMMENT '类名',
  `table_comment` varchar(200) DEFAULT NULL COMMENT '说明',
  `author` varchar(200) DEFAULT NULL COMMENT '作者',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `package_name` varchar(200) DEFAULT NULL COMMENT '项目包名',
  `version` varchar(200) DEFAULT NULL COMMENT '项目版本号',
  `generator_type` tinyint DEFAULT NULL COMMENT '生成方式  0：zip压缩包   1：自定义目录',
  `backend_path` varchar(500) DEFAULT NULL COMMENT '后端生成路径',
  `frontend_path` varchar(500) DEFAULT NULL COMMENT '前端生成路径',
  `module_name` varchar(200) DEFAULT NULL COMMENT '模块名',
  `function_name` varchar(200) DEFAULT NULL COMMENT '功能名',
  `form_layout` tinyint DEFAULT NULL COMMENT '表单布局  1：一列   2：两列',
  `datasource_id` bigint DEFAULT NULL COMMENT '数据源ID',
  `baseclass_id` bigint DEFAULT NULL COMMENT '基类ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` (`id`, `table_name`, `class_name`, `table_comment`, `author`, `email`, `package_name`, `version`, `generator_type`, `backend_path`, `frontend_path`, `module_name`, `function_name`, `form_layout`, `datasource_id`, `baseclass_id`, `create_time`) VALUES (2, 'tb_business', 'TbBusiness', '商机表', 'melon', 'melon_1010@163.com', 'com.melon', '1.0.0', 0, '/muxi-boot/muxi-server', '/muxi-admin', 'melon', 'tb_business', 1, 1, NULL, '2024-02-23 12:00:57');
COMMIT;

-- ----------------------------
-- Table structure for gen_table_field
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_field`;
CREATE TABLE `gen_table_field` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `table_id` bigint DEFAULT NULL COMMENT '表ID',
  `field_name` varchar(200) DEFAULT NULL COMMENT '字段名称',
  `field_type` varchar(200) DEFAULT NULL COMMENT '字段类型',
  `field_comment` varchar(200) DEFAULT NULL COMMENT '字段说明',
  `attr_name` varchar(200) DEFAULT NULL COMMENT '属性名',
  `attr_type` varchar(200) DEFAULT NULL COMMENT '属性类型',
  `package_name` varchar(200) DEFAULT NULL COMMENT '属性包名',
  `sort` int DEFAULT NULL COMMENT '排序',
  `auto_fill` varchar(20) DEFAULT NULL COMMENT '自动填充  DEFAULT、INSERT、UPDATE、INSERT_UPDATE',
  `primary_pk` tinyint DEFAULT NULL COMMENT '主键 0：否  1：是',
  `base_field` tinyint DEFAULT NULL COMMENT '基类字段 0：否  1：是',
  `form_item` tinyint DEFAULT NULL COMMENT '表单项 0：否  1：是',
  `form_required` tinyint DEFAULT NULL COMMENT '表单必填 0：否  1：是',
  `form_type` varchar(200) DEFAULT NULL COMMENT '表单类型',
  `form_dict` varchar(200) DEFAULT NULL COMMENT '表单字典类型',
  `form_validator` varchar(200) DEFAULT NULL COMMENT '表单效验',
  `grid_item` tinyint DEFAULT NULL COMMENT '列表项 0：否  1：是',
  `grid_sort` tinyint DEFAULT NULL COMMENT '列表排序 0：否  1：是',
  `query_item` tinyint DEFAULT NULL COMMENT '查询项 0：否  1：是',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式',
  `query_form_type` varchar(200) DEFAULT NULL COMMENT '查询表单类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成表字段';

-- ----------------------------
-- Records of gen_table_field
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (27, 2, 'id', 'bigint', 'ID', 'id', 'Long', NULL, 0, 'DEFAULT', 1, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (28, 2, 'description', 'varchar', '描述', 'description', 'String', NULL, 1, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (29, 2, 'creator', 'varchar', '创建人', 'creator', 'String', NULL, 2, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (30, 2, 'create_datetime', 'datetime', '创建时间', 'createDatetime', 'Date', 'java.util.Date', 3, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (31, 2, 'modifier', 'varchar', '修改人', 'modifier', 'String', NULL, 4, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (32, 2, 'update_datetime', 'datetime', '更新时间', 'updateDatetime', 'Date', 'java.util.Date', 5, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (33, 2, 'permissions_id', 'bigint', '数据归属部门', 'permissionsId', 'Long', NULL, 6, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (34, 2, 'business_name', 'varchar', '项目商机名称', 'businessName', 'String', NULL, 7, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (35, 2, 'start_time', 'date', '商机建立时间', 'startTime', 'Date', 'java.util.Date', 8, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (36, 2, 'dept_id', 'bigint', '学科方向ID', 'deptId', 'Long', NULL, 9, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (37, 2, 'user_id', 'bigint', '项目经理ID', 'userId', 'Long', NULL, 10, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (38, 2, 'remarks', 'text', '项目需求概况', 'remarks', 'String', NULL, 11, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (39, 2, 'customer_id', 'bigint', '客户ID', 'customerId', 'Long', NULL, 12, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (40, 2, 'customer_contacts_id', 'bigint', '客户联系人ID', 'customerContactsId', 'Long', NULL, 13, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (41, 2, 'is_usedFrame', 'char', '是否使用现有框架', 'isUsedframe', 'String', NULL, 14, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (42, 2, 'contract_size', 'decimal', '合同规模预计（含税万元）', 'contractSize', 'BigDecimal', 'java.math.BigDecimal', 15, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (43, 2, 'share_dept_ids', 'varchar', '商机共享部门ID串', 'shareDeptIds', 'String', NULL, 16, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
INSERT INTO `gen_table_field` (`id`, `table_id`, `field_name`, `field_type`, `field_comment`, `attr_name`, `attr_type`, `package_name`, `sort`, `auto_fill`, `primary_pk`, `base_field`, `form_item`, `form_required`, `form_type`, `form_dict`, `form_validator`, `grid_item`, `grid_sort`, `query_item`, `query_type`, `query_form_type`) VALUES (44, 2, 'star_level', 'char', '商机星级评分', 'starLevel', 'String', NULL, 17, 'DEFAULT', 0, 0, 1, 0, 'text', NULL, NULL, 1, 0, 0, '=', 'text');
COMMIT;

-- ----------------------------
-- Table structure for gen_test_student
-- ----------------------------
DROP TABLE IF EXISTS `gen_test_student`;
CREATE TABLE `gen_test_student` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `gender` tinyint DEFAULT NULL COMMENT '性别',
  `age` int DEFAULT NULL COMMENT '年龄',
  `class_name` varchar(50) DEFAULT NULL COMMENT '班级',
  `version` int DEFAULT NULL COMMENT '版本号',
  `deleted` tinyint DEFAULT NULL COMMENT '删除标识',
  `creator` bigint DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updater` bigint DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='测试2';

-- ----------------------------
-- Records of gen_test_student
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
