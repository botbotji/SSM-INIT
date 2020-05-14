/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : gream

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2019-12-30 14:50:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `descy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '0411', '123', '人生得意须尽欢yhbh');
INSERT INTO `admin` VALUES ('4', '0412', '123', 'O(∩_∩)O');
INSERT INTO `admin` VALUES ('5', '测试', '123', '001');
INSERT INTO `admin` VALUES ('6', '0413', '123', 'YUUYU');
INSERT INTO `admin` VALUES ('7', '0413', '123', '米奇');
INSERT INTO `admin` VALUES ('8', '0414', '123', '哈哈');
INSERT INTO `admin` VALUES ('9', '0419', '123', 'bibibibi');

-- ----------------------------
-- Table structure for appraise
-- ----------------------------
DROP TABLE IF EXISTS `appraise`;
CREATE TABLE `appraise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `neirong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dengji` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid_fk` (`order_id`),
  CONSTRAINT `orderid_fk` FOREIGN KEY (`order_id`) REFERENCES `dengdan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appraise
-- ----------------------------
INSERT INTO `appraise` VALUES ('1', null, '二年，君臣上徽号，上紫宸言曰：“中外上章，请加徽号。朕思理道犹郁，实愧岳牧之请。如闻州郡甚有无政处？”固言曰：“人言邓州王堪衰老，隋州郑襄无政。”帝曰：“堪是贞元时御史，只有此一人。”郑覃曰：“臣以王堪旧人，举为刺史。郑襄比来守官，亦无败事。若言外郡不理，何止二人？”帝曰：“济济多士，文王以宁。', '五星');
INSERT INTO `appraise` VALUES ('2', null, '二年，君臣上徽号，上紫宸言曰：“中外上章，请加徽号。朕思理道犹郁，实愧岳牧之请。如闻州郡甚有无政处？”固言曰：“人言邓州王堪衰老，隋州郑襄无政。”帝曰：“堪是贞元时御史，只有此一人。”郑覃曰：“臣以王堪旧人，举为刺史。郑襄比来守官，亦无败事。若言外郡不理，何止二人？”帝曰：“济济多士，文王以宁。', '6666');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) DEFAULT NULL,
  `ImgName` varchar(20) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banner_fk` (`menu_id`),
  CONSTRAINT `banner_fk` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('2', 'b202fcfa62844eb6a75dd6a18df89bbe.jpg', '呵呵', '1', '2');
INSERT INTO `banner` VALUES ('3', 'e9ed7fe61ab0de99418ada96620da563.png', '找大神聊萌', '1', '3');
INSERT INTO `banner` VALUES ('15', '115072d55cd0474b8e3de2b5f3b5da68.png', '测试', '1', '2');
INSERT INTO `banner` VALUES ('16', '8be0cf4f84aa452e9143f6a10d6e97b4.png', '测试2', '1', '2');
INSERT INTO `banner` VALUES ('17', '6d253b944d5a4305b34e7e6e5ec75f4f.png', '测试3', '1', '2');

-- ----------------------------
-- Table structure for dengdan
-- ----------------------------
DROP TABLE IF EXISTS `dengdan`;
CREATE TABLE `dengdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hour` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `money` float(255,0) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `bascy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_fk` (`user_id`),
  KEY `empid_fk` (`employee_id`),
  CONSTRAINT `empid_fk` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dengdan
-- ----------------------------
INSERT INTO `dengdan` VALUES ('2', '2019-12-26 02:18:29', '1', '5563', '535', '1', '563');
INSERT INTO `dengdan` VALUES ('3', '2019-12-26 15:15:05', null, '4', '46', null, '');
INSERT INTO `dengdan` VALUES ('4', '2019-12-26 15:17:34', null, '1', '20', null, '');
INSERT INTO `dengdan` VALUES ('5', '2019-12-26 15:22:12', '4', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('6', '2019-12-26 15:51:07', '5', '3', '60', '5', '');
INSERT INTO `dengdan` VALUES ('7', '2019-12-26 15:51:23', '5', '3', '60', '5', '');
INSERT INTO `dengdan` VALUES ('8', '2019-12-26 15:54:12', '5', '3', '60', '5', '');
INSERT INTO `dengdan` VALUES ('9', '2019-12-26 15:56:50', '4', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('10', '2019-12-26 17:04:03', '4', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('11', '2019-12-26 17:15:36', '1', '1', '46', '1', '');
INSERT INTO `dengdan` VALUES ('12', '2019-12-26 18:02:30', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('13', '2019-12-26 18:08:01', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('14', '2019-12-26 18:08:06', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('15', '2019-12-26 18:08:08', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('16', '2019-12-26 18:08:09', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('17', '2019-12-26 18:08:11', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('18', '2019-12-26 18:11:24', '1', '4', '60', '4', '');
INSERT INTO `dengdan` VALUES ('19', '2019-12-26 18:12:40', '1', '1', '60', '6', '');
INSERT INTO `dengdan` VALUES ('20', '2019-12-26 18:15:31', '1', '1', '60', '6', '');
INSERT INTO `dengdan` VALUES ('21', '2019-12-26 18:15:33', '1', '1', '60', '6', '');
INSERT INTO `dengdan` VALUES ('22', '2019-12-26 18:15:35', '1', '1', '60', '6', '');
INSERT INTO `dengdan` VALUES ('23', '2019-12-26 18:15:58', '1', '1', '60', '6', '');
INSERT INTO `dengdan` VALUES ('24', '2019-12-26 18:16:57', '1', '5', '60', '6', '');
INSERT INTO `dengdan` VALUES ('25', '2019-12-26 18:17:42', '1', '5', '60', '6', '');
INSERT INTO `dengdan` VALUES ('26', '2019-12-26 18:18:32', '1', '5', '60', '6', '');
INSERT INTO `dengdan` VALUES ('27', '2019-12-26 18:18:34', '1', '5', '60', '6', '');
INSERT INTO `dengdan` VALUES ('28', '2019-12-26 18:18:37', '1', '5', '60', '6', '');
INSERT INTO `dengdan` VALUES ('29', '2019-12-26 18:26:12', '1', '5', '60', '6', '');
INSERT INTO `dengdan` VALUES ('30', '2019-12-26 18:28:30', '1', '5', '60', '6', '');
INSERT INTO `dengdan` VALUES ('31', '2019-12-26 18:29:49', '1', '6', '60', '11', '');
INSERT INTO `dengdan` VALUES ('32', '2019-12-26 18:30:48', '1', '6', '60', '11', '');
INSERT INTO `dengdan` VALUES ('33', '2019-12-26 18:31:04', '1', '1', '46', '1', '');
INSERT INTO `dengdan` VALUES ('34', '2019-12-26 18:31:19', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('35', '2019-12-26 18:32:28', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('36', '2019-12-26 18:34:04', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('37', '2019-12-26 18:44:07', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('38', '2019-12-26 19:03:19', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('39', '2019-12-26 19:03:19', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('40', '2019-12-26 19:05:45', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('41', '2019-12-26 19:11:05', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('42', '2019-12-26 19:11:50', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('43', '2019-12-26 19:12:36', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('44', '2019-12-26 19:13:20', '1', '5', '60', '4', '');
INSERT INTO `dengdan` VALUES ('45', '2019-12-26 19:22:55', '1', '1', '60', '6', '');
INSERT INTO `dengdan` VALUES ('46', '2019-12-26 19:22:56', '1', '1', '60', '6', '');
INSERT INTO `dengdan` VALUES ('47', '2019-12-26 19:25:47', '1', '1', '60', '5', '');
INSERT INTO `dengdan` VALUES ('51', '2019-12-26 19:42:05', '1', '1', '60', '5', '');
INSERT INTO `dengdan` VALUES ('52', '2019-12-26 19:47:59', '1', '1', '60', '5', '');
INSERT INTO `dengdan` VALUES ('53', '2019-12-26 19:48:32', '1', '1', '60', '5', '');
INSERT INTO `dengdan` VALUES ('54', '2019-12-26 19:51:28', '1', '1', '60', '5', '');
INSERT INTO `dengdan` VALUES ('55', '2019-12-26 19:55:50', '1', '1', '60', '5', '');
INSERT INTO `dengdan` VALUES ('56', '2019-12-26 19:56:48', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('57', '2019-12-26 19:59:15', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('58', '2019-12-26 19:59:53', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('59', '2019-12-26 20:00:27', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('60', '2019-12-26 20:00:53', '1', '1', '60', '4', '大哥哥');
INSERT INTO `dengdan` VALUES ('61', '2019-12-27 03:06:39', '1', '2', '120', '6', '生日管家欧斯吧');
INSERT INTO `dengdan` VALUES ('62', '2019-12-27 03:07:45', '1', '2', '120', '6', '');
INSERT INTO `dengdan` VALUES ('63', '2019-12-27 14:54:17', '1', '1', '46', '1', '');
INSERT INTO `dengdan` VALUES ('64', '2019-12-27 14:55:08', '1', '1', '46', '1', '');
INSERT INTO `dengdan` VALUES ('65', '2019-12-27 15:12:14', '1', '1', '46', '1', '');
INSERT INTO `dengdan` VALUES ('66', '2019-12-27 15:13:55', '1', '1', '20', '3', '');
INSERT INTO `dengdan` VALUES ('67', '2019-12-27 15:20:09', '1', '1', '20', '3', '');
INSERT INTO `dengdan` VALUES ('68', '2019-12-27 21:59:04', '1', '1', '60', '4', '');
INSERT INTO `dengdan` VALUES ('69', '2019-12-28 00:10:44', '1', '1', '60', '5', '');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `price` float(255,0) DEFAULT NULL,
  `headImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `home` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `serveup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '沐沐', '埃利里', '185 2253 6924', '666666', '男', '20', '在线', '46', '6aeb7bbfe8624e06bdaa1cbadedaa9f9.jpg', '重庆城市管理学院', '  想做你的人肉四级包 搞笑舔包怪. 眼神敲级好使我报方位你杀人. 全程魔性笑感染你 宝贝来点我这个萌新鸭 Mua~	', '下单8分钟后陪玩不响应订单，将赔付您10元');
INSERT INTO `employee` VALUES ('3', '  漫漫小魔王', '  漫漫小魔王', '00012121', '5252', '男', '20', '在线', '20', '3ac72d31c02f420e8e0d6bcbd82cad85.jpg', '哦哦哦', '  想做你的人肉四级包 搞笑舔包怪. 眼神敲级好使我报方位你杀人. 全程魔性笑感染你 宝贝来点我这个萌新鸭 Mua~	', '下单8分钟后陪玩不响应订单，将赔付您10元');
INSERT INTO `employee` VALUES ('4', '小狗', '小狗', '13213131313', '15252', '男', '20', '在线', '60', 'edc415a606824268a92df433dcc68da6.jpg', '杀杀杀', '热度值，最近5日接单和收礼物的综合值', '下单8分钟后陪玩不响应订单，将赔付您10元');
INSERT INTO `employee` VALUES ('5', '骚猪', '骚猪', '3135656456', '525263', '男', '20', '在线', '60', 'e129c00f50c048b4abc3714bae361ece.jpg', '等待都', '热度值，最近5日接单和收礼物的综合值', '下单8分钟后陪玩不响应订单，将赔付您10元');
INSERT INTO `employee` VALUES ('6', '姿态', '姿态', '3246546646', '4254245', '男', '20', '在线', '60', '5607f52cd81c453ba80cc34a88ca9239.jpg', '撒大大', '陪玩', '下单8分钟后陪玩不响应订单，将赔付您10元');
INSERT INTO `employee` VALUES ('7', '抠鼻孔', '抠鼻孔', '123131313', '7454421', '女', '20', '在线', '50', 'b5085d9ed52e4d3684dc44af4103758f.jpg', '现在咋擦上', '陪玩', '下单8分钟后陪玩不响应订单，将赔付您10元');
INSERT INTO `employee` VALUES ('9', '姿态', '姿态', '3246546646', '123456', '男', '20', '在线', '60', '0f4839539b94403c8b84cb574370101e.jpeg', '撒大大', '陪玩', '下单8分钟后陪玩不响应订单，将赔付您10元');
INSERT INTO `employee` VALUES ('10', '抠鼻孔', '抠鼻孔', '123131313', '123456', '女', '20', '在线', '5', 'ae1772393dfb440b817e663ac00ea5fe.jpeg', '现在咋擦上', '陪玩', '腾讯游戏');
INSERT INTO `employee` VALUES ('11', '宝贝猫猫', '宝贝猫猫', '12313131', '123456', '女', '20', '在线', '60', 'cac0dab567f1468a81e578720eb3f3bc.jpg', '现在咋擦上', '陪玩', '腾讯游戏');
INSERT INTO `employee` VALUES ('12', '宝贝', '宝贝', '12313131', '123456', '女', '20', '在线', '60', '288c4055997d48eb839279238abee8ad.jpeg', '现在咋擦', '陪玩', '腾讯游戏');

-- ----------------------------
-- Table structure for employeelbel
-- ----------------------------
DROP TABLE IF EXISTS `employeelbel`;
CREATE TABLE `employeelbel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `biaoqian_fk` (`label_id`),
  KEY `yuanggong_fk` (`employee_id`),
  CONSTRAINT `biaoqian_fk` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`),
  CONSTRAINT `yuanggong_fk` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employeelbel
-- ----------------------------

-- ----------------------------
-- Table structure for employeetype
-- ----------------------------
DROP TABLE IF EXISTS `employeetype`;
CREATE TABLE `employeetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_fk` (`type_id`),
  KEY `emp_fk` (`employee_id`),
  CONSTRAINT `emp_fk` FOREIGN KEY (`employee_id`) REFERENCES `employeelbel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `type_fk` FOREIGN KEY (`type_id`) REFERENCES `greamtype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employeetype
-- ----------------------------

-- ----------------------------
-- Table structure for greamlevel
-- ----------------------------
DROP TABLE IF EXISTS `greamlevel`;
CREATE TABLE `greamlevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `levelname` varchar(255) DEFAULT NULL,
  `descy` varchar(255) DEFAULT NULL,
  `greamType_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id_fk` (`greamType_id`),
  CONSTRAINT `type_id_fk` FOREIGN KEY (`greamType_id`) REFERENCES `greamtype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of greamlevel
-- ----------------------------
INSERT INTO `greamlevel` VALUES ('1', '青铜之星', '腾讯游戏', '1');
INSERT INTO `greamlevel` VALUES ('2', '黄金', '腾讯游戏', '1');
INSERT INTO `greamlevel` VALUES ('3', '黄金', '腾讯网游', '1');
INSERT INTO `greamlevel` VALUES ('5', '青铜', '校园小能手', '2');
INSERT INTO `greamlevel` VALUES ('7', '铂金', '英雄联盟', '1');
INSERT INTO `greamlevel` VALUES ('8', '钻石', '英雄联盟', '1');
INSERT INTO `greamlevel` VALUES ('9', '大师', '英雄联盟', '1');
INSERT INTO `greamlevel` VALUES ('10', '王者', '英雄联盟', '1');
INSERT INTO `greamlevel` VALUES ('11', '一般', '绝地求生', '2');
INSERT INTO `greamlevel` VALUES ('12', '厉害', '绝地求生', '2');
INSERT INTO `greamlevel` VALUES ('13', '特别厉害', '绝地求生', '2');
INSERT INTO `greamlevel` VALUES ('14', '黄铜', '王者荣耀', '3');
INSERT INTO `greamlevel` VALUES ('15', '白银', '王者荣耀', '3');
INSERT INTO `greamlevel` VALUES ('16', '黄金', '王者荣耀', '3');
INSERT INTO `greamlevel` VALUES ('17', '铂金', '王者荣耀', '3');
INSERT INTO `greamlevel` VALUES ('18', '钻石', '王者荣耀', '3');
INSERT INTO `greamlevel` VALUES ('19', '星耀', '王者荣耀', '3');
INSERT INTO `greamlevel` VALUES ('20', '最强王者', '王者荣耀', '3');
INSERT INTO `greamlevel` VALUES ('21', '菜鸟', '云顶之奕', '3');
INSERT INTO `greamlevel` VALUES ('22', '一般', '云顶之奕', '3');
INSERT INTO `greamlevel` VALUES ('23', '厉害', '云顶之奕', '3');
INSERT INTO `greamlevel` VALUES ('24', '特别厉害', '云顶之奕', '3');
INSERT INTO `greamlevel` VALUES ('25', '青铜', '和平精英', '4');
INSERT INTO `greamlevel` VALUES ('26', '白银', '和平精英', '4');
INSERT INTO `greamlevel` VALUES ('27', '黄金', '和平精英', '4');
INSERT INTO `greamlevel` VALUES ('28', '铂金', '和平精英', '4');
INSERT INTO `greamlevel` VALUES ('29', '星钻', '和平精英', '4');
INSERT INTO `greamlevel` VALUES ('30', '王牌', '和平精英', '4');
INSERT INTO `greamlevel` VALUES ('31', '战神', '和平精英', '4');
INSERT INTO `greamlevel` VALUES ('32', '好听', '语音聊天', '5');
INSERT INTO `greamlevel` VALUES ('33', '中等好听', '语音聊天', '5');
INSERT INTO `greamlevel` VALUES ('34', '特别好听', '语音聊天', '5');

-- ----------------------------
-- Table structure for greamtype
-- ----------------------------
DROP TABLE IF EXISTS `greamtype`;
CREATE TABLE `greamtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `greamName` varchar(255) DEFAULT NULL,
  `descy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of greamtype
-- ----------------------------
INSERT INTO `greamtype` VALUES ('1', '英雄联盟', '腾讯游戏');
INSERT INTO `greamtype` VALUES ('2', '绝地求生', '腾讯游戏');
INSERT INTO `greamtype` VALUES ('3', '王者荣耀', '腾讯游戏');
INSERT INTO `greamtype` VALUES ('4', '云顶之弈', '腾讯游戏');
INSERT INTO `greamtype` VALUES ('5', '和平精英', '腾讯游戏');
INSERT INTO `greamtype` VALUES ('6', '语音聊天', '腾讯游戏');

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `id` int(11) NOT NULL,
  `labelname` varchar(255) DEFAULT NULL,
  `descy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(20) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('2', '首页', '/app/index');
INSERT INTO `menu` VALUES ('3', '找陪玩', '/app/list');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `QQ` varchar(255) DEFAULT NULL,
  `career` varchar(255) DEFAULT NULL,
  `descy` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '奥斯尔科斯', '175 2253 6921', '男', '18885222', '学生', '游戏爱好者1', '001', '123');
INSERT INTO `user` VALUES ('2', '沐沐', '5546451551', '男', '185225365', '阿尔泰', '的太阳111', '002', '123');
INSERT INTO `user` VALUES ('3', '沐沐', '5546451551', '男', '185225365', '阿尔泰', '的太阳', '003', '123');
INSERT INTO `user` VALUES ('4', 'Spring', '5546451551', '男', '185225365', '阿尔泰', '123', '004', '123');
INSERT INTO `user` VALUES ('5', 'mybatis', '5546451551', '男', '185225365', '阿尔泰', '123', '005', '123');

-- ----------------------------
-- Table structure for userlabel
-- ----------------------------
DROP TABLE IF EXISTS `userlabel`;
CREATE TABLE `userlabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aihao_fk` (`label_id`),
  KEY `userid_fk` (`user_id`),
  CONSTRAINT `aihao_fk` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`),
  CONSTRAINT `userid_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlabel
-- ----------------------------
