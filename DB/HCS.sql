/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 100140
Source Host           : localhost:3307
Source Database       : HCS

Target Server Type    : MYSQL
Target Server Version : 100140
File Encoding         : 65001

Date: 2020-05-04 13:16:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `DoctorID` int(11) NOT NULL AUTO_INCREMENT,
  `DoctorName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `PhoneNumber` int(12) DEFAULT NULL,
  `DoctorType` varchar(255) DEFAULT NULL,
  `WorkHospital` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
