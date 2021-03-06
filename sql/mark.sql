/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 90614
 Source Host           : localhost:5432
 Source Catalog        : ruoyi
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90614
 File Encoding         : 65001

 Date: 10/06/2022 01:12:23
*/


-- ----------------------------
-- Sequence structure for gen_table_column_column_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "gen_table_column_column_id_seq";
CREATE SEQUENCE "gen_table_column_column_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for gen_table_table_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "gen_table_table_id_seq";
CREATE SEQUENCE "gen_table_table_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_config_config_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_config_config_id_seq";
CREATE SEQUENCE "sys_config_config_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_dept_dept_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_dept_dept_id_seq";
CREATE SEQUENCE "sys_dept_dept_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_dict_data_dict_code_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_dict_data_dict_code_seq";
CREATE SEQUENCE "sys_dict_data_dict_code_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_dict_type_dict_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_dict_type_dict_id_seq";
CREATE SEQUENCE "sys_dict_type_dict_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_job_job_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_job_job_id_seq";
CREATE SEQUENCE "sys_job_job_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_job_log_job_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_job_log_job_log_id_seq";
CREATE SEQUENCE "sys_job_log_job_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_logininfor_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_logininfor_info_id_seq";
CREATE SEQUENCE "sys_logininfor_info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_menu_menu_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_menu_menu_id_seq";
CREATE SEQUENCE "sys_menu_menu_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_notice_notice_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_notice_notice_id_seq";
CREATE SEQUENCE "sys_notice_notice_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_oper_log_oper_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_oper_log_oper_id_seq";
CREATE SEQUENCE "sys_oper_log_oper_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_post_post_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_post_post_id_seq";
CREATE SEQUENCE "sys_post_post_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_role_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_role_role_id_seq";
CREATE SEQUENCE "sys_role_role_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Sequence structure for sys_user_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "sys_user_user_id_seq";
CREATE SEQUENCE "sys_user_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 20;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "gen_table";
CREATE TABLE "gen_table" (
  "table_id" int8 NOT NULL DEFAULT nextval('gen_table_table_id_seq'::regclass),
  "table_name" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "table_comment" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sub_table_name" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "sub_table_fk_name" varchar(64) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying,
  "class_name" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "tpl_category" varchar(200) COLLATE "pg_catalog"."default" DEFAULT 'crud'::character varying,
  "package_name" varchar(100) COLLATE "pg_catalog"."default",
  "module_name" varchar(30) COLLATE "pg_catalog"."default",
  "business_name" varchar(30) COLLATE "pg_catalog"."default",
  "function_name" varchar(50) COLLATE "pg_catalog"."default",
  "function_author" varchar(50) COLLATE "pg_catalog"."default",
  "gen_type" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "gen_path" varchar(200) COLLATE "pg_catalog"."default" DEFAULT '/'::character varying,
  "options" varchar(1000) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT NULL::character varying
)
;
COMMENT ON COLUMN "gen_table"."table_id" IS '??????';
COMMENT ON COLUMN "gen_table"."table_name" IS '?????????';
COMMENT ON COLUMN "gen_table"."table_comment" IS '?????????';
COMMENT ON COLUMN "gen_table"."sub_table_name" IS '?????????????????????';
COMMENT ON COLUMN "gen_table"."sub_table_fk_name" IS '????????????????????????';
COMMENT ON COLUMN "gen_table"."class_name" IS '???????????????';
COMMENT ON COLUMN "gen_table"."tpl_category" IS '??????????????????crud???????????? tree???????????? sub??????????????????';
COMMENT ON COLUMN "gen_table"."package_name" IS '???????????????';
COMMENT ON COLUMN "gen_table"."module_name" IS '???????????????';
COMMENT ON COLUMN "gen_table"."business_name" IS '???????????????';
COMMENT ON COLUMN "gen_table"."function_name" IS '???????????????';
COMMENT ON COLUMN "gen_table"."function_author" IS '??????????????????';
COMMENT ON COLUMN "gen_table"."gen_type" IS '?????????????????????0zip????????? 1??????????????????';
COMMENT ON COLUMN "gen_table"."gen_path" IS '??????????????????????????????????????????';
COMMENT ON COLUMN "gen_table"."options" IS '??????????????????';
COMMENT ON COLUMN "gen_table"."create_by" IS '?????????';
COMMENT ON COLUMN "gen_table"."create_time" IS '????????????';
COMMENT ON COLUMN "gen_table"."update_by" IS '?????????';
COMMENT ON COLUMN "gen_table"."update_time" IS '????????????';
COMMENT ON COLUMN "gen_table"."remark" IS '??????';
COMMENT ON TABLE "gen_table" IS '?????????????????????';

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "gen_table_column";
CREATE TABLE "gen_table_column" (
  "column_id" int8 NOT NULL DEFAULT nextval('gen_table_column_column_id_seq'::regclass),
  "table_id" varchar(64) COLLATE "pg_catalog"."default",
  "column_name" varchar(200) COLLATE "pg_catalog"."default",
  "column_comment" varchar(500) COLLATE "pg_catalog"."default",
  "column_type" varchar(100) COLLATE "pg_catalog"."default",
  "java_type" varchar(500) COLLATE "pg_catalog"."default",
  "java_field" varchar(200) COLLATE "pg_catalog"."default",
  "is_pk" char(1) COLLATE "pg_catalog"."default",
  "is_increment" char(1) COLLATE "pg_catalog"."default",
  "is_required" char(1) COLLATE "pg_catalog"."default",
  "is_insert" char(1) COLLATE "pg_catalog"."default",
  "is_edit" char(1) COLLATE "pg_catalog"."default",
  "is_list" char(1) COLLATE "pg_catalog"."default",
  "is_query" char(1) COLLATE "pg_catalog"."default",
  "query_type" varchar(200) COLLATE "pg_catalog"."default" DEFAULT 'EQ'::character varying,
  "html_type" varchar(200) COLLATE "pg_catalog"."default",
  "dict_type" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sort" int4,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "gen_table_column"."column_id" IS '??????';
COMMENT ON COLUMN "gen_table_column"."table_id" IS '???????????????';
COMMENT ON COLUMN "gen_table_column"."column_name" IS '?????????';
COMMENT ON COLUMN "gen_table_column"."column_comment" IS '?????????';
COMMENT ON COLUMN "gen_table_column"."column_type" IS '?????????';
COMMENT ON COLUMN "gen_table_column"."java_type" IS 'JAVA??????';
COMMENT ON COLUMN "gen_table_column"."java_field" IS 'JAVA?????????';
COMMENT ON COLUMN "gen_table_column"."is_pk" IS '???????????????1??????';
COMMENT ON COLUMN "gen_table_column"."is_increment" IS '???????????????1??????';
COMMENT ON COLUMN "gen_table_column"."is_required" IS '???????????????1??????';
COMMENT ON COLUMN "gen_table_column"."is_insert" IS '????????????????????????1??????';
COMMENT ON COLUMN "gen_table_column"."is_edit" IS '?????????????????????1??????';
COMMENT ON COLUMN "gen_table_column"."is_list" IS '?????????????????????1??????';
COMMENT ON COLUMN "gen_table_column"."is_query" IS '?????????????????????1??????';
COMMENT ON COLUMN "gen_table_column"."query_type" IS '???????????????????????????????????????????????????????????????';
COMMENT ON COLUMN "gen_table_column"."html_type" IS '??????????????????????????????????????????????????????????????????????????????????????????';
COMMENT ON COLUMN "gen_table_column"."dict_type" IS '????????????';
COMMENT ON COLUMN "gen_table_column"."sort" IS '??????';
COMMENT ON COLUMN "gen_table_column"."create_by" IS '?????????';
COMMENT ON COLUMN "gen_table_column"."create_time" IS '????????????';
COMMENT ON COLUMN "gen_table_column"."update_by" IS '?????????';
COMMENT ON COLUMN "gen_table_column"."update_time" IS '????????????';
COMMENT ON TABLE "gen_table_column" IS '???????????????????????????';

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_blob_triggers";
CREATE TABLE "qrtz_blob_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "blob_data" bytea
)
;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_calendars";
CREATE TABLE "qrtz_calendars" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar" bytea NOT NULL
)
;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_cron_triggers";
CREATE TABLE "qrtz_cron_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "time_zone_id" varchar(80) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_fired_triggers";
CREATE TABLE "qrtz_fired_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "entry_id" varchar(95) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "fired_time" int8 NOT NULL,
  "sched_time" int8 NOT NULL,
  "priority" int4 NOT NULL,
  "state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default",
  "job_group" varchar(200) COLLATE "pg_catalog"."default",
  "is_nonconcurrent" bool,
  "requests_recovery" bool
)
;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_job_details";
CREATE TABLE "qrtz_job_details" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "job_class_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "is_durable" bool NOT NULL,
  "is_nonconcurrent" bool NOT NULL,
  "is_update_data" bool NOT NULL,
  "requests_recovery" bool NOT NULL,
  "job_data" bytea
)
;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_locks";
CREATE TABLE "qrtz_locks" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_paused_trigger_grps";
CREATE TABLE "qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_scheduler_state";
CREATE TABLE "qrtz_scheduler_state" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "last_checkin_time" int8 NOT NULL,
  "checkin_interval" int8 NOT NULL
)
;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_simple_triggers";
CREATE TABLE "qrtz_simple_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "repeat_count" int8 NOT NULL,
  "repeat_interval" int8 NOT NULL,
  "times_triggered" int8 NOT NULL
)
;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_simprop_triggers";
CREATE TABLE "qrtz_simprop_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "str_prop_1" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_2" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_3" varchar(512) COLLATE "pg_catalog"."default",
  "int_prop_1" int4,
  "int_prop_2" int4,
  "long_prop_1" int8,
  "long_prop_2" int8,
  "dec_prop_1" numeric(13,4),
  "dec_prop_2" numeric(13,4),
  "bool_prop_1" bool,
  "bool_prop_2" bool
)
;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_triggers";
CREATE TABLE "qrtz_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "next_fire_time" int8,
  "prev_fire_time" int8,
  "priority" int4,
  "trigger_state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_type" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" int8 NOT NULL,
  "end_time" int8,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default",
  "misfire_instr" int2,
  "job_data" bytea
)
;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "sys_config";
CREATE TABLE "sys_config" (
  "config_id" int8 NOT NULL DEFAULT nextval('sys_config_config_id_seq'::regclass),
  "config_name" varchar(100) COLLATE "pg_catalog"."default" DEFAULT '0'::character varying,
  "config_key" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "config_value" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "config_type" char(1) COLLATE "pg_catalog"."default" DEFAULT ''::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "sys_config"."config_id" IS '????????????';
COMMENT ON COLUMN "sys_config"."config_name" IS '????????????';
COMMENT ON COLUMN "sys_config"."config_key" IS '????????????';
COMMENT ON COLUMN "sys_config"."config_value" IS '????????????';
COMMENT ON COLUMN "sys_config"."config_type" IS '????????????';
COMMENT ON COLUMN "sys_config"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_config"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_config"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_config"."update_time" IS '????????????';
COMMENT ON COLUMN "sys_config"."remark" IS '??????';
COMMENT ON TABLE "sys_config" IS '???????????????';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO "sys_config" VALUES (1, '????????????-????????????????????????', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-06-09 22:59:50.295372', '', NULL, '?????? skin-blue????????? skin-green????????? skin-purple????????? skin-red????????? skin-yellow');
INSERT INTO "sys_config" VALUES (2, '????????????-??????????????????', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-06-09 22:59:50.298069', '', NULL, '??????????????? 123456');
INSERT INTO "sys_config" VALUES (3, '????????????-???????????????', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-06-09 22:59:50.298849', '', NULL, '????????????theme-dark???????????????theme-light???????????????theme-blue');
INSERT INTO "sys_config" VALUES (5, '????????????-??????????????????', 'sys.account.chrtype', '0', 'Y', 'admin', '2022-06-09 22:59:50.300497', '', NULL, '???????????????????????????0?????????????????????????????????????????????1????????????????????????0-9????????????2??????????????????????????????a-z???A-Z????????????3??????????????????????????????????????????????????????,4??????????????????????????????????????????????????????????????????~!@#$%^&*()-=_+???');
INSERT INTO "sys_config" VALUES (6, '????????????-????????????????????????', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2022-06-09 22:59:50.301053', '', NULL, '0?????????????????????????????????????????????????????????1????????????????????????????????????????????????????????????????????????????????????????????????');
INSERT INTO "sys_config" VALUES (7, '????????????-????????????????????????', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2022-06-09 22:59:50.301558', '', NULL, '?????????????????????????????????????????????????????????0????????????????????????????????????0??????365????????????????????????????????????????????????????????????????????????????????????????????????????????????');
INSERT INTO "sys_config" VALUES (8, '????????????-????????????????????????', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2022-06-09 22:59:50.302109', '', NULL, '???????????????????????????default????????????????????????topnav????????????????????????');
INSERT INTO "sys_config" VALUES (9, '????????????-??????????????????', 'sys.index.footer', 'true', 'Y', 'admin', '2022-06-09 22:59:50.302916', '', NULL, '?????????????????????????????????true?????????false?????????');
INSERT INTO "sys_config" VALUES (10, '????????????-??????????????????', 'sys.index.tagsView', 'true', 'Y', 'admin', '2022-06-09 22:59:50.303413', '', NULL, '????????????????????????????????????true?????????false?????????');
INSERT INTO "sys_config" VALUES (4, '????????????-??????????????????????????????', 'sys.account.registerUser', 'true', 'Y', 'admin', '2022-06-09 22:59:50.299642', 'admin', '2022-06-10 00:23:11.947352', '?????????????????????????????????true?????????false?????????');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "sys_dept";
CREATE TABLE "sys_dept" (
  "dept_id" int8 NOT NULL DEFAULT nextval('sys_dept_dept_id_seq'::regclass),
  "parent_id" int8 DEFAULT 0,
  "ancestors" varchar(50) COLLATE "pg_catalog"."default",
  "dept_name" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "order_num" int4 DEFAULT 0,
  "leader" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "phone" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "email" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "del_flag" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6)
)
;
COMMENT ON COLUMN "sys_dept"."dept_id" IS '??????id';
COMMENT ON COLUMN "sys_dept"."parent_id" IS '?????????id';
COMMENT ON COLUMN "sys_dept"."ancestors" IS '????????????';
COMMENT ON COLUMN "sys_dept"."dept_name" IS '????????????';
COMMENT ON COLUMN "sys_dept"."order_num" IS '????????????';
COMMENT ON COLUMN "sys_dept"."leader" IS '?????????';
COMMENT ON COLUMN "sys_dept"."phone" IS '????????????';
COMMENT ON COLUMN "sys_dept"."email" IS '??????';
COMMENT ON COLUMN "sys_dept"."status" IS '????????????:0??????,1??????';
COMMENT ON COLUMN "sys_dept"."del_flag" IS '???????????????0???????????? 2???????????????';
COMMENT ON COLUMN "sys_dept"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_dept"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_dept"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_dept"."update_time" IS '????????????';
COMMENT ON TABLE "sys_dept" IS '?????????';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO "sys_dept" VALUES (100, 0, '0', '????????????', 0, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.888272', '', NULL);
INSERT INTO "sys_dept" VALUES (101, 100, '0,100', '???????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.891802', '', NULL);
INSERT INTO "sys_dept" VALUES (102, 100, '0,100', '???????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.89257', '', NULL);
INSERT INTO "sys_dept" VALUES (103, 101, '0,100,101', '????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.893387', '', NULL);
INSERT INTO "sys_dept" VALUES (104, 101, '0,100,101', '????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.894126', '', NULL);
INSERT INTO "sys_dept" VALUES (105, 101, '0,100,101', '????????????', 3, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.894834', '', NULL);
INSERT INTO "sys_dept" VALUES (106, 101, '0,100,101', '????????????', 4, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.895967', '', NULL);
INSERT INTO "sys_dept" VALUES (107, 101, '0,100,101', '????????????', 5, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.896566', '', NULL);
INSERT INTO "sys_dept" VALUES (108, 102, '0,100,102', '????????????', 1, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.897254', '', NULL);
INSERT INTO "sys_dept" VALUES (109, 102, '0,100,102', '????????????', 2, '??????', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-06-09 22:59:49.898265', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "sys_dict_data";
CREATE TABLE "sys_dict_data" (
  "dict_code" int8 NOT NULL DEFAULT nextval('sys_dict_data_dict_code_seq'::regclass),
  "dict_sort" int4 DEFAULT 0,
  "dict_label" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dict_value" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dict_type" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "css_class" varchar(100) COLLATE "pg_catalog"."default",
  "list_class" varchar(100) COLLATE "pg_catalog"."default",
  "is_default" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "sys_dict_data"."dict_code" IS '????????????';
COMMENT ON COLUMN "sys_dict_data"."dict_sort" IS '????????????';
COMMENT ON COLUMN "sys_dict_data"."dict_label" IS '????????????';
COMMENT ON COLUMN "sys_dict_data"."dict_value" IS '????????????';
COMMENT ON COLUMN "sys_dict_data"."dict_type" IS '????????????';
COMMENT ON COLUMN "sys_dict_data"."css_class" IS '????????????????????????????????????';
COMMENT ON COLUMN "sys_dict_data"."list_class" IS '??????????????????';
COMMENT ON COLUMN "sys_dict_data"."is_default" IS '???????????????Y??? N??????';
COMMENT ON COLUMN "sys_dict_data"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "sys_dict_data"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_dict_data"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_dict_data"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_dict_data"."update_time" IS '????????????';
COMMENT ON COLUMN "sys_dict_data"."remark" IS '??????';
COMMENT ON TABLE "sys_dict_data" IS '???????????????';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO "sys_dict_data" VALUES (1, 1, '???', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-06-09 22:59:50.256374', '', NULL, '?????????');
INSERT INTO "sys_dict_data" VALUES (2, 2, '???', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-06-09 22:59:50.258612', '', NULL, '?????????');
INSERT INTO "sys_dict_data" VALUES (3, 3, '??????', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-06-09 22:59:50.25909', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (4, 1, '??????', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-06-09 22:59:50.259597', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (5, 2, '??????', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-06-09 22:59:50.260865', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (6, 1, '??????', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-06-09 22:59:50.261702', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (7, 2, '??????', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-06-09 22:59:50.262327', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (8, 1, '??????', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-06-09 22:59:50.262922', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (9, 2, '??????', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-06-09 22:59:50.26388', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (10, 1, '??????', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-06-09 22:59:50.264451', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (11, 2, '??????', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-06-09 22:59:50.265023', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (12, 1, '???', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-06-09 22:59:50.265557', '', NULL, '???????????????');
INSERT INTO "sys_dict_data" VALUES (13, 2, '???', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-06-09 22:59:50.266158', '', NULL, '???????????????');
INSERT INTO "sys_dict_data" VALUES (14, 1, '??????', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-06-09 22:59:50.267009', '', NULL, '??????');
INSERT INTO "sys_dict_data" VALUES (15, 2, '??????', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-06-09 22:59:50.2675', '', NULL, '??????');
INSERT INTO "sys_dict_data" VALUES (16, 1, '??????', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-06-09 22:59:50.267903', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (17, 2, '??????', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-06-09 22:59:50.268315', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (18, 99, '??????', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-06-09 22:59:50.268802', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (19, 1, '??????', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-06-09 22:59:50.269264', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (20, 2, '??????', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-06-09 22:59:50.269659', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (21, 3, '??????', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-06-09 22:59:50.270099', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (22, 4, '??????', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-06-09 22:59:50.270504', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (23, 5, '??????', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-06-09 22:59:50.270898', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (24, 6, '??????', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-06-09 22:59:50.271266', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (25, 7, '??????', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-06-09 22:59:50.271649', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (26, 8, '????????????', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-06-09 22:59:50.272044', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (27, 9, '????????????', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-06-09 22:59:50.272487', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (28, 1, '??????', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-06-09 22:59:50.273036', '', NULL, '????????????');
INSERT INTO "sys_dict_data" VALUES (29, 2, '??????', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-06-09 22:59:50.273747', '', NULL, '????????????');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "sys_dict_type";
CREATE TABLE "sys_dict_type" (
  "dict_id" int8 NOT NULL DEFAULT nextval('sys_dict_type_dict_id_seq'::regclass),
  "dict_name" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dict_type" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "sys_dict_type"."dict_id" IS '????????????';
COMMENT ON COLUMN "sys_dict_type"."dict_name" IS '????????????';
COMMENT ON COLUMN "sys_dict_type"."dict_type" IS '????????????';
COMMENT ON COLUMN "sys_dict_type"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "sys_dict_type"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_dict_type"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_dict_type"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_dict_type"."update_time" IS '????????????';
COMMENT ON COLUMN "sys_dict_type"."remark" IS '??????';
COMMENT ON TABLE "sys_dict_type" IS '???????????????';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO "sys_dict_type" VALUES (1, '????????????', 'sys_user_sex', '0', 'admin', '2022-06-09 22:59:50.227058', '', NULL, '??????????????????');
INSERT INTO "sys_dict_type" VALUES (2, '????????????', 'sys_show_hide', '0', 'admin', '2022-06-09 22:59:50.230264', '', NULL, '??????????????????');
INSERT INTO "sys_dict_type" VALUES (3, '????????????', 'sys_normal_disable', '0', 'admin', '2022-06-09 22:59:50.23104', '', NULL, '??????????????????');
INSERT INTO "sys_dict_type" VALUES (4, '????????????', 'sys_job_status', '0', 'admin', '2022-06-09 22:59:50.231464', '', NULL, '??????????????????');
INSERT INTO "sys_dict_type" VALUES (5, '????????????', 'sys_job_group', '0', 'admin', '2022-06-09 22:59:50.231858', '', NULL, '??????????????????');
INSERT INTO "sys_dict_type" VALUES (6, '????????????', 'sys_yes_no', '0', 'admin', '2022-06-09 22:59:50.232336', '', NULL, '??????????????????');
INSERT INTO "sys_dict_type" VALUES (7, '????????????', 'sys_notice_type', '0', 'admin', '2022-06-09 22:59:50.233046', '', NULL, '??????????????????');
INSERT INTO "sys_dict_type" VALUES (8, '????????????', 'sys_notice_status', '0', 'admin', '2022-06-09 22:59:50.233682', '', NULL, '??????????????????');
INSERT INTO "sys_dict_type" VALUES (9, '????????????', 'sys_oper_type', '0', 'admin', '2022-06-09 22:59:50.234142', '', NULL, '??????????????????');
INSERT INTO "sys_dict_type" VALUES (10, '????????????', 'sys_common_status', '0', 'admin', '2022-06-09 22:59:50.234861', '', NULL, '??????????????????');
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "sys_job";
CREATE TABLE "sys_job" (
  "job_id" int8 NOT NULL DEFAULT nextval('sys_job_job_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "misfire_policy" varchar(20) COLLATE "pg_catalog"."default" DEFAULT '3'::character varying,
  "concurrent" char(1) COLLATE "pg_catalog"."default" DEFAULT '1'::bpchar,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "sys_job"."job_id" IS '??????ID';
COMMENT ON COLUMN "sys_job"."job_name" IS '????????????';
COMMENT ON COLUMN "sys_job"."job_group" IS '????????????';
COMMENT ON COLUMN "sys_job"."invoke_target" IS '?????????????????????';
COMMENT ON COLUMN "sys_job"."cron_expression" IS 'cron???????????????';
COMMENT ON COLUMN "sys_job"."misfire_policy" IS '???????????????????????????1???????????? 2???????????? 3???????????????';
COMMENT ON COLUMN "sys_job"."concurrent" IS '?????????????????????0?????? 1?????????';
COMMENT ON COLUMN "sys_job"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "sys_job"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_job"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_job"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_job"."update_time" IS '????????????';
COMMENT ON COLUMN "sys_job"."remark" IS '????????????';
COMMENT ON TABLE "sys_job" IS '?????????????????????';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO "sys_job" VALUES (1, '????????????????????????', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-06-09 22:59:50.369194', '', NULL, '');
INSERT INTO "sys_job" VALUES (2, '????????????????????????', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-06-09 22:59:50.373259', '', NULL, '');
INSERT INTO "sys_job" VALUES (3, '????????????????????????', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-06-09 22:59:50.374816', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS "sys_job_log";
CREATE TABLE "sys_job_log" (
  "job_log_id" int8 NOT NULL DEFAULT nextval('sys_job_log_job_log_id_seq'::regclass),
  "job_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "invoke_target" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "job_message" varchar(500) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "exception_info" varchar(2000) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6)
)
;
COMMENT ON COLUMN "sys_job_log"."job_log_id" IS '????????????ID';
COMMENT ON COLUMN "sys_job_log"."job_name" IS '????????????';
COMMENT ON COLUMN "sys_job_log"."job_group" IS '????????????';
COMMENT ON COLUMN "sys_job_log"."invoke_target" IS '?????????????????????';
COMMENT ON COLUMN "sys_job_log"."job_message" IS '????????????';
COMMENT ON COLUMN "sys_job_log"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "sys_job_log"."exception_info" IS '????????????';
COMMENT ON COLUMN "sys_job_log"."create_time" IS '????????????';
COMMENT ON TABLE "sys_job_log" IS '???????????????????????????';

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS "sys_logininfor";
CREATE TABLE "sys_logininfor" (
  "info_id" int8 NOT NULL DEFAULT nextval('sys_logininfor_info_id_seq'::regclass),
  "login_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "ipaddr" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_location" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "browser" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "os" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "msg" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_time" timestamp(6)
)
;
COMMENT ON COLUMN "sys_logininfor"."info_id" IS '??????ID';
COMMENT ON COLUMN "sys_logininfor"."login_name" IS '????????????';
COMMENT ON COLUMN "sys_logininfor"."ipaddr" IS '??????IP??????';
COMMENT ON COLUMN "sys_logininfor"."login_location" IS '????????????';
COMMENT ON COLUMN "sys_logininfor"."browser" IS '???????????????';
COMMENT ON COLUMN "sys_logininfor"."os" IS '????????????';
COMMENT ON COLUMN "sys_logininfor"."status" IS '???????????? 0?????? 1??????';
COMMENT ON COLUMN "sys_logininfor"."msg" IS '????????????';
COMMENT ON COLUMN "sys_logininfor"."login_time" IS '????????????';
COMMENT ON TABLE "sys_logininfor" IS '??????????????????';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;
INSERT INTO "sys_logininfor" VALUES (100, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-09 23:23:43.147357');
INSERT INTO "sys_logininfor" VALUES (120, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-09 23:30:59.8112');
INSERT INTO "sys_logininfor" VALUES (140, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-10 00:17:18.458315');
INSERT INTO "sys_logininfor" VALUES (141, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-10 00:18:59.267336');
INSERT INTO "sys_logininfor" VALUES (160, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-10 00:22:46.60938');
INSERT INTO "sys_logininfor" VALUES (180, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-10 00:23:21.420653');
INSERT INTO "sys_logininfor" VALUES (181, '22', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-10 00:24:01.160315');
INSERT INTO "sys_logininfor" VALUES (182, '22', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '1', '???????????????', '2022-06-10 00:24:20.548871');
INSERT INTO "sys_logininfor" VALUES (183, '22', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-10 00:24:31.003141');
INSERT INTO "sys_logininfor" VALUES (184, '22', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-10 00:31:36.992427');
INSERT INTO "sys_logininfor" VALUES (185, 'admin', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', '0', '????????????', '2022-06-10 00:31:46.805387');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "sys_menu";
CREATE TABLE "sys_menu" (
  "menu_id" int8 NOT NULL DEFAULT nextval('sys_menu_menu_id_seq'::regclass),
  "menu_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int8 DEFAULT 0,
  "order_num" int4,
  "url" varchar(200) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "target" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "menu_type" char(1) COLLATE "pg_catalog"."default" DEFAULT ''::bpchar,
  "visible" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "is_refresh" char(1) COLLATE "pg_catalog"."default" DEFAULT '1'::bpchar,
  "perms" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "icon" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "sys_menu"."menu_id" IS '??????ID';
COMMENT ON COLUMN "sys_menu"."menu_name" IS '????????????';
COMMENT ON COLUMN "sys_menu"."parent_id" IS '?????????ID';
COMMENT ON COLUMN "sys_menu"."order_num" IS '????????????';
COMMENT ON COLUMN "sys_menu"."url" IS '????????????';
COMMENT ON COLUMN "sys_menu"."target" IS '???????????????menuItem?????? menuBlank????????????';
COMMENT ON COLUMN "sys_menu"."menu_type" IS '????????????:M??????,C??????,F??????';
COMMENT ON COLUMN "sys_menu"."visible" IS '????????????:0??????,1??????';
COMMENT ON COLUMN "sys_menu"."is_refresh" IS '???????????????0?????? 1????????????';
COMMENT ON COLUMN "sys_menu"."perms" IS '????????????';
COMMENT ON COLUMN "sys_menu"."icon" IS '????????????';
COMMENT ON COLUMN "sys_menu"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_menu"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_menu"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_menu"."update_time" IS '????????????';
COMMENT ON COLUMN "sys_menu"."remark" IS '??????';
COMMENT ON TABLE "sys_menu" IS '???????????????';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO "sys_menu" VALUES (1, '????????????', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2022-06-09 22:59:50.014381', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (2, '????????????', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2022-06-09 22:59:50.017705', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (3, '????????????', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2022-06-09 22:59:50.018373', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (100, '????????????', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2022-06-09 22:59:50.019559', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (101, '????????????', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2022-06-09 22:59:50.020155', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (102, '????????????', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2022-06-09 22:59:50.020933', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (103, '????????????', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2022-06-09 22:59:50.021775', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (104, '????????????', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2022-06-09 22:59:50.022702', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (105, '????????????', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2022-06-09 22:59:50.023742', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (106, '????????????', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2022-06-09 22:59:50.024302', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (108, '????????????', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2022-06-09 22:59:50.02536', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (109, '????????????', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2022-06-09 22:59:50.026747', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (110, '????????????', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2022-06-09 22:59:50.028262', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (112, '????????????', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2022-06-09 22:59:50.029638', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (113, '????????????', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2022-06-09 22:59:50.030207', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (114, '????????????', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2022-06-09 22:59:50.030655', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (115, '????????????', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2022-06-09 22:59:50.031112', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (500, '????????????', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2022-06-09 22:59:50.032183', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (501, '????????????', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2022-06-09 22:59:50.033399', '', NULL, '??????????????????');
INSERT INTO "sys_menu" VALUES (1000, '????????????', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2022-06-09 22:59:50.034466', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1001, '????????????', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2022-06-09 22:59:50.035558', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1002, '????????????', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2022-06-09 22:59:50.036422', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1003, '????????????', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2022-06-09 22:59:50.037101', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1004, '????????????', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2022-06-09 22:59:50.037561', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1005, '????????????', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2022-06-09 22:59:50.038151', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1006, '????????????', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2022-06-09 22:59:50.038725', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1007, '????????????', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2022-06-09 22:59:50.039188', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1008, '????????????', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2022-06-09 22:59:50.039649', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1009, '????????????', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2022-06-09 22:59:50.04013', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1010, '????????????', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2022-06-09 22:59:50.040596', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1011, '????????????', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2022-06-09 22:59:50.041485', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1012, '????????????', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2022-06-09 22:59:50.043755', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1013, '????????????', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2022-06-09 22:59:50.045091', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1014, '????????????', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2022-06-09 22:59:50.045674', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1015, '????????????', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2022-06-09 22:59:50.046144', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1016, '????????????', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2022-06-09 22:59:50.046548', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1017, '????????????', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2022-06-09 22:59:50.04694', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1018, '????????????', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2022-06-09 22:59:50.047326', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1019, '????????????', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2022-06-09 22:59:50.047724', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1020, '????????????', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2022-06-09 22:59:50.048142', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1021, '????????????', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2022-06-09 22:59:50.048924', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1022, '????????????', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2022-06-09 22:59:50.049588', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1023, '????????????', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2022-06-09 22:59:50.050334', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1024, '????????????', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2022-06-09 22:59:50.051261', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1025, '????????????', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2022-06-09 22:59:50.052557', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1026, '????????????', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2022-06-09 22:59:50.053206', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1027, '????????????', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2022-06-09 22:59:50.053908', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1028, '????????????', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2022-06-09 22:59:50.054511', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1029, '????????????', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2022-06-09 22:59:50.055119', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1030, '????????????', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2022-06-09 22:59:50.0557', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1031, '????????????', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2022-06-09 22:59:50.056223', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1032, '????????????', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2022-06-09 22:59:50.0568', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1033, '????????????', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2022-06-09 22:59:50.058224', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1034, '????????????', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2022-06-09 22:59:50.059368', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1039, '????????????', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2022-06-09 22:59:50.063962', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1040, '????????????', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2022-06-09 22:59:50.064484', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1041, '????????????', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2022-06-09 22:59:50.064967', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1042, '????????????', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2022-06-09 22:59:50.065426', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1043, '????????????', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2022-06-09 22:59:50.066458', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1044, '????????????', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2022-06-09 22:59:50.06742', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1045, '????????????', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2022-06-09 22:59:50.068133', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1046, '????????????', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2022-06-09 22:59:50.068895', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1047, '????????????', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2022-06-09 22:59:50.069779', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1048, '????????????', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2022-06-09 22:59:50.070598', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1049, '????????????', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2022-06-09 22:59:50.071254', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1050, '????????????', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2022-06-09 22:59:50.071822', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1051, '????????????', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2022-06-09 22:59:50.073419', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1052, '????????????', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2022-06-09 22:59:50.074405', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1053, '????????????', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2022-06-09 22:59:50.075038', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1054, '????????????', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2022-06-09 22:59:50.07559', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1055, '????????????', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2022-06-09 22:59:50.076014', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1056, '????????????', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2022-06-09 22:59:50.076384', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1057, '????????????', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2022-06-09 22:59:50.076791', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1058, '????????????', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2022-06-09 22:59:50.077171', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1059, '????????????', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2022-06-09 22:59:50.077541', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1060, '????????????', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2022-06-09 22:59:50.077926', '', NULL, '');
INSERT INTO "sys_menu" VALUES (1061, '????????????', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2022-06-09 22:59:50.07829', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "sys_notice";
CREATE TABLE "sys_notice" (
  "notice_id" int8 NOT NULL DEFAULT nextval('sys_notice_notice_id_seq'::regclass),
  "notice_title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_type" char(2) COLLATE "pg_catalog"."default" NOT NULL,
  "notice_content" varchar(2000) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "sys_notice"."notice_id" IS '??????ID';
COMMENT ON COLUMN "sys_notice"."notice_title" IS '????????????';
COMMENT ON COLUMN "sys_notice"."notice_type" IS '???????????????1?????? 2?????????';
COMMENT ON COLUMN "sys_notice"."notice_content" IS '????????????';
COMMENT ON COLUMN "sys_notice"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "sys_notice"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_notice"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_notice"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_notice"."update_time" IS '????????????';
COMMENT ON COLUMN "sys_notice"."remark" IS '??????';
COMMENT ON TABLE "sys_notice" IS '???????????????';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO "sys_notice" VALUES (1, '???????????????2018-07-01 ????????????????????????', '2 ', '???????????????', '0', 'admin', '2022-06-09 22:59:50.412888', '', NULL, '?????????');
INSERT INTO "sys_notice" VALUES (2, '???????????????2018-07-01 ????????????????????????', '1 ', '????????????', '0', 'admin', '2022-06-09 22:59:50.41508', '', NULL, '?????????');
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "sys_oper_log";
CREATE TABLE "sys_oper_log" (
  "oper_id" int8 NOT NULL DEFAULT nextval('sys_oper_log_oper_id_seq'::regclass),
  "title" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "business_type" int4 DEFAULT 0,
  "method" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "request_method" varchar(10) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "operator_type" int4 DEFAULT 0,
  "oper_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dept_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_url" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_ip" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_location" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_param" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "json_result" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "error_msg" varchar(2000) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "oper_time" timestamp(6)
)
;
COMMENT ON COLUMN "sys_oper_log"."oper_id" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."title" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."business_type" IS '???????????????0?????? 1?????? 2?????? 3?????????';
COMMENT ON COLUMN "sys_oper_log"."method" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."request_method" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."operator_type" IS '???????????????0?????? 1???????????? 2??????????????????';
COMMENT ON COLUMN "sys_oper_log"."oper_name" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."dept_name" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."oper_url" IS '??????URL';
COMMENT ON COLUMN "sys_oper_log"."oper_ip" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."oper_location" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."oper_param" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."json_result" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "sys_oper_log"."error_msg" IS '????????????';
COMMENT ON COLUMN "sys_oper_log"."oper_time" IS '????????????';
COMMENT ON TABLE "sys_oper_log" IS '??????????????????';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO "sys_oper_log" VALUES (100, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '????????????', '/system/role/edit', '127.0.0.1', '??????IP', '{"roleId":["2"],"roleName":["????????????"],"roleKey":["common"],"roleSort":["2"],"status":["0"],"remark":["????????????"],"menuIds":[""]}', NULL, '1', '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ??????: ?????? "role_sort" ???????????? integer, ???????????????????????? character varying
  ??????????????????????????????????????????
  ?????????76
### The error may exist in file [E:\gitee\Ruoyi-PostgreSQL\ruoyi-system\target\classes\mapper\system\SysRoleMapper.xml]
### The error may involve com.ruoyi.system.mapper.SysRoleMapper.updateRole-Inline
### The error occurred while setting parameters
### SQL: update sys_role     SET role_name = ?,     role_key = ?,     role_sort = ?,          status = ?,     remark = ?,     update_by = ?,     update_time = now()     where role_id = ?
### Cause: org.postgresql.util.PSQLException: ??????: ?????? "role_sort" ???????????? integer, ???????????????????????? character varying
  ??????????????????????????????????????????
  ?????????76
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ??????: ?????? "role_sort" ???????????? integer, ???????????????????????? character varying
  ??????????????????????????????????????????
  ?????????76', '2022-06-09 23:24:25.381692');
INSERT INTO "sys_oper_log" VALUES (101, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '????????????', '/system/role/edit', '127.0.0.1', '??????IP', '{"roleId":["2"],"roleName":["????????????"],"roleKey":["common"],"roleSort":["2"],"status":["0"],"remark":["????????????"],"menuIds":[""]}', NULL, '1', '
### Error updating database.  Cause: org.postgresql.util.PSQLException: ??????: ?????? "role_sort" ???????????? integer, ???????????????????????? character varying
  ??????????????????????????????????????????
  ?????????76
### The error may exist in file [E:\gitee\Ruoyi-PostgreSQL\ruoyi-system\target\classes\mapper\system\SysRoleMapper.xml]
### The error may involve com.ruoyi.system.mapper.SysRoleMapper.updateRole-Inline
### The error occurred while setting parameters
### SQL: update sys_role     SET role_name = ?,     role_key = ?,     role_sort = ?,          status = ?,     remark = ?,     update_by = ?,     update_time = now()     where role_id = ?
### Cause: org.postgresql.util.PSQLException: ??????: ?????? "role_sort" ???????????? integer, ???????????????????????? character varying
  ??????????????????????????????????????????
  ?????????76
; bad SQL grammar []; nested exception is org.postgresql.util.PSQLException: ??????: ?????? "role_sort" ???????????? integer, ???????????????????????? character varying
  ??????????????????????????????????????????
  ?????????76', '2022-06-09 23:24:29.27394');
INSERT INTO "sys_oper_log" VALUES (120, '????????????', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '????????????', '/system/role/edit', '127.0.0.1', '??????IP', '{"roleId":["2"],"roleName":["????????????"],"roleKey":["common"],"roleSort":["2"],"status":["0"],"remark":["????????????"],"menuIds":[""]}', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-09 23:31:22.28659');
INSERT INTO "sys_oper_log" VALUES (140, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '????????????', '/system/menu/remove/4', '127.0.0.1', '??????IP', '4', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-09 23:31:32.17296');
INSERT INTO "sys_oper_log" VALUES (141, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '????????????', '/system/menu/remove/116', '127.0.0.1', '??????IP', '116', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-09 23:31:39.233547');
INSERT INTO "sys_oper_log" VALUES (142, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '????????????', '/system/menu/remove/107', '127.0.0.1', '??????IP', '107', '{"msg":"???????????????,???????????????","code":301}', '0', NULL, '2022-06-09 23:31:45.548466');
INSERT INTO "sys_oper_log" VALUES (143, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '????????????', '/system/menu/remove/1038', '127.0.0.1', '??????IP', '1038', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-09 23:31:49.574995');
INSERT INTO "sys_oper_log" VALUES (144, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '????????????', '/system/menu/remove/1035', '127.0.0.1', '??????IP', '1035', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-09 23:31:55.911061');
INSERT INTO "sys_oper_log" VALUES (145, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '????????????', '/system/menu/remove/1036', '127.0.0.1', '??????IP', '1036', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-09 23:32:00.968718');
INSERT INTO "sys_oper_log" VALUES (160, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '????????????', '/system/menu/remove/1037', '127.0.0.1', '??????IP', '1037', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-09 23:32:05.285397');
INSERT INTO "sys_oper_log" VALUES (121, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '????????????', '/system/menu/remove/107', '127.0.0.1', '??????IP', '107', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-09 23:32:09.811817');
INSERT INTO "sys_oper_log" VALUES (161, '????????????', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '????????????', '/system/menu/remove/111', '127.0.0.1', '??????IP', '111', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-09 23:32:39.833303');
INSERT INTO "sys_oper_log" VALUES (180, '????????????', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '????????????', '/system/config/edit', '127.0.0.1', '??????IP', '{"configId":["4"],"configName":["????????????-??????????????????????????????"],"configKey":["sys.account.registerUser"],"configValue":["true"],"configType":["Y"],"remark":["?????????????????????????????????true?????????false?????????"]}', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-10 00:23:12.120312');
INSERT INTO "sys_oper_log" VALUES (200, '????????????', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, '22', NULL, '/system/user/profile/update', '127.0.0.1', '??????IP', '{"id":[""],"userName":["22"],"phonenumber":["15888888887"],"email":["1111.@163.com"],"sex":["0"]}', '{"msg":"????????????","code":0}', '0', NULL, '2022-06-10 00:31:03.098534');
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS "sys_post";
CREATE TABLE "sys_post" (
  "post_id" int8 NOT NULL DEFAULT nextval('sys_post_post_id_seq'::regclass),
  "post_code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "post_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "post_sort" int4 NOT NULL,
  "status" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "sys_post"."post_id" IS '??????ID';
COMMENT ON COLUMN "sys_post"."post_code" IS '????????????';
COMMENT ON COLUMN "sys_post"."post_name" IS '????????????';
COMMENT ON COLUMN "sys_post"."post_sort" IS '????????????';
COMMENT ON COLUMN "sys_post"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "sys_post"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_post"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_post"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_post"."update_time" IS '????????????';
COMMENT ON COLUMN "sys_post"."remark" IS '??????';
COMMENT ON TABLE "sys_post" IS '???????????????';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO "sys_post" VALUES (1, 'ceo', '?????????', 1, '0', 'admin', '2022-06-09 22:59:49.954781', '', '2022-06-09 22:59:49.954781', '');
INSERT INTO "sys_post" VALUES (2, 'se', '????????????', 2, '0', 'admin', '2022-06-09 22:59:49.957377', '', '2022-06-09 22:59:49.957377', '');
INSERT INTO "sys_post" VALUES (3, 'hr', '????????????', 3, '0', 'admin', '2022-06-09 22:59:49.957848', '', '2022-06-09 22:59:49.957848', '');
INSERT INTO "sys_post" VALUES (4, 'user', '????????????', 4, '0', 'admin', '2022-06-09 22:59:49.958374', '', '2022-06-09 22:59:49.958374', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "sys_role";
CREATE TABLE "sys_role" (
  "role_id" int8 NOT NULL DEFAULT nextval('sys_role_role_id_seq'::regclass),
  "role_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "role_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "role_sort" int4,
  "data_scope" char(1) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "sys_role"."role_id" IS '??????ID';
COMMENT ON COLUMN "sys_role"."role_name" IS '????????????';
COMMENT ON COLUMN "sys_role"."role_key" IS '?????????????????????';
COMMENT ON COLUMN "sys_role"."role_sort" IS '????????????';
COMMENT ON COLUMN "sys_role"."data_scope" IS '???????????????1????????????????????? 2????????????????????????';
COMMENT ON COLUMN "sys_role"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "sys_role"."del_flag" IS '???????????????0???????????? 2???????????????';
COMMENT ON COLUMN "sys_role"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_role"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_role"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_role"."update_time" IS '????????????';
COMMENT ON COLUMN "sys_role"."remark" IS '??????';
COMMENT ON TABLE "sys_role" IS '???????????????';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO "sys_role" VALUES (1, '???????????????', 'admin', 1, '1', '0', '0', 'admin', '2022-06-09 22:59:49.98431', '', NULL, '???????????????');
INSERT INTO "sys_role" VALUES (2, '????????????', 'common', 2, '2', '0', '0', 'admin', '2022-06-09 22:59:49.986567', 'admin', '2022-06-09 23:31:22.214764', '????????????');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "sys_role_dept";
CREATE TABLE "sys_role_dept" (
  "role_id" int8 NOT NULL,
  "dept_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "sys_role_dept"."role_id" IS '??????ID';
COMMENT ON COLUMN "sys_role_dept"."dept_id" IS '??????ID';
COMMENT ON TABLE "sys_role_dept" IS '????????????????????????';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO "sys_role_dept" VALUES (2, 100);
INSERT INTO "sys_role_dept" VALUES (2, 101);
INSERT INTO "sys_role_dept" VALUES (2, 105);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "sys_role_menu";
CREATE TABLE "sys_role_menu" (
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "sys_role_menu"."role_id" IS '??????ID';
COMMENT ON COLUMN "sys_role_menu"."menu_id" IS '??????ID';
COMMENT ON TABLE "sys_role_menu" IS '????????????????????????';

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "sys_user";
CREATE TABLE "sys_user" (
  "user_id" int8 NOT NULL DEFAULT nextval('sys_user_user_id_seq'::regclass),
  "dept_id" int8,
  "login_name" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "user_name" varchar(30) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "user_type" varchar(2) COLLATE "pg_catalog"."default" DEFAULT '00'::character varying,
  "email" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "phonenumber" varchar(20) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "sex" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "avatar" varchar(100) COLLATE "pg_catalog"."default",
  "password" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "salt" varchar(100) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" char(1) COLLATE "pg_catalog"."default" DEFAULT '0'::bpchar,
  "del_flag" char(1) COLLATE "pg_catalog"."default" DEFAULT ''::bpchar,
  "login_ip" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_date" timestamp(6),
  "pwd_update_date" timestamp(6),
  "create_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6),
  "update_by" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6),
  "remark" varchar(500) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "sys_user"."user_id" IS '??????ID';
COMMENT ON COLUMN "sys_user"."dept_id" IS '??????ID';
COMMENT ON COLUMN "sys_user"."login_name" IS '????????????';
COMMENT ON COLUMN "sys_user"."user_name" IS '????????????';
COMMENT ON COLUMN "sys_user"."user_type" IS '??????:Y????????????,N???????????????';
COMMENT ON COLUMN "sys_user"."email" IS '????????????';
COMMENT ON COLUMN "sys_user"."phonenumber" IS '????????????';
COMMENT ON COLUMN "sys_user"."sex" IS '???????????????0??? 1??? 2?????????';
COMMENT ON COLUMN "sys_user"."avatar" IS '????????????';
COMMENT ON COLUMN "sys_user"."password" IS '??????';
COMMENT ON COLUMN "sys_user"."salt" IS '?????????';
COMMENT ON COLUMN "sys_user"."status" IS '????????????:0??????,1??????';
COMMENT ON COLUMN "sys_user"."del_flag" IS '??????????????????';
COMMENT ON COLUMN "sys_user"."login_ip" IS '????????????IP';
COMMENT ON COLUMN "sys_user"."login_date" IS '??????????????????';
COMMENT ON COLUMN "sys_user"."pwd_update_date" IS '????????????????????????';
COMMENT ON COLUMN "sys_user"."create_by" IS '?????????';
COMMENT ON COLUMN "sys_user"."create_time" IS '????????????';
COMMENT ON COLUMN "sys_user"."update_by" IS '?????????';
COMMENT ON COLUMN "sys_user"."update_time" IS '????????????';
COMMENT ON COLUMN "sys_user"."remark" IS '??????';
COMMENT ON TABLE "sys_user" IS '???????????????';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO "sys_user" VALUES (2, 105, '', '??????', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2022-06-09 22:59:49.933662', '2022-06-09 22:59:49.933662', 'admin', '2022-06-09 22:59:49.933662', '', NULL, '?????????');
INSERT INTO "sys_user" VALUES (100, NULL, '22', '22', '01', '1111.@163.com', '15888888887', '0', NULL, '7203eadb8e1e277925f8aed96a1edf59', 'a5491c', '0', ' ', '127.0.0.1', '2022-06-10 00:24:30.983', '2022-06-10 00:24:01.129', '', '2022-06-10 00:24:01.136408', '', '2022-06-10 00:31:03.056393', NULL);
INSERT INTO "sys_user" VALUES (1, 103, 'admin', '??????', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2022-06-10 00:31:46.786', '2022-06-09 22:59:49.929647', 'admin', '2022-06-09 22:59:49.929647', '', '2022-06-10 00:31:46.789347', '?????????');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS "sys_user_online";
CREATE TABLE "sys_user_online" (
  "sessionid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "login_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "dept_name" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "ipaddr" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "login_location" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "browser" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "os" varchar(50) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "status" varchar(10) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "start_timestamp" timestamp(6),
  "last_access_time" timestamp(6),
  "expire_time" int4 DEFAULT 0
)
;
COMMENT ON COLUMN "sys_user_online"."sessionid" IS '????????????id';
COMMENT ON COLUMN "sys_user_online"."login_name" IS '????????????';
COMMENT ON COLUMN "sys_user_online"."dept_name" IS '????????????';
COMMENT ON COLUMN "sys_user_online"."ipaddr" IS '??????IP??????';
COMMENT ON COLUMN "sys_user_online"."login_location" IS '????????????';
COMMENT ON COLUMN "sys_user_online"."browser" IS '???????????????';
COMMENT ON COLUMN "sys_user_online"."os" IS '????????????';
COMMENT ON COLUMN "sys_user_online"."status" IS '????????????on_line??????off_line??????';
COMMENT ON COLUMN "sys_user_online"."start_timestamp" IS 'session????????????';
COMMENT ON COLUMN "sys_user_online"."last_access_time" IS 'session??????????????????';
COMMENT ON COLUMN "sys_user_online"."expire_time" IS '??????????????????????????????';
COMMENT ON TABLE "sys_user_online" IS '??????????????????';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
BEGIN;
INSERT INTO "sys_user_online" VALUES ('97d1f6d0-d3b4-470c-9356-11699cae76e0', 'admin', '????????????', '127.0.0.1', '??????IP', 'Chrome 10', 'Windows 10', 'on_line', '2022-06-10 00:31:37', '2022-06-10 00:57:42', 1800000);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "sys_user_post";
CREATE TABLE "sys_user_post" (
  "user_id" int8 NOT NULL,
  "post_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "sys_user_post"."user_id" IS '??????ID';
COMMENT ON COLUMN "sys_user_post"."post_id" IS '??????ID';
COMMENT ON TABLE "sys_user_post" IS '????????????????????????';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO "sys_user_post" VALUES (1, 1);
INSERT INTO "sys_user_post" VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "sys_user_role";
CREATE TABLE "sys_user_role" (
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL
)
;
COMMENT ON COLUMN "sys_user_role"."user_id" IS '??????ID';
COMMENT ON COLUMN "sys_user_role"."role_id" IS '??????ID';
COMMENT ON TABLE "sys_user_role" IS '????????????????????????';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO "sys_user_role" VALUES (1, 1);
INSERT INTO "sys_user_role" VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Function structure for find_in_set
-- ----------------------------
DROP FUNCTION IF EXISTS "find_in_set"(int8, varchar);
CREATE OR REPLACE FUNCTION "find_in_set"(int8, varchar)
  RETURNS "pg_catalog"."bool" AS $BODY$
DECLARE
  STR ALIAS FOR $1;
  STRS ALIAS FOR $2;
  POS INTEGER;
  STATUS BOOLEAN;
BEGIN
	SELECT POSITION( ','||STR||',' IN ','||STRS||',') INTO POS;
	IF POS > 0 THEN
	  STATUS = TRUE;
	ELSE
	  STATUS = FALSE;
	END IF;
	RETURN STATUS;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- View structure for view_self_table_columns
-- ----------------------------
DROP VIEW IF EXISTS "view_self_table_columns";
CREATE VIEW "view_self_table_columns" AS  SELECT columns.table_catalog,
    columns.table_schema,
    columns.table_name,
    columns.ordinal_position AS sort,
    columns.column_name,
    columns.data_type AS typename,
        CASE
            WHEN (((columns.is_nullable)::text = 'no'::text) AND (c.contype <> 'p'::"char")) THEN '1'::text
            ELSE NULL::text
        END AS is_required,
        CASE
            WHEN (c.contype = 'p'::"char") THEN '1'::text
            ELSE '0'::text
        END AS is_pk,
    COALESCE((columns.character_maximum_length)::integer, (columns.numeric_precision)::integer, '-1'::integer) AS length,
    columns.numeric_scale AS scale,
        CASE columns.is_nullable
            WHEN 'NO'::text THEN 0
            ELSE 1
        END AS cannull,
    columns.column_default AS defaultval,
        CASE
            WHEN ("position"((columns.column_default)::text, 'nextval'::text) > 0) THEN 1
            ELSE 0
        END AS isidentity,
        CASE
            WHEN ("position"((columns.column_default)::text, 'nextval'::text) > 0) THEN 1
            ELSE 0
        END AS is_increment,
    c.detext AS column_comment,
    c.typname AS column_type,
    c.contype,
    columns.ordinal_position
   FROM (information_schema.columns
     LEFT JOIN ( SELECT pg_database.datname,
            pg_get_userbyid(pg_class.relowner) AS tableowner,
            pg_ns.nspname,
            pg_class.relname,
            pg_attr.attname,
            pg_desc.description AS detext,
            pg_type.typname,
            pg_cons.contype
           FROM ((((((pg_class
             LEFT JOIN pg_attribute pg_attr ON ((pg_attr.attrelid = pg_class.oid)))
             LEFT JOIN pg_description pg_desc ON (((pg_desc.objoid = pg_attr.attrelid) AND (pg_desc.objsubid = pg_attr.attnum))))
             LEFT JOIN pg_namespace pg_ns ON ((pg_ns.oid = pg_class.relnamespace)))
             LEFT JOIN pg_database ON ((pg_class.relowner = pg_database.datdba)))
             LEFT JOIN pg_type ON ((pg_attr.atttypid = pg_type.oid)))
             LEFT JOIN ( SELECT pg_con.conname,
                    pg_con.connamespace,
                    pg_con.contype,
                    pg_con.condeferrable,
                    pg_con.condeferred,
                    pg_con.convalidated,
                    pg_con.conrelid,
                    pg_con.contypid,
                    pg_con.conindid,
                    pg_con.confrelid,
                    pg_con.confupdtype,
                    pg_con.confdeltype,
                    pg_con.confmatchtype,
                    pg_con.conislocal,
                    pg_con.coninhcount,
                    pg_con.connoinherit,
                    pg_con.conkey,
                    pg_con.confkey,
                    pg_con.conpfeqop,
                    pg_con.conppeqop,
                    pg_con.conffeqop,
                    pg_con.conexclop,
                    pg_con.conbin,
                    pg_con.consrc,
                    unnest(pg_con.conkey) AS conkey_new
                   FROM pg_constraint pg_con) pg_cons ON (((pg_attr.attrelid = pg_class.oid) AND (pg_attr.attnum = pg_cons.conkey_new) AND (pg_cons.conrelid = pg_class.oid))))
          WHERE ((pg_attr.attnum > 0) AND (pg_attr.attrelid = pg_class.oid))) c ON ((((columns.table_catalog)::name = c.datname) AND ((columns.table_schema)::name = c.nspname) AND ((columns.table_name)::name = c.relname) AND ((columns.column_name)::name = c.attname))));

-- ----------------------------
-- View structure for view_self_table
-- ----------------------------
DROP VIEW IF EXISTS "view_self_table";
CREATE VIEW "view_self_table" AS  SELECT pg_database.datname AS table_catalog,
    pg_get_userbyid(c.relowner) AS tableowner,
    pg_ns.nspname AS table_schema,
    c.relname AS table_name,
    (obj_description(c.relfilenode, 'pg_class'::name))::character varying AS table_comment,
    now() AS create_time,
    now() AS update_time
   FROM ((pg_class c
     LEFT JOIN pg_namespace pg_ns ON ((pg_ns.oid = c.relnamespace)))
     LEFT JOIN pg_database ON ((c.relowner = pg_database.datdba)))
  WHERE (c.relname IN ( SELECT pg_tables.tablename
           FROM pg_tables));

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "gen_table_column_column_id_seq"
OWNED BY "gen_table_column"."column_id";
SELECT setval('"gen_table_column_column_id_seq"', 2, false);
ALTER SEQUENCE "gen_table_table_id_seq"
OWNED BY "gen_table"."table_id";
SELECT setval('"gen_table_table_id_seq"', 2, false);
ALTER SEQUENCE "sys_config_config_id_seq"
OWNED BY "sys_config"."config_id";
SELECT setval('"sys_config_config_id_seq"', 101, false);
ALTER SEQUENCE "sys_dept_dept_id_seq"
OWNED BY "sys_dept"."dept_id";
SELECT setval('"sys_dept_dept_id_seq"', 201, false);
ALTER SEQUENCE "sys_dict_data_dict_code_seq"
OWNED BY "sys_dict_data"."dict_code";
SELECT setval('"sys_dict_data_dict_code_seq"', 101, false);
ALTER SEQUENCE "sys_dict_type_dict_id_seq"
OWNED BY "sys_dict_type"."dict_id";
SELECT setval('"sys_dict_type_dict_id_seq"', 101, false);
ALTER SEQUENCE "sys_job_job_id_seq"
OWNED BY "sys_job"."job_id";
SELECT setval('"sys_job_job_id_seq"', 101, false);
ALTER SEQUENCE "sys_job_log_job_log_id_seq"
OWNED BY "sys_job_log"."job_log_id";
SELECT setval('"sys_job_log_job_log_id_seq"', 2, false);
ALTER SEQUENCE "sys_logininfor_info_id_seq"
OWNED BY "sys_logininfor"."info_id";
SELECT setval('"sys_logininfor_info_id_seq"', 200, true);
ALTER SEQUENCE "sys_menu_menu_id_seq"
OWNED BY "sys_menu"."menu_id";
SELECT setval('"sys_menu_menu_id_seq"', 2001, false);
ALTER SEQUENCE "sys_notice_notice_id_seq"
OWNED BY "sys_notice"."notice_id";
SELECT setval('"sys_notice_notice_id_seq"', 11, false);
ALTER SEQUENCE "sys_oper_log_oper_id_seq"
OWNED BY "sys_oper_log"."oper_id";
SELECT setval('"sys_oper_log_oper_id_seq"', 220, true);
ALTER SEQUENCE "sys_post_post_id_seq"
OWNED BY "sys_post"."post_id";
SELECT setval('"sys_post_post_id_seq"', 11, false);
ALTER SEQUENCE "sys_role_role_id_seq"
OWNED BY "sys_role"."role_id";
SELECT setval('"sys_role_role_id_seq"', 101, false);
ALTER SEQUENCE "sys_user_user_id_seq"
OWNED BY "sys_user"."user_id";
SELECT setval('"sys_user_user_id_seq"', 120, true);

-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE "qrtz_calendars" ADD CONSTRAINT "qrtz_calendars_pkey" PRIMARY KEY ("sched_name", "calendar_name");

-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_fired_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_ft_inst_job_req_rcvry" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "instance_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "requests_recovery" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_j_g" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_jg" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_t_g" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_tg" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_trig_inst_name" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "instance_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE "qrtz_fired_triggers" ADD CONSTRAINT "qrtz_fired_triggers_pkey" PRIMARY KEY ("sched_name", "entry_id");

-- ----------------------------
-- Indexes structure for table qrtz_job_details
-- ----------------------------
CREATE INDEX "idx_qrtz_j_grp" ON "qrtz_job_details" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_j_req_recovery" ON "qrtz_job_details" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "requests_recovery" "pg_catalog"."bool_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE "qrtz_job_details" ADD CONSTRAINT "qrtz_job_details_pkey" PRIMARY KEY ("sched_name", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE "qrtz_locks" ADD CONSTRAINT "qrtz_locks_pkey" PRIMARY KEY ("sched_name", "lock_name");

-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE "qrtz_paused_trigger_grps" ADD CONSTRAINT "qrtz_paused_trigger_grps_pkey" PRIMARY KEY ("sched_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE "qrtz_scheduler_state" ADD CONSTRAINT "qrtz_scheduler_state_pkey" PRIMARY KEY ("sched_name", "instance_name");

-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_t_c" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "calendar_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_g" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_j" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_jg" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_n_g_state" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_n_state" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_next_fire_time" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_misfire" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st_misfire" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st_misfire_grp" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_state" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE "sys_config" ADD CONSTRAINT "pk_sys_config" PRIMARY KEY ("config_id");

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE "sys_dept" ADD CONSTRAINT "pk_sys_dept" PRIMARY KEY ("dept_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "sys_dict_data" ADD CONSTRAINT "pk_sys_dict_data" PRIMARY KEY ("dict_code");

-- ----------------------------
-- Uniques structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "sys_dict_type" ADD CONSTRAINT "sys_dict_type_dict_type_key" UNIQUE ("dict_type");

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "sys_dict_type" ADD CONSTRAINT "pk_sys_dict_type" PRIMARY KEY ("dict_id");

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE "sys_job" ADD CONSTRAINT "pk_sys_job" PRIMARY KEY ("job_id", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE "sys_job_log" ADD CONSTRAINT "pk_sys_job_log" PRIMARY KEY ("job_log_id");

-- ----------------------------
-- Primary Key structure for table sys_logininfor
-- ----------------------------
ALTER TABLE "sys_logininfor" ADD CONSTRAINT "pk_sys_logininfor" PRIMARY KEY ("info_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "sys_menu" ADD CONSTRAINT "pk_sys_menu" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE "sys_notice" ADD CONSTRAINT "pk_sys_notice" PRIMARY KEY ("notice_id");

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE "sys_oper_log" ADD CONSTRAINT "pk_sys_oper_log" PRIMARY KEY ("oper_id");

-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE "sys_post" ADD CONSTRAINT "pk_sys_post" PRIMARY KEY ("post_id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "sys_role" ADD CONSTRAINT "pk_sys_role" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_role_dept
-- ----------------------------
ALTER TABLE "sys_role_dept" ADD CONSTRAINT "pk_sys_role_dept" PRIMARY KEY ("role_id", "dept_id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "sys_role_menu" ADD CONSTRAINT "pk_sys_role_menu" PRIMARY KEY ("role_id", "menu_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "sys_user" ADD CONSTRAINT "pk_sys_user" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table sys_user_online
-- ----------------------------
ALTER TABLE "sys_user_online" ADD CONSTRAINT "pk_sys_user_online" PRIMARY KEY ("sessionid");

-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE "sys_user_post" ADD CONSTRAINT "pk_sys_user_post" PRIMARY KEY ("user_id", "post_id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "sys_user_role" ADD CONSTRAINT "pk_sys_user_role" PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Foreign Keys structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_sched_name_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_sched_name_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_sched_name_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_sched_name_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_sched_name_fkey" FOREIGN KEY ("sched_name", "job_name", "job_group") REFERENCES "qrtz_job_details" ("sched_name", "job_name", "job_group") ON DELETE NO ACTION ON UPDATE NO ACTION;
