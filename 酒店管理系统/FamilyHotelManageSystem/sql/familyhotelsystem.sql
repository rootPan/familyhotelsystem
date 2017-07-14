/*
Navicat MySQL Data Transfer

Source Server         : Family
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : familyhotelsystem

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-10-18 16:37:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `checkout`
-- ----------------------------
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout` (
  `pk` double DEFAULT NULL,
  `chk_no` varchar(50) DEFAULT NULL,
  `in_no` varchar(50) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `chk_time` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkout
-- ----------------------------
INSERT INTO `checkout` VALUES ('0', 'YD201610140001', 'RZ201610140061', '1', '50', '2016-10-14 12:22:30', '', '0', null, null);
INSERT INTO `checkout` VALUES ('0', 'YD201610160001', 'RZ201610140066', '3', '250', '2016-10-16 13:52:55', '', '0', null, null);
INSERT INTO `checkout` VALUES ('1', 'YD201610160001', 'RZ201610140066', '3', '250', '2016-10-16 13:52:55', '', '0', null, null);
INSERT INTO `checkout` VALUES ('2', 'YD201610160001', 'RZ201610140066', '3', '250', '2016-10-16 13:52:55', '', '0', null, null);

-- ----------------------------
-- Table structure for `checkout_temp`
-- ----------------------------
DROP TABLE IF EXISTS `checkout_temp`;
CREATE TABLE `checkout_temp` (
  `pk` double DEFAULT NULL,
  `r_type_id` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `dis_price` double DEFAULT NULL,
  `account` double DEFAULT NULL,
  `money` double DEFAULT NULL,
  `in_time` varchar(50) DEFAULT NULL,
  KEY `r_no` (`r_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkout_temp
-- ----------------------------
INSERT INTO `checkout_temp` VALUES ('0', 'LX0001', 'BD1010', '100', '10', '100', '1', '100', '2016-10-18 10:02:13');
INSERT INTO `checkout_temp` VALUES ('1', 'LX0001', 'BD1011', '100', '10', '100', '1', '100', '2016-10-18 10:02:13');
INSERT INTO `checkout_temp` VALUES ('2', 'LX0001', 'BD1013', '100', '10', '100', '1', '100', '2016-10-18 10:02:13');
INSERT INTO `checkout_temp` VALUES ('3', 'LX0002', 'BS2006', '160', '10', '160', '1', '160', '2016-10-18 10:02:13');
INSERT INTO `checkout_temp` VALUES ('4', 'LX0002', 'BS2016', '160', '10', '160', '1', '160', '2016-10-18 10:02:13');

-- ----------------------------
-- Table structure for `customertype`
-- ----------------------------
DROP TABLE IF EXISTS `customertype`;
CREATE TABLE `customertype` (
  `pk` double DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `c_type` varchar(50) DEFAULT NULL,
  `dis_attr` varchar(50) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `dis_price` varchar(9) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL,
  KEY `pk` (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customertype
-- ----------------------------
INSERT INTO `customertype` VALUES ('0', 'sunhotel', 'sunhotel', 'sunhotel', '0', '0', '     0.00', 'sunhotel', '1', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0001', '10', '100', '   100.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0002', '10', '160', '   160.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', '购物折扣', '10', '0', '     0.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0003', '10', '150', '   150.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0004', '10', '260', '   260.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0005', '10', '780', '   780.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'LX0006', '10', '880', '   880.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0001', '8', '100', '    80.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0002', '8', '160', '   128.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', '购物折扣', '8', '0', '     0.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0003', '8', '150', '   120.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0004', '8', '260', '   208.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0005', '8', '780', '   624.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'LX0006', '8', '880', '   704.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0001', '3', '100', '    30.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0002', '3', '160', '    48.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', '购物折扣', '3', '0', '     0.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0003', '3', '150', '    45.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0004', '3', '260', '    78.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0005', '3', '780', '   234.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'LX0006', '3', '880', '   264.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0001', '6', '100', '    60.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0002', '6', '160', '    96.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', '购物折扣', '6', '0', '     0.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0003', '6', '150', '    90.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0004', '6', '260', '   156.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0005', '6', '780', '   468.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'LX0006', '6', '880', '   528.00', null, '0', null, null);
INSERT INTO `customertype` VALUES ('1145855882143', 'SYSMARK', '普通宾客', 'XXX1', null, '100', null, null, '1', null, null);
INSERT INTO `customertype` VALUES ('1145856076440', 'KH0001', '团体组织', 'XXX1', null, '100', null, null, '1', null, null);
INSERT INTO `customertype` VALUES ('1145856101457', 'KH0002', '内部人事', 'XXX1', null, '100', null, null, '1', null, null);
INSERT INTO `customertype` VALUES ('1145856120110', 'KH0003', '协议单位', 'XXX1', null, '100', null, null, '1', null, null);
INSERT INTO `customertype` VALUES ('1476188417000', 'KH123', '会员', 'LX0001', '7', '100', null, null, '0', null, null);
INSERT INTO `customertype` VALUES ('1476188417000', 'KH123', '会员', 'LX0002', '7', '160', null, null, '0', null, null);
INSERT INTO `customertype` VALUES ('1476188417000', 'KH123', '会员', 'LX0003', '7', '150', null, null, '0', null, null);
INSERT INTO `customertype` VALUES ('1476188417000', 'KH123', '会员', 'LX0004', '7', '260', null, null, '0', null, null);
INSERT INTO `customertype` VALUES ('1476188417000', 'KH123', '会员', 'LX0005', '7', '780', null, null, '0', null, null);
INSERT INTO `customertype` VALUES ('1476188417000', 'KH123', '会员', 'LX0006', '7', '880', null, null, '0', null, null);
INSERT INTO `customertype` VALUES ('1476188417000', 'KH123', '会员', 'XXX1', '7', '100', null, null, '1', null, null);
INSERT INTO `customertype` VALUES ('1476188417000', 'KH123', '会员', '购物折扣', '7', '0', null, null, '0', null, null);

-- ----------------------------
-- Table structure for `engage`
-- ----------------------------
DROP TABLE IF EXISTS `engage`;
CREATE TABLE `engage` (
  `pk` double DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `c_jp` varchar(50) DEFAULT NULL,
  `c_tel` varchar(50) DEFAULT NULL,
  `r_type_id` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `pa_time` varchar(50) DEFAULT NULL,
  `keep_time` varchar(50) DEFAULT NULL,
  `eng_time` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `engagemark` int(11) DEFAULT '2',
  `cluemark` int(11) DEFAULT '0',
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage
-- ----------------------------
INSERT INTO `engage` VALUES ('0', '张盼', null, '15207291981', 'LX0001', 'BD1001', '2016-10-25', '2016-10-26', '2016-10-14 9:39:14', '', '0', '0', '1', null, null);
INSERT INTO `engage` VALUES ('0', '汪意家', null, '15236521456', 'LX0001', 'BD1006', '2016-10-20', '2016-10-21', '2016-10-14 10:08:38', '', '2', '0', '0', null, null);
INSERT INTO `engage` VALUES ('0', '汪政', null, '18754256325', 'LX0002', 'BS2004', '2016-10-16', '2016-10-17', '2016-10-14 10:09:37', '', '2', '0', '0', null, null);
INSERT INTO `engage` VALUES ('0', '汪意家', null, '15236521556', 'LX0001', 'BD1014', '2016-10-11', '2016-10-12', '2016-10-14 12:20:54', '', '1', '0', '0', null, null);
INSERT INTO `engage` VALUES ('0', '刘德华', null, '13317224867', 'LX0001', 'BD1005', '2016-10-16', '2016-10-16', '2016-10-16 13:53:58', '', '2', '0', '0', null, null);

-- ----------------------------
-- Table structure for `engage1`
-- ----------------------------
DROP TABLE IF EXISTS `engage1`;
CREATE TABLE `engage1` (
  `pk` double DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `c_jp` varchar(50) DEFAULT NULL,
  `c_tel` varchar(50) DEFAULT NULL,
  `r_type_id` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `pa_time` varchar(50) DEFAULT NULL,
  `keep_time` varchar(50) DEFAULT NULL,
  `eng_time` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `engagemark` int(11) DEFAULT '2',
  `cluemark` int(11) DEFAULT '0',
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engage1
-- ----------------------------
INSERT INTO `engage1` VALUES ('0', '刘德华', null, '13317224867', 'LX0001', 'BD1005', '2016-10-16', '2016-10-16', '2016-10-16 13:53:58', '', '2', '0', '0', null, null);

-- ----------------------------
-- Table structure for `expense_temp`
-- ----------------------------
DROP TABLE IF EXISTS `expense_temp`;
CREATE TABLE `expense_temp` (
  `pk` varchar(50) DEFAULT NULL,
  `in_no` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `in_time` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `delmark` varchar(50) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expense_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `livein`
-- ----------------------------
DROP TABLE IF EXISTS `livein`;
CREATE TABLE `livein` (
  `pk` double DEFAULT NULL,
  `in_no` varchar(50) DEFAULT NULL,
  `r_no` varchar(50) DEFAULT NULL,
  `r_type_id` varchar(50) DEFAULT NULL,
  `main_room` varchar(50) DEFAULT NULL,
  `main_pk` double DEFAULT NULL,
  `c_type_id` varchar(50) DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `c_jp` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `zj_type` varchar(50) DEFAULT NULL,
  `zj_no` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `renshu` int(11) DEFAULT NULL,
  `in_time` varchar(50) DEFAULT NULL,
  `account` double DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `foregift` double DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `m_id` varchar(50) DEFAULT NULL,
  `chk_no` varchar(50) DEFAULT NULL,
  `chk_time` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `statemark` varchar(50) DEFAULT '正在消费',
  `cluemark` int(11) DEFAULT '0',
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of livein
-- ----------------------------
INSERT INTO `livein` VALUES ('0', 'RZ201610140061', 'BD1001', 'LX0001', 'BD1001', '0', 'SYSMARK', '汪政', null, '男', '身份证', '429004199701210354', '孝感', '1', '2016-10-14 9:36:11', null, '1', '100', '孝感', null, null, null, '888888', '已结算', '0', '0', null, null);
INSERT INTO `livein` VALUES ('0', 'RZ201610140062', 'HD3001', 'LX0003', 'HD3001', '0', 'SYSMARK', '张俊', null, '男', '身份证', '426557844565321456', '孝感', '3', '2016-10-14 9:38:19', null, '3', '6000', '孝感', null, null, null, '888888', '已结算', '1', '0', null, null);
INSERT INTO `livein` VALUES ('1', 'RZ201610140062', 'HD3005', 'LX0003', 'HD3001', '0', 'SYSMARK', '张俊', null, '男', '身份证', '426557844565321456', '孝感', '3', '2016-10-14 9:38:19', null, '3', '6000', '孝感', null, null, null, '888888', '已结算', '1', '0', null, null);
INSERT INTO `livein` VALUES ('2', 'RZ201610140062', 'HD3009', 'LX0003', 'HD3001', '0', 'SYSMARK', '张俊', null, '男', '身份证', '426557844565321456', '孝感', '3', '2016-10-14 9:38:19', null, '3', '6000', '孝感', null, null, null, '888888', '已结算', '1', '0', null, null);
INSERT INTO `livein` VALUES ('0', 'RZ201610140063', 'BD1002', 'LX0001', 'BD1002', '0', 'SYSMARK', '张盼', null, '男', '身份证', '425665877459563251', '孝感', '1', '2016-10-14 10:15:06', null, '1', '100', '孝感', null, null, null, '888888', '已结算', '0', '0', null, null);
INSERT INTO `livein` VALUES ('0', 'RZ201610140064', 'BD1007', 'LX0001', 'BD1007', '0', 'SYSMARK', '朱东虎', null, '男', '身份证', '429553255415426532', '孝感', '2', '2016-10-14 10:19:27', null, '1', '200', '孝感', null, null, null, '888888', '已结算', '0', '0', null, null);
INSERT INTO `livein` VALUES ('1', 'RZ201610140064', 'BD1008', 'LX0001', 'BD1007', '0', 'SYSMARK', '朱东虎', null, '男', '身份证', '429553255415426532', '孝感', '2', '2016-10-14 10:19:27', null, '1', '200', '孝感', null, null, null, '888888', '已结算', '0', '0', null, null);
INSERT INTO `livein` VALUES ('0', 'RZ201610140065', 'BS2002', 'LX0002', 'BS2002', '0', 'SYSMARK', '汪政', null, '男', '身份证', '42599536521456', '孝感', '1', '2016-10-14 12:22:05', null, '1', '200', '孝感', null, null, null, '888888', '已结算', '0', '0', null, null);
INSERT INTO `livein` VALUES ('0', 'RZ201610140066', 'BD1003', 'LX0001', 'BD1003', '0', 'SYSMARK', '叶方义', null, '男', '身份证', '4256652144565214562', '孝感', '3', '2016-10-14 12:24:55', null, '3', '8000', '孝感', null, null, null, '11111', '已结算', '0', '0', null, null);
INSERT INTO `livein` VALUES ('1', 'RZ201610140066', 'BD1009', 'LX0001', 'BD1003', '0', 'SYSMARK', '叶方义', null, '男', '身份证', '4256652144565214562', '孝感', '3', '2016-10-14 12:24:55', null, '3', '8000', '孝感', null, null, null, '11111', '已结算', '0', '0', null, null);
INSERT INTO `livein` VALUES ('2', 'RZ201610140066', 'BD1010', 'LX0001', 'BD1003', '0', 'SYSMARK', '叶方义', null, '男', '身份证', '4256652144565214562', '孝感', '3', '2016-10-14 12:24:55', null, '3', '8000', '孝感', null, null, null, '11111', '已结算', '0', '0', null, null);
INSERT INTO `livein` VALUES ('0', 'RZ201610160055', 'BD1014', 'LX0001', 'BD1014', '0', 'SYSMARK', '汪意家', null, '男', '身份证', '421024199511260412', '湖北孝感', '1', '2016-10-16 13:55:23', null, '1', '800', '', null, null, null, '888888', '正在消费', '0', '0', null, null);
INSERT INTO `livein` VALUES ('0', 'RZ201610180055', 'BD1010', 'LX0001', 'BD1010', '0', 'SYSMARK', '皮加辉', null, '男', '身份证', '421024199511260412', '湖北孝感', '7', '2016-10-18 10:02:13', null, '1', '2000', '', null, null, null, '888888', '正在消费', '0', '0', null, null);
INSERT INTO `livein` VALUES ('1', 'RZ201610180055', 'BD1011', 'LX0001', 'BD1010', '0', 'SYSMARK', '皮加辉', null, '男', '身份证', '421024199511260412', '湖北孝感', '7', '2016-10-18 10:02:13', null, '1', '2000', '', null, null, null, '888888', '正在消费', '0', '0', null, null);
INSERT INTO `livein` VALUES ('2', 'RZ201610180055', 'BD1013', 'LX0001', 'BD1010', '0', 'SYSMARK', '皮加辉', null, '男', '身份证', '421024199511260412', '湖北孝感', '7', '2016-10-18 10:02:13', null, '1', '2000', '', null, null, null, '888888', '正在消费', '0', '0', null, null);
INSERT INTO `livein` VALUES ('3', 'RZ201610180055', 'BS2006', 'LX0002', 'BD1010', '0', 'SYSMARK', '皮加辉', null, '男', '身份证', '421024199511260412', '湖北孝感', '7', '2016-10-18 10:02:13', null, '1', '2000', '', null, null, null, '888888', '正在消费', '0', '0', null, null);
INSERT INTO `livein` VALUES ('4', 'RZ201610180055', 'BS2016', 'LX0002', 'BD1010', '0', 'SYSMARK', '皮加辉', null, '男', '身份证', '421024199511260412', '湖北孝感', '7', '2016-10-18 10:02:13', null, '1', '2000', '', null, null, null, '888888', '正在消费', '0', '0', null, null);
INSERT INTO `livein` VALUES ('0', 'RZ201610180056', 'SW6004', 'LX0005', 'SW6004', '0', 'KH0001', '习近平', null, '男', '身份证', '421024199511260412', '北京', '2', '2016-10-18 10:04:27', null, '1', '2000', '主席', null, null, null, '888888', '正在消费', '1', '0', null, null);
INSERT INTO `livein` VALUES ('1', 'RZ201610180056', 'SW6007', 'LX0005', 'SW6004', '0', 'KH0001', '习近平', null, '男', '身份证', '421024199511260412', '北京', '2', '2016-10-18 10:04:27', null, '1', '2000', '主席', null, null, null, '888888', '正在消费', '1', '0', null, null);

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `pk` double DEFAULT NULL,
  `m_id` varchar(50) DEFAULT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `zj_no` varchar(50) DEFAULT NULL,
  `m_tel` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('0', '000001', '朱东虎', '男', '425114522365214785', '15236521478', '孝感', null, '0', null, null);
INSERT INTO `member` VALUES ('0', '000002', '叶方义', '男', '429004199701210354', '15207291981', '13#406', null, '0', null, null);

-- ----------------------------
-- Table structure for `pwd`
-- ----------------------------
DROP TABLE IF EXISTS `pwd`;
CREATE TABLE `pwd` (
  `pk` double DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `puis` varchar(50) DEFAULT NULL,
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pwd
-- ----------------------------
INSERT INTO `pwd` VALUES ('234567', '888888', '123456', '管理员', '0', null, null);
INSERT INTO `pwd` VALUES ('1476260816000', 'admin', '123456', '普通操作员', '0', null, null);
INSERT INTO `pwd` VALUES ('0', '11111', '123456', '普通操作员', '0', null, null);

-- ----------------------------
-- Table structure for `record`
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `pk` double DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `operator` varchar(50) DEFAULT NULL,
  `brief` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('0', '2016-10-14 09:34:04', '888888', '操作员登录', '888888 在 2016-10-14 9:34:04 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 09:41:02', '888888', '操作员登录', '888888 在 2016-10-14 9:41:02 退出本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 09:41:18', '888888', '操作员登录', '888888 在 2016-10-14 9:41:18 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 11:32:53', '888888', '操作员登录', '888888 在 2016-10-14 11:32:53 退出本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 12:01:20', '888888', '操作员登录', '888888 在 2016-10-14 12:01:20 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 12:14:13', '888888', '操作员登录', '888888 在 2016-10-14 12:14:13 退出本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 12:19:25', '888888', '操作员登录', '888888 在 2016-10-14 12:19:25 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 12:23:24', '888888', '操作员设置', '888888 在 2016-10-14 12:23:24 添加了新的操作员信息-- [ 888888 ]', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 12:23:28', '888888', '操作员登录', '888888 在 2016-10-14 12:23:28 退出本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 12:23:40', '11111', '操作员登录', '11111 在 2016-10-14 12:23:40 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 12:25:50', '11111', '操作员登录', '11111 在 2016-10-14 12:25:50 退出本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 12:28:19', '888888', '操作员登录', '888888 在 2016-10-14 12:28:19 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-14 12:43:58', '888888', '操作员登录', '888888 在 2016-10-14 12:43:58 退出本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-15 08:55:12', '888888', '操作员登录', '888888 在 2016-10-15 8:55:12 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-15 12:09:46', '888888', '操作员登录', '888888 在 2016-10-15 12:09:46 退出本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-15 12:10:46', '888888', '操作员登录', '888888 在 2016-10-15 12:10:46 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-15 12:10:55', '888888', '操作员登录', '888888 在 2016-10-15 12:10:55 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-15 14:53:53', '888888', '操作员登录', '888888 在 2016-10-15 14:53:53 退出本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-16 13:48:14', '888888', '操作员登录', '888888 在 2016-10-16 13:48:14 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-18 09:17:13', '888888', '操作员登录', '888888 在 2016-10-18 9:17:13 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-18 09:55:29', '888888', '操作员登录', '888888 在 2016-10-18 9:55:29 登录本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-18 10:27:58', '888888', '操作员登录', '888888 在 2016-10-18 10:27:58 退出本系统', '0', null);
INSERT INTO `record` VALUES ('0', '2016-10-18 16:30:23', '888888', '操作员登录', '888888 在 2016-10-18 16:30:23 登录本系统', '0', null);

-- ----------------------------
-- Table structure for `roominfo`
-- ----------------------------
DROP TABLE IF EXISTS `roominfo`;
CREATE TABLE `roominfo` (
  `pk` double DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `r_type_id` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `r_tel` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `statetime` int(11) DEFAULT '0',
  `indimark` int(11) DEFAULT '0',
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL,
  KEY `state` (`state`),
  KEY `statetime` (`statetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roominfo
-- ----------------------------
INSERT INTO `roominfo` VALUES ('0', 'sunhotel', 'sunhotel', '可供', 'sunhotel', 'sunhotel', 'sunhotel', '0', '0', '1', null, null);
INSERT INTO `roominfo` VALUES ('1146336620700', 'BD1001', 'LX0001', '可供', '一楼', '1001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620701', 'BD1002', 'LX0001', '钟点', '一楼', '1002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620702', 'BD1003', 'LX0001', '可供', '一楼', '1003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620703', 'BD1004', 'LX0001', '可供', '一楼', '1004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620704', 'BD1005', 'LX0001', '预订', '一楼', '1005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620705', 'BD1006', 'LX0001', '预订', '一楼', '1006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620706', 'BD1007', 'LX0001', '钟点', '一楼', '1007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620707', 'BD1008', 'LX0001', '钟点', '一楼', '1008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620708', 'BD1009', 'LX0001', '可供', '一楼', '1009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620709', 'BD1010', 'LX0001', '占用', '一楼', '1010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620710', 'BD1011', 'LX0001', '占用', '一楼', '1011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620711', 'BD1012', 'LX0001', '可供', '一楼', '1012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620712', 'BD1013', 'LX0001', '占用', '一楼', '1013', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620713', 'BD1014', 'LX0001', '占用', '一楼', '1014', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620714', 'BD1015', 'LX0001', '停用', '一楼', '1015', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336620715', 'BD1016', 'LX0001', '停用', '一楼', '1016', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638763', 'BS2001', 'LX0002', '可供', '二楼', '2001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638764', 'BS2002', 'LX0002', '占用', '二楼', '2002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638765', 'BS2003', 'LX0002', '可供', '二楼', '2003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638766', 'BS2004', 'LX0002', '预订', '二楼', '2004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638767', 'BS2005', 'LX0002', '可供', '二楼', '2005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638768', 'BS2006', 'LX0002', '占用', '二楼', '2006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638769', 'BS2007', 'LX0002', '可供', '二楼', '2007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638770', 'BS2008', 'LX0002', '可供', '二楼', '2008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638771', 'BS2009', 'LX0002', '可供', '二楼', '2009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638772', 'BS2010', 'LX0002', '可供', '二楼', '2010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638773', 'BS2011', 'LX0002', '可供', '二楼', '2011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638774', 'BS2012', 'LX0002', '可供', '二楼', '2012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638775', 'BS2013', 'LX0002', '停用', '二楼', '2013', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638776', 'BS2014', 'LX0002', '可供', '二楼', '2014', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638777', 'BS2015', 'LX0002', '停用', '二楼', '2015', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638778', 'BS2016', 'LX0002', '占用', '二楼', '2016', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638779', 'BS2017', 'LX0002', '可供', '二楼', '2017', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336638780', 'BS2018', 'LX0002', '可供', '二楼', '2018', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669060', 'HD3001', 'LX0003', '占用', '三楼', '3001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669061', 'HD3002', 'LX0003', '可供', '三楼', '3002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669062', 'HD3003', 'LX0003', '可供', '三楼', '3003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669063', 'HD3004', 'LX0003', '可供', '三楼', '3004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669064', 'HD3005', 'LX0003', '占用', '三楼', '3005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669065', 'HD3006', 'LX0003', '停用', '三楼', '3006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669066', 'HD3007', 'LX0003', '可供', '三楼', '3007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669067', 'HD3008', 'LX0003', '可供', '三楼', '3008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669068', 'HD3009', 'LX0003', '占用', '三楼', '3009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669069', 'HD3010', 'LX0003', '可供', '三楼', '3010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669070', 'HD3011', 'LX0003', '停用', '三楼', '3011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336669071', 'HD3012', 'LX0003', '可供', '三楼', '3012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693827', 'HS5001', 'LX0004', '可供', '五楼', '5001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693828', 'HS5002', 'LX0004', '可供', '五楼', '5002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693829', 'HS5003', 'LX0004', '可供', '五楼', '5003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693830', 'HS5004', 'LX0004', '可供', '五楼', '5004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693831', 'HS5005', 'LX0004', '可供', '五楼', '5005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693832', 'HS5006', 'LX0004', '可供', '五楼', '5006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693833', 'HS5007', 'LX0004', '可供', '五楼', '5007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693834', 'HS5008', 'LX0004', '可供', '五楼', '5008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693835', 'HS5009', 'LX0004', '可供', '五楼', '5009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693836', 'HS5010', 'LX0004', '可供', '五楼', '5010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693837', 'HS5011', 'LX0004', '可供', '五楼', '5011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693838', 'HS5012', 'LX0004', '可供', '五楼', '5012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693839', 'HS5013', 'LX0004', '可供', '五楼', '5013', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693840', 'HS5014', 'LX0004', '停用', '五楼', '5014', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336693841', 'HS5015', 'LX0004', '可供', '五楼', '5015', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726497', 'SW6001', 'LX0005', '可供', '六楼', '6001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726498', 'SW6002', 'LX0005', '可供', '六楼', '6002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726499', 'SW6003', 'LX0005', '可供', '六楼', '6003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726500', 'SW6004', 'LX0005', '占用', '六楼', '6004', null, '0', '1', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726501', 'SW6005', 'LX0005', '可供', '六楼', '6005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726502', 'SW6006', 'LX0005', '可供', '六楼', '6006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726503', 'SW6007', 'LX0005', '占用', '六楼', '6007', null, '0', '1', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726504', 'SW6008', 'LX0005', '可供', '六楼', '6008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726505', 'SW6009', 'LX0005', '可供', '六楼', '6009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726506', 'SW6010', 'LX0005', '可供', '六楼', '6010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726507', 'SW6011', 'LX0005', '可供', '六楼', '6011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726508', 'SW6012', 'LX0005', '可供', '六楼', '6012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726509', 'SW6013', 'LX0005', '可供', '六楼', '6013', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726510', 'SW6014', 'LX0005', '可供', '六楼', '6014', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726511', 'SW6015', 'LX0005', '可供', '六楼', '6015', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726512', 'SW6016', 'LX0005', '停用', '六楼', '6016', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726513', 'SW6017', 'LX0005', '停用', '六楼', '6017', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336726514', 'SW6018', 'LX0005', '可供', '六楼', '6018', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756340', 'ZT8001', 'LX0006', '可供', '八楼', '8001', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756341', 'ZT8002', 'LX0006', '可供', '八楼', '8002', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756342', 'ZT8003', 'LX0006', '可供', '八楼', '8003', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756343', 'ZT8004', 'LX0006', '可供', '八楼', '8004', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756344', 'ZT8005', 'LX0006', '可供', '八楼', '8005', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756345', 'ZT8006', 'LX0006', '可供', '八楼', '8006', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756346', 'ZT8007', 'LX0006', '可供', '八楼', '8007', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756347', 'ZT8008', 'LX0006', '可供', '八楼', '8008', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756348', 'ZT8009', 'LX0006', '停用', '八楼', '8009', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756349', 'ZT8010', 'LX0006', '停用', '八楼', '8010', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756350', 'ZT8011', 'LX0006', '可供', '八楼', '8011', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1146336756351', 'ZT8012', 'LX0006', '可供', '八楼', '8012', null, '0', '0', '0', null, null);
INSERT INTO `roominfo` VALUES ('1476186584000', 'BD1111', 'LX0001', '可供', '一楼', '1111', null, '0', '0', '1', null, null);
INSERT INTO `roominfo` VALUES (null, null, null, null, null, null, null, '0', '0', '0', null, null);

-- ----------------------------
-- Table structure for `roomnum`
-- ----------------------------
DROP TABLE IF EXISTS `roomnum`;
CREATE TABLE `roomnum` (
  `roomid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomnum
-- ----------------------------
INSERT INTO `roomnum` VALUES ('BS2003');

-- ----------------------------
-- Table structure for `roomnums`
-- ----------------------------
DROP TABLE IF EXISTS `roomnums`;
CREATE TABLE `roomnums` (
  `rr_type` varchar(50) DEFAULT NULL,
  `roomid` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  KEY `roomid` (`roomid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomnums
-- ----------------------------
INSERT INTO `roomnums` VALUES ('LX0005', 'SW6004', '780');
INSERT INTO `roomnums` VALUES ('LX0005', 'SW6007', '780');

-- ----------------------------
-- Table structure for `roomtype`
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype` (
  `pk` double DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `r_type` varchar(50) DEFAULT NULL,
  `bed` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `foregift` double DEFAULT NULL,
  `cl_room` varchar(50) DEFAULT NULL,
  `cl_price` double DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `sysmark` int(11) DEFAULT '0',
  `delmark` int(11) DEFAULT '0',
  `other1` varchar(50) DEFAULT NULL,
  `other2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES ('1145855029280', 'LX0001', '标准单人间', '1', '100', '500', 'Y', '20', null, '1', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145855058873', 'LX0002', '标准双人间', '2', '160', '500', 'Y', '50', null, '1', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145856188500', 'LX0003', '豪华单人间', '1', '150', '500', 'Y', '50', null, '0', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145856218563', 'LX0004', '豪华双人间', '2', '260', '500', 'Y', '100', null, '0', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145856258393', 'LX0005', '商务套房', '1', '780', '1000', 'N', '0', null, '0', '0', null, null);
INSERT INTO `roomtype` VALUES ('1145856293673', 'LX0006', '总统套房', '2', '880', '1000', 'N', '0', null, '0', '0', null, null);
INSERT INTO `roomtype` VALUES ('1476188371000', 'XXX1', '情侣套房', '2', '100', '200', 'Y', '50', null, '0', '1', null, null);
