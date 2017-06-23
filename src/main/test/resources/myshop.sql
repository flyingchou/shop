/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : myshop

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2016-10-26 18:03:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zk_admin
-- ----------------------------
DROP TABLE IF EXISTS `zk_admin`;
CREATE TABLE `zk_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zk_admin
-- ----------------------------
INSERT INTO `zk_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for zk_forder
-- ----------------------------
DROP TABLE IF EXISTS `zk_forder`;
CREATE TABLE `zk_forder` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remark` varchar(20) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` double(8,2) DEFAULT NULL,
  `post` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=201407043 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zk_forder
-- ----------------------------
INSERT INTO `zk_forder` VALUES ('201407013', 'bb', '123', '备注', '2016-10-23 15:12:24', '200.30', '1000', '地区', '0', '1');

-- ----------------------------
-- Table structure for zk_product
-- ----------------------------
DROP TABLE IF EXISTS `zk_product`;
CREATE TABLE `zk_product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `sprice` double(10,0) DEFAULT NULL,
  `cprice` double(10,0) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` tinyint(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `number` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zk_product
-- ----------------------------
INSERT INTO `zk_product` VALUES ('2', '女装立领长袖拼接PU皮毛呢外套', '1000', '172', '20161026174408467.jpg', '【现在拍下并支付定金，即可获得双12当天10元无门槛优惠券一张。注：只限有预付定金款~优惠券统一在12月11号发放】 毛呢外套 整洁干练的长款版型 整个肩部给予皮绒拼接 与毛呢一起撑起品质感 立领 长袖 肩部往下做流行加层拼接 一粒扣收合门襟 特意做的夹棉里层（袖里无） 不必再畏惧冷冽寒风', '0', '2016-10-24 21:01:18', '96');
INSERT INTO `zk_product` VALUES ('3', '韩版女装毛呢外套', '238', '119', '20161026174420435.jpg', '外套款。 称为棉衣也不为过 或者因为它的表层毛呢　称呼为毛呢外套 ｙａｎｇ　羔绒位于翻领及袖口 从视觉着手　带来温暖无限 夹棉里衬（袖里也有）再次提升御寒功能 流行元素上　选择红黑格纹理　大气而又经典 金属拉链开叉　插袋自不会少', '0', '2016-10-24 21:01:18', '99');
INSERT INTO `zk_product` VALUES ('4', '韩版女毛呢外套', '238', '119', '20161026174525159.png', '外套款。 称为棉衣也不为过 或者因为它的表层毛呢　称呼为毛呢外套 ｙａｎｇ　羔绒位于翻领及袖口 从视觉着手　带来温暖无限 夹棉里衬（袖里也有）再次提升御寒功能 流行元素上　选择红黑格纹理　大气而又经典 金属拉链开叉　插袋自不会少', '0', '2016-10-24 21:01:18', '4');
INSERT INTO `zk_product` VALUES ('5', '韩版子毛呢外套', '238', '119', '20161026174537413.jpg', '外套款。 称为棉衣也不为过 或者因为它的表层毛呢　称呼为毛呢外套 ｙａｎｇ　羔绒位于翻领及袖口 从视觉着手　带来温暖无限 夹棉里衬（袖里也有）再次提升御寒功能 流行元素上　选择红黑格纹理　大气而又经典 金属拉链开叉　插袋自不会少', '0', '2016-10-24 21:01:18', '1000');
INSERT INTO `zk_product` VALUES ('6', '冬装韩版女装翻领羔绒夹棉格子毛呢外套', '238', '119', '20161026174602706.jpg', '外套款。 称为棉衣也不为过 或者因为它的表层毛呢　称呼为毛呢外套 ｙａｎｇ　羔绒位于翻领及袖口 从视觉着手　带来温暖无限 夹棉里衬（袖里也有）再次提升御寒功能 流行元素上　选择红黑格纹理　大气而又经典 金属拉链开叉　插袋自不会少', '0', '2016-10-24 21:01:18', '1000');
INSERT INTO `zk_product` VALUES ('7', '新款轻薄羽绒服', '1120', '590', '20161026174630007.png', '秋冬热卖款，今日特惠！库存有限，卖完即止！喜欢的赶紧出手哦！', '0', '2016-10-24 21:01:18', '4');
INSERT INTO `zk_product` VALUES ('8', '秋冬季毛大衣', '672', '336', '20161026174643427.png', '【双12预售】双12提前开抢，11月24日—12月11日抢先付预付款33.6元，12月12日付剩余尾款，先付先发货，提前引爆双12！！！买就【送】双十二10元无门槛优惠券！！！商家【赠】运费险！！！', '0', '2016-10-24 21:01:18', '99');
INSERT INTO `zk_product` VALUES ('9', '女装貉子毛大衣 时尚修身长袖淑女毛呢外套', '238', '119', '20161026174654546.png', '秋冬热卖款，今日特惠！库存有限，卖完即止！喜欢的赶紧出手哦！', '1', '2016-10-24 21:01:18', '100');
INSERT INTO `zk_product` VALUES ('10', '修身显瘦淑女针织长袖打底连衣裙女', '356', '158', '20161026174714192.png', '【1212万能盛典预售抢先购,早买早便宜！】定金15.80元，预售价158.00元，双12价涨价至178.00元!', '1', '2016-10-24 21:01:18', '77');
INSERT INTO `zk_product` VALUES ('11', '整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮', '19800', '9900', '20161026174726942.png', '采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修', '1', '2016-10-24 21:01:18', '97');
INSERT INTO `zk_product` VALUES ('12', '收腰立领长袖进口真皮草裘皮', '19800', '9900', '20161026174808306.png', '采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修', '1', '2016-10-24 21:01:18', '100');
INSERT INTO `zk_product` VALUES ('13', '整貂皮大衣外套', '19800', '9900', '20161026174822472.png', '采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修', '1', '2016-10-24 21:01:18', '100');
INSERT INTO `zk_product` VALUES ('14', '真皮草裘皮', '19800', '9900', '20161026174836960.png', '采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修', '1', '2016-10-24 21:01:18', '100');
INSERT INTO `zk_product` VALUES ('15', '整貂皮大衣外套中长款收腰立领长袖进口真皮草裘皮', '19800', '9900', '20161026174853114.png', '采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修', '1', '2016-10-24 21:01:18', '98');
INSERT INTO `zk_product` VALUES ('16', '长款收腰立领长袖进口真皮草裘皮', '19800', '9900', '20161026174909446.png', '采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修', '1', '2016-10-24 21:01:18', '100');
INSERT INTO `zk_product` VALUES ('17', '整貂皮大衣外套中进口真皮草裘皮', '19800', '9900', '20161026175101454.png', '采用100%进口小母貂 毛皮结实柔软毛峰更有光泽 保暖效果极强。　 【正品保证】我们承诺100%整皮水貂 假一罚十 支持验货 无理由退换货 【售后保障】终身免费保养维修', '1', '2016-10-24 21:01:18', '100');

-- ----------------------------
-- Table structure for zk_sorder
-- ----------------------------
DROP TABLE IF EXISTS `zk_sorder`;
CREATE TABLE `zk_sorder` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zk_sorder
-- ----------------------------
INSERT INTO `zk_sorder` VALUES ('1', '空调', '200.00', '1', '201407013', '15');
INSERT INTO `zk_sorder` VALUES ('2', '电视', '0.30', '1', '201407013', '16');

-- ----------------------------
-- Table structure for zk_user
-- ----------------------------
DROP TABLE IF EXISTS `zk_user`;
CREATE TABLE `zk_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zk_user
-- ----------------------------
INSERT INTO `zk_user` VALUES ('1', 'user', 'user', '张三', '1054261585@qq.com', '18435186396', '地区');
